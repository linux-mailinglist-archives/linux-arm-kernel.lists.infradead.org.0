Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7A5B7283
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 07:11:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h985bgPrmnQOHPPcO+pdTUFRl2d9WlcHXskG9p5+3EY=; b=M/fPgV+IQyoMYU
	0GrlCYpnUCKM9HMQjGmHWH+jpnsB1+/Eve8gEcTtZ9SSt5jwMGQxx+3WHE+4I2d4qlR7o0VXt1G3O
	3mrMYSE42m0ucZD0uo1aPhYNt6kiqNIUW58Q57fkMn2F/JT00/uXauM02JbN4N2APqUEl/fgVTAiI
	tHBFLR+TQtLd2m/oW+SsvVwmaSwBSMnfzzwJw06Kp9KzCva71UptJwU004D+VrnGkzon2/o5aXQ3q
	I1rr2By84KWE0UooiDdZINMqQfL4lQFUJ50kbb78+wZEXdHS/cBgx6h7lNvMjZyLuP5uO4U0BN6u7
	474ZQcBZFRX5jYMiBXfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAoj6-0008Gs-0d; Thu, 19 Sep 2019 05:11:32 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAoiJ-0007nJ-HR
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 05:10:45 +0000
Received: by mail-wr1-x441.google.com with SMTP id a11so1615143wrx.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 22:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZeUKiOyXu2wzWe6067o6XX29/ktg/cO3enVzKlV1B14=;
 b=jlTj3FH3RV6nWTbt/Wewrft3avT/VpKhnhjHtWIS/yimK2oCXV0qwSog4Kb8p2P/L3
 UX1uKNEpwx82dySFWUuPSA9rTaR20xF8KiRFxBMncbY1iTsFn7tqetTYLb7PTercqr1n
 TdgLy/Uxti3k6Liuo3xPn3nFFnsYx7V2HxQrwzH6jmv2ffcceGVMGO9dz8bSTv/EJ3xx
 t25EKdv1CqoVZKcLLg4d8pIzrdF+oqV+YrAGmUhgpUAsJ+U3eE3AC9qeVu1johVxEPtx
 rRoetH/GqkFu64KA3DCuk0tgtV28ZKG+t6t+nEEcTdb74OcUqe0GaVNcsYXzxFHGhpof
 SJ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZeUKiOyXu2wzWe6067o6XX29/ktg/cO3enVzKlV1B14=;
 b=a85pu0JTuuLOovRJa9H+A3VJXaFxF7bE5L4KGprfO7ZMFegJq5XbIIU/cC1hAP0WTO
 El4vJ2vhPiNoCf9z+NyPSf7ddT2lYjD99TwIVMdipTBFDTntTEie9GfSlTJjMgTYyu/E
 FjqP3s83Dk8p2rl2rVekMF56uH73/Yk4qbXmtGPbZb0WuC8mNTX4yqfZ1uhR77y4Q3Xj
 cb2xjspVOm4R+fJRS5Sap25jRLIzAFGZEKYKpwnoAwv1lQV5tDpOS3pSFHfPdnBjPUqE
 AiTzqAGkaCNKcIwzktcmiu43VbTKqxOUbYIg6MXxcn6mTTREqxcJK58bzAYd6D9bJ+oE
 zorA==
X-Gm-Message-State: APjAAAU883viwOOldBAAWDCZcXSCQBdi8lTiUL2+jSuMbkqZueXULWEW
 ixUfnMdBUmDI0vUHc9x7uN4=
X-Google-Smtp-Source: APXvYqyTslZzLm2pwEV8HDJLeBpcpd26wQa2BgWHmn5bZ/LD1xaWAA6C1YE/qIXhhW+nA4XBkeYllg==
X-Received: by 2002:a5d:4742:: with SMTP id o2mr5444558wrs.253.1568869841881; 
 Wed, 18 Sep 2019 22:10:41 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 94sm6575552wrk.92.2019.09.18.22.10.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Sep 2019 22:10:41 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH v2 2/2] crypto: sun4i-ss: enable pm_runtime
