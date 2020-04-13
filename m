Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 194771A64E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 12:00:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YM/VgUI+7g4+DMatdHVzHOENEgFZMSxqnhZFWQIGoWw=; b=UOuBN6B/gF7IGJNab2pcLfmgN9
	JXaE2dFH0y4wwf9S5rYLfyhORPbOrSPtLSNExCZw8vuwx/j7VKwU//y2NJol1cuJXM7z2UyU7Vbri
	PYtqnKEmYrTJ0zMKgjI/xkOJ/6piFVN6oJSI2oI33A7iitHTYSfVHlakokgueQQfNtF+vG1N5/KED
	pziTZK0Q4Ij3lz7WHu8oOQpvNXJNgsGIFz2Qhx8WDdMIzMqAErZh7LoaQj2umdZCJAMP2eFJYYu2b
	cfvRCBGfLOq2+zwqI+ta5Yne5Z+4YyM0Odv6Dr1S4IIuLMkNtEOrbLDsoAs4PIMUzV4y9aN1HOsl8
	1h1C3yeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNvtJ-00024G-0Q; Mon, 13 Apr 2020 10:00:33 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNvrF-0006KW-AL
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 09:58:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id v8so9769163wma.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 02:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ta+einPuHmoA0Cq5W8sk7YEvHaIIaMLDJ8VDdT6gjJk=;
 b=na3ol3/ZoaAcJq+ejBsvmSQdGys5NCNjUddlBW4WALlQaNS4TJxlAn6JsBEiiplC36
 wSnSSFvsdQ8b/6pyMqNQmmOV28ciKOICgxH6YF2KT3uII87vVyvDV3IYyNSget3Ob8s1
 DvJOq7h6lbflu2S1tFR6tiPQDamlqoWmCeVYUKRGOsf9kSrBmMVAExas4FJE33ljtkNL
 t5N/GImAzzYy99dbl8CJ7gRT/Z4LUl0fltKDH4YN1vwLpO08A3cIzOGhN8hMtqXiiXKS
 Be22ZDhBxV94YTdyU5g3D3TqnPDFFHqN4pMkrlnHGmzmDO/KiCoBPsos+X9s47V4Yfgw
 pNCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ta+einPuHmoA0Cq5W8sk7YEvHaIIaMLDJ8VDdT6gjJk=;
 b=seev0y4dWp+zZek0CfTLemmThBCYD1MYOnNr4i0aI2LQxWBJoxtTgNMqmlW2vyJ5ew
 PbvCAh3S/nba0EwZZ5nXRxGpAo/BAL9JU/7vqMFAQJTf4vnR+397X1FrxZdGWp075+Le
 1InBW7LI9UXmyzfVVNJqzzHZotHOFxScsGLcCK9M6Joo3aWsE/RZcy2/SC2/2jf4UUGM
 NcikRwH5+8kP2HN1feSMox4PCCSgMKoxyhPWWbB2+w4rDOahpHnpsyxzbge94sCQ4+2J
 4LbbMz6araKEx0mb7NaPfhsdSgga441jT5vFxEqqE9h3pNJM265jGibsriJPT3fooh0U
 LTRA==
X-Gm-Message-State: AGi0PubNzPfbe6lqPMPUi3ujlf/ZbqEOly/lVucnYAFF6lFgkHyzrp++
 f726bLEnXFE63Bp2iutX9siggQ==
X-Google-Smtp-Source: APiQypJBQNGwlrumwNd0ym6llV0ekmKTwsH9PcCB91ZiYXxJgjFdXLad/T4p9nuB86zJJ+MKgvJhGA==
X-Received: by 2002:a1c:4d17:: with SMTP id o23mr17560342wmh.120.1586771903818; 
 Mon, 13 Apr 2020 02:58:23 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v21sm13594491wmj.8.2020.04.13.02.58.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 Apr 2020 02:58:23 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH 8/9] crypto: sun8i-ce: Add support for the PRNG
