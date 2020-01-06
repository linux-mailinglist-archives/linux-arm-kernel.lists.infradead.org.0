Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FF1131065
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 11:20:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CPsVS/2LYj1H01zUrclA818opWvKUJYDJy9ZD9bSpjA=; b=Vk4E+zxxZJ0crc
	szMlX8wssswAPIhOCxOhIlAtAkOlDHxSSgoi9vpMw+jH3HCRc3QzaOPXcxUgjVfuY6M+OGaoFh/rL
	MTsz+Z4bYRoAlIhTptvwJZKbkAjbjDagpDAeONB6s+OxtzJgnnLBW1NmQULlQHHXslimDo0RRIqm+
	1/+jtCuu5Ta8WOiu1S4w3fKm1SKbwJLk06USKXn75khrcA4BXgOmtklewKqq2qjm+QTD7J+fMwA26
	tsajMjQGCaLmx0O6ufQwx5hip7FeXylaL0lgeCZzf1JCik6SWQdC1FO7ydm38q51hXY7SBopUJKq5
	wj2eEQjeh3p2bWJeRyIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioPVA-0007QK-D0; Mon, 06 Jan 2020 10:20:48 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioPTg-00051p-LO
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 10:19:18 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 006AJ9l9108499;
 Mon, 6 Jan 2020 04:19:09 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578305949;
 bh=0W8h6q1DjqH6SYZZFUMS/H0MQcTQzS4jdk+GtCZx1VE=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ctDffj4WfgDDK+d7ibzP0+cVRD3MpLAtsmD+a8rA4W2WkVWZp7roPUyvw9ymVrqCZ
 O+lKYsRA/jwqIs/iec2UptS9n9P8ABX5Uj2d/U0NSYvKy59ncJ61RN/UUUk5Y/N+e2
 2ucFEUu4DEKavGS5tu031/XI/dRTOKBrWlDmLK+g=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 006AJ95x031936;
 Mon, 6 Jan 2020 04:19:09 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 6 Jan
 2020 04:19:09 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 6 Jan 2020 04:19:09 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 006AIqXu118652;
 Mon, 6 Jan 2020 04:19:06 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob
 Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Andrew Murray
 <andrew.murray@arm.com>
Subject: [PATCH v2 04/14] PCI: cadence: Add support to use custom read and
 write accessors
Date: Mon, 6 Jan 2020 15:50:48 +0530
Message-ID: <20200106102058.19183-5-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200106102058.19183-1-kishon@ti.com>
References: <20200106102058.19183-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_021916_800931_61E791B5 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support to use custom read and write accessors. Platforms that
don't support half word or byte access or any other constraint
while accessing registers can use this feature to populate custom
read and write accessors. These custom accessors are used for both
standard register access and configuration space register access of
the PCIe host bridge.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/controller/cadence/pcie-cadence.h | 107 +++++++++++++++---
 1 file changed, 94 insertions(+), 13 deletions(-)

diff --git a/drivers/pci/controller/cadence/pcie-cadence.h b/drivers/pci/controller/cadence/pcie-cadence.h
index 4f6bec506841..391636a9c084 100644
--- a/drivers/pci/controller/cadence/pcie-cadence.h
+++ b/drivers/pci/controller/cadence/pcie-cadence.h
@@ -224,6 +224,11 @@ enum cdns_pcie_msg_routing {
 	MSG_ROUTING_GATHER,
 };
 
