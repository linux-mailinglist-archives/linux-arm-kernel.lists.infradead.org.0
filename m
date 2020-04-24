Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7BB1B77C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 16:03:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+nGDwAFPxiFuaIQfPFiNeKwI1TFqZMWycSuLZ+YapDM=; b=CAETYe6hkgHi1mC4f+Oggp0zHB
	DO+mQKMMrVXZ7W0kCAWid6joH1gc3kjk9xU0CIZkYTnFzqLd3B8Fnal/18BTydLeyhCne1EpC1WX1
	2KHlQVAn/rQMsLBqgjQduPPe/4xbNM1RoymutBKKK0XI+oIWE12R8sXm0RGo2sxzrOZmPWIhz3I2e
	hjvy5YQ0IT8aewZMkkvQYgAfXHK42IVjdQ49X7MWLuyd8V+pY+K+b/PN8/q6IY7011iKWjz1nH5Gm
	mRHOA3AeVur+8QjKoekMZ87ZzIPMuZskpxc9LK2J5c8n12fDn0yDMCYhHhu8RwfYGMAvYb6uJi77Q
	8e/ttLVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyvN-00033W-DX; Fri, 24 Apr 2020 14:03:25 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyuS-0002Ti-Lo
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 14:02:30 +0000
Received: by mail-wm1-x344.google.com with SMTP id h2so10570807wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 07:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GKx8vU+COCIFn38Eb/h1OZCPms6hvSr4LQ6Vg6MNYwM=;
 b=tvHdFu+Ww0LZIqC3kgXHGa3w7sPbCC+TcLIf5lVlu39/Ik1pf8A9Nk/qLdykSic8G9
 3Q5ooWzTyRbrXfNVY7UvFjUFKaSIfnr58tgGF8ihuXvWahnX2CJqDithy4XlehByH3XZ
 TZrzlusHC0W0TEZ+ZabN52u2IDYcQn6fcCcbX8SDyFa8FoxWHnl8s4TOnVc9LRKvSS63
 jyUN117Ua0ivIB1N5SeOXn/wLo/u28G7FhB6DknMXcQ2AZ4AwDtar//vzU3urU6tk2qp
 FLb2UDFs74MA/rDir163JbZZ6FROFr9T7DUszIk0NsDMcl4OmiEI2OG9ASVhFPlwdbM9
 HOPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GKx8vU+COCIFn38Eb/h1OZCPms6hvSr4LQ6Vg6MNYwM=;
 b=hY6cZUFrmry34mZr1yowPpOg6VoNVtYaHJKQ3jzO0NvZnW/2TQ53//e1tdRxum6sEi
 tZovQNuEb8920CliFmCNHaN9jjc+61xeXSQFPR3a837p09l0qdUFbrnDXzkEwp1xeQN+
 xpTo5L6qv7QdIOPBNEnv/2UlKY73UG7qPe+fiMi2A61PEG8Ay6ngBKfEU8SUlCISYgrb
 uVQjKjCF6pD1KOL5j/CZ1rDOjEOGJvyU8J69zMoyH7Jj+L/JQI7+dz01RWrDOrkRSbHD
 CIacRRlIhtY/vw1jexn77/YMBG2vDRAJDAP4BHI8DxD5y/33fmpYDUU/wQR9MAPrbBfl
 WaRg==
X-Gm-Message-State: AGi0PuaYfj/7tSVlrE7LqBfLrzn1K/ocMTdW5jX3/4Bpyt/46ovTfBYQ
 UXWo6sV9BzgT5wCDF4puE0zvGw==
X-Google-Smtp-Source: APiQypLhugi7EgdMYz9O6l07pwAjQ8gkfwUA0m80qnGnvBhp9635/fUGoph3HxgMRrc1N8FWjr/j7w==
X-Received: by 2002:a05:600c:4096:: with SMTP id
 k22mr9640467wmh.99.1587736945762; 
 Fri, 24 Apr 2020 07:02:25 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v131sm3061051wmb.19.2020.04.24.07.02.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 07:02:24 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH v2 02/14] crypto: sun8i-ss: Add support for the PRNG