Date: Thu, 19 Sep 2019 07:10:35 +0200
Message-Id: <20190919051035.4111-3-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919051035.4111-1-clabbe.montjoie@gmail.com>
References: <20190919051035.4111-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_221043_617607_28513712 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch enables power management on the Security System.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 drivers/crypto/sunxi-ss/sun4i-ss-cipher.c |  9 +++
 drivers/crypto/sunxi-ss/sun4i-ss-core.c   | 94 +++++++++++++++++++----
 drivers/crypto/sunxi-ss/sun4i-ss-hash.c   | 12 +++
 drivers/crypto/sunxi-ss/sun4i-ss-prng.c   |  9 ++-
 drivers/crypto/sunxi-ss/sun4i-ss.h        |  2 +
 5 files changed, 110 insertions(+), 16 deletions(-)

diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
index fa4b1b47822e..c9799cbe0530 100644
--- a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
+++ b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
@@ -480,6 +480,7 @@ int sun4i_ss_cipher_init(struct crypto_tfm *tfm)
 	struct sun4i_tfm_ctx *op = crypto_tfm_ctx(tfm);
 	struct sun4i_ss_alg_template *algt;
 	const char *name = crypto_tfm_alg_name(tfm);
+	int err;
 
 	memset(op, 0, sizeof(struct sun4i_tfm_ctx));
 
@@ -497,13 +498,21 @@ int sun4i_ss_cipher_init(struct crypto_tfm *tfm)
 		return PTR_ERR(op->fallback_tfm);
 	}
 
+	err = pm_runtime_get_sync(op->ss->dev);
+	if (err < 0)
+		goto error_pm;
 	return 0;
+error_pm:
+	crypto_free_sync_skcipher(op->fallback_tfm);
+	return err;
 }
 
 void sun4i_ss_cipher_exit(struct crypto_tfm *tfm)
 {
 	struct sun4i_tfm_ctx *op = crypto_tfm_ctx(tfm);
+
 	crypto_free_sync_skcipher(op->fallback_tfm);
+	pm_runtime_put(op->ss->dev);
 }
 
 /* check and set the AES key, prepare the mode to be used */
diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-core.c b/drivers/crypto/sunxi-ss/sun4i-ss-core.c
index 6c2db5d83b06..311c2653a9c3 100644
--- a/drivers/crypto/sunxi-ss/sun4i-ss-core.c
+++ b/drivers/crypto/sunxi-ss/sun4i-ss-core.c
@@ -44,7 +44,8 @@ static struct sun4i_ss_alg_template ss_algs[] = {
 				.cra_blocksize = MD5_HMAC_BLOCK_SIZE,
 				.cra_ctxsize = sizeof(struct sun4i_req_ctx),
 				.cra_module = THIS_MODULE,
-				.cra_init = sun4i_hash_crainit
+				.cra_init = sun4i_hash_crainit,
+				.cra_exit = sun4i_hash_craexit
 			}
 		}
 	}
@@ -70,7 +71,8 @@ static struct sun4i_ss_alg_template ss_algs[] = {
 				.cra_blocksize = SHA1_BLOCK_SIZE,
 				.cra_ctxsize = sizeof(struct sun4i_req_ctx),
 				.cra_module = THIS_MODULE,
-				.cra_init = sun4i_hash_crainit
+				.cra_init = sun4i_hash_crainit,
+				.cra_exit = sun4i_hash_craexit
 			}
 		}
 	}
@@ -262,6 +264,61 @@ static int sun4i_ss_enable(struct sun4i_ss_ctx *ss)
 	return err;
 }
 
