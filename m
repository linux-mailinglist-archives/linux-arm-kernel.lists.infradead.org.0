Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 867A9102BA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 19:20:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yRFwzi5pzierd+Kd+4QCTHWSgCPoiACcdF0EOG8uza8=; b=C3S6mLZAfTqRrTTiKKHmRdKUA
	2fARwee11kLXkGj313UXT6YTK8zu67Tya06IW5HYb7WnP0DS9d1Fm4HoEPmWft7XgZyDANu4bGDh2
	5Nh0GcF5Dt8wQq6DbSvlBjVYhqh2VoudM0pK3gEHCPQR/nRYJhYMuiXcfDobILIR41ixj4tXDMK4J
	T/KP03tuyg50G5XEwgLxya1W5Iudv9n/X7QY/fF2J6AIwKuQDNQSUGhZtZJFvjp8to/hOq7R5Nrmj
	3u4QB43uoI2pTYBhF/F3W9d87RNBdZSQ6pkyZroApVbqdg/3/vftBogO+IGSpIswdKz8bOq1ZeHm9
	gXHe9kBVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX877-0002nI-JT; Tue, 19 Nov 2019 18:20:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX86v-0002lv-Ox; Tue, 19 Nov 2019 18:20:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8A5B4FEC;
 Tue, 19 Nov 2019 10:20:18 -0800 (PST)
Received: from [192.168.122.166] (U201426.austin.arm.com [10.118.28.31])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E769C3F703;
 Tue, 19 Nov 2019 10:20:17 -0800 (PST)
Subject: Re: [PATCH v2 4/6] PCI: brcmstb: add Broadcom STB PCIe host
 controller driver
To: Andrew Murray <andrew.murray@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191112155926.16476-5-nsaenzjulienne@suse.de>
 <20191119162502.GS43905@e119886-lin.cambridge.arm.com>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <f2202c4d-c2b4-c06a-8864-432380d0181f@arm.com>
