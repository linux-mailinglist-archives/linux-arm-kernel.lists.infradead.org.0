Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 882801B77CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 16:04:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dRDDW6Q19BZm8BXctY3AlgVHMXyxvq+i8gqEn6RhQdw=; b=b0q36IZ1QnhI0JgJRRbqoRvJZk
	vcyEDX2IReqO9PYTXNgHNS2n5vpSoWUjkiiscGM0FTJNGR+YoGzdAcqHKbtuiXQ3KKj8Iy8IFBth7
	r3kWnzAQy7C4SyVaDCW+Bv9sKpUPmT5bc3JJCPftnOAc8kTnxv6sdO8SDPhOt0FDNyVRJOHBxovDS
	S71l5iNOV/QRCswiPJT2Bu8SKJcxyDT528zAGFEbLX8q0nUgybuldNGual5ytRvlXuIuRyaoo03nq
	n35cpjlWf5Nfcswg9o2pypcIW7ovtHNg371gR8Lagru6tb1MjEyOhFEsll6+P/DLavCIXNZw3RkXS
	Ge5XsSiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyw1-0003ZK-1a; Fri, 24 Apr 2020 14:04:05 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyuU-0002V1-DM
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 14:02:33 +0000
Received: by mail-wm1-x343.google.com with SMTP id k12so2000113wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 07:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Mg4OpuD3OXDiFizBCVZSzB583ncngclW1D4CseSbw7Q=;
 b=ra7zgTTKF6nHTefUjCmDncwF8TN/Wua4ofDRJkSPsWmsAPjLy5tE1FvtgAlzuC3+Fg
 KCRGrRYUY3NOoRKBn1CB6xSAv9QY14BgBi86QAct6Y05TNCXA2C8Ibm9g9/lOu4cMhys
 NaDTMIJgURpzAGEOKHtQ4QyouevAh9yYtSULyoFSsMCNOC98jHgMzJUqBkA0UuFiNyga
 SSa+gR66PFlXbwBcmlQtRmMpdc1nY9gKqjsutQ0a+t8Nn20EW5hVijhElITlGQ0AXxve
 755V8WKPOCDK9tT/Xb12skI12qOIzNh9JjV6dPjY3J3b40ApcsvW7fRa3oiSAH0+tND6
 kisg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Mg4OpuD3OXDiFizBCVZSzB583ncngclW1D4CseSbw7Q=;
 b=d3XFmvmsyrNK2e0wU9+sSi+mN8Z9MPJ0TJnWibJt2WqRcp3Cf8twK9WPsBW0+dv3X6
 x2NII1FXaOKUQcTcrAvozZBMxCVKnOOCbd1c0GmJAjTBFUQ6wWscSU8cEGZM/488HqO0
 eSgu9ChGeQCdDrWCz0MdzgmwYxFZ5GPzdEx0bg2Rnbwt3KQ+EndY/H31Im9LvOxJT0/v
 y/IQoI+V/7lZnfWiJ8oA6UzIJXB/TeQJ2Zui1YaRtOZJI/9SS5PKLedTdFmPD0IRtq3F
 O5gxhwWQxwvlCkqhD+KgezU8PgG/KBcS2n0TJ/Z6wbbysG1rJfqiQVX4z2GUFfgnltx0
 pvag==
X-Gm-Message-State: AGi0PuYVVx8fsGgz9hm9tx8uUG9/cIgdrkr3RYYXBs0BDsdfbuTi9ccw
 r58dysrVe0xLbfwMCsLlPdcAAw==
X-Google-Smtp-Source: APiQypKS/s7Fjgcwo7Mx2BcMMvIE3InP838QPPYKoWjUxEf5s4vx9zMRfoGVQ+3JCV8R3jT8KIowew==
X-Received: by 2002:a7b:c772:: with SMTP id x18mr10803151wmk.39.1587736947948; 
 Fri, 24 Apr 2020 07:02:27 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v131sm3061051wmb.19.2020.04.24.07.02.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 07:02:26 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH v2 03/14] crypto: sun8i-ss: support hash algorithms
