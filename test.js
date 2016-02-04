const test = require('ava')
const glob = require('glob')
const exec = require('child_process').exec

glob.sync('*.tst').forEach(file => {
  test.cb(file, t => {
    exec(`~/Downloads/nand2tetris/tools/HardwareSimulator.sh ${file}`, t.end)
  })
})

glob.sync('asm/*.tst').forEach(file => {
  test.cb(file, t => {
    exec(`~/Downloads/nand2tetris/tools/CPUEmulator.sh ${file}`, t.end)
  })
})
