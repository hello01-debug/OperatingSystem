g++ -Wall -Wextra -ffreestanding -ggdb -I ./src/kernel src/kernel/kernel.cpp -o build/kernel.o -c -m64 -mcmodel=kernel -mno-red-zone -fno-exceptions -fno-pic -fno-pie -std=c++23 -fno-rtti
g++ -Wall -Wextra -ffreestanding -ggdb -I ./src/kernel src/kernel/drivers/vga.cpp -o build/vga.o -c -m64 -mcmodel=kernel -mno-red-zone -fno-exceptions -fno-pic -fno-pie -std=c++23 -fno-rtti
g++ -Wall -Wextra -ffreestanding -ggdb -I ./src/kernel src/kernel/x86/gdt.cpp -o build/gdt.o -c -m64 -mcmodel=kernel -mno-red-zone -fno-exceptions -fno-pic -fno-pie -std=c++23 -fno-rtti 
g++ -Wall -Wextra -ffreestanding -ggdb -I ./src/kernel src/kernel/x86/idt.cpp -o build/idt.o -c -m64 -mcmodel=kernel -mno-red-zone -fno-exceptions -fno-pic -fno-pie -std=c++23 -fno-rtti
g++ -Wall -Wextra -ffreestanding -ggdb -I ./src/kernel src/kernel/drivers/pic.cpp -o build/pic.o -c -m64 -mcmodel=kernel -mno-red-zone -fno-exceptions -fno-pic -fno-pie -std=c++23 -fno-rtti
g++ -Wall -Wextra -ffreestanding -ggdb -I ./src/kernel src/kernel/mem/pmm.cpp -o build/pmm.o -c -m64 -mcmodel=kernel -mno-red-zone -fno-exceptions -fno-pic -fno-pie -std=c++23 -fno-rtti
g++ -Wall -Wextra -ffreestanding -ggdb -I ./src/kernel src/kernel/lib/bitmap.cpp -o build/bitmap.o -c -m64 -mcmodel=kernel -mno-red-zone -fno-exceptions -fno-pic -fno-pie -std=c++23 -fno-rtti
g++ -Wall -Wextra -ffreestanding -ggdb -I ./src/kernel src/kernel/mem/vmm.cpp -o build/vmm.o -c -m64 -mcmodel=kernel -mno-red-zone -fno-exceptions -fno-pic -fno-pie -std=c++23 -fno-rtti
g++ -Wall -Wextra -ffreestanding -ggdb -I ./src/kernel src/kernel/mem/heap.cpp -o build/heap.o -c -m64 -mcmodel=kernel -mno-red-zone -fno-exceptions -fno-pic -fno-pie -std=c++23 -fno-rtti
g++ -Wall -Wextra -ffreestanding -ggdb -I ./src/kernel src/kernel/drivers/apic.cpp -o build/apic.o -c -m64 -mcmodel=kernel -mno-red-zone -fno-exceptions -fno-pic -fno-pie -std=c++23 -fno-rtti
g++ -Wall -Wextra -ffreestanding -ggdb -I ./src/kernel src/kernel/drivers/ioapic.cpp -o build/ioapic.o -c -m64 -mcmodel=kernel -mno-red-zone -fno-exceptions -fno-pic -fno-pie -std=c++23 -fno-rtti
g++ -Wall -Wextra -ffreestanding -ggdb -I ./src/kernel src/kernel/drivers/pit.cpp -o build/pit.o -c -m64 -mcmodel=kernel -mno-red-zone -fno-exceptions -fno-pic -fno-pie -std=c++23 -fno-rtti
g++ -Wall -Wextra -ffreestanding -ggdb -I ./src/kernel src/kernel/drivers/acpi.cpp -o build/acpi.o -c -m64 -mcmodel=kernel -mno-red-zone -fno-exceptions -fno-pic -fno-pie -std=c++23 -fno-rtti
g++ -Wall -Wextra -ffreestanding -ggdb -I ./src/kernel src/kernel/drivers/rtc.cpp -o build/rtc.o -c -m64 -mcmodel=kernel -mno-red-zone -fno-exceptions -fno-pic -fno-pie -std=c++23 -fno-rtti
g++ -Wall -Wextra -ffreestanding -ggdb -I ./src/kernel src/kernel/multitasking/thread.cpp -o build/thread.o -c -m64 -mcmodel=kernel -mno-red-zone -fno-exceptions -fno-pic -fno-pie -std=c++23 -fno-rtti
g++ -Wall -Wextra -ffreestanding -ggdb -I ./src/kernel src/kernel/multitasking/scheduler.cpp -o build/scheduler.o -c -m64 -mcmodel=kernel -mno-red-zone -fno-exceptions -fno-pic -fno-pie -std=c++23 -fno-rtti
g++ -Wall -Wextra -ffreestanding -ggdb -I ./src/kernel src/kernel/lib/spinlock.cpp -o build/spinlock.o -c -m64 -mcmodel=kernel -mno-red-zone -fno-exceptions -fno-pic -fno-pie -std=c++23 -fno-rtti
g++ -Wall -Wextra -ffreestanding -ggdb -I ./src/kernel src/kernel/fs/vfs.cpp -o build/vfs.o -c -m64 -mcmodel=kernel -mno-red-zone -fno-exceptions -fno-pic -fno-pie -std=c++23 -fno-rtti
ld -n -nostdlib -T linkd/link.ld build/*.o -o kernel.elf