+/*
+ * Power management strategy: The device is suspended unless a TFM exists for
+ * one of the algorithms proposed by this driver.
+ */
+#if defined(CONFIG_PM)
+static int sun4i_ss_pm_suspend(struct device *dev)
+{
+	struct sun4i_ss_ctx *ss = dev_get_drvdata(dev);
+
+	sun4i_ss_disable(ss);
+	return 0;
+}
+
+static int sun4i_ss_pm_resume(struct device *dev)
+{
+	struct sun4i_ss_ctx *ss = dev_get_drvdata(dev);
+
+	return sun4i_ss_enable(ss);
+}
+#endif
+
+const struct dev_pm_ops sun4i_ss_pm_ops = {
+	SET_RUNTIME_PM_OPS(sun4i_ss_pm_suspend, sun4i_ss_pm_resume, NULL)
+};
+
+/*
+ * When power management is enabled, this function enables the PM and set the
+ * device as suspended
+ * When power management is disabled, this function just enables the device
+ */
+static int sun4i_ss_pm_init(struct sun4i_ss_ctx *ss)
+{
+	int err;
+
+	pm_runtime_use_autosuspend(ss->dev);
+	pm_runtime_set_autosuspend_delay(ss->dev, 2000);
+
+	err = pm_runtime_set_suspended(ss->dev);
+	if (err)
+		return err;
+	pm_runtime_enable(ss->dev);
+#if !defined(CONFIG_PM)
+	err = sun4i_ss_enable(ss);
+#endif
+	return err;
+}
+
+static void sun4i_ss_pm_exit(struct sun4i_ss_ctx *ss)
+{
+	pm_runtime_disable(ss->dev);
+#if !defined(CONFIG_PM)
+	sun4i_ss_disable(ss);
+#endif
+}
+
 static int sun4i_ss_probe(struct platform_device *pdev)
 {
 	u32 v;
@@ -308,10 +365,6 @@ static int sun4i_ss_probe(struct platform_device *pdev)
 		ss->reset = NULL;
 	}
 
-	err = sun4i_ss_enable(ss);
-	if (err)
-		goto error_enable;
-
 	/*
 	 * Check that clock have the correct rates given in the datasheet
 	 * Try to set the clock to the maximum allowed
@@ -319,7 +372,7 @@ static int sun4i_ss_probe(struct platform_device *pdev)
 	err = clk_set_rate(ss->ssclk, cr_mod);
 	if (err) {
 		dev_err(&pdev->dev, "Cannot set clock rate to ssclk\n");
-		goto error_enable;
+		return err;
 	}
 
 	/*
@@ -347,12 +400,26 @@ static int sun4i_ss_probe(struct platform_device *pdev)
 		dev_warn(&pdev->dev, "Clock ss is at %lu (%lu MHz) (must be <= %lu)\n",
 			 cr, cr / 1000000, cr_mod);
 
+	ss->dev = &pdev->dev;
+	platform_set_drvdata(pdev, ss);
+
+	spin_lock_init(&ss->slock);
+
+	err = sun4i_ss_pm_init(ss);
+	if (err)
+		return err;
+
 	/*
 	 * Datasheet named it "Die Bonding ID"
 	 * I expect to be a sort of Security System Revision number.
 	 * Since the A80 seems to have an other version of SS
 	 * this info could be useful
 	 */
+
+	err = pm_runtime_get_sync(ss->dev);
+	if (err < 0)
+		goto error_pm;
+
 	writel(SS_ENABLED, ss->base + SS_CTL);
 	v = readl(ss->base + SS_CTL);
 	v >>= 16;
@@ -360,9 +427,7 @@ static int sun4i_ss_probe(struct platform_device *pdev)
 	dev_info(&pdev->dev, "Die ID %d\n", v);
 	writel(0, ss->base + SS_CTL);
 
-	ss->dev = &pdev->dev;
-
-	spin_lock_init(&ss->slock);
+	pm_runtime_put_sync(ss->dev);
 
 	for (i = 0; i < ARRAY_SIZE(ss_algs); i++) {
 		ss_algs[i].ss = ss;
@@ -392,7 +457,6 @@ static int sun4i_ss_probe(struct platform_device *pdev)
 			break;
 		}
 	}
-	platform_set_drvdata(pdev, ss);
 	return 0;
 error_alg:
 	i--;
@@ -409,8 +473,8 @@ static int sun4i_ss_probe(struct platform_device *pdev)
 			break;
 		}
 	}
-error_enable:
-	sun4i_ss_disable(ss);
+error_pm:
+	sun4i_ss_pm_exit(ss);
 	return err;
 }
 
@@ -433,8 +497,7 @@ static int sun4i_ss_remove(struct platform_device *pdev)
 		}
 	}
 
-	writel(0, ss->base + SS_CTL);
-	sun4i_ss_disable(ss);
+	sun4i_ss_pm_exit(ss);
 	return 0;
 }
 
@@ -449,6 +512,7 @@ static struct platform_driver sun4i_ss_driver = {
 	.remove         = sun4i_ss_remove,
 	.driver         = {
 		.name           = "sun4i-ss",
+		.pm		= &sun4i_ss_pm_ops,
 		.of_match_table	= a20ss_crypto_of_match_table,
 	},
 };
diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-hash.c b/drivers/crypto/sunxi-ss/sun4i-ss-hash.c
index fcffba5ef927..9930c9ce8971 100644
--- a/drivers/crypto/sunxi-ss/sun4i-ss-hash.c
+++ b/drivers/crypto/sunxi-ss/sun4i-ss-hash.c
@@ -19,17 +19,29 @@ int sun4i_hash_crainit(struct crypto_tfm *tfm)
 	struct sun4i_tfm_ctx *op = crypto_tfm_ctx(tfm);
 	struct ahash_alg *alg = __crypto_ahash_alg(tfm->__crt_alg);
 	struct sun4i_ss_alg_template *algt;
+	int err;
 
 	memset(op, 0, sizeof(struct sun4i_tfm_ctx));
 
 	algt = container_of(alg, struct sun4i_ss_alg_template, alg.hash);
 	op->ss = algt->ss;
 
+	err = pm_runtime_get_sync(op->ss->dev);
+	if (err < 0)
+		return err;
+
 	crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
 				 sizeof(struct sun4i_req_ctx));
 	return 0;
 }
 
+void sun4i_hash_craexit(struct crypto_tfm *tfm)
+{
+	struct sun4i_tfm_ctx *op = crypto_tfm_ctx(tfm);
+
+	pm_runtime_put(op->ss->dev);
+}
+
 /* sun4i_hash_init: initialize request context */
 int sun4i_hash_init(struct ahash_request *areq)
 {
diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-prng.c b/drivers/crypto/sunxi-ss/sun4i-ss-prng.c
index 63d636424161..729aafdbea84 100644
--- a/drivers/crypto/sunxi-ss/sun4i-ss-prng.c
+++ b/drivers/crypto/sunxi-ss/sun4i-ss-prng.c
@@ -17,7 +17,7 @@ int sun4i_ss_prng_generate(struct crypto_rng *tfm, const u8 *src,
 {
 	struct sun4i_ss_alg_template *algt;
 	struct rng_alg *alg = crypto_rng_alg(tfm);
-	int i;
+	int i, err;
 	u32 v;
 	u32 *data = (u32 *)dst;
 	const u32 mode = SS_OP_PRNG | SS_PRNG_CONTINUE | SS_ENABLED;
@@ -28,6 +28,10 @@ int sun4i_ss_prng_generate(struct crypto_rng *tfm, const u8 *src,
 	algt = container_of(alg, struct sun4i_ss_alg_template, alg.rng);
 	ss = algt->ss;
 
+	err = pm_runtime_get_sync(ss->dev);
+	if (err < 0)
+		return err;
+
 	spin_lock_bh(&ss->slock);
 
 	writel(mode, ss->base + SS_CTL);
@@ -52,5 +56,8 @@ int sun4i_ss_prng_generate(struct crypto_rng *tfm, const u8 *src,
 
 	writel(0, ss->base + SS_CTL);
 	spin_unlock_bh(&ss->slock);
+
+	pm_runtime_put(ss->dev);
+
 	return 0;
 }
diff --git a/drivers/crypto/sunxi-ss/sun4i-ss.h b/drivers/crypto/sunxi-ss/sun4i-ss.h
index 35a27a7145f8..60425ac75d90 100644
--- a/drivers/crypto/sunxi-ss/sun4i-ss.h
+++ b/drivers/crypto/sunxi-ss/sun4i-ss.h
@@ -22,6 +22,7 @@
 #include <linux/scatterlist.h>
 #include <linux/interrupt.h>
 #include <linux/delay.h>
+#include <linux/pm_runtime.h>
 #include <crypto/md5.h>
 #include <crypto/skcipher.h>
 #include <crypto/sha.h>
@@ -177,6 +178,7 @@ struct sun4i_req_ctx {
 };
 
 int sun4i_hash_crainit(struct crypto_tfm *tfm);
+void sun4i_hash_craexit(struct crypto_tfm *tfm);
 int sun4i_hash_init(struct ahash_request *areq);
 int sun4i_hash_update(struct ahash_request *areq);
 int sun4i_hash_final(struct ahash_request *areq);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