Date: Tue, 19 Nov 2019 12:20:01 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191119162502.GS43905@e119886-lin.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_102021_925044_A5C2DA8C 
X-CRM114-Status: GOOD (  25.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, mbrugger@suse.com, maz@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 11/19/19 10:25 AM, Andrew Murray wrote:
> On Tue, Nov 12, 2019 at 04:59:23PM +0100, Nicolas Saenz Julienne wrote:
>> From: Jim Quinlan <james.quinlan@broadcom.com>
>>
>> This commit adds the basic Broadcom STB PCIe controller.  Missing is the
>> ability to process MSI. This functionality is added in a subsequent
>> commit.
>>
>> The PCIe block contains an MDIO interface.  This is a local interface
>> only accessible by the PCIe controller.  It cannot be used or shared
>> by any other HW.  As such, the small amount of code for this
>> controller is included in this driver as there is little upside to put
>> it elsewhere.
> 
> This commit message hasn't changed, despite earlier feedback.
>

Also, unless i'm mistaken this controller isn't I/O coherent on the rpi.

If the commit message is to be updated, it might be nice to mention that 
since it is a little unusual.



>>
>> Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
>> Co-developed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>>
>> ---
>>
>> Changes since v1:
>>    - Fix Kconfig
>>    - Remove pci domain check
>>    - Remove all MSI related code
>>    - Remove supend/resume code
>>    - Simplify link state wait routine
>>    - Prefix all functions
>>    - Use of_device_get_match_data()
>>    - Use devm_clk_get_optional()
>>    - Get rid of irq variable
>>    - Use STB all over the driver
>>    - Fix license mismatch
>>    - Remove unused register definitions
>>    - Small cleanups, spell errors
>>
>> NOTE: I decided to remove the suspend/resume routines for now. The
>>        RPi4 doesn't need it, and we where having issues with the
>>        specifics of the resume function on devices we yet don't support.
>>        We'll deal with this in the future.
>>
>> This is based on Jim's original submission[1] but adapted and tailored
>> specifically to bcm2711's needs (that's the Raspberry Pi 4). Support for
>> the rest of the brcmstb family will soon follow once we get support for
>> multiple dma-ranges in dma/direct.
>>
>> [1] https://patchwork.kernel.org/patch/10605959/
>>
>>   drivers/pci/controller/Kconfig        |   8 +
>>   drivers/pci/controller/Makefile       |   1 +
>>   drivers/pci/controller/pcie-brcmstb.c | 855 ++++++++++++++++++++++++++
>>   3 files changed, 864 insertions(+)
>>   create mode 100644 drivers/pci/controller/pcie-brcmstb.c
>>
>> diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
>> index f5de9119e8d3..486d4d570233 100644
>> --- a/drivers/pci/controller/Kconfig
>> +++ b/drivers/pci/controller/Kconfig
>> @@ -281,6 +281,14 @@ config VMD
>>   	  To compile this driver as a module, choose M here: the
>>   	  module will be called vmd.
>>   
>> +config PCIE_BRCMSTB
>> +	bool "Broadcom Brcmstb PCIe host controller"
>> +	depends on ARCH_BCM2835 || COMPILE_TEST
>> +	depends on OF
>> +	help
>> +	  Say Y here to enable PCIe host controller support for
>> +	  Broadcom STB based SoCs, like the Raspberry Pi 4.
>> +
>>   config PCI_HYPERV_INTERFACE
>>   	tristate "Hyper-V PCI Interface"
>>   	depends on X86 && HYPERV && PCI_MSI && PCI_MSI_IRQ_DOMAIN && X86_64
>> diff --git a/drivers/pci/controller/Makefile b/drivers/pci/controller/Makefile
>> index a2a22c9d91af..3fc0b0cf5b5b 100644
>> --- a/drivers/pci/controller/Makefile
>> +++ b/drivers/pci/controller/Makefile
>> @@ -30,6 +30,7 @@ obj-$(CONFIG_PCIE_MEDIATEK) += pcie-mediatek.o
>>   obj-$(CONFIG_PCIE_MOBIVEIL) += pcie-mobiveil.o
>>   obj-$(CONFIG_PCIE_TANGO_SMP8759) += pcie-tango.o
>>   obj-$(CONFIG_VMD) += vmd.o
>> +obj-$(CONFIG_PCIE_BRCMSTB) += pcie-brcmstb.o
>>   # pcie-hisi.o quirks are needed even without CONFIG_PCIE_DW
>>   obj-y				+= dwc/
>>   
>> diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
>> new file mode 100644
>> index 000000000000..8d81c5ab5979
>> --- /dev/null
>> +++ b/drivers/pci/controller/pcie-brcmstb.c
>> @@ -0,0 +1,855 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/* Copyright (C) 2009 - 2019 Broadcom */
>> +
>> +#include <linux/clk.h>
>> +#include <linux/compiler.h>
>> +#include <linux/delay.h>
>> +#include <linux/init.h>
>> +#include <linux/interrupt.h>
>> +#include <linux/io.h>
>> +#include <linux/ioport.h>
>> +#include <linux/irqdomain.h>
>> +#include <linux/kernel.h>
>> +#include <linux/list.h>
>> +#include <linux/log2.h>
>> +#include <linux/module.h>
>> +#include <linux/of_address.h>
>> +#include <linux/of_irq.h>
>> +#include <linux/of_pci.h>
>> +#include <linux/of_platform.h>
>> +#include <linux/pci.h>
>> +#include <linux/printk.h>
>> +#include <linux/sizes.h>
>> +#include <linux/slab.h>
>> +#include <linux/string.h>
>> +#include <linux/types.h>
>> +
>> +#include "../pci.h"
>> +
>> +/* BRCM_PCIE_CAP_REGS - Offset for the mandatory capability config regs */
>> +#define BRCM_PCIE_CAP_REGS				0x00ac
>> +
>> +/*
>> + * Broadcom STB PCIe Register Offsets. The names are from the chip's RDB and we
>> + * use them here so that a script can correlate this code and the RDB to
>> + * prevent discrepancies.
>> + */
>> +#define PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1		0x0188
>> +#define PCIE_RC_CFG_PRIV1_ID_VAL3			0x043c
>> +#define PCIE_RC_DL_MDIO_ADDR				0x1100
>> +#define PCIE_RC_DL_MDIO_WR_DATA				0x1104
>> +#define PCIE_RC_DL_MDIO_RD_DATA				0x1108
>> +#define PCIE_MISC_MISC_CTRL				0x4008
>> +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO		0x400c
>> +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_HI		0x4010
>> +#define PCIE_MISC_RC_BAR1_CONFIG_LO			0x402c
>> +#define PCIE_MISC_RC_BAR2_CONFIG_LO			0x4034
>> +#define PCIE_MISC_RC_BAR2_CONFIG_HI			0x4038
>> +#define PCIE_MISC_RC_BAR3_CONFIG_LO			0x403c
>> +#define PCIE_MISC_PCIE_CTRL				0x4064
>> +#define PCIE_MISC_PCIE_STATUS				0x4068
>> +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT	0x4070
>> +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_HI		0x4080
>> +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LIMIT_HI		0x4084
>> +#define PCIE_MISC_HARD_PCIE_HARD_DEBUG			0x4204
>> +#define PCIE_INTR2_CPU_BASE				0x4300
>> +
>> +/*
>> + * Broadcom STB PCIe Register Field shift and mask info. The names are from the
>> + * chip's RDB and we use them here so that a script can correlate this code and
>> + * the RDB to prevent discrepancies.
>> + */
>> +#define PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1_ENDIAN_MODE_BAR2_MASK	0xc
>> +#define PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1_ENDIAN_MODE_BAR2_SHIFT	0x2
>> +#define PCIE_RC_CFG_PRIV1_ID_VAL3_CLASS_CODE_MASK		0xffffff
>> +#define PCIE_RC_CFG_PRIV1_ID_VAL3_CLASS_CODE_SHIFT		0x0
>> +#define PCIE_MISC_MISC_CTRL_SCB_ACCESS_EN_MASK			0x1000
>> +#define PCIE_MISC_MISC_CTRL_SCB_ACCESS_EN_SHIFT			0xc
>> +#define PCIE_MISC_MISC_CTRL_CFG_READ_UR_MODE_MASK		0x2000
>> +#define PCIE_MISC_MISC_CTRL_CFG_READ_UR_MODE_SHIFT		0xd
>> +#define PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_MASK			0x300000
>> +#define PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_SHIFT		0x14
>> +#define PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK			0xf8000000
>> +#define PCIE_MISC_MISC_CTRL_SCB0_SIZE_SHIFT			0x1b
>> +#define PCIE_MISC_RC_BAR1_CONFIG_LO_SIZE_MASK			0x1f
>> +#define PCIE_MISC_RC_BAR1_CONFIG_LO_SIZE_SHIFT			0x0
>> +#define PCIE_MISC_RC_BAR2_CONFIG_LO_SIZE_MASK			0x1f
>> +#define PCIE_MISC_RC_BAR2_CONFIG_LO_SIZE_SHIFT			0x0
>> +#define PCIE_MISC_RC_BAR3_CONFIG_LO_SIZE_MASK			0x1f
>> +#define PCIE_MISC_RC_BAR3_CONFIG_LO_SIZE_SHIFT			0x0
>> +#define PCIE_MISC_PCIE_CTRL_PCIE_L23_REQUEST_MASK		0x1
>> +#define PCIE_MISC_PCIE_CTRL_PCIE_L23_REQUEST_SHIFT		0x0
>> +#define PCIE_MISC_PCIE_STATUS_PCIE_PORT_MASK			0x80
>> +#define PCIE_MISC_PCIE_STATUS_PCIE_PORT_SHIFT			0x7
>> +#define PCIE_MISC_PCIE_STATUS_PCIE_DL_ACTIVE_MASK		0x20
>> +#define PCIE_MISC_PCIE_STATUS_PCIE_DL_ACTIVE_SHIFT		0x5
>> +#define PCIE_MISC_PCIE_STATUS_PCIE_PHYLINKUP_MASK		0x10
>> +#define PCIE_MISC_PCIE_STATUS_PCIE_PHYLINKUP_SHIFT		0x4
>> +#define PCIE_MISC_PCIE_STATUS_PCIE_LINK_IN_L23_MASK		0x40
>> +#define PCIE_MISC_PCIE_STATUS_PCIE_LINK_IN_L23_SHIFT		0x6
>> +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_LIMIT_MASK	0xfff00000
>> +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_LIMIT_SHIFT	0x14
>> +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_BASE_MASK	0xfff0
>> +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_BASE_SHIFT	0x4
>> +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_NUM_MASK_BITS	0xc
>> +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_HI_BASE_MASK		0xff
>> +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_HI_BASE_SHIFT	0x0
>> +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LIMIT_HI_LIMIT_MASK	0xff
>> +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LIMIT_HI_LIMIT_SHIFT	0x0
>> +#define PCIE_MISC_HARD_PCIE_HARD_DEBUG_CLKREQ_DEBUG_ENABLE_MASK	0x2
>> +#define PCIE_MISC_HARD_PCIE_HARD_DEBUG_CLKREQ_DEBUG_ENABLE_SHIFT 0x1
>> +#define PCIE_MISC_HARD_PCIE_HARD_DEBUG_SERDES_IDDQ_MASK		0x08000000
>> +#define PCIE_MISC_HARD_PCIE_HARD_DEBUG_SERDES_IDDQ_SHIFT	0x1b
>> +#define PCIE_RGR1_SW_INIT_1_PERST_MASK				0x1
>> +#define PCIE_RGR1_SW_INIT_1_PERST_SHIFT				0x0
>> +
>> +#define BRCM_NUM_PCIE_OUT_WINS		0x4
>> +
>> +#define BURST_SIZE_128			0
>> +
>> +/* Offsets from PCIE_INTR2_CPU_BASE */
>> +#define STATUS                          0x0
>> +#define CLR				0x8
>> +#define MASK_SET			0x10
>> +#define MASK_CLR			0x14
>> +
>> +#define PCIE_BUSNUM_SHIFT		20
>> +#define PCIE_SLOT_SHIFT			15
>> +#define PCIE_FUNC_SHIFT			12
>> +
>> +#if defined(__BIG_ENDIAN)
>> +#define	DATA_ENDIAN			2	/* PCIe->DDR inbound traffic */
>> +#define MMIO_ENDIAN			2	/* CPU->PCIe outbound traffic */
>> +#else
>> +#define	DATA_ENDIAN			0
>> +#define MMIO_ENDIAN			0
>> +#endif
>> +
>> +#define MDIO_PORT0			0x0
>> +#define MDIO_DATA_MASK			0x7fffffff
>> +#define MDIO_DATA_SHIFT			0x0
>> +#define MDIO_PORT_MASK			0xf0000
>> +#define MDIO_PORT_SHIFT			0x16
>> +#define MDIO_REGAD_MASK			0xffff
>> +#define MDIO_REGAD_SHIFT		0x0
>> +#define MDIO_CMD_MASK			0xfff00000
>> +#define MDIO_CMD_SHIFT			0x14
>> +#define MDIO_CMD_READ			0x1
>> +#define MDIO_CMD_WRITE			0x0
>> +#define MDIO_DATA_DONE_MASK		0x80000000
>> +#define MDIO_RD_DONE(x)			(((x) & MDIO_DATA_DONE_MASK) ? 1 : 0)
>> +#define MDIO_WT_DONE(x)			(((x) & MDIO_DATA_DONE_MASK) ? 0 : 1)
>> +#define SSC_REGS_ADDR			0x1100
>> +#define SET_ADDR_OFFSET			0x1f
>> +#define SSC_CNTL_OFFSET			0x2
>> +#define SSC_CNTL_OVRD_EN_MASK		0x8000
>> +#define SSC_CNTL_OVRD_EN_SHIFT		0xf
>> +#define SSC_CNTL_OVRD_VAL_MASK		0x4000
>> +#define SSC_CNTL_OVRD_VAL_SHIFT		0xe
>> +#define SSC_STATUS_OFFSET		0x1
>> +#define SSC_STATUS_SSC_MASK		0x400
>> +#define SSC_STATUS_SSC_SHIFT		0xa
>> +#define SSC_STATUS_PLL_LOCK_MASK	0x800
>> +#define SSC_STATUS_PLL_LOCK_SHIFT	0xb
>> +
>> +#define BRCM_PCIE_IDX_ADDR(pcie)	\
>> +	((pcie)->reg_offsets[EXT_CFG_INDEX])
>> +#define BRCM_PCIE_DATA_ADDR(pcie)	\
>> +	((pcie)->reg_offsets[EXT_CFG_DATA])
>> +#define BRCM_PCIE_RGR1_SW_INIT_1(pcie) \
>> +	((pcie)->reg_offsets[RGR1_SW_INIT_1])
>> +
>> +enum {
>> +	RGR1_SW_INIT_1,
>> +	EXT_CFG_INDEX,
>> +	EXT_CFG_DATA,
>> +};
>> +
>> +enum {
>> +	RGR1_SW_INIT_1_INIT_MASK,
>> +	RGR1_SW_INIT_1_INIT_SHIFT,
>> +	RGR1_SW_INIT_1_PERST_MASK,
>> +	RGR1_SW_INIT_1_PERST_SHIFT,
>> +};
>> +
>> +enum pcie_type {
>> +	BCM2711,
>> +};
>> +
>> +struct brcm_window {
>> +	dma_addr_t pcie_addr;
>> +	phys_addr_t cpu_addr;
>> +	dma_addr_t size;
>> +};
>> +
>> +/* Internal PCIe Host Controller Information.*/
>> +struct brcm_pcie {
>> +	struct device		*dev;
>> +	void __iomem		*base;
>> +	struct clk		*clk;
>> +	struct pci_bus		*root_bus;
>> +	struct device_node	*np;
>> +	bool			ssc;
>> +	int			gen;
>> +	struct brcm_window	out_wins[BRCM_NUM_PCIE_OUT_WINS];
>> +	const int		*reg_offsets;
>> +	const int		*reg_field_info;
>> +	enum pcie_type		type;
>> +};
>> +
>> +struct pcie_cfg_data {
>> +	const int		*reg_field_info;
>> +	const int		*offsets;
>> +	const enum pcie_type	type;
>> +};
>> +
>> +static const int pcie_reg_field_info[] = {
>> +	[RGR1_SW_INIT_1_INIT_MASK] = 0x2,
>> +	[RGR1_SW_INIT_1_INIT_SHIFT] = 0x1,
>> +};
>> +
>> +static const int pcie_offset_bcm2711[] = {
>> +	[RGR1_SW_INIT_1] = 0x9210,
>> +	[EXT_CFG_INDEX]  = 0x9000,
>> +	[EXT_CFG_DATA]   = 0x8000,
>> +};
>> +
>> +static const struct pcie_cfg_data bcm2711_cfg = {
>> +	.reg_field_info	= pcie_reg_field_info,
>> +	.offsets	= pcie_offset_bcm2711,
>> +	.type		= BCM2711,
>> +};
>> +
>> +static void __iomem *brcm_pcie_map_conf(struct pci_bus *bus, unsigned int devfn,
>> +					int where);
>> +
>> +static struct pci_ops brcm_pcie_ops = {
>> +	.map_bus = brcm_pcie_map_conf,
>> +	.read = pci_generic_config_read,
>> +	.write = pci_generic_config_write,
>> +};
>> +
>> +#define bcm_readl(a)		readl(a)
>> +#define bcm_writel(d, a)	writel(d, a)
>> +#define bcm_readw(a)		readw(a)
>> +#define bcm_writew(d, a)	writew(d, a)
>> +
>> +/* These macros extract/insert fields to host controller's register set. */
>> +#define RD_FLD(base, reg, field) \
>> +	brcm_pcie_rd_fld((base) + reg, reg##_##field##_MASK, \
>> +			 reg##_##field##_SHIFT)
>> +#define WR_FLD(base, reg, field, val) \
>> +	brcm_pcie_wr_fld((base) + reg, reg##_##field##_MASK, \
>> +		    reg##_##field##_SHIFT, val)
>> +#define WR_FLD_RB(base, reg, field, val) \
>> +	brcm_pcie_wr_fld_rb((base) + reg, reg##_##field##_MASK, \
>> +		reg##_##field##_SHIFT, val)
>> +#define WR_FLD_WITH_OFFSET(base, off, reg, field, val) \
>> +	brcm_pcie_wr_fld((base) + reg + (off), reg##_##field##_MASK, \
>> +	       reg##_##field##_SHIFT, val)
>> +#define EXTRACT_FIELD(val, reg, field) \
>> +	(((val) & reg##_##field##_MASK) >> reg##_##field##_SHIFT)
>> +#define INSERT_FIELD(val, reg, field, field_val) \
>> +	(((val) & ~reg##_##field##_MASK) | \
>> +	 (reg##_##field##_MASK & (field_val << reg##_##field##_SHIFT)))
> 
> Can you use any of the existing macros in linux/bitfield.h
> (e.g. ...replace_bits...) ?
> 
>> +
>> +static u32 brcm_pcie_rd_fld(void __iomem *p, u32 mask, int shift)
>> +{
>> +	return (bcm_readl(p) & mask) >> shift;
>> +}
>> +
>> +static void brcm_pcie_wr_fld(void __iomem *p, u32 mask, int shift, u32 val)
>> +{
>> +	u32 reg = bcm_readl(p);
>> +
>> +	reg = (reg & ~mask) | ((val << shift) & mask);
>> +	bcm_writel(reg, p);
>> +}
>> +
>> +static void brcm_pcie_wr_fld_rb(void __iomem *p, u32 mask, int shift, u32 val)
>> +{
>> +	brcm_pcie_wr_fld(p, mask, shift, val);
>> +	(void)bcm_readl(p);
>> +}
>> +
>> +/*
>> + * This is to convert the size of the inbound "BAR" region to the
>> + * non-linear values of PCIE_X_MISC_RC_BAR[123]_CONFIG_LO.SIZE
>> + */
>> +int brcm_pcie_encode_ibar_size(u64 size)
>> +{
>> +	int log2_in = ilog2(size);
>> +
>> +	if (log2_in >= 12 && log2_in <= 15)
>> +		/* Covers 4KB to 32KB (inclusive) */
>> +		return (log2_in - 12) + 0x1c;
>> +	else if (log2_in >= 16 && log2_in <= 35)
>> +		/* Covers 64KB to 32GB, (inclusive) */
>> +		return log2_in - 15;
>> +	/* Something is awry so disable */
>> +	return 0;
>> +}
>> +
>> +static u32 brcm_pcie_mdio_form_pkt(int port, int regad, int cmd)
>> +{
>> +	u32 pkt = 0;
>> +
>> +	pkt |= (port << MDIO_PORT_SHIFT) & MDIO_PORT_MASK;
>> +	pkt |= (regad << MDIO_REGAD_SHIFT) & MDIO_REGAD_MASK;
>> +	pkt |= (cmd << MDIO_CMD_SHIFT) & MDIO_CMD_MASK;
>> +
>> +	return pkt;
>> +}
>> +
>> +/* negative return value indicates error */
>> +static int brcm_pcie_mdio_read(void __iomem *base, u8 port, u8 regad)
>> +{
>> +	int tries;
>> +	u32 data;
>> +
>> +	bcm_writel(brcm_pcie_mdio_form_pkt(port, regad, MDIO_CMD_READ),
>> +		   base + PCIE_RC_DL_MDIO_ADDR);
>> +	bcm_readl(base + PCIE_RC_DL_MDIO_ADDR);
>> +
>> +	data = bcm_readl(base + PCIE_RC_DL_MDIO_RD_DATA);
>> +	for (tries = 0; !MDIO_RD_DONE(data) && tries < 10; tries++) {
>> +		udelay(10);
>> +		data = bcm_readl(base + PCIE_RC_DL_MDIO_RD_DATA);
>> +	}
>> +
>> +	return MDIO_RD_DONE(data)
>> +		? (data & MDIO_DATA_MASK) >> MDIO_DATA_SHIFT
>> +		: -EIO;
>> +}
>> +
>> +/* negative return value indicates error */
>> +static int brcm_pcie_mdio_write(void __iomem *base, u8 port,
>> +				u8 regad, u16 wrdata)
>> +{
>> +	int tries;
>> +	u32 data;
>> +
>> +	bcm_writel(brcm_pcie_mdio_form_pkt(port, regad, MDIO_CMD_WRITE),
>> +		   base + PCIE_RC_DL_MDIO_ADDR);
>> +	bcm_readl(base + PCIE_RC_DL_MDIO_ADDR);
>> +	bcm_writel(MDIO_DATA_DONE_MASK | wrdata,
>> +		   base + PCIE_RC_DL_MDIO_WR_DATA);
>> +
>> +	data = bcm_readl(base + PCIE_RC_DL_MDIO_WR_DATA);
>> +	for (tries = 0; !MDIO_WT_DONE(data) && tries < 10; tries++) {
>> +		udelay(10);
>> +		data = bcm_readl(base + PCIE_RC_DL_MDIO_WR_DATA);
>> +	}
>> +
>> +	return MDIO_WT_DONE(data) ? 0 : -EIO;
>> +}
>> +
>> +/*
>> + * Configures device for Spread Spectrum Clocking (SSC) mode; a negative
>> + * return value indicates error.
>> + */
>> +static int brcm_pcie_set_ssc(void __iomem *base)
>> +{
>> +	int pll, ssc;
>> +	u16 wrdata;
>> +	int tmp;
>> +
>> +	tmp = brcm_pcie_mdio_write(base, MDIO_PORT0, SET_ADDR_OFFSET,
>> +				   SSC_REGS_ADDR);
>> +	if (tmp < 0)
>> +		return tmp;
>> +
>> +	tmp = brcm_pcie_mdio_read(base, MDIO_PORT0, SSC_CNTL_OFFSET);
>> +	if (tmp < 0)
>> +		return tmp;
>> +
>> +	wrdata = INSERT_FIELD(tmp, SSC_CNTL_OVRD, EN, 1);
>> +	wrdata = INSERT_FIELD(wrdata, SSC_CNTL_OVRD, VAL, 1);
>> +	tmp = brcm_pcie_mdio_write(base, MDIO_PORT0, SSC_CNTL_OFFSET, wrdata);
>> +	if (tmp < 0)
>> +		return tmp;
>> +
>> +	usleep_range(1000, 2000);
>> +	tmp = brcm_pcie_mdio_read(base, MDIO_PORT0, SSC_STATUS_OFFSET);
>> +	if (tmp < 0)
>> +		return tmp;
>> +
>> +	ssc = EXTRACT_FIELD(tmp, SSC_STATUS, SSC);
>> +	pll = EXTRACT_FIELD(tmp, SSC_STATUS, PLL_LOCK);
>> +
>> +	return (ssc && pll) ? 0 : -EIO;
>> +}
>> +
>> +/* Limits operation to a specific generation (1, 2, or 3) */
>> +static void brcm_pcie_set_gen(void __iomem *base, int gen)
>> +{
>> +	u32 lnkcap = bcm_readl(base + BRCM_PCIE_CAP_REGS + PCI_EXP_LNKCAP);
>> +	u16 lnkctl2 = bcm_readw(base + BRCM_PCIE_CAP_REGS + PCI_EXP_LNKCTL2);
>> +
>> +	lnkcap = (lnkcap & ~PCI_EXP_LNKCAP_SLS) | gen;
>> +	bcm_writel(lnkcap, base + BRCM_PCIE_CAP_REGS + PCI_EXP_LNKCAP);
>> +
>> +	lnkctl2 = (lnkctl2 & ~0xf) | gen;
>> +	bcm_writew(lnkctl2, base + BRCM_PCIE_CAP_REGS + PCI_EXP_LNKCTL2);
>> +}
>> +
>> +static void brcm_pcie_set_outbound_win(struct brcm_pcie *pcie,
>> +				       unsigned int win, phys_addr_t cpu_addr,
>> +				       dma_addr_t  pcie_addr, dma_addr_t size)
>> +{
>> +	phys_addr_t cpu_addr_mb, limit_addr_mb;
>> +	void __iomem *base = pcie->base;
>> +	u32 tmp;
>> +
>> +	/* Set the base of the pcie_addr window */
>> +	bcm_writel(lower_32_bits(pcie_addr) + MMIO_ENDIAN,
>> +		   base + PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO + (win * 8));
>> +	bcm_writel(upper_32_bits(pcie_addr),
>> +		   base + PCIE_MISC_CPU_2_PCIE_MEM_WIN0_HI + (win * 8));
>> +
>> +	cpu_addr_mb = cpu_addr >> 20;
>> +	limit_addr_mb = (cpu_addr + size - 1) >> 20;
>> +
>> +	/* Write the addr base low register */
>> +	WR_FLD_WITH_OFFSET(base, (win * 4),
>> +			   PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT,
>> +			   BASE, cpu_addr_mb);
>> +	/* Write the addr limit low register */
>> +	WR_FLD_WITH_OFFSET(base, (win * 4),
>> +			   PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT,
>> +			   LIMIT, limit_addr_mb);
>> +
>> +	/* Write the cpu addr high register */
>> +	tmp = (u32)(cpu_addr_mb >>
>> +		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_NUM_MASK_BITS);
> 
> Despite the name _MASK_BITS, this isn't being used as a mask. Is this making
> some assumption about the value of cpu_addr from the DT?
> 
> Ideally we'd just use the value from the DT as we do for the low register.
> 
>> +	WR_FLD_WITH_OFFSET(base, (win * 8),
>> +			   PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_HI,
>> +			   BASE, tmp);
>> +	/* Write the cpu limit high register */
>> +	tmp = (u32)(limit_addr_mb >>
>> +		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_NUM_MASK_BITS);
>> +	WR_FLD_WITH_OFFSET(base, (win * 8),
>> +			   PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LIMIT_HI,
>> +			   LIMIT, tmp);
>> +}
>> +
>> +/* Configuration space read/write support */
>> +static int brcm_pcie_cfg_index(int busnr, int devfn, int reg)
>> +{
>> +	return ((PCI_SLOT(devfn) & 0x1f) << PCIE_SLOT_SHIFT)
>> +		| ((PCI_FUNC(devfn) & 0x07) << PCIE_FUNC_SHIFT)
>> +		| (busnr << PCIE_BUSNUM_SHIFT)
>> +		| (reg & ~3);
>> +}
>> +
>> +/* The controller is capable of serving in both RC and EP roles */
>> +static bool brcm_pcie_rc_mode(struct brcm_pcie *pcie)
>> +{
>> +	void __iomem *base = pcie->base;
>> +	u32 val = bcm_readl(base + PCIE_MISC_PCIE_STATUS);
>> +
>> +	return !!EXTRACT_FIELD(val, PCIE_MISC_PCIE_STATUS, PCIE_PORT);
>> +}
>> +
>> +static bool brcm_pcie_link_up(struct brcm_pcie *pcie)
>> +{
>> +	void __iomem *base = pcie->base;
>> +	u32 val = bcm_readl(base + PCIE_MISC_PCIE_STATUS);
>> +	u32 dla = EXTRACT_FIELD(val, PCIE_MISC_PCIE_STATUS, PCIE_DL_ACTIVE);
>> +	u32 plu = EXTRACT_FIELD(val, PCIE_MISC_PCIE_STATUS, PCIE_PHYLINKUP);
>> +
>> +	return  (dla && plu) ? true : false;
>> +}
>> +
>> +static void __iomem *brcm_pcie_map_conf(struct pci_bus *bus, unsigned int devfn,
>> +					int where)
>> +{
>> +	struct brcm_pcie *pcie = bus->sysdata;
>> +	void __iomem *base = pcie->base;
>> +	int idx;
>> +
>> +	/* Accesses to the RC go right to the RC registers if slot==0 */
>> +	if (pci_is_root_bus(bus))
>> +		return PCI_SLOT(devfn) ? NULL : base + where;
>> +
>> +	/* For devices, write to the config space index register */
>> +	idx = brcm_pcie_cfg_index(bus->number, devfn, 0);
>> +	bcm_writel(idx, pcie->base + BRCM_PCIE_IDX_ADDR(pcie));
>> +	return base + BRCM_PCIE_DATA_ADDR(pcie) + where;
>> +}
>> +
>> +static inline void brcm_pcie_bridge_sw_init_set(struct brcm_pcie *pcie,
>> +						unsigned int val)
>> +{
>> +	unsigned int shift = pcie->reg_field_info[RGR1_SW_INIT_1_INIT_SHIFT];
>> +	u32 mask =  pcie->reg_field_info[RGR1_SW_INIT_1_INIT_MASK];
>> +
>> +	brcm_pcie_wr_fld_rb(pcie->base + BRCM_PCIE_RGR1_SW_INIT_1(pcie),
>> +		       mask, shift, val);
>> +}
>> +
>> +static inline void brcm_pcie_perst_set(struct brcm_pcie *pcie,
>> +				       unsigned int val)
>> +{
>> +	brcm_pcie_wr_fld_rb(pcie->base + BRCM_PCIE_RGR1_SW_INIT_1(pcie),
>> +		  PCIE_RGR1_SW_INIT_1_PERST_MASK,
>> +		  PCIE_RGR1_SW_INIT_1_PERST_SHIFT, val);
>> +}
>> +
>> +static inline int brcm_pcie_get_rc_bar2_size_and_offset(struct brcm_pcie *pcie,
>> +							u64 *rc_bar2_size,
>> +							u64 *rc_bar2_offset)
>> +{
>> +	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
>> +	struct device *dev = pcie->dev;
>> +	struct resource_entry *entry;
>> +	u64 total_mem_size = 0;
>> +
>> +	*rc_bar2_offset = -1;
>> +
>> +	resource_list_for_each_entry(entry, &bridge->dma_ranges) {
>> +		/*
>> +		 * We're promised the RC will provide a contiguous view of
>> +		 * memory to downstream devices. We can then infer the
>> +		 * rc_bar2_offset from the lower available dma-range offset.
>> +		 */
>> +		if (entry->offset < *rc_bar2_offset)
>> +			*rc_bar2_offset = entry->offset;
>> +
>> +		total_mem_size += entry->res->end - entry->res->start + 1;
> 
> This requires that if there are multiple dma-ranges, then there are no gaps
> between them right?
> 
>> +	}
>> +
>> +	*rc_bar2_size = roundup_pow_of_two64(total_mem_size);
>> +
>> +	/*
>> +	 * Validate the results:
>> +	 *
>> +	 * The PCIe host controller by design must set the inbound viewport to
>> +	 * be a contiguous arrangement of all of the system's memory.  In
>> +	 * addition, its size mut be a power of two.  To further complicate
>> +	 * matters, the viewport must start on a pcie-address that is aligned
>> +	 * on a multiple of its size.  If a portion of the viewport does not
>> +	 * represent system memory -- e.g. 3GB of memory requires a 4GB
>> +	 * viewport -- we can map the outbound memory in or after 3GB and even
>> +	 * though the viewport will overlap the outbound memory the controller
>> +	 * will know to send outbound memory downstream and everything else
>> +	 * upstream.
>> +	 *
>> +	 * For example:
>> +	 *
>> +	 * - The best-case scenario, memory up to 3GB, is to place the inbound
>> +	 *   region in the first 4GB of pcie-space, as some legacy devices can
>> +	 *   only address 32bits. We would also like to put the MSI under 4GB
>> +	 *   as well, since some devices require a 32bit MSI target address.
>> +	 *
>> +	 * - If the system memory is 4GB or larger we cannot start the inbound
>> +	 *   region at location 0 (since we have to allow some space for
>> +	 *   outbound memory @ 3GB). So instead it will  start at the 1x
>> +	 *   multiple of its size
>> +	 */
>> +	if (!*rc_bar2_size || *rc_bar2_offset % *rc_bar2_size ||
>> +	    (*rc_bar2_offset < SZ_4G && *rc_bar2_offset > SZ_2G)) {
>> +		dev_err(dev, "Invalid rc_bar2_offset/size: size 0x%llx, off 0x%llx\n",
>> +			*rc_bar2_size, *rc_bar2_offset);
>> +		return -EINVAL;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static int brcm_pcie_setup(struct brcm_pcie *pcie)
>> +{
>> +	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
>> +	u64 rc_bar2_offset, rc_bar2_size;
>> +	void __iomem *base = pcie->base;
>> +	struct device *dev = pcie->dev;
>> +	struct resource_entry *entry;
>> +	unsigned int scb_size_val;
>> +	bool ssc_good = false;
>> +	struct resource *res;
>> +	int num_out_wins = 0;
>> +	u16 nlw, cls, lnksta;
>> +	int i, ret;
>> +	u32 tmp;
>> +
>> +	/* Reset the bridge */
>> +	brcm_pcie_bridge_sw_init_set(pcie, 1);
>> +
>> +	usleep_range(100, 200);
>> +
>> +	/* Take the bridge out of reset */
>> +	brcm_pcie_bridge_sw_init_set(pcie, 0);
>> +
>> +	WR_FLD_RB(base, PCIE_MISC_HARD_PCIE_HARD_DEBUG, SERDES_IDDQ, 0);
>> +	/* Wait for SerDes to be stable */
>> +	usleep_range(100, 200);
>> +
>> +	/* Set SCB_MAX_BURST_SIZE, CFG_READ_UR_MODE, SCB_ACCESS_EN */
>> +	tmp = INSERT_FIELD(0, PCIE_MISC_MISC_CTRL, SCB_ACCESS_EN, 1);
>> +	tmp = INSERT_FIELD(tmp, PCIE_MISC_MISC_CTRL, CFG_READ_UR_MODE, 1);
>> +	tmp = INSERT_FIELD(tmp, PCIE_MISC_MISC_CTRL, MAX_BURST_SIZE,
>> +			   BURST_SIZE_128);
>> +	bcm_writel(tmp, base + PCIE_MISC_MISC_CTRL);
>> +
>> +	ret = brcm_pcie_get_rc_bar2_size_and_offset(pcie, &rc_bar2_size,
>> +						    &rc_bar2_offset);
>> +	if (ret)
>> +		return ret;
>> +
>> +	tmp = lower_32_bits(rc_bar2_offset);
>> +	tmp = INSERT_FIELD(tmp, PCIE_MISC_RC_BAR2_CONFIG_LO, SIZE,
>> +			   brcm_pcie_encode_ibar_size(rc_bar2_size));
>> +	bcm_writel(tmp, base + PCIE_MISC_RC_BAR2_CONFIG_LO);
>> +	bcm_writel(upper_32_bits(rc_bar2_offset),
>> +		   base + PCIE_MISC_RC_BAR2_CONFIG_HI);
>> +
>> +	scb_size_val = rc_bar2_size ?
>> +		       ilog2(rc_bar2_size) - 15 : 0xf; /* 0xf is 1GB */
>> +	WR_FLD(base, PCIE_MISC_MISC_CTRL, SCB0_SIZE, scb_size_val);
>> +
>> +	/* disable the PCIe->GISB memory window (RC_BAR1) */
>> +	WR_FLD(base, PCIE_MISC_RC_BAR1_CONFIG_LO, SIZE, 0);
>> +
>> +	/* disable the PCIe->SCB memory window (RC_BAR3) */
>> +	WR_FLD(base, PCIE_MISC_RC_BAR3_CONFIG_LO, SIZE, 0);
>> +
>> +	/* clear any interrupts we find on boot */
>> +	bcm_writel(0xffffffff, base + PCIE_INTR2_CPU_BASE + CLR);
>> +	(void)bcm_readl(base + PCIE_INTR2_CPU_BASE + CLR);
>> +
>> +	/* Mask all interrupts since we are not handling any yet */
>> +	bcm_writel(0xffffffff, base + PCIE_INTR2_CPU_BASE + MASK_SET);
>> +	(void)bcm_readl(base + PCIE_INTR2_CPU_BASE + MASK_SET);
> 
> Should you change the order and mask before clearing the interrupts?
> 
>> +
>> +	if (pcie->gen)
>> +		brcm_pcie_set_gen(base, pcie->gen);
>> +
>> +	/* Unassert the fundamental reset */
>> +	brcm_pcie_perst_set(pcie, 0);
>> +
>> +	/*
>> +	 * Give the RC/EP time to wake up, before trying to configure RC.
>> +	 * Intermittently check status for link-up, up to a total of 100ms.
>> +	 */
>> +	for (i = 0; i < 100 && !brcm_pcie_link_up(pcie); i += 5)
>> +		msleep(5);
>> +
>> +	if (!brcm_pcie_link_up(pcie)) {
>> +		dev_info(dev, "link down\n");
>> +		return -ENODEV;
>> +	}
>> +
>> +	if (!brcm_pcie_rc_mode(pcie)) {
>> +		dev_err(dev, "PCIe misconfigured; is in EP mode\n");
>> +		return -EINVAL;
>> +	}
>> +
>> +	resource_list_for_each_entry(entry, &bridge->windows) {
>> +		res = entry->res;
>> +
>> +		if (resource_type(res) != IORESOURCE_MEM)
>> +			continue;
>> +
>> +		if (num_out_wins >= BRCM_NUM_PCIE_OUT_WINS) {
>> +			dev_err(pcie->dev, "too many outbound wins\n");
>> +			return -EINVAL;
>> +		}
>> +
>> +		brcm_pcie_set_outbound_win(pcie, num_out_wins, res->start,
>> +					   res->start - entry->offset,
>> +					   res->end - res->start + 1);
>> +		num_out_wins++;
>> +	}
>> +
>> +	/*
>> +	 * For config space accesses on the RC, show the right class for
>> +	 * a PCIe-PCIe bridge (the default setting is to be EP mode).
>> +	 */
>> +	WR_FLD_RB(base, PCIE_RC_CFG_PRIV1_ID_VAL3, CLASS_CODE, 0x060400);
> 
> Why does this need to be _RB ? I haven't looked at all of the uses of _RB
> though I think there are others that may not be necessary.
> 
>> +
>> +	if (pcie->ssc) {
>> +		ret = brcm_pcie_set_ssc(base);
>> +		if (ret == 0)
>> +			ssc_good = true;
>> +		else
>> +			dev_err(dev, "failed attempt to enter ssc mode\n");
>> +	}
>> +
>> +	lnksta = bcm_readw(base + BRCM_PCIE_CAP_REGS + PCI_EXP_LNKSTA);
>> +	cls = lnksta & PCI_EXP_LNKSTA_CLS;
>> +	nlw = (lnksta & PCI_EXP_LNKSTA_NLW) >> PCI_EXP_LNKSTA_NLW_SHIFT;
>> +	dev_info(dev, "link up, %s x%u %s\n",
>> +		 PCIE_SPEED2STR(cls + PCI_SPEED_133MHz_PCIX_533),
>> +		 nlw, ssc_good ? "(SSC)" : "(!SSC)");
>> +
>> +	/* PCIe->SCB endian mode for BAR */
>> +	/* field ENDIAN_MODE_BAR2 = DATA_ENDIAN */
>> +	WR_FLD_RB(base, PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1,
>> +		  ENDIAN_MODE_BAR2, DATA_ENDIAN);
>> +
>> +	/*
>> +	 * Refclk from RC should be gated with CLKREQ# input when ASPM L0s,L1
>> +	 * is enabled =>  setting the CLKREQ_DEBUG_ENABLE field to 1.
>> +	 */
>> +	WR_FLD_RB(base, PCIE_MISC_HARD_PCIE_HARD_DEBUG, CLKREQ_DEBUG_ENABLE, 1);
>> +
>> +	return 0;
>> +}
>> +
>> +/* L23 is a low-power PCIe link state */
>> +static void brcm_pcie_enter_l23(struct brcm_pcie *pcie)
>> +{
>> +	void __iomem *base = pcie->base;
>> +	int l23, i;
>> +
>> +	/* assert request for L23 */
>> +	WR_FLD_RB(base, PCIE_MISC_PCIE_CTRL, PCIE_L23_REQUEST, 1);
> 
> Also not sure about the _RB here, given you have a read straight after.
> 
>> +
>> +	/* Wait up to 36 msec for L23 */
>> +	l23 = RD_FLD(base, PCIE_MISC_PCIE_STATUS, PCIE_LINK_IN_L23);
>> +	for (i = 0; i < 15 && !l23; i++) {
>> +		usleep_range(2000, 2400);
>> +		l23 = RD_FLD(base, PCIE_MISC_PCIE_STATUS, PCIE_LINK_IN_L23);
>> +	}
>> +
>> +	if (!l23)
>> +		dev_err(pcie->dev, "failed to enter low-power link state\n");
>> +}
>> +
>> +static void brcm_pcie_turn_off(struct brcm_pcie *pcie)
>> +{
>> +	void __iomem *base = pcie->base;
>> +
>> +	if (brcm_pcie_link_up(pcie))
>> +		brcm_pcie_enter_l23(pcie);
>> +	/* Assert fundamental reset */
>> +	brcm_pcie_perst_set(pcie, 1);
>> +	/* Deassert request for L23 in case it was asserted */
>> +	WR_FLD_RB(base, PCIE_MISC_PCIE_CTRL, PCIE_L23_REQUEST, 0);
>> +	/* Turn off SerDes */
>> +	WR_FLD_RB(base, PCIE_MISC_HARD_PCIE_HARD_DEBUG, SERDES_IDDQ, 1);
>> +	/* Shutdown PCIe bridge */
> 
> What is the purpose of the _RB's here?
> 
>> +	brcm_pcie_bridge_sw_init_set(pcie, 1);
>> +}
>> +
>> +static void __brcm_pcie_remove(struct brcm_pcie *pcie)
>> +{
>> +	brcm_pcie_turn_off(pcie);
>> +	clk_disable_unprepare(pcie->clk);
>> +	clk_put(pcie->clk);
>> +}
>> +
>> +static int brcm_pcie_remove(struct platform_device *pdev)
>> +{
>> +	struct brcm_pcie *pcie = platform_get_drvdata(pdev);
>> +
>> +	pci_stop_root_bus(pcie->root_bus);
>> +	pci_remove_root_bus(pcie->root_bus);
>> +	__brcm_pcie_remove(pcie);
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct of_device_id brcm_pcie_match[] = {
>> +	{ .compatible = "brcm,bcm2711-pcie", .data = &bcm2711_cfg },
> 
> I'd rather see use of the pcie_cfg_data structure removed from this series.
> 
> I've seen the comments in the previous thread [1], and I understand that
> the intention is that this driver will eventually be used for other SOCs.
> 
> However this indirection isn't needed *now* and it makes reviewing this
> patch more difficult. If and when a later series is made to cover other
> SOCs - then I'd expect that series to find a way to apply this indirection.
> 
> And if that later series is more difficult to review because of the newly
> added indirection, then I'd expect an early patch of that series to apply
> the indirection in a single patch - which would be easy to review.
> 
> The other risk of such premature changes like this is that when you come
> to adding other SOCs, you may then discover that there were shortcomings
> in the way you've approached it here.
> 
>> +	{},
>> +};
>> +MODULE_DEVICE_TABLE(of, brcm_pcie_match);
>> +
>> +static int brcm_pcie_probe(struct platform_device *pdev)
>> +{
>> +	struct device_node *np = pdev->dev.of_node;
>> +	const struct pcie_cfg_data *data;
>> +	struct pci_host_bridge *bridge;
>> +	struct brcm_pcie *pcie;
>> +	struct pci_bus *child;
>> +	struct resource *res;
>> +	int ret;
>> +
>> +	bridge = devm_pci_alloc_host_bridge(&pdev->dev, sizeof(*pcie));
>> +	if (!bridge)
>> +		return -ENOMEM;
>> +
>> +	pcie = pci_host_bridge_priv(bridge);
> 
> Nit: I'd suggest moving the above line so it sits just above the
> "pcie->reg_offsets = data->offsets;" line. It looks nicer.
> 
>> +
>> +	data = of_device_get_match_data(&pdev->dev);
>> +	if (!data) {
>> +		dev_err(&pdev->dev, "failed to look up compatible string\n");
> 
> Nit: If there is a failure here, it's probably because there is no data
> defined in the brcm_pcie_match structure - seeing as we wouldn't get here
> if we didn't have a compatible string. I'd suggest rewording the err slightly
> or even removing it.
> 
>> +		return -EINVAL;
>> +	}
>> +
>> +	pcie->reg_offsets = data->offsets;
>> +	pcie->reg_field_info = data->reg_field_info;
>> +	pcie->type = data->type;
>> +	pcie->np = np;
>> +	pcie->dev = &pdev->dev;
>> +
>> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>> +	pcie->base = devm_ioremap_resource(&pdev->dev, res);
>> +	if (IS_ERR(pcie->base))
>> +		return PTR_ERR(pcie->base);
>> +
>> +	pcie->clk = devm_clk_get_optional(&pdev->dev, "sw_pcie");
>> +	if (IS_ERR(pcie->clk))
>> +		return PTR_ERR(pcie->clk);
>> +
>> +	ret = of_pci_get_max_link_speed(np);
>> +	pcie->gen = (ret < 0) ? 0 : ret;
>> +
>> +	pcie->ssc = of_property_read_bool(np, "brcm,enable-ssc");
>> +
>> +	ret = pci_parse_request_of_pci_ranges(pcie->dev, &bridge->windows,
>> +					      &bridge->dma_ranges, NULL);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = clk_prepare_enable(pcie->clk);
>> +	if (ret) {
>> +		dev_err(&pdev->dev, "could not enable clock\n");
>> +		return ret;
>> +	}
>> +
>> +	ret = brcm_pcie_setup(pcie);
>> +	if (ret)
>> +		goto fail;
>> +
>> +	bridge->dev.parent = &pdev->dev;
>> +	bridge->busnr = 0;
>> +	bridge->ops = &brcm_pcie_ops;
>> +	bridge->sysdata = pcie;
>> +	bridge->map_irq = of_irq_parse_and_map_pci;
>> +	bridge->swizzle_irq = pci_common_swizzle;
>> +
>> +	ret = pci_scan_root_bus_bridge(bridge);
>> +	if (ret < 0) {
>> +		dev_err(pcie->dev, "Scanning root bridge failed\n");
>> +		goto fail;
>> +	}
>> +
>> +	pci_assign_unassigned_bus_resources(bridge->bus);
>> +	list_for_each_entry(child, &bridge->bus->children, node)
>> +		pcie_bus_configure_settings(child);
>> +	pci_bus_add_devices(bridge->bus);
>> +	platform_set_drvdata(pdev, pcie);
>> +	pcie->root_bus = bridge->bus;
>> +
>> +	return 0;
>> +fail:
>> +	__brcm_pcie_remove(pcie);
>> +	return ret;
>> +}
>> +
>> +static struct platform_driver brcm_pcie_driver = {
>> +	.probe = brcm_pcie_probe,
>> +	.remove = brcm_pcie_remove,
>> +	.driver = {
>> +		.name = "brcm-pcie",
>> +		.of_match_table = brcm_pcie_match,
>> +	},
>> +};
>> +
>> +module_platform_driver(brcm_pcie_driver);
>> +
>> +MODULE_LICENSE("GPL v2");
> 
> This is different to the SPDX at the start of the file (please see
> earlier review comments).
> 
> Thanks,
> 
> Andrew Murray
> 
> [1] https://patchwork.ozlabs.org/patch/1190710/#2301173
> 
>> +MODULE_DESCRIPTION("Broadcom STB PCIe RC driver");
>> +MODULE_AUTHOR("Broadcom");
>> -- 
>> 2.24.0
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
