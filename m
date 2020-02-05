Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE881153600
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 18:12:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RqhBDal0nWcCVDhsTPZz4e1J8q86ROpaJQ8YbYzNCmg=; b=PYVKab/tdvUppu
	fOXNBGUHnEaoypw6YlNAoqmfMVFNESJfEoCAr6qosCxUl3MoipsgNj7CUVA0DJGNyKokenAN1qeDH
	QnfgwPeq5m+TaQjgPNp/WTQVgP75TGV9oXNc/wo07QavMdiZiX/JW4W2l7NIoxJhtK1urgSCBOWVs
	Y+U9EPGWlq7Bf8zcNP5wyr74DagzcZOKcgTzWDdo5O/Flvj1u/roMPOi6wwU4oWgfLNwaX+dAN4l4
	m7DLeAYxt43VcO0W/rFDeGXMDaxqubOmkASo6pyMrty1AH4GGVd6ZTNy93JpTRDzMzMihgKsyayUi
	ga7fv6SfqkWo756GxExg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izODh-00036i-G7; Wed, 05 Feb 2020 17:12:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izODa-00036E-HM
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 17:12:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 674E021741;
 Wed,  5 Feb 2020 17:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580922721;
 bh=JnzOaes9zZqzGhjdKZE07DCRk+Nps5EiNAVCzrzWhRo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ILyzoAgsZg6vIVR9oQf002k1T65thHsmz3mLiVceRpxWJeE6SRS9j/S2d0K6HNvCj
 Oejdc0Of7onyOHGvmsYU6MesOGaI3HTnuO0dIzCX9ibTaAvFrBaeW/iLFOuYimbFkg
 js3EVTkFWbn4Nlv2spK9txXnSCFYg8wV61E5eGrM=
