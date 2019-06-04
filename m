Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDB234811
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJgkq087DphmBkG9kBctRCqYT7iPh9CqcWhUYMBx/dE=; b=bmwlrmc5rl7Tpu
	CGg8rcn9EaVzTBIWj/Z5Ryo4TenQGvPMrFVfLVA0U68ftYxhm/G2HF+Iu9KhmDXqD30d+NTjoJtG+
	af9U9JQrdP7BvAyuvM4cjmzsybhV9Qiigm8C9x4SxNCMJrDQBF6EMS+gW6Aq5O4vymFFPU0WIvSIe
	spWUE9qutOwo1UIUx4jpKhSQ1xWkZzfu8fM6sCwCkhAt9fZQ5fiUYSZvHcz8PS/VwWxgGquU+oFUI
	JJpdXYqVd3OP9zjf3QT5BSFefRdfTCqlUM/QPK1ef1wBQzbGWmXn0CRtpZ+t3yMGoO/r1EIFyWKtV
	9Hfb/snHbNRzsTAThVMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9Kg-00045A-Cl; Tue, 04 Jun 2019 13:18:30 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9Jf-0002rY-W0; Tue, 04 Jun 2019 13:17:45 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54DHI06082244;
 Tue, 4 Jun 2019 08:17:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559654238;
 bh=6qczyjN8xDIHWDWNCCCPX1hAyvFx0bkZdv1sjzIpsVk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=qCmO322is04juakmYwOIY/3vblkjd2nBtFEsDOJ9gUoxnzpAnkB/+P3cJsueJdPzB
 uVxeSG/PZ1hhgjz2vcJkNEs+BocHvvtOo/CuqyuXzWcWjDHg9XLbEM3UQFsxh7eP79
 O/t3m1hhG2x+Fg9S4Hu6pVaViSUrFa9g+Sbe6teU=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54DHIhQ042574
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 08:17:18 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 08:17:18 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 08:17:18 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54DGdGM098972;
 Tue, 4 Jun 2019 08:17:13 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Subject: [RFC PATCH 06/30] PCI: cadence: Add support to use custom read and
 write accessors
Date: Tue, 4 Jun 2019 18:44:52 +0530
Message-ID: <20190604131516.13596-7-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604131516.13596-1-kishon@ti.com>
References: <20190604131516.13596-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_061728_475795_84653CFE 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Jingoo Han <jingoohan1@gmail.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support to use custom read and write accessors. Platforms that
doesn't support half word or byte access or any other constraint
while accessing registers can use this feature to populate custom
read and write accessors. These custom accessors are used for both
standard register access and configuration space register access.
This is in preparation for adding PCIe support in TI's J721E SoC which
uses Cadence PCIe core.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/controller/pcie-cadence-ep.c   |  15 +++
 drivers/pci/controller/pcie-cadence-host.c |  20 +++-
 drivers/pci/controller/pcie-cadence.h      | 105 +++++++++++++++++++--
 3 files changed, 131 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/controller/pcie-cadence-ep.c b/drivers/pci/controller/pcie-cadence-ep.c
index def7820cb824..64ab5c53afb1 100644
--- a/drivers/pci/controller/pcie-cadence-ep.c
+++ b/drivers/pci/controller/pcie-cadence-ep.c
@@ -6,6 +6,7 @@
 #include <linux/delay.h>
 #include <linux/kernel.h>
 #include <linux/of.h>
+#include <linux/of_device.h>
 #include <linux/pci-epc.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
@@ -434,6 +435,8 @@ static int cdns_pcie_ep_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
+	const struct cdns_pcie_ep_data *data;
+	const struct of_device_id *match;
 	struct cdns_pcie_ep *ep;
 	struct cdns_pcie *pcie;
 	struct pci_epc *epc;
@@ -441,6 +444,10 @@ static int cdns_pcie_ep_probe(struct platform_device *pdev)
 	int ret;
 	int phy_count;
 
+	match = of_match_device(of_match_ptr(cdns_pcie_ep_of_match), dev);
+	if (!match)
+		return -EINVAL;
+
 	ep = devm_kzalloc(dev, sizeof(*ep), GFP_KERNEL);
 	if (!ep)
 		return -ENOMEM;
@@ -448,6 +455,14 @@ static int cdns_pcie_ep_probe(struct platform_device *pdev)
 	pcie = &ep->pcie;
 	pcie->is_rc = false;
 
