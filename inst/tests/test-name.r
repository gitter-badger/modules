context('Module names')

test_that('the global namespace has no module name', {
    expect(is.null(module_name()))
})

test_that('modules have a name', {
    a = import('a')
    expect(module_name(a) == 'a')
    expect(a$get_modname() == 'a')
})

test_that('module names can be read inside functions', {
    a = import('a')
    expect(a$get_modname2() == 'a')
})
