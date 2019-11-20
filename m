Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A8F103E8B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 16:29:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hRJcaewrLypna35H+AifUzGQdUgyCQuv+oKjMpgOJI4=; b=Weta20IgTa8mfM
	cMCKPaX14d16MgEF5hiyLxIN7XEUTBBljR+WxvTOwKePAVM0wECbE1yOY8O9ZNRnaONtzi59a3ir/
	7iX0VsKQ9uMhnZrw/OJCc9RcnsZ/9Sctpr6X0swWuAvtZJt3qRpPeonJ59VO1Tq4Hs5GWzJOW3g1j
	40AFF7JMBKhpYDl5dSXxzsg6vNsqj+jRp1Ba4icFWmAirYhz7JV9yHjVArD3FP2uZDLtCmrkkpNqz
	iaboH8E1/F0ipm+LWkac88YyIp/bbeqGYG7Mw8ryoNZvR9OvjhXrwV3ZyPfdQvbjd6pTqxcqVnE1O
	HYxNnbqpQWgu6/XIYZVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXRv9-0001Tu-0O; Wed, 20 Nov 2019 15:29:31 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXRuM-0000Ic-9v
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:28:44 +0000
Received: by mail-wr1-x444.google.com with SMTP id t2so318775wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 07:28:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VocVwERuj9CPUxI4LlG88AIMpkiR3wTIlIVCNMEfFWI=;
 b=XGKqvA+ftxeRIcTzRVR4iuKmoi0AoZftMzZznXbgI5lelIgfWtxFTXOkD40mmkJ0Yf
 3F22LKumE86iAiZTdZP9sXgCKJowSPQEsszkhBRjtK2jKvfNZs3OcEhztgLYz9fCFYp7
 FnRHXFhQTryMUWMHjF0jTxnuAMZ2bstdrHVNWQ3W5lOFj9A9vvJaoqPze3uXdJv0ZmY2
 mVwxXHdA1kLLCy3FUnm+bNMrbOJ1Y8j0zdYzuYaQfcsoEF6V9j30lKqT3qf7x386q9pE
 uxwFmMwjNZKgba0UBhp6ZUEYCnk6EbEO2y9/cY8a//79YUOfCNXm2QqjQ3wj+jqWzPZt
 Q58g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VocVwERuj9CPUxI4LlG88AIMpkiR3wTIlIVCNMEfFWI=;
 b=ckQ7bI/toyPgOzm5DG78QStI+OuEY6qK/alwbby+mpDrAXED20VYlpXbsp2ZcqRwIQ
 AJk6UhcTdkOn+FkYFsgaLzViFVeXjIL03bDJUnQRzvqclsQ3i97nJR7/UcNydW7BhHH8
 sbCyJNgOU6vQak+SU38R4nbJn5gN770kAxHrUcuHiFtWvY7Af6CnRTgjK2Dtw6KCw48J
 xC9T7C4OBe5H5zuyEBkWG7wKVQkmqsOjoWfzAsmewnUrCjvgvXU3YIb7yTEoGbgU0oZ7
 n5wff+CZVysi9emS4jAQkNWbLU2sQs1C/0S/d0hGZu3KYIKOHlWDq+XsG7iQte7jGcoV
 Dfyw==
X-Gm-Message-State: APjAAAV5XTfUpsBK4ACeEoET4s1lCi53TDZqhqqob6C/MPhTov2YghWf
 d3kNRx11ny08ln3y2bAolLY=
X-Google-Smtp-Source: APXvYqyySvjdRhchHXN5/IN4KTYqciseN5uBnZ6+Gn1VQiy/uYXcvn0MKoLOS06DLlVVycRu9E0ZYw==
X-Received: by 2002:a5d:4b82:: with SMTP id b2mr4032387wrt.335.1574263721112; 
 Wed, 20 Nov 2019 07:28:41 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id w4sm31797881wrs.1.2019.11.20.07.28.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 07:28:40 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH v2 3/3] crypto: sun4i-ss: add the A33 variant of SS
