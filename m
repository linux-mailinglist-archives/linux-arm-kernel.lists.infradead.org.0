Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1590D120323
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:02:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+5ayi0cziQL3ZyCMj3iZr+38A6c8osp+1etjz8lMcs0=; b=ESaFz97K8D7L5Q
	eP6cOr4xBwD8JGVEOalDJHmTA7YrfsYPlyqEmoV5jf6647ddqM+dXZE2HpqGgiKBSvQmg3bbSh92t
	DokvbV8Iglu0LlQvliFFakzKq3z/SEtdiQ67DhNsyC8/6150TSWOQ3bgblVRH3pBCettQmRRCdSPG
	S0nb5uLQ0mpfLJvfcpN6lDJepIxpaCo4My4i5OPN5rCVQgW0b181kKQ0CiOpn6+RHsZ8TZQT3oGLt
	lXuYTni2GgcysGX3UNYbzsex6v8wqmSxchH+qpnwdJw7G/oxFcNTvVQ5BIjU62CZmX6qC+RjOwwnB
	LwtY7yRrtR/lXNVBKOFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igo8u-0003rT-2l; Mon, 16 Dec 2019 11:02:24 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igo82-00036x-Ea; Mon, 16 Dec 2019 11:01:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 25A22ACC6;
 Mon, 16 Dec 2019 11:01:29 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: andrew.murray@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v5 3/6] PCI: brcmstb: Add Broadcom STB PCIe host controller
 driver
Date: Mon, 16 Dec 2019 12:01:09 +0100
Message-Id: <20191216110113.30436-4-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191216110113.30436-1-nsaenzjulienne@suse.de>
References: <20191216110113.30436-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_030130_800432_3B8FE2E4 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mbrugger@suse.com, linux-pci@vger.kernel.org, phil@raspberrypi.org,
 jeremy.linton@arm.com, wahrenst@gmx.net, james.quinlan@broadcom.com,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jim Quinlan <james.quinlan@broadcom.com>

This adds a basic driver for Broadcom's STB PCIe controller, for now
aimed at Raspberry Pi 4's SoC, bcm2711.

Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
Co-developed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Jeremy Linton <jeremy.linton@arm.com>

---

Changes since v3:
  - Update commit message
  - rollback roundup_pow_two usage, it'll be updated later down the line
  - Remove comment in register definition

Changes since v2:
  - Correct rc_bar2_offset sign
  - Invert IRQ clear and masking in setup code
  - Use bitfield.h, redo all register ops while keeping the register
    names intact
  - Remove all SHIFT register definitions
  - Get rid of all _RB writes
  - Get rid of of_data
  - Don't iterate over inexisting dma-ranges
  - Add comment regarding dma-ranges validation
  - Small cosmetic cleanups
  - Fix license mismatch
  - Set driver Kconfig tristate
  - Didn't add any comment about the controller not being I/O coherent
    for now as I wait for Jeremy's reply

Changes since v1:
  - Fix Kconfig
  - Remove pci domain check
  - Remove all MSI related code
  - Remove supend/resume code
  - Simplify link state wait routine
  - Prefix all functions
  - Use of_device_get_match_data()
  - Use devm_clk_get_optional()
  - Get rid of irq variable
  - Use STB all over the driver
  - Simplify map_bus() function
  - Fix license mismatch
  - Remove unused register definitions
  - Small cleanups, spell errors

This is based on Jim's original submission[1] but adapted and tailored
specifically to bcm2711's needs (that's the Raspberry Pi 4). Support for
the rest of the brcmstb family will soon follow once we get support for
multiple dma-ranges in dma/direct.

[1] https://patchwork.kernel.org/patch/10605959/

 drivers/pci/controller/Kconfig        |   8 +
 drivers/pci/controller/Makefile       |   1 +
 drivers/pci/controller/pcie-brcmstb.c | 748 ++++++++++++++++++++++++++
 3 files changed, 757 insertions(+)
 create mode 100644 drivers/pci/controller/pcie-brcmstb.c

diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
index c77069c8ee5d..27504f108ee5 100644
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -253,6 +253,14 @@ config VMD
 	  To compile this driver as a module, choose M here: the
 	  module will be called vmd.
 
+config PCIE_BRCMSTB
+	tristate "Broadcom Brcmstb PCIe host controller"
+	depends on ARCH_BCM2835 || COMPILE_TEST
+	depends on OF
+	help
+	  Say Y here to enable PCIe host controller support for
+	  Broadcom STB based SoCs, like the Raspberry Pi 4.
+
 config PCI_HYPERV_INTERFACE
 	tristate "Hyper-V PCI Interface"
 	depends on X86 && HYPERV && PCI_MSI && PCI_MSI_IRQ_DOMAIN && X86_64
diff --git a/drivers/pci/controller/Makefile b/drivers/pci/controller/Makefile
index 3d4f597f15ce..01b2502a5323 100644
--- a/drivers/pci/controller/Makefile
+++ b/drivers/pci/controller/Makefile
@@ -28,6 +28,7 @@ obj-$(CONFIG_PCIE_MEDIATEK) += pcie-mediatek.o
 obj-$(CONFIG_PCIE_MOBIVEIL) += pcie-mobiveil.o
 obj-$(CONFIG_PCIE_TANGO_SMP8759) += pcie-tango.o
 obj-$(CONFIG_VMD) += vmd.o
