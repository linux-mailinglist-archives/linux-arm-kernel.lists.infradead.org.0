Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 456D315578C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 13:20:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=06OxIzXbcJkzNIe/Tvk/2Pioe5F53VjeWvHqAC+n75c=; b=DUn
	jz2qrIdIDhSGwuc0LXkVT1a8W0yPZF8lKK0Qt+9R0jjNXj4a7Ci3xPIslozKjATWlXz3+QEab4B21
	puC39kA7x0Y9nHWA2orxLPPsQO/CfJMkkf+8K9I3237/85yja3UqOiGuYHMOV06SgLfOq3Q+Ha7RN
	51uNdMPAGnQLTXZeuWhflxqdvocWNuTCg7hPaLj7vvcMywMxMrLeWUkQMdmht4B1jXPbsQNZgkHK9
	DOJJMyA5S937MB2qgyO/g5Gg6cty53U9+G1BoZEh6FRrHHEyHP3K/84WSpSGsF6vC2oZbATBw8+2X
	uJWfRt3Hlh7YUuJG09Xc9/HpRYajpDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j02c4-0007aL-Tw; Fri, 07 Feb 2020 12:20:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j02bv-0007Zn-VY
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 12:19:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1FE28328;
 Fri,  7 Feb 2020 04:19:51 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF2353F68E;
 Fri,  7 Feb 2020 04:19:49 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Subject: [PATCH kvmtool v2] Add emulation for CFI compatible flash memory
