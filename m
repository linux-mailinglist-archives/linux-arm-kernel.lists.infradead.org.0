Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DA1FC64C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 13:28:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oE6X1k4kaBeqK0frFyGDGH/k7w5Ch9H6SYHxhQXxrmw=; b=koh
	x5OfSR3lO1wr68xwfWmK46ZiQiCQKbSdJoQObQXIEFbMeBdKnGoOdq2F/403PKeQMx75hcvtmoPrq
	S1BLvKpBAYiNlE+TRV18Xb5kFlSYS2858ER5EiKhl0D0aHQIKd5r1+6UDr1lwjrWO0i39UC/rt/B9
	COh8W+til9WSA4XyOlrEAFx46206NWmVRXLTnK3QIuLiwpLVQvCYtaQvbznbXS1XmT2XgibR0ukem
	Nr2hJvjE7Vs7GBbWKdXkD6CN4lj+P9YAq6MEFiVyEbMi8bemC0pFE3WRcy3FQ7uFZLSMOU6lFZJ1L
	Rlx1CFafUVJhyvFGxhDrAff7H+uxo2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVEEL-0000av-Od; Thu, 14 Nov 2019 12:28:09 +0000
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVEED-0000aN-1r
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 12:28:02 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id xAECR7jJ000853;
 Thu, 14 Nov 2019 21:27:08 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com xAECR7jJ000853
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1573734429;
 bh=9TSKJqihdLxzzA14xKVF4zpxiUSO4ACCxImJ7e5ZBeo=;
 h=From:To:Cc:Subject:Date:From;
 b=nyXT2As5MHTHfqOrIp9o1kyhAFrBnQrqX5MU4L6ulbeKtAcvXGHIwUFS2rrI1jXaP
 HmYp4HnnM0gvS17ztD+LbBjQvcITVD4UVpQP0uCRR2bY+hU/wcQ4ytbkH+vFoPnzuK
 D84XJUweb6v3K5ybcZjKJ56SDHMezOrtTlPha1xPjCXih7x2lkehI1qehcL7ttskvx
 yt/8uHbqa4GRgC79VmmgBtwkSfdWO05FNogy/ll/PR0v4r+PUfle2g4vSPtF7hQ2CM
 o+gQLe3+kwd2Vc0ZDMWOP20qH6MbLpU0+JB0m+EfndVxCLbTCOo+ytkHSJUIr9hs9y
 dJEJHy8Ce5pww==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Andrew Murray <andrew.murray@arm.com>, linux-pci@vger.kernel.org
Subject: [PATCH] PCI: uniphier: remove module code from built-in driver
Date: Thu, 14 Nov 2019 21:26:54 +0900
Message-Id: <20191114122654.1490-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_042801_455763_D4A95FB1 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.79 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-kernel@vger.kernel.org,
 Paul Gortmaker <paul.gortmaker@windriver.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

builtin_platform_driver() and MODULE_* are always odd combination.

The MODULE_* tags are never populated since CONFIG_PCIE_UNIPHIER is
a bool option.

You can see similar cleanups by:
  git log --grep='explicitly non-modular'

Following those commits, remove all the MODULE_* tags and the driver
detach code.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Reviewed-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---

 drivers/pci/controller/dwc/pcie-uniphier.c | 31 +---------------------
 1 file changed, 1 insertion(+), 30 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-uniphier.c b/drivers/pci/controller/dwc/pcie-uniphier.c
index 3f30ee4a00b3..8c92b660a0f6 100644
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
@@ -161,12 +161,6 @@ static void uniphier_pcie_irq_enable(struct uniphier_pcie_priv *priv)
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
@@ -387,14 +381,6 @@ static int uniphier_pcie_host_enable(struct uniphier_pcie_priv *priv)
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
@@ -446,31 +432,16 @@ static int uniphier_pcie_probe(struct platform_device *pdev)
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