+	data = (struct cdns_pcie_ep_data *)match->data;
+	if (data) {
+		if (data->read)
+			pcie->read = data->read;
+		if (data->write)
+			pcie->write = data->write;
+	}
+
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "reg");
 	pcie->reg_base = devm_ioremap_resource(dev, res);
 	if (IS_ERR(pcie->reg_base)) {
diff --git a/drivers/pci/controller/pcie-cadence-host.c b/drivers/pci/controller/pcie-cadence-host.c
index 97e251090b4f..75cf3c312ed2 100644
--- a/drivers/pci/controller/pcie-cadence-host.c
+++ b/drivers/pci/controller/pcie-cadence-host.c
@@ -5,6 +5,7 @@
 
 #include <linux/kernel.h>
 #include <linux/of_address.h>
+#include <linux/of_device.h>
 #include <linux/of_pci.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
@@ -235,8 +236,11 @@ static int cdns_pcie_host_init(struct device *dev,
 
 static int cdns_pcie_host_probe(struct platform_device *pdev)
 {
+	struct pci_ops *ops = &cdns_pcie_host_ops;
+	const struct cdns_pcie_host_data *data;
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
+	const struct of_device_id *match;
 	struct pci_host_bridge *bridge;
 	struct list_head resources;
 	struct cdns_pcie_rc *rc;
@@ -245,6 +249,10 @@ static int cdns_pcie_host_probe(struct platform_device *pdev)
 	int ret;
 	int phy_count;
 
+	match = of_match_device(of_match_ptr(cdns_pcie_host_of_match), dev);
+	if (!match)
+		return -EINVAL;
+
 	bridge = devm_pci_alloc_host_bridge(dev, sizeof(*rc));
 	if (!bridge)
 		return -ENOMEM;
@@ -255,6 +263,16 @@ static int cdns_pcie_host_probe(struct platform_device *pdev)
 	pcie = &rc->pcie;
 	pcie->is_rc = true;
 
+	data = (struct cdns_pcie_host_data *)match->data;
+	if (data) {
+		if (data->read)
+			pcie->read = data->read;
+		if (data->write)
+			pcie->write = data->write;
+		if (data->ops)
+			ops = data->ops;
+	}
+
 	rc->max_regions = 32;
 	of_property_read_u32(np, "cdns,max-outbound-regions", &rc->max_regions);
 
@@ -310,7 +328,7 @@ static int cdns_pcie_host_probe(struct platform_device *pdev)
 	list_splice_init(&resources, &bridge->windows);
 	bridge->dev.parent = dev;
 	bridge->busnr = pcie->bus;
-	bridge->ops = &cdns_pcie_host_ops;
+	bridge->ops = ops;
 	bridge->map_irq = of_irq_parse_and_map_pci;
 	bridge->swizzle_irq = pci_common_swizzle;
 
diff --git a/drivers/pci/controller/pcie-cadence.h b/drivers/pci/controller/pcie-cadence.h
index ae6bf2a2b3d3..0134c1b1ad65 100644
--- a/drivers/pci/controller/pcie-cadence.h
+++ b/drivers/pci/controller/pcie-cadence.h
@@ -236,26 +236,65 @@ struct cdns_pcie {
 	int			phy_count;
 	struct phy		**phy;
 	struct device_link	**link;
+	u32 (*read)(void __iomem *addr, int size);
+	void (*write)(void __iomem *addr, int size, u32 value);
+};
+
+struct cdns_pcie_host_data {
+	struct pci_ops *ops;
+	u32 (*read)(void __iomem *addr, int size);
+	void (*write)(void __iomem *addr, int size, u32 value);
+};
+
+struct cdns_pcie_ep_data {
+	u32 (*read)(void __iomem *addr, int size);
+	void (*write)(void __iomem *addr, int size, u32 value);
 };
 
 /* Register access */
 static inline void cdns_pcie_writeb(struct cdns_pcie *pcie, u32 reg, u8 value)
 {
+	void __iomem *addr = pcie->reg_base + reg;
+
+	if (pcie->write) {
+		pcie->write(addr, 0x1, value);
+		return;
+	}
+
 	writeb(value, pcie->reg_base + reg);
 }
 
 static inline void cdns_pcie_writew(struct cdns_pcie *pcie, u32 reg, u16 value)
 {
+	void __iomem *addr = pcie->reg_base + reg;
+
+	if (pcie->write) {
+		pcie->write(addr, 0x2, value);
+		return;
+	}
+
 	writew(value, pcie->reg_base + reg);
 }
 
 static inline void cdns_pcie_writel(struct cdns_pcie *pcie, u32 reg, u32 value)
 {
+	void __iomem *addr = pcie->reg_base + reg;
+
+	if (pcie->write) {
+		pcie->write(addr, 0x4, value);
+		return;
+	}
+
 	writel(value, pcie->reg_base + reg);
 }
 
 static inline u32 cdns_pcie_readl(struct cdns_pcie *pcie, u32 reg)
 {
+	void __iomem *addr = pcie->reg_base + reg;
+
+	if (pcie->read)
+		return pcie->read(addr, 0x4);
+
 	return readl(pcie->reg_base + reg);
 }
 
@@ -263,47 +302,97 @@ static inline u32 cdns_pcie_readl(struct cdns_pcie *pcie, u32 reg)
 static inline void cdns_pcie_rp_writeb(struct cdns_pcie *pcie,
 				       u32 reg, u8 value)
 {
-	writeb(value, pcie->reg_base + CDNS_PCIE_RP_BASE + reg);
+	void __iomem *addr = pcie->reg_base + CDNS_PCIE_RP_BASE + reg;
+
+	if (pcie->write) {
+		pcie->write(addr, 0x1, value);
+		return;
+	}
+
+	writeb(value, addr);
 }
 
 static inline void cdns_pcie_rp_writew(struct cdns_pcie *pcie,
 				       u32 reg, u16 value)
 {
-	writew(value, pcie->reg_base + CDNS_PCIE_RP_BASE + reg);
+	void __iomem *addr = pcie->reg_base + CDNS_PCIE_RP_BASE + reg;
+
+	if (pcie->write) {
+		pcie->write(addr, 0x2, value);
+		return;
+	}
+
+	writew(value, addr);
 }
 
 /* Endpoint Function register access */
 static inline void cdns_pcie_ep_fn_writeb(struct cdns_pcie *pcie, u8 fn,
 					  u32 reg, u8 value)
 {
-	writeb(value, pcie->reg_base + CDNS_PCIE_EP_FUNC_BASE(fn) + reg);
+	void __iomem *addr = pcie->reg_base + CDNS_PCIE_EP_FUNC_BASE(fn) + reg;
+
+	if (pcie->write) {
+		pcie->write(addr, 0x1, value);
+		return;
+	}
+
+	writeb(value, addr);
 }
 
 static inline void cdns_pcie_ep_fn_writew(struct cdns_pcie *pcie, u8 fn,
 					  u32 reg, u16 value)
 {
-	writew(value, pcie->reg_base + CDNS_PCIE_EP_FUNC_BASE(fn) + reg);
+	void __iomem *addr = pcie->reg_base + CDNS_PCIE_EP_FUNC_BASE(fn) + reg;
+
+	if (pcie->write) {
+		pcie->write(addr, 0x2, value);
+		return;
+	}
+
+	writew(value, addr);
 }
 
 static inline void cdns_pcie_ep_fn_writel(struct cdns_pcie *pcie, u8 fn,
 					  u32 reg, u32 value)
 {
-	writel(value, pcie->reg_base + CDNS_PCIE_EP_FUNC_BASE(fn) + reg);
+	void __iomem *addr = pcie->reg_base + CDNS_PCIE_EP_FUNC_BASE(fn) + reg;
+
+	if (pcie->write) {
+		pcie->write(addr, 0x4, value);
+		return;
+	}
+
+	writel(value, addr);
 }
 
 static inline u8 cdns_pcie_ep_fn_readb(struct cdns_pcie *pcie, u8 fn, u32 reg)
 {
-	return readb(pcie->reg_base + CDNS_PCIE_EP_FUNC_BASE(fn) + reg);
+	void __iomem *addr = pcie->reg_base + CDNS_PCIE_EP_FUNC_BASE(fn) + reg;
+
+	if (pcie->read)
+		return pcie->read(addr, 0x1);
+
+	return readb(addr);
 }
 
 static inline u16 cdns_pcie_ep_fn_readw(struct cdns_pcie *pcie, u8 fn, u32 reg)
 {
-	return readw(pcie->reg_base + CDNS_PCIE_EP_FUNC_BASE(fn) + reg);
+	void __iomem *addr = pcie->reg_base + CDNS_PCIE_EP_FUNC_BASE(fn) + reg;
+
+	if (pcie->read)
+		return pcie->read(addr, 0x2);
+
+	return readw(addr);
 }
 
 static inline u32 cdns_pcie_ep_fn_readl(struct cdns_pcie *pcie, u8 fn, u32 reg)
 {
-	return readl(pcie->reg_base + CDNS_PCIE_EP_FUNC_BASE(fn) + reg);
+	void __iomem *addr = pcie->reg_base + CDNS_PCIE_EP_FUNC_BASE(fn) + reg;
+
+	if (pcie->read)
+		return pcie->read(addr, 0x4);
+
+	return readl(addr);
 }
 
 void cdns_pcie_set_outbound_region(struct cdns_pcie *pcie, u8 fn,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