Date: Mon, 13 Apr 2020 09:58:08 +0000
Message-Id: <1586771889-3299-9-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586771889-3299-1-git-send-email-clabbe@baylibre.com>
References: <1586771889-3299-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_025825_509192_2403720B 
X-CRM114-Status: GOOD (  25.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Corentin Labbe <clabbe@baylibre.com>, linux-sunxi@googlegroups.com,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch had support for the PRNG present in the CE.
The output was tested with rngtest without any failure.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/allwinner/Kconfig              |   8 +
 drivers/crypto/allwinner/sun8i-ce/Makefile    |   1 +
 .../crypto/allwinner/sun8i-ce/sun8i-ce-core.c |  58 +++++-
 .../crypto/allwinner/sun8i-ce/sun8i-ce-prng.c | 191 ++++++++++++++++++
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h  |  31 +++
 5 files changed, 288 insertions(+), 1 deletion(-)
 create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c

diff --git a/drivers/crypto/allwinner/Kconfig b/drivers/crypto/allwinner/Kconfig
index 93cc67adb1ed..223a5823867c 100644
--- a/drivers/crypto/allwinner/Kconfig
+++ b/drivers/crypto/allwinner/Kconfig
@@ -79,6 +79,14 @@ config CRYPTO_DEV_SUN8I_CE_HASH
 	help
 	  Say y to enable support for hash algorithms.
 
+config CRYPTO_DEV_SUN8I_CE_PRNG
+	bool "Support for Allwinner Crypto Engine PRNG"
+	depends on CRYPTO_DEV_SUN8I_CE
+	select CRYPTO_RNG
+	help
+	  Select this option if you want to provide kernel-side support for
+	  the Pseudo-Random Number Generator found in the Crypto Engine.
+
 config CRYPTO_DEV_SUN8I_SS
 	tristate "Support for Allwinner Security System cryptographic offloader"
 	select CRYPTO_SKCIPHER
diff --git a/drivers/crypto/allwinner/sun8i-ce/Makefile b/drivers/crypto/allwinner/sun8i-ce/Makefile
index d1b1f0e86c79..c0ea81da2c7d 100644
--- a/drivers/crypto/allwinner/sun8i-ce/Makefile
+++ b/drivers/crypto/allwinner/sun8i-ce/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_CRYPTO_DEV_SUN8I_CE) += sun8i-ce.o
 sun8i-ce-y += sun8i-ce-core.o sun8i-ce-cipher.o
 sun8i-ce-$(CONFIG_CRYPTO_DEV_SUN8I_CE_HASH) += sun8i-ce-hash.o
+sun8i-ce-$(CONFIG_CRYPTO_DEV_SUN8I_CE_PRNG) += sun8i-ce-prng.o
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
index d65e73afbd47..54dfd7b9463e 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
@@ -22,6 +22,7 @@
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/reset.h>
+#include <crypto/internal/rng.h>
 #include <crypto/internal/skcipher.h>
 
 #include "sun8i-ce.h"
@@ -45,6 +46,7 @@ static const struct ce_variant ce_h3_variant = {
 		{ "mod", 50000000, 0 },
 		},
 	.esr = ESR_H3,
+	.prng = CE_ALG_PRNG,
 };
 
 static const struct ce_variant ce_h5_variant = {
@@ -60,6 +62,7 @@ static const struct ce_variant ce_h5_variant = {
 		{ "mod", 300000000, 0 },
 		},
 	.esr = ESR_H5,
+	.prng = CE_ALG_PRNG,
 };
 
 static const struct ce_variant ce_h6_variant = {
@@ -72,12 +75,14 @@ static const struct ce_variant ce_h6_variant = {
 	},
 	.cipher_t_dlen_in_bytes = true,
 	.hash_t_dlen_in_bits = true,
+	.prng_t_dlen_in_bytes = true,
 	.ce_clks = {
 		{ "bus", 0, 200000000 },
 		{ "mod", 300000000, 0 },
 		{ "ram", 0, 400000000 },
 		},
 	.esr = ESR_H6,
+	.prng = CE_ALG_PRNG_V2,
 };
 
 static const struct ce_variant ce_a64_variant = {
@@ -93,6 +98,7 @@ static const struct ce_variant ce_a64_variant = {
 		{ "mod", 300000000, 0 },
 		},
 	.esr = ESR_A64,
+	.prng = CE_ALG_PRNG,
 };
 
 static const struct ce_variant ce_r40_variant = {
@@ -108,15 +114,17 @@ static const struct ce_variant ce_r40_variant = {
 		{ "mod", 300000000, 0 },
 		},
 	.esr = ESR_R40,
+	.prng = CE_ALG_PRNG,
 };
 
 /*
  * sun8i_ce_get_engine_number() get the next channel slot
  * This is a simple round-robin way of getting the next channel
+ * The flow 3 is reserve for xRNG operations
  */
 int sun8i_ce_get_engine_number(struct sun8i_ce_dev *ce)
 {
-	return atomic_inc_return(&ce->flow) % MAXFLOW;
+	return atomic_inc_return(&ce->flow) % (MAXFLOW - 1);
 }
 
 int sun8i_ce_run_task(struct sun8i_ce_dev *ce, int flow, const char *name)
