Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC01D626A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:23:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+9z5iF42XqT9D0oUAy4M/ZTvMC2vzTdsD+TYTAkeLgI=; b=oExzg1y9qFv4Xr
	hwUJJppiruteeLmUAp1mR7g9ZtvrnaWAC8NflMkMIa5Z4mvsTOFG2WJinc8pEu+sO4rgdLDpE/g4J
	RRtjtSo1Ckc1oRbwal/PL4b6ApB30eKLqFJK20mSLyWNpi7JCTz3ROFSe7MCPCT6eRl7D4nJKKI78
	GArwGzRHJqAWMVbnDLhsWj2Uj2jz1hiE/lbtSaHVk4y8V0snfMdFUF1OTswqBArRE2W4xNXYwSm5Z
	GU6h+Q0JiSNoFqCHACeMhjYADSpqVgcFj2dYUv3zCBF7EWhR4qwMUZopE0oijQ6Lkcd5ULpsw4/uz
	JQby29FEv5pomBxbcXcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzNM-0005zD-Eu; Mon, 14 Oct 2019 12:23:00 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzKE-0002gF-Eo
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:20:06 +0000
Received: by mail-wm1-x344.google.com with SMTP id y21so16540467wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 05:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jwbuHn1/nhVbykFmuemQXuXRDIeeykNljoq67tVLxpM=;
 b=JcSWlZhoRIJ9tK8Qo4Az4CDqXRAblOzaWgnOB8/tdU1ZLTnQ/yUhYUc5F/BddrWmJm
 waoEhMh+Th4G1LfUJnW/yKdoz3cDbiZrcOZdOulms9Q9P+RM100ld7dZnFHZOHj/w1iT
 MaFq/yx7fU5FmbtdOZAN89JZzdafpe41cEV1UYqogaNQNboXoSdM9k9tC+FR8A+s2tUj
 f4AP4PX6ybPIQsz5m92axzNteyI8SAkviG8oCDR+FBhck4cH0pQdaFU2scfeibYrAt49
 6I/4uKo7dIL8Vvcr9n5Ss14Rl3dC9ditba/3s3uWpfz/iIaZeWiw6T2LlcW5U5+B7zAN
 RpbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jwbuHn1/nhVbykFmuemQXuXRDIeeykNljoq67tVLxpM=;
 b=FEnFZakEvgBxVV2IgoGfzFaS3WZj/lmvsppqjoZxwkRuvCxUB4nrDTJfS3yEVXW39K
 ym8Y2ATgxknGQmpxVWhEU2Zx/rVnWhuhUzSOKdOWeFTeI75y3U+osY/WyeuKk66uP/Mt
 PiQnrHLMlNp+W7fQpvXgL2YqQas9AwfUCstcsimPVHM7cwepc0pMviXSIpw2ifJNjAaa
 Mak61Ui/JWlVaqmvxv75Qf9DeFyQ7wkr5P4iGuy9VX8MbyZnb819x2c4mgTuENn02wdc
 e43tzO+56ef0Vh2TmUQYX7fTkbk55YCzRzISbSDpVcVOg9gDvt/fxjvG61usr96XoifF
 vNOQ==
X-Gm-Message-State: APjAAAVxJhxEeKym5CPwIHAkoLxFu1ef3Dl7qBmsBEsEt0YlD0uDVpJ+
 0BSeZ1oh7j/kypRPNAU7dS90Rg==
X-Google-Smtp-Source: APXvYqzax3juYC22AlSRNQtWVfB+oTNB9iLfbn+BKPLsrNtsgUSMjvv3o0Zj7NufR1FPB289BTAIeA==
X-Received: by 2002:a7b:ce06:: with SMTP id m6mr14234402wmc.156.1571055584025; 
 Mon, 14 Oct 2019 05:19:44 -0700 (PDT)
Received: from localhost.localdomain (91-167-84-221.subs.proxad.net.
 [91.167.84.221])
 by smtp.gmail.com with ESMTPSA id i1sm20222470wmb.19.2019.10.14.05.19.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 05:19:43 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 06/25] crypto: ux500 - switch to skcipher API
