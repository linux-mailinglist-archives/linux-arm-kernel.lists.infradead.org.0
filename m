Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41981F35BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 18:30:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4Lqx6dXJBlmkZLS1uXDQfbaTj4zIjUzw2HgT/uNY7x8=; b=eyYhG9GF7oTpfbJ+uHJHYqYMi
	r/ql4dpugF3Io42bRMyjI2Tqp0tQuTQueGM2QXc6kTUbklPnSuXfETmH9xm6b137/wfpwIWDIRAUq
	D1UBvO0wBPPPY6lrVmrAlgbooIsY6kFImfY5rec5Ogsot5B+Chm84b+rmDDgM/KoFyU9m+pAKxeRn
	X3IcwtOZldXIwg3qwuz3SPoE+uGj53WCN5p9p6IGSApVk0Ydk2anzdIuD5cwC75ESClYEEDRsUcIm
	GkDuW3dUr/VL2WK2EW48t0D33zIU4+kqA7IBJJAtKmCSCQfTL6qFgWKwPryLktjXmyvfSOPSnxM4H
	kmc3c/Zzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSlcH-0006zN-Hv; Thu, 07 Nov 2019 17:30:41 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSlc6-0006yP-Dg; Thu, 07 Nov 2019 17:30:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2F5F0B182;
 Thu,  7 Nov 2019 17:30:28 +0000 (UTC)
Message-ID: <9e9ecc0d89728f98f1a5db6a6076517f4b9c7a79.camel@suse.de>
Subject: Re: [PATCH 3/4] PCI: brcmstb: add Broadcom STB PCIe host controller
 driver
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Andrew Murray <andrew.murray@arm.com>
Date: Thu, 07 Nov 2019 18:30:25 +0100
In-Reply-To: <20191107150033.GY9723@e119886-lin.cambridge.arm.com>
References: <20191106214527.18736-1-nsaenzjulienne@suse.de>
 <20191106214527.18736-4-nsaenzjulienne@suse.de>
 <20191107150033.GY9723@e119886-lin.cambridge.arm.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_093030_908439_2F3C346D 
