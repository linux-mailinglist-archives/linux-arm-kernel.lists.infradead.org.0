Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B89441CD1C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 08:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wfxI6TlXI7wfyD4/VUkqkVbDI3nXWPfv48Bfcr7HJ+8=; b=PLHkYf0+Cb2azQ
	R19wKwxR/aAjuYRNBl1tzM6vS7OXcNERvIVn06RIjt/Dhni6il5xn3S+Qd4ewJo6na4rYrUq1Bn+u
	C/qqsGygdKyTioohtCEwTKREAfb1si61k8Eb98eq7tcuSyYBHm1IdH1nyHIWoN6OmbJoP//dO82m6
	I5DzWSo3/szNr1C4ZfiszPmfyP0TUJS+PadJ9hhvBmf2uvFqje8/nkEk3XUW6Ix5eh6i7eQjkR64q
	9zw2QK/emZsq/5p9ZIdt62z36nqZRfl4HaUJHnSHJZTxfoD2UoCjJSICJxdgY8sKUJNtq+R8d6qCr
	FL8wqIbrRmHgEAbsd4XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY1py-000421-CL; Mon, 11 May 2020 06:22:50 +0000
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY1pr-00041A-0Q
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 06:22:44 +0000
Received: from oscar.flets-west.jp (softbank126090202047.bbtec.net
 [126.90.202.47]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id 04B6M5C5023979;
 Mon, 11 May 2020 15:22:06 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 04B6M5C5023979
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1589178126;
 bh=lWEEk/UB9W3ReMXixlbRZ9stMPWNA/9DV2LRsKm7SiI=;
 h=From:To:Cc:Subject:Date:From;
 b=VxSEeN8BYA9+zhkFuXUrgVQ7dqnZw4w133yzIG24bjpADHkLL5yVEsPF1l1BvqQWA
 bHB4u40jjq8xa3TaIYpFcpv/9fL7K21qUSBeli/9UE7P/OVemWihFEBXnKhMYRe3PO
 8625aMG6dnE6z/H8Ao4kqKx3fEb2jIiHPngGjfphMX8qi73WUuB3dcqorB4bw3iKXq
 82/FUlPlzxJogQWBx2NM2F+Btq/FWsZj+/Y6V7wOKbyCPgHSXNi72qjr+VN5VyX8dS
 BpUeu11FFNsADGIcHgVaiQEr62rmrSmRA0QOzzilExU8iz0Yes0AiYGkXaQ/o+bagT
 eN6YzL3IzO59Q==
X-Nifty-SrcIP: [126.90.202.47]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-mmc@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH] mmc: uniphier-sd: call devm_request_irq() after
 tmio_mmc_host_probe()
Date: Mon, 11 May 2020 15:21:58 +0900
Message-Id: <20200511062158.1790924-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_232243_400661_9E3462F5 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 1.9 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.77 listed in list.dnswl.org]
 0.9 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [210.131.2.77 listed in bl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, tmio_mmc_irq() handler is registered before the host is
fully initialized by tmio_mmc_host_probe(). I did not previously notice
this problem.

The boot ROM of a new Socionext SoC unmasks interrupts (CTL_IRQ_MASK)
somehow. The handler is invoked before tmio_mmc_host_probe(), then
emits noisy call trace.

Move devm_request_irq() below tmio_mmc_host_probe().

Fixes: 3fd784f745dd ("mmc: uniphier-sd: add UniPhier SD/eMMC controller driver")
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 drivers/mmc/host/uniphier-sd.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/mmc/host/uniphier-sd.c b/drivers/mmc/host/uniphier-sd.c
index a1683c49cb90..f82baf99fd69 100644
--- a/drivers/mmc/host/uniphier-sd.c
+++ b/drivers/mmc/host/uniphier-sd.c
@@ -610,11 +610,6 @@ static int uniphier_sd_probe(struct platform_device *pdev)
 		}
 	}
 
-	ret = devm_request_irq(dev, irq, tmio_mmc_irq, IRQF_SHARED,
-			       dev_name(dev), host);
-	if (ret)
-		goto free_host;
-
 	if (priv->caps & UNIPHIER_SD_CAP_EXTENDED_IP)
 		host->dma_ops = &uniphier_sd_internal_dma_ops;
 	else
@@ -642,8 +637,15 @@ static int uniphier_sd_probe(struct platform_device *pdev)
 	if (ret)
 		goto free_host;
 
+	ret = devm_request_irq(dev, irq, tmio_mmc_irq, IRQF_SHARED,
+			       dev_name(dev), host);
+	if (ret)
+		goto remove_host;
+
 	return 0;
 
+remove_host:
+	tmio_mmc_host_remove(host);
 free_host:
 	tmio_mmc_host_free(host);
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