Date: Fri, 24 Apr 2020 14:02:03 +0000
Message-Id: <1587736934-22801-4-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
References: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_070230_529247_D320F265 
X-CRM114-Status: GOOD (  21.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

The SS support multiples hash algorithms, this patch adds support for
MD5, SHA1, SHA224 and SHA256.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/allwinner/Kconfig              |   9 +
 drivers/crypto/allwinner/sun8i-ss/Makefile    |   1 +
 .../crypto/allwinner/sun8i-ss/sun8i-ss-core.c | 155 ++++++
 .../crypto/allwinner/sun8i-ss/sun8i-ss-hash.c | 446 ++++++++++++++++++
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h  |  60 +++
 5 files changed, 671 insertions(+)
 create mode 100644 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-hash.c

diff --git a/drivers/crypto/allwinner/Kconfig b/drivers/crypto/allwinner/Kconfig
index a0bdb26d0fe4..945228b3a8c4 100644
--- a/drivers/crypto/allwinner/Kconfig
+++ b/drivers/crypto/allwinner/Kconfig
@@ -103,3 +103,12 @@ config CRYPTO_DEV_SUN8I_SS_PRNG
 	help
 	  Select this option if you want to provide kernel-side support for
 	  the Pseudo-Random Number Generator found in the Security System.
+
+config CRYPTO_DEV_SUN8I_SS_HASH
+	bool "Enable support for hash on sun8i-ss"
+	depends on CRYPTO_DEV_SUN8I_SS
+	select MD5
+	select SHA1
+	select SHA256
+	help
+	  Say y to enable support for hash algorithms.
diff --git a/drivers/crypto/allwinner/sun8i-ss/Makefile b/drivers/crypto/allwinner/sun8i-ss/Makefile
index 49f2f912c816..aabfd893c817 100644
--- a/drivers/crypto/allwinner/sun8i-ss/Makefile
+++ b/drivers/crypto/allwinner/sun8i-ss/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_CRYPTO_DEV_SUN8I_SS) += sun8i-ss.o
 sun8i-ss-y += sun8i-ss-core.o sun8i-ss-cipher.o
 sun8i-ss-$(CONFIG_CRYPTO_DEV_SUN8I_SS_PRNG) += sun8i-ss-prng.o
+sun8i-ss-$(CONFIG_CRYPTO_DEV_SUN8I_SS_HASH) += sun8i-ss-hash.o
diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
index 592ee35616ba..cd408969bd03 100644
--- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
@@ -41,6 +41,8 @@ static const struct ss_variant ss_a80_variant = {
 static const struct ss_variant ss_a83t_variant = {
 	.alg_cipher = { SS_ALG_AES, SS_ALG_DES, SS_ALG_3DES,
 	},
+	.alg_hash = { SS_ALG_MD5, SS_ALG_SHA1, SS_ALG_SHA224, SS_ALG_SHA256,
+	},
 	.op_mode = { SS_OP_ECB, SS_OP_CBC,
 	},
 	.ss_clks = {
@@ -280,6 +282,128 @@ static struct sun8i_ss_alg_template ss_algs[] = {
 	}
 },
 #endif
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_HASH
+{	.type = CRYPTO_ALG_TYPE_AHASH,
+	.ss_algo_id = SS_ID_HASH_MD5,
+	.alg.hash = {
+		.init = sun8i_ss_hash_init,
+		.update = sun8i_ss_hash_update,
+		.final = sun8i_ss_hash_final,
+		.finup = sun8i_ss_hash_finup,
+		.digest = sun8i_ss_hash_digest,
+		.export = sun8i_ss_hash_export,
+		.import = sun8i_ss_hash_import,
+		.halg = {
+			.digestsize = MD5_DIGEST_SIZE,
+			.statesize = sizeof(struct md5_state),
+			.base = {
+				.cra_name = "md5",
+				.cra_driver_name = "md5-sun8i-ss",
+				.cra_priority = 300,
+				.cra_alignmask = 3,
+				.cra_flags = CRYPTO_ALG_TYPE_AHASH |
+					CRYPTO_ALG_ASYNC |
+					CRYPTO_ALG_NEED_FALLBACK,
+				.cra_blocksize = MD5_HMAC_BLOCK_SIZE,
+				.cra_ctxsize = sizeof(struct sun8i_ss_hash_tfm_ctx),
+				.cra_module = THIS_MODULE,
+				.cra_init = sun8i_ss_hash_crainit,
+				.cra_exit = sun8i_ss_hash_craexit,
+			}
+		}
+	}
+},
+{	.type = CRYPTO_ALG_TYPE_AHASH,
+	.ss_algo_id = SS_ID_HASH_SHA1,
+	.alg.hash = {
+		.init = sun8i_ss_hash_init,
+		.update = sun8i_ss_hash_update,
+		.final = sun8i_ss_hash_final,
+		.finup = sun8i_ss_hash_finup,
+		.digest = sun8i_ss_hash_digest,
+		.export = sun8i_ss_hash_export,
+		.import = sun8i_ss_hash_import,
+		.halg = {
+			.digestsize = SHA1_DIGEST_SIZE,
+			.statesize = sizeof(struct sha1_state),
+			.base = {
+				.cra_name = "sha1",
+				.cra_driver_name = "sha1-sun8i-ss",
+				.cra_priority = 300,
+				.cra_alignmask = 3,
+				.cra_flags = CRYPTO_ALG_TYPE_AHASH |
+					CRYPTO_ALG_ASYNC |
+					CRYPTO_ALG_NEED_FALLBACK,
+				.cra_blocksize = SHA1_BLOCK_SIZE,
+				.cra_ctxsize = sizeof(struct sun8i_ss_hash_tfm_ctx),
+				.cra_module = THIS_MODULE,
+				.cra_init = sun8i_ss_hash_crainit,
+				.cra_exit = sun8i_ss_hash_craexit,
+			}
+		}
+	}
+},
+{	.type = CRYPTO_ALG_TYPE_AHASH,
+	.ss_algo_id = SS_ID_HASH_SHA224,
+	.alg.hash = {
+		.init = sun8i_ss_hash_init,
+		.update = sun8i_ss_hash_update,
+		.final = sun8i_ss_hash_final,
+		.finup = sun8i_ss_hash_finup,
+		.digest = sun8i_ss_hash_digest,
+		.export = sun8i_ss_hash_export,
+		.import = sun8i_ss_hash_import,
+		.halg = {
+			.digestsize = SHA224_DIGEST_SIZE,
+			.statesize = sizeof(struct sha256_state),
+			.base = {
+				.cra_name = "sha224",
+				.cra_driver_name = "sha224-sun8i-ss",
+				.cra_priority = 300,
+				.cra_alignmask = 3,
+				.cra_flags = CRYPTO_ALG_TYPE_AHASH |
+					CRYPTO_ALG_ASYNC |
+					CRYPTO_ALG_NEED_FALLBACK,
+				.cra_blocksize = SHA224_BLOCK_SIZE,
+				.cra_ctxsize = sizeof(struct sun8i_ss_hash_tfm_ctx),
+				.cra_module = THIS_MODULE,
+				.cra_init = sun8i_ss_hash_crainit,
+				.cra_exit = sun8i_ss_hash_craexit,
+			}
+		}
+	}
+},
+{	.type = CRYPTO_ALG_TYPE_AHASH,
+	.ss_algo_id = SS_ID_HASH_SHA256,
+	.alg.hash = {
+		.init = sun8i_ss_hash_init,
+		.update = sun8i_ss_hash_update,
+		.final = sun8i_ss_hash_final,
+		.finup = sun8i_ss_hash_finup,
+		.digest = sun8i_ss_hash_digest,
+		.export = sun8i_ss_hash_export,
+		.import = sun8i_ss_hash_import,
+		.halg = {
+			.digestsize = SHA256_DIGEST_SIZE,
+			.statesize = sizeof(struct sha256_state),
+			.base = {
+				.cra_name = "sha256",
+				.cra_driver_name = "sha256-sun8i-ss",
+				.cra_priority = 300,
+				.cra_alignmask = 3,
+				.cra_flags = CRYPTO_ALG_TYPE_AHASH |
+					CRYPTO_ALG_ASYNC |
+					CRYPTO_ALG_NEED_FALLBACK,
+				.cra_blocksize = SHA256_BLOCK_SIZE,
+				.cra_ctxsize = sizeof(struct sun8i_ss_hash_tfm_ctx),
+				.cra_module = THIS_MODULE,
+				.cra_init = sun8i_ss_hash_crainit,
+				.cra_exit = sun8i_ss_hash_craexit,
+			}
+		}
+	}
+},
+#endif
 };
 
 #ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
@@ -307,6 +431,12 @@ static int sun8i_ss_dbgfs_read(struct seq_file *seq, void *v)
 				   ss_algs[i].alg.rng.base.cra_name,
 				   ss_algs[i].stat_req, ss_algs[i].stat_bytes);
 			break;