X-CRM114-Status: GOOD (  36.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-pci@vger.kernel.org, phil@raspberrypi.org, linux-kernel@vger.kernel.org,
 mbrugger@suse.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 Bjorn Helgaas <bhelgaas@google.com>, Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: multipart/mixed; boundary="===============7937437324867107958=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7937437324867107958==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-KVAGBPzyH74bWmVlL5Yb"


--=-KVAGBPzyH74bWmVlL5Yb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrew,
thanks for taking the time to review this.

On Thu, 2019-11-07 at 15:00 +0000, Andrew Murray wrote:
> Thanks for the patch, some initial feedback below, though I will give it =
a
> more detailed review on your respin.
>=20
> On Wed, Nov 06, 2019 at 10:45:25PM +0100, Nicolas Saenz Julienne wrote:
> > From: Jim Quinlan <james.quinlan@broadcom.com>
> >=20
> > This commit adds the basic Broadcom STB PCIe controller.  Missing is th=
e
> > ability to process MSI. This functionality is added in a subsequent
> > commit.
> >=20
> > The PCIe block contains an MDIO interface.  This is a local interface
> > only accessible by the PCIe controller.  It cannot be used or shared
> > by any other HW.  As such, the small amount of code for this
> > controller is included in this driver as there is little upside to put
> > it elsewhere.
> >=20
> > This is based on Jim's original submission[1] but adapted and tailored
> > specifically to bcm2711's needs (that's the Raspberry Pi 4). Support fo=
r
> > the rest of the brcmstb family will soon follow once we get support for
> > multiple dma-ranges in dma/direct.
>=20
> This commit message is very informative and helpful, though I feel a lot
> of this isn't relevant for a commit message (especially as much of it is
> time based comments). Instead it would be better to simply describe what
> the patch does provide, and any additional helpful notes can be provided
> under the '---' after the signed off (which won't make it into git).

Ok noted

> > [1] https://patchwork.kernel.org/patch/10605959/
> >=20
> > Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> > Co-developed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > ---
> >  drivers/pci/controller/Kconfig        |  12 +
> >  drivers/pci/controller/Makefile       |   1 +
> >  drivers/pci/controller/pcie-brcmstb.c | 973 ++++++++++++++++++++++++++
> >  3 files changed, 986 insertions(+)
> >  create mode 100644 drivers/pci/controller/pcie-brcmstb.c
> >=20
> > diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kc=
onfig
> > index f5de9119e8d3..8b3aae91d8af 100644
> > --- a/drivers/pci/controller/Kconfig
> > +++ b/drivers/pci/controller/Kconfig
> > @@ -281,6 +281,18 @@ config VMD
> >  	  To compile this driver as a module, choose M here: the
> >  	  module will be called vmd.
> > =20
> > +config PCIE_BRCMSTB
> > +	bool "Broadcom Brcmstb PCIe host controller"
> > +	depends on ARCH_BRCMSTB || BMIPS_GENERIC
>=20
> I can't see what ARCH_BRCMSTB adds here. Given this also depends
> on SOC_BRCMSTB. Are all of these depends really necessary?

You're right, too many unnecessary depends. I missed this. For now only
ARCH_BCM2835 will do. I'll clean it up.

> Also should the bool be "Broadcom STB PCIe host contoller" ?

I'd rather keep the STB mention as it's the overall platform this is aimed =
for
(and it's on the driver name), but for the sake of clarity I'll update it t=
o
something the likes of: "Bradcom STB & Raspberry Pi 4 PCIe host
controller"

> > +	depends on OF
> > +	depends on SOC_BRCMSTB
> > +	default ARCH_BRCMSTB || BMIPS_GENERIC
>=20
> Please also include COMPILE_TEST in here (look at the other controllers
> in the file). This helps improve testing coverage by compiling all driver=
s
> even if they can't be run.

OK

> > +	help
> > +	  Say Y here to enable PCIe host controller support for
> > +	  Broadcom Settop Box SOCs.  A Broadcom SOC will may have
>=20
> s/Settop/Set top/ or s/Settop/STB/?

Let's default to STB. I'll look around for more offenders.

> > +	  multiple host controllers as opposed to a single host
> > +	  controller with multiple ports.
>=20
> I'm sure many other SOCs may have multiple controllers instead of one
> with multiple ports. I'm not sure what value this adds here. It's
> always better to describe enough information so the user can determine
> if this option will enable something they want on their hardware.

Agree, I'll remove that sentence.

> > +
> >  config PCI_HYPERV_INTERFACE
> >  	tristate "Hyper-V PCI Interface"
> >  	depends on X86 && HYPERV && PCI_MSI && PCI_MSI_IRQ_DOMAIN && X86_64
> > diff --git a/drivers/pci/controller/Makefile
> > b/drivers/pci/controller/Makefile
> > index a2a22c9d91af..3fc0b0cf5b5b 100644
> > --- a/drivers/pci/controller/Makefile
> > +++ b/drivers/pci/controller/Makefile
> > @@ -30,6 +30,7 @@ obj-$(CONFIG_PCIE_MEDIATEK) +=3D pcie-mediatek.o
> >  obj-$(CONFIG_PCIE_MOBIVEIL) +=3D pcie-mobiveil.o
> >  obj-$(CONFIG_PCIE_TANGO_SMP8759) +=3D pcie-tango.o
> >  obj-$(CONFIG_VMD) +=3D vmd.o
> > +obj-$(CONFIG_PCIE_BRCMSTB) +=3D pcie-brcmstb.o
> >  # pcie-hisi.o quirks are needed even without CONFIG_PCIE_DW
> >  obj-y				+=3D dwc/
> > =20
> > diff --git a/drivers/pci/controller/pcie-brcmstb.c
> > b/drivers/pci/controller/pcie-brcmstb.c
> > new file mode 100644
> > index 000000000000..880ec11d06a1
> > --- /dev/null
> > +++ b/drivers/pci/controller/pcie-brcmstb.c
> > @@ -0,0 +1,973 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/* Copyright (C) 2009 - 2019 Broadcom */
> > +
> > +#include <linux/clk.h>
> > +#include <linux/compiler.h>
> > +#include <linux/delay.h>
> > +#include <linux/init.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/io.h>
> > +#include <linux/ioport.h>
> > +#include <linux/irqdomain.h>
> > +#include <linux/kernel.h>
> > +#include <linux/list.h>
> > +#include <linux/log2.h>
> > +#include <linux/module.h>
> > +#include <linux/of_address.h>
> > +#include <linux/of_irq.h>
> > +#include <linux/of_pci.h>
> > +#include <linux/of_platform.h>
> > +#include <linux/pci.h>
> > +#include <linux/printk.h>
> > +#include <linux/sizes.h>
> > +#include <linux/slab.h>
> > +#include <linux/string.h>
> > +#include <linux/types.h>
> > +
> > +#include "../pci.h"
>=20
> Is this last include needed? Sometimes controller drivers suffer from cop=
y and
> paste and this is often included when it isn't needed.

It's needed in order to call of_pci_get_max_link_speed().

> > +
> > +/* BRCM_PCIE_CAP_REGS - Offset for the mandatory capability config reg=
s */
> > +#define BRCM_PCIE_CAP_REGS				0x00ac
> > +
> > +/*
> > + * Broadcom Settop Box PCIe Register Offsets. The names are from
> > + * the chip's RDB and we use them here so that a script can correlate
> > + * this code and the RDB to prevent discrepancies.
> > + */
> > +#define PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1		0x0188
> > +#define PCIE_RC_CFG_PRIV1_ID_VAL3			0x043c
> > +#define PCIE_RC_DL_MDIO_ADDR				0x1100
> > +#define PCIE_RC_DL_MDIO_WR_DATA				0x1104
> > +#define PCIE_RC_DL_MDIO_RD_DATA				0x1108
> > +#define PCIE_MISC_MISC_CTRL				0x4008
> > +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO		0x400c
> > +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_HI		0x4010
> > +#define PCIE_MISC_RC_BAR1_CONFIG_LO			0x402c
> > +#define PCIE_MISC_RC_BAR2_CONFIG_LO			0x4034
> > +#define PCIE_MISC_RC_BAR2_CONFIG_HI			0x4038
> > +#define PCIE_MISC_RC_BAR3_CONFIG_LO			0x403c
> > +#define PCIE_MISC_PCIE_CTRL				0x4064
> > +#define PCIE_MISC_PCIE_STATUS				0x4068
> > +#define PCIE_MISC_REVISION				0x406c
>=20
> PCIE_MISC_REVISION can be removed as it shouldn't be needed

See my comment below regarding revision.

> > +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT	0x4070
> > +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_HI		0x4080
> > +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LIMIT_HI		0x4084
> > +#define PCIE_MISC_HARD_PCIE_HARD_DEBUG			0x4204
> > +#define PCIE_INTR2_CPU_BASE				0x4300
> > +
> > +/*
> > + * Broadcom Settop Box PCIe Register Field shift and mask info. The
> > + * names are from the chip's RDB and we use them here so that a script
> > + * can correlate this code and the RDB to prevent discrepancies.
> > + */
> > +#define PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1_ENDIAN_MODE_BAR2_MASK=
=09
> > 0xc
> > +#define PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1_ENDIAN_MODE_BAR2_SHIFT=
=09
> > 0x2
> > +#define PCIE_RC_CFG_PRIV1_ID_VAL3_CLASS_CODE_MASK		0xffffff
> > +#define PCIE_RC_CFG_PRIV1_ID_VAL3_CLASS_CODE_SHIFT		0x0
> > +#define PCIE_MISC_MISC_CTRL_SCB_ACCESS_EN_MASK			0x1000
> > +#define PCIE_MISC_MISC_CTRL_SCB_ACCESS_EN_SHIFT			0xc
> > +#define PCIE_MISC_MISC_CTRL_CFG_READ_UR_MODE_MASK		0x2000
> > +#define PCIE_MISC_MISC_CTRL_CFG_READ_UR_MODE_SHIFT		0xd
> > +#define PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_MASK			0x300000
> > +#define PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_SHIFT		0x14
> > +#define PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK			0xf8000000
> > +#define PCIE_MISC_MISC_CTRL_SCB0_SIZE_SHIFT			0x1b
> > +#define PCIE_MISC_MISC_CTRL_SCB1_SIZE_MASK			0x7c00000
> > +#define PCIE_MISC_MISC_CTRL_SCB1_SIZE_SHIFT			0x16
> > +#define PCIE_MISC_MISC_CTRL_SCB2_SIZE_MASK			0x1f
> > +#define PCIE_MISC_MISC_CTRL_SCB2_SIZE_SHIFT			0x0
> > +#define PCIE_MISC_RC_BAR1_CONFIG_LO_SIZE_MASK			0x1f
> > +#define PCIE_MISC_RC_BAR1_CONFIG_LO_SIZE_SHIFT			0x0
> > +#define PCIE_MISC_RC_BAR2_CONFIG_LO_SIZE_MASK			0x1f
> > +#define PCIE_MISC_RC_BAR2_CONFIG_LO_SIZE_SHIFT			0x0
> > +#define PCIE_MISC_RC_BAR3_CONFIG_LO_SIZE_MASK			0x1f
> > +#define PCIE_MISC_RC_BAR3_CONFIG_LO_SIZE_SHIFT			0x0
> > +#define PCIE_MISC_PCIE_CTRL_PCIE_PERSTB_MASK			0x4
> > +#define PCIE_MISC_PCIE_CTRL_PCIE_PERSTB_SHIFT			0x2
> > +#define PCIE_MISC_PCIE_CTRL_PCIE_L23_REQUEST_MASK		0x1
> > +#define PCIE_MISC_PCIE_CTRL_PCIE_L23_REQUEST_SHIFT		0x0
> > +#define PCIE_MISC_PCIE_STATUS_PCIE_PORT_MASK			0x80
> > +#define PCIE_MISC_PCIE_STATUS_PCIE_PORT_SHIFT			0x7
> > +#define PCIE_MISC_PCIE_STATUS_PCIE_DL_ACTIVE_MASK		0x20
> > +#define PCIE_MISC_PCIE_STATUS_PCIE_DL_ACTIVE_SHIFT		0x5
> > +#define PCIE_MISC_PCIE_STATUS_PCIE_PHYLINKUP_MASK		0x10
> > +#define PCIE_MISC_PCIE_STATUS_PCIE_PHYLINKUP_SHIFT		0x4
> > +#define PCIE_MISC_PCIE_STATUS_PCIE_LINK_IN_L23_MASK		0x40
> > +#define PCIE_MISC_PCIE_STATUS_PCIE_LINK_IN_L23_SHIFT		0x6
> > +#define PCIE_MISC_REVISION_MAJMIN_MASK				0xffff
> > +#define PCIE_MISC_REVISION_MAJMIN_SHIFT				0
> > +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_LIMIT_MASK	0xfff000
> > 00
> > +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_LIMIT_SHIFT	0x14
> > +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_BASE_MASK	0xfff0
> > +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_BASE_SHIFT	0x4
> > +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_NUM_MASK_BITS	0xc
> > +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_HI_BASE_MASK		0xff
> > +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_HI_BASE_SHIFT	0x0
> > +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LIMIT_HI_LIMIT_MASK	0xff
> > +#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LIMIT_HI_LIMIT_SHIFT	0x0
> > +#define PCIE_MISC_HARD_PCIE_HARD_DEBUG_CLKREQ_DEBUG_ENABLE_MASK	0x2
> > +#define PCIE_MISC_HARD_PCIE_HARD_DEBUG_CLKREQ_DEBUG_ENABLE_SHIFT 0x1
> > +#define PCIE_MISC_HARD_PCIE_HARD_DEBUG_SERDES_IDDQ_MASK		0x080000
> > 00
> > +#define PCIE_MISC_HARD_PCIE_HARD_DEBUG_SERDES_IDDQ_SHIFT	0x1b
> > +#define PCIE_RGR1_SW_INIT_1_PERST_MASK				0x1
> > +#define PCIE_RGR1_SW_INIT_1_PERST_SHIFT				0x0
>=20
> Most of the above aren't used anywhere, please remove them.

OK

> > +
> > +#define BRCM_NUM_PCIE_OUT_WINS		0x4
> > +#define BRCM_MAX_SCB			0x4
> > +
> > +#define BRCM_MSI_TARGET_ADDR_LT_4GB	0x0fffffffcULL
> > +#define BRCM_MSI_TARGET_ADDR_GT_4GB	0xffffffffcULL
>=20
> These two aren't used.

As with the revision, this is only used once MSI is introduced, on the next
patch. I'll move it there if you prefer it.

> > +
> > +#define BURST_SIZE_128			0
> > +#define BURST_SIZE_256			1
> > +#define BURST_SIZE_512			2
> > +
> > +/* Offsets from PCIE_INTR2_CPU_BASE */
> > +#define STATUS				0x0
> > +#define SET				0x4
> > +#define CLR				0x8
> > +#define MASK_STATUS			0xc
> > +#define MASK_SET			0x10
> > +#define MASK_CLR			0x14
>=20
> Some of the above are not used anywhere.

OK

> > +
> > +#define PCIE_BUSNUM_SHIFT		20
> > +#define PCIE_SLOT_SHIFT			15
> > +#define PCIE_FUNC_SHIFT			12
> > +
> > +#if defined(__BIG_ENDIAN)
> > +#define	DATA_ENDIAN			2	/* PCIe->DDR inbound
traffic
> > */
> > +#define MMIO_ENDIAN			2	/* CPU->PCIe outbound
> > traffic */
> > +#else
> > +#define	DATA_ENDIAN			0
> > +#define MMIO_ENDIAN			0
> > +#endif
> > +
> > +#define MDIO_PORT0			0x0
> > +#define MDIO_DATA_MASK			0x7fffffff
> > +#define MDIO_DATA_SHIFT			0x0
> > +#define MDIO_PORT_MASK			0xf0000
> > +#define MDIO_PORT_SHIFT			0x16
> > +#define MDIO_REGAD_MASK			0xffff
> > +#define MDIO_REGAD_SHIFT		0x0
> > +#define MDIO_CMD_MASK			0xfff00000
> > +#define MDIO_CMD_SHIFT			0x14
> > +#define MDIO_CMD_READ			0x1
> > +#define MDIO_CMD_WRITE			0x0
> > +#define MDIO_DATA_DONE_MASK		0x80000000
> > +#define MDIO_RD_DONE(x)			(((x) & MDIO_DATA_DONE_MASK) ? 1
> > : 0)
> > +#define MDIO_WT_DONE(x)			(((x) & MDIO_DATA_DONE_MASK) ? 0
> > : 1)
> > +#define SSC_REGS_ADDR			0x1100
> > +#define SET_ADDR_OFFSET			0x1f
> > +#define SSC_CNTL_OFFSET			0x2
> > +#define SSC_CNTL_OVRD_EN_MASK		0x8000
> > +#define SSC_CNTL_OVRD_EN_SHIFT		0xf
> > +#define SSC_CNTL_OVRD_VAL_MASK		0x4000
> > +#define SSC_CNTL_OVRD_VAL_SHIFT		0xe
> > +#define SSC_STATUS_OFFSET		0x1
> > +#define SSC_STATUS_SSC_MASK		0x400
> > +#define SSC_STATUS_SSC_SHIFT		0xa
> > +#define SSC_STATUS_PLL_LOCK_MASK	0x800
> > +#define SSC_STATUS_PLL_LOCK_SHIFT	0xb
> > +
> > +#define IDX_ADDR(pcie)	\
> > +	((pcie)->reg_offsets[EXT_CFG_INDEX])
> > +#define DATA_ADDR(pcie)	\
> > +	((pcie)->reg_offsets[EXT_CFG_DATA])
> > +#define PCIE_RGR1_SW_INIT_1(pcie) \
> > +	((pcie)->reg_offsets[RGR1_SW_INIT_1])
> > +
> > +enum {
> > +	RGR1_SW_INIT_1,
> > +	EXT_CFG_INDEX,
> > +	EXT_CFG_DATA,
> > +};
> > +
> > +enum {
> > +	RGR1_SW_INIT_1_INIT_MASK,
> > +	RGR1_SW_INIT_1_INIT_SHIFT,
> > +	RGR1_SW_INIT_1_PERST_MASK,
> > +	RGR1_SW_INIT_1_PERST_SHIFT,
> > +};
> > +
> > +enum pcie_type {
> > +	BCM2711,
> > +};
> > +
> > +struct brcm_window {
> > +	dma_addr_t pcie_addr;
> > +	phys_addr_t cpu_addr;
> > +	dma_addr_t size;
> > +};
> > +
> > +/* Internal PCIe Host Controller Information.*/
> > +struct brcm_pcie {
> > +	struct device		*dev;
> > +	void __iomem		*base;
> > +	int			irq;
>=20
> 'irq' isn't used and can be removed.

Yes

> > +	struct clk		*clk;
> > +	struct pci_bus		*root_bus;
> > +	struct device_node	*dn;
> > +	int			id;
>=20
> 'id' isn't used and can be removed.

Yes

> > +	bool			suspended;
> > +	bool			ssc;
> > +	int			gen;
> > +	struct brcm_window	out_wins[BRCM_NUM_PCIE_OUT_WINS];
> > +	unsigned int		rev;
>=20
> 'rev' isn't used and can be removed.

It's used by the MSI code further down the line. If you want I'll move it t=
o
that patch.

> > +	const int		*reg_offsets;
> > +	const int		*reg_field_info;
> > +	enum pcie_type		type;
> > +};
> > +
> > +struct pcie_cfg_data {
> > +	const int		*reg_field_info;
> > +	const int		*offsets;
> > +	const enum pcie_type	type;
> > +};
> > +
> > +static const int pcie_reg_field_info[] =3D {
> > +	[RGR1_SW_INIT_1_INIT_MASK] =3D 0x2,
> > +	[RGR1_SW_INIT_1_INIT_SHIFT] =3D 0x1,
> > +};
> > +
> > +static const int pcie_offset_bcm2711[] =3D {
> > +	[RGR1_SW_INIT_1] =3D 0x9210,
> > +	[EXT_CFG_INDEX]  =3D 0x9000,
> > +	[EXT_CFG_DATA]   =3D 0x8000,
> > +};
> > +
> > +static const struct pcie_cfg_data bcm2711_cfg =3D {
> > +	.reg_field_info	=3D pcie_reg_field_info,
> > +	.offsets	=3D pcie_offset_bcm2711,
> > +	.type		=3D BCM2711,
> > +};
> > +
> > +static void __iomem *brcm_pcie_map_conf(struct pci_bus *bus, unsigned =
int
> > devfn,
> > +					int where);
> > +
> > +static struct pci_ops brcm_pcie_ops =3D {
> > +	.map_bus =3D brcm_pcie_map_conf,
> > +	.read =3D pci_generic_config_read,
> > +	.write =3D pci_generic_config_write,
> > +};
> > +
> > +#define bcm_readl(a)		readl(a)
> > +#define bcm_writel(d, a)	writel(d, a)
> > +#define bcm_readw(a)		readw(a)
> > +#define bcm_writew(d, a)	writew(d, a)
>=20
> Is there much value in these macros?

