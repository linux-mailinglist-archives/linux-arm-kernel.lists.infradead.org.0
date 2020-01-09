Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B12713530F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 07:07:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IZjXsCrMA/oDOPQN+ltoyS5P8pAOqe1qW93se+ijoM4=; b=WTC
	BCIxd9eAgME6WzLbyHPuymmHQkybg2VVCYvFNFJ+wRRIFUHYL70G3+ynvSS68IebZEZZ+7Cd2WNHs
	o6OVTMHdHSxLvE7lqxyDyo6SHug6EGmtJ6iFyWQDYB9gDf1/BHrzaLKxIQOH0B0BmAwJcZzF8UZk+
	lt05mNCjAvOjT0OvncUvQ0mfM2OR3Q5s3qUM5d7qCXCH1CBNeMwHnB/Y3UOdxV1AEj9IZWq/AmiOJ
	6RQPbRm0vGChk4rMjDxvelIJOjM+x91l4XRmFzREs8visT6438KqbMgqCn6f6SMbEa9LjIVXkLBvh
	dOriH91ZPIehVAjPtn7DWfJJ3lpHwxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipQyS-0002uY-6t; Thu, 09 Jan 2020 06:07:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipQyH-0002tR-Su
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 06:07:08 +0000
Received: from localhost (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2ADA8205F4;
 Thu,  9 Jan 2020 06:07:05 +0000 (UTC)
From: Shawn Guo <shawn.guo@linaro.org>
To: linux-pci@vger.kernel.org
Subject: [PATCH] PCI: dwc: Separate CFG0 and CFG1 into different ATU regions
Date: Thu,  9 Jan 2020 14:06:57 +0800
Message-Id: <20200109060657.1953-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_220705_955980_AA8CABB1 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Zaihai Yu <yuzaihai@hisilicon.com>, Jingoo Han <jingoohan1@gmail.com>,
 Pratyush Anand <pratyush.anand@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Shawn Guo <shawn.guo@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some platform has 4 (or more) viewports.  In that case, CFG0 and CFG1
can be separated into different ATU regions.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 .../pci/controller/dwc/pcie-designware-host.c    | 16 +++++++++++++++-
 drivers/pci/controller/dwc/pcie-designware.h     |  1 +
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index 0f36a926059a..504d2a192bba 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -532,6 +532,7 @@ static int dw_pcie_access_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 	u64 cpu_addr;
 	void __iomem *va_cfg_base;
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	int index = PCIE_ATU_REGION_INDEX1;
 
 	busdev = PCIE_ATU_BUS(bus->number) | PCIE_ATU_DEV(PCI_SLOT(devfn)) |
 		 PCIE_ATU_FUNC(PCI_FUNC(devfn));
@@ -548,7 +549,20 @@ static int dw_pcie_access_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 		va_cfg_base = pp->va_cfg1_base;
 	}
 
-	dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX1,
+	if (pci->num_viewport >= 4) {
+		/*
+		 * If there are 4 (or more) viewports, we can separate
+		 * CFG0 and CFG1 into different ATU regions:
+		 *  - region0: MEM
+		 *  - region1: CFG0
+		 *  - region2: IO
+		 *  - region3: CFG1
+		 */
+		if (type == PCIE_ATU_TYPE_CFG1)
+			index = PCIE_ATU_REGION_INDEX3;
+	}
+
+	dw_pcie_prog_outbound_atu(pci, index,
 				  type, cpu_addr,
 				  busdev, cfg_size);
 	if (write)
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 5a18e94e52c8..86225804f1e7 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -63,6 +63,7 @@
 #define PCIE_ATU_VIEWPORT		0x900
 #define PCIE_ATU_REGION_INBOUND		BIT(31)
 #define PCIE_ATU_REGION_OUTBOUND	0
+#define PCIE_ATU_REGION_INDEX3		0x3
 #define PCIE_ATU_REGION_INDEX2		0x2
 #define PCIE_ATU_REGION_INDEX1		0x1
 #define PCIE_ATU_REGION_INDEX0		0x0
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
