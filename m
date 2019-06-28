Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 188A759515
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 09:35:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46ExQfW6eJ+u9ydlkUbuk+WwRwfAOvwEDTGQNAAfyag=; b=sA/wvK4wL2cSg6
	UseIpU6Q0YfB3nvgR0OwoVNz8lHDmRJJow0HG6wGKXHpG8RMbtaGr9OIv8ePCEPiIUUgqDkkXSbG+
	1gRApksW9/TOTjygkXUtmGOtZwJhHvCpxk4fuDppoRZGXVmTTNrhEh4z6UxuYeKiZR6aZi9CoG4cR
	jxnXXyOueiSsxx9h20UoXWa+G27N9+lP+2SM3y6mL78kNGz6cN1wiwkJnFDqXOIf3M7iWrlOWCDdC
	mkGtXNkaq4uGg4twE9iYI5XZCOzDEfr9fI7bGUK/Wrcf+fPygQvu17ASktXv5GeZKyZZDb2DyUkT1
	DQHNPqYMIcwj8uH0jb0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hglQ3-0005Ki-7j; Fri, 28 Jun 2019 07:35:39 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hglPl-0005IA-Pi; Fri, 28 Jun 2019 07:35:23 +0000
X-UUID: 1d22623ee5bb4895b8834415403f98e6-20190627
X-UUID: 1d22623ee5bb4895b8834415403f98e6-20190627
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jianjun.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2098705635; Thu, 27 Jun 2019 23:35:16 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Jun 2019 00:35:15 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Jun 2019 15:35:13 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 28 Jun 2019 15:35:12 +0800
From: Jianjun Wang <jianjun.wang@mediatek.com>
To: Ryder Lee <ryder.lee@mediatek.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Rob Herring <robh+dt@kernel.org>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>
Subject: [v2,2/2] PCI: mediatek: Add controller support for MT7629
Date: Fri, 28 Jun 2019 15:34:25 +0800
Message-ID: <20190628073425.25165-3-jianjun.wang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190628073425.25165-1-jianjun.wang@mediatek.com>
References: <20190628073425.25165-1-jianjun.wang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 91FA08810E71FD46B88CAD112DFCA01B16B5ED1478AE18F4B91DC42D229A45642000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_003521_844655_1145B56B 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, youlin.pei@mediatek.com,
 linux-kernel@vger.kernel.org, jianjun.wang@mediatek.com,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MT7629 is an ARM platform SoC which has the same PCIe IP with MT7622.

The HW default value of its Device ID is invalid, fix its Device ID to
match the hardware implementation.

Acked-by: Ryder Lee <ryder.lee@mediatek.com>
Signed-off-by: Jianjun Wang <jianjun.wang@mediatek.com>
---
 drivers/pci/controller/pcie-mediatek.c | 18 ++++++++++++++++++
 include/linux/pci_ids.h                |  1 +
 2 files changed, 19 insertions(+)

diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
index 80601e1b939e..e5e6740b635d 100644
--- a/drivers/pci/controller/pcie-mediatek.c
+++ b/drivers/pci/controller/pcie-mediatek.c
@@ -73,6 +73,7 @@
 #define PCIE_MSI_VECTOR		0x0c0
 
 #define PCIE_CONF_VEND_ID	0x100
+#define PCIE_CONF_DEVICE_ID	0x102
 #define PCIE_CONF_CLASS_ID	0x106
 
 #define PCIE_INT_MASK		0x420
@@ -141,12 +142,16 @@ struct mtk_pcie_port;
 /**
  * struct mtk_pcie_soc - differentiate between host generations
  * @need_fix_class_id: whether this host's class ID needed to be fixed or not
+ * @need_fix_device_id: whether this host's Device ID needed to be fixed or not
+ * @device_id: Device ID which this host need to be fixed
  * @ops: pointer to configuration access functions
  * @startup: pointer to controller setting functions
  * @setup_irq: pointer to initialize IRQ functions
  */
 struct mtk_pcie_soc {
 	bool need_fix_class_id;
+	bool need_fix_device_id;
+	unsigned int device_id;
 	struct pci_ops *ops;
 	int (*startup)(struct mtk_pcie_port *port);
 	int (*setup_irq)(struct mtk_pcie_port *port, struct device_node *node);
@@ -696,6 +701,9 @@ static int mtk_pcie_startup_port_v2(struct mtk_pcie_port *port)
 		writew(val, port->base + PCIE_CONF_CLASS_ID);
 	}
 
+	if (soc->need_fix_device_id)
+		writew(soc->device_id, port->base + PCIE_CONF_DEVICE_ID);
+
 	/* 100ms timeout value should be enough for Gen1/2 training */
 	err = readl_poll_timeout(port->base + PCIE_LINK_STATUS_V2, val,
 				 !!(val & PCIE_PORT_LINKUP_V2), 20,
@@ -1216,11 +1224,21 @@ static const struct mtk_pcie_soc mtk_pcie_soc_mt7622 = {
 	.setup_irq = mtk_pcie_setup_irq,
 };
 
+static const struct mtk_pcie_soc mtk_pcie_soc_mt7629 = {
+	.need_fix_class_id = true,
+	.need_fix_device_id = true,
+	.device_id = PCI_DEVICE_ID_MEDIATEK_7629,
+	.ops = &mtk_pcie_ops_v2,
+	.startup = mtk_pcie_startup_port_v2,
+	.setup_irq = mtk_pcie_setup_irq,
+};
+
 static const struct of_device_id mtk_pcie_ids[] = {
 	{ .compatible = "mediatek,mt2701-pcie", .data = &mtk_pcie_soc_v1 },
 	{ .compatible = "mediatek,mt7623-pcie", .data = &mtk_pcie_soc_v1 },
 	{ .compatible = "mediatek,mt2712-pcie", .data = &mtk_pcie_soc_mt2712 },
 	{ .compatible = "mediatek,mt7622-pcie", .data = &mtk_pcie_soc_mt7622 },
+	{ .compatible = "mediatek,mt7629-pcie", .data = &mtk_pcie_soc_mt7629 },
 	{},
 };
 
diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
index 70e86148cb1e..aa32962759b2 100644
--- a/include/linux/pci_ids.h
+++ b/include/linux/pci_ids.h
@@ -2131,6 +2131,7 @@
 #define PCI_VENDOR_ID_MYRICOM		0x14c1
 
 #define PCI_VENDOR_ID_MEDIATEK		0x14c3
+#define PCI_DEVICE_ID_MEDIATEK_7629	0x7629
 
 #define PCI_VENDOR_ID_TITAN		0x14D2
 #define PCI_DEVICE_ID_TITAN_010L	0x8001
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