Date: Mon, 14 Oct 2019 14:18:51 +0200
Message-Id: <20191014121910.7264-7-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
References: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_051946_587815_40E07E53 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Eric Biggers <ebiggers@google.com>, Linus Walleij <linus.walleij@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 7a7ffe65c8c5 ("crypto: skcipher - Add top-level skcipher interface")
dated 20 august 2015 introduced the new skcipher API which is supposed to
replace both blkcipher and ablkcipher. While all consumers of the API have
been converted long ago, some producers of the ablkcipher remain, forcing
us to keep the ablkcipher support routines alive, along with the matching
code to expose [a]blkciphers via the skcipher API.

So switch this driver to the skcipher API, allowing us to finally drop the
blkcipher code in the near future.

Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/crypto/ux500/cryp/cryp_core.c | 371 ++++++++------------
 1 file changed, 156 insertions(+), 215 deletions(-)

diff --git a/drivers/crypto/ux500/cryp/cryp_core.c b/drivers/crypto/ux500/cryp/cryp_core.c
index 1628ae7a1467..95fb694a2667 100644
--- a/drivers/crypto/ux500/cryp/cryp_core.c
+++ b/drivers/crypto/ux500/cryp/cryp_core.c
@@ -30,6 +30,7 @@
 #include <crypto/algapi.h>
 #include <crypto/ctr.h>
 #include <crypto/internal/des.h>
+#include <crypto/internal/skcipher.h>
 #include <crypto/scatterwalk.h>
 
 #include <linux/platform_data/crypto-ux500.h>
@@ -828,10 +829,10 @@ static int get_nents(struct scatterlist *sg, int nbytes)
 	return nents;
 }
 
-static int ablk_dma_crypt(struct ablkcipher_request *areq)
+static int ablk_dma_crypt(struct skcipher_request *areq)
 {
-	struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(areq);
-	struct cryp_ctx *ctx = crypto_ablkcipher_ctx(cipher);
+	struct crypto_skcipher *cipher = crypto_skcipher_reqtfm(areq);
+	struct cryp_ctx *ctx = crypto_skcipher_ctx(cipher);
 	struct cryp_device_data *device_data;
 
 	int bytes_written = 0;
@@ -840,8 +841,8 @@ static int ablk_dma_crypt(struct ablkcipher_request *areq)
 
 	pr_debug(DEV_DBG_NAME " [%s]", __func__);
 
-	ctx->datalen = areq->nbytes;
-	ctx->outlen = areq->nbytes;
+	ctx->datalen = areq->cryptlen;
+	ctx->outlen = areq->cryptlen;
 
 	ret = cryp_get_device_data(ctx, &device_data);
 	if (ret)
@@ -885,11 +886,11 @@ static int ablk_dma_crypt(struct ablkcipher_request *areq)
 	return 0;
 }
 