+struct cdns_pcie_ops {
+	u32	(*read)(void __iomem *addr, int size);
+	void	(*write)(void __iomem *addr, int size, u32 value);
+};
+
 /**
  * struct cdns_pcie - private data for Cadence PCIe controller drivers
  * @reg_base: IO mapped register base
@@ -240,7 +245,7 @@ struct cdns_pcie {
 	int			phy_count;
 	struct phy		**phy;
 	struct device_link	**link;
-	const struct cdns_pcie_common_ops *ops;
+	const struct cdns_pcie_ops *ops;
 };
 
 /**
@@ -311,69 +316,145 @@ struct cdns_pcie_ep {
 /* Register access */
 static inline void cdns_pcie_writeb(struct cdns_pcie *pcie, u32 reg, u8 value)
 {
-	writeb(value, pcie->reg_base + reg);
+	void __iomem *addr = pcie->reg_base + reg;
+
+	if (pcie->ops && pcie->ops->write) {
+		pcie->ops->write(addr, 0x1, value);
+		return;
+	}
+
+	writeb(value, addr);
 }
 
 static inline void cdns_pcie_writew(struct cdns_pcie *pcie, u32 reg, u16 value)
 {
-	writew(value, pcie->reg_base + reg);
+	void __iomem *addr = pcie->reg_base + reg;
+
+	if (pcie->ops && pcie->ops->write) {
+		pcie->ops->write(addr, 0x2, value);
+		return;
+	}
+
+	writew(value, addr);
 }
 
 static inline void cdns_pcie_writel(struct cdns_pcie *pcie, u32 reg, u32 value)
 {
-	writel(value, pcie->reg_base + reg);
+	void __iomem *addr = pcie->reg_base + reg;
+
+	if (pcie->ops && pcie->ops->write) {
+		pcie->ops->write(addr, 0x4, value);
+		return;
+	}
+
+	writel(value, addr);
 }
 
 static inline u32 cdns_pcie_readl(struct cdns_pcie *pcie, u32 reg)
 {
-	return readl(pcie->reg_base + reg);
+	void __iomem *addr = pcie->reg_base + reg;
+
+	if (pcie->ops && pcie->ops->read)
+		return pcie->ops->read(addr, 0x4);
+
+	return readl(addr);
 }
 
 /* Root Port register access */
 static inline void cdns_pcie_rp_writeb(struct cdns_pcie *pcie,
 				       u32 reg, u8 value)
 {
-	writeb(value, pcie->reg_base + CDNS_PCIE_RP_BASE + reg);
+	void __iomem *addr = pcie->reg_base + CDNS_PCIE_RP_BASE + reg;
+
+	if (pcie->ops && pcie->ops->write) {
+		pcie->ops->write(addr, 0x1, value);
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
+	if (pcie->ops && pcie->ops->write) {
+		pcie->ops->write(addr, 0x2, value);
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
+	if (pcie->ops && pcie->ops->write) {
+		pcie->ops->write(addr, 0x1, value);
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
+	if (pcie->ops && pcie->ops->write) {
+		pcie->ops->write(addr, 0x2, value);
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
+	if (pcie->ops && pcie->ops->write) {
+		pcie->ops->write(addr, 0x4, value);
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
+	if (pcie->ops && pcie->ops->read)
+		return pcie->ops->read(addr, 0x1);
+
+	return readb(addr);
 }
 
 static inline u16 cdns_pcie_ep_fn_readw(struct cdns_pcie *pcie, u8 fn, u32 reg)
 {
-	return readw(pcie->reg_base + CDNS_PCIE_EP_FUNC_BASE(fn) + reg);
+	void __iomem *addr = pcie->reg_base + CDNS_PCIE_EP_FUNC_BASE(fn) + reg;
+
+	if (pcie->ops && pcie->ops->read)
+		return pcie->ops->read(addr, 0x2);
+
+	return readw(addr);
 }
 
 static inline u32 cdns_pcie_ep_fn_readl(struct cdns_pcie *pcie, u8 fn, u32 reg)
 {
-	return readl(pcie->reg_base + CDNS_PCIE_EP_FUNC_BASE(fn) + reg);
+	void __iomem *addr = pcie->reg_base + CDNS_PCIE_EP_FUNC_BASE(fn) + reg;
+
+	if (pcie->ops && pcie->ops->read)
+		return pcie->ops->read(addr, 0x4);
+
+	return readl(addr);
 }
 
 #ifdef CONFIG_PCIE_CADENCE_HOST
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
