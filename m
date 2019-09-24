Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CF6BC3E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 10:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzZ3213r87H5k5BeRweq4ItYR8HTgXBlV76BGrIOn78=; b=aDxBQ4sc1KB9U4
	DvW4MCudrIic6y5L3hBX32uKet+lsK4OiSmKQS06SS9Wz/a9xxiqxGrNuq9XhQ66Uni0Heggg/5sp
	ge3JKREThJ9Y4ToF5acSWTQCTenxGBo2ed9mojW+9VYm7NNCpopw4tvqU1T+217ggFHi3xOt1CJPd
	aBAOyOhZWc6ZyJAL30dU7MidW8nHYtTtXsmJJBrdKmF9jpDntn0bv8zTUgdkizvDa16imNRdJ88Q4
	Y9FgKvg3Cck7tCMKg7P5i8GPYzoECu88EyDDXB70CiiKS2xdOJwlIYT1n8QfUh7ESVJTAY8K/ubGh
	PgXKDz1yUAJvQoc5V8dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfsz-0007hy-Vc; Tue, 24 Sep 2019 08:09:25 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfsF-0007DA-Rr
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 08:08:41 +0000
Received: by mail-wm1-x343.google.com with SMTP id a6so1026695wma.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 01:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DwEGlosvlSVMLBK3ol5CDT+bd0+LlPSV0LuoF97/hH8=;
 b=BUN+yrWomBP2B4T0mSxUr2aAJXHvCVSgTY8N7wXNSe3rxmgVkznEvEyjvHhLtEOj9c
 uraK9u00k3lwLjNPlDwi0hlLxLF1eC+Id/hn2uKllf/LEvfTpFmvHLtTGcR7ksv8okEB
 tBQmCEp+H9AIZ0H/mjEfD8cbJqrL35YsYgIQJX8Px/w22rfrE5q9EQHMIoYvoVRWg23F
 /OV2JKjEh59TZ6EQjli1Iq81nY6KJzh9l8unCg3OVtJRBkzoPdZ+p8AYegDk2MsqNIe+
 OamMmjt4t79ZupWZiJxOR9tBpO623TJM3UmBY6P4QS/Um9zHeWFWk3dWT26DuX4vOXYH
 rlDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DwEGlosvlSVMLBK3ol5CDT+bd0+LlPSV0LuoF97/hH8=;
 b=Dpapf9YTT4MJ94XIiCfH2PUXZ/9rblUB/00nw4MaSTT2u/nsS56zdYwa1pZ1Cb3C2S
 s1eLc+RNIOoDsHvn2Qwt5N6egldxICUZfatJshYmOCcLtgSlJuCAr8GwQfSLHMEMZlLX
 6QJHDxl3f45Hb+M2bayNAWq4z42D5Fte8v9kZjbLGp8BtZ3UCEb5iUAv0oqmKxfE9up6
 hhFUuAhAN/J1KVHLTKY0bZeC3pBfpy6mgweaNLaBudc68OR05AyB5LnK3FAtYRUlX1I8
 IEsyCK7uX3fAv2UWCa+XGXEzeeJlAGOqpfoVV9hQP1z0ES8Imgu2sc77YGtUKGi1P3Hk
 5vBA==
X-Gm-Message-State: APjAAAUSTFT59FDlblYGYYyfP9dXhd5Etgfr70AK7iApzmH8qS+zxAGB
 oThRBOF+OXJbFZXxaucJhng=
X-Google-Smtp-Source: APXvYqzK0GWbQ0vAaZXBiXR2pqGEOrivO1k07CPs/l61nlPyyaJriqrlg0OJCgAaZb8K81Fstawj3w==
X-Received: by 2002:a7b:c932:: with SMTP id h18mr1454262wml.86.1569312518331; 
 Tue, 24 Sep 2019 01:08:38 -0700 (PDT)
Received: from Red.local ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id u22sm1825256wru.72.2019.09.24.01.08.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Sep 2019 01:08:37 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH v3 2/2] crypto: sun4i-ss: enable pm_runtime
Date: Tue, 24 Sep 2019 10:08:32 +0200
Message-Id: <20190924080832.18694-3-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190924080832.18694-1-clabbe.montjoie@gmail.com>
References: <20190924080832.18694-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_010839_901010_5B5C0222 
X-CRM114-Status: GOOD (  23.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch enables power management on the Security System.
sun4i-ss now depends on PM because it simplify code and prevent some ifdef.
But this is not a problem since arch maintainer want ARCH_SUNXI to
depend on PM in the future.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 drivers/crypto/Kconfig                    |  1 +
 drivers/crypto/sunxi-ss/sun4i-ss-cipher.c | 10 +++
 drivers/crypto/sunxi-ss/sun4i-ss-core.c   | 82 ++++++++++++++++++-----
 drivers/crypto/sunxi-ss/sun4i-ss-hash.c   | 12 ++++
 drivers/crypto/sunxi-ss/sun4i-ss-prng.c   |  9 ++-
 drivers/crypto/sunxi-ss/sun4i-ss.h        |  2 +
 6 files changed, 97 insertions(+), 19 deletions(-)

diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index 980b0844918b..ee53660b532c 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -662,6 +662,7 @@ config CRYPTO_DEV_IMGTEC_HASH
 config CRYPTO_DEV_SUN4I_SS
 	tristate "Support for Allwinner Security System cryptographic accelerator"
 	depends on ARCH_SUNXI && !64BIT
+	depends on PM
 	select CRYPTO_MD5
 	select CRYPTO_SHA1
 	select CRYPTO_AES
diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
index fa4b1b47822e..93acec22e42f 100644
--- a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
+++ b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
@@ -480,6 +480,7 @@ int sun4i_ss_cipher_init(struct crypto_tfm *tfm)
 	struct sun4i_tfm_ctx *op = crypto_tfm_ctx(tfm);
 	struct sun4i_ss_alg_template *algt;
 	const char *name = crypto_tfm_alg_name(tfm);
+	int err;
 
 	memset(op, 0, sizeof(struct sun4i_tfm_ctx));
 
@@ -497,13 +498,22 @@ int sun4i_ss_cipher_init(struct crypto_tfm *tfm)
 		return PTR_ERR(op->fallback_tfm);
 	}
 
