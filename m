Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AAA1C7402
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 17:16:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sFE85eh8NImFQQ7nlGLOZUUzGCxJ5yjNgHq+rIaMpIQ=; b=YUKwXIrXXl4JPo
	NCBB6L6V7KCJed/xkliXy/mWnQknvc5vcuQS+tQFVi1mqFxpqBju5XhW4W0teFdOiGycRc8EuHLDt
	BIeE0wtzLqpImbkxZtfxxbNJvUe4DkoqdW8lATDbMCDZLCGWgk26PCqwddVk8c4hNQUUx3Lx++369
	BIFzt0MagF4dkqc5OFXIKLNY9n/NgeBJxSbLFbHaDhkuQMPZA8m5u5izt3a+tNQApJAGkp6E8kiTg
	sKKUGO95498t+9q4Iiv4GlZnhNCVeCv/C3g0EPVCBXDBl9yVN/UYPF/+/X6dlzZuzfqdgzLp0Bhm4
	K+alDvOG7u67wuU8eUjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWLmt-0004wu-48; Wed, 06 May 2020 15:16:43 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWLlC-0000ZS-Oo
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 15:15:00 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 046FEkMm096803;
 Wed, 6 May 2020 10:14:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588778086;
 bh=DOBs9Avsla6Bvl41pGUSBS2Aw8GI+lo3Fc5IsqKblZY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=RVRbJ1cy7e6LHv8Xmp2/S9PjW63MP4xleWOnSHY7b0mFmZjx8dx9UfJw4fgNUoIKq
 tiyvZNz/yu5j7uSj/UDWPrD4Kh6uLia+3yoFXgtRS3l7os/aNhiI+BQiHP679swqp8
 GKTzZkw2qdHiGNM9cNyl/5rrJ8OVyVN6O7Ot1IX4=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 046FEkaI099712
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 6 May 2020 10:14:46 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 6 May
 2020 10:14:45 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 6 May 2020 10:14:45 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 046FEUg9119457;
 Wed, 6 May 2020 10:14:42 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Tom Joseph <tjoseph@cadence.com>
Subject: [PATCH v4 03/14] PCI: cadence: Add support to use custom read and
 write accessors
Date: Wed, 6 May 2020 20:44:18 +0530
Message-ID: <20200506151429.12255-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506151429.12255-1-kishon@ti.com>
References: <20200506151429.12255-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_081458_889124_B34FF8C4 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-pci@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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
index df14ad002fe9..70b6b25153e8 100644
--- a/drivers/pci/controller/cadence/pcie-cadence.h
+++ b/drivers/pci/controller/cadence/pcie-cadence.h
@@ -223,6 +223,11 @@ enum cdns_pcie_msg_routing {
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
@@ -239,7 +244,7 @@ struct cdns_pcie {
 	int			phy_count;
 	struct phy		**phy;
 	struct device_link	**link;
-	const struct cdns_pcie_common_ops *ops;
+	const struct cdns_pcie_ops *ops;
 };
 
 /**
@@ -299,69 +304,145 @@ struct cdns_pcie_ep {
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