Date: Wed, 5 Feb 2020 17:11:57 +0000
From: Will Deacon <will@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH kvmtool] Add emulation for CFI compatible flash memory
Message-ID: <20200205171156.GA908@willie-the-truck>
References: <20200108183212.252810-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108183212.252810-1-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_091202_622299_BD74DD7E 
X-CRM114-Status: GOOD (  33.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org, Raphael Gault <raphael.gault@arm.com>,
 Sami Mujawar <sami.mujawar@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 06:32:12PM +0000, Andre Przywara wrote:
> From: Raphael Gault <raphael.gault@arm.com>
> 
> The EDK II UEFI firmware implementation requires some storage for the EFI
> variables, which is typically some flash storage.
> Since this is already supported on the EDK II side, we add a CFI flash
> emulation to kvmtool.
> This is backed by a file, specified via the --flash or -F command line
> option. Any flash writes done by the guest will immediately be reflected
> into this file (kvmtool mmap's the file).
> 
> This implements a CFI flash using the "Intel/Sharp extended command
> set", as specified in:
> - JEDEC JESD68.01
> - JEDEC JEP137B
> - Intel Application Note 646
> Some gaps in those specs have been filled by looking at real devices and
> other implementations (QEMU, Linux kernel driver).
> 
> At the moment this relies on DT to advertise the base address of the
> flash memory (mapped into the MMIO address space) and is only enabled
> for ARM/ARM64. The emulation itself is architecture agnostic, though.
> 
> This is one missing piece towards booting with UEFI inside ARM guests,
> the other is to provide writable PCI BARs, which is also WIP.
> 
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> [Andre: rewriting and fixing]
> Signed-off-by: Andre Przywra <andre.przywara@arm.com>
> ---
>  Makefile                          |   6 +
>  arm/include/arm-common/kvm-arch.h |   3 +
>  builtin-run.c                     |   2 +
>  hw/cfi_flash.c                    | 547 ++++++++++++++++++++++++++++++
>  include/kvm/kvm-config.h          |   1 +
>  5 files changed, 559 insertions(+)
>  create mode 100644 hw/cfi_flash.c
> 
> diff --git a/Makefile b/Makefile
> index 3862112c..7ed6fb5e 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -170,6 +170,7 @@ ifeq ($(ARCH), arm)
>  	CFLAGS		+= -march=armv7-a
>  
>  	ARCH_WANT_LIBFDT := y
> +	ARCH_HAS_FLASH_MEM := y
>  endif
>  
>  # ARM64
> @@ -182,6 +183,7 @@ ifeq ($(ARCH), arm64)
>  	ARCH_INCLUDE	+= -Iarm/aarch64/include
>  
>  	ARCH_WANT_LIBFDT := y
> +	ARCH_HAS_FLASH_MEM := y
>  endif
>  
>  ifeq ($(ARCH),mips)
> @@ -261,6 +263,10 @@ ifeq (y,$(ARCH_HAS_FRAMEBUFFER))
>  	endif
>  endif
>  
> +ifeq (y,$(ARCH_HAS_FLASH_MEM))
> +	OBJS	+= hw/cfi_flash.o
> +endif
> +
>  ifeq ($(call try-build,$(SOURCE_ZLIB),$(CFLAGS),$(LDFLAGS) -lz),y)
>  	CFLAGS_DYNOPT	+= -DCONFIG_HAS_ZLIB
>  	LIBS_DYNOPT	+= -lz
> diff --git a/arm/include/arm-common/kvm-arch.h b/arm/include/arm-common/kvm-arch.h
> index b9d486d5..cbc9e7aa 100644
> --- a/arm/include/arm-common/kvm-arch.h
> +++ b/arm/include/arm-common/kvm-arch.h
> @@ -21,6 +21,9 @@
>  #define ARM_GIC_DIST_SIZE	0x10000
>  #define ARM_GIC_CPUI_SIZE	0x20000
>  
> +#define ARM_FLASH_MMIO_BASE	(32ULL << 20)

Can you just use the hex constant (0x2000000) here please?

> +#define KVM_FLASH_MMIO_BASE	ARM_FLASH_MMIO_BASE
> +
>  #define ARM_IOPORT_SIZE		(ARM_MMIO_AREA - ARM_IOPORT_AREA)
>  #define ARM_VIRTIO_MMIO_SIZE	(ARM_AXI_AREA - (ARM_MMIO_AREA + ARM_GIC_SIZE))
>  #define ARM_PCI_CFG_SIZE	(1ULL << 24)
> diff --git a/builtin-run.c b/builtin-run.c
> index f8dc6c72..df8c6741 100644
> --- a/builtin-run.c
> +++ b/builtin-run.c
> @@ -138,6 +138,8 @@ void kvm_run_set_wrapper_sandbox(void)
>  			"Kernel command line arguments"),		\
>  	OPT_STRING('f', "firmware", &(cfg)->firmware_filename, "firmware",\
>  			"Firmware image to boot in virtual machine"),	\
> +	OPT_STRING('F', "flash", &(cfg)->flash_filename, "flash",\
> +			"Flash image to present to virtual machine"),	\
>  									\
>  	OPT_GROUP("Networking options:"),				\
>  	OPT_CALLBACK_DEFAULT('n', "network", NULL, "network params",	\
> diff --git a/hw/cfi_flash.c b/hw/cfi_flash.c
> new file mode 100644
> index 00000000..33cfeefe
> --- /dev/null
> +++ b/hw/cfi_flash.c
> @@ -0,0 +1,547 @@
> +#include <stdbool.h>
> +#include <stdlib.h>
> +#include <string.h>
> +#include <linux/bitops.h>
> +#include <linux/err.h>
> +#include <linux/sizes.h>
> +#include <linux/types.h>
> +
> +#include "kvm/kvm.h"
> +#include "kvm/kvm-arch.h"
> +#include "kvm/devices.h"
> +#include "kvm/fdt.h"
> +#include "kvm/util.h"
> +
> +/* The EDK2 driver hardcodes two 16-bit chips on a 32-bit bus. */
> +#define CFI_NR_FLASH_CHIPS			2
> +//#define CFI_NR_FLASH_CHIPS			1

Delete this commented define?

> +/* We always emulate a 32 bit bus width. */
> +#define CFI_BUS_WIDTH				4
> +
> +/* The *effective* size of an erase block (over all chips) */
> +#define FLASH_BLOCK_SIZE			SZ_64K
> +
> +#define PROGRAM_BUFF_SIZE_BITS			7
> +#define PROGRAM_BUFF_SIZE			(1U << PROGRAM_BUFF_SIZE_BITS)
> +
> +/* CFI commands */
> +#define CFI_CMD_LOCK_BLOCK			0x01
> +#define CFI_CMD_ALTERNATE_WORD_PROGRAM_SETUP	0x10
> +#define CFI_CMD_BLOCK_ERASE_SETUP		0x20
> +#define CFI_CMD_WORD_PROGRAM_SETUP		0x40
> +#define CFI_CMD_CLEAR_STATUS_REGISTER		0x50
> +#define CFI_CMD_LOCK_BLOCK_SETUP		0x60
> +#define CFI_CMD_READ_STATUS_REGISTER		0x70
> +#define CFI_CMD_READ_JEDEC			0x90
> +#define CFI_CMD_READ_CFI_QUERY			0x98
> +#define CFI_CMD_BUFFERED_PROGRAM_CONFIRM	0xd0
> +#define CFI_CMD_BLOCK_ERASE_CONFIRM		0xd0
> +#define CFI_CMD_UNLOCK_BLOCK			0xd0
> +#define CFI_CMD_BUFFERED_PROGRAM_SETUP		0xe8
> +#define CFI_CMD_READ_ARRAY			0xff
> +
> +/*
> + * CFI query table contents, as far as it is constant.
> + */
> +#define CFI_GEOM_OFFSET				0x27
> +static u8 cfi_query_table[] = {
> +		/* offset 0x10: CFI query identification string */
> +	'Q', 'R', 'Y',		/* ID string */
> +	0x01, 0x00,		/* primary command set: Intel/Sharp extended */
> +	0x31, 0x00,		/* address of primary extended query table */
> +	0x00, 0x00,		/* alternative command set: unused */
> +	0x00, 0x00,		/* address of alternative extended query table*/
> +		/* offset 0x1b: system interface information */
> +	0x45,			/* minimum Vcc voltage: 4.5V */
> +	0x55,			/* maximum Vcc voltage: 5.5V */
> +	0x00,			/* minimum Vpp voltage: 0.0V (unused) */
> +	0x00,			/* maximum Vpp voltage: 0.0V *(unused) */
> +	0x01,			/* timeout for single word program: 2 us */
> +	0x01,			/* timeout for multi-byte program: 2 us */
> +	0x01,			/* timeout for block erase: 2 ms */
> +	0x00,			/* timeout for full chip erase: not supported */
> +	0x00,			/* max timeout for single word program: 1x */
> +	0x00,			/* max timeout for mulit-byte program: 1x */
> +	0x00,			/* max timeout for block erase: 1x */
> +	0x00,			/* max timeout for chip erase: not supported */
> +		/* offset 0x27: flash geometry information */
> +	0x00,			/* size in power-of-2 bytes, filled later */
> +	0x06, 0x00,		/* interface description: 32 and 16 bits */
> +	PROGRAM_BUFF_SIZE_BITS + 1 - CFI_NR_FLASH_CHIPS, 0x00,
> +				/* number of multi-byte writes */
> +	0x01,			/* one erase block region */
> +	0x00, 0x00, 0x00, 0x00, /* number and size of erase blocks, filled */
> +		/* offset 0x31: Intel primary algorithm extended query table */
> +	'P', 'R', 'I',
> +	'1', '0',		/* version 1.0 */
> +	0xa0, 0x00, 0x00, 0x00, /* optional features: instant lock & pm-read */
> +	0x00,			/* no functions after suspend */
> +	0x01, 0x00,		/* only lock bit supported */
> +	0x50,			/* best Vcc value: 5.0V */
> +	0x00,			/* best Vpp value: 0.0V (unused) */
> +	0x01,			/* number of protection register fields */
> +	0x00, 0x00, 0x00, 0x00,	/* protection field 1 description */
> +};
> +
> +
> +/*
> + * Those states represent a subset of the CFI flash state machine.
> + */
> +enum cfi_flash_state {
> +	READY,
> +	LOCK_SETUP,
> +	WP_SETUP,
> +	BP_SETUP,
> +	BP_LOAD,
> +	ERASE_SETUP,
> +};
> +
> +/*
> + * The device can be in several **Read** modes.
> + * We don't implement the asynchronous burst mode.
> + */
> +enum cfi_read_mode {
> +	READ_ARRAY,
> +	READ_STATUS,
> +	READ_DEVICE_ID,
> +	READ_QUERY,
> +};
> +
> +struct cfi_flash_device {
> +	struct device_header	dev_hdr;
> +	u64			base_addr;
> +	u32			size;
> +
> +	void			*flash_memory;
> +	u8			program_buffer[PROGRAM_BUFF_SIZE * 4];
> +	unsigned long		*lock_bm;
> +	u64			last_address;
> +	unsigned int		buff_written;
> +	unsigned int		program_length;
> +
> +	enum cfi_flash_state	state;
> +	enum cfi_read_mode	read_mode;
> +	u16			rcr;
> +	u8			sr;
> +};
> +
> +static int pow2_size(unsigned long x)
> +{
> +	return (sizeof(x) * 8) - __builtin_clzl(x - 1);
> +}

This isn't specific to CFI -- maybe stick it include/kvm/util.h ?

> +static int nr_erase_blocks(struct cfi_flash_device *sfdev)
> +{
> +	return sfdev->size / FLASH_BLOCK_SIZE;
> +}
> +
> +/*
> + * CFI queries always deal with one byte of information, possibly mirrored
> + * to other bytes on the bus. This is dealt with in the callers.
> + * The address provided is the one for 8-bit addressing, and would need to
> + * be adjusted for wider accesses.
> + */
> +static u8 read_cfi(struct cfi_flash_device *sfdev, u64 addr)
> +{
> +	if (addr < 0x10)		/* CFI information starts at 0x10 */
> +		return 0;
> +
> +	if (addr - 0x10 > sizeof(cfi_query_table)) {
> +		pr_debug("CFI query read access beyond the end of table");
> +		return 0;
> +	}
> +
> +	/* Fixup dynamic information in the geometry part of the table. */
> +	switch (addr) {
> +	case CFI_GEOM_OFFSET:		/* device size in bytes, power of two */
> +		return pow2_size(sfdev->size / CFI_NR_FLASH_CHIPS);
> +	case CFI_GEOM_OFFSET + 6:	/* number of erase blocks, minus one */
> +		return (nr_erase_blocks(sfdev) - 1) & 0xff;
> +	case CFI_GEOM_OFFSET + 7:
> +		return (nr_erase_blocks(sfdev) - 1) >> 8;
> +	case CFI_GEOM_OFFSET + 8:	/* erase block size, in units of 256 */
> +		return ((FLASH_BLOCK_SIZE / 256 ) / CFI_NR_FLASH_CHIPS) & 0xff;
> +	case CFI_GEOM_OFFSET + 9:
> +		return ((FLASH_BLOCK_SIZE / 256 ) / CFI_NR_FLASH_CHIPS) >> 8;
> +	}
> +
> +	return cfi_query_table[addr - 0x10];
> +}
> +
> +/* We only support synchronous page mode read accesses. */
> +static void read_flash(struct cfi_flash_device *sfdev,
> +		       u64 addr, u8 *buffer, int len)
> +{
> +	memcpy(buffer, sfdev->flash_memory + addr, len);
> +}

Hmm, you open-code the memcpy when writing the flash so it's a bit weird
to have the asymmetry with reads. I don't mind what you do, but it should
probably be consistent.

> +static bool block_is_locked(struct cfi_flash_device *sfdev, u64 addr)
> +{
> +	int block_nr = addr / FLASH_BLOCK_SIZE;
> +
> +	return test_bit(block_nr, sfdev->lock_bm);
> +}
> +
> +#define DEV_ID_MASK 0x7ff
> +static u16 read_dev_id(struct cfi_flash_device *sfdev, u64 addr)
> +{
> +	switch ((addr & DEV_ID_MASK) / CFI_BUS_WIDTH) {
> +	case 0x0:				/* vendor ID */
> +		return 0x0000;
> +	case 0x1:				/* device ID */
> +		return 0xffff;
> +	case 0x2:
> +		return block_is_locked(sfdev, addr & ~DEV_ID_MASK);
> +	case 0x5:
> +		return sfdev->rcr;
> +	default:			/* Ignore the other entries. */
> +		return 0;
> +	}
> +}
> +
> +static void lock_block(struct cfi_flash_device *sfdev, u64 addr, bool lock)
> +{
> +	int block_nr = addr / FLASH_BLOCK_SIZE;
> +
> +	if (lock)
> +		set_bit(block_nr, sfdev->lock_bm);
> +	else
> +		clear_bit(block_nr, sfdev->lock_bm);
> +}


> +static void word_program(struct cfi_flash_device *sfdev,
> +			 u64 addr, void *data, int len)
> +{
> +	if (block_is_locked(sfdev, addr)) {
> +		sfdev->sr |= 0x12;
> +		return;
> +	}
> +
> +	memcpy(sfdev->flash_memory + addr, data, len);
> +}
> +
> +/* Reset the program buffer state to prepare for follow-up writes. */
> +static void buffer_setup(struct cfi_flash_device *sfdev)
> +{
> +	memset(sfdev->program_buffer, 0, sizeof(sfdev->program_buffer));
> +	sfdev->last_address = ~0ULL;
> +	sfdev->buff_written = 0;
> +}
> +
> +static bool buffer_program(struct cfi_flash_device *sfdev,
> +			   u64 addr, void *buffer, int len)
> +{
> +	unsigned int buf_addr;
> +
> +	if (sfdev->buff_written >= sfdev->program_length)
> +		return false;
> +
> +	/*
> +	 * The first word written into the buffer after the setup command
> +	 * happens to be the base address for the buffer.
> +	 * All subsequent writes need to be within this address and this
> +	 * address plus the buffer size, so keep this value around.
> +	 */
> +	if (sfdev->last_address == ~0ULL)
> +		sfdev->last_address = addr;
> +
> +	if (addr < sfdev->last_address)
> +		return false;
> +	buf_addr = addr - sfdev->last_address;
> +	if (buf_addr >= PROGRAM_BUFF_SIZE)
> +		return false;
> +
> +	memcpy(sfdev->program_buffer + buf_addr, buffer, len);
> +	sfdev->buff_written++;
> +
> +	return true;
> +}
> +
> +static void buffer_confirm(struct cfi_flash_device *sfdev)
> +{
> +	if (block_is_locked(sfdev, sfdev->last_address)) {
> +		sfdev->sr |= 0x12;
> +		return;
> +	}
> +	memcpy(sfdev->flash_memory + sfdev->last_address,
> +	       sfdev->program_buffer,
> +	       sfdev->buff_written * sizeof(u32));
> +}
> +
> +static void block_erase_confirm(struct cfi_flash_device *sfdev, u64 addr)
> +{
> +	if (block_is_locked(sfdev, addr)) {
> +		sfdev->sr |= 0x12;
> +		return;
> +	}
> +
> +	memset(sfdev->flash_memory + addr, 0xFF, FLASH_BLOCK_SIZE);
> +}
> +
> +static void cfi_flash_mmio(struct kvm_cpu *vcpu,
> +			   u64 addr, u8 *data, u32 len, u8 is_write,
> +			   void *context)
> +{
> +	struct cfi_flash_device *sfdev = context;
> +	u64 faddr = addr - sfdev->base_addr;
> +	u32 value;

How is this serialised? There is a distinct lack of locking, atomics and
memory barriers in the implementation, so we really need to avoid this
running concurrently with itself.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