Date: Fri, 24 Apr 2020 14:02:02 +0000
Message-Id: <1587736934-22801-3-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
References: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_070228_724245_AAEAFD2A 
X-CRM114-Status: GOOD (  29.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

This patch had support for the PRNG present in the SS.
The output was tested with rngtest without any failure.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/allwinner/Kconfig              |   8 +
 drivers/crypto/allwinner/sun8i-ss/Makefile    |   1 +
 .../crypto/allwinner/sun8i-ss/sun8i-ss-core.c |  39 ++++
 .../crypto/allwinner/sun8i-ss/sun8i-ss-prng.c | 167 ++++++++++++++++++
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h  |  25 +++
 5 files changed, 240 insertions(+)
 create mode 100644 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-prng.c

diff --git a/drivers/crypto/allwinner/Kconfig b/drivers/crypto/allwinner/Kconfig
index d315427ea1ba..a0bdb26d0fe4 100644
--- a/drivers/crypto/allwinner/Kconfig
+++ b/drivers/crypto/allwinner/Kconfig
@@ -95,3 +95,11 @@ config CRYPTO_DEV_SUN8I_SS_DEBUG
 	  Say y to enable sun8i-ss debug stats.
 	  This will create /sys/kernel/debug/sun8i-ss/stats for displaying
 	  the number of requests per flow and per algorithm.
+
+config CRYPTO_DEV_SUN8I_SS_PRNG
+	bool "Support for Allwinner Security System PRNG"
+	depends on CRYPTO_DEV_SUN8I_SS
+	select CRYPTO_RNG
+	help
+	  Select this option if you want to provide kernel-side support for
+	  the Pseudo-Random Number Generator found in the Security System.
diff --git a/drivers/crypto/allwinner/sun8i-ss/Makefile b/drivers/crypto/allwinner/sun8i-ss/Makefile
index add7b0543fd5..49f2f912c816 100644
--- a/drivers/crypto/allwinner/sun8i-ss/Makefile
+++ b/drivers/crypto/allwinner/sun8i-ss/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_CRYPTO_DEV_SUN8I_SS) += sun8i-ss.o
 sun8i-ss-y += sun8i-ss-core.o sun8i-ss-cipher.o
+sun8i-ss-$(CONFIG_CRYPTO_DEV_SUN8I_SS_PRNG) += sun8i-ss-prng.o
diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
index 81eff935fb5c..592ee35616ba 100644
--- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
@@ -22,6 +22,7 @@
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/reset.h>
+#include <crypto/internal/rng.h>
 #include <crypto/internal/skcipher.h>
 
 #include "sun8i-ss.h"
@@ -260,6 +261,25 @@ static struct sun8i_ss_alg_template ss_algs[] = {
 		.decrypt	= sun8i_ss_skdecrypt,
 	}
 },
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_PRNG
+{
+	.type = CRYPTO_ALG_TYPE_RNG,
+	.alg.rng = {
+		.base = {
+			.cra_name		= "stdrng",
+			.cra_driver_name	= "sun8i-ss-prng",
+			.cra_priority		= 300,
+			.cra_ctxsize = sizeof(struct sun8i_ss_rng_tfm_ctx),
+			.cra_module		= THIS_MODULE,
+			.cra_init		= sun8i_ss_prng_init,
+			.cra_exit		= sun8i_ss_prng_exit,
+		},
+		.generate               = sun8i_ss_prng_generate,
+		.seed                   = sun8i_ss_prng_seed,
+		.seedsize               = PRNG_SEED_SIZE,
+	}
+},
+#endif
 };
 
 #ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
