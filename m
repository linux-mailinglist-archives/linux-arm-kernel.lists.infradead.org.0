Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 380061C8AE9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 14:34:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oW95qROSH5GGFhLmhpHGUqrJgAWcJy1bb2PZ0b9vx80=; b=UHg5XmT5obOGv/SmLoynwjkcEu
	nC8a6M4ZBszzwtEvlL971ku2Q8ARCnwz8Nyfi/1dCpRZ00furzjSg6JLFuwqsNsdtwdtbKAr24Cek
	1IGfu1y63UDOaNCQan3Yqzj65kWuItqKfD5cDMyYUQC99vfrbIJcZHRMQf812eeTl4jGc9k0BVv/e
	2YMKLoaipM/K1RkuvVB1NFjxPrXCLrFvQ6Qud1Mr197Nh3nmL6cn9mciupDIIfCRYdD1Bw9XKxbJ7
	EwEt7VcrqrJpWpbFZZRWw8XsTzLv+d2qHk2v/77GXgcVxeI35PydgmTQbB3DiaRMN2SQN7cVQrgGE
	t4GZbCgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWfjc-0006Gc-2s; Thu, 07 May 2020 12:34:40 +0000
Received: from relmlor2.renesas.com ([210.160.252.172]
 helo=relmlie6.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWfjI-0006CC-5B; Thu, 07 May 2020 12:34:24 +0000
X-IronPort-AV: E=Sophos;i="5.73,363,1583161200"; d="scan'208";a="46285023"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
 by relmlie6.idc.renesas.com with ESMTP; 07 May 2020 21:34:18 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir5.idc.renesas.com (Postfix) with ESMTP id B2DCD4004D0E;
 Thu,  7 May 2020 21:34:13 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v10 2/8] PCI: rcar: Move shareable code to a common file
Date: Thu,  7 May 2020 13:33:13 +0100
Message-Id: <1588854799-13710-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588854799-13710-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1588854799-13710-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_053420_876757_01EE19E8 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Jingoo Han <jingoohan1@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tom Joseph <tjoseph@cadence.com>,
 Rob Herring <robh+dt@kernel.org>, Prabhakar <prabhakar.csengg@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 Marek Vasut <marek.vasut+renesas@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move shareable code to common file pcie-rcar.c and the #defines to
pcie-rcar.h so that the common code can be reused with endpoint driver.
There are no functional changes with this patch for the host controller
driver.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
 drivers/pci/controller/Makefile         |   2 +-
 drivers/pci/controller/pcie-rcar-host.c | 404 +++++++-----------------
 drivers/pci/controller/pcie-rcar.c      | 117 +++++++
 drivers/pci/controller/pcie-rcar.h      | 131 ++++++++
 4 files changed, 361 insertions(+), 293 deletions(-)
 create mode 100644 drivers/pci/controller/pcie-rcar.c
 create mode 100644 drivers/pci/controller/pcie-rcar.h

diff --git a/drivers/pci/controller/Makefile b/drivers/pci/controller/Makefile
index 9dbccb5b24e1..39802ee32946 100644
--- a/drivers/pci/controller/Makefile
+++ b/drivers/pci/controller/Makefile
@@ -7,7 +7,7 @@ obj-$(CONFIG_PCI_MVEBU) += pci-mvebu.o
 obj-$(CONFIG_PCI_AARDVARK) += pci-aardvark.o
 obj-$(CONFIG_PCI_TEGRA) += pci-tegra.o
 obj-$(CONFIG_PCI_RCAR_GEN2) += pci-rcar-gen2.o
-obj-$(CONFIG_PCIE_RCAR_HOST) += pcie-rcar-host.o
+obj-$(CONFIG_PCIE_RCAR_HOST) += pcie-rcar.o pcie-rcar-host.o
 obj-$(CONFIG_PCI_HOST_COMMON) += pci-host-common.o
 obj-$(CONFIG_PCI_HOST_GENERIC) += pci-host-generic.o
 obj-$(CONFIG_PCIE_XILINX) += pcie-xilinx.o
diff --git a/drivers/pci/controller/pcie-rcar-host.c b/drivers/pci/controller/pcie-rcar-host.c
index 59e55f56e386..d210a36561be 100644
--- a/drivers/pci/controller/pcie-rcar-host.c
+++ b/drivers/pci/controller/pcie-rcar-host.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
  * PCIe driver for Renesas R-Car SoCs
- *  Copyright (C) 2014 Renesas Electronics Europe Ltd
+ *  Copyright (C) 2014-2020 Renesas Electronics Europe Ltd
  *
  * Based on:
  *  arch/sh/drivers/pci/pcie-sh7786.c
@@ -30,104 +30,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/slab.h>
 