Yes, once we introduce MIPS users, they'll need to use __raw_write*(). It'l=
l
make the patch simpler.

> > +
> > +/* These macros extract/insert fields to host controller's register se=
t. */
> > +#define RD_FLD(base, reg, field) \
> > +	rd_fld((base) + reg, reg##_##field##_MASK, reg##_##field##_SHIFT)
> > +#define WR_FLD(base, reg, field, val) \
> > +	wr_fld((base) + reg, reg##_##field##_MASK, reg##_##field##_SHIFT, val=
)
> > +#define WR_FLD_RB(base, reg, field, val) \
> > +	wr_fld_rb((base) + reg, reg##_##field##_MASK, \
> > +		reg##_##field##_SHIFT, val)
> > +#define WR_FLD_WITH_OFFSET(base, off, reg, field, val) \
> > +	wr_fld((base) + reg + (off), reg##_##field##_MASK, \
> > +	       reg##_##field##_SHIFT, val)
> > +#define EXTRACT_FIELD(val, reg, field) \
> > +	(((val) & reg##_##field##_MASK) >> reg##_##field##_SHIFT)
> > +#define INSERT_FIELD(val, reg, field, field_val) \
> > +	(((val) & ~reg##_##field##_MASK) | \
> > +	 (reg##_##field##_MASK & (field_val << reg##_##field##_SHIFT)))
> > +
> > +static u32 rd_fld(void __iomem *p, u32 mask, int shift)
> > +{
> > +	return (bcm_readl(p) & mask) >> shift;
> > +}
> > +
> > +static void wr_fld(void __iomem *p, u32 mask, int shift, u32 val)
> > +{
> > +	u32 reg =3D bcm_readl(p);
> > +
> > +	reg =3D (reg & ~mask) | ((val << shift) & mask);
> > +	bcm_writel(reg, p);
> > +}
> > +
> > +static void wr_fld_rb(void __iomem *p, u32 mask, int shift, u32 val)
> > +{
> > +	wr_fld(p, mask, shift, val);
> > +	(void)bcm_readl(p);
> > +}
> > +
> > +static const char *link_speed_to_str(int s)
> > +{
> > +	switch (s) {
> > +	case 1:
> > +		return "2.5";
> > +	case 2:
> > +		return "5.0";
> > +	case 3:
> > +		return "8.0";
> > +	default:
> > +		break;
> > +	}
> > +	return "???";
> > +}
> > +
> > +/*
> > + * The roundup_pow_of_two() from log2.h invokes
> > + * __roundup_pow_of_two(unsigned long), but we really need a
> > + * such a function to take a native u64 since unsigned long
> > + * is 32 bits on some configurations.  So we provide this helper
> > + * function below.
> > + */
> > +static u64 roundup_pow_of_two_64(u64 n)
> > +{
> > +	return 1ULL << fls64(n - 1);
> > +}
>=20
> Given that you use this in one place and that it is a single line, I'd
> suggest you just drop this function. Alternatively if you wanted to add
> this function to log2.h then you already have a bunch of users ready to
> be migrated to it:
>=20
> $ git grep "<<
> fls64"                                                                   =
  =20
> arch/sparc/mm/init_64.c:        m_end +=3D pa_start & ~((1ul << fls64(m_m=
ask)) -
> 1);
> drivers/net/ethernet/mellanox/mlx4/en_clock.c:  u64 max_val_cycles_rounde=
d =3D
> 1ULL << fls64(max_val_cycles - 1);
> drivers/pci/controller/pcie-cadence-ep.c:       sz =3D 1ULL << fls64(sz -=
 1);
> drivers/pci/controller/pcie-cadence.c:  u64 sz =3D 1ULL << fls64(size - 1=
);
> drivers/pci/controller/pcie-rockchip-ep.c:      u64 sz =3D 1ULL << fls64(=
size -
> 1);
> drivers/pci/controller/pcie-rockchip-ep.c:      sz =3D 1ULL << fls64(sz -=
 1);

I'll add it to log2.h

> > +
> > +/*
> > + * This is to convert the size of the inbound "BAR" region to the
> > + * non-linear values of PCIE_X_MISC_RC_BAR[123]_CONFIG_LO.SIZE
> > + */
> > +int encode_ibar_size(u64 size)
> > +{
> > +	int log2_in =3D ilog2(size);
> > +
> > +	if (log2_in >=3D 12 && log2_in <=3D 15)
> > +		/* Covers 4KB to 32KB (inclusive) */
> > +		return (log2_in - 12) + 0x1c;
> > +	else if (log2_in >=3D 16 && log2_in <=3D 37)
> > +		/* Covers 64KB to 32GB, (inclusive) */
>=20
> 2^37 !=3D 32GB?

I picked up Jim's comment.

> > +		return log2_in - 15;
> > +	/* Something is awry so disable */
> > +	return 0;
> > +}
> > +
> > +static u32 mdio_form_pkt(int port, int regad, int cmd)
> > +{
> > +	u32 pkt =3D 0;
> > +
> > +	pkt |=3D (port << MDIO_PORT_SHIFT) & MDIO_PORT_MASK;
> > +	pkt |=3D (regad << MDIO_REGAD_SHIFT) & MDIO_REGAD_MASK;
> > +	pkt |=3D (cmd << MDIO_CMD_SHIFT) & MDIO_CMD_MASK;
> > +
> > +	return pkt;
> > +}
> > +
> > +/* negative return value indicates error */
> > +static int mdio_read(void __iomem *base, u8 port, u8 regad)
> > +{
> > +	int tries;
> > +	u32 data;
> > +
> > +	bcm_writel(mdio_form_pkt(port, regad, MDIO_CMD_READ),
> > +		   base + PCIE_RC_DL_MDIO_ADDR);
> > +	bcm_readl(base + PCIE_RC_DL_MDIO_ADDR);
> > +
> > +	data =3D bcm_readl(base + PCIE_RC_DL_MDIO_RD_DATA);
> > +	for (tries =3D 0; !MDIO_RD_DONE(data) && tries < 10; tries++) {
> > +		udelay(10);
> > +		data =3D bcm_readl(base + PCIE_RC_DL_MDIO_RD_DATA);
> > +	}
> > +
> > +	return MDIO_RD_DONE(data)
> > +		? (data & MDIO_DATA_MASK) >> MDIO_DATA_SHIFT
> > +		: -EIO;
> > +}
> > +
> > +/* negative return value indicates error */
> > +static int mdio_write(void __iomem *base, u8 port, u8 regad, u16 wrdat=
a)
> > +{
> > +	int tries;
> > +	u32 data;
> > +
> > +	bcm_writel(mdio_form_pkt(port, regad, MDIO_CMD_WRITE),
> > +		   base + PCIE_RC_DL_MDIO_ADDR);
> > +	bcm_readl(base + PCIE_RC_DL_MDIO_ADDR);
> > +	bcm_writel(MDIO_DATA_DONE_MASK | wrdata,
> > +		   base + PCIE_RC_DL_MDIO_WR_DATA);
> > +
> > +	data =3D bcm_readl(base + PCIE_RC_DL_MDIO_WR_DATA);
> > +	for (tries =3D 0; !MDIO_WT_DONE(data) && tries < 10; tries++) {
> > +		udelay(10);
> > +		data =3D bcm_readl(base + PCIE_RC_DL_MDIO_WR_DATA);
> > +	}
> > +
> > +	return MDIO_WT_DONE(data) ? 0 : -EIO;
> > +}
> > +
> > +/*
> > + * Configures device for Spread Spectrum Clocking (SSC) mode; a negati=
ve
> > + * return value indicates error.
> > + */
> > +static int set_ssc(void __iomem *base)
>=20
> Please prefix this with brcm_pcie_ (and other similar occurances)
>=20

OK

> > +{
> > +	int tmp;
> > +	u16 wrdata;
> > +	int pll, ssc;
> > +
> > +	tmp =3D mdio_write(base, MDIO_PORT0, SET_ADDR_OFFSET, SSC_REGS_ADDR);
> > +	if (tmp < 0)
> > +		return tmp;
> > +
> > +	tmp =3D mdio_read(base, MDIO_PORT0, SSC_CNTL_OFFSET);
> > +	if (tmp < 0)
> > +		return tmp;
> > +
> > +	wrdata =3D INSERT_FIELD(tmp, SSC_CNTL_OVRD, EN, 1);
> > +	wrdata =3D INSERT_FIELD(wrdata, SSC_CNTL_OVRD, VAL, 1);
> > +	tmp =3D mdio_write(base, MDIO_PORT0, SSC_CNTL_OFFSET, wrdata);
> > +	if (tmp < 0)
> > +		return tmp;
> > +
> > +	usleep_range(1000, 2000);
> > +	tmp =3D mdio_read(base, MDIO_PORT0, SSC_STATUS_OFFSET);
> > +	if (tmp < 0)
> > +		return tmp;
> > +
> > +	ssc =3D EXTRACT_FIELD(tmp, SSC_STATUS, SSC);
> > +	pll =3D EXTRACT_FIELD(tmp, SSC_STATUS, PLL_LOCK);
> > +
> > +	return (ssc && pll) ? 0 : -EIO;
> > +}
> > +
> > +/* Limits operation to a specific generation (1, 2, or 3) */
> > +static void set_gen(void __iomem *base, int gen)
> > +{
> > +	u32 lnkcap =3D bcm_readl(base + BRCM_PCIE_CAP_REGS + PCI_EXP_LNKCAP);
> > +	u16 lnkctl2 =3D bcm_readw(base + BRCM_PCIE_CAP_REGS + PCI_EXP_LNKCTL2=
);
> > +
> > +	lnkcap =3D (lnkcap & ~PCI_EXP_LNKCAP_SLS) | gen;
> > +	bcm_writel(lnkcap, base + BRCM_PCIE_CAP_REGS + PCI_EXP_LNKCAP);
> > +
> > +	lnkctl2 =3D (lnkctl2 & ~0xf) | gen;
> > +	bcm_writew(lnkctl2, base + BRCM_PCIE_CAP_REGS + PCI_EXP_LNKCTL2);
> > +}
> > +
> > +static void brcm_pcie_set_outbound_win(struct brcm_pcie *pcie,
> > +				       unsigned int win, phys_addr_t cpu_addr,
> > +				       dma_addr_t  pcie_addr, dma_addr_t size)
> > +{
> > +	void __iomem *base =3D pcie->base;
> > +	phys_addr_t cpu_addr_mb, limit_addr_mb;
> > +	u32 tmp;
> > +
> > +	/* Set the base of the pcie_addr window */
> > +	bcm_writel(lower_32_bits(pcie_addr) + MMIO_ENDIAN,
> > +		   base + PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO + (win * 8));
> > +	bcm_writel(upper_32_bits(pcie_addr),
> > +		   base + PCIE_MISC_CPU_2_PCIE_MEM_WIN0_HI + (win * 8));
> > +
> > +	cpu_addr_mb =3D cpu_addr >> 20;
> > +	limit_addr_mb =3D (cpu_addr + size - 1) >> 20;
> > +
> > +	/* Write the addr base low register */
> > +	WR_FLD_WITH_OFFSET(base, (win * 4),
> > +			   PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT,
> > +			   BASE, cpu_addr_mb);
> > +	/* Write the addr limit low register */
> > +	WR_FLD_WITH_OFFSET(base, (win * 4),
> > +			   PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT,
> > +			   LIMIT, limit_addr_mb);
> > +
> > +	/* Write the cpu addr high register */
> > +	tmp =3D (u32)(cpu_addr_mb >>
> > +		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_NUM_MASK_BITS);
> > +	WR_FLD_WITH_OFFSET(base, (win * 8),
> > +			   PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_HI,
> > +			   BASE, tmp);
> > +	/* Write the cpu limit high register */
> > +	tmp =3D (u32)(limit_addr_mb >>
> > +		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_NUM_MASK_BITS);
> > +	WR_FLD_WITH_OFFSET(base, (win * 8),
> > +			   PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LIMIT_HI,
> > +			   LIMIT, tmp);
> > +}
> > +
> > +/* Configuration space read/write support */
> > +static int cfg_index(int busnr, int devfn, int reg)
> > +{
> > +	return ((PCI_SLOT(devfn) & 0x1f) << PCIE_SLOT_SHIFT)
> > +		| ((PCI_FUNC(devfn) & 0x07) << PCIE_FUNC_SHIFT)
> > +		| (busnr << PCIE_BUSNUM_SHIFT)
> > +		| (reg & ~3);
> > +}
> > +
> > +/* The controller is capable of serving in both RC and EP roles */
> > +static bool brcm_pcie_rc_mode(struct brcm_pcie *pcie)
> > +{
> > +	void __iomem *base =3D pcie->base;
> > +	u32 val =3D bcm_readl(base + PCIE_MISC_PCIE_STATUS);
> > +
> > +	return !!EXTRACT_FIELD(val, PCIE_MISC_PCIE_STATUS, PCIE_PORT);
> > +}
> > +
> > +static bool brcm_pcie_link_up(struct brcm_pcie *pcie)
> > +{
> > +	void __iomem *base =3D pcie->base;
> > +	u32 val =3D bcm_readl(base + PCIE_MISC_PCIE_STATUS);
> > +	u32 dla =3D EXTRACT_FIELD(val, PCIE_MISC_PCIE_STATUS, PCIE_DL_ACTIVE)=
;
> > +	u32 plu =3D EXTRACT_FIELD(val, PCIE_MISC_PCIE_STATUS, PCIE_PHYLINKUP)=
;
> > +
> > +	return  (dla && plu) ? true : false;
> > +}
> > +
> > +static void __iomem *brcm_pcie_map_conf(struct pci_bus *bus, unsigned =
int
> > devfn,
> > +					int where)
> > +{
> > +	struct brcm_pcie *pcie =3D bus->sysdata;
> > +	void __iomem *base =3D pcie->base;
> > +	int idx;
> > +
> > +	/* Accesses to the RC go right to the RC registers if slot=3D=3D0 */
> > +	if (pci_is_root_bus(bus))
> > +		return PCI_SLOT(devfn) ? NULL : base + where;
> > +
> > +	/* For devices, write to the config space index register */
> > +	idx =3D cfg_index(bus->number, devfn, 0);
> > +	bcm_writel(idx, pcie->base + IDX_ADDR(pcie));
> > +	return base + DATA_ADDR(pcie) + where;
> > +}
> > +
> > +static inline void brcm_pcie_bridge_sw_init_set(struct brcm_pcie *pcie=
,
> > +						unsigned int val)
> > +{
> > +	unsigned int shift =3D pcie->reg_field_info[RGR1_SW_INIT_1_INIT_SHIFT=
];
> > +	u32 mask =3D  pcie->reg_field_info[RGR1_SW_INIT_1_INIT_MASK];
> > +
> > +	wr_fld_rb(pcie->base + PCIE_RGR1_SW_INIT_1(pcie), mask, shift, val);
> > +}
> > +
> > +static inline void brcm_pcie_perst_set(struct brcm_pcie *pcie,
> > +				       unsigned int val)
> > +{
> > +	wr_fld_rb(pcie->base + PCIE_RGR1_SW_INIT_1(pcie),
> > +		  PCIE_RGR1_SW_INIT_1_PERST_MASK,
> > +		  PCIE_RGR1_SW_INIT_1_PERST_SHIFT, val);
> > +}
> > +
> > +static inline int brcm_pcie_get_rc_bar2_size_and_offset(struct brcm_pc=
ie
> > *pcie,
> > +							u64 *rc_bar2_size,
> > +							u64 *rc_bar2_offset)
> > +{
> > +	struct pci_host_bridge *bridge =3D pci_host_bridge_from_priv(pcie);
> > +	struct device *dev =3D pcie->dev;
> > +	struct resource_entry *entry;
> > +	u64 total_mem_size =3D 0;
> > +
> > +	*rc_bar2_offset =3D -1;
> > +
> > +	resource_list_for_each_entry(entry, &bridge->dma_ranges) {
> > +		/*
> > +		 * We're promissed the RC will provide a contiguous view of
>=20
> s/promissed/promised/

Corrected

> > +		 * memory to downstream devices. We can then infer the
> > +		 * rc_bar2_offset from the lower avaiable dma-range offset.
> > +		 */
> > +		if (entry->offset < *rc_bar2_offset)
> > +			*rc_bar2_offset =3D entry->offset;
> > +
> > +		total_mem_size +=3D entry->res->end - entry->res->start + 1;
> > +	}
> > +
> > +	*rc_bar2_size =3D roundup_pow_of_two_64(total_mem_size);
> > +
> > +	/*
> > +	 * Validate the results:
> > +	 *
> > +	 * The PCIe host controller by design must set the inbound viewport t=
o
> > +	 * be a contiguous arrangement of all of the system's memory.  In
> > +	 * addition, its size mut be a power of two.  To further complicate
> > +	 * matters, the viewport must start on a pcie-address that is aligned
> > +	 * on a multiple of its size.  If a portion of the viewport does not
> > +	 * represent system memory -- e.g. 3GB of memory requires a 4GB
> > +	 * viewport -- we can map the outbound memory in or after 3GB and eve=
n
> > +	 * though the viewport will overlap the outbound memory the controlle=
r
> > +	 * will know to send outbound memory downstream and everything else
> > +	 * upstream.
> > +	 *
> > +	 * For example:
> > +	 *
> > +	 * - The best-case scenario, memory up to 3GB, is to place the inboun=
d
> > +	 *   region in the first 4GB of pcie-space, as some legacy devices ca=
n
> > +	 *   only address 32bits. We would also like to put the MSI under 4GB
> > +	 *   as well, since some devices require a 32bit MSI target address.
> > +	 *
> > +	 * - If the system memory is 4GB or larger we cannot start the inboun=
d
> > +	 *   region at location 0 (since we have to allow some space for
> > +	 *   outbound memory @ 3GB). So instead it will  start at the 1x
> > +	 *   multiple of its size
> > +	 */
> > +	if (!*rc_bar2_size || *rc_bar2_offset % *rc_bar2_size ||
> > +	    (*rc_bar2_offset < SZ_4G && *rc_bar2_offset > SZ_2G)) {
> > +		dev_err(dev, "Invalid rc_bar2_offset/size: size 0x%llx, off
> > 0x%llx\n",
> > +			*rc_bar2_size, *rc_bar2_offset);
> > +		return -EINVAL;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int brcm_pcie_setup(struct brcm_pcie *pcie)
> > +{
> > +	struct pci_host_bridge *bridge =3D pci_host_bridge_from_priv(pcie);
> > +	u64 rc_bar2_offset, rc_bar2_size;
> > +	void __iomem *base =3D pcie->base;
> > +	struct resource_entry *entry;
> > +	unsigned int scb_size_val;
> > +	struct resource *res;
> > +	int num_out_wins =3D 0;
> > +	u32 tmp;
> > +	int i, j, ret, limit;
> > +	u16 nlw, cls, lnksta;
> > +	bool ssc_good =3D false;
> > +	struct device *dev =3D pcie->dev;
> > +
> > +	/* Reset the bridge */
> > +	brcm_pcie_bridge_sw_init_set(pcie, 1);
> > +
> > +	usleep_range(100, 200);
> > +
> > +	/* Take the bridge out of reset */
> > +	brcm_pcie_bridge_sw_init_set(pcie, 0);
> > +
> > +	WR_FLD_RB(base, PCIE_MISC_HARD_PCIE_HARD_DEBUG, SERDES_IDDQ, 0);
> > +	/* Wait for SerDes to be stable */
> > +	usleep_range(100, 200);
> > +
> > +	/* Grab the PCIe hw revision number */
> > +	tmp =3D bcm_readl(base + PCIE_MISC_REVISION);
> > +	pcie->rev =3D EXTRACT_FIELD(tmp, PCIE_MISC_REVISION, MAJMIN);
>=20
> This isn't used anywhere

It's used by MSI further down the line.

> > +
> > +	/* Set SCB_MAX_BURST_SIZE, CFG_READ_UR_MODE, SCB_ACCESS_EN */
> > +	tmp =3D INSERT_FIELD(0, PCIE_MISC_MISC_CTRL, SCB_ACCESS_EN, 1);
> > +	tmp =3D INSERT_FIELD(tmp, PCIE_MISC_MISC_CTRL, CFG_READ_UR_MODE, 1);
> > +	tmp =3D INSERT_FIELD(tmp, PCIE_MISC_MISC_CTRL, MAX_BURST_SIZE,
> > +			   BURST_SIZE_128);
> > +	bcm_writel(tmp, base + PCIE_MISC_MISC_CTRL);
> > +
> > +	ret =3D brcm_pcie_get_rc_bar2_size_and_offset(pcie, &rc_bar2_size,
> > +						    &rc_bar2_offset);
> > +	if (ret)
> > +		return ret;
> > +
> > +	tmp =3D lower_32_bits(rc_bar2_offset);
> > +	tmp =3D INSERT_FIELD(tmp, PCIE_MISC_RC_BAR2_CONFIG_LO, SIZE,
> > +			   encode_ibar_size(rc_bar2_size));
> > +	bcm_writel(tmp, base + PCIE_MISC_RC_BAR2_CONFIG_LO);
> > +	bcm_writel(upper_32_bits(rc_bar2_offset),
> > +		   base + PCIE_MISC_RC_BAR2_CONFIG_HI);
> > +
> > +	scb_size_val =3D rc_bar2_size ?
> > +		       ilog2(rc_bar2_size) - 15 : 0xf; /* 0xf is 1GB */
> > +	WR_FLD(base, PCIE_MISC_MISC_CTRL, SCB0_SIZE, scb_size_val);
> > +
> > +	/* disable the PCIe->GISB memory window (RC_BAR1) */
> > +	WR_FLD(base, PCIE_MISC_RC_BAR1_CONFIG_LO, SIZE, 0);
> > +
> > +	/* disable the PCIe->SCB memory window (RC_BAR3) */
> > +	WR_FLD(base, PCIE_MISC_RC_BAR3_CONFIG_LO, SIZE, 0);
> > +
> > +	if (!pcie->suspended) {
> > +		/* clear any interrupts we find on boot */
> > +		bcm_writel(0xffffffff, base + PCIE_INTR2_CPU_BASE + CLR);
> > +		(void)bcm_readl(base + PCIE_INTR2_CPU_BASE + CLR);
> > +	}
> > +
> > +	/* Mask all interrupts since we are not handling any yet */
> > +	bcm_writel(0xffffffff, base + PCIE_INTR2_CPU_BASE + MASK_SET);
> > +	(void)bcm_readl(base + PCIE_INTR2_CPU_BASE + MASK_SET);
> > +
> > +	if (pcie->gen)
> > +		set_gen(base, pcie->gen);
> > +
> > +	/* Unassert the fundamental reset */
> > +	brcm_pcie_perst_set(pcie, 0);
> > +
> > +	/*
> > +	 * Give the RC/EP time to wake up, before trying to configure RC.
> > +	 * Intermittently check status for link-up, up to a total of 100ms
> > +	 * when we don't know if the device is there, and up to 1000ms if
> > +	 * we do know the device is there.
> > +	 */
> > +	limit =3D pcie->suspended ? 1000 : 100;
> > +	for (i =3D 1, j =3D 0; j < limit && !brcm_pcie_link_up(pcie);
> > +	     j +=3D i, i =3D i * 2)
> > +		msleep(i + j > limit ? limit - j : i);
>=20
> Does it need to be this complex? Also waiting a second during resume seem=
s
> like a long delay.

I'll simplify it. I didn't want to change it as I assumed this is needed on
some odd STB device. We'll deal with it once we enable it.

> > +
> > +	if (!brcm_pcie_link_up(pcie)) {
> > +		dev_info(dev, "link down\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	if (!brcm_pcie_rc_mode(pcie)) {
> > +		dev_err(dev, "PCIe misconfigured; is in EP mode\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	resource_list_for_each_entry(entry, &bridge->windows) {
> > +		res =3D entry->res;
> > +
> > +		if (resource_type(res) !=3D IORESOURCE_MEM)
> > +			continue;
> > +
> > +		if (num_out_wins >=3D BRCM_NUM_PCIE_OUT_WINS) {
> > +			dev_err(pcie->dev, "too many outbound wins\n");
> > +			return -EINVAL;
> > +		}
> > +
> > +		brcm_pcie_set_outbound_win(pcie, num_out_wins, res->start,
> > +					   res->start - entry->offset,
> > +					   res->end - res->start + 1);
> > +		num_out_wins++;
> > +	}
> > +
> > +	/*
> > +	 * For config space accesses on the RC, show the right class for
> > +	 * a PCIe-PCIe bridge (the default setting is to be EP mode).
> > +	 */
> > +	WR_FLD_RB(base, PCIE_RC_CFG_PRIV1_ID_VAL3, CLASS_CODE, 0x060400);
> > +
> > +	if (pcie->ssc) {
> > +		ret =3D set_ssc(base);
> > +		if (ret =3D=3D 0)
> > +			ssc_good =3D true;
> > +		else
> > +			dev_err(dev, "failed attempt to enter ssc mode\n");
> > +	}
> > +
> > +	lnksta =3D bcm_readw(base + BRCM_PCIE_CAP_REGS + PCI_EXP_LNKSTA);
> > +	cls =3D lnksta & PCI_EXP_LNKSTA_CLS;
> > +	nlw =3D (lnksta & PCI_EXP_LNKSTA_NLW) >> PCI_EXP_LNKSTA_NLW_SHIFT;
> > +	dev_info(dev, "link up, %s Gbps x%u %s\n", link_speed_to_str(cls),
> > +		 nlw, ssc_good ? "(SSC)" : "(!SSC)");
> > +
> > +	/* PCIe->SCB endian mode for BAR */
> > +	/* field ENDIAN_MODE_BAR2 =3D DATA_ENDIAN */
> > +	WR_FLD_RB(base, PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1,
> > +		  ENDIAN_MODE_BAR2, DATA_ENDIAN);
> > +
> > +	/*
> > +	 * Refclk from RC should be gated with CLKREQ# input when ASPM L0s,L1
> > +	 * is enabled =3D>  setting the CLKREQ_DEBUG_ENABLE field to 1.
> > +	 */
> > +	WR_FLD_RB(base, PCIE_MISC_HARD_PCIE_HARD_DEBUG, CLKREQ_DEBUG_ENABLE, =
1);
> > +
> > +	return 0;
> > +}
> > +
> > +/* L23 is a low-power PCIe link state */
> > +static void enter_l23(struct brcm_pcie *pcie)
> > +{
> > +	void __iomem *base =3D pcie->base;
> > +	int l23, i;
> > +
> > +	/* assert request for L23 */
> > +	WR_FLD_RB(base, PCIE_MISC_PCIE_CTRL, PCIE_L23_REQUEST, 1);
> > +
> > +	/* Wait up to 30 msec for L23 */
> > +	l23 =3D RD_FLD(base, PCIE_MISC_PCIE_STATUS, PCIE_LINK_IN_L23);
> > +	for (i =3D 0; i < 15 && !l23; i++) {
> > +		usleep_range(2000, 2400);
> > +		l23 =3D RD_FLD(base, PCIE_MISC_PCIE_STATUS, PCIE_LINK_IN_L23);
> > +	}
> > +
> > +	if (!l23)
> > +		dev_err(pcie->dev, "failed to enter L23\n");
> > +}
> > +
> > +static void turn_off(struct brcm_pcie *pcie)
> > +{
> > +	void __iomem *base =3D pcie->base;
> > +
> > +	if (brcm_pcie_link_up(pcie))
> > +		enter_l23(pcie);
> > +	/* Assert fundamental reset */
> > +	brcm_pcie_perst_set(pcie, 1);
> > +	/* Deassert request for L23 in case it was asserted */
> > +	WR_FLD_RB(base, PCIE_MISC_PCIE_CTRL, PCIE_L23_REQUEST, 0);
> > +	/* Turn off SerDes */
> > +	WR_FLD_RB(base, PCIE_MISC_HARD_PCIE_HARD_DEBUG, SERDES_IDDQ, 1);
> > +	/* Shutdown PCIe bridge */
> > +	brcm_pcie_bridge_sw_init_set(pcie, 1);
> > +}
> > +
> > +static int brcm_pcie_suspend(struct device *dev)
> > +{
> > +	struct brcm_pcie *pcie =3D dev_get_drvdata(dev);
> > +
> > +	turn_off(pcie);
> > +	clk_disable_unprepare(pcie->clk);
> > +	pcie->suspended =3D true;
> > +
> > +	return 0;
> > +}
> > +
> > +static int brcm_pcie_resume(struct device *dev)
> > +{
> > +	struct brcm_pcie *pcie =3D dev_get_drvdata(dev);
> > +	void __iomem *base;
> > +	int ret;
> > +
> > +	base =3D pcie->base;
> > +	clk_prepare_enable(pcie->clk);
> > +
> > +	/* Take bridge out of reset so we can access the SerDes reg */
> > +	brcm_pcie_bridge_sw_init_set(pcie, 0);
> > +
> > +	/* Turn on SerDes */
> > +	WR_FLD_RB(base, PCIE_MISC_HARD_PCIE_HARD_DEBUG, SERDES_IDDQ, 0);
> > +	/* Wait for SerDes to be stable */
> > +	usleep_range(100, 200);
> > +
> > +	ret =3D brcm_pcie_setup(pcie);
> > +	if (ret)
> > +		return ret;
> > +
> > +	pcie->suspended =3D false;
> > +
> > +	return 0;
> > +}
> > +
> > +static void _brcm_pcie_remove(struct brcm_pcie *pcie)
>=20
> I don't see the value in the first underscore here.

It's value is that the real brcm_pcie_remove() and the probe failure cleanu=
p
routine share code. It saves some code duplication, that said I have no str=
ong
feelings about it.

> > +{
> > +	turn_off(pcie);
> > +	clk_disable_unprepare(pcie->clk);
> > +	clk_put(pcie->clk);
> > +}
> > +
> > +static int brcm_pcie_remove(struct platform_device *pdev)
> > +{
> > +	struct brcm_pcie *pcie =3D platform_get_drvdata(pdev);
> > +
> > +	pci_stop_root_bus(pcie->root_bus);
> > +	pci_remove_root_bus(pcie->root_bus);
> > +	_brcm_pcie_remove(pcie);
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct of_device_id brcm_pcie_match[] =3D {
> > +	{ .compatible =3D "brcm,bcm2711-pcie", .data =3D &bcm2711_cfg },
> > +	{},
> > +};
> > +MODULE_DEVICE_TABLE(of, brcm_pcie_match);
> > +
> > +static int brcm_pcie_probe(struct platform_device *pdev)
> > +{
> > +	struct device_node *dn =3D pdev->dev.of_node;
> > +	const struct of_device_id *of_id;
> > +	const struct pcie_cfg_data *data;
> > +	struct resource *res;
> > +	int ret;
> > +	struct brcm_pcie *pcie;
> > +	void __iomem *base;
> > +	struct pci_host_bridge *bridge;
> > +	struct pci_bus *child;
> > +
> > +	bridge =3D devm_pci_alloc_host_bridge(&pdev->dev, sizeof(*pcie));
> > +	if (!bridge)
> > +		return -ENOMEM;
> > +
> > +	pcie =3D pci_host_bridge_priv(bridge);
> > +
> > +	of_id =3D of_match_node(brcm_pcie_match, dn);
> > +	if (!of_id) {
> > +		dev_err(&pdev->dev, "failed to look up compatible string\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	data =3D of_id->data;
>=20
> Can you replace the above (from of_match_node to here) with the following=
?
>=20
> data =3D of_device_get_match_data(pdev->dev)

Yes, way cleaner.

> > +	pcie->reg_offsets =3D data->offsets;
> > +	pcie->reg_field_info =3D data->reg_field_info;
> > +	pcie->type =3D data->type;
> > +	pcie->dn =3D dn;
> > +	pcie->dev =3D &pdev->dev;
> > +
> > +	/* We use the domain number as our controller number */
> > +	pcie->id =3D of_get_pci_domain_nr(dn);
> > +	if (pcie->id < 0)
> > +		return pcie->id;
>=20
> We don't do anything with this, so you can remove this.

Deleted.

> > +
> > +	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +	if (!res)
> > +		return -EINVAL;
>=20
> The majority of controller drivers don't bother to check the return value
> here and just pass res into devm_ioremap_resource.

Ok.

> > +
> > +	base =3D devm_ioremap_resource(&pdev->dev, res);
> > +	if (IS_ERR(base))
> > +		return PTR_ERR(base);
> > +
> > +	pcie->clk =3D of_clk_get_by_name(dn, "sw_pcie");
> > +	if (IS_ERR(pcie->clk)) {
> > +		dev_err(&pdev->dev, "could not get clock\n");
> > +		pcie->clk =3D NULL;
> > +	}
>=20
> Is this a good use-case for devm_clk_get_optional?

Yes.

> > +	pcie->base =3D base;
> > +
> > +	ret =3D of_pci_get_max_link_speed(dn);
> > +	pcie->gen =3D (ret < 0) ? 0 : ret;
>=20
> There is no checking that gen isn't too large here, given that we pass
> this into a register later we probably want to check it here.

This is checked by of_pci_get_max_link_speed() internally:

	if (of_property_read_u32(node, "max-link-speed", &max_link_speed) ||
	    max_link_speed > 4)
		return -EINVAL;

	return max_link_speed;

> > +
> > +	pcie->ssc =3D of_property_read_bool(dn, "brcm,enable-ssc");
> > +
> > +	ret =3D irq_of_parse_and_map(pdev->dev.of_node, 0);
> > +	if (ret =3D=3D 0)
> > +		/* keep going, as we don't use this intr yet */
> > +		dev_warn(pcie->dev, "cannot get PCIe interrupt\n");
> > +	else
> > +		pcie->irq =3D ret;
>=20
> Given we don't use it yet, please remove it from this patch.

OK

Regards,
Nicolas


--=-KVAGBPzyH74bWmVlL5Yb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3EVLEACgkQlfZmHno8
x/41ggf+LAqDS2l5wlMDe2akhtVq8yaYBaNJpQhx8vO1HRoYOZDBVX0VBlfsIo8X
HEVKL9tj0OKUBWnsfaN8NKTHfVNAuUFugTlLH3wVPIbEEJ0nekmU0gtpIj5/ZYmH
0Kqo6/cjNA0P/lfBGDlLQr4xESdWCWCnQwGZ08FRLvBxlYj8WbM4Nl+CUpvbmNsg
ZMRedpUadFOiR7cTriTMMQ8y6dt3EPxBiO8KnfwP/tt3jJAz3689dhvMB22DF3qH
jb0CQez9SFQ4R029AEl/ukN0ZK5K8CBKK/qORtm1l4yeS/YBRzjvzzSXT7SY6H6W
ejIPPvIUsCrC5BGzBSFi8+6ZM4KYcg==
=AUdn
-----END PGP SIGNATURE-----

--=-KVAGBPzyH74bWmVlL5Yb--



--===============7937437324867107958==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7937437324867107958==--


