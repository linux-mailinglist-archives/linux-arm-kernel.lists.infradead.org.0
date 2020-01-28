Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2759714B339
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 12:03:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+DQKmQriEWGt7xvEAMiwQzmV8uIywvbNu2gKu1AOzFg=; b=J78nlnU045ix/x
	snRGAPoqOS4zgfVIEQ8lSNbgKMXVVmVG1UMtPgxr9UGUi6yVjVRDqjK9y0n3aeHGSt3pMu3vj92Yv
	EVecnyPj/lSqjg5xzL4Ewn2lDGo5Ed+bz/qwwlBUYSXILKdX7Kyomrx21VBeKAy5+nIhF9VnXNfOC
	IpJ2Cwyb85xK7Oyz1a+tlZ5fgkLwuCu1EXmDLzmzr/fEZPBTie5za2MZurB95KyohYvka9TGUA4y6
	BFVl/sq+UUWsivoZsSFDS1Ao5/eDIUhn9Qe8rHTfc6sTFpe2bFc+1XolwJW+WOzN+1uao9OqzBEIT
	+hxZwZvBpSWgDPKLAHDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwOeI-0007QK-Ou; Tue, 28 Jan 2020 11:03:14 +0000
Received: from viti.kaiser.cx ([2a01:238:43fe:e600:cd0c:bd4a:7a3:8e9f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwOcp-0006DR-IJ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 11:01:45 +0000
Received: from dslb-088-068-095-017.088.068.pools.vodafone-ip.de
 ([88.68.95.17] helo=martin-debian-1.paytec.ch)
 by viti.kaiser.cx with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <martin@kaiser.cx>)
 id 1iwOck-0008Dy-Jl; Tue, 28 Jan 2020 12:01:38 +0100
From: Martin Kaiser <martin@kaiser.cx>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 5/6] hwrng: imx-rngc - check the rng type
Date: Tue, 28 Jan 2020 12:01:01 +0100
Message-Id: <20200128110102.11522-6-martin@kaiser.cx>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200128110102.11522-1-martin@kaiser.cx>
References: <20200128110102.11522-1-martin@kaiser.cx>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_030143_805633_E91471D3 
X-CRM114-Status: GOOD (  11.91  )
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

Read the rng type and hardware revision during probe. Fail the probe
operation if the type is not one of rngc or rngb.
(There's also an rnga type, which needs a different driver.)

Display the type and revision in a debug print if probe was successful.

Signed-off-by: Martin Kaiser <martin@kaiser.cx>
---
 drivers/char/hw_random/imx-rngc.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/char/hw_random/imx-rngc.c b/drivers/char/hw_random/imx-rngc.c
index 8222055b9e9b..27d85fced30b 100644
--- a/drivers/char/hw_random/imx-rngc.c
+++ b/drivers/char/hw_random/imx-rngc.c
@@ -18,12 +18,22 @@
 #include <linux/completion.h>
 #include <linux/io.h>
 
+#define RNGC_VER_ID			0x0000
 #define RNGC_COMMAND			0x0004
 #define RNGC_CONTROL			0x0008
 #define RNGC_STATUS			0x000C
 #define RNGC_ERROR			0x0010
 #define RNGC_FIFO			0x0014
 
+/* the fields in the ver id register */
+#define RNGC_TYPE_SHIFT		28
+#define RNGC_VER_MAJ_SHIFT		8
+
+/* the rng_type field */
+#define RNGC_TYPE_RNGB			0x1
+#define RNGC_TYPE_RNGC			0x2
+
+
 #define RNGC_CMD_CLR_ERR		0x00000020
 #define RNGC_CMD_CLR_INT		0x00000010
 #define RNGC_CMD_SEED			0x00000002
@@ -212,6 +222,8 @@ static int imx_rngc_probe(struct platform_device *pdev)
 	struct imx_rngc *rngc;
 	int ret;
 	int irq;
+	u32 ver_id;
+	u8  rng_type;
 
 	rngc = devm_kzalloc(&pdev->dev, sizeof(*rngc), GFP_KERNEL);
 	if (!rngc)
@@ -237,6 +249,17 @@ static int imx_rngc_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	ver_id = readl(rngc->base + RNGC_VER_ID);
+	rng_type = ver_id >> RNGC_TYPE_SHIFT;
+	/*
+	 * This driver supports only RNGC and RNGB. (There's a different
+	 * driver for RNGA.)
+	 */
+	if (rng_type != RNGC_TYPE_RNGC && rng_type != RNGC_TYPE_RNGB) {
+		ret = -ENODEV;
+		goto err;
+	}
+
 	ret = devm_request_irq(&pdev->dev,
 			irq, imx_rngc_irq, 0, pdev->name, (void *)rngc);
 	if (ret) {
@@ -269,7 +292,10 @@ static int imx_rngc_probe(struct platform_device *pdev)
 		goto err;
 	}
 
-	dev_info(&pdev->dev, "Freescale RNGC registered.\n");
+	dev_info(&pdev->dev,
+		"Freescale RNG%c registered (HW revision %d.%02d)\n",
+		rng_type == RNGC_TYPE_RNGB ? 'B' : 'C',
+		(ver_id >> RNGC_VER_MAJ_SHIFT) & 0xff, ver_id & 0xff);
 	return 0;
 
 err:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