@@ -130,6 +138,7 @@ int sun8i_ce_run_task(struct sun8i_ce_dev *ce, int flow, const char *name)
 #endif
 
 	mutex_lock(&ce->mlock);
+	mutex_init(&ce->rnglock);
 
 	v = readl(ce->base + CE_ICR);
 	v |= 1 << flow;
@@ -516,6 +525,25 @@ static struct sun8i_ce_alg_template ce_algs[] = {
 	}
 },
 #endif
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_PRNG
+{
+	.type = CRYPTO_ALG_TYPE_RNG,
+	.alg.rng = {
+		.base = {
+			.cra_name		= "stdrng",
+			.cra_driver_name	= "sun8i-ce-prng",
+			.cra_priority		= 300,
+			.cra_ctxsize		= sizeof(struct sun8i_ce_rng_tfm_ctx),
+			.cra_module		= THIS_MODULE,
+			.cra_init		= sun8i_ce_prng_init,
+			.cra_exit		= sun8i_ce_prng_exit,
+		},
+		.generate               = sun8i_ce_prng_generate,
+		.seed                   = sun8i_ce_prng_seed,
+		.seedsize               = PRNG_SEED_SIZE,
+	}
+},
+#endif
 };
 
 #ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
@@ -543,6 +571,12 @@ static int sun8i_ce_dbgfs_read(struct seq_file *seq, void *v)
 				   ce_algs[i].alg.hash.halg.base.cra_name,
 				   ce_algs[i].stat_req, ce_algs[i].stat_fb);
 			break;
+		case CRYPTO_ALG_TYPE_RNG:
+			seq_printf(seq, "%s %s %lu %lu\n",
+				   ce_algs[i].alg.rng.base.cra_driver_name,
+				   ce_algs[i].alg.rng.base.cra_name,
+				   ce_algs[i].stat_req, ce_algs[i].stat_bytes);
+			break;
 		}
 	}
 	return 0;
@@ -777,6 +811,23 @@ static int sun8i_ce_register_algs(struct sun8i_ce_dev *ce)
 				return err;
 			}
 			break;
+		case CRYPTO_ALG_TYPE_RNG:
+			if (ce->variant->prng == CE_ID_NOTSUPP) {
+				dev_info(ce->dev,
+					 "DEBUG: Algo of %s not supported\n",
+					 ce_algs[i].alg.rng.base.cra_name);
+				ce_algs[i].ce = NULL;
+				break;
+			}
+			dev_info(ce->dev, "Register %s\n",
+				 ce_algs[i].alg.rng.base.cra_name);
+			err = crypto_register_rng(&ce_algs[i].alg.rng);
+			if (err) {
+				dev_err(ce->dev, "Fail to register %s\n",
+					ce_algs[i].alg.rng.base.cra_name);
+				ce_algs[i].ce = NULL;
+			}
+			break;
 		default:
 			ce_algs[i].ce = NULL;
 			dev_err(ce->dev, "ERROR: tried to register an unknown algo\n");
@@ -803,6 +854,11 @@ static void sun8i_ce_unregister_algs(struct sun8i_ce_dev *ce)
 				 ce_algs[i].alg.hash.halg.base.cra_name);
 			crypto_unregister_ahash(&ce_algs[i].alg.hash);
 			break;