+		case CRYPTO_ALG_TYPE_AHASH:
+			seq_printf(seq, "%s %s %lu %lu\n",
+				   ss_algs[i].alg.hash.halg.base.cra_driver_name,
+				   ss_algs[i].alg.hash.halg.base.cra_name,
+				   ss_algs[i].stat_req, ss_algs[i].stat_fb);
+			break;
 		}
 	}
 	return 0;
@@ -478,6 +608,26 @@ static int sun8i_ss_register_algs(struct sun8i_ss_dev *ss)
 				ss_algs[i].ss = NULL;
 			}
 			break;
+		case CRYPTO_ALG_TYPE_AHASH:
+			id = ss_algs[i].ss_algo_id;
+			ss_method = ss->variant->alg_hash[id];
+			if (ss_method == SS_ID_NOTSUPP) {
+				dev_info(ss->dev,
+					"DEBUG: Algo of %s not supported\n",
+					ss_algs[i].alg.hash.halg.base.cra_name);
+				ss_algs[i].ss = NULL;
+				break;
+			}
+			dev_info(ss->dev, "Register %s\n",
+				 ss_algs[i].alg.hash.halg.base.cra_name);
+			err = crypto_register_ahash(&ss_algs[i].alg.hash);
+			if (err) {
+				dev_err(ss->dev, "ERROR: Fail to register %s\n",
+					ss_algs[i].alg.hash.halg.base.cra_name);
+				ss_algs[i].ss = NULL;
+				return err;
+			}
+			break;
 		default:
 			ss_algs[i].ss = NULL;
 			dev_err(ss->dev, "ERROR: tried to register an unknown algo\n");