Date: Wed, 20 Nov 2019 16:28:33 +0100
Message-Id: <20191120152833.20443-4-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191120152833.20443-1-clabbe.montjoie@gmail.com>
References: <20191120152833.20443-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_072842_407394_2F8AB5F6 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The A33 SS has a difference with all other SS, it give SHA1 digest
directly in BE.
So this patch adds variant support in sun4i-ss.

Fixes: 6298e948215f ("crypto: sunxi-ss - Add Allwinner Security System crypto accelerator")
Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 .../crypto/allwinner/sun4i-ss/sun4i-ss-core.c | 22 ++++++++++++++++++-
 .../crypto/allwinner/sun4i-ss/sun4i-ss-hash.c |  5 ++++-
 drivers/crypto/allwinner/sun4i-ss/sun4i-ss.h  |  9 ++++++++
 3 files changed, 34 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c
index 814cd12149a9..d35a05843c22 100644
--- a/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c
+++ b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c
@@ -13,6 +13,7 @@
 #include <linux/io.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <crypto/scatterwalk.h>
 #include <linux/scatterlist.h>
@@ -22,6 +23,14 @@
 
 #include "sun4i-ss.h"
 
+static const struct ss_variant ss_a10_variant = {
+	.sha1_in_be = false,
+};
+
+static const struct ss_variant ss_a33_variant = {
+	.sha1_in_be = true,
+};
+
 static struct sun4i_ss_alg_template ss_algs[] = {
 {       .type = CRYPTO_ALG_TYPE_AHASH,
 	.mode = SS_OP_MD5,
@@ -323,6 +332,12 @@ static int sun4i_ss_probe(struct platform_device *pdev)
 		return PTR_ERR(ss->base);
 	}
 
+	ss->variant = of_device_get_match_data(&pdev->dev);
+	if (!ss->variant) {
+		dev_err(&pdev->dev, "Missing Security System variant\n");
+		return -EINVAL;
+	}
+
 	ss->ssclk = devm_clk_get(&pdev->dev, "mod");
 	if (IS_ERR(ss->ssclk)) {
 		err = PTR_ERR(ss->ssclk);
@@ -484,7 +499,12 @@ static int sun4i_ss_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id a20ss_crypto_of_match_table[] = {
-	{ .compatible = "allwinner,sun4i-a10-crypto" },
+	{ .compatible = "allwinner,sun4i-a10-crypto",
+	  .data = &ss_a10_variant
+	},
+	{ .compatible = "allwinner,sun8i-a33-crypto",
+	  .data = &ss_a33_variant
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, a20ss_crypto_of_match_table);
diff --git a/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c
index 91cf58db3845..c791d6935c65 100644
--- a/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c
+++ b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c
@@ -478,7 +478,10 @@ static int sun4i_hash(struct ahash_request *areq)
 	/* Get the hash from the device */
 	if (op->mode == SS_OP_SHA1) {
 		for (i = 0; i < 5; i++) {
-			v = cpu_to_be32(readl(ss->base + SS_MD0 + i * 4));
+			if (ss->variant->sha1_in_be)
+				v = cpu_to_le32(readl(ss->base + SS_MD0 + i * 4));
+			else
+				v = cpu_to_be32(readl(ss->base + SS_MD0 + i * 4));
 			memcpy(areq->result + i * 4, &v, 4);
 		}
 	} else {
diff --git a/drivers/crypto/allwinner/sun4i-ss/sun4i-ss.h b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss.h
index 60425ac75d90..2b4c6333eb67 100644
--- a/drivers/crypto/allwinner/sun4i-ss/sun4i-ss.h
+++ b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss.h
@@ -131,7 +131,16 @@
 #define SS_SEED_LEN 192
 #define SS_DATA_LEN 160
 
+/*
+ * struct ss_variant - Describe SS hardware variant
+ * @sha1_in_be:		The SHA1 digest is given by SS in BE, and so need to be inverted.
+ */
+struct ss_variant {
+	bool sha1_in_be;
+};
+
 struct sun4i_ss_ctx {
+	const struct ss_variant *variant;
 	void __iomem *base;
 	int irq;
 	struct clk *busclk;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
