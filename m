Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E03AA1F6157
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 07:41:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2Kl0cbtaMbZguHIvx8hRJZBmxVB+g8GU/L2PRm1F8X0=; b=g4NqDjvP+CDSLt
	dFQar3NvsA1sgdHKW7Y4qKi7TEIp0gOins0oE1GH6wTmVEfvTf4BQUv3EU1umPThcQNiycc4JzUqJ
	qc3eYszmFDMLfSyFLh8DeDE7DvBogQ4LvYfu35fjW7L8tBVB3xkrg0uhrPEyoKGXmbDghsaxQ9LB7
	cwwbupaRe+sgusi3b2HxjNRrk71ExSC9Dc/XLq8n/l+q5+tDYSKR6jFcy4saqJNce4wQPPAjlJTYj
	71J6J9fFy6LS8vUGemb0skaySa5Vn9o3cS+c/RLlHLeAmfrdcMy8QmiCVIHObjrPsK4dprW/Jk19L
	xRwj5TY+ro+5GL16/0yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjFyH-0001K8-Jm; Thu, 11 Jun 2020 05:41:49 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjFy8-0001II-Ky
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 05:41:42 +0000
Received: from T480.siklu.local (unknown [212.29.212.82])
 by mx.tkos.co.il (Postfix) with ESMTPA id 73B5C440049;
 Thu, 11 Jun 2020 08:41:35 +0300 (IDT)
From: Shmuel Hazan <sh@tkos.co.il>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>
Subject: [PATCH] pci: pci-mvebu: setup BAR0 to internal-regs
Date: Thu, 11 Jun 2020 08:40:42 +0300
Message-Id: <20200611054041.1484001-1-sh@tkos.co.il>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_224140_920842_2DFE28B3 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.115.133.116 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [212.29.212.82 listed in zen.spamhaus.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Baruch Siach <baruch@tkos.co.il>, linux-pci@vger.kernel.org,
 Shmuel Hazan <sh@tkos.co.il>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>,
 Chris ackham <chris.packham@alliedtelesis.co.nz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the Armada XP datasheet, section 10.2.6: "in order for
the device todo a write to the MSI doorbell address, it needs to write
to a register in the internal registers" space".

As a result of the requirement above, without this patch, MSI won't
function and therefore some devices won't operate properly without
pci=nomsi.

Tested on an Armada 385 board with the following PCIe devices:
	- Wilocity Wil6200 rev 2 (wil6210)
	- Qualcomm Atheros QCA6174 (ath10k_pci)

Both failed to get a response from the device after loading the
firmware and seem to operate properly with this patch.

Signed-off-by: Shmuel Hazan <sh@tkos.co.il>
---
 drivers/pci/controller/pci-mvebu.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/pci-mvebu.c b/drivers/pci/controller/pci-mvebu.c
index 153a64676bc9..101c06602aa1 100644
--- a/drivers/pci/controller/pci-mvebu.c
+++ b/drivers/pci/controller/pci-mvebu.c
@@ -105,6 +105,7 @@ struct mvebu_pcie_port {
 	struct mvebu_pcie_window memwin;
 	struct mvebu_pcie_window iowin;
 	u32 saved_pcie_stat;
+	struct resource regs;
 };
 
 static inline void mvebu_writel(struct mvebu_pcie_port *port, u32 val, u32 reg)
@@ -149,7 +150,9 @@ static void mvebu_pcie_set_local_dev_nr(struct mvebu_pcie_port *port, int nr)
 
 /*
  * Setup PCIE BARs and Address Decode Wins:
- * BAR[0,2] -> disabled, BAR[1] -> covers all DRAM banks
+ * BAR[0] -> internal registers (needed for MSI)
+ * BAR[1] -> covers all DRAM banks
+ * BAR[2] -> Disabled
  * WIN[0-3] -> DRAM bank[0-3]
  */
 static void mvebu_pcie_setup_wins(struct mvebu_pcie_port *port)
@@ -203,6 +206,12 @@ static void mvebu_pcie_setup_wins(struct mvebu_pcie_port *port)
 	mvebu_writel(port, 0, PCIE_BAR_HI_OFF(1));
 	mvebu_writel(port, ((size - 1) & 0xffff0000) | 1,
 		     PCIE_BAR_CTRL_OFF(1));
+
+	/*
+	 * Point BAR[0] to the device's internal registers.
+	 */
+	mvebu_writel(port, round_down(port->regs.start, SZ_1M), PCIE_BAR_LO_OFF(0));
+	mvebu_writel(port, 0, PCIE_BAR_HI_OFF(0));
 }
 
 static void mvebu_pcie_setup_hw(struct mvebu_pcie_port *port)
@@ -708,14 +717,13 @@ static void __iomem *mvebu_pcie_map_registers(struct platform_device *pdev,
 					      struct device_node *np,
 					      struct mvebu_pcie_port *port)
 {
-	struct resource regs;
 	int ret = 0;
 
-	ret = of_address_to_resource(np, 0, &regs);
+	ret = of_address_to_resource(np, 0, &port->regs);
 	if (ret)
 		return (void __iomem *)ERR_PTR(ret);
 
-	return devm_ioremap_resource(&pdev->dev, &regs);
+	return devm_ioremap_resource(&pdev->dev, &port->regs);
 }
 
 #define DT_FLAGS_TO_TYPE(flags)       (((flags) >> 24) & 0x03)
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
