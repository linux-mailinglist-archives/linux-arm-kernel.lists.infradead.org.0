Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929E711FBAE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 23:40:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6JakBi+lNFu8Lv/TQqRZkeCf3gp/vQlGh9HDZvf2zc0=; b=HCA
	wxTdFE+ADrNh571bwcRwSjnxrCAipbk/tRuKvnlB+2xeeBKeB6WSjQrS5X7TcbX5Fe3ZBiPEUHMI2
	ytAL7uhcQaTAwwMdDMUqaGttRMmpNpsx0AqdL0aywh2CNJMtnXIehky/JLz+IrFFk5qNLH8Xcp7sW
	kf1hd55YBOPyfkwz21nYfXJNAxwENkTNDTdnI7IIH6KC1fe8RQiqTZK8XbAq7BMewIEFHpPpWXBUK
	I6Y8TIc6Vxlv1nxqKUk86Ml3aQtUVkK9cCnxqv354ON+olzs87IgB7BCLUCgL69e34aQNo7qLu2r5
	Gc+yOktUzsnKNZGzxPOgHzEi6kTFU1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igcZ4-0005V7-VE; Sun, 15 Dec 2019 22:40:38 +0000
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igcYy-0005Uc-Ba
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 22:40:34 +0000
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id xBFMdess006397;
 Mon, 16 Dec 2019 07:39:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com xBFMdess006397
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1576449581;
 bh=i0oU5g5CjQIetP14HFEjJsItIoa4W1ipl4ajrjt0JKk=;
 h=From:To:Cc:Subject:Date:From;
 b=kzgaCKL2ZBe8y8oSOUSe9RJ0JB6GmD83VGhv9bWLKotEPGtum7t/5vwW+zi5G63Ap
 cIkIL9qPJQIqI2aL5+Pyz978Qb2bdtuDRUzISectClQsvBU5DGxzy7gY9eDPqXJLo+
 pqaW+vC0eREcMFcGvWlpmyX1RL1YtMbpjBvd7WCV9Py0se/dy1WvSNm27epozcJ4nf
 qNzxbJHV2osBRhuSF7ultgfZEknKJAOKG0WGx26M+p7lUy+hI/ETa6nz7TzwPraTlU
 q8YObApL6Ko82u/QaHZzd2/3bQrh9ug+pL3REntcZpGj8202ccXoSsgE2Sy3rFrW+Y
 LX2E2jLs05rDQ==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org
Subject: [PATCH v2] PCI: uniphier: remove module code from built-in driver
Date: Mon, 16 Dec 2019 07:39:37 +0900
Message-Id: <20191215223937.19619-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_144032_739672_E337C0F0 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.77 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

builtin_platform_driver() and MODULE_* are always odd combination.

This file is not compiled as a module by anyone because
CONFIG_PCIE_UNIPHIER is a bool option.

Let's remove the modular code that is essentially orphaned, so that
when reading the driver there is no doubt it is builtin-only.

We explicitly disallow a driver unbind, since that doesn't have a
sensible use case anyway, and it allows us to drop the ".remove" code.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

Changes in v2:
  - update commit description
  - remove Reviewed-by

 drivers/pci/controller/dwc/pcie-uniphier.c | 31 +---------------------
 1 file changed, 1 insertion(+), 30 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-uniphier.c b/drivers/pci/controller/dwc/pcie-uniphier.c
index 8fd7badd59c2..a5401a0b1e58 100644
--- a/drivers/pci/controller/dwc/pcie-uniphier.c
+++ b/drivers/pci/controller/dwc/pcie-uniphier.c
@@ -9,11 +9,11 @@
 #include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
+#include <linux/init.h>
 #include <linux/interrupt.h>
 #include <linux/iopoll.h>
 #include <linux/irqchip/chained_irq.h>
 #include <linux/irqdomain.h>
-#include <linux/module.h>
 #include <linux/of_irq.h>
 #include <linux/pci.h>
 #include <linux/phy/phy.h>
@@ -171,12 +171,6 @@ static void uniphier_pcie_irq_enable(struct uniphier_pcie_priv *priv)
 	writel(PCL_RCV_INTX_ALL_ENABLE, priv->base + PCL_RCV_INTX);
 }
 
-static void uniphier_pcie_irq_disable(struct uniphier_pcie_priv *priv)
-{
-	writel(0, priv->base + PCL_RCV_INT);
-	writel(0, priv->base + PCL_RCV_INTX);
-}
-
 static void uniphier_pcie_irq_ack(struct irq_data *d)
 {
 	struct pcie_port *pp = irq_data_get_irq_chip_data(d);
@@ -397,14 +391,6 @@ static int uniphier_pcie_host_enable(struct uniphier_pcie_priv *priv)
 	return ret;
 }
 
-static void uniphier_pcie_host_disable(struct uniphier_pcie_priv *priv)
-{
-	uniphier_pcie_irq_disable(priv);
-	phy_exit(priv->phy);
-	reset_control_assert(priv->rst);
-	clk_disable_unprepare(priv->clk);
-}
-
 static const struct dw_pcie_ops dw_pcie_ops = {
 	.start_link = uniphier_pcie_establish_link,
 	.stop_link = uniphier_pcie_stop_link,
@@ -456,31 +442,16 @@ static int uniphier_pcie_probe(struct platform_device *pdev)
 	return uniphier_add_pcie_port(priv, pdev);
 }
 
-static int uniphier_pcie_remove(struct platform_device *pdev)
-{
-	struct uniphier_pcie_priv *priv = platform_get_drvdata(pdev);
-
-	uniphier_pcie_host_disable(priv);
-
-	return 0;
-}
-
 static const struct of_device_id uniphier_pcie_match[] = {
 	{ .compatible = "socionext,uniphier-pcie", },
 	{ /* sentinel */ },
 };
-MODULE_DEVICE_TABLE(of, uniphier_pcie_match);
 
 static struct platform_driver uniphier_pcie_driver = {
 	.probe  = uniphier_pcie_probe,
-	.remove = uniphier_pcie_remove,
 	.driver = {
 		.name = "uniphier-pcie",
 		.of_match_table = uniphier_pcie_match,
 	},
 };
 builtin_platform_driver(uniphier_pcie_driver);
-
-MODULE_AUTHOR("Kunihiko Hayashi <hayashi.kunihiko@socionext.com>");
-MODULE_DESCRIPTION("UniPhier PCIe host controller driver");
-MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