-#define PCIECAR			0x000010
-#define PCIECCTLR		0x000018
-#define  CONFIG_SEND_ENABLE	BIT(31)
-#define  TYPE0			(0 << 8)
-#define  TYPE1			BIT(8)
-#define PCIECDR			0x000020
-#define PCIEMSR			0x000028
-#define PCIEINTXR		0x000400
-#define PCIEPHYSR		0x0007f0
-#define  PHYRDY			BIT(0)
-#define PCIEMSITXR		0x000840
-
-/* Transfer control */
-#define PCIETCTLR		0x02000
-#define  DL_DOWN		BIT(3)
-#define  CFINIT			BIT(0)
-#define PCIETSTR		0x02004
-#define  DATA_LINK_ACTIVE	BIT(0)
-#define PCIEERRFR		0x02020
-#define  UNSUPPORTED_REQUEST	BIT(4)
-#define PCIEMSIFR		0x02044
-#define PCIEMSIALR		0x02048
-#define  MSIFE			BIT(0)
-#define PCIEMSIAUR		0x0204c
-#define PCIEMSIIER		0x02050
-
-/* root port address */
-#define PCIEPRAR(x)		(0x02080 + ((x) * 0x4))
-
-/* local address reg & mask */
-#define PCIELAR(x)		(0x02200 + ((x) * 0x20))
-#define PCIELAMR(x)		(0x02208 + ((x) * 0x20))
-#define  LAM_PREFETCH		BIT(3)
-#define  LAM_64BIT		BIT(2)
-#define  LAR_ENABLE		BIT(1)
-
-/* PCIe address reg & mask */
-#define PCIEPALR(x)		(0x03400 + ((x) * 0x20))
-#define PCIEPAUR(x)		(0x03404 + ((x) * 0x20))
-#define PCIEPAMR(x)		(0x03408 + ((x) * 0x20))
-#define PCIEPTCTLR(x)		(0x0340c + ((x) * 0x20))
-#define  PAR_ENABLE		BIT(31)
-#define  IO_SPACE		BIT(8)
-
-/* Configuration */
-#define PCICONF(x)		(0x010000 + ((x) * 0x4))
-#define PMCAP(x)		(0x010040 + ((x) * 0x4))
-#define EXPCAP(x)		(0x010070 + ((x) * 0x4))
-#define VCCAP(x)		(0x010100 + ((x) * 0x4))
-
-/* link layer */
-#define IDSETR1			0x011004
-#define TLCTLR			0x011048
-#define MACSR			0x011054
-#define  SPCHGFIN		BIT(4)
-#define  SPCHGFAIL		BIT(6)
-#define  SPCHGSUC		BIT(7)
-#define  LINK_SPEED		(0xf << 16)
-#define  LINK_SPEED_2_5GTS	(1 << 16)
-#define  LINK_SPEED_5_0GTS	(2 << 16)
-#define MACCTLR			0x011058
-#define  MACCTLR_NFTS_MASK	GENMASK(23, 16)	/* The name is from SH7786 */
-#define  SPEED_CHANGE		BIT(24)
-#define  SCRAMBLE_DISABLE	BIT(27)
-#define  LTSMDIS		BIT(31)
-#define  MACCTLR_INIT_VAL	(LTSMDIS | MACCTLR_NFTS_MASK)
-#define PMSR			0x01105c
-#define MACS2R			0x011078
-#define MACCGSPSETR		0x011084
-#define  SPCNGRSN		BIT(31)
-
-/* R-Car H1 PHY */
-#define H1_PCIEPHYADRR		0x04000c
-#define  WRITE_CMD		BIT(16)
-#define  PHY_ACK		BIT(24)
-#define  RATE_POS		12
-#define  LANE_POS		8
-#define  ADR_POS		0
-#define H1_PCIEPHYDOUTR		0x040014
-
-/* R-Car Gen2 PHY */
-#define GEN2_PCIEPHYADDR	0x780
-#define GEN2_PCIEPHYDATA	0x784
-#define GEN2_PCIEPHYCTRL	0x78c
-
-#define INT_PCI_MSI_NR		32
-
-#define RCONF(x)		(PCICONF(0) + (x))
-#define RPMCAP(x)		(PMCAP(0) + (x))
-#define REXPCAP(x)		(EXPCAP(0) + (x))
-#define RVCCAP(x)		(VCCAP(0) + (x))
-
-#define PCIE_CONF_BUS(b)	(((b) & 0xff) << 24)
-#define PCIE_CONF_DEV(d)	(((d) & 0x1f) << 19)
-#define PCIE_CONF_FUNC(f)	(((f) & 0x7) << 16)
-
-#define RCAR_PCI_MAX_RESOURCES	4
-#define MAX_NR_INBOUND_MAPS	6
+#include "pcie-rcar.h"
 
 struct rcar_msi {
 	DECLARE_BITMAP(used, INT_PCI_MSI_NR);
@@ -145,7 +48,8 @@ static inline struct rcar_msi *to_rcar_msi(struct msi_controller *chip)
 }
 
 /* Structure representing the PCIe interface */