@@ -504,6 +654,11 @@ static void sun8i_ss_unregister_algs(struct sun8i_ss_dev *ss)
 				 ss_algs[i].alg.rng.base.cra_name);
 			crypto_unregister_rng(&ss_algs[i].alg.rng);
 			break;
+		case CRYPTO_ALG_TYPE_AHASH:
+			dev_info(ss->dev, "Unregister %d %s\n", i,
+				 ss_algs[i].alg.hash.halg.base.cra_name);
+			crypto_unregister_ahash(&ss_algs[i].alg.hash);
+			break;
 		}
 	}
 }
diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-hash.c b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-hash.c
new file mode 100644
index 000000000000..d89b2ef895f5
--- /dev/null
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-hash.c
@@ -0,0 +1,446 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * sun8i-ss-hash.c - hardware cryptographic offloader for
+ * Allwinner A80/A83T SoC
+ *
+ * Copyright (C) 2015-2020 Corentin Labbe <clabbe@baylibre.com>
+ *
+ * This file add support for MD5 and SHA1/SHA224/SHA256.
+ *
+ * You could find the datasheet in Documentation/arm/sunxi.rst
+ */
+#include <linux/pm_runtime.h>
+#include <linux/scatterlist.h>
+#include <crypto/internal/hash.h>
+#include <crypto/sha.h>
+#include <crypto/md5.h>
+#include "sun8i-ss.h"
+
+int sun8i_ss_hash_crainit(struct crypto_tfm *tfm)
+{
+	struct sun8i_ss_hash_tfm_ctx *op = crypto_tfm_ctx(tfm);
+	struct ahash_alg *alg = __crypto_ahash_alg(tfm->__crt_alg);
+	struct sun8i_ss_alg_template *algt;
+	int err;
+
+	memset(op, 0, sizeof(struct sun8i_ss_hash_tfm_ctx));
+
+	algt = container_of(alg, struct sun8i_ss_alg_template, alg.hash);
+	op->ss = algt->ss;
+
+	op->enginectx.op.do_one_request = sun8i_ss_hash_run;
+	op->enginectx.op.prepare_request = NULL;
+	op->enginectx.op.unprepare_request = NULL;
+
+	/* FALLBACK */
+	op->fallback_tfm = crypto_alloc_ahash(crypto_tfm_alg_name(tfm), 0,
+					      CRYPTO_ALG_NEED_FALLBACK);
+	if (IS_ERR(op->fallback_tfm)) {
+		dev_err(algt->ss->dev, "Fallback driver could no be loaded\n");
+		return PTR_ERR(op->fallback_tfm);
+	}
+
+	if (algt->alg.hash.halg.statesize < crypto_ahash_statesize(op->fallback_tfm))
+		algt->alg.hash.halg.statesize = crypto_ahash_statesize(op->fallback_tfm);
+
+	crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
+				 sizeof(struct sun8i_ss_hash_reqctx) +
+				 crypto_ahash_reqsize(op->fallback_tfm));
+
+	dev_info(op->ss->dev, "Fallback for %s is %s\n",
+		 crypto_tfm_alg_driver_name(tfm),
+		 crypto_tfm_alg_driver_name(&op->fallback_tfm->base));
+	err = pm_runtime_get_sync(op->ss->dev);
+	if (err < 0)
+		goto error_pm;
+	return 0;
+error_pm:
+	crypto_free_ahash(op->fallback_tfm);
+	return err;
+}
+
+void sun8i_ss_hash_craexit(struct crypto_tfm *tfm)
+{
+	struct sun8i_ss_hash_tfm_ctx *tfmctx = crypto_tfm_ctx(tfm);
+
+	crypto_free_ahash(tfmctx->fallback_tfm);
+	pm_runtime_put_sync_suspend(tfmctx->ss->dev);
+}
+
+int sun8i_ss_hash_init(struct ahash_request *areq)
+{
+	struct sun8i_ss_hash_reqctx *rctx = ahash_request_ctx(areq);
+	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
+	struct sun8i_ss_hash_tfm_ctx *tfmctx = crypto_ahash_ctx(tfm);
+	struct ahash_alg *alg = __crypto_ahash_alg(tfm->base.__crt_alg);
+	struct sun8i_ss_alg_template *algt;
+
+	memset(rctx, 0, sizeof(struct sun8i_ss_hash_reqctx));
+
+	algt = container_of(alg, struct sun8i_ss_alg_template, alg.hash);
+
+	ahash_request_set_tfm(&rctx->fallback_req, tfmctx->fallback_tfm);
+	rctx->fallback_req.base.flags = areq->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP;
+
+	return crypto_ahash_init(&rctx->fallback_req);
+}
+
+int sun8i_ss_hash_export(struct ahash_request *areq, void *out)
+{
+	struct sun8i_ss_hash_reqctx *rctx = ahash_request_ctx(areq);
+	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
+	struct sun8i_ss_hash_tfm_ctx *tfmctx = crypto_ahash_ctx(tfm);
+
+	ahash_request_set_tfm(&rctx->fallback_req, tfmctx->fallback_tfm);
+	rctx->fallback_req.base.flags = areq->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP;
+
+	return crypto_ahash_export(&rctx->fallback_req, out);
+}
+
+int sun8i_ss_hash_import(struct ahash_request *areq, const void *in)
+{
+	struct sun8i_ss_hash_reqctx *rctx = ahash_request_ctx(areq);
+	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
+	struct sun8i_ss_hash_tfm_ctx *tfmctx = crypto_ahash_ctx(tfm);
+
+	ahash_request_set_tfm(&rctx->fallback_req, tfmctx->fallback_tfm);
+	rctx->fallback_req.base.flags = areq->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP;
+
+	return crypto_ahash_import(&rctx->fallback_req, in);
+}
+
+int sun8i_ss_hash_final(struct ahash_request *areq)
+{
+	struct sun8i_ss_hash_reqctx *rctx = ahash_request_ctx(areq);
+	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
+	struct sun8i_ss_hash_tfm_ctx *tfmctx = crypto_ahash_ctx(tfm);
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
+	struct ahash_alg *alg = __crypto_ahash_alg(tfm->base.__crt_alg);
+	struct sun8i_ss_alg_template *algt;
+#endif
+
+	ahash_request_set_tfm(&rctx->fallback_req, tfmctx->fallback_tfm);
+	rctx->fallback_req.base.flags = areq->base.flags &
+					CRYPTO_TFM_REQ_MAY_SLEEP;
+	rctx->fallback_req.result = areq->result;
+
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
+	algt = container_of(alg, struct sun8i_ss_alg_template, alg.hash);
+	algt->stat_fb++;
+#endif
+
+	return crypto_ahash_final(&rctx->fallback_req);
+}
+
+int sun8i_ss_hash_update(struct ahash_request *areq)
+{
+	struct sun8i_ss_hash_reqctx *rctx = ahash_request_ctx(areq);
+	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
+	struct sun8i_ss_hash_tfm_ctx *tfmctx = crypto_ahash_ctx(tfm);
+
+	ahash_request_set_tfm(&rctx->fallback_req, tfmctx->fallback_tfm);
+	rctx->fallback_req.base.flags = areq->base.flags &
+					CRYPTO_TFM_REQ_MAY_SLEEP;
+	rctx->fallback_req.nbytes = areq->nbytes;
+	rctx->fallback_req.src = areq->src;
+
+	return crypto_ahash_update(&rctx->fallback_req);
+}
+
+int sun8i_ss_hash_finup(struct ahash_request *areq)
+{
+	struct sun8i_ss_hash_reqctx *rctx = ahash_request_ctx(areq);
+	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
+	struct sun8i_ss_hash_tfm_ctx *tfmctx = crypto_ahash_ctx(tfm);
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
+	struct ahash_alg *alg = __crypto_ahash_alg(tfm->base.__crt_alg);
+	struct sun8i_ss_alg_template *algt;
+#endif
+
+	ahash_request_set_tfm(&rctx->fallback_req, tfmctx->fallback_tfm);
+	rctx->fallback_req.base.flags = areq->base.flags &
+					CRYPTO_TFM_REQ_MAY_SLEEP;
+
+	rctx->fallback_req.nbytes = areq->nbytes;
+	rctx->fallback_req.src = areq->src;
+	rctx->fallback_req.result = areq->result;
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
+	algt = container_of(alg, struct sun8i_ss_alg_template, alg.hash);
+	algt->stat_fb++;
+#endif
+
+	return crypto_ahash_finup(&rctx->fallback_req);
+}
+
+int sun8i_ss_hash_digest_fb(struct ahash_request *areq)
+{
+	struct sun8i_ss_hash_reqctx *rctx = ahash_request_ctx(areq);
+	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
+	struct sun8i_ss_hash_tfm_ctx *tfmctx = crypto_ahash_ctx(tfm);
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
+	struct ahash_alg *alg = __crypto_ahash_alg(tfm->base.__crt_alg);
+	struct sun8i_ss_alg_template *algt;
+#endif
+
+	ahash_request_set_tfm(&rctx->fallback_req, tfmctx->fallback_tfm);
+	rctx->fallback_req.base.flags = areq->base.flags &
+					CRYPTO_TFM_REQ_MAY_SLEEP;
+
+	rctx->fallback_req.nbytes = areq->nbytes;
+	rctx->fallback_req.src = areq->src;
+	rctx->fallback_req.result = areq->result;
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
+	algt = container_of(alg, struct sun8i_ss_alg_template, alg.hash);
+	algt->stat_fb++;
+#endif
+
+	return crypto_ahash_digest(&rctx->fallback_req);
+}
+
+static int sun8i_ss_run_hash_task(struct sun8i_ss_dev *ss,
+				  struct sun8i_ss_hash_reqctx *rctx,
+				  const char *name)
+{
+	int flow = rctx->flow;
+	u32 v = SS_START;
+	int i;
+
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
+	ss->flows[flow].stat_req++;
+#endif
+
+	/* choose between stream0/stream1 */
+	if (flow)
+		v |= SS_FLOW1;
+	else
+		v |= SS_FLOW0;
+
+	v |= rctx->method;
+
+	for (i = 0; i < MAX_SG; i++) {
+		if (!rctx->t_dst[i].addr)
+			break;
+
+		mutex_lock(&ss->mlock);
+		if (i > 0) {
+			v |= BIT(17);
+			writel(rctx->t_dst[i - 1].addr, ss->base + SS_KEY_ADR_REG);
+			writel(rctx->t_dst[i - 1].addr, ss->base + SS_IV_ADR_REG);
+		}
+
+		dev_dbg(ss->dev,
+			"Processing SG %d on flow %d %s ctl=%x %d to %d method=%x src=%x dst=%x\n",
+			i, flow, name, v,
+			rctx->t_src[i].len, rctx->t_dst[i].len,
+			rctx->method, rctx->t_src[i].addr, rctx->t_dst[i].addr);
+
+		writel(rctx->t_src[i].addr, ss->base + SS_SRC_ADR_REG);
+		writel(rctx->t_dst[i].addr, ss->base + SS_DST_ADR_REG);
+		writel(rctx->t_src[i].len, ss->base + SS_LEN_ADR_REG);
+		writel(BIT(0) | BIT(1), ss->base + SS_INT_CTL_REG);
+
+		reinit_completion(&ss->flows[flow].complete);
+		ss->flows[flow].status = 0;
+		wmb();
+
+		writel(v, ss->base + SS_CTL_REG);
+		mutex_unlock(&ss->mlock);
+		wait_for_completion_interruptible_timeout(&ss->flows[flow].complete,
+							  msecs_to_jiffies(2000));
+		if (ss->flows[flow].status == 0) {
+			dev_err(ss->dev, "DMA timeout for %s\n", name);
+			return -EFAULT;
+		}
+	}
+
+	return 0;
+}
+
+static bool sun8i_ss_hash_need_fallback(struct ahash_request *areq)
+{
+	struct scatterlist *sg;
+
+	if (areq->nbytes == 0)
+		return true;
+	/* we need to reserve one SG for the padding one */
+	if (sg_nents(areq->src) > MAX_SG - 1)
+		return true;
+	sg = areq->src;
+	while (sg) {
+		/* SS can operate hash only on full block size
+		 * since SS support only MD5,sha1,sha224 and sha256, blocksize
+		 * is always 64
+		 * TODO: handle request if last SG is not len%64
+		 * but this will need to copy data on a new SG of size=64
+		 */
+		if (sg->length % 64 || !IS_ALIGNED(sg->offset, sizeof(u32)))
+			return true;
+		sg = sg_next(sg);
+	}
+	return false;
+}
+
+int sun8i_ss_hash_digest(struct ahash_request *areq)
+{
+	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
+	struct ahash_alg *alg = __crypto_ahash_alg(tfm->base.__crt_alg);
+	struct sun8i_ss_hash_reqctx *rctx = ahash_request_ctx(areq);
+	struct sun8i_ss_alg_template *algt;
+	struct sun8i_ss_dev *ss;
+	struct crypto_engine *engine;
+	struct scatterlist *sg;
+	int nr_sgs, e, i;
+
+	if (sun8i_ss_hash_need_fallback(areq))
+		return sun8i_ss_hash_digest_fb(areq);
+
+	nr_sgs = sg_nents(areq->src);
+	if (nr_sgs > MAX_SG - 1)
+		return sun8i_ss_hash_digest_fb(areq);
+
+	for_each_sg(areq->src, sg, nr_sgs, i) {
+		if (sg->length % 4 || !IS_ALIGNED(sg->offset, sizeof(u32)))
+			return sun8i_ss_hash_digest_fb(areq);
+	}
+
+	algt = container_of(alg, struct sun8i_ss_alg_template, alg.hash);
+	ss = algt->ss;
+
+	e = sun8i_ss_get_engine_number(ss);
+	rctx->flow = e;
+	engine = ss->flows[e].engine;
+
+	return crypto_transfer_hash_request_to_engine(engine, areq);
+}
+
+/* sun8i_ss_hash_run - run an ahash request
+ * Send the data of the request to the SS along with an extra SG with padding
+ */
+int sun8i_ss_hash_run(struct crypto_engine *engine, void *breq)
+{
+	struct ahash_request *areq = container_of(breq, struct ahash_request, base);
+	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
+	struct ahash_alg *alg = __crypto_ahash_alg(tfm->base.__crt_alg);
+	struct sun8i_ss_hash_reqctx *rctx = ahash_request_ctx(areq);
+	struct sun8i_ss_alg_template *algt;
+	struct sun8i_ss_dev *ss;
+	struct scatterlist *sg;
+	int nr_sgs, err, digestsize;
+	unsigned int len;
+	u64 fill, min_fill, byte_count;
+	void *pad, *result;
+	int j, i, todo;
+	__be64 *bebits;
+	__le64 *lebits;
+	dma_addr_t addr_res, addr_pad;
+	u32 *bf;
+
+	algt = container_of(alg, struct sun8i_ss_alg_template, alg.hash);
+	ss = algt->ss;
+
+	digestsize = algt->alg.hash.halg.digestsize;
+	if (digestsize == SHA224_DIGEST_SIZE)
+		digestsize = SHA256_DIGEST_SIZE;
+
+	/* the padding could be up to two block. */
+	pad = kzalloc(algt->alg.hash.halg.base.cra_blocksize * 2, GFP_KERNEL | GFP_DMA);
+	if (!pad)
+		return -ENOMEM;
+	bf = (u32 *)pad;
+
+	result = kzalloc(digestsize, GFP_KERNEL | GFP_DMA);
+	if (!result)
+		return -ENOMEM;
+
+	for (i = 0; i < MAX_SG; i++) {
+		rctx->t_dst[i].addr = 0;
+		rctx->t_dst[i].len = 0;
+	}
+
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
+	algt->stat_req++;
+#endif
+
+	rctx->method = cpu_to_le32(ss->variant->alg_hash[algt->ss_algo_id]);
+
+	nr_sgs = dma_map_sg(ss->dev, areq->src, sg_nents(areq->src), DMA_TO_DEVICE);
+	if (nr_sgs <= 0 || nr_sgs > MAX_SG) {
+		dev_err(ss->dev, "Invalid sg number %d\n", nr_sgs);
+		err = -EINVAL;
+		goto theend;
+	}
+
+	addr_res = dma_map_single(ss->dev, result, digestsize, DMA_FROM_DEVICE);
+	if (dma_mapping_error(ss->dev, addr_res)) {
+		dev_err(ss->dev, "DMA map dest\n");
+		err = -EINVAL;
+		goto theend;
+	}
+
+	len = areq->nbytes;
+	for_each_sg(areq->src, sg, nr_sgs, i) {
+		rctx->t_src[i].addr = cpu_to_le32(sg_dma_address(sg));
+		todo = min(len, sg_dma_len(sg));
+		rctx->t_src[i].len = cpu_to_le32(todo / 4);
+		len -= todo;
+		rctx->t_dst[i].addr = cpu_to_le32(addr_res);
+		rctx->t_dst[i].len = cpu_to_le32(digestsize / 4);
+	}
+	if (len > 0) {
+		dev_err(ss->dev, "remaining len %d\n", len);
+		err = -EINVAL;
+		goto theend;
+	}
+
+	byte_count = areq->nbytes;
+	j = 0;
+	bf[j++] = le32_to_cpu(1 << 7);
+
+	fill = 64 - (byte_count % 64);
+	min_fill = 3 * sizeof(u32);
+
+	if (fill < min_fill)
+		fill += 64;
+
+	j += (fill - min_fill) / sizeof(u32);
+
+	switch (algt->ss_algo_id) {
+	case SS_ID_HASH_MD5:
+		lebits = (__le64 *)&bf[j];
+		*lebits = cpu_to_le64(byte_count << 3);
+		j += 2;
+		break;
+	case SS_ID_HASH_SHA1:
+	case SS_ID_HASH_SHA224:
+	case SS_ID_HASH_SHA256:
+		bebits = (__be64 *)&bf[j];
+		*bebits = cpu_to_be64(byte_count << 3);
+		j += 2;
+		break;
+	}
+
+	addr_pad = dma_map_single(ss->dev, pad, j * 4, DMA_TO_DEVICE);
+	rctx->t_src[i].addr = cpu_to_le32(addr_pad);
+	rctx->t_src[i].len = cpu_to_le32(j);
+	rctx->t_dst[i].addr = cpu_to_le32(addr_res);
+	rctx->t_dst[i].len = cpu_to_le32(digestsize / 4);
+	if (dma_mapping_error(ss->dev, addr_pad)) {
+		dev_err(ss->dev, "DMA error on padding SG\n");
+		err = -EINVAL;
+		goto theend;
+	}
+
+	err = sun8i_ss_run_hash_task(ss, rctx, crypto_tfm_alg_name(areq->base.tfm));
+
+	dma_unmap_single(ss->dev, addr_pad, j * 4, DMA_TO_DEVICE);
+	dma_unmap_sg(ss->dev, areq->src, nr_sgs, DMA_TO_DEVICE);
+	dma_unmap_single(ss->dev, addr_res, digestsize, DMA_FROM_DEVICE);
+
+	kfree(pad);
+
+	memcpy(areq->result, result, algt->alg.hash.halg.digestsize);
+	kfree(result);
+theend:
+	crypto_finalize_hash_request(engine, breq, err);
+	return 0;
+}
diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
index 0223e10495ac..350a611b0b9e 100644
--- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
@@ -13,6 +13,9 @@
 #include <linux/atomic.h>
 #include <linux/debugfs.h>
 #include <linux/crypto.h>