+obj-$(CONFIG_PCIE_BRCMSTB) += pcie-brcmstb.o
 # pcie-hisi.o quirks are needed even without CONFIG_PCIE_DW
 obj-y				+= dwc/
 
diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
new file mode 100644
index 000000000000..dd681164faa0
--- /dev/null
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -0,0 +1,748 @@
+// SPDX-License-Identifier: GPL-2.0+
+/* Copyright (C) 2009 - 2019 Broadcom */
+
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/compiler.h>
+#include <linux/delay.h>
+#include <linux/init.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/ioport.h>
+#include <linux/irqdomain.h>
+#include <linux/kernel.h>
+#include <linux/list.h>
+#include <linux/log2.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/of_pci.h>
+#include <linux/of_platform.h>
+#include <linux/pci.h>
+#include <linux/printk.h>
+#include <linux/sizes.h>
+#include <linux/slab.h>
+#include <linux/string.h>
+#include <linux/types.h>
+
+#include "../pci.h"
+
+/* BRCM_PCIE_CAP_REGS - Offset for the mandatory capability config regs */
+#define BRCM_PCIE_CAP_REGS				0x00ac
+
+/* Broadcom STB PCIe Register Offsets */
+#define PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1				0x0188
+#define  PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1_ENDIAN_MODE_BAR2_MASK	0xc
+#define  PCIE_RC_CFG_VENDOR_SPCIFIC_REG1_LITTLE_ENDIAN			0x0
+
+#define PCIE_RC_CFG_PRIV1_ID_VAL3			0x043c
+#define  PCIE_RC_CFG_PRIV1_ID_VAL3_CLASS_CODE_MASK	0xffffff
+
+#define PCIE_RC_DL_MDIO_ADDR				0x1100
+#define PCIE_RC_DL_MDIO_WR_DATA				0x1104
+#define PCIE_RC_DL_MDIO_RD_DATA				0x1108
+
+#define PCIE_MISC_MISC_CTRL				0x4008
+#define  PCIE_MISC_MISC_CTRL_SCB_ACCESS_EN_MASK		0x1000
+#define  PCIE_MISC_MISC_CTRL_CFG_READ_UR_MODE_MASK	0x2000
+#define  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_MASK	0x300000
+#define  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_128		0x0
+#define  PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK		0xf8000000
+
+#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO		0x400c
+#define PCIE_MEM_WIN0_LO(win)	\
+		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO + ((win) * 4)
+
+#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_HI		0x4010
+#define PCIE_MEM_WIN0_HI(win)	\
+		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_HI + ((win) * 4)
+
+#define PCIE_MISC_RC_BAR1_CONFIG_LO			0x402c
+#define  PCIE_MISC_RC_BAR1_CONFIG_LO_SIZE_MASK		0x1f
+
+#define PCIE_MISC_RC_BAR2_CONFIG_LO			0x4034
+#define  PCIE_MISC_RC_BAR2_CONFIG_LO_SIZE_MASK		0x1f
+#define PCIE_MISC_RC_BAR2_CONFIG_HI			0x4038
+
+#define PCIE_MISC_RC_BAR3_CONFIG_LO			0x403c
+#define  PCIE_MISC_RC_BAR3_CONFIG_LO_SIZE_MASK		0x1f
+
+#define PCIE_MISC_PCIE_CTRL				0x4064
+#define  PCIE_MISC_PCIE_CTRL_PCIE_L23_REQUEST_MASK	0x1
+
+#define PCIE_MISC_PCIE_STATUS				0x4068
+#define  PCIE_MISC_PCIE_STATUS_PCIE_PORT_MASK		0x80
+#define  PCIE_MISC_PCIE_STATUS_PCIE_DL_ACTIVE_MASK	0x20
+#define  PCIE_MISC_PCIE_STATUS_PCIE_PHYLINKUP_MASK	0x10
+#define  PCIE_MISC_PCIE_STATUS_PCIE_LINK_IN_L23_MASK	0x40
+
+#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT		0x4070
+#define  PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_LIMIT_MASK	0xfff00000
+#define  PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_BASE_MASK	0xfff0
+#define PCIE_MEM_WIN0_BASE_LIMIT(win)	\
+		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT + ((win) * 4)
+
+#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_HI			0x4080
+#define  PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_HI_BASE_MASK	0xff
+#define PCIE_MEM_WIN0_BASE_HI(win)	\
+		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_HI + ((win) * 8)
+
+#define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LIMIT_HI			0x4084
+#define  PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LIMIT_HI_LIMIT_MASK	0xff
+#define PCIE_MEM_WIN0_LIMIT_HI(win)	\
+		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LIMIT_HI + ((win) * 8)
+
+#define PCIE_MISC_HARD_PCIE_HARD_DEBUG					0x4204
+#define  PCIE_MISC_HARD_PCIE_HARD_DEBUG_CLKREQ_DEBUG_ENABLE_MASK	0x2
+#define  PCIE_MISC_HARD_PCIE_HARD_DEBUG_SERDES_IDDQ_MASK		0x08000000
+
+#define PCIE_MSI_INTR2_STATUS				0x4500
+#define PCIE_MSI_INTR2_CLR				0x4508
+#define PCIE_MSI_INTR2_MASK_SET				0x4510
+#define PCIE_MSI_INTR2_MASK_CLR				0x4514
+
+#define PCIE_EXT_CFG_DATA				0x8000
+
+#define PCIE_EXT_CFG_INDEX				0x9000
+#define  PCIE_EXT_BUSNUM_SHIFT				20
+#define  PCIE_EXT_SLOT_SHIFT				15
+#define  PCIE_EXT_FUNC_SHIFT				12
+
+#define PCIE_RGR1_SW_INIT_1				0x9210
+#define  PCIE_RGR1_SW_INIT_1_PERST_MASK			0x1
+#define  PCIE_RGR1_SW_INIT_1_INIT_MASK			0x2
+
+/* PCIe parameters */
+#define BRCM_NUM_PCIE_OUT_WINS		0x4
+
+/* MDIO registers */
+#define MDIO_PORT0			0x0
+#define MDIO_DATA_MASK			0x7fffffff
+#define MDIO_PORT_MASK			0xf0000
+#define MDIO_REGAD_MASK			0xffff
+#define MDIO_CMD_MASK			0xfff00000
+#define MDIO_CMD_READ			0x1
+#define MDIO_CMD_WRITE			0x0
+#define MDIO_DATA_DONE_MASK		0x80000000
+#define MDIO_RD_DONE(x)			(((x) & MDIO_DATA_DONE_MASK) ? 1 : 0)
+#define MDIO_WT_DONE(x)			(((x) & MDIO_DATA_DONE_MASK) ? 0 : 1)
+#define SSC_REGS_ADDR			0x1100
+#define SET_ADDR_OFFSET			0x1f
+#define SSC_CNTL_OFFSET			0x2
+#define SSC_CNTL_OVRD_EN_MASK		0x8000
+#define SSC_CNTL_OVRD_VAL_MASK		0x4000
+#define SSC_STATUS_OFFSET		0x1
+#define SSC_STATUS_SSC_MASK		0x400
+#define SSC_STATUS_PLL_LOCK_MASK	0x800
+
+/* Internal PCIe Host Controller Information.*/
+struct brcm_pcie {
+	struct device		*dev;
+	void __iomem		*base;
+	struct clk		*clk;
+	struct pci_bus		*root_bus;
+	struct device_node	*np;
+	bool			ssc;
+	int			gen;
+};
+
+/*
+ * This is to convert the size of the inbound "BAR" region to the
+ * non-linear values of PCIE_X_MISC_RC_BAR[123]_CONFIG_LO.SIZE
+ */
+static int brcm_pcie_encode_ibar_size(u64 size)
+{
+	int log2_in = ilog2(size);
+
+	if (log2_in >= 12 && log2_in <= 15)
+		/* Covers 4KB to 32KB (inclusive) */
+		return (log2_in - 12) + 0x1c;
+	else if (log2_in >= 16 && log2_in <= 35)
+		/* Covers 64KB to 32GB, (inclusive) */
+		return log2_in - 15;
+	/* Something is awry so disable */
+	return 0;
+}
+
+static u32 brcm_pcie_mdio_form_pkt(int port, int regad, int cmd)
+{
+	u32 pkt = 0;
+
+	pkt |= FIELD_PREP(MDIO_PORT_MASK, port);
+	pkt |= FIELD_PREP(MDIO_REGAD_MASK, regad);
+	pkt |= FIELD_PREP(MDIO_CMD_MASK, cmd);
+
+	return pkt;
+}
+
+/* negative return value indicates error */
+static int brcm_pcie_mdio_read(void __iomem *base, u8 port, u8 regad, u32 *val)
+{
+	int tries;
+	u32 data;
+
+	writel(brcm_pcie_mdio_form_pkt(port, regad, MDIO_CMD_READ),
+		   base + PCIE_RC_DL_MDIO_ADDR);
+	readl(base + PCIE_RC_DL_MDIO_ADDR);
+
+	data = readl(base + PCIE_RC_DL_MDIO_RD_DATA);
+	for (tries = 0; !MDIO_RD_DONE(data) && tries < 10; tries++) {
+		udelay(10);
+		data = readl(base + PCIE_RC_DL_MDIO_RD_DATA);
+	}
+
+	*val = FIELD_GET(MDIO_DATA_MASK, data);
+	return MDIO_RD_DONE(data) ? 0 : -EIO;
+}
+
+/* negative return value indicates error */
+static int brcm_pcie_mdio_write(void __iomem *base, u8 port,
+				u8 regad, u16 wrdata)
+{
+	int tries;
+	u32 data;
+
+	writel(brcm_pcie_mdio_form_pkt(port, regad, MDIO_CMD_WRITE),
+		   base + PCIE_RC_DL_MDIO_ADDR);
+	readl(base + PCIE_RC_DL_MDIO_ADDR);
+	writel(MDIO_DATA_DONE_MASK | wrdata, base + PCIE_RC_DL_MDIO_WR_DATA);
+
+	data = readl(base + PCIE_RC_DL_MDIO_WR_DATA);
+	for (tries = 0; !MDIO_WT_DONE(data) && tries < 10; tries++) {
+		udelay(10);
+		data = readl(base + PCIE_RC_DL_MDIO_WR_DATA);
+	}
+
+	return MDIO_WT_DONE(data) ? 0 : -EIO;
+}
+
+/*
+ * Configures device for Spread Spectrum Clocking (SSC) mode; a negative
+ * return value indicates error.
+ */
+static int brcm_pcie_set_ssc(struct brcm_pcie *pcie)
+{
+	int pll, ssc;
+	int ret;
+	u32 tmp;
+
+	ret = brcm_pcie_mdio_write(pcie->base, MDIO_PORT0, SET_ADDR_OFFSET,
+				   SSC_REGS_ADDR);
+	if (ret < 0)
+		return ret;
+
+	ret = brcm_pcie_mdio_read(pcie->base, MDIO_PORT0,
+				  SSC_CNTL_OFFSET, &tmp);
+	if (ret < 0)
+		return ret;
+
+	u32p_replace_bits(&tmp, 1, SSC_CNTL_OVRD_EN_MASK);
+	u32p_replace_bits(&tmp, 1, SSC_CNTL_OVRD_VAL_MASK);
+	ret = brcm_pcie_mdio_write(pcie->base, MDIO_PORT0,
+				   SSC_CNTL_OFFSET, tmp);
+	if (ret < 0)
+		return ret;
+
+	usleep_range(1000, 2000);
+	ret = brcm_pcie_mdio_read(pcie->base, MDIO_PORT0,
+				  SSC_STATUS_OFFSET, &tmp);
+	if (ret < 0)
+		return ret;
+
+	ssc = FIELD_GET(SSC_STATUS_SSC_MASK, tmp);
+	pll = FIELD_GET(SSC_STATUS_PLL_LOCK_MASK, tmp);
+
+	return ssc && pll ? 0 : -EIO;
+}
+
+/* Limits operation to a specific generation (1, 2, or 3) */
+static void brcm_pcie_set_gen(struct brcm_pcie *pcie, int gen)
+{
+	u16 lnkctl2 = readw(pcie->base + BRCM_PCIE_CAP_REGS + PCI_EXP_LNKCTL2);
+	u32 lnkcap = readl(pcie->base + BRCM_PCIE_CAP_REGS + PCI_EXP_LNKCAP);
+
+	lnkcap = (lnkcap & ~PCI_EXP_LNKCAP_SLS) | gen;
+	writel(lnkcap, pcie->base + BRCM_PCIE_CAP_REGS + PCI_EXP_LNKCAP);
+
+	lnkctl2 = (lnkctl2 & ~0xf) | gen;
+	writew(lnkctl2, pcie->base + BRCM_PCIE_CAP_REGS + PCI_EXP_LNKCTL2);
+}
+
+static void brcm_pcie_set_outbound_win(struct brcm_pcie *pcie,
+				       unsigned int win, u64 cpu_addr,
+				       u64 pcie_addr, u64 size)
+{
+	u32 cpu_addr_mb_high, limit_addr_mb_high;
+	phys_addr_t cpu_addr_mb, limit_addr_mb;
+	int high_addr_shift;
+	u32 tmp;
+
+	/* Set the base of the pcie_addr window */
+	writel(lower_32_bits(pcie_addr), pcie->base + PCIE_MEM_WIN0_LO(win));
+	writel(upper_32_bits(pcie_addr), pcie->base + PCIE_MEM_WIN0_HI(win));
+
+	/* Write the addr base & limit lower bits (in MBs) */
+	cpu_addr_mb = cpu_addr / SZ_1M;
+	limit_addr_mb = (cpu_addr + size - 1) / SZ_1M;
+
+	tmp = readl(pcie->base + PCIE_MEM_WIN0_BASE_LIMIT(win));
+	u32p_replace_bits(&tmp, cpu_addr_mb,
+			  PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_BASE_MASK);
+	u32p_replace_bits(&tmp, limit_addr_mb,
+			  PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_LIMIT_MASK);
+	writel(tmp, pcie->base + PCIE_MEM_WIN0_BASE_LIMIT(win));
+
+	/* Write the cpu & limit addr upper bits */
+	high_addr_shift =
+		HWEIGHT32(PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_BASE_MASK);
+
+	cpu_addr_mb_high = cpu_addr_mb >> high_addr_shift;
+	tmp = readl(pcie->base + PCIE_MEM_WIN0_BASE_HI(win));
+	u32p_replace_bits(&tmp, cpu_addr_mb_high,
+			  PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_HI_BASE_MASK);
+	writel(tmp, pcie->base + PCIE_MEM_WIN0_BASE_HI(win));
+
+	limit_addr_mb_high = limit_addr_mb >> high_addr_shift;
+	tmp = readl(pcie->base + PCIE_MEM_WIN0_LIMIT_HI(win));
+	u32p_replace_bits(&tmp, limit_addr_mb_high,
+			  PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LIMIT_HI_LIMIT_MASK);
+	writel(tmp, pcie->base + PCIE_MEM_WIN0_LIMIT_HI(win));
+}
+
+/* The controller is capable of serving in both RC and EP roles */
+static bool brcm_pcie_rc_mode(struct brcm_pcie *pcie)
+{
+	void __iomem *base = pcie->base;
+	u32 val = readl(base + PCIE_MISC_PCIE_STATUS);
+
+	return !!FIELD_GET(PCIE_MISC_PCIE_STATUS_PCIE_PORT_MASK, val);
+}
+
+static bool brcm_pcie_link_up(struct brcm_pcie *pcie)
+{
+	u32 val = readl(pcie->base + PCIE_MISC_PCIE_STATUS);
+	u32 dla = FIELD_GET(PCIE_MISC_PCIE_STATUS_PCIE_DL_ACTIVE_MASK, val);
+	u32 plu = FIELD_GET(PCIE_MISC_PCIE_STATUS_PCIE_PHYLINKUP_MASK, val);
+
+	return dla && plu;
+}
+
+/* Configuration space read/write support */
+static inline int brcm_pcie_cfg_index(int busnr, int devfn, int reg)
+{
+	return ((PCI_SLOT(devfn) & 0x1f) << PCIE_EXT_SLOT_SHIFT)
+		| ((PCI_FUNC(devfn) & 0x07) << PCIE_EXT_FUNC_SHIFT)
+		| (busnr << PCIE_EXT_BUSNUM_SHIFT)
+		| (reg & ~3);
+}
+
+static void __iomem *brcm_pcie_map_conf(struct pci_bus *bus, unsigned int devfn,
+					int where)
+{
+	struct brcm_pcie *pcie = bus->sysdata;
+	void __iomem *base = pcie->base;
+	int idx;
+
+	/* Accesses to the RC go right to the RC registers if slot==0 */
+	if (pci_is_root_bus(bus))
+		return PCI_SLOT(devfn) ? NULL : base + where;
+
+	/* For devices, write to the config space index register */
+	idx = brcm_pcie_cfg_index(bus->number, devfn, 0);
+	writel(idx, pcie->base + PCIE_EXT_CFG_INDEX);
+	return base + PCIE_EXT_CFG_DATA + where;
+}
+
+static struct pci_ops brcm_pcie_ops = {
+	.map_bus = brcm_pcie_map_conf,
+	.read = pci_generic_config_read,
+	.write = pci_generic_config_write,
+};
+
+static inline void brcm_pcie_bridge_sw_init_set(struct brcm_pcie *pcie, u32 val)
+{
+	u32 tmp;
+
+	tmp = readl(pcie->base + PCIE_RGR1_SW_INIT_1);
+	u32p_replace_bits(&tmp, val, PCIE_RGR1_SW_INIT_1_INIT_MASK);
+	writel(tmp, pcie->base + PCIE_RGR1_SW_INIT_1);
+}
+
+static inline void brcm_pcie_perst_set(struct brcm_pcie *pcie, u32 val)
+{
+	u32 tmp;
+
+	tmp = readl(pcie->base + PCIE_RGR1_SW_INIT_1);
+	u32p_replace_bits(&tmp, val, PCIE_RGR1_SW_INIT_1_PERST_MASK);
+	writel(tmp, pcie->base + PCIE_RGR1_SW_INIT_1);
+}
+
+static inline int brcm_pcie_get_rc_bar2_size_and_offset(struct brcm_pcie *pcie,
+							u64 *rc_bar2_size,
+							u64 *rc_bar2_offset)
+{
+	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
+	struct device *dev = pcie->dev;
+	struct resource_entry *entry;
+
+	entry = resource_list_first_type(&bridge->dma_ranges, IORESOURCE_MEM);
+	if (!entry)
+		return -ENODEV;
+
+	*rc_bar2_offset = -entry->offset;
+	*rc_bar2_size = 1ULL << fls64(entry->res->end - entry->res->start);
+
+	/*
+	 * We validate the inbound memory view even though we should trust
+	 * whatever the device-tree provides. This is because of an HW issue on
+	 * early Raspberry Pi 4's revisions (bcm2711). It turns out its
+	 * firmware has to dynamically edit dma-ranges due to a bug on the
+	 * PCIe controller integration, which prohibits any access above the
+	 * lower 3GB of memory. Given this, we decided to keep the dma-ranges
+	 * in check, avoiding hard to debug device-tree related issues in the
+	 * future:
+	 *
+	 * The PCIe host controller by design must set the inbound viewport to
+	 * be a contiguous arrangement of all of the system's memory.  In
+	 * addition, its size mut be a power of two.  To further complicate
+	 * matters, the viewport must start on a pcie-address that is aligned
+	 * on a multiple of its size.  If a portion of the viewport does not
+	 * represent system memory -- e.g. 3GB of memory requires a 4GB
+	 * viewport -- we can map the outbound memory in or after 3GB and even
+	 * though the viewport will overlap the outbound memory the controller
+	 * will know to send outbound memory downstream and everything else
+	 * upstream.
+	 *
+	 * For example:
+	 *
+	 * - The best-case scenario, memory up to 3GB, is to place the inbound
+	 *   region in the first 4GB of pcie-space, as some legacy devices can
+	 *   only address 32bits. We would also like to put the MSI under 4GB
+	 *   as well, since some devices require a 32bit MSI target address.
+	 *
+	 * - If the system memory is 4GB or larger we cannot start the inbound
+	 *   region at location 0 (since we have to allow some space for
+	 *   outbound memory @ 3GB). So instead it will  start at the 1x
+	 *   multiple of its size
+	 */
+	if (!*rc_bar2_size || *rc_bar2_offset % *rc_bar2_size ||
+	    (*rc_bar2_offset < SZ_4G && *rc_bar2_offset > SZ_2G)) {
+		dev_err(dev, "Invalid rc_bar2_offset/size: size 0x%llx, off 0x%llx\n",
+			*rc_bar2_size, *rc_bar2_offset);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int brcm_pcie_setup(struct brcm_pcie *pcie)
+{
+	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
+	u64 rc_bar2_offset, rc_bar2_size;
+	void __iomem *base = pcie->base;
+	struct device *dev = pcie->dev;
+	struct resource_entry *entry;
+	unsigned int scb_size_val;
+	bool ssc_good = false;
+	struct resource *res;
+	int num_out_wins = 0;
+	u16 nlw, cls, lnksta;
+	int i, ret;
+	u32 tmp;
+
+	/* Reset the bridge */
+	brcm_pcie_bridge_sw_init_set(pcie, 1);
+
+	usleep_range(100, 200);
+
+	/* Take the bridge out of reset */
+	brcm_pcie_bridge_sw_init_set(pcie, 0);
+
+	tmp = readl(base + PCIE_MISC_HARD_PCIE_HARD_DEBUG);
+	tmp &= ~PCIE_MISC_HARD_PCIE_HARD_DEBUG_SERDES_IDDQ_MASK;
+	writel(tmp, base + PCIE_MISC_HARD_PCIE_HARD_DEBUG);
+	/* Wait for SerDes to be stable */
+	usleep_range(100, 200);
+
+	/* Set SCB_MAX_BURST_SIZE, CFG_READ_UR_MODE, SCB_ACCESS_EN */
+	u32p_replace_bits(&tmp, 1, PCIE_MISC_MISC_CTRL_SCB_ACCESS_EN_MASK);
+	u32p_replace_bits(&tmp, 1, PCIE_MISC_MISC_CTRL_CFG_READ_UR_MODE_MASK);
+	u32p_replace_bits(&tmp, PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_128,
+			  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_MASK);
+	writel(tmp, base + PCIE_MISC_MISC_CTRL);
+
+	ret = brcm_pcie_get_rc_bar2_size_and_offset(pcie, &rc_bar2_size,
+						    &rc_bar2_offset);
+	if (ret)
+		return ret;
+
+	tmp = lower_32_bits(rc_bar2_offset);
+	u32p_replace_bits(&tmp, brcm_pcie_encode_ibar_size(rc_bar2_size),
+			  PCIE_MISC_RC_BAR2_CONFIG_LO_SIZE_MASK);
+	writel(tmp, base + PCIE_MISC_RC_BAR2_CONFIG_LO);
+	writel(upper_32_bits(rc_bar2_offset),
+	       base + PCIE_MISC_RC_BAR2_CONFIG_HI);
+
+	scb_size_val = rc_bar2_size ?
+		       ilog2(rc_bar2_size) - 15 : 0xf; /* 0xf is 1GB */
+	tmp = readl(base + PCIE_MISC_MISC_CTRL);
+	u32p_replace_bits(&tmp, scb_size_val,
+			  PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK);
+	writel(tmp, base + PCIE_MISC_MISC_CTRL);
+
+	/* disable the PCIe->GISB memory window (RC_BAR1) */
+	tmp = readl(base + PCIE_MISC_RC_BAR1_CONFIG_LO);
+	tmp &= ~PCIE_MISC_RC_BAR1_CONFIG_LO_SIZE_MASK;
+	writel(tmp, base + PCIE_MISC_RC_BAR1_CONFIG_LO);
+
+	/* disable the PCIe->SCB memory window (RC_BAR3) */
+	tmp = readl(base + PCIE_MISC_RC_BAR3_CONFIG_LO);
+	tmp &= ~PCIE_MISC_RC_BAR3_CONFIG_LO_SIZE_MASK;
+	writel(tmp, base + PCIE_MISC_RC_BAR3_CONFIG_LO);
+
+	/* Mask all interrupts since we are not handling any yet */
+	writel(0xffffffff, pcie->base + PCIE_MSI_INTR2_MASK_SET);
+
+	/* clear any interrupts we find on boot */
+	writel(0xffffffff, pcie->base + PCIE_MSI_INTR2_CLR);
+
+	if (pcie->gen)
+		brcm_pcie_set_gen(pcie, pcie->gen);
+
+	/* Unassert the fundamental reset */
+	brcm_pcie_perst_set(pcie, 0);
+
+	/*
+	 * Give the RC/EP time to wake up, before trying to configure RC.
+	 * Intermittently check status for link-up, up to a total of 100ms.
+	 */
+	for (i = 0; i < 100 && !brcm_pcie_link_up(pcie); i += 5)
+		msleep(5);
+
+	if (!brcm_pcie_link_up(pcie)) {
+		dev_err(dev, "link down\n");
+		return -ENODEV;
+	}
+
+	if (!brcm_pcie_rc_mode(pcie)) {
+		dev_err(dev, "PCIe misconfigured; is in EP mode\n");
+		return -EINVAL;
+	}
+
+	resource_list_for_each_entry(entry, &bridge->windows) {
+		res = entry->res;
+
+		if (resource_type(res) != IORESOURCE_MEM)
+			continue;
+
+		if (num_out_wins >= BRCM_NUM_PCIE_OUT_WINS) {
+			dev_err(pcie->dev, "too many outbound wins\n");
+			return -EINVAL;
+		}
+
+		brcm_pcie_set_outbound_win(pcie, num_out_wins, res->start,
+					   res->start - entry->offset,
+					   res->end - res->start + 1);
+		num_out_wins++;
+	}
+
+	/*
+	 * For config space accesses on the RC, show the right class for
+	 * a PCIe-PCIe bridge (the default setting is to be EP mode).
+	 */
+	tmp = readl(base + PCIE_RC_CFG_PRIV1_ID_VAL3);
+	u32p_replace_bits(&tmp, 0x060400,
+			  PCIE_RC_CFG_PRIV1_ID_VAL3_CLASS_CODE_MASK);
+	writel(tmp, base + PCIE_RC_CFG_PRIV1_ID_VAL3);
+
+	if (pcie->ssc) {
+		ret = brcm_pcie_set_ssc(pcie);
+		if (ret == 0)
+			ssc_good = true;
+		else
+			dev_err(dev, "failed attempt to enter ssc mode\n");
+	}
+
+	lnksta = readw(base + BRCM_PCIE_CAP_REGS + PCI_EXP_LNKSTA);
+	cls = FIELD_GET(PCI_EXP_LNKSTA_CLS, lnksta);
+	nlw = FIELD_GET(PCI_EXP_LNKSTA_NLW, lnksta);
+	dev_info(dev, "link up, %s x%u %s\n",
+		 PCIE_SPEED2STR(cls + PCI_SPEED_133MHz_PCIX_533),
+		 nlw, ssc_good ? "(SSC)" : "(!SSC)");
+
+	/* PCIe->SCB endian mode for BAR */
+	tmp = readl(base + PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1);
+	u32p_replace_bits(&tmp, PCIE_RC_CFG_VENDOR_SPCIFIC_REG1_LITTLE_ENDIAN,
+		PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1_ENDIAN_MODE_BAR2_MASK);
+	writel(tmp, base + PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1);
+
+	/*
+	 * Refclk from RC should be gated with CLKREQ# input when ASPM L0s,L1
+	 * is enabled => setting the CLKREQ_DEBUG_ENABLE field to 1.
+	 */
+	tmp = readl(base + PCIE_MISC_HARD_PCIE_HARD_DEBUG);
+	tmp |= PCIE_MISC_HARD_PCIE_HARD_DEBUG_CLKREQ_DEBUG_ENABLE_MASK;
+	writel(tmp, base + PCIE_MISC_HARD_PCIE_HARD_DEBUG);
+
+	return 0;
+}
+
+/* L23 is a low-power PCIe link state */
+static void brcm_pcie_enter_l23(struct brcm_pcie *pcie)
+{
+	void __iomem *base = pcie->base;
+	int l23, i;
+	u32 tmp;
+
+	/* Assert request for L23 */
+	tmp = readl(base + PCIE_MISC_PCIE_CTRL);
+	u32p_replace_bits(&tmp, 1, PCIE_MISC_PCIE_CTRL_PCIE_L23_REQUEST_MASK);
+	writel(tmp, base + PCIE_MISC_PCIE_CTRL);
+
+	/* Wait up to 36 msec for L23 */
+	tmp = readl(base + PCIE_MISC_PCIE_STATUS);
+	l23 = FIELD_GET(PCIE_MISC_PCIE_STATUS_PCIE_LINK_IN_L23_MASK, tmp);
+	for (i = 0; i < 15 && !l23; i++) {
+		usleep_range(2000, 2400);
+		tmp = readl(base + PCIE_MISC_PCIE_STATUS);
+		l23 = FIELD_GET(PCIE_MISC_PCIE_STATUS_PCIE_LINK_IN_L23_MASK,
+				tmp);
+	}
+
+	if (!l23)
+		dev_err(pcie->dev, "failed to enter low-power link state\n");
+}
+
+static void brcm_pcie_turn_off(struct brcm_pcie *pcie)
+{
+	void __iomem *base = pcie->base;
+	int tmp;
+
+	if (brcm_pcie_link_up(pcie))
+		brcm_pcie_enter_l23(pcie);
+	/* Assert fundamental reset */
+	brcm_pcie_perst_set(pcie, 1);
+
+	/* Deassert request for L23 in case it was asserted */
+	tmp = readl(base + PCIE_MISC_PCIE_CTRL);
+	u32p_replace_bits(&tmp, 0, PCIE_MISC_PCIE_CTRL_PCIE_L23_REQUEST_MASK);
+	writel(tmp, base + PCIE_MISC_PCIE_CTRL);
+
+	/* Turn off SerDes */
+	tmp = readl(base + PCIE_MISC_HARD_PCIE_HARD_DEBUG);
+	u32p_replace_bits(&tmp, 1, PCIE_MISC_HARD_PCIE_HARD_DEBUG_SERDES_IDDQ_MASK);
+	writel(tmp, base + PCIE_MISC_HARD_PCIE_HARD_DEBUG);
+
+	/* Shutdown PCIe bridge */
+	brcm_pcie_bridge_sw_init_set(pcie, 1);
+}
+
+static void __brcm_pcie_remove(struct brcm_pcie *pcie)
+{
+	brcm_pcie_turn_off(pcie);
+	clk_disable_unprepare(pcie->clk);
+	clk_put(pcie->clk);
+}
+
+static int brcm_pcie_remove(struct platform_device *pdev)
+{
+	struct brcm_pcie *pcie = platform_get_drvdata(pdev);
+
+	pci_stop_root_bus(pcie->root_bus);
+	pci_remove_root_bus(pcie->root_bus);
+	__brcm_pcie_remove(pcie);
+
+	return 0;
+}
+
+static int brcm_pcie_probe(struct platform_device *pdev)
+{
+	struct device_node *np = pdev->dev.of_node;
+	struct pci_host_bridge *bridge;
+	struct brcm_pcie *pcie;
+	struct pci_bus *child;
+	struct resource *res;
+	int ret;
+
+	bridge = devm_pci_alloc_host_bridge(&pdev->dev, sizeof(*pcie));
+	if (!bridge)
+		return -ENOMEM;
+
+	pcie = pci_host_bridge_priv(bridge);
+	pcie->dev = &pdev->dev;
+	pcie->np = np;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	pcie->base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(pcie->base))
+		return PTR_ERR(pcie->base);
+
+	pcie->clk = devm_clk_get_optional(&pdev->dev, "sw_pcie");
+	if (IS_ERR(pcie->clk))
+		return PTR_ERR(pcie->clk);
+
+	ret = of_pci_get_max_link_speed(np);
+	pcie->gen = (ret < 0) ? 0 : ret;
+
+	pcie->ssc = of_property_read_bool(np, "brcm,enable-ssc");
+
+	ret = pci_parse_request_of_pci_ranges(pcie->dev, &bridge->windows,
+					      &bridge->dma_ranges, NULL);
+	if (ret)
+		return ret;
+
+	ret = clk_prepare_enable(pcie->clk);
+	if (ret) {
+		dev_err(&pdev->dev, "could not enable clock\n");
+		return ret;
+	}
+
+	ret = brcm_pcie_setup(pcie);
+	if (ret)
+		goto fail;
+
+	bridge->dev.parent = &pdev->dev;
+	bridge->busnr = 0;
+	bridge->ops = &brcm_pcie_ops;
+	bridge->sysdata = pcie;
+	bridge->map_irq = of_irq_parse_and_map_pci;
+	bridge->swizzle_irq = pci_common_swizzle;
+
+	ret = pci_scan_root_bus_bridge(bridge);
+	if (ret < 0) {
+		dev_err(pcie->dev, "Scanning root bridge failed\n");
+		goto fail;
+	}
+
+	pci_assign_unassigned_bus_resources(bridge->bus);
+	list_for_each_entry(child, &bridge->bus->children, node)
+		pcie_bus_configure_settings(child);
+	pci_bus_add_devices(bridge->bus);
+	platform_set_drvdata(pdev, pcie);
+	pcie->root_bus = bridge->bus;
+
+	return 0;
+fail:
+	__brcm_pcie_remove(pcie);
+	return ret;
+}
+
+static const struct of_device_id brcm_pcie_match[] = {
+	{ .compatible = "brcm,bcm2711-pcie" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, brcm_pcie_match);
+
+static struct platform_driver brcm_pcie_driver = {
+	.probe = brcm_pcie_probe,
+	.remove = brcm_pcie_remove,
+	.driver = {
+		.name = "brcm-pcie",
+		.of_match_table = brcm_pcie_match,
+	},
+};
+module_platform_driver(brcm_pcie_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("Broadcom STB PCIe RC driver");
+MODULE_AUTHOR("Broadcom");
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
