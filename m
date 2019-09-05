Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20ED4A9909
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 05:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JPow0nCK/XOYQoV1SifHAA0k83tMGS6FpiVqSX7odTs=; b=Ij2
	HGD9h/9u93CDksPNEppR2BENDUwBvuLE0ITF9TuIT3qP1sbz6t53DTHlPVjauAHqfW5i7d6mZcdWf
	vPOq0ptXy5TVu689Vl/Hb88irL+Md5VDSdk70JREuSz9Ic2N9HLm4yyOIdlPQa5UFZQ4ubLXcMDFa
	9C1gZQInjG7pWn6O3yIzevrxxsmxCvrtcwz2UYligYzCZeOoHoVkLqISHeUXHEdOFrqz1DBopd2fX
	656V7kzcD22jxQle9ZQNd6Tj3UaxLtFSEsytw/la/Rl2W0wQy3JMT74jDyQ505s+/pbRhsyk3oqzV
	A1STgY3ZN34FpKRRWD6SvwpV3ieIJrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5imj-0003X6-6t; Thu, 05 Sep 2019 03:50:13 +0000
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5imY-0002pf-Ps
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 03:50:04 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id x853naL4022436;
 Thu, 5 Sep 2019 12:49:36 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com x853naL4022436
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1567655376;
 bh=m+VFVDgsbj7vdDly5A6Xk6C0RvP7zfj9OdjMeGF3RbM=;
 h=From:To:Cc:Subject:Date:From;
 b=XyM51OJWda3Wd0pahMvAKiSfBLO4I85fcNhBbIorH1tg1KsrSN/w+GAtiUETA0lOr
 VJEcO4+nZEWa+Hsfzghx66gPYhUs3kiaNScFuwgf1QL/ui5ISGp7HxQA8h6tEmOsxV
 1Q/IM5OMaAmyCVu4D+qIYOEAijJXYyEcH13wWu+jYsvQWR2xpBiuGpm6jsEh7whMVg
 n9m5BbTj2W7VDkAGrIjYurD6/b1LH3/cr4tfpbU045p44JFn838L0h2xAKtT0rXzt6
 P93ga3wjY8zwMnObhW1n9yksTk9+hsSRnyl3OK0d7pHLoEYmJU9U80zsORF7SLT5fg
 UyoLJD/8SnYQA==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>
Subject: [PATCH] irqchip: uniphier-aidet: use devm_platform_ioremap_resource()
Date: Thu,  5 Sep 2019 12:49:32 +0900
Message-Id: <20190905034932.12587-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_205003_067763_12A163CD 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the chain of platform_get_resource() and devm_ioremap_resource()
with devm_platform_ioremap_resource().

This allows to remove the local variable for (struct resource *), and
have one function call less.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 drivers/irqchip/irq-uniphier-aidet.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/irqchip/irq-uniphier-aidet.c b/drivers/irqchip/irq-uniphier-aidet.c
index ed7b4f47ff3f..89121b39be26 100644
--- a/drivers/irqchip/irq-uniphier-aidet.c
+++ b/drivers/irqchip/irq-uniphier-aidet.c
@@ -166,7 +166,6 @@ static int uniphier_aidet_probe(struct platform_device *pdev)
 	struct device_node *parent_np;
 	struct irq_domain *parent_domain;
 	struct uniphier_aidet_priv *priv;
-	struct resource *res;
 
 	parent_np = of_irq_find_parent(dev->of_node);
 	if (!parent_np)
@@ -181,8 +180,7 @@ static int uniphier_aidet_probe(struct platform_device *pdev)
 	if (!priv)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	priv->reg_base = devm_ioremap_resource(dev, res);
+	priv->reg_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(priv->reg_base))
 		return PTR_ERR(priv->reg_base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