+		case CRYPTO_ALG_TYPE_RNG:
+			dev_info(ce->dev, "Unregister %d %s\n", i,
+				 ce_algs[i].alg.rng.base.cra_name);
+			crypto_unregister_rng(&ce_algs[i].alg.rng);
+			break;
 		}
 	}
 }
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c
new file mode 100644
index 000000000000..4d201b1d522d
--- /dev/null
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c
@@ -0,0 +1,191 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * sun8i-ce-prng.c - hardware cryptographic offloader for
+ * Allwinner H3/A64/H5/H2+/H6/R40 SoC
+ *
+ * Copyright (C) 2015-2020 Corentin Labbe <clabbe@baylibre.com>
+ *
+ * This file handle the PRNG
+ *
+ * You could find a link for the datasheet in Documentation/arm/sunxi/README
+ */
+#include "sun8i-ce.h"
+#include <linux/pm_runtime.h>
+#include <crypto/internal/rng.h>
+
+int sun8i_ce_prng_init(struct crypto_tfm *tfm)
+{
+	struct crypto_rng *rngtfm = __crypto_rng_cast(tfm);
+	struct sun8i_ce_rng_tfm_ctx *ctx = crypto_rng_ctx(rngtfm);
+
+	memset(ctx, 0, sizeof(struct sun8i_ce_rng_tfm_ctx));
+	return 0;
+}
+
+void sun8i_ce_prng_exit(struct crypto_tfm *tfm)
+{
+	struct crypto_rng *rngtfm = __crypto_rng_cast(tfm);
+	struct sun8i_ce_rng_tfm_ctx *ctx = crypto_rng_ctx(rngtfm);
+
+	kfree(ctx->seed);
+	ctx->seed = NULL;
+	ctx->slen = 0;
+}
+
+int sun8i_ce_prng_seed(struct crypto_rng *tfm, const u8 *seed,
+		       unsigned int slen)
+{
+	struct sun8i_ce_rng_tfm_ctx *ctx = crypto_rng_ctx(tfm);
+
+	if (ctx->seed && ctx->slen != slen) {
+		ctx->slen = 0;
+		kfree(ctx->seed);
+		ctx->seed = NULL;
+	}
+	if (!ctx->seed)
+		ctx->seed = kmalloc(slen, GFP_KERNEL | GFP_DMA);
+	if (!ctx->seed)
+		return -ENOMEM;
+
+	memcpy(ctx->seed, seed, slen);
+	ctx->slen = slen;
+
+	return 0;
+}
+
+int sun8i_ce_prng_generate(struct crypto_rng *tfm, const u8 *src,
+			   unsigned int slen, u8 *dst, unsigned int dlen)
+{
+	struct sun8i_ce_rng_tfm_ctx *ctx = crypto_rng_ctx(tfm);
+	struct rng_alg *alg = crypto_rng_alg(tfm);
+	struct sun8i_ce_alg_template *algt;
+	struct sun8i_ce_dev *ce;
+	dma_addr_t dma_iv, dma_dst;
+	int err = 0;
+	int flow = 3;
+	unsigned int todo;
+	struct sun8i_ce_flow *chan;
+	struct ce_task *cet;
+	u32 common, sym;
+	dma_addr_t dma_next, dma_key;
+	void *next, *key;
+	void *d;
+
+	algt = container_of(alg, struct sun8i_ce_alg_template, alg.rng);
+	ce = algt->ce;
+
+	if (ctx->slen == 0) {
+		dev_err(ce->dev, "not seeded\n");
+		return -EINVAL;
+	}
+
+	next = kzalloc(256, GFP_KERNEL | GFP_DMA);
+	if (!next)
+		return -ENOMEM;
+
+	key = kzalloc(256, GFP_KERNEL | GFP_DMA);
+	if (!key)
+		return -ENOMEM;
+
+	/* we want dlen + seedsize rounded up to a multiple of PRNG_DATA_SIZE */
+	todo = dlen + ctx->slen + PRNG_DATA_SIZE * 2;
+	todo -= todo % PRNG_DATA_SIZE;
+
+	d = kzalloc(todo + 20, GFP_KERNEL | GFP_DMA);
+	if (!d)
+		return -ENOMEM;
+
+	dev_dbg(ce->dev, "%s PRNG slen=%u dlen=%u todo=%u multi=%u\n", __func__,
+		slen, dlen, todo, todo / PRNG_DATA_SIZE);
+
+	if (ctx->slen == 0) {
+		dev_err(ce->dev, "not seeded\n");
+		return -EINVAL;
+	}
+
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
+	algt->stat_req++;
+	algt->stat_bytes += todo;
+#endif
+
+	dma_iv = dma_map_single(ce->dev, ctx->seed, ctx->slen, DMA_TO_DEVICE);
+	if (dma_mapping_error(ce->dev, dma_iv)) {
+		dev_err(ce->dev, "Cannot DMA MAP IV\n");
+		return -EFAULT;
+	}
+
+	dma_dst = dma_map_single(ce->dev, d, todo, DMA_FROM_DEVICE);
+	if (dma_mapping_error(ce->dev, dma_dst)) {
+		dev_err(ce->dev, "Cannot DMA MAP DST\n");
+		err = -EFAULT;
+		goto err_iv;
+	}
+
+	dma_next = dma_map_single(ce->dev, next, 256, DMA_FROM_DEVICE);
+	if (dma_mapping_error(ce->dev, dma_next)) {
+		dev_err(ce->dev, "Cannot DMA MAP NEXT\n");
+		err = -EFAULT;
+		goto err_iv;
+	}
+
+	dma_key = dma_map_single(ce->dev, key, 256, DMA_FROM_DEVICE);
+	if (dma_mapping_error(ce->dev, dma_key)) {
+		dev_err(ce->dev, "Cannot DMA MAP NEXT\n");
+		err = -EFAULT;
+		goto err_iv;
+	}
+
+	err = pm_runtime_get_sync(ce->dev);
+	if (err < 0)
+		goto err_pm;
+
+	mutex_lock(&ce->rnglock);
+	chan = &ce->chanlist[flow];
+
+	cet = &chan->tl[0];
+	memset(cet, 0, sizeof(struct ce_task));
+
+	cet->t_id = cpu_to_le32(flow);
+	common = ce->variant->prng | CE_COMM_INT;
+	cet->t_common_ctl = cpu_to_le32(common);
+
+	/* recent CE (H6) need length in bytes, in word otherwise */
+	if (ce->variant->prng_t_dlen_in_bytes)
+		cet->t_dlen = cpu_to_le32(todo);
+	else
+		cet->t_dlen = cpu_to_le32(todo / 4);
+
+	sym = PRNG_LD;
+	cet->t_sym_ctl = cpu_to_le32(sym);
+	cet->t_asym_ctl = 0;
+
+	cet->t_key = cpu_to_le32(dma_key);
+	cet->t_key = cpu_to_le32(dma_iv);
+	cet->t_iv = cpu_to_le32(dma_iv);
+	cet->t_ctr = cpu_to_le32(dma_next);
+
+	cet->t_dst[0].addr = cpu_to_le32(dma_dst);
+	cet->t_dst[0].len = cpu_to_le32(todo / 4);
+	ce->chanlist[flow].timeout = 2000;
+
+	err = sun8i_ce_run_task(ce, 3, "PRNG");
+	mutex_unlock(&ce->rnglock);
+
+	pm_runtime_put(ce->dev);
+
+	dma_unmap_single(ce->dev, dma_key, 256, DMA_FROM_DEVICE);
+	dma_unmap_single(ce->dev, dma_next, 256, DMA_FROM_DEVICE);
+err_pm:
+	dma_unmap_single(ce->dev, dma_dst, todo, DMA_FROM_DEVICE);
+err_iv:
+	dma_unmap_single(ce->dev, dma_iv, ctx->slen, DMA_TO_DEVICE);
+
+	if (!err) {
+		memcpy(dst, d, dlen);
+		memcpy(ctx->seed, d + dlen, ctx->slen);
+	}
+	kfree(next);
+	kfree(key);
+	kfree(d);
+	return err;
+}
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
index ef2f1e5aa23a..2ef0c3814367 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
@@ -14,6 +14,7 @@
 #include <linux/crypto.h>
 #include <crypto/internal/hash.h>
 #include <crypto/md5.h>
