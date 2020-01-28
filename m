Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB73214B337
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 12:02:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ozlQSvvbZ/528cm1sbGhrr9iMRaBnk/BgVLqzYEcfFo=; b=lJDkadaztaNSHv
	eDyC5/CoN4t/zOPMmbLY1EG7QZEWHlmbu0PgMTB2z5kENOaY1O6UmrGe7E5yOjiOJ218t4TlXI5+G
	gVZt4fU6Ffjxk4+mkocV3KpLhE9PBnO/sY23JEZsgyN9HmVUd5C4xy+aM94jkelksQRMEoU0m4szd
	YpRXAHHteoWt66QkJcIN43tcv7m8Awfow2Pxh47x4+OT1iKslZ+38cfDVBewk/OUXV9c/vLfRL7Ax
	5/DB9ljlRHPpQoPpIyQEPdOnxTRNHdPf1t2T6SvhYEp6sjGi442nTcJnf5XIMiunZ6csj63Axi2wp
	+Wlba5Hnx6LtVuu7lFFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwOdq-0006vE-8H; Tue, 28 Jan 2020 11:02:46 +0000
Received: from viti.kaiser.cx ([2a01:238:43fe:e600:cd0c:bd4a:7a3:8e9f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwOcm-0006An-TB
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 11:01:42 +0000
Received: from dslb-088-068-095-017.088.068.pools.vodafone-ip.de
 ([88.68.95.17] helo=martin-debian-1.paytec.ch)
 by viti.kaiser.cx with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <martin@kaiser.cx>)
 id 1iwOch-0008Dy-DF; Tue, 28 Jan 2020 12:01:35 +0100
From: Martin Kaiser <martin@kaiser.cx>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 3/6] hwrng: imx-rngc - use devres for registration
Date: Tue, 28 Jan 2020 12:00:59 +0100
Message-Id: <20200128110102.11522-4-martin@kaiser.cx>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200128110102.11522-1-martin@kaiser.cx>
References: <20200128110102.11522-1-martin@kaiser.cx>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_030141_105107_1F6C13BB 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Martin Kaiser <martin@kaiser.cx>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devres to register the rngc with the hwrng core. Drop the explicit
deregistration.

Signed-off-by: Martin Kaiser <martin@kaiser.cx>
---
 drivers/char/hw_random/imx-rngc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/char/hw_random/imx-rngc.c b/drivers/char/hw_random/imx-rngc.c
index 903894518c8d..1381ddd5b891 100644
--- a/drivers/char/hw_random/imx-rngc.c
+++ b/drivers/char/hw_random/imx-rngc.c
@@ -263,7 +263,7 @@ static int imx_rngc_probe(struct platform_device *pdev)
 		}
 	}
 
-	ret = hwrng_register(&rngc->rng);
+	ret = devm_hwrng_register(&pdev->dev, &rngc->rng);
 	if (ret) {
 		dev_err(&pdev->dev, "FSL RNGC registering failed (%d)\n", ret);
 		goto err;
@@ -282,8 +282,6 @@ static int __exit imx_rngc_remove(struct platform_device *pdev)
 {
 	struct imx_rngc *rngc = platform_get_drvdata(pdev);
 
-	hwrng_unregister(&rngc->rng);
-
 	clk_disable_unprepare(rngc->clk);
 
 	return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
