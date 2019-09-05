Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22677A98EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 05:42:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kKWh3JVtDqfVyYsnVt3oBIlSVqUhowc6Ppy1IyuhEAo=; b=b6/
	Mn4LFwFZZg9SlmL5eJfkslLHnbv74znQkqRDH15bqhLYkAEypMouuqLoXiTf+b/nTBdE3xQNFNEk2
	BH3C8a1Uqi545+XY4ct1xouIQE9/71UIhp9ebIwKS75iofEuc4ajvdMmWPsoTSqLhkKUO3Buj6ipI
	R3xF9ZwsHlmTlA5x2EYMv1PI+gFUDmpZgYytJflVOBpm7BrBPhCTMR+Wi8Q8jM+7BZHbc0sjUC30B
	ppWDKN4SeQY8A1ZxJzab3299WywxI1RdAC1Re2ZX4DpG3h+gcczq8YCgPGKWxIEt+V2979aE94ZzM
	aWytc2lPNzV6w6BtlvI2DkShFDc1wsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5iem-00057r-LP; Thu, 05 Sep 2019 03:42:00 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ief-00057a-Mh
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 03:41:55 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id x853fY68003716;
 Thu, 5 Sep 2019 12:41:35 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com x853fY68003716
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1567654895;
 bh=R46SqTBG0wiskAaYxuXipqRLOslxanzHTdul3DZROHA=;
 h=From:To:Cc:Subject:Date:From;
 b=gv5Y3PoZTVKNnNJlAVgNZCYAMA72KKtMMFDvlAhmFn2EpRR2yChDvt3wababkCszC
 HHY21EZLMBcHIcaahCgEr4j7ZAyYb3wxK2UmxQdOAd7arl/8TcNvAxPYuRfHaNq4PY
 dUNc1yK1b7AGXq3L1LUq2yzWwiQ2zYn2seXtQWtKJsJAOF0ZmLaGfi6JQMNH3ZME0X
 fZqvqKfLsR58uvg84zWeCYhhRDilgEERcDRB41+8yzsfLQy6kZNlmoUQUJxIv1of9d
 X9LEnsW5HeBrk7ClwAMnKWyna+X8DDcrzqE+M+9E3cm8uhLqs4BnBYQGyuL2VsBS7V
 p64SIMHKVZyKQ==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org
Subject: [PATCH] dmaengine: uniphier-mdmac: use
 devm_platform_ioremap_resource()
Date: Thu,  5 Sep 2019 12:41:33 +0900
Message-Id: <20190905034133.29514-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_204153_956496_6E7A6200 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.78 listed in wl.mailspike.net]
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
 Dan Williams <dan.j.williams@intel.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
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

 drivers/dma/uniphier-mdmac.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/dma/uniphier-mdmac.c b/drivers/dma/uniphier-mdmac.c
index ec65a7430dc4..e42f2312b7a1 100644
--- a/drivers/dma/uniphier-mdmac.c
+++ b/drivers/dma/uniphier-mdmac.c
@@ -385,7 +385,6 @@ static int uniphier_mdmac_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct uniphier_mdmac_device *mdev;
 	struct dma_device *ddev;
-	struct resource *res;
 	int nr_chans, ret, i;
 
 	nr_chans = platform_irq_count(pdev);
@@ -401,8 +400,7 @@ static int uniphier_mdmac_probe(struct platform_device *pdev)
 	if (!mdev)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mdev->reg_base = devm_ioremap_resource(dev, res);
+	mdev->reg_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mdev->reg_base))
 		return PTR_ERR(mdev->reg_base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