+#include <crypto/rng.h>
 #include <crypto/sha.h>
 
 /* CE Registers */
@@ -54,6 +55,8 @@
 #define CE_ALG_SHA256           19
 #define CE_ALG_SHA384           20
 #define CE_ALG_SHA512           21
+#define CE_ALG_PRNG		49
+#define CE_ALG_PRNG_V2		0x1d
 
 /* Used in ce_variant */
 #define CE_ID_NOTSUPP		0xFF
@@ -88,6 +91,10 @@
 #define ESR_H5	3
 #define ESR_H6	4
 
+#define PRNG_DATA_SIZE (160 / 8)
+#define PRNG_SEED_SIZE DIV_ROUND_UP(175, 8)
+#define PRNG_LD BIT(17)
+
 #define CE_DIE_ID_SHIFT	16
 #define CE_DIE_ID_MASK	0x07
 
@@ -120,8 +127,11 @@ struct ce_clock {
  *				bytes or words
  * @hash_t_dlen_in_bytes:	Does the request size for hash is in
  *				bits or words
+ * @prng_t_dlen_in_bytes:	Does the request size for PRNG is in
+ *				bytes or words
  * @ce_clks:	list of clocks needed by this variant
  * @esr:	The type of error register
+ * @prng:	The CE_ALG_XXX value for the PRNG
  */
 struct ce_variant {
 	char alg_cipher[CE_ID_CIPHER_MAX];
@@ -129,8 +139,10 @@ struct ce_variant {
 	u32 op_mode[CE_ID_OP_MAX];
 	bool cipher_t_dlen_in_bytes;
 	bool hash_t_dlen_in_bits;
+	bool prng_t_dlen_in_bytes;
 	struct ce_clock ce_clks[CE_MAX_CLOCKS];
 	int esr;
+	char prng;
 };
 
 struct sginfo {
@@ -185,6 +197,7 @@ struct sun8i_ce_flow {
  * @reset:	pointer to reset controller
  * @dev:	the platform device
  * @mlock:	Control access to device registers
+ * @rnglock:	Control access to the RNG (dedicated channel 3)
  * @chanlist:	array of all flow
  * @flow:	flow to use in next request
  * @variant:	pointer to variant specific data
@@ -197,6 +210,7 @@ struct sun8i_ce_dev {
 	struct reset_control *reset;
 	struct device *dev;
 	struct mutex mlock;
+	struct mutex rnglock;
 	struct sun8i_ce_flow *chanlist;
 	atomic_t flow;
 	const struct ce_variant *variant;
@@ -264,6 +278,16 @@ struct sun8i_ce_hash_reqctx {
 	int flow;
 };
 
+/*
+ * struct sun8i_ce_prng_ctx - context for PRNG TFM
+ * @seed:	The seed to use
+ * @slen:	The size of the seed
+ */
+struct sun8i_ce_rng_tfm_ctx {
+	void *seed;
+	unsigned int slen;
+};
+
 /*
  * struct sun8i_ce_alg_template - crypto_alg template
  * @type:		the CRYPTO_ALG_TYPE for this template
@@ -284,6 +308,7 @@ struct sun8i_ce_alg_template {
 	union {
 		struct skcipher_alg skcipher;
 		struct ahash_alg hash;
+		struct rng_alg rng;
 	} alg;
 #ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
 	unsigned long stat_req;
@@ -318,3 +343,9 @@ int sun8i_ce_hash_update(struct ahash_request *areq);
 int sun8i_ce_hash_finup(struct ahash_request *areq);
 int sun8i_ce_hash_digest(struct ahash_request *areq);
 int sun8i_ce_hash_run(struct crypto_engine *engine, void *breq);
+
+int sun8i_ce_prng_generate(struct crypto_rng *tfm, const u8 *src,
+			   unsigned int slen, u8 *dst, unsigned int dlen);
+int sun8i_ce_prng_seed(struct crypto_rng *tfm, const u8 *seed, unsigned int slen);
+void sun8i_ce_prng_exit(struct crypto_tfm *tfm);
+int sun8i_ce_prng_init(struct crypto_tfm *tfm);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
