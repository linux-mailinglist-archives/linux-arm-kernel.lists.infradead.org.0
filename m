Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C70BFC938
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 15:49:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7F9KNpeOV40WD94A1HaowBPVV6jnNcTAG25aEvEWTws=; b=nM/CWDJU0y7d/y
	wMqB4I8aCSCMeVnqdDKxXe+SfBMoG52OG0XH5Our7qD2qrZcwARzd/xFsyca9QGrDN0f7v9r0cYBp
	W/g3WWlbIJy748oNVMGw8QbdgIhuVVGTkgrX15eIB9C19Aja3nZDbziIG+NOLzNLj3LQR5TYcnQep
	9Gtk38Xq1+h0nzP8gf/sCwiNUngOiixK/6u+cqGFIALcOWoWcQczJ2TSHwkuR93tB3p4NIkL8gOT9
	7LTXW62Y9HS/1guwyeiysSwCtTcuKAdgOc4BRpnkwQyrvfqV0hh6XyuFyJx86Hu6G2M5kj50cDjt9
	+Sr/m6gacwI+BMCTPKQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVGQx-000281-VE; Thu, 14 Nov 2019 14:49:20 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVGQF-0001Vz-QP
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 14:48:37 +0000
Received: by mail-wm1-x344.google.com with SMTP id c22so6210465wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 06:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=osQPobpkOPnRC9LXPzS0ICaLsSaTgnPD7uH0HuL7bsg=;
 b=gFm9i5+Q4erupPrQYD6hQx0NKLe5zgJP0SlHfMTD5BEfvWIDz3mr2NfUsaFysX/mnR
 Oc4VITBDZYrIqiwZ34l3GoJ/SqxuSi+xhAK8kgFJmXlsxxGL3QiVtJhpK45COXk1LvRm
 2KyIpi8iT9VNeB0r6mhX9TLucAi1QK5L0nS2KlhrhL6b8xNI59NenZqwa07IsRxULGW/
 x7PSuPd6cU3YImqIKoFRnSEw9S9DsPhMdM5VhNqkw+GATxDqeY5X9fYIwCS+uFBWA1ir
 W7eJGT/xmmMTWz/j3hv0t/Hs8b3/UWpk2/K29up+DWHC2flGpj+wXH/UNnWQ8csAAm6q
 jnKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=osQPobpkOPnRC9LXPzS0ICaLsSaTgnPD7uH0HuL7bsg=;
 b=b3D6iwHAI9mTwQqOG4zgxtr60f1xRt6DAMDXR3w+oxNjzL0sqpdJ7bApYZz7uu9G4B
 ObQZkkIAMFkqqFkEQzvH/rtt6Mh4quNkYR22Sx2QFqXhuLISAMda8FlbdQ/nKsv2YPpW
 sO2XWCnJscHrSdSWwLEtdf7RYZ+Z6hWaDYo/kZrsGnIukqjM4yjCSRe8jMVR/tpzQwL4
 7h8dVCM1DRIvuSMRkTfbgnJRcYOqz9kpwWhwQZB6kEElI8OXoqAMZVhJ+cVQorZwNXHY
 ftholXTEjwbj/chAL14ypGHykwfuBh/jAAc0gC5m9OSMjrKmN0TEqnH239BCH8E10a6I
 PGPg==
X-Gm-Message-State: APjAAAXmfcOrYPNzA48z7C2KnYBcqgPQXdIakNmDAC8VNz9yQjWoSPRW
 D/iDvoJ8zTEWk3xmerCaAFU=
X-Google-Smtp-Source: APXvYqy6S2n65N2oW3nP74LsGjZD7yPbedKs0jyxo0652I/j5zyvyuAQz5KODGEsdg2mDL2R1jlh+Q==
X-Received: by 2002:a7b:ce08:: with SMTP id m8mr8188339wmc.68.1573742914630;
 Thu, 14 Nov 2019 06:48:34 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id v9sm7153223wrs.95.2019.11.14.06.48.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 06:48:34 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH 3/3] crypto: sun4i-ss: add the A33 variant of SecuritySystem
Date: Thu, 14 Nov 2019 15:48:12 +0100
Message-Id: <20191114144812.22747-4-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191114144812.22747-1-clabbe.montjoie@gmail.com>
References: <20191114144812.22747-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_064835_862420_D8D90302 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

The A33 SecuritySystem has a difference with all other SS, it give SHA1 digest
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