-static int ablk_crypt(struct ablkcipher_request *areq)
+static int ablk_crypt(struct skcipher_request *areq)
 {
-	struct ablkcipher_walk walk;
-	struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(areq);
-	struct cryp_ctx *ctx = crypto_ablkcipher_ctx(cipher);
+	struct skcipher_walk walk;
+	struct crypto_skcipher *cipher = crypto_skcipher_reqtfm(areq);
+	struct cryp_ctx *ctx = crypto_skcipher_ctx(cipher);
 	struct cryp_device_data *device_data;
 	unsigned long src_paddr;
 	unsigned long dst_paddr;
@@ -902,21 +903,20 @@ static int ablk_crypt(struct ablkcipher_request *areq)
 	if (ret)
 		goto out;
 
-	ablkcipher_walk_init(&walk, areq->dst, areq->src, areq->nbytes);
-	ret = ablkcipher_walk_phys(areq, &walk);
+	ret = skcipher_walk_async(&walk, areq);
 
 	if (ret) {
-		pr_err(DEV_DBG_NAME "[%s]: ablkcipher_walk_phys() failed!",
+		pr_err(DEV_DBG_NAME "[%s]: skcipher_walk_async() failed!",
 			__func__);
 		goto out;
 	}
 
 	while ((nbytes = walk.nbytes) > 0) {
 		ctx->iv = walk.iv;
-		src_paddr = (page_to_phys(walk.src.page) + walk.src.offset);
+		src_paddr = (page_to_phys(walk.src.phys.page) + walk.src.phys.offset);
 		ctx->indata = phys_to_virt(src_paddr);
 
-		dst_paddr = (page_to_phys(walk.dst.page) + walk.dst.offset);
+		dst_paddr = (page_to_phys(walk.dst.phys.page) + walk.dst.phys.offset);
 		ctx->outdata = phys_to_virt(dst_paddr);
 
 		ctx->datalen = nbytes - (nbytes % ctx->blocksize);
@@ -926,11 +926,10 @@ static int ablk_crypt(struct ablkcipher_request *areq)
 			goto out;
 
 		nbytes -= ctx->datalen;
-		ret = ablkcipher_walk_done(areq, &walk, nbytes);
+		ret = skcipher_walk_done(&walk, nbytes);
 		if (ret)
 			goto out;
 	}
-	ablkcipher_walk_complete(&walk);
 
 out:
 	/* Release the device */
@@ -948,10 +947,10 @@ static int ablk_crypt(struct ablkcipher_request *areq)
 	return ret;
 }
 
-static int aes_ablkcipher_setkey(struct crypto_ablkcipher *cipher,
+static int aes_skcipher_setkey(struct crypto_skcipher *cipher,
 				 const u8 *key, unsigned int keylen)
 {
-	struct cryp_ctx *ctx = crypto_ablkcipher_ctx(cipher);
+	struct cryp_ctx *ctx = crypto_skcipher_ctx(cipher);
 	u32 *flags = &cipher->base.crt_flags;
 
 	pr_debug(DEV_DBG_NAME " [%s]", __func__);
@@ -983,15 +982,15 @@ static int aes_ablkcipher_setkey(struct crypto_ablkcipher *cipher,
 	return 0;
 }
 
-static int des_ablkcipher_setkey(struct crypto_ablkcipher *cipher,
+static int des_skcipher_setkey(struct crypto_skcipher *cipher,
 				 const u8 *key, unsigned int keylen)
 {
-	struct cryp_ctx *ctx = crypto_ablkcipher_ctx(cipher);
+	struct cryp_ctx *ctx = crypto_skcipher_ctx(cipher);
 	int err;
 
 	pr_debug(DEV_DBG_NAME " [%s]", __func__);
 
-	err = verify_ablkcipher_des_key(cipher, key);
+	err = verify_skcipher_des_key(cipher, key);
 	if (err)
 		return err;
 
@@ -1002,15 +1001,15 @@ static int des_ablkcipher_setkey(struct crypto_ablkcipher *cipher,
 	return 0;
 }
 
-static int des3_ablkcipher_setkey(struct crypto_ablkcipher *cipher,
+static int des3_skcipher_setkey(struct crypto_skcipher *cipher,
 				  const u8 *key, unsigned int keylen)
 {
-	struct cryp_ctx *ctx = crypto_ablkcipher_ctx(cipher);
+	struct cryp_ctx *ctx = crypto_skcipher_ctx(cipher);
 	int err;
 
 	pr_debug(DEV_DBG_NAME " [%s]", __func__);
 
-	err = verify_ablkcipher_des3_key(cipher, key);
+	err = verify_skcipher_des3_key(cipher, key);
 	if (err)
 		return err;
 
@@ -1021,10 +1020,10 @@ static int des3_ablkcipher_setkey(struct crypto_ablkcipher *cipher,
 	return 0;
 }
 
-static int cryp_blk_encrypt(struct ablkcipher_request *areq)
+static int cryp_blk_encrypt(struct skcipher_request *areq)
 {
-	struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(areq);
-	struct cryp_ctx *ctx = crypto_ablkcipher_ctx(cipher);
+	struct crypto_skcipher *cipher = crypto_skcipher_reqtfm(areq);
+	struct cryp_ctx *ctx = crypto_skcipher_ctx(cipher);
 
 	pr_debug(DEV_DBG_NAME " [%s]", __func__);
 
@@ -1039,10 +1038,10 @@ static int cryp_blk_encrypt(struct ablkcipher_request *areq)
 	return ablk_crypt(areq);
 }
 
-static int cryp_blk_decrypt(struct ablkcipher_request *areq)
+static int cryp_blk_decrypt(struct skcipher_request *areq)
 {
-	struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(areq);
-	struct cryp_ctx *ctx = crypto_ablkcipher_ctx(cipher);
+	struct crypto_skcipher *cipher = crypto_skcipher_reqtfm(areq);
+	struct cryp_ctx *ctx = crypto_skcipher_ctx(cipher);
 
 	pr_debug(DEV_DBG_NAME " [%s]", __func__);
 
@@ -1058,19 +1057,19 @@ static int cryp_blk_decrypt(struct ablkcipher_request *areq)
 
 struct cryp_algo_template {
 	enum cryp_algo_mode algomode;
-	struct crypto_alg crypto;
+	struct skcipher_alg skcipher;
 };
 
-static int cryp_cra_init(struct crypto_tfm *tfm)
+static int cryp_init_tfm(struct crypto_skcipher *tfm)
 {
-	struct cryp_ctx *ctx = crypto_tfm_ctx(tfm);
-	struct crypto_alg *alg = tfm->__crt_alg;
+	struct cryp_ctx *ctx = crypto_skcipher_ctx(tfm);
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
 	struct cryp_algo_template *cryp_alg = container_of(alg,
 			struct cryp_algo_template,
-			crypto);
+			skcipher);
 
 	ctx->config.algomode = cryp_alg->algomode;
-	ctx->blocksize = crypto_tfm_alg_blocksize(tfm);
+	ctx->blocksize = crypto_skcipher_blocksize(tfm);
 
 	return 0;
 }
@@ -1078,205 +1077,147 @@ static int cryp_cra_init(struct crypto_tfm *tfm)
 static struct cryp_algo_template cryp_algs[] = {
 	{
 		.algomode = CRYP_ALGO_AES_ECB,
-		.crypto = {
-			.cra_name = "aes",
-			.cra_driver_name = "aes-ux500",
-			.cra_priority =	300,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-					CRYPTO_ALG_ASYNC,
-			.cra_blocksize = AES_BLOCK_SIZE,
-			.cra_ctxsize = sizeof(struct cryp_ctx),
-			.cra_alignmask = 3,
-			.cra_type = &crypto_ablkcipher_type,
-			.cra_init = cryp_cra_init,
-			.cra_module = THIS_MODULE,
-			.cra_u = {
-				.ablkcipher = {
-					.min_keysize = AES_MIN_KEY_SIZE,
-					.max_keysize = AES_MAX_KEY_SIZE,
-					.setkey = aes_ablkcipher_setkey,
-					.encrypt = cryp_blk_encrypt,
-					.decrypt = cryp_blk_decrypt
-				}
-			}
-		}
-	},
-	{
-		.algomode = CRYP_ALGO_AES_ECB,
-		.crypto = {
-			.cra_name = "ecb(aes)",
-			.cra_driver_name = "ecb-aes-ux500",
-			.cra_priority = 300,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-					CRYPTO_ALG_ASYNC,
-			.cra_blocksize = AES_BLOCK_SIZE,
-			.cra_ctxsize = sizeof(struct cryp_ctx),
-			.cra_alignmask = 3,
-			.cra_type = &crypto_ablkcipher_type,
-			.cra_init = cryp_cra_init,
-			.cra_module = THIS_MODULE,
-			.cra_u = {
-				.ablkcipher = {
-					.min_keysize = AES_MIN_KEY_SIZE,
-					.max_keysize = AES_MAX_KEY_SIZE,
-					.setkey = aes_ablkcipher_setkey,
-					.encrypt = cryp_blk_encrypt,
-					.decrypt = cryp_blk_decrypt,
-				}
-			}
+		.skcipher = {
+			.base.cra_name		= "ecb(aes)",
+			.base.cra_driver_name	= "ecb-aes-ux500",
+			.base.cra_priority	= 300,
+			.base.cra_flags		= CRYPTO_ALG_ASYNC,
+			.base.cra_blocksize	= AES_BLOCK_SIZE,
+			.base.cra_ctxsize	= sizeof(struct cryp_ctx),
+			.base.cra_alignmask	= 3,
+			.base.cra_module	= THIS_MODULE,
+
+			.min_keysize		= AES_MIN_KEY_SIZE,
+			.max_keysize		= AES_MAX_KEY_SIZE,
+			.setkey			= aes_skcipher_setkey,
+			.encrypt		= cryp_blk_encrypt,
+			.decrypt		= cryp_blk_decrypt,
+			.init			= cryp_init_tfm,
 		}
 	},
 	{
 		.algomode = CRYP_ALGO_AES_CBC,
-		.crypto = {
-			.cra_name = "cbc(aes)",
-			.cra_driver_name = "cbc-aes-ux500",
-			.cra_priority = 300,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-					CRYPTO_ALG_ASYNC,
-			.cra_blocksize = AES_BLOCK_SIZE,
-			.cra_ctxsize = sizeof(struct cryp_ctx),
-			.cra_alignmask = 3,
-			.cra_type = &crypto_ablkcipher_type,
-			.cra_init = cryp_cra_init,
-			.cra_module = THIS_MODULE,
-			.cra_u = {
-				.ablkcipher = {
-					.min_keysize = AES_MIN_KEY_SIZE,
-					.max_keysize = AES_MAX_KEY_SIZE,
-					.setkey = aes_ablkcipher_setkey,
-					.encrypt = cryp_blk_encrypt,
-					.decrypt = cryp_blk_decrypt,
-					.ivsize = AES_BLOCK_SIZE,
-				}
-			}
+		.skcipher = {
+			.base.cra_name		= "cbc(aes)",
+			.base.cra_driver_name	= "cbc-aes-ux500",
+			.base.cra_priority	= 300,
+			.base.cra_flags		= CRYPTO_ALG_ASYNC,
+			.base.cra_blocksize	= AES_BLOCK_SIZE,
+			.base.cra_ctxsize	= sizeof(struct cryp_ctx),
+			.base.cra_alignmask	= 3,
+			.base.cra_module	= THIS_MODULE,
+
+			.min_keysize		= AES_MIN_KEY_SIZE,
+			.max_keysize		= AES_MAX_KEY_SIZE,
+			.setkey			= aes_skcipher_setkey,
+			.encrypt		= cryp_blk_encrypt,
+			.decrypt		= cryp_blk_decrypt,
+			.init			= cryp_init_tfm,
+			.ivsize			= AES_BLOCK_SIZE,
 		}
 	},
 	{
 		.algomode = CRYP_ALGO_AES_CTR,
-		.crypto = {
-			.cra_name = "ctr(aes)",
-			.cra_driver_name = "ctr-aes-ux500",
-			.cra_priority = 300,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-						CRYPTO_ALG_ASYNC,
-			.cra_blocksize = AES_BLOCK_SIZE,
-			.cra_ctxsize = sizeof(struct cryp_ctx),
-			.cra_alignmask = 3,
-			.cra_type = &crypto_ablkcipher_type,
-			.cra_init = cryp_cra_init,
-			.cra_module = THIS_MODULE,
-			.cra_u = {
-				.ablkcipher = {
-					.min_keysize = AES_MIN_KEY_SIZE,
-					.max_keysize = AES_MAX_KEY_SIZE,
-					.setkey = aes_ablkcipher_setkey,
-					.encrypt = cryp_blk_encrypt,
-					.decrypt = cryp_blk_decrypt,
-					.ivsize = AES_BLOCK_SIZE,
-				}
-			}
+		.skcipher = {
+			.base.cra_name		= "ctr(aes)",
+			.base.cra_driver_name	= "ctr-aes-ux500",
+			.base.cra_priority	= 300,
+			.base.cra_flags		= CRYPTO_ALG_ASYNC,
+			.base.cra_blocksize	= 1,
+			.base.cra_ctxsize	= sizeof(struct cryp_ctx),
+			.base.cra_alignmask	= 3,
+			.base.cra_module	= THIS_MODULE,
+
+			.min_keysize		= AES_MIN_KEY_SIZE,
+			.max_keysize		= AES_MAX_KEY_SIZE,
+			.setkey			= aes_skcipher_setkey,
+			.encrypt		= cryp_blk_encrypt,
+			.decrypt		= cryp_blk_decrypt,
+			.init			= cryp_init_tfm,
+			.ivsize			= AES_BLOCK_SIZE,
+			.chunksize		= AES_BLOCK_SIZE,
 		}
 	},
 	{
 		.algomode = CRYP_ALGO_DES_ECB,
-		.crypto = {
-			.cra_name = "ecb(des)",
-			.cra_driver_name = "ecb-des-ux500",
-			.cra_priority = 300,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-					CRYPTO_ALG_ASYNC,
-			.cra_blocksize = DES_BLOCK_SIZE,
-			.cra_ctxsize = sizeof(struct cryp_ctx),
-			.cra_alignmask = 3,
-			.cra_type = &crypto_ablkcipher_type,
-			.cra_init = cryp_cra_init,
-			.cra_module = THIS_MODULE,
-			.cra_u = {
-				.ablkcipher = {
-					.min_keysize = DES_KEY_SIZE,
-					.max_keysize = DES_KEY_SIZE,
-					.setkey = des_ablkcipher_setkey,
-					.encrypt = cryp_blk_encrypt,
-					.decrypt = cryp_blk_decrypt,
-				}
-			}
+		.skcipher = {
+			.base.cra_name		= "ecb(des)",
+			.base.cra_driver_name	= "ecb-des-ux500",
+			.base.cra_priority	= 300,
+			.base.cra_flags		= CRYPTO_ALG_ASYNC,
+			.base.cra_blocksize	= DES_BLOCK_SIZE,
+			.base.cra_ctxsize	= sizeof(struct cryp_ctx),
+			.base.cra_alignmask	= 3,
+			.base.cra_module	= THIS_MODULE,
+
+			.min_keysize		= DES_KEY_SIZE,
+			.max_keysize		= DES_KEY_SIZE,
+			.setkey			= des_skcipher_setkey,
+			.encrypt		= cryp_blk_encrypt,
+			.decrypt		= cryp_blk_decrypt,
+			.init			= cryp_init_tfm,
 		}
 	},
 	{
 		.algomode = CRYP_ALGO_TDES_ECB,
-		.crypto = {
-			.cra_name = "ecb(des3_ede)",
-			.cra_driver_name = "ecb-des3_ede-ux500",
-			.cra_priority = 300,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-					CRYPTO_ALG_ASYNC,
-			.cra_blocksize = DES3_EDE_BLOCK_SIZE,
-			.cra_ctxsize = sizeof(struct cryp_ctx),
-			.cra_alignmask = 3,
-			.cra_type = &crypto_ablkcipher_type,
-			.cra_init = cryp_cra_init,
-			.cra_module = THIS_MODULE,
-			.cra_u = {
-				.ablkcipher = {
-					.min_keysize = DES3_EDE_KEY_SIZE,
-					.max_keysize = DES3_EDE_KEY_SIZE,
-					.setkey = des3_ablkcipher_setkey,
-					.encrypt = cryp_blk_encrypt,
-					.decrypt = cryp_blk_decrypt,
-				}
-			}
+		.skcipher = {
+			.base.cra_name		= "ecb(des3_ede)",
+			.base.cra_driver_name	= "ecb-des3_ede-ux500",
+			.base.cra_priority	= 300,
+			.base.cra_flags		= CRYPTO_ALG_ASYNC,
+			.base.cra_blocksize	= DES3_EDE_BLOCK_SIZE,
+			.base.cra_ctxsize	= sizeof(struct cryp_ctx),
+			.base.cra_alignmask	= 3,
+			.base.cra_module	= THIS_MODULE,
+
+			.min_keysize		= DES3_EDE_KEY_SIZE,
+			.max_keysize		= DES3_EDE_KEY_SIZE,
+			.setkey			= des3_skcipher_setkey,
+			.encrypt		= cryp_blk_encrypt,
+			.decrypt		= cryp_blk_decrypt,
+			.init			= cryp_init_tfm,
 		}
 	},
 	{
 		.algomode = CRYP_ALGO_DES_CBC,
-		.crypto = {
-			.cra_name = "cbc(des)",
-			.cra_driver_name = "cbc-des-ux500",
-			.cra_priority = 300,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-					CRYPTO_ALG_ASYNC,
-			.cra_blocksize = DES_BLOCK_SIZE,
-			.cra_ctxsize = sizeof(struct cryp_ctx),
-			.cra_alignmask = 3,
-			.cra_type = &crypto_ablkcipher_type,
-			.cra_init = cryp_cra_init,
-			.cra_module = THIS_MODULE,
-			.cra_u = {
-				.ablkcipher = {
-					.min_keysize = DES_KEY_SIZE,
-					.max_keysize = DES_KEY_SIZE,
-					.setkey = des_ablkcipher_setkey,
-					.encrypt = cryp_blk_encrypt,
-					.decrypt = cryp_blk_decrypt,
-				}
-			}
+		.skcipher = {
+			.base.cra_name		= "cbc(des)",
+			.base.cra_driver_name	= "cbc-des-ux500",
+			.base.cra_priority	= 300,
+			.base.cra_flags		= CRYPTO_ALG_ASYNC,
+			.base.cra_blocksize	= DES_BLOCK_SIZE,
+			.base.cra_ctxsize	= sizeof(struct cryp_ctx),
+			.base.cra_alignmask	= 3,
+			.base.cra_module	= THIS_MODULE,
+
+			.min_keysize		= DES_KEY_SIZE,
+			.max_keysize		= DES_KEY_SIZE,
+			.setkey			= des_skcipher_setkey,
+			.encrypt		= cryp_blk_encrypt,
+			.decrypt		= cryp_blk_decrypt,
+			.ivsize			= DES_BLOCK_SIZE,
+			.init			= cryp_init_tfm,
 		}
 	},
 	{
 		.algomode = CRYP_ALGO_TDES_CBC,
-		.crypto = {
-			.cra_name = "cbc(des3_ede)",
-			.cra_driver_name = "cbc-des3_ede-ux500",
-			.cra_priority = 300,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-					CRYPTO_ALG_ASYNC,
-			.cra_blocksize = DES3_EDE_BLOCK_SIZE,
-			.cra_ctxsize = sizeof(struct cryp_ctx),
-			.cra_alignmask = 3,
-			.cra_type = &crypto_ablkcipher_type,
-			.cra_init = cryp_cra_init,
-			.cra_module = THIS_MODULE,
-			.cra_u = {
-				.ablkcipher = {
-					.min_keysize = DES3_EDE_KEY_SIZE,
-					.max_keysize = DES3_EDE_KEY_SIZE,
-					.setkey = des3_ablkcipher_setkey,
-					.encrypt = cryp_blk_encrypt,
-					.decrypt = cryp_blk_decrypt,
-					.ivsize = DES3_EDE_BLOCK_SIZE,
-				}
-			}
+		.skcipher = {
+			.base.cra_name		= "cbc(des3_ede)",
+			.base.cra_driver_name	= "cbc-des3_ede-ux500",
+			.base.cra_priority	= 300,
+			.base.cra_flags		= CRYPTO_ALG_ASYNC,
+			.base.cra_blocksize	= DES3_EDE_BLOCK_SIZE,
+			.base.cra_ctxsize	= sizeof(struct cryp_ctx),
+			.base.cra_alignmask	= 3,
+			.base.cra_module	= THIS_MODULE,
+
+			.min_keysize		= DES3_EDE_KEY_SIZE,
+			.max_keysize		= DES3_EDE_KEY_SIZE,
+			.setkey			= des3_skcipher_setkey,
+			.encrypt		= cryp_blk_encrypt,
+			.decrypt		= cryp_blk_decrypt,
+			.ivsize			= DES3_EDE_BLOCK_SIZE,
+			.init			= cryp_init_tfm,
 		}
 	}
 };
@@ -1293,18 +1234,18 @@ static int cryp_algs_register_all(void)
 	pr_debug("[%s]", __func__);
 
 	for (i = 0; i < ARRAY_SIZE(cryp_algs); i++) {
-		ret = crypto_register_alg(&cryp_algs[i].crypto);
+		ret = crypto_register_skcipher(&cryp_algs[i].skcipher);
 		if (ret) {
 			count = i;
 			pr_err("[%s] alg registration failed",
-					cryp_algs[i].crypto.cra_driver_name);
+					cryp_algs[i].skcipher.base.cra_driver_name);
 			goto unreg;
 		}
 	}
 	return 0;
 unreg:
 	for (i = 0; i < count; i++)
-		crypto_unregister_alg(&cryp_algs[i].crypto);
+		crypto_unregister_skcipher(&cryp_algs[i].skcipher);
 	return ret;
 }
 
@@ -1318,7 +1259,7 @@ static void cryp_algs_unregister_all(void)
 	pr_debug(DEV_DBG_NAME " [%s]", __func__);
 
 	for (i = 0; i < ARRAY_SIZE(cryp_algs); i++)
-		crypto_unregister_alg(&cryp_algs[i].crypto);
+		crypto_unregister_skcipher(&cryp_algs[i].skcipher);
 }
 
 static int ux500_cryp_probe(struct platform_device *pdev)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
