import math
from types import SimpleNamespace
import numpy as np
import pytest
from validate_bevel_gears import underside_angles

def mesh(areas, degrees):
    return SimpleNamespace(triangles_center=np.array([[0,0,1]]*len(areas)),
        face_normals=np.array([[math.sin(math.radians(d)),0,-math.cos(math.radians(d))] for d in degrees]),
        area_faces=np.array(areas), area=10000)

def test_float32_sliver_does_not_change_real_ramp_angle():
    angles,ignored=underside_angles(mesh([1,0.000002],[45,42]),0)
    assert angles==pytest.approx([45]);assert ignored==pytest.approx(.000002)

def test_real_shallow_face_is_still_measured():
    angles,_=underside_angles(mesh([1,0.001],[45,40]),0)
    assert min(angles)==pytest.approx(40)

def test_many_uncertain_faces_fail_instead_of_being_silenced():
    with pytest.raises(AssertionError):underside_angles(mesh([.00001]*101,[42]*101),0)
