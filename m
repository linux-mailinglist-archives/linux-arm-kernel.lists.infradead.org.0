Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5D617B034
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 22:00:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6YjcyQYs53lDg5lFRCwoUMjnHrlzyfGrRnYuHMKGk4=; b=L+v3N3MyvE9hEK
	7yf66Z01A7K1h6SjbPAZ3wwF8WEBsyOrBimpyHurbbO6ovrenMInopIw15IwIsQDOXOMgrTH/Tgxa
	8KahvOGLhLyP687mZ4mYc1NnlNscrmW44UBBJW/n7A9+66TvCpB/QJukYHjLIQ2kevyfjly4YKbrs
	yyvbPAvZlozCX6ci4DGtjSq9vEJqk2oqIJCMaUSBVifs92Gy4LsTRB8u9ScAto4QCI7yw8UlgWNuk
	Kbe3a6R28ui2/r3fLoDnVvW4LZGsMbEsq5f9pMOvIYceaXQsIZ+s6SSmz05B/PXbN3rlsQy/VybVu
	M6U6T5BNeyZhU8RcTcPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9xbd-0003cb-6O; Thu, 05 Mar 2020 21:00:33 +0000
Received: from viti.kaiser.cx ([2a01:238:43fe:e600:cd0c:bd4a:7a3:8e9f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9xae-0001h5-Kv
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 20:59:34 +0000
Received: from 250.57.4.146.static.wline.lns.sme.cust.swisscom.ch
 ([146.4.57.250] helo=martin-debian-2.paytec.ch)
 by viti.kaiser.cx with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <martin@kaiser.cx>)
 id 1j9xaX-0000e9-W5; Thu, 05 Mar 2020 21:59:26 +0100
From: Martin Kaiser <martin@kaiser.cx>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v2 4/5] hwrng: imx-rngc - check the rng type
Date: Thu,  5 Mar 2020 21:58:23 +0100
Message-Id: <20200305205824.4371-5-martin@kaiser.cx>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200305205824.4371-1-martin@kaiser.cx>
References: <20200128110102.11522-1-martin@kaiser.cx>
 <20200305205824.4371-1-martin@kaiser.cx>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_125932_830246_28510A53 
X-CRM114-Status: GOOD (  12.37  )
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

Reviewed-by: PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>
Signed-off-by: Martin Kaiser <martin@kaiser.cx>
---
 drivers/char/hw_random/imx-rngc.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/char/hw_random/imx-rngc.c b/drivers/char/hw_random/imx-rngc.c
index 92e93abcc9cc..50a8923d829a 100644
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