+	err = pm_runtime_get_sync(op->ss->dev);
+	if (err < 0)
+		goto error_pm;
+
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
index 6c2db5d83b06..814cd12149a9 100644
--- a/drivers/crypto/sunxi-ss/sun4i-ss-core.c
+++ b/drivers/crypto/sunxi-ss/sun4i-ss-core.c
@@ -44,7 +44,8 @@ static struct sun4i_ss_alg_template ss_algs[] = {
 				.cra_blocksize = MD5_HMAC_BLOCK_SIZE,
 				.cra_ctxsize = sizeof(struct sun4i_req_ctx),
 				.cra_module = THIS_MODULE,
-				.cra_init = sun4i_hash_crainit
+				.cra_init = sun4i_hash_crainit,
+				.cra_exit = sun4i_hash_craexit,
 			}
 		}
 	}
@@ -70,7 +71,8 @@ static struct sun4i_ss_alg_template ss_algs[] = {
 				.cra_blocksize = SHA1_BLOCK_SIZE,
 				.cra_ctxsize = sizeof(struct sun4i_req_ctx),
 				.cra_module = THIS_MODULE,
-				.cra_init = sun4i_hash_crainit
+				.cra_init = sun4i_hash_crainit,
+				.cra_exit = sun4i_hash_craexit,
 			}
 		}
 	}
@@ -223,17 +225,26 @@ static struct sun4i_ss_alg_template ss_algs[] = {
 #endif
 };
 
-static void sun4i_ss_disable(struct sun4i_ss_ctx *ss)
+/*
+ * Power management strategy: The device is suspended unless a TFM exists for
+ * one of the algorithms proposed by this driver.
+ */
+static int sun4i_ss_pm_suspend(struct device *dev)
 {
+	struct sun4i_ss_ctx *ss = dev_get_drvdata(dev);
+
 	if (ss->reset)
 		reset_control_assert(ss->reset);
 
 	clk_disable_unprepare(ss->ssclk);
 	clk_disable_unprepare(ss->busclk);
+	return 0;
 }
 
-static int sun4i_ss_enable(struct sun4i_ss_ctx *ss)
+static int sun4i_ss_pm_resume(struct device *dev)
 {
+	struct sun4i_ss_ctx *ss = dev_get_drvdata(dev);
+
 	int err;
 
 	err = clk_prepare_enable(ss->busclk);
@@ -258,10 +269,38 @@ static int sun4i_ss_enable(struct sun4i_ss_ctx *ss)
 
 	return err;
 err_enable:
-	sun4i_ss_disable(ss);
+	sun4i_ss_pm_suspend(dev);
+	return err;
+}
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
 	return err;
 }
 
+static void sun4i_ss_pm_exit(struct sun4i_ss_ctx *ss)
+{
+	pm_runtime_disable(ss->dev);
+}
+
 static int sun4i_ss_probe(struct platform_device *pdev)
 {
 	u32 v;
@@ -308,10 +347,6 @@ static int sun4i_ss_probe(struct platform_device *pdev)
 		ss->reset = NULL;
 	}
 
-	err = sun4i_ss_enable(ss);
-	if (err)
-		goto error_enable;
-
 	/*
 	 * Check that clock have the correct rates given in the datasheet
 	 * Try to set the clock to the maximum allowed
@@ -319,7 +354,7 @@ static int sun4i_ss_probe(struct platform_device *pdev)
 	err = clk_set_rate(ss->ssclk, cr_mod);
 	if (err) {
 		dev_err(&pdev->dev, "Cannot set clock rate to ssclk\n");
-		goto error_enable;
+		return err;
 	}
 
 	/*
@@ -347,12 +382,26 @@ static int sun4i_ss_probe(struct platform_device *pdev)
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
@@ -360,9 +409,7 @@ static int sun4i_ss_probe(struct platform_device *pdev)
 	dev_info(&pdev->dev, "Die ID %d\n", v);
 	writel(0, ss->base + SS_CTL);
 
-	ss->dev = &pdev->dev;
-
-	spin_lock_init(&ss->slock);
+	pm_runtime_put_sync(ss->dev);
 
 	for (i = 0; i < ARRAY_SIZE(ss_algs); i++) {
 		ss_algs[i].ss = ss;
@@ -392,7 +439,6 @@ static int sun4i_ss_probe(struct platform_device *pdev)
 			break;
 		}
 	}
-	platform_set_drvdata(pdev, ss);
 	return 0;
 error_alg:
 	i--;
@@ -409,8 +455,8 @@ static int sun4i_ss_probe(struct platform_device *pdev)
 			break;
 		}
 	}
-error_enable:
-	sun4i_ss_disable(ss);
+error_pm:
+	sun4i_ss_pm_exit(ss);
 	return err;
 }
 
@@ -433,8 +479,7 @@ static int sun4i_ss_remove(struct platform_device *pdev)
 		}
 	}
 
-	writel(0, ss->base + SS_CTL);
-	sun4i_ss_disable(ss);
+	sun4i_ss_pm_exit(ss);
 	return 0;
 }
 
@@ -449,6 +494,7 @@ static struct platform_driver sun4i_ss_driver = {
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