Date: Fri,  7 Feb 2020 12:19:41 +0000
Message-Id: <20200207121941.259157-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_041952_109474_E4C9B1C0 
X-CRM114-Status: GOOD (  23.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Raphael Gault <raphael.gault@arm.com>, Sami Mujawar <sami.mujawar@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Raphael Gault <raphael.gault@arm.com>

The EDK II UEFI firmware implementation requires some storage for the EFI
variables, which is typically some flash storage.
Since this is already supported on the EDK II side, we add a CFI flash
emulation to kvmtool.
This is backed by a file, specified via the --flash or -F command line
option. Any flash writes done by the guest will immediately be reflected
into this file (kvmtool mmap's the file).

This implements a CFI flash using the "Intel/Sharp extended command
set", as specified in:
- JEDEC JESD68.01
- JEDEC JEP137B
- Intel Application Note 646
Some gaps in those specs have been filled by looking at real devices and
other implementations (QEMU, Linux kernel driver).

At the moment this relies on DT to advertise the base address of the
flash memory (mapped into the MMIO address space) and is only enabled
for ARM/ARM64. The emulation itself is architecture agnostic, though.

This is one missing piece toward a working UEFI boot with kvmtool on
ARM guests, the other is to provide writable PCI BARs, which is WIP.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
[Andre: rewriting and fixing]
Signed-off-by: Andre Przywra <andre.przywara@arm.com>
---
Hi,

an update addressing Will's comments. I added coarse grained locking
to the MMIO handler, to prevent concurrent vCPU accesses from messing up
the internal CFI flash state machine.
I also folded the actual flash array read access into the MMIO handler
and fixed the other small issues.

Cheers,
Andre

 Makefile                          |   6 +
 arm/include/arm-common/kvm-arch.h |   3 +
 builtin-run.c                     |   2 +
 hw/cfi_flash.c                    | 546 ++++++++++++++++++++++++++++++
 include/kvm/kvm-config.h          |   1 +
 include/kvm/util.h                |   5 +
 6 files changed, 563 insertions(+)
 create mode 100644 hw/cfi_flash.c

diff --git a/Makefile b/Makefile
index 3862112c..7ed6fb5e 100644
--- a/Makefile
+++ b/Makefile
@@ -170,6 +170,7 @@ ifeq ($(ARCH), arm)
 	CFLAGS		+= -march=armv7-a
 
 	ARCH_WANT_LIBFDT := y
+	ARCH_HAS_FLASH_MEM := y
 endif
 
 # ARM64
@@ -182,6 +183,7 @@ ifeq ($(ARCH), arm64)
 	ARCH_INCLUDE	+= -Iarm/aarch64/include
 
 	ARCH_WANT_LIBFDT := y
+	ARCH_HAS_FLASH_MEM := y
 endif
 
 ifeq ($(ARCH),mips)
@@ -261,6 +263,10 @@ ifeq (y,$(ARCH_HAS_FRAMEBUFFER))
 	endif
 endif
 
+ifeq (y,$(ARCH_HAS_FLASH_MEM))
+	OBJS	+= hw/cfi_flash.o
+endif
+
 ifeq ($(call try-build,$(SOURCE_ZLIB),$(CFLAGS),$(LDFLAGS) -lz),y)
 	CFLAGS_DYNOPT	+= -DCONFIG_HAS_ZLIB
 	LIBS_DYNOPT	+= -lz
diff --git a/arm/include/arm-common/kvm-arch.h b/arm/include/arm-common/kvm-arch.h
index b9d486d5..2bb085f4 100644
--- a/arm/include/arm-common/kvm-arch.h
+++ b/arm/include/arm-common/kvm-arch.h
@@ -21,6 +21,9 @@
 #define ARM_GIC_DIST_SIZE	0x10000
 #define ARM_GIC_CPUI_SIZE	0x20000
 
+#define ARM_FLASH_MMIO_BASE	0x2000000		/* 32 MB */
+#define KVM_FLASH_MMIO_BASE	ARM_FLASH_MMIO_BASE
+
 #define ARM_IOPORT_SIZE		(ARM_MMIO_AREA - ARM_IOPORT_AREA)
 #define ARM_VIRTIO_MMIO_SIZE	(ARM_AXI_AREA - (ARM_MMIO_AREA + ARM_GIC_SIZE))
 #define ARM_PCI_CFG_SIZE	(1ULL << 24)
diff --git a/builtin-run.c b/builtin-run.c
index f8dc6c72..df8c6741 100644
--- a/builtin-run.c
+++ b/builtin-run.c
@@ -138,6 +138,8 @@ void kvm_run_set_wrapper_sandbox(void)
 			"Kernel command line arguments"),		\
 	OPT_STRING('f', "firmware", &(cfg)->firmware_filename, "firmware",\
 			"Firmware image to boot in virtual machine"),	\
+	OPT_STRING('F', "flash", &(cfg)->flash_filename, "flash",\
+			"Flash image to present to virtual machine"),	\
 									\
 	OPT_GROUP("Networking options:"),				\
 	OPT_CALLBACK_DEFAULT('n', "network", NULL, "network params",	\
diff --git a/hw/cfi_flash.c b/hw/cfi_flash.c
new file mode 100644
index 00000000..d7c0e7e8
--- /dev/null
+++ b/hw/cfi_flash.c
@@ -0,0 +1,546 @@
+#include <stdbool.h>
+#include <stdlib.h>
+#include <string.h>
+#include <linux/bitops.h>
+#include <linux/err.h>
+#include <linux/sizes.h>
+#include <linux/types.h>
+
+#include "kvm/kvm.h"
+#include "kvm/kvm-arch.h"
+#include "kvm/devices.h"
+#include "kvm/fdt.h"
+#include "kvm/mutex.h"
+#include "kvm/util.h"
+
+/* The EDK2 driver hardcodes two 16-bit chips on a 32-bit bus. */
+#define CFI_NR_FLASH_CHIPS			2
+
+/* We always emulate a 32 bit bus width. */
+#define CFI_BUS_WIDTH				4
+
+/* The *effective* size of an erase block (over all chips) */
+#define FLASH_BLOCK_SIZE			SZ_64K
+
+#define PROGRAM_BUFF_SIZE_BITS			7
+#define PROGRAM_BUFF_SIZE			(1U << PROGRAM_BUFF_SIZE_BITS)
+
+/* CFI commands */
+#define CFI_CMD_LOCK_BLOCK			0x01
+#define CFI_CMD_ALTERNATE_WORD_PROGRAM_SETUP	0x10
+#define CFI_CMD_BLOCK_ERASE_SETUP		0x20
+#define CFI_CMD_WORD_PROGRAM_SETUP		0x40
+#define CFI_CMD_CLEAR_STATUS_REGISTER		0x50
+#define CFI_CMD_LOCK_BLOCK_SETUP		0x60
+#define CFI_CMD_READ_STATUS_REGISTER		0x70
+#define CFI_CMD_READ_JEDEC			0x90
+#define CFI_CMD_READ_CFI_QUERY			0x98
+#define CFI_CMD_BUFFERED_PROGRAM_CONFIRM	0xd0
+#define CFI_CMD_BLOCK_ERASE_CONFIRM		0xd0
+#define CFI_CMD_UNLOCK_BLOCK			0xd0
+#define CFI_CMD_BUFFERED_PROGRAM_SETUP		0xe8
+#define CFI_CMD_READ_ARRAY			0xff
+
+/*
+ * CFI query table contents, as far as it is constant.
+ */
+#define CFI_GEOM_OFFSET				0x27
+static u8 cfi_query_table[] = {
+		/* offset 0x10: CFI query identification string */
+	'Q', 'R', 'Y',		/* ID string */
+	0x01, 0x00,		/* primary command set: Intel/Sharp extended */
+	0x31, 0x00,		/* address of primary extended query table */
+	0x00, 0x00,		/* alternative command set: unused */
+	0x00, 0x00,		/* address of alternative extended query table*/
+		/* offset 0x1b: system interface information */
+	0x45,			/* minimum Vcc voltage: 4.5V */
+	0x55,			/* maximum Vcc voltage: 5.5V */
+	0x00,			/* minimum Vpp voltage: 0.0V (unused) */
+	0x00,			/* maximum Vpp voltage: 0.0V *(unused) */
+	0x01,			/* timeout for single word program: 2 us */
+	0x01,			/* timeout for multi-byte program: 2 us */
+	0x01,			/* timeout for block erase: 2 ms */
+	0x00,			/* timeout for full chip erase: not supported */
+	0x00,			/* max timeout for single word program: 1x */
+	0x00,			/* max timeout for mulit-byte program: 1x */
+	0x00,			/* max timeout for block erase: 1x */
+	0x00,			/* max timeout for chip erase: not supported */
+		/* offset 0x27: flash geometry information */
+	0x00,			/* size in power-of-2 bytes, filled later */
+	0x06, 0x00,		/* interface description: 32 and 16 bits */
+	PROGRAM_BUFF_SIZE_BITS + 1 - CFI_NR_FLASH_CHIPS, 0x00,
+				/* number of multi-byte writes */
+	0x01,			/* one erase block region */
+	0x00, 0x00, 0x00, 0x00, /* number and size of erase blocks, filled */
+		/* offset 0x31: Intel primary algorithm extended query table */
+	'P', 'R', 'I',
+	'1', '0',		/* version 1.0 */
+	0xa0, 0x00, 0x00, 0x00, /* optional features: instant lock & pm-read */
+	0x00,			/* no functions after suspend */
+	0x01, 0x00,		/* only lock bit supported */
+	0x50,			/* best Vcc value: 5.0V */
+	0x00,			/* best Vpp value: 0.0V (unused) */
+	0x01,			/* number of protection register fields */
+	0x00, 0x00, 0x00, 0x00,	/* protection field 1 description */
+};
+
+
+/*
+ * Those states represent a subset of the CFI flash state machine.
+ */
+enum cfi_flash_state {
+	READY,
+	LOCK_SETUP,
+	WP_SETUP,
+	BP_SETUP,
+	BP_LOAD,
+	ERASE_SETUP,
+};
+
+/*
+ * The device can be in several **Read** modes.
+ * We don't implement the asynchronous burst mode.
+ */
+enum cfi_read_mode {
+	READ_ARRAY,
+	READ_STATUS,
+	READ_DEVICE_ID,
+	READ_QUERY,
+};
+
+struct cfi_flash_device {
+	struct device_header	dev_hdr;
+	/* Protects the CFI state machine variables in this data structure. */
+	struct mutex		mutex;
+	u64			base_addr;
+	u32			size;
+
+	void			*flash_memory;
+	u8			program_buffer[PROGRAM_BUFF_SIZE * 4];
+	unsigned long		*lock_bm;
+	u64			last_address;
+	unsigned int		buff_written;
+	unsigned int		program_length;
+
+	enum cfi_flash_state	state;
+	enum cfi_read_mode	read_mode;
+	u16			rcr;
+	u8			sr;
+};
+
+static int nr_erase_blocks(struct cfi_flash_device *sfdev)
+{
+	return sfdev->size / FLASH_BLOCK_SIZE;
+}
+
+/*
+ * CFI queries always deal with one byte of information, possibly mirrored
+ * to other bytes on the bus. This is dealt with in the callers.
+ * The address provided is the one for 8-bit addressing, and would need to
+ * be adjusted for wider accesses.
+ */
+static u8 read_cfi(struct cfi_flash_device *sfdev, u64 addr)
+{
+	if (addr < 0x10)		/* CFI information starts at 0x10 */
+		return 0;
+
+	if (addr - 0x10 > sizeof(cfi_query_table)) {
+		pr_debug("CFI query read access beyond the end of table");
+		return 0;
+	}
+
+	/* Fixup dynamic information in the geometry part of the table. */
+	switch (addr) {
+	case CFI_GEOM_OFFSET:		/* device size in bytes, power of two */
+		return pow2_size(sfdev->size / CFI_NR_FLASH_CHIPS);
+	case CFI_GEOM_OFFSET + 6:	/* number of erase blocks, minus one */
+		return (nr_erase_blocks(sfdev) - 1) & 0xff;
+	case CFI_GEOM_OFFSET + 7:
+		return (nr_erase_blocks(sfdev) - 1) >> 8;
+	case CFI_GEOM_OFFSET + 8:	/* erase block size, in units of 256 */
+		return ((FLASH_BLOCK_SIZE / 256 ) / CFI_NR_FLASH_CHIPS) & 0xff;
+	case CFI_GEOM_OFFSET + 9:
+		return ((FLASH_BLOCK_SIZE / 256 ) / CFI_NR_FLASH_CHIPS) >> 8;
+	}
+
+	return cfi_query_table[addr - 0x10];
+}
+
+static bool block_is_locked(struct cfi_flash_device *sfdev, u64 addr)
+{
+	int block_nr = addr / FLASH_BLOCK_SIZE;
+
+	return test_bit(block_nr, sfdev->lock_bm);
+}
+
+#define DEV_ID_MASK 0x7ff
+static u16 read_dev_id(struct cfi_flash_device *sfdev, u64 addr)
+{
+	switch ((addr & DEV_ID_MASK) / CFI_BUS_WIDTH) {
+	case 0x0:				/* vendor ID */
+		return 0x0000;
+	case 0x1:				/* device ID */
+		return 0xffff;
+	case 0x2:
+		return block_is_locked(sfdev, addr & ~DEV_ID_MASK);
+	case 0x5:
+		return sfdev->rcr;
+	default:			/* Ignore the other entries. */
+		return 0;
+	}
+}
+
+static void lock_block(struct cfi_flash_device *sfdev, u64 addr, bool lock)
+{
+	int block_nr = addr / FLASH_BLOCK_SIZE;
+
+	if (lock)
+		set_bit(block_nr, sfdev->lock_bm);
+	else
+		clear_bit(block_nr, sfdev->lock_bm);
+}
+
+static void word_program(struct cfi_flash_device *sfdev,
+			 u64 addr, void *data, int len)
+{
+	if (block_is_locked(sfdev, addr)) {
+		sfdev->sr |= 0x12;
+		return;
+	}
+
+	memcpy(sfdev->flash_memory + addr, data, len);
+}
+
+/* Reset the program buffer state to prepare for follow-up writes. */
+static void buffer_setup(struct cfi_flash_device *sfdev)
+{
+	memset(sfdev->program_buffer, 0, sizeof(sfdev->program_buffer));
+	sfdev->last_address = ~0ULL;
+	sfdev->buff_written = 0;
+}
+
+static bool buffer_program(struct cfi_flash_device *sfdev,
+			   u64 addr, void *buffer, int len)
+{
+	unsigned int buf_addr;
+
+	if (sfdev->buff_written >= sfdev->program_length)
+		return false;
+
+	/*
+	 * The first word written into the buffer after the setup command
+	 * happens to be the base address for the buffer.
+	 * All subsequent writes need to be within this address and this
+	 * address plus the buffer size, so keep this value around.
+	 */
+	if (sfdev->last_address == ~0ULL)
+		sfdev->last_address = addr;
+
+	if (addr < sfdev->last_address)
+		return false;
+	buf_addr = addr - sfdev->last_address;
+	if (buf_addr >= PROGRAM_BUFF_SIZE)
+		return false;
+
+	memcpy(sfdev->program_buffer + buf_addr, buffer, len);
+	sfdev->buff_written++;
+
+	return true;
+}
+
+static void buffer_confirm(struct cfi_flash_device *sfdev)
+{
+	if (block_is_locked(sfdev, sfdev->last_address)) {
+		sfdev->sr |= 0x12;
+		return;
+	}
+	memcpy(sfdev->flash_memory + sfdev->last_address,
+	       sfdev->program_buffer,
+	       sfdev->buff_written * sizeof(u32));
+}
+
+static void block_erase_confirm(struct cfi_flash_device *sfdev, u64 addr)
+{
+	if (block_is_locked(sfdev, addr)) {
+		sfdev->sr |= 0x12;
+		return;
+	}
+
+	memset(sfdev->flash_memory + addr, 0xFF, FLASH_BLOCK_SIZE);
+}
+
+static void cfi_flash_mmio(struct kvm_cpu *vcpu,
+			   u64 addr, u8 *data, u32 len, u8 is_write,
+			   void *context)
+{
+	struct cfi_flash_device *sfdev = context;
+	u64 faddr = addr - sfdev->base_addr;
+	u32 value;
+
+	if (!is_write) {
+		u16 cfi_value = 0;
+
+		mutex_lock(&sfdev->mutex);
+
+		switch (sfdev->read_mode) {
+		case READ_ARRAY:
+			/* just copy the requested bytes from the array */
+			memcpy(data, sfdev->flash_memory + faddr, len);
+			goto out_unlock;
+		case READ_STATUS:
+			cfi_value = sfdev->sr;
+			break;
+		case READ_DEVICE_ID:
+			cfi_value = read_dev_id(sfdev, faddr);
+			break;
+		case READ_QUERY:
+			cfi_value = read_cfi(sfdev, faddr / CFI_BUS_WIDTH);
+			break;
+		}
+		switch (len) {
+		case 1:
+			*data = cfi_value;
+			break;
+		case 8: memset(data + 4, 0, 4);
+			/* fall-through */
+		case 4:
+			if (CFI_NR_FLASH_CHIPS == 2)
+				memcpy(data + 2, &cfi_value, 2);
+			else
+				memset(data + 2, 0, 2);
+			/* fall-through */
+		case 2:
+			memcpy(data, &cfi_value, 2);
+			break;
+		default:
+			pr_debug("CFI flash: illegal access length %d for read mode %d",
+				 len, sfdev->read_mode);
+			break;
+		}
+
+		goto out_unlock;
+	}
+
+	if (len > 4) {
+		pr_info("CFI flash: MMIO %d-bit write access not supported",
+			 len * 8);
+		return;
+	}
+
+	memcpy(&value, data, len);
+
+	mutex_lock(&sfdev->mutex);
+
+	switch (sfdev->state) {
+	case READY:			/* handled below */
+		break;
+
+	case LOCK_SETUP:
+		switch (value & 0xff) {
+		case CFI_CMD_LOCK_BLOCK:
+			lock_block(sfdev, faddr, true);
+			sfdev->read_mode = READ_STATUS;
+			break;
+		case CFI_CMD_UNLOCK_BLOCK:
+			lock_block(sfdev, faddr, false);
+			sfdev->read_mode = READ_STATUS;
+			break;
+		default:
+			sfdev->sr |= 0x30;
+			break;
+		}
+		sfdev->state = READY;
+		goto out_unlock;
+
+	case WP_SETUP:
+		word_program(sfdev, faddr, data, len);
+		sfdev->read_mode = READ_STATUS;
+		sfdev->state = READY;
+		goto out_unlock;
+
+	case BP_LOAD:
+		if (buffer_program(sfdev, faddr, data, len))
+			goto out_unlock;
+
+		if ((value & 0xFF) == CFI_CMD_BUFFERED_PROGRAM_CONFIRM) {
+			buffer_confirm(sfdev);
+			sfdev->read_mode = READ_STATUS;
+		} else {
+			pr_debug("CFI flash: BP_LOAD: expected CONFIRM(0xd0), got 0x%x @ 0x%llx",
+				 value, faddr);
+			sfdev->sr |= 0x10;
+		}
+		sfdev->state = READY;
+		goto out_unlock;
+
+	case BP_SETUP:
+		sfdev->program_length = (value & 0xffff) + 1;
+		if (sfdev->program_length > PROGRAM_BUFF_SIZE / 4)
+			sfdev->program_length = PROGRAM_BUFF_SIZE / 4;
+		sfdev->state = BP_LOAD;
+		sfdev->read_mode = READ_STATUS;
+		goto out_unlock;
+
+	case ERASE_SETUP:
+		if ((value & 0xff) == CFI_CMD_BLOCK_ERASE_CONFIRM)
+			block_erase_confirm(sfdev, faddr);
+		else
+			sfdev->sr |= 0x30;
+
+		sfdev->state = READY;
+		sfdev->read_mode = READ_STATUS;
+		goto out_unlock;
+	}
+
+	/* write commands in READY state */
+	switch (value & 0xFF) {
+	case CFI_CMD_READ_JEDEC:
+		sfdev->read_mode = READ_DEVICE_ID;
+		break;
+	case CFI_CMD_READ_STATUS_REGISTER:
+		sfdev->read_mode = READ_STATUS;
+		break;
+	case CFI_CMD_READ_CFI_QUERY:
+		sfdev->read_mode = READ_QUERY;
+		break;
+	case CFI_CMD_CLEAR_STATUS_REGISTER:
+		sfdev->sr = 0x80;
+		break;
+	case CFI_CMD_WORD_PROGRAM_SETUP:
+	case CFI_CMD_ALTERNATE_WORD_PROGRAM_SETUP:
+		sfdev->state = WP_SETUP;
+		sfdev->read_mode = READ_STATUS;
+		break;
+	case CFI_CMD_LOCK_BLOCK_SETUP:
+		sfdev->state = LOCK_SETUP;
+		break;
+	case CFI_CMD_BLOCK_ERASE_SETUP:
+		sfdev->state = ERASE_SETUP;
+		sfdev->read_mode = READ_STATUS;
+		break;
+	case CFI_CMD_BUFFERED_PROGRAM_SETUP:
+		buffer_setup(sfdev);
+		sfdev->state = BP_SETUP;
+		sfdev->read_mode = READ_STATUS;
+		break;
+	case CFI_CMD_BUFFERED_PROGRAM_CONFIRM:
+		pr_debug("CFI flash: unexpected confirm command 0xD0");
+		break;
+	default:
+		pr_debug("CFI flash: unknown command 0x%x", value);
+		/* fall through */
+	case CFI_CMD_READ_ARRAY:
+		sfdev->read_mode = READ_ARRAY;
+		break;
+	}
+
+out_unlock:
+	mutex_unlock(&sfdev->mutex);
+}
+
+#ifdef CONFIG_HAS_LIBFDT
+static void generate_cfi_flash_fdt_node(void *fdt,
+					struct device_header *dev_hdr,
+					void (*generate_irq_prop)(void *fdt,
+								  u8 irq,
+								enum irq_type))
+{
+	struct cfi_flash_device *sfdev;
+	u64 reg_prop[2];
+
+	sfdev = container_of(dev_hdr, struct cfi_flash_device, dev_hdr);
+	reg_prop[0] = cpu_to_fdt64(sfdev->base_addr);
+	reg_prop[1] = cpu_to_fdt64(sfdev->size);
+
+	_FDT(fdt_begin_node(fdt, "flash"));
+	_FDT(fdt_property_cell(fdt, "bank-width", CFI_BUS_WIDTH));
+	_FDT(fdt_property_cell(fdt, "#address-cells", 0x1));
+	_FDT(fdt_property_cell(fdt, "#size-cells", 0x1));
+	_FDT(fdt_property_string(fdt, "compatible", "cfi-flash"));
+	_FDT(fdt_property_string(fdt, "label", "System-firmware"));
+	_FDT(fdt_property(fdt, "reg", &reg_prop, sizeof(reg_prop)));
+	_FDT(fdt_end_node(fdt));
+}
+#else
+#define generate_cfi_flash_fdt_node NULL
+#endif
+
+static struct cfi_flash_device *create_flash_device_file(struct kvm *kvm,
+							 const char *filename)
+{
+	struct cfi_flash_device *sfdev;
+	struct stat statbuf;
+	unsigned int value;
+	int ret;
+	int fd;
+
+	fd = open(filename, O_RDWR);
+	if (fd < 0)
+		return ERR_PTR(-errno);
+	if (fstat(fd, &statbuf) < 0) {
+		close(fd);
+		return ERR_PTR(-errno);
+	}
+
+	sfdev = malloc(sizeof(struct cfi_flash_device));
+	if (!sfdev) {
+		close(fd);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	sfdev->size = (statbuf.st_size + 4095) & ~0xfffUL;
+	sfdev->flash_memory = mmap(NULL, statbuf.st_size,
+				   PROT_READ | PROT_WRITE, MAP_SHARED,
+				   fd, 0);
+	if (sfdev->flash_memory == MAP_FAILED) {
+		close(fd);
+		free(sfdev);
+		return ERR_PTR(-errno);
+	}
+	sfdev->base_addr = KVM_FLASH_MMIO_BASE;
+	sfdev->state = READY;
+	sfdev->read_mode = READ_ARRAY;
+	sfdev->sr = 0x80;
+	sfdev->rcr = 0xbfcf;
+
+	value = roundup(nr_erase_blocks(sfdev), BITS_PER_LONG) / 8;
+	sfdev->lock_bm = malloc(value);
+	memset(sfdev->lock_bm, 0, value);
+
+	sfdev->dev_hdr.bus_type = DEVICE_BUS_MMIO;
+	sfdev->dev_hdr.data = generate_cfi_flash_fdt_node;
+	mutex_init(&sfdev->mutex);
+	ret = device__register(&sfdev->dev_hdr);
+	if (ret) {
+		free(sfdev->flash_memory);
+		free(sfdev);
+		return ERR_PTR(ret);
+	}
+
+	ret = kvm__register_mmio(kvm,
+				 sfdev->base_addr, sfdev->size,
+				 false, cfi_flash_mmio, sfdev);
+	if (ret) {
+		device__unregister(&sfdev->dev_hdr);
+		free(sfdev->flash_memory);
+		free(sfdev);
+		return ERR_PTR(ret);
+	}
+
+	return sfdev;
+}
+
+static int flash__init(struct kvm *kvm)
+{
+	struct cfi_flash_device *sfdev;
+
+	if (!kvm->cfg.flash_filename)
+		return 0;
+
+	sfdev = create_flash_device_file(kvm, kvm->cfg.flash_filename);
+	if (IS_ERR(sfdev))
+		return PTR_ERR(sfdev);
+
+	return 0;
+}
+dev_init(flash__init);
diff --git a/include/kvm/kvm-config.h b/include/kvm/kvm-config.h
index a052b0bc..f4a8b831 100644
--- a/include/kvm/kvm-config.h
+++ b/include/kvm/kvm-config.h
@@ -35,6 +35,7 @@ struct kvm_config {
 	const char *vmlinux_filename;
 	const char *initrd_filename;
 	const char *firmware_filename;
+	const char *flash_filename;
 	const char *console;
 	const char *dev;
 	const char *network;
diff --git a/include/kvm/util.h b/include/kvm/util.h
index 4ca7aa93..5c37f0b7 100644
--- a/include/kvm/util.h
+++ b/include/kvm/util.h
@@ -104,6 +104,11 @@ static inline unsigned long roundup_pow_of_two(unsigned long x)
 	return x ? 1UL << fls_long(x - 1) : 0;
 }
 
+static inline int pow2_size(unsigned long x)
+{
+	return (sizeof(x) * 8) - __builtin_clzl(x - 1);
+}
+
 struct kvm;
 void *mmap_hugetlbfs(struct kvm *kvm, const char *htlbfs_path, u64 size);
 void *mmap_anon_or_hugetlbfs(struct kvm *kvm, const char *hugetlbfs_path, u64 size);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