-struct rcar_pcie {
+struct rcar_pcie_host {
+	struct rcar_pcie	pcie;
 	struct device		*dev;
 	struct phy		*phy;
 	void __iomem		*base;
@@ -153,35 +57,9 @@ struct rcar_pcie {
 	int			root_bus_nr;
 	struct clk		*bus_clk;
 	struct			rcar_msi msi;
-	int			(*phy_init_fn)(struct rcar_pcie *pcie);
+	int			(*phy_init_fn)(struct rcar_pcie_host *host);
 };
 
-static void rcar_pci_write_reg(struct rcar_pcie *pcie, u32 val,
-			       unsigned int reg)
-{
-	writel(val, pcie->base + reg);
-}
-
-static u32 rcar_pci_read_reg(struct rcar_pcie *pcie, unsigned int reg)
-{
-	return readl(pcie->base + reg);
-}
-
-enum {
-	RCAR_PCI_ACCESS_READ,
-	RCAR_PCI_ACCESS_WRITE,
-};
-
-static void rcar_rmw32(struct rcar_pcie *pcie, int where, u32 mask, u32 data)
-{
-	unsigned int shift = BITS_PER_BYTE * (where & 3);
-	u32 val = rcar_pci_read_reg(pcie, where & ~3);
-
-	val &= ~(mask << shift);
-	val |= data << shift;
-	rcar_pci_write_reg(pcie, val, where & ~3);
-}
-
 static u32 rcar_read_conf(struct rcar_pcie *pcie, int where)
 {
 	unsigned int shift = BITS_PER_BYTE * (where & 3);
@@ -191,10 +69,11 @@ static u32 rcar_read_conf(struct rcar_pcie *pcie, int where)
 }
 
 /* Serialization is provided by 'pci_lock' in drivers/pci/access.c */
-static int rcar_pcie_config_access(struct rcar_pcie *pcie,
+static int rcar_pcie_config_access(struct rcar_pcie_host *host,
 		unsigned char access_type, struct pci_bus *bus,
 		unsigned int devfn, int where, u32 *data)
 {
+	struct rcar_pcie *pcie = &host->pcie;
 	unsigned int dev, func, reg, index;
 
 	dev = PCI_SLOT(devfn);
@@ -226,7 +105,7 @@ static int rcar_pcie_config_access(struct rcar_pcie *pcie,
 		} else {
 			/* Keep an eye out for changes to the root bus number */
 			if (pci_is_root_bus(bus) && (reg == PCI_PRIMARY_BUS))
-				pcie->root_bus_nr = *data & 0xff;
+				host->root_bus_nr = *data & 0xff;
 
 			rcar_pci_write_reg(pcie, *data, PCICONF(index));
 		}
@@ -234,7 +113,7 @@ static int rcar_pcie_config_access(struct rcar_pcie *pcie,
 		return PCIBIOS_SUCCESSFUL;
 	}
 
-	if (pcie->root_bus_nr < 0)
+	if (host->root_bus_nr < 0)
 		return PCIBIOS_DEVICE_NOT_FOUND;
 
 	/* Clear errors */
@@ -245,7 +124,7 @@ static int rcar_pcie_config_access(struct rcar_pcie *pcie,
 		PCIE_CONF_DEV(dev) | PCIE_CONF_FUNC(func) | reg, PCIECAR);
 
 	/* Enable the configuration access */
-	if (bus->parent->number == pcie->root_bus_nr)
+	if (bus->parent->number == host->root_bus_nr)
 		rcar_pci_write_reg(pcie, CONFIG_SEND_ENABLE | TYPE0, PCIECCTLR);
 	else
 		rcar_pci_write_reg(pcie, CONFIG_SEND_ENABLE | TYPE1, PCIECCTLR);
@@ -273,10 +152,10 @@ static int rcar_pcie_config_access(struct rcar_pcie *pcie,
 static int rcar_pcie_read_conf(struct pci_bus *bus, unsigned int devfn,
 			       int where, int size, u32 *val)
 {
-	struct rcar_pcie *pcie = bus->sysdata;
+	struct rcar_pcie_host *host = bus->sysdata;
 	int ret;
 
-	ret = rcar_pcie_config_access(pcie, RCAR_PCI_ACCESS_READ,
+	ret = rcar_pcie_config_access(host, RCAR_PCI_ACCESS_READ,
 				      bus, devfn, where, val);
 	if (ret != PCIBIOS_SUCCESSFUL) {
 		*val = 0xffffffff;
@@ -298,12 +177,12 @@ static int rcar_pcie_read_conf(struct pci_bus *bus, unsigned int devfn,
 static int rcar_pcie_write_conf(struct pci_bus *bus, unsigned int devfn,
 				int where, int size, u32 val)
 {
-	struct rcar_pcie *pcie = bus->sysdata;
+	struct rcar_pcie_host *host = bus->sysdata;
 	unsigned int shift;
 	u32 data;
 	int ret;
 
-	ret = rcar_pcie_config_access(pcie, RCAR_PCI_ACCESS_READ,
+	ret = rcar_pcie_config_access(host, RCAR_PCI_ACCESS_READ,
 				      bus, devfn, where, &data);
 	if (ret != PCIBIOS_SUCCESSFUL)
 		return ret;
@@ -322,7 +201,7 @@ static int rcar_pcie_write_conf(struct pci_bus *bus, unsigned int devfn,
 	} else
 		data = val;
 
-	ret = rcar_pcie_config_access(pcie, RCAR_PCI_ACCESS_WRITE,
+	ret = rcar_pcie_config_access(host, RCAR_PCI_ACCESS_WRITE,
 				      bus, devfn, where, &data);
 
 	return ret;
@@ -333,49 +212,14 @@ static struct pci_ops rcar_pcie_ops = {
 	.write	= rcar_pcie_write_conf,
 };
 
-static void rcar_pcie_setup_window(int win, struct rcar_pcie *pcie,
-				   struct resource_entry *window)
-{
-	/* Setup PCIe address space mappings for each resource */
-	resource_size_t size;
-	resource_size_t res_start;
-	struct resource *res = window->res;
-	u32 mask;
-
-	rcar_pci_write_reg(pcie, 0x00000000, PCIEPTCTLR(win));
-
-	/*
-	 * The PAMR mask is calculated in units of 128Bytes, which
-	 * keeps things pretty simple.
-	 */
-	size = resource_size(res);
-	mask = (roundup_pow_of_two(size) / SZ_128) - 1;
-	rcar_pci_write_reg(pcie, mask << 7, PCIEPAMR(win));
-
-	if (res->flags & IORESOURCE_IO)
-		res_start = pci_pio_to_address(res->start) - window->offset;
-	else
-		res_start = res->start - window->offset;
-
-	rcar_pci_write_reg(pcie, upper_32_bits(res_start), PCIEPAUR(win));
-	rcar_pci_write_reg(pcie, lower_32_bits(res_start) & ~0x7F,
-			   PCIEPALR(win));
-
-	/* First resource is for IO */
-	mask = PAR_ENABLE;
-	if (res->flags & IORESOURCE_IO)
-		mask |= IO_SPACE;
-
-	rcar_pci_write_reg(pcie, mask, PCIEPTCTLR(win));
-}
-
-static int rcar_pcie_setup(struct list_head *resource, struct rcar_pcie *pci)
+static int rcar_pcie_setup(struct list_head *resource,
+			   struct rcar_pcie_host *host)
 {
 	struct resource_entry *win;
 	int i = 0;
 
 	/* Setup PCI resources */
-	resource_list_for_each_entry(win, &pci->resources) {
+	resource_list_for_each_entry(win, &host->resources) {
 		struct resource *res = win->res;
 
 		if (!res->flags)
@@ -384,11 +228,11 @@ static int rcar_pcie_setup(struct list_head *resource, struct rcar_pcie *pci)
 		switch (resource_type(res)) {
 		case IORESOURCE_IO:
 		case IORESOURCE_MEM:
-			rcar_pcie_setup_window(i, pci, win);
+			rcar_pcie_set_outbound(&host->pcie, i, win);
 			i++;
 			break;
 		case IORESOURCE_BUS:
-			pci->root_bus_nr = res->start;
+			host->root_bus_nr = res->start;
 			break;
 		default:
 			continue;
@@ -454,17 +298,18 @@ static void rcar_pcie_force_speedup(struct rcar_pcie *pcie)
 		 (macsr & LINK_SPEED) == LINK_SPEED_5_0GTS ? "5" : "2.5");
 }
 
-static void rcar_pcie_hw_enable(struct rcar_pcie *pci)
+static void rcar_pcie_hw_enable(struct rcar_pcie_host *host)
 {
+	struct rcar_pcie *pcie = &host->pcie;
 	struct resource_entry *win;
 	LIST_HEAD(res);
 	int i = 0;
 
 	/* Try setting 5 GT/s link speed */
-	rcar_pcie_force_speedup(pci);
+	rcar_pcie_force_speedup(pcie);
 
 	/* Setup PCI resources */
-	resource_list_for_each_entry(win, &pci->resources) {
+	resource_list_for_each_entry(win, &host->resources) {
 		struct resource *res = win->res;
 
 		if (!res->flags)
@@ -473,35 +318,36 @@ static void rcar_pcie_hw_enable(struct rcar_pcie *pci)
 		switch (resource_type(res)) {
 		case IORESOURCE_IO:
 		case IORESOURCE_MEM:
-			rcar_pcie_setup_window(i, pci, win);
+			rcar_pcie_set_outbound(pcie, i, win);
 			i++;
 			break;
 		}
 	}
 }
 
-static int rcar_pcie_enable(struct rcar_pcie *pcie)
+static int rcar_pcie_enable(struct rcar_pcie_host *host)
 {
+	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(host);
+	struct rcar_pcie *pcie = &host->pcie;
 	struct device *dev = pcie->dev;
-	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
 	struct pci_bus *bus, *child;
 	int ret;
 
 	/* Try setting 5 GT/s link speed */
 	rcar_pcie_force_speedup(pcie);
 
-	rcar_pcie_setup(&bridge->windows, pcie);
+	rcar_pcie_setup(&bridge->windows, host);
 
 	pci_add_flags(PCI_REASSIGN_ALL_BUS);
 
 	bridge->dev.parent = dev;
-	bridge->sysdata = pcie;
-	bridge->busnr = pcie->root_bus_nr;
+	bridge->sysdata = host;
+	bridge->busnr = host->root_bus_nr;
 	bridge->ops = &rcar_pcie_ops;
 	bridge->map_irq = of_irq_parse_and_map_pci;
 	bridge->swizzle_irq = pci_common_swizzle;
 	if (IS_ENABLED(CONFIG_PCI_MSI))
-		bridge->msi = &pcie->msi.chip;
+		bridge->msi = &host->msi.chip;
 
 	ret = pci_scan_root_bus_bridge(bridge);
 	if (ret < 0)
@@ -563,35 +409,6 @@ static void phy_write_reg(struct rcar_pcie *pcie,
 	phy_wait_for_ack(pcie);
 }
 
-static int rcar_pcie_wait_for_phyrdy(struct rcar_pcie *pcie)
-{
-	unsigned int timeout = 10;
-
-	while (timeout--) {
-		if (rcar_pci_read_reg(pcie, PCIEPHYSR) & PHYRDY)
-			return 0;
-
-		msleep(5);
-	}
-
-	return -ETIMEDOUT;
-}
-
-static int rcar_pcie_wait_for_dl(struct rcar_pcie *pcie)
-{
-	unsigned int timeout = 10000;
-
-	while (timeout--) {
-		if ((rcar_pci_read_reg(pcie, PCIETSTR) & DATA_LINK_ACTIVE))
-			return 0;
-
-		udelay(5);
-		cpu_relax();
-	}
-
-	return -ETIMEDOUT;
-}
-
 static int rcar_pcie_hw_init(struct rcar_pcie *pcie)
 {
 	int err;
@@ -662,8 +479,10 @@ static int rcar_pcie_hw_init(struct rcar_pcie *pcie)
 	return 0;
 }
 
-static int rcar_pcie_phy_init_h1(struct rcar_pcie *pcie)
+static int rcar_pcie_phy_init_h1(struct rcar_pcie_host *host)
 {
+	struct rcar_pcie *pcie = &host->pcie;
+
 	/* Initialize the phy */
 	phy_write_reg(pcie, 0, 0x42, 0x1, 0x0EC34191);
 	phy_write_reg(pcie, 1, 0x42, 0x1, 0x0EC34180);
@@ -685,8 +504,10 @@ static int rcar_pcie_phy_init_h1(struct rcar_pcie *pcie)
 	return 0;
 }
 
-static int rcar_pcie_phy_init_gen2(struct rcar_pcie *pcie)
+static int rcar_pcie_phy_init_gen2(struct rcar_pcie_host *host)
 {
+	struct rcar_pcie *pcie = &host->pcie;
+
 	/*
 	 * These settings come from the R-Car Series, 2nd Generation User's
 	 * Manual, section 50.3.1 (2) Initialization of the physical layer.
@@ -705,17 +526,17 @@ static int rcar_pcie_phy_init_gen2(struct rcar_pcie *pcie)
 	return 0;
 }
 
-static int rcar_pcie_phy_init_gen3(struct rcar_pcie *pcie)
+static int rcar_pcie_phy_init_gen3(struct rcar_pcie_host *host)
 {
 	int err;
 
-	err = phy_init(pcie->phy);
+	err = phy_init(host->phy);
 	if (err)
 		return err;
 
-	err = phy_power_on(pcie->phy);
+	err = phy_power_on(host->phy);
 	if (err)
-		phy_exit(pcie->phy);
+		phy_exit(host->phy);
 
 	return err;
 }
@@ -758,8 +579,9 @@ static void rcar_msi_free(struct rcar_msi *chip, unsigned long irq)
 
 static irqreturn_t rcar_pcie_msi_irq(int irq, void *data)
 {
-	struct rcar_pcie *pcie = data;
-	struct rcar_msi *msi = &pcie->msi;
+	struct rcar_pcie_host *host = data;
+	struct rcar_pcie *pcie = &host->pcie;
+	struct rcar_msi *msi = &host->msi;
 	struct device *dev = pcie->dev;
 	unsigned long reg;
 
@@ -798,7 +620,9 @@ static int rcar_msi_setup_irq(struct msi_controller *chip, struct pci_dev *pdev,
 			      struct msi_desc *desc)
 {
 	struct rcar_msi *msi = to_rcar_msi(chip);
-	struct rcar_pcie *pcie = container_of(chip, struct rcar_pcie, msi.chip);
+	struct rcar_pcie_host *host = container_of(chip, struct rcar_pcie_host,
+						   msi.chip);
+	struct rcar_pcie *pcie = &host->pcie;
 	struct msi_msg msg;
 	unsigned int irq;
 	int hwirq;
@@ -827,8 +651,10 @@ static int rcar_msi_setup_irq(struct msi_controller *chip, struct pci_dev *pdev,
 static int rcar_msi_setup_irqs(struct msi_controller *chip,
 			       struct pci_dev *pdev, int nvec, int type)
 {
-	struct rcar_pcie *pcie = container_of(chip, struct rcar_pcie, msi.chip);
 	struct rcar_msi *msi = to_rcar_msi(chip);
+	struct rcar_pcie_host *host = container_of(chip, struct rcar_pcie_host,
+						   msi.chip);
+	struct rcar_pcie *pcie = &host->pcie;
 	struct msi_desc *desc;
 	struct msi_msg msg;
 	unsigned int irq;
@@ -905,9 +731,9 @@ static const struct irq_domain_ops msi_domain_ops = {
 	.map = rcar_msi_map,
 };
 
-static void rcar_pcie_unmap_msi(struct rcar_pcie *pcie)
+static void rcar_pcie_unmap_msi(struct rcar_pcie_host *host)
 {
-	struct rcar_msi *msi = &pcie->msi;
+	struct rcar_msi *msi = &host->msi;
 	int i, irq;
 
 	for (i = 0; i < INT_PCI_MSI_NR; i++) {
@@ -919,9 +745,10 @@ static void rcar_pcie_unmap_msi(struct rcar_pcie *pcie)
 	irq_domain_remove(msi->domain);
 }
 
-static void rcar_pcie_hw_enable_msi(struct rcar_pcie *pcie)
+static void rcar_pcie_hw_enable_msi(struct rcar_pcie_host *host)
 {
-	struct rcar_msi *msi = &pcie->msi;
+	struct rcar_pcie *pcie = &host->pcie;
+	struct rcar_msi *msi = &host->msi;
 	unsigned long base;
 
 	/* setup MSI data target */
@@ -934,10 +761,11 @@ static void rcar_pcie_hw_enable_msi(struct rcar_pcie *pcie)
 	rcar_pci_write_reg(pcie, 0xffffffff, PCIEMSIIER);
 }
 
-static int rcar_pcie_enable_msi(struct rcar_pcie *pcie)
+static int rcar_pcie_enable_msi(struct rcar_pcie_host *host)
 {
+	struct rcar_pcie *pcie = &host->pcie;
 	struct device *dev = pcie->dev;
-	struct rcar_msi *msi = &pcie->msi;
+	struct rcar_msi *msi = &host->msi;
 	int err, i;
 
 	mutex_init(&msi->lock);
@@ -960,7 +788,7 @@ static int rcar_pcie_enable_msi(struct rcar_pcie *pcie)
 	/* Two irqs are for MSI, but they are also used for non-MSI irqs */
 	err = devm_request_irq(dev, msi->irq1, rcar_pcie_msi_irq,
 			       IRQF_SHARED | IRQF_NO_THREAD,
-			       rcar_msi_irq_chip.name, pcie);
+			       rcar_msi_irq_chip.name, host);
 	if (err < 0) {
 		dev_err(dev, "failed to request IRQ: %d\n", err);
 		goto err;
@@ -968,7 +796,7 @@ static int rcar_pcie_enable_msi(struct rcar_pcie *pcie)
 
 	err = devm_request_irq(dev, msi->irq2, rcar_pcie_msi_irq,
 			       IRQF_SHARED | IRQF_NO_THREAD,
-			       rcar_msi_irq_chip.name, pcie);
+			       rcar_msi_irq_chip.name, host);
 	if (err < 0) {
 		dev_err(dev, "failed to request IRQ: %d\n", err);
 		goto err;
@@ -976,18 +804,19 @@ static int rcar_pcie_enable_msi(struct rcar_pcie *pcie)
 
 	/* setup MSI data target */
 	msi->pages = __get_free_pages(GFP_KERNEL, 0);
-	rcar_pcie_hw_enable_msi(pcie);
+	rcar_pcie_hw_enable_msi(host);
 
 	return 0;
 
 err:
-	rcar_pcie_unmap_msi(pcie);
+	rcar_pcie_unmap_msi(host);
 	return err;
 }
 
-static void rcar_pcie_teardown_msi(struct rcar_pcie *pcie)
+static void rcar_pcie_teardown_msi(struct rcar_pcie_host *host)
 {
-	struct rcar_msi *msi = &pcie->msi;
+	struct rcar_pcie *pcie = &host->pcie;
+	struct rcar_msi *msi = &host->msi;
 
 	/* Disable all MSI interrupts */
 	rcar_pci_write_reg(pcie, 0, PCIEMSIIER);
@@ -997,18 +826,19 @@ static void rcar_pcie_teardown_msi(struct rcar_pcie *pcie)
 
 	free_pages(msi->pages, 0);
 
-	rcar_pcie_unmap_msi(pcie);
+	rcar_pcie_unmap_msi(host);
 }
 
-static int rcar_pcie_get_resources(struct rcar_pcie *pcie)
+static int rcar_pcie_get_resources(struct rcar_pcie_host *host)
 {
+	struct rcar_pcie *pcie = &host->pcie;
 	struct device *dev = pcie->dev;
 	struct resource res;
 	int err, i;
 
-	pcie->phy = devm_phy_optional_get(dev, "pcie");
-	if (IS_ERR(pcie->phy))
-		return PTR_ERR(pcie->phy);
+	host->phy = devm_phy_optional_get(dev, "pcie");
+	if (IS_ERR(host->phy))
+		return PTR_ERR(host->phy);
 
 	err = of_address_to_resource(dev->of_node, 0, &res);
 	if (err)
@@ -1018,10 +848,10 @@ static int rcar_pcie_get_resources(struct rcar_pcie *pcie)
 	if (IS_ERR(pcie->base))
 		return PTR_ERR(pcie->base);
 
-	pcie->bus_clk = devm_clk_get(dev, "pcie_bus");
-	if (IS_ERR(pcie->bus_clk)) {
+	host->bus_clk = devm_clk_get(dev, "pcie_bus");
+	if (IS_ERR(host->bus_clk)) {
 		dev_err(dev, "cannot get pcie bus clock\n");
-		return PTR_ERR(pcie->bus_clk);
+		return PTR_ERR(host->bus_clk);
 	}
 
 	i = irq_of_parse_and_map(dev->of_node, 0);
@@ -1030,7 +860,7 @@ static int rcar_pcie_get_resources(struct rcar_pcie *pcie)
 		err = -ENOENT;
 		goto err_irq1;
 	}
-	pcie->msi.irq1 = i;
+	host->msi.irq1 = i;
 
 	i = irq_of_parse_and_map(dev->of_node, 1);
 	if (!i) {
@@ -1038,12 +868,12 @@ static int rcar_pcie_get_resources(struct rcar_pcie *pcie)
 		err = -ENOENT;
 		goto err_irq2;
 	}
-	pcie->msi.irq2 = i;
+	host->msi.irq2 = i;
 
 	return 0;
 
 err_irq2:
-	irq_dispose_mapping(pcie->msi.irq1);
+	irq_dispose_mapping(host->msi.irq1);
 err_irq1:
 	return err;
 }
@@ -1086,21 +916,8 @@ static int rcar_pcie_inbound_ranges(struct rcar_pcie *pcie,
 		mask = roundup_pow_of_two(size) - 1;
 		mask &= ~0xf;
 
-		/*
-		 * Set up 64-bit inbound regions as the range parser doesn't
-		 * distinguish between 32 and 64-bit types.
-		 */
-		rcar_pci_write_reg(pcie, lower_32_bits(pci_addr),
-				   PCIEPRAR(idx));
-		rcar_pci_write_reg(pcie, lower_32_bits(cpu_addr), PCIELAR(idx));
-		rcar_pci_write_reg(pcie, lower_32_bits(mask) | flags,
-				   PCIELAMR(idx));
-
-		rcar_pci_write_reg(pcie, upper_32_bits(pci_addr),
-				   PCIEPRAR(idx + 1));
-		rcar_pci_write_reg(pcie, upper_32_bits(cpu_addr),
-				   PCIELAR(idx + 1));
-		rcar_pci_write_reg(pcie, 0, PCIELAMR(idx + 1));
+		rcar_pcie_set_inbound(pcie, cpu_addr, pci_addr,
+				      lower_32_bits(mask) | flags, idx, true);
 
 		pci_addr += size;
 		cpu_addr += size;
@@ -1111,14 +928,14 @@ static int rcar_pcie_inbound_ranges(struct rcar_pcie *pcie,
 	return 0;
 }
 
-static int rcar_pcie_parse_map_dma_ranges(struct rcar_pcie *pcie)
+static int rcar_pcie_parse_map_dma_ranges(struct rcar_pcie_host *host)
 {
-	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
+	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(host);
 	struct resource_entry *entry;
 	int index = 0, err = 0;
 
 	resource_list_for_each_entry(entry, &bridge->dma_ranges) {
-		err = rcar_pcie_inbound_ranges(pcie, entry, &index);
+		err = rcar_pcie_inbound_ranges(&host->pcie, entry, &index);
 		if (err)
 			break;
 	}
@@ -1145,21 +962,22 @@ static const struct of_device_id rcar_pcie_of_match[] = {
 static int rcar_pcie_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
+	struct rcar_pcie_host *host;
 	struct rcar_pcie *pcie;
 	u32 data;
 	int err;
 	struct pci_host_bridge *bridge;
 
-	bridge = pci_alloc_host_bridge(sizeof(*pcie));
+	bridge = pci_alloc_host_bridge(sizeof(*host));
 	if (!bridge)
 		return -ENOMEM;
 
-	pcie = pci_host_bridge_priv(bridge);
-
+	host = pci_host_bridge_priv(bridge);
+	pcie = &host->pcie;
 	pcie->dev = dev;
-	platform_set_drvdata(pdev, pcie);
+	platform_set_drvdata(pdev, host);
 
-	err = pci_parse_request_of_pci_ranges(dev, &pcie->resources,
+	err = pci_parse_request_of_pci_ranges(dev, &host->resources,
 					      &bridge->dma_ranges, NULL);
 	if (err)
 		goto err_free_bridge;
@@ -1171,24 +989,24 @@ static int rcar_pcie_probe(struct platform_device *pdev)
 		goto err_pm_disable;
 	}
 
-	err = rcar_pcie_get_resources(pcie);
+	err = rcar_pcie_get_resources(host);
 	if (err < 0) {
 		dev_err(dev, "failed to request resources: %d\n", err);
 		goto err_pm_put;
 	}
 
-	err = clk_prepare_enable(pcie->bus_clk);
+	err = clk_prepare_enable(host->bus_clk);
 	if (err) {
 		dev_err(dev, "failed to enable bus clock: %d\n", err);
 		goto err_unmap_msi_irqs;
 	}
 
-	err = rcar_pcie_parse_map_dma_ranges(pcie);
+	err = rcar_pcie_parse_map_dma_ranges(host);
 	if (err)
 		goto err_clk_disable;
 
-	pcie->phy_init_fn = of_device_get_match_data(dev);
-	err = pcie->phy_init_fn(pcie);
+	host->phy_init_fn = of_device_get_match_data(dev);
+	err = host->phy_init_fn(host);
 	if (err) {
 		dev_err(dev, "failed to init PCIe PHY\n");
 		goto err_clk_disable;
@@ -1205,7 +1023,7 @@ static int rcar_pcie_probe(struct platform_device *pdev)
 	dev_info(dev, "PCIe x%d: link up\n", (data >> 20) & 0x3f);
 
 	if (IS_ENABLED(CONFIG_PCI_MSI)) {
-		err = rcar_pcie_enable_msi(pcie);
+		err = rcar_pcie_enable_msi(host);
 		if (err < 0) {
 			dev_err(dev,
 				"failed to enable MSI support: %d\n",
@@ -1214,7 +1032,7 @@ static int rcar_pcie_probe(struct platform_device *pdev)
 		}
 	}
 
-	err = rcar_pcie_enable(pcie);
+	err = rcar_pcie_enable(host);
 	if (err)
 		goto err_msi_teardown;
 
@@ -1222,27 +1040,27 @@ static int rcar_pcie_probe(struct platform_device *pdev)
 
 err_msi_teardown:
 	if (IS_ENABLED(CONFIG_PCI_MSI))
-		rcar_pcie_teardown_msi(pcie);
+		rcar_pcie_teardown_msi(host);
 
 err_phy_shutdown:
-	if (pcie->phy) {
-		phy_power_off(pcie->phy);
-		phy_exit(pcie->phy);
+	if (host->phy) {
+		phy_power_off(host->phy);
+		phy_exit(host->phy);
 	}
 
 err_clk_disable:
-	clk_disable_unprepare(pcie->bus_clk);
+	clk_disable_unprepare(host->bus_clk);
 
 err_unmap_msi_irqs:
-	irq_dispose_mapping(pcie->msi.irq2);
-	irq_dispose_mapping(pcie->msi.irq1);
+	irq_dispose_mapping(host->msi.irq2);
+	irq_dispose_mapping(host->msi.irq1);
 
 err_pm_put:
 	pm_runtime_put(dev);
 
 err_pm_disable:
 	pm_runtime_disable(dev);
-	pci_free_resource_list(&pcie->resources);
+	pci_free_resource_list(&host->resources);
 
 err_free_bridge:
 	pci_free_host_bridge(bridge);
@@ -1252,16 +1070,17 @@ static int rcar_pcie_probe(struct platform_device *pdev)
 
 static int __maybe_unused rcar_pcie_resume(struct device *dev)
 {
-	struct rcar_pcie *pcie = dev_get_drvdata(dev);
+	struct rcar_pcie_host *host = dev_get_drvdata(dev);
+	struct rcar_pcie *pcie = &host->pcie;
 	unsigned int data;
 	int err;
 
-	err = rcar_pcie_parse_map_dma_ranges(pcie);
+	err = rcar_pcie_parse_map_dma_ranges(host);
 	if (err)
 		return 0;
 
 	/* Failure to get a link might just be that no cards are inserted */
-	err = pcie->phy_init_fn(pcie);
+	err = host->phy_init_fn(host);
 	if (err) {
 		dev_info(dev, "PCIe link down\n");
 		return 0;
@@ -1272,16 +1091,17 @@ static int __maybe_unused rcar_pcie_resume(struct device *dev)
 
 	/* Enable MSI */
 	if (IS_ENABLED(CONFIG_PCI_MSI))
-		rcar_pcie_hw_enable_msi(pcie);
+		rcar_pcie_hw_enable_msi(host);
 
-	rcar_pcie_hw_enable(pcie);
+	rcar_pcie_hw_enable(host);
 
 	return 0;
 }
 
 static int rcar_pcie_resume_noirq(struct device *dev)
 {
-	struct rcar_pcie *pcie = dev_get_drvdata(dev);
+	struct rcar_pcie_host *host = dev_get_drvdata(dev);
+	struct rcar_pcie *pcie = &host->pcie;
 
 	if (rcar_pci_read_reg(pcie, PMSR) &&
 	    !(rcar_pci_read_reg(pcie, PCIETCTLR) & DL_DOWN))
diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
new file mode 100644
index 000000000000..cf8840d180c3
--- /dev/null
+++ b/drivers/pci/controller/pcie-rcar.c
@@ -0,0 +1,117 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * PCIe driver for Renesas R-Car SoCs
+ *  Copyright (C) 2014-2020 Renesas Electronics Europe Ltd
+ *
+ * Author: Phil Edworthy <phil.edworthy@renesas.com>
+ */
+
+#include <linux/delay.h>
+#include <linux/pci.h>
+
+#include "pcie-rcar.h"
+
+void rcar_pci_write_reg(struct rcar_pcie *pcie, u32 val, unsigned int reg)
+{
+	writel(val, pcie->base + reg);
+}
+
+u32 rcar_pci_read_reg(struct rcar_pcie *pcie, unsigned int reg)
+{
+	return readl(pcie->base + reg);
+}
+
+void rcar_rmw32(struct rcar_pcie *pcie, int where, u32 mask, u32 data)
+{
+	unsigned int shift = BITS_PER_BYTE * (where & 3);
+	u32 val = rcar_pci_read_reg(pcie, where & ~3);
+
+	val &= ~(mask << shift);
+	val |= data << shift;
+	rcar_pci_write_reg(pcie, val, where & ~3);
+}
+
+int rcar_pcie_wait_for_phyrdy(struct rcar_pcie *pcie)
+{
+	unsigned int timeout = 10;
+
+	while (timeout--) {
+		if (rcar_pci_read_reg(pcie, PCIEPHYSR) & PHYRDY)
+			return 0;
+
+		msleep(5);
+	}
+
+	return -ETIMEDOUT;
+}
+
+int rcar_pcie_wait_for_dl(struct rcar_pcie *pcie)
+{
+	unsigned int timeout = 10000;
+
+	while (timeout--) {
+		if ((rcar_pci_read_reg(pcie, PCIETSTR) & DATA_LINK_ACTIVE))
+			return 0;
+
+		udelay(5);
+		cpu_relax();
+	}
+
+	return -ETIMEDOUT;
+}
+
+void rcar_pcie_set_outbound(struct rcar_pcie *pcie, int win,
+			    struct resource_entry *window)
+{
+	/* Setup PCIe address space mappings for each resource */
+	struct resource *res = window->res;
+	resource_size_t res_start;
+	resource_size_t size;
+	u32 mask;
+
+	rcar_pci_write_reg(pcie, 0x00000000, PCIEPTCTLR(win));
+
+	/*
+	 * The PAMR mask is calculated in units of 128Bytes, which
+	 * keeps things pretty simple.
+	 */
+	size = resource_size(res);
+	mask = (roundup_pow_of_two(size) / SZ_128) - 1;
+	rcar_pci_write_reg(pcie, mask << 7, PCIEPAMR(win));
+
+	if (res->flags & IORESOURCE_IO)
+		res_start = pci_pio_to_address(res->start) - window->offset;
+	else
+		res_start = res->start - window->offset;
+
+	rcar_pci_write_reg(pcie, upper_32_bits(res_start), PCIEPAUR(win));
+	rcar_pci_write_reg(pcie, lower_32_bits(res_start) & ~0x7F,
+			   PCIEPALR(win));
+
+	/* First resource is for IO */
+	mask = PAR_ENABLE;
+	if (res->flags & IORESOURCE_IO)
+		mask |= IO_SPACE;
+
+	rcar_pci_write_reg(pcie, mask, PCIEPTCTLR(win));
+}
+
+void rcar_pcie_set_inbound(struct rcar_pcie *pcie, u64 cpu_addr,
+			   u64 pci_addr, u64 flags, int idx, bool host)
+{
+	/*
+	 * Set up 64-bit inbound regions as the range parser doesn't
+	 * distinguish between 32 and 64-bit types.
+	 */
+	if (host)
+		rcar_pci_write_reg(pcie, lower_32_bits(pci_addr),
+				   PCIEPRAR(idx));
+	rcar_pci_write_reg(pcie, lower_32_bits(cpu_addr), PCIELAR(idx));
+	rcar_pci_write_reg(pcie, flags, PCIELAMR(idx));
+
+	if (host)
+		rcar_pci_write_reg(pcie, upper_32_bits(pci_addr),
+				   PCIEPRAR(idx + 1));
+	rcar_pci_write_reg(pcie, upper_32_bits(cpu_addr), PCIELAR(idx + 1));
+	rcar_pci_write_reg(pcie, 0, PCIELAMR(idx + 1));
+}
diff --git a/drivers/pci/controller/pcie-rcar.h b/drivers/pci/controller/pcie-rcar.h
new file mode 100644
index 000000000000..97640e16af58
--- /dev/null
+++ b/drivers/pci/controller/pcie-rcar.h
@@ -0,0 +1,131 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * PCIe driver for Renesas R-Car SoCs
+ *  Copyright (C) 2014-2020 Renesas Electronics Europe Ltd
+ *
+ * Author: Phil Edworthy <phil.edworthy@renesas.com>
+ */
+
+#ifndef _PCIE_RCAR_H
+#define _PCIE_RCAR_H
+
+#define PCIECAR			0x000010
+#define PCIECCTLR		0x000018
+#define  CONFIG_SEND_ENABLE	BIT(31)
+#define  TYPE0			(0 << 8)
+#define  TYPE1			BIT(8)
+#define PCIECDR			0x000020
+#define PCIEMSR			0x000028
+#define PCIEINTXR		0x000400
+#define PCIEPHYSR		0x0007f0
+#define  PHYRDY			BIT(0)
+#define PCIEMSITXR		0x000840
+
+/* Transfer control */
+#define PCIETCTLR		0x02000
+#define  DL_DOWN		BIT(3)
+#define  CFINIT			BIT(0)
+#define PCIETSTR		0x02004
+#define  DATA_LINK_ACTIVE	BIT(0)
+#define PCIEERRFR		0x02020
+#define  UNSUPPORTED_REQUEST	BIT(4)
+#define PCIEMSIFR		0x02044
+#define PCIEMSIALR		0x02048
+#define  MSIFE			BIT(0)
+#define PCIEMSIAUR		0x0204c
+#define PCIEMSIIER		0x02050
+
+/* root port address */
+#define PCIEPRAR(x)		(0x02080 + ((x) * 0x4))
+
+/* local address reg & mask */
+#define PCIELAR(x)		(0x02200 + ((x) * 0x20))
+#define PCIELAMR(x)		(0x02208 + ((x) * 0x20))
+#define  LAM_PREFETCH		BIT(3)
+#define  LAM_64BIT		BIT(2)
+#define  LAR_ENABLE		BIT(1)
+
+/* PCIe address reg & mask */
+#define PCIEPALR(x)		(0x03400 + ((x) * 0x20))
+#define PCIEPAUR(x)		(0x03404 + ((x) * 0x20))
+#define PCIEPAMR(x)		(0x03408 + ((x) * 0x20))
+#define PCIEPTCTLR(x)		(0x0340c + ((x) * 0x20))
+#define  PAR_ENABLE		BIT(31)
+#define  IO_SPACE		BIT(8)
+
+/* Configuration */
+#define PCICONF(x)		(0x010000 + ((x) * 0x4))
+#define PMCAP(x)		(0x010040 + ((x) * 0x4))
+#define EXPCAP(x)		(0x010070 + ((x) * 0x4))
+#define VCCAP(x)		(0x010100 + ((x) * 0x4))
+
+/* link layer */
+#define IDSETR1			0x011004
+#define TLCTLR			0x011048
+#define MACSR			0x011054
+#define  SPCHGFIN		BIT(4)
+#define  SPCHGFAIL		BIT(6)
+#define  SPCHGSUC		BIT(7)
+#define  LINK_SPEED		(0xf << 16)
+#define  LINK_SPEED_2_5GTS	(1 << 16)
+#define  LINK_SPEED_5_0GTS	(2 << 16)
+#define MACCTLR			0x011058
+#define  MACCTLR_NFTS_MASK	GENMASK(23, 16)	/* The name is from SH7786 */
+#define  SPEED_CHANGE		BIT(24)
+#define  SCRAMBLE_DISABLE	BIT(27)
+#define  LTSMDIS		BIT(31)
+#define  MACCTLR_INIT_VAL	(LTSMDIS | MACCTLR_NFTS_MASK)
+#define PMSR			0x01105c
+#define MACS2R			0x011078
+#define MACCGSPSETR		0x011084
+#define  SPCNGRSN		BIT(31)
+
+/* R-Car H1 PHY */
+#define H1_PCIEPHYADRR		0x04000c
+#define  WRITE_CMD		BIT(16)
+#define  PHY_ACK		BIT(24)
+#define  RATE_POS		12
+#define  LANE_POS		8
+#define  ADR_POS		0
+#define H1_PCIEPHYDOUTR		0x040014
+
+/* R-Car Gen2 PHY */
+#define GEN2_PCIEPHYADDR	0x780
+#define GEN2_PCIEPHYDATA	0x784
+#define GEN2_PCIEPHYCTRL	0x78c
+
+#define INT_PCI_MSI_NR		32
+
+#define RCONF(x)		(PCICONF(0) + (x))
+#define RPMCAP(x)		(PMCAP(0) + (x))
+#define REXPCAP(x)		(EXPCAP(0) + (x))
+#define RVCCAP(x)		(VCCAP(0) + (x))
+
+#define PCIE_CONF_BUS(b)	(((b) & 0xff) << 24)
+#define PCIE_CONF_DEV(d)	(((d) & 0x1f) << 19)
+#define PCIE_CONF_FUNC(f)	(((f) & 0x7) << 16)
+
+#define RCAR_PCI_MAX_RESOURCES	4
+#define MAX_NR_INBOUND_MAPS	6
+
+struct rcar_pcie {
+	struct device		*dev;
+	void __iomem		*base;
+};
+
+enum {
+	RCAR_PCI_ACCESS_READ,
+	RCAR_PCI_ACCESS_WRITE,
+};
+
+void rcar_pci_write_reg(struct rcar_pcie *pcie, u32 val, unsigned int reg);
+u32 rcar_pci_read_reg(struct rcar_pcie *pcie, unsigned int reg);
+void rcar_rmw32(struct rcar_pcie *pcie, int where, u32 mask, u32 data);
+int rcar_pcie_wait_for_phyrdy(struct rcar_pcie *pcie);
+int rcar_pcie_wait_for_dl(struct rcar_pcie *pcie);
+void rcar_pcie_set_outbound(struct rcar_pcie *pcie, int win,
+			    struct resource_entry *window);
+void rcar_pcie_set_inbound(struct rcar_pcie *pcie, u64 cpu_addr,
+			   u64 pci_addr, u64 flags, int idx, bool host);
+
+#endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
