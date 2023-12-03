from utils import concatenate_strings


def test_concatenate_strings():
    # Test with normal strings
    assert concatenate_strings("Hello, ", "World!") == "Hello, World!", "Test with normal strings failed"

    # Test with empty strings
    assert concatenate_strings("", "") == "", "Test with empty strings failed"
    assert concatenate_strings("Hello", "") == "Hello", "Test with empty string (second argument) failed"
    assert concatenate_strings("", "World!") == "World!", "Test with empty string (first argument) failed"

    # Test with numeric strings
    assert concatenate_strings("123", "456") == "123456", "Test with numeric strings failed"

    # Test with special characters
    assert concatenate_strings("Hello@", "#World") == "Hello@#World", "Test with special characters failed"

    # Test with mixed characters
    assert concatenate_strings("123", "ABC") == "123ABC", "Test with mixed characters failed"