@@ -281,6 +301,12 @@ static int sun8i_ss_dbgfs_read(struct seq_file *seq, void *v)
 				   ss_algs[i].alg.skcipher.base.cra_name,
 				   ss_algs[i].stat_req, ss_algs[i].stat_fb);
 			break;
+		case CRYPTO_ALG_TYPE_RNG:
+			seq_printf(seq, "%s %s %lu %lu\n",
+				   ss_algs[i].alg.rng.base.cra_driver_name,
+				   ss_algs[i].alg.rng.base.cra_name,
+				   ss_algs[i].stat_req, ss_algs[i].stat_bytes);
+			break;
 		}
 	}
 	return 0;
@@ -444,6 +470,14 @@ static int sun8i_ss_register_algs(struct sun8i_ss_dev *ss)
 				return err;
 			}
 			break;
+		case CRYPTO_ALG_TYPE_RNG:
+			err = crypto_register_rng(&ss_algs[i].alg.rng);
+			if (err) {
+				dev_err(ss->dev, "Fail to register %s\n",
+					ss_algs[i].alg.rng.base.cra_name);
+				ss_algs[i].ss = NULL;
+			}
+			break;
 		default:
 			ss_algs[i].ss = NULL;
 			dev_err(ss->dev, "ERROR: tried to register an unknown algo\n");
@@ -465,6 +499,11 @@ static void sun8i_ss_unregister_algs(struct sun8i_ss_dev *ss)
 				 ss_algs[i].alg.skcipher.base.cra_name);
 			crypto_unregister_skcipher(&ss_algs[i].alg.skcipher);
 			break;
+		case CRYPTO_ALG_TYPE_RNG:
+			dev_info(ss->dev, "Unregister %d %s\n", i,
+				 ss_algs[i].alg.rng.base.cra_name);
+			crypto_unregister_rng(&ss_algs[i].alg.rng);
+			break;
 		}
 	}
 }
diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-prng.c b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-prng.c
new file mode 100644
index 000000000000..c58e83c5b12e
--- /dev/null
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-prng.c
@@ -0,0 +1,167 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * sun8i-ss-prng.c - hardware cryptographic offloader for
+ * Allwinner A80/A83T SoC
+ *
+ * Copyright (C) 2015-2020 Corentin Labbe <clabbe@baylibre.com>
+ *
+ * This file handle the PRNG found in the SS
+ *
+ * You could find a link for the datasheet in Documentation/arm/sunxi.rst
+ */
+#include "sun8i-ss.h"
+#include <linux/pm_runtime.h>
+#include <crypto/internal/rng.h>
+
+int sun8i_ss_prng_seed(struct crypto_rng *tfm, const u8 *seed,
+		       unsigned int slen)
+{
+	struct sun8i_ss_rng_tfm_ctx *ctx = crypto_rng_ctx(tfm);
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
+int sun8i_ss_prng_init(struct crypto_tfm *tfm)
+{
+	struct sun8i_ss_rng_tfm_ctx *ctx = crypto_tfm_ctx(tfm);
+
+	memset(ctx, 0, sizeof(struct sun8i_ss_rng_tfm_ctx));
+	return 0;
+}
+
+void sun8i_ss_prng_exit(struct crypto_tfm *tfm)
+{
+	struct sun8i_ss_rng_tfm_ctx *ctx = crypto_tfm_ctx(tfm);
+
+	kfree(ctx->seed);
+	ctx->seed = NULL;
+	ctx->slen = 0;
+}
+
+int sun8i_ss_prng_generate(struct crypto_rng *tfm, const u8 *src,
+			   unsigned int slen, u8 *dst, unsigned int dlen)
+{
+	struct sun8i_ss_rng_tfm_ctx *ctx = crypto_rng_ctx(tfm);
+	struct rng_alg *alg = crypto_rng_alg(tfm);
+	struct sun8i_ss_alg_template *algt;
+	struct sun8i_ss_dev *ss;
+	dma_addr_t dma_iv, dma_dst;
+	unsigned int todo;
+	int err = 0;
+	int flow;
+	void *d;
+	u32 v;
+
+	algt = container_of(alg, struct sun8i_ss_alg_template, alg.rng);
+	ss = algt->ss;
+
+	if (ctx->slen == 0) {
+		dev_err(ss->dev, "The PRNG is not seeded\n");
+		return -EINVAL;
+	}
+
+	/* The SS does not give an updated seed, so we need to get a new one.
+	 * So we will ask for an extra PRNG_SEED_SIZE data.
+	 * We want dlen + seedsize rounded up to a multiple of PRNG_DATA_SIZE
+	 */
+	todo = dlen + PRNG_SEED_SIZE + PRNG_DATA_SIZE;
+	todo -= todo % PRNG_DATA_SIZE;
+
+	d = kzalloc(todo, GFP_KERNEL | GFP_DMA);
+	if (!d)
+		return -ENOMEM;
+
+	flow = sun8i_ss_get_engine_number(ss);
+
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
+	algt->stat_req++;
+	algt->stat_bytes += todo;
+#endif
+
+	v = SS_ALG_PRNG | SS_PRNG_CONTINUE | SS_START;
+	if (flow)
+		v |= SS_FLOW1;
+	else
+		v |= SS_FLOW0;
+
+	dma_iv = dma_map_single(ss->dev, ctx->seed, ctx->slen, DMA_TO_DEVICE);
+	if (dma_mapping_error(ss->dev, dma_iv)) {
+		dev_err(ss->dev, "Cannot DMA MAP IV\n");
+		return -EFAULT;
+	}
+
+	dma_dst = dma_map_single(ss->dev, d, todo, DMA_FROM_DEVICE);
+	if (dma_mapping_error(ss->dev, dma_dst)) {
+		dev_err(ss->dev, "Cannot DMA MAP DST\n");
+		err = -EFAULT;
+		goto err_iv;
+	}
+
+	err = pm_runtime_get_sync(ss->dev);
+	if (err < 0)
+		goto err_pm;
+	err = 0;
+
+	mutex_lock(&ss->mlock);
+	writel(dma_iv, ss->base + SS_IV_ADR_REG);
+	/* the PRNG act badly (failing rngtest) without SS_KEY_ADR_REG set */
+	writel(dma_iv, ss->base + SS_KEY_ADR_REG);
+	writel(dma_dst, ss->base + SS_DST_ADR_REG);
+	writel(todo / 4, ss->base + SS_LEN_ADR_REG);
+
+	reinit_completion(&ss->flows[flow].complete);
+	ss->flows[flow].status = 0;
+	/* Be sure all data is written before enabling the task */
+	wmb();
+
+	writel(v, ss->base + SS_CTL_REG);
+
+	wait_for_completion_interruptible_timeout(&ss->flows[flow].complete,
+						  msecs_to_jiffies(todo));
+	if (ss->flows[flow].status == 0) {
+		dev_err(ss->dev, "DMA timeout for PRNG (size=%u)\n", todo);
+		err = -EFAULT;
+	}
+	/* Since cipher and hash use the linux/cryptoengine and that we have
+	 * a cryptoengine per flow, we are sure that they will issue only one
+	 * request per flow.
+	 * Since the cryptoengine wait for completion before submitting a new
+	 * one, the mlock could be left just after the final writel.
+	 * But cryptoengine cannot handle crypto_rng, so we need to be sure
+	 * nothing will use our flow.
+	 * The easiest way is to grab mlock until the hardware end our requests.
+	 * We could have used a per flow lock, but this would increase
+	 * complexity.
+	 * The drawback is that no request could be handled for the other flow.
+	 */
+	mutex_unlock(&ss->mlock);
+
+	pm_runtime_put(ss->dev);
+
+err_pm:
+	dma_unmap_single(ss->dev, dma_dst, todo, DMA_FROM_DEVICE);
+err_iv:
+	dma_unmap_single(ss->dev, dma_iv, ctx->slen, DMA_TO_DEVICE);
+
+	if (!err) {
+		memcpy(dst, d, dlen);
+		/* Update seed */
+		memcpy(ctx->seed, d + dlen, ctx->slen);
+	}
+	kzfree(d);
+
+	return err;
+}
diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
index f7a64033fc03..0223e10495ac 100644
--- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
@@ -8,6 +8,7 @@
 #include <crypto/aes.h>
 #include <crypto/des.h>
 #include <crypto/engine.h>
+#include <crypto/rng.h>
 #include <crypto/skcipher.h>
 #include <linux/atomic.h>
 #include <linux/debugfs.h>
@@ -21,6 +22,7 @@
 #define SS_ALG_AES		0
 #define SS_ALG_DES		(1 << 2)
 #define SS_ALG_3DES		(2 << 2)
+#define SS_ALG_PRNG		(4 << 2)
 
 #define SS_CTL_REG		0x00
 #define SS_INT_CTL_REG		0x04
@@ -52,6 +54,8 @@
 #define SS_FLOW0	BIT(30)
 #define SS_FLOW1	BIT(31)
 
+#define SS_PRNG_CONTINUE	BIT(18)
+
 #define MAX_SG 8
 
 #define MAXFLOW 2
@@ -61,6 +65,9 @@
 #define SS_DIE_ID_SHIFT	20
 #define SS_DIE_ID_MASK	0x07
 
+#define PRNG_DATA_SIZE (160 / 8)
+#define PRNG_SEED_SIZE DIV_ROUND_UP(175, 8)
+
 /*
  * struct ss_clock - Describe clocks used by sun8i-ss
  * @name:       Name of clock needed by this variant
@@ -179,6 +186,16 @@ struct sun8i_cipher_tfm_ctx {
 	struct crypto_sync_skcipher *fallback_tfm;
 };
 
+/*
+ * struct sun8i_ss_prng_ctx - context for PRNG TFM
+ * @seed:	The seed to use
+ * @slen:	The size of the seed
+ */
+struct sun8i_ss_rng_tfm_ctx {
+	void *seed;
+	unsigned int slen;
+};
+
 /*
  * struct sun8i_ss_alg_template - crypto_alg template
  * @type:		the CRYPTO_ALG_TYPE for this template
@@ -189,6 +206,7 @@ struct sun8i_cipher_tfm_ctx {
  * @alg:		one of sub struct must be used
  * @stat_req:		number of request done on this template
  * @stat_fb:		number of request which has fallbacked
+ * @stat_bytes:		total data size done by this template
  */
 struct sun8i_ss_alg_template {
 	u32 type;
@@ -197,10 +215,12 @@ struct sun8i_ss_alg_template {
 	struct sun8i_ss_dev *ss;
 	union {
 		struct skcipher_alg skcipher;
+		struct rng_alg rng;
 	} alg;
 #ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
 	unsigned long stat_req;
 	unsigned long stat_fb;
+	unsigned long stat_bytes;
 #endif
 };
 
@@ -218,3 +238,8 @@ int sun8i_ss_skencrypt(struct skcipher_request *areq);
 int sun8i_ss_get_engine_number(struct sun8i_ss_dev *ss);
 
 int sun8i_ss_run_task(struct sun8i_ss_dev *ss, struct sun8i_cipher_req_ctx *rctx, const char *name);
+int sun8i_ss_prng_generate(struct crypto_rng *tfm, const u8 *src,
+			   unsigned int slen, u8 *dst, unsigned int dlen);
+int sun8i_ss_prng_seed(struct crypto_rng *tfm, const u8 *seed, unsigned int slen);
+int sun8i_ss_prng_init(struct crypto_tfm *tfm);
+void sun8i_ss_prng_exit(struct crypto_tfm *tfm);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