+#include <crypto/internal/hash.h>
+#include <crypto/md5.h>
+#include <crypto/sha.h>
 
 #define SS_START	1
 
@@ -22,7 +25,11 @@
 #define SS_ALG_AES		0
 #define SS_ALG_DES		(1 << 2)
 #define SS_ALG_3DES		(2 << 2)
+#define SS_ALG_MD5		(3 << 2)
 #define SS_ALG_PRNG		(4 << 2)
+#define SS_ALG_SHA1		(6 << 2)
+#define SS_ALG_SHA224		(7 << 2)
+#define SS_ALG_SHA256		(8 << 2)
 
 #define SS_CTL_REG		0x00
 #define SS_INT_CTL_REG		0x04
@@ -51,6 +58,12 @@
 #define SS_OP_ECB	0
 #define SS_OP_CBC	(1 << 13)
 
+#define SS_ID_HASH_MD5	0
+#define SS_ID_HASH_SHA1	1
+#define SS_ID_HASH_SHA224	2
+#define SS_ID_HASH_SHA256	3
+#define SS_ID_HASH_MAX	4
+
 #define SS_FLOW0	BIT(30)
 #define SS_FLOW1	BIT(31)
 
@@ -84,11 +97,14 @@ struct ss_clock {
  * struct ss_variant - Describe SS capability for each variant hardware
  * @alg_cipher:	list of supported ciphers. for each SS_ID_ this will give the
  *              coresponding SS_ALG_XXX value
+ * @alg_hash:	list of supported hashes. for each SS_ID_ this will give the
+ *              corresponding SS_ALG_XXX value
  * @op_mode:	list of supported block modes
  * @ss_clks!	list of clock needed by this variant
  */
 struct ss_variant {
 	char alg_cipher[SS_ID_CIPHER_MAX];
+	char alg_hash[SS_ID_HASH_MAX];
 	u32 op_mode[SS_ID_OP_MAX];
 	struct ss_clock ss_clks[SS_MAX_CLOCKS];
 };
@@ -196,6 +212,38 @@ struct sun8i_ss_rng_tfm_ctx {
 	unsigned int slen;
 };
 
+/*
+ * struct sun8i_ss_hash_tfm_ctx - context for an ahash TFM
+ * @enginectx:		crypto_engine used by this TFM
+ * @fallback_tfm:	pointer to the fallback TFM
+ * @ss:			pointer to the private data of driver handling this TFM
+ *
+ * enginectx must be the first element
+ */
+struct sun8i_ss_hash_tfm_ctx {
+	struct crypto_engine_ctx enginectx;
+	struct crypto_ahash *fallback_tfm;
+	struct sun8i_ss_dev *ss;
+};
+
+/*
+ * struct sun8i_ss_hash_reqctx - context for an ahash request
+ * @t_src:	list of DMA address and size for source SGs
+ * @t_dst:	list of DMA address and size for destination SGs
+ * @fallback_req:	pre-allocated fallback request
+ * @method:	the register value for the algorithm used by this request
+ * @flow:	the flow to use for this request
+ *
+ * t_src, t_dst and method must be in LE32
+ */
+struct sun8i_ss_hash_reqctx {
+	struct sginfo t_src[MAX_SG];
+	struct sginfo t_dst[MAX_SG];
+	struct ahash_request fallback_req;
+	u32 method;
+	int flow;
+};
+
 /*
  * struct sun8i_ss_alg_template - crypto_alg template
  * @type:		the CRYPTO_ALG_TYPE for this template
@@ -216,6 +264,7 @@ struct sun8i_ss_alg_template {
 	union {
 		struct skcipher_alg skcipher;
 		struct rng_alg rng;
+		struct ahash_alg hash;
 	} alg;
 #ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
 	unsigned long stat_req;
@@ -243,3 +292,14 @@ int sun8i_ss_prng_generate(struct crypto_rng *tfm, const u8 *src,
 int sun8i_ss_prng_seed(struct crypto_rng *tfm, const u8 *seed, unsigned int slen);
 int sun8i_ss_prng_init(struct crypto_tfm *tfm);
 void sun8i_ss_prng_exit(struct crypto_tfm *tfm);
+
+int sun8i_ss_hash_crainit(struct crypto_tfm *tfm);
+void sun8i_ss_hash_craexit(struct crypto_tfm *tfm);
+int sun8i_ss_hash_init(struct ahash_request *areq);
+int sun8i_ss_hash_export(struct ahash_request *areq, void *out);
+int sun8i_ss_hash_import(struct ahash_request *areq, const void *in);
+int sun8i_ss_hash_final(struct ahash_request *areq);
+int sun8i_ss_hash_update(struct ahash_request *areq);
+int sun8i_ss_hash_finup(struct ahash_request *areq);
+int sun8i_ss_hash_digest(struct ahash_request *areq);
+int sun8i_ss_hash_run(struct crypto_engine *engine, void *breq);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
