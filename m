Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE27017B033
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 22:00:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RWRK6C+CMdV/oidDoFatht4qR0kXbZ2OZ4XZYZFxqUk=; b=oCQfsag17gTqkB
	/0Snpow0aG7Heqn12lvpLeknHkcGAQ8i4HyWcpsz/NogEi07OWoN/2yc+n//gTxbdA5EEbdqdzZcl
	MCWvPTg8ZoTfkNxHBU0jvc33ZSbqIqnax2GUjrlDdIY8rJE4YO7m1M/w1hw3yjbEMx60Wcte/auR7
	HgR0rbZhjT0nl+LAVIjxbAJQjOVGXE7nADSMdH+H2HKMGIX2j3wxOXGhzS+XNO81AlONKLClz2h38
	GXw1k7QPOXzWzODoXy5ZKm80JbHKRGfYXDIycIGKkLXnvyIHj8UY2JzWrSpB+p42ighPERUKty0Bz
	s3oZnFQDPSzhacMaMPnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9xbP-00029C-3v; Thu, 05 Mar 2020 21:00:19 +0000
Received: from viti.kaiser.cx ([2a01:238:43fe:e600:cd0c:bd4a:7a3:8e9f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9xae-0001h4-M0
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 20:59:34 +0000
Received: from 250.57.4.146.static.wline.lns.sme.cust.swisscom.ch
 ([146.4.57.250] helo=martin-debian-2.paytec.ch)
 by viti.kaiser.cx with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <martin@kaiser.cx>)
 id 1j9xaW-0000e9-Av; Thu, 05 Mar 2020 21:59:24 +0100
From: Martin Kaiser <martin@kaiser.cx>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v2 3/5] hwrng: imx-rngc - (trivial) simplify error prints
Date: Thu,  5 Mar 2020 21:58:22 +0100
Message-Id: <20200305205824.4371-4-martin@kaiser.cx>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200305205824.4371-1-martin@kaiser.cx>
References: <20200128110102.11522-1-martin@kaiser.cx>
 <20200305205824.4371-1-martin@kaiser.cx>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_125932_862581_72C67540 
X-CRM114-Status: GOOD (  10.46  )
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

Remove the device name, it is added by the dev_...() routines.

Drop the error code as well. It will be shown by the driver core when
the probe operation failed.

Reviewed-by: PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>
Signed-off-by: Martin Kaiser <martin@kaiser.cx>
---
 drivers/char/hw_random/imx-rngc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/char/hw_random/imx-rngc.c b/drivers/char/hw_random/imx-rngc.c
index 903894518c8d..92e93abcc9cc 100644
--- a/drivers/char/hw_random/imx-rngc.c
+++ b/drivers/char/hw_random/imx-rngc.c
@@ -258,14 +258,14 @@ static int imx_rngc_probe(struct platform_device *pdev)
 	if (self_test) {
 		ret = imx_rngc_self_test(rngc);
 		if (ret) {
-			dev_err(rngc->dev, "FSL RNGC self test failed.\n");
+			dev_err(rngc->dev, "self test failed\n");
 			goto err;
 		}
 	}
 
 	ret = hwrng_register(&rngc->rng);
 	if (ret) {
-		dev_err(&pdev->dev, "FSL RNGC registering failed (%d)\n", ret);
+		dev_err(&pdev->dev, "hwrng registration failed\n");
 		goto err;
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
