Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62015E3449
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 15:33:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rwUPOxceLV0gSrtk/987SvNKR2WQYWEi0VRz1RzCk2U=; b=PTQL+JMOTlQOV1
	+hCoTmfCTtuFkNzr6RuCjrYqSsXgWWWzyDcH4AauNGThzNXsogTDaBXSvuDDkUKNxU95fTUfNB8kQ
	AMjyODfP82Exj+zwfznbBkJxry0FGBNJf2A1R20ksju3l0WfPUltgZ5hogbGaO8cKjIU9r+v+acEG
	YHLr6VuLcoH1uZtbg2fpeOB2jYtdAgMAqyuN2tOtUN4RFKb9YUxRvmxkM5E2PPhhhidCG1ab08naU
	eztwq9QegvIOiHhs+yxj+z1z1dR5JqrH7+wPmW+8wdOX5s45FooDXmNUZONa/FUtQfq5QHaGJcp3n
	600xRZtVdnmreJvkt3Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNdFO-0001rw-E4; Thu, 24 Oct 2019 13:33:50 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNd6K-0000ou-6N
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 13:24:47 +0000
Received: by mail-wm1-x343.google.com with SMTP id c22so2605108wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 06:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g2guTtZQNpFmVRb5THlXvx+Ph/1cQAsy90V4CVYSsag=;
 b=nCeNNwhnfQKyLswrzwpba3mA3U6yVfyGX6WdvSfLEHcHYWXazli+FyVa05jZzJYyLO
 6JWe+MPWL5gBTM4EgtH43iWvkXaiKfVQmTgGBKdmKmF5tCiEEF/2h3XhidOTfsN5yjzX
 rNyBr8jMlYcudlTrMfqZZUZpXHIMa1beoisjiXVY/cAmVhv/JYN33htFS9pgQM8AzHPU
 2pgCAfdkdEHZyVFwNVyScU1AbE/r34htkn2QkSkcOpxT4iHu3oQGKD34yLIcnH5ByegS
 3v73E5ryqSJTeHa0aCE4zrGhT/rymB+yC9xcu46TnBUjU0zDfOPiSHZ6oAcAVxE7Osiy
 YtVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g2guTtZQNpFmVRb5THlXvx+Ph/1cQAsy90V4CVYSsag=;
 b=g1yKdciZtRIXrponQW4vGuv9QnIPHLcjEjIq6UgO8+zYvGsqfiTI6RZ1W//wcZFzZL
 018d940ihNbhxKC4eg6DMJasIVLzDIv9vSboqvxSVujackRxBez0Fn93Au3S2Sf8EoYe
 kWD2QEzIwtyYCYc4gGmwud8pfFU6M5xPZ8pvt8H6Yy/V67md+vCGL94VAZg4Ce9+24VC
 c0yxMaeLDmQTmPgT4gvT4pkHOt3cgi9ApjxtotXqEVwz/fHk9LXTAa5QGj2ieBHLW/6I
 0V6LM2rkz0A0Y1Tjpvx3BfqGKstE1tXz2P0eUiiG5wPkGrv8lZjWDkdJhzZJjqS9M9Xi
 rK5Q==
X-Gm-Message-State: APjAAAUHp/XzhgxeAR88AjLfhv4QYmB5TBdU/9mE5we84mcMx08IYuqp
 pwt9B92qocp24QNCUvT1O0Kp6A==
X-Google-Smtp-Source: APXvYqxyS3DWGdWwGtlflO2EVB07GqBuSHK5MeOC2wl+H0T9ELOhLvu+VCdoiM1IVrHi8ReqTc3YkQ==
X-Received: by 2002:a7b:c4cf:: with SMTP id g15mr4622410wmk.122.1571923466064; 
 Thu, 24 Oct 2019 06:24:26 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id e3sm2346310wme.36.2019.10.24.06.24.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 06:24:25 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 23/27] crypto: rockchip - switch to skcipher API
Date: Thu, 24 Oct 2019 15:23:41 +0200
Message-Id: <20191024132345.5236-24-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
References: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_062428_524009_BDF799C0 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Heiko Stuebner <heiko@sntech.de>, Eric Biggers <ebiggers@google.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Herbert Xu <herbert@gondor.apana.org.au>
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

Cc: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/crypto/rockchip/Makefile                   |   2 +-
 drivers/crypto/rockchip/rk3288_crypto.c            |   8 +-
 drivers/crypto/rockchip/rk3288_crypto.h            |   3 +-
 drivers/crypto/rockchip/rk3288_crypto_ablkcipher.c | 556 --------------------
 drivers/crypto/rockchip/rk3288_crypto_skcipher.c   | 538 +++++++++++++++++++
 5 files changed, 545 insertions(+), 562 deletions(-)

diff --git a/drivers/crypto/rockchip/Makefile b/drivers/crypto/rockchip/Makefile
index 6e23764e6c8a..785277aca71e 100644
--- a/drivers/crypto/rockchip/Makefile
+++ b/drivers/crypto/rockchip/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_CRYPTO_DEV_ROCKCHIP) += rk_crypto.o
 rk_crypto-objs := rk3288_crypto.o \
-		  rk3288_crypto_ablkcipher.o \
+		  rk3288_crypto_skcipher.o \
 		  rk3288_crypto_ahash.o
diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index e5714ef24bf2..f385587f99af 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -264,8 +264,8 @@ static int rk_crypto_register(struct rk_crypto_info *crypto_info)
 	for (i = 0; i < ARRAY_SIZE(rk_cipher_algs); i++) {
 		rk_cipher_algs[i]->dev = crypto_info;
 		if (rk_cipher_algs[i]->type == ALG_TYPE_CIPHER)
-			err = crypto_register_alg(
-					&rk_cipher_algs[i]->alg.crypto);
+			err = crypto_register_skcipher(
+					&rk_cipher_algs[i]->alg.skcipher);
 		else
 			err = crypto_register_ahash(
 					&rk_cipher_algs[i]->alg.hash);
@@ -277,7 +277,7 @@ static int rk_crypto_register(struct rk_crypto_info *crypto_info)
 err_cipher_algs:
 	for (k = 0; k < i; k++) {
 		if (rk_cipher_algs[i]->type == ALG_TYPE_CIPHER)
-			crypto_unregister_alg(&rk_cipher_algs[k]->alg.crypto);
+			crypto_unregister_skcipher(&rk_cipher_algs[k]->alg.skcipher);
 		else
 			crypto_unregister_ahash(&rk_cipher_algs[i]->alg.hash);
 	}
@@ -290,7 +290,7 @@ static void rk_crypto_unregister(void)
 
 	for (i = 0; i < ARRAY_SIZE(rk_cipher_algs); i++) {
 		if (rk_cipher_algs[i]->type == ALG_TYPE_CIPHER)
-			crypto_unregister_alg(&rk_cipher_algs[i]->alg.crypto);
+			crypto_unregister_skcipher(&rk_cipher_algs[i]->alg.skcipher);
 		else
 			crypto_unregister_ahash(&rk_cipher_algs[i]->alg.hash);
 	}
diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index 18e2b3f29336..2b49c677afdb 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -8,6 +8,7 @@
 #include <linux/interrupt.h>
 #include <linux/delay.h>
 #include <crypto/internal/hash.h>
+#include <crypto/internal/skcipher.h>
 
 #include <crypto/md5.h>
 #include <crypto/sha.h>
@@ -256,7 +257,7 @@ enum alg_type {
 struct rk_crypto_tmp {
 	struct rk_crypto_info		*dev;
 	union {
-		struct crypto_alg	crypto;
+		struct skcipher_alg	skcipher;
 		struct ahash_alg	hash;
 	} alg;
 	enum alg_type			type;
diff --git a/drivers/crypto/rockchip/rk3288_crypto_ablkcipher.c b/drivers/crypto/rockchip/rk3288_crypto_ablkcipher.c
deleted file mode 100644
index d0f4b2d18059..000000000000
--- a/drivers/crypto/rockchip/rk3288_crypto_ablkcipher.c
+++ /dev/null
@@ -1,556 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Crypto acceleration support for Rockchip RK3288
- *
- * Copyright (c) 2015, Fuzhou Rockchip Electronics Co., Ltd
- *
- * Author: Zain Wang <zain.wang@rock-chips.com>
- *
- * Some ideas are from marvell-cesa.c and s5p-sss.c driver.
- */
-#include "rk3288_crypto.h"
-
-#define RK_CRYPTO_DEC			BIT(0)
-
-static void rk_crypto_complete(struct crypto_async_request *base, int err)
-{
-	if (base->complete)
-		base->complete(base, err);
-}
-
-static int rk_handle_req(struct rk_crypto_info *dev,
-			 struct ablkcipher_request *req)
-{
-	if (!IS_ALIGNED(req->nbytes, dev->align_size))
-		return -EINVAL;
-	else
-		return dev->enqueue(dev, &req->base);
-}
-
-static int rk_aes_setkey(struct crypto_ablkcipher *cipher,
-			 const u8 *key, unsigned int keylen)
-{
-	struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
-	struct rk_cipher_ctx *ctx = crypto_tfm_ctx(tfm);
-
-	if (keylen != AES_KEYSIZE_128 && keylen != AES_KEYSIZE_192 &&
-	    keylen != AES_KEYSIZE_256) {
-		crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
-		return -EINVAL;
-	}
-	ctx->keylen = keylen;
-	memcpy_toio(ctx->dev->reg + RK_CRYPTO_AES_KEY_0, key, keylen);
-	return 0;
-}
-
-static int rk_des_setkey(struct crypto_ablkcipher *cipher,
-			 const u8 *key, unsigned int keylen)
-{
-	struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(cipher);
-	int err;
-
-	err = verify_ablkcipher_des_key(cipher, key);
-	if (err)
-		return err;
-
-	ctx->keylen = keylen;
-	memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, key, keylen);
-	return 0;
-}
-
-static int rk_tdes_setkey(struct crypto_ablkcipher *cipher,
-			  const u8 *key, unsigned int keylen)
-{
-	struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(cipher);
-	int err;
-
-	err = verify_ablkcipher_des3_key(cipher, key);
-	if (err)
-		return err;
-
-	ctx->keylen = keylen;
-	memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, key, keylen);
-	return 0;
-}
-
-static int rk_aes_ecb_encrypt(struct ablkcipher_request *req)
-{
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
-	struct rk_crypto_info *dev = ctx->dev;
-
-	ctx->mode = RK_CRYPTO_AES_ECB_MODE;
-	return rk_handle_req(dev, req);
-}
-
-static int rk_aes_ecb_decrypt(struct ablkcipher_request *req)
-{
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
-	struct rk_crypto_info *dev = ctx->dev;
-
-	ctx->mode = RK_CRYPTO_AES_ECB_MODE | RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
-}
-
-static int rk_aes_cbc_encrypt(struct ablkcipher_request *req)
-{
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
-	struct rk_crypto_info *dev = ctx->dev;
-
-	ctx->mode = RK_CRYPTO_AES_CBC_MODE;
-	return rk_handle_req(dev, req);
-}
-
-static int rk_aes_cbc_decrypt(struct ablkcipher_request *req)
-{
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
-	struct rk_crypto_info *dev = ctx->dev;
-
-	ctx->mode = RK_CRYPTO_AES_CBC_MODE | RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
-}
-
-static int rk_des_ecb_encrypt(struct ablkcipher_request *req)
-{
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
-	struct rk_crypto_info *dev = ctx->dev;
-
-	ctx->mode = 0;
-	return rk_handle_req(dev, req);
-}
-
-static int rk_des_ecb_decrypt(struct ablkcipher_request *req)
-{
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
-	struct rk_crypto_info *dev = ctx->dev;
-
-	ctx->mode = RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
-}
-
-static int rk_des_cbc_encrypt(struct ablkcipher_request *req)
-{
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
-	struct rk_crypto_info *dev = ctx->dev;
-
-	ctx->mode = RK_CRYPTO_TDES_CHAINMODE_CBC;
-	return rk_handle_req(dev, req);
-}
-
-static int rk_des_cbc_decrypt(struct ablkcipher_request *req)
-{
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
-	struct rk_crypto_info *dev = ctx->dev;
-
-	ctx->mode = RK_CRYPTO_TDES_CHAINMODE_CBC | RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
-}
-
-static int rk_des3_ede_ecb_encrypt(struct ablkcipher_request *req)
-{
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
-	struct rk_crypto_info *dev = ctx->dev;
-
-	ctx->mode = RK_CRYPTO_TDES_SELECT;
-	return rk_handle_req(dev, req);
-}
-
-static int rk_des3_ede_ecb_decrypt(struct ablkcipher_request *req)
-{
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
-	struct rk_crypto_info *dev = ctx->dev;
-
-	ctx->mode = RK_CRYPTO_TDES_SELECT | RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
-}
-
-static int rk_des3_ede_cbc_encrypt(struct ablkcipher_request *req)
-{
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
-	struct rk_crypto_info *dev = ctx->dev;
-
-	ctx->mode = RK_CRYPTO_TDES_SELECT | RK_CRYPTO_TDES_CHAINMODE_CBC;
-	return rk_handle_req(dev, req);
-}
-
-static int rk_des3_ede_cbc_decrypt(struct ablkcipher_request *req)
-{
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
-	struct rk_crypto_info *dev = ctx->dev;
-
-	ctx->mode = RK_CRYPTO_TDES_SELECT | RK_CRYPTO_TDES_CHAINMODE_CBC |
-		    RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
-}
-
-static void rk_ablk_hw_init(struct rk_crypto_info *dev)
-{
-	struct ablkcipher_request *req =
-		ablkcipher_request_cast(dev->async_req);
-	struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(req);
-	struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
-	struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(cipher);
-	u32 ivsize, block, conf_reg = 0;
-
-	block = crypto_tfm_alg_blocksize(tfm);
-	ivsize = crypto_ablkcipher_ivsize(cipher);
-
-	if (block == DES_BLOCK_SIZE) {
-		ctx->mode |= RK_CRYPTO_TDES_FIFO_MODE |
-			     RK_CRYPTO_TDES_BYTESWAP_KEY |
-			     RK_CRYPTO_TDES_BYTESWAP_IV;
-		CRYPTO_WRITE(dev, RK_CRYPTO_TDES_CTRL, ctx->mode);
-		memcpy_toio(dev->reg + RK_CRYPTO_TDES_IV_0, req->info, ivsize);
-		conf_reg = RK_CRYPTO_DESSEL;
-	} else {
-		ctx->mode |= RK_CRYPTO_AES_FIFO_MODE |
-			     RK_CRYPTO_AES_KEY_CHANGE |
-			     RK_CRYPTO_AES_BYTESWAP_KEY |
-			     RK_CRYPTO_AES_BYTESWAP_IV;
-		if (ctx->keylen == AES_KEYSIZE_192)
-			ctx->mode |= RK_CRYPTO_AES_192BIT_key;
-		else if (ctx->keylen == AES_KEYSIZE_256)
-			ctx->mode |= RK_CRYPTO_AES_256BIT_key;
-		CRYPTO_WRITE(dev, RK_CRYPTO_AES_CTRL, ctx->mode);
-		memcpy_toio(dev->reg + RK_CRYPTO_AES_IV_0, req->info, ivsize);
-	}
-	conf_reg |= RK_CRYPTO_BYTESWAP_BTFIFO |
-		    RK_CRYPTO_BYTESWAP_BRFIFO;
-	CRYPTO_WRITE(dev, RK_CRYPTO_CONF, conf_reg);
-	CRYPTO_WRITE(dev, RK_CRYPTO_INTENA,
-		     RK_CRYPTO_BCDMA_ERR_ENA | RK_CRYPTO_BCDMA_DONE_ENA);
-}
-
-static void crypto_dma_start(struct rk_crypto_info *dev)
-{
-	CRYPTO_WRITE(dev, RK_CRYPTO_BRDMAS, dev->addr_in);
-	CRYPTO_WRITE(dev, RK_CRYPTO_BRDMAL, dev->count / 4);
-	CRYPTO_WRITE(dev, RK_CRYPTO_BTDMAS, dev->addr_out);
-	CRYPTO_WRITE(dev, RK_CRYPTO_CTRL, RK_CRYPTO_BLOCK_START |
-		     _SBF(RK_CRYPTO_BLOCK_START, 16));
-}
-
-static int rk_set_data_start(struct rk_crypto_info *dev)
-{
-	int err;
-	struct ablkcipher_request *req =
-		ablkcipher_request_cast(dev->async_req);
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
-	u32 ivsize = crypto_ablkcipher_ivsize(tfm);
-	u8 *src_last_blk = page_address(sg_page(dev->sg_src)) +
-		dev->sg_src->offset + dev->sg_src->length - ivsize;
-
-	/* Store the iv that need to be updated in chain mode.
-	 * And update the IV buffer to contain the next IV for decryption mode.
-	 */
-	if (ctx->mode & RK_CRYPTO_DEC) {
-		memcpy(ctx->iv, src_last_blk, ivsize);
-		sg_pcopy_to_buffer(dev->first, dev->src_nents, req->info,
-				   ivsize, dev->total - ivsize);
-	}
-
-	err = dev->load_data(dev, dev->sg_src, dev->sg_dst);
-	if (!err)
-		crypto_dma_start(dev);
-	return err;
-}
-
-static int rk_ablk_start(struct rk_crypto_info *dev)
-{
-	struct ablkcipher_request *req =
-		ablkcipher_request_cast(dev->async_req);
-	unsigned long flags;
-	int err = 0;
-
-	dev->left_bytes = req->nbytes;
-	dev->total = req->nbytes;
-	dev->sg_src = req->src;
-	dev->first = req->src;
-	dev->src_nents = sg_nents(req->src);
-	dev->sg_dst = req->dst;
-	dev->dst_nents = sg_nents(req->dst);
-	dev->aligned = 1;
-
-	spin_lock_irqsave(&dev->lock, flags);
-	rk_ablk_hw_init(dev);
-	err = rk_set_data_start(dev);
-	spin_unlock_irqrestore(&dev->lock, flags);
-	return err;
-}
-
-static void rk_iv_copyback(struct rk_crypto_info *dev)
-{
-	struct ablkcipher_request *req =
-		ablkcipher_request_cast(dev->async_req);
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
-	u32 ivsize = crypto_ablkcipher_ivsize(tfm);
-
-	/* Update the IV buffer to contain the next IV for encryption mode. */
-	if (!(ctx->mode & RK_CRYPTO_DEC)) {
-		if (dev->aligned) {
-			memcpy(req->info, sg_virt(dev->sg_dst) +
-				dev->sg_dst->length - ivsize, ivsize);
-		} else {
-			memcpy(req->info, dev->addr_vir +
-				dev->count - ivsize, ivsize);
-		}
-	}
-}
-
-static void rk_update_iv(struct rk_crypto_info *dev)
-{
-	struct ablkcipher_request *req =
-		ablkcipher_request_cast(dev->async_req);
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
-	u32 ivsize = crypto_ablkcipher_ivsize(tfm);
-	u8 *new_iv = NULL;
-
-	if (ctx->mode & RK_CRYPTO_DEC) {
-		new_iv = ctx->iv;
-	} else {
-		new_iv = page_address(sg_page(dev->sg_dst)) +
-			 dev->sg_dst->offset + dev->sg_dst->length - ivsize;
-	}
-
-	if (ivsize == DES_BLOCK_SIZE)
-		memcpy_toio(dev->reg + RK_CRYPTO_TDES_IV_0, new_iv, ivsize);
-	else if (ivsize == AES_BLOCK_SIZE)
-		memcpy_toio(dev->reg + RK_CRYPTO_AES_IV_0, new_iv, ivsize);
-}
-
-/* return:
- *	true	some err was occurred
- *	fault	no err, continue
- */
-static int rk_ablk_rx(struct rk_crypto_info *dev)
-{
-	int err = 0;
-	struct ablkcipher_request *req =
-		ablkcipher_request_cast(dev->async_req);
-
-	dev->unload_data(dev);
-	if (!dev->aligned) {
-		if (!sg_pcopy_from_buffer(req->dst, dev->dst_nents,
-					  dev->addr_vir, dev->count,
-					  dev->total - dev->left_bytes -
-					  dev->count)) {
-			err = -EINVAL;
-			goto out_rx;
-		}
-	}
-	if (dev->left_bytes) {
-		rk_update_iv(dev);
-		if (dev->aligned) {
-			if (sg_is_last(dev->sg_src)) {
-				dev_err(dev->dev, "[%s:%d] Lack of data\n",
-					__func__, __LINE__);
-				err = -ENOMEM;
-				goto out_rx;
-			}
-			dev->sg_src = sg_next(dev->sg_src);
-			dev->sg_dst = sg_next(dev->sg_dst);
-		}
-		err = rk_set_data_start(dev);
-	} else {
-		rk_iv_copyback(dev);
-		/* here show the calculation is over without any err */
-		dev->complete(dev->async_req, 0);
-		tasklet_schedule(&dev->queue_task);
-	}
-out_rx:
-	return err;
-}
-
-static int rk_ablk_cra_init(struct crypto_tfm *tfm)
-{
-	struct rk_cipher_ctx *ctx = crypto_tfm_ctx(tfm);
-	struct crypto_alg *alg = tfm->__crt_alg;
-	struct rk_crypto_tmp *algt;
-
-	algt = container_of(alg, struct rk_crypto_tmp, alg.crypto);
-
-	ctx->dev = algt->dev;
-	ctx->dev->align_size = crypto_tfm_alg_alignmask(tfm) + 1;
-	ctx->dev->start = rk_ablk_start;
-	ctx->dev->update = rk_ablk_rx;
-	ctx->dev->complete = rk_crypto_complete;
-	ctx->dev->addr_vir = (char *)__get_free_page(GFP_KERNEL);
-
-	return ctx->dev->addr_vir ? ctx->dev->enable_clk(ctx->dev) : -ENOMEM;
-}
-
-static void rk_ablk_cra_exit(struct crypto_tfm *tfm)
-{
-	struct rk_cipher_ctx *ctx = crypto_tfm_ctx(tfm);
-
-	free_page((unsigned long)ctx->dev->addr_vir);
-	ctx->dev->disable_clk(ctx->dev);
-}
-
-struct rk_crypto_tmp rk_ecb_aes_alg = {
-	.type = ALG_TYPE_CIPHER,
-	.alg.crypto = {
-		.cra_name		= "ecb(aes)",
-		.cra_driver_name	= "ecb-aes-rk",
-		.cra_priority		= 300,
-		.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-					  CRYPTO_ALG_ASYNC,
-		.cra_blocksize		= AES_BLOCK_SIZE,
-		.cra_ctxsize		= sizeof(struct rk_cipher_ctx),
-		.cra_alignmask		= 0x0f,
-		.cra_type		= &crypto_ablkcipher_type,
-		.cra_module		= THIS_MODULE,
-		.cra_init		= rk_ablk_cra_init,
-		.cra_exit		= rk_ablk_cra_exit,
-		.cra_u.ablkcipher	= {
-			.min_keysize	= AES_MIN_KEY_SIZE,
-			.max_keysize	= AES_MAX_KEY_SIZE,
-			.setkey		= rk_aes_setkey,
-			.encrypt	= rk_aes_ecb_encrypt,
-			.decrypt	= rk_aes_ecb_decrypt,
-		}
-	}
-};
-
-struct rk_crypto_tmp rk_cbc_aes_alg = {
-	.type = ALG_TYPE_CIPHER,
-	.alg.crypto = {
-		.cra_name		= "cbc(aes)",
-		.cra_driver_name	= "cbc-aes-rk",
-		.cra_priority		= 300,
-		.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-					  CRYPTO_ALG_ASYNC,
-		.cra_blocksize		= AES_BLOCK_SIZE,
-		.cra_ctxsize		= sizeof(struct rk_cipher_ctx),
-		.cra_alignmask		= 0x0f,
-		.cra_type		= &crypto_ablkcipher_type,
-		.cra_module		= THIS_MODULE,
-		.cra_init		= rk_ablk_cra_init,
-		.cra_exit		= rk_ablk_cra_exit,
-		.cra_u.ablkcipher	= {
-			.min_keysize	= AES_MIN_KEY_SIZE,
-			.max_keysize	= AES_MAX_KEY_SIZE,
-			.ivsize		= AES_BLOCK_SIZE,
-			.setkey		= rk_aes_setkey,
-			.encrypt	= rk_aes_cbc_encrypt,
-			.decrypt	= rk_aes_cbc_decrypt,
-		}
-	}
-};
-
-struct rk_crypto_tmp rk_ecb_des_alg = {
-	.type = ALG_TYPE_CIPHER,
-	.alg.crypto = {
-		.cra_name		= "ecb(des)",
-		.cra_driver_name	= "ecb-des-rk",
-		.cra_priority		= 300,
-		.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-					  CRYPTO_ALG_ASYNC,
-		.cra_blocksize		= DES_BLOCK_SIZE,
-		.cra_ctxsize		= sizeof(struct rk_cipher_ctx),
-		.cra_alignmask		= 0x07,
-		.cra_type		= &crypto_ablkcipher_type,
-		.cra_module		= THIS_MODULE,
-		.cra_init		= rk_ablk_cra_init,
-		.cra_exit		= rk_ablk_cra_exit,
-		.cra_u.ablkcipher	= {
-			.min_keysize	= DES_KEY_SIZE,
-			.max_keysize	= DES_KEY_SIZE,
-			.setkey		= rk_des_setkey,
-			.encrypt	= rk_des_ecb_encrypt,
-			.decrypt	= rk_des_ecb_decrypt,
-		}
-	}
-};
-
-struct rk_crypto_tmp rk_cbc_des_alg = {
-	.type = ALG_TYPE_CIPHER,
-	.alg.crypto = {
-		.cra_name		= "cbc(des)",
-		.cra_driver_name	= "cbc-des-rk",
-		.cra_priority		= 300,
-		.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-					  CRYPTO_ALG_ASYNC,
-		.cra_blocksize		= DES_BLOCK_SIZE,
-		.cra_ctxsize		= sizeof(struct rk_cipher_ctx),
-		.cra_alignmask		= 0x07,
-		.cra_type		= &crypto_ablkcipher_type,
-		.cra_module		= THIS_MODULE,
-		.cra_init		= rk_ablk_cra_init,
-		.cra_exit		= rk_ablk_cra_exit,
-		.cra_u.ablkcipher	= {
-			.min_keysize	= DES_KEY_SIZE,
-			.max_keysize	= DES_KEY_SIZE,
-			.ivsize		= DES_BLOCK_SIZE,
-			.setkey		= rk_des_setkey,
-			.encrypt	= rk_des_cbc_encrypt,
-			.decrypt	= rk_des_cbc_decrypt,
-		}
-	}
-};
-
-struct rk_crypto_tmp rk_ecb_des3_ede_alg = {
-	.type = ALG_TYPE_CIPHER,
-	.alg.crypto = {
-		.cra_name		= "ecb(des3_ede)",
-		.cra_driver_name	= "ecb-des3-ede-rk",
-		.cra_priority		= 300,
-		.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-					  CRYPTO_ALG_ASYNC,
-		.cra_blocksize		= DES_BLOCK_SIZE,
-		.cra_ctxsize		= sizeof(struct rk_cipher_ctx),
-		.cra_alignmask		= 0x07,
-		.cra_type		= &crypto_ablkcipher_type,
-		.cra_module		= THIS_MODULE,
-		.cra_init		= rk_ablk_cra_init,
-		.cra_exit		= rk_ablk_cra_exit,
-		.cra_u.ablkcipher	= {
-			.min_keysize	= DES3_EDE_KEY_SIZE,
-			.max_keysize	= DES3_EDE_KEY_SIZE,
-			.ivsize		= DES_BLOCK_SIZE,
-			.setkey		= rk_tdes_setkey,
-			.encrypt	= rk_des3_ede_ecb_encrypt,
-			.decrypt	= rk_des3_ede_ecb_decrypt,
-		}
-	}
-};
-
-struct rk_crypto_tmp rk_cbc_des3_ede_alg = {
-	.type = ALG_TYPE_CIPHER,
-	.alg.crypto = {
-		.cra_name		= "cbc(des3_ede)",
-		.cra_driver_name	= "cbc-des3-ede-rk",
-		.cra_priority		= 300,
-		.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-					  CRYPTO_ALG_ASYNC,
-		.cra_blocksize		= DES_BLOCK_SIZE,
-		.cra_ctxsize		= sizeof(struct rk_cipher_ctx),
-		.cra_alignmask		= 0x07,
-		.cra_type		= &crypto_ablkcipher_type,
-		.cra_module		= THIS_MODULE,
-		.cra_init		= rk_ablk_cra_init,
-		.cra_exit		= rk_ablk_cra_exit,
-		.cra_u.ablkcipher	= {
-			.min_keysize	= DES3_EDE_KEY_SIZE,
-			.max_keysize	= DES3_EDE_KEY_SIZE,
-			.ivsize		= DES_BLOCK_SIZE,
-			.setkey		= rk_tdes_setkey,
-			.encrypt	= rk_des3_ede_cbc_encrypt,
-			.decrypt	= rk_des3_ede_cbc_decrypt,
-		}
-	}
-};
diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
new file mode 100644
index 000000000000..ca4de4ddfe1f
--- /dev/null
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -0,0 +1,538 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Crypto acceleration support for Rockchip RK3288
+ *
+ * Copyright (c) 2015, Fuzhou Rockchip Electronics Co., Ltd
+ *
+ * Author: Zain Wang <zain.wang@rock-chips.com>
+ *
+ * Some ideas are from marvell-cesa.c and s5p-sss.c driver.
+ */
+#include "rk3288_crypto.h"
+
+#define RK_CRYPTO_DEC			BIT(0)
+
+static void rk_crypto_complete(struct crypto_async_request *base, int err)
+{
+	if (base->complete)
+		base->complete(base, err);
+}
+
+static int rk_handle_req(struct rk_crypto_info *dev,
+			 struct skcipher_request *req)
+{
+	if (!IS_ALIGNED(req->cryptlen, dev->align_size))
+		return -EINVAL;
+	else
+		return dev->enqueue(dev, &req->base);
+}
+
+static int rk_aes_setkey(struct crypto_skcipher *cipher,
+			 const u8 *key, unsigned int keylen)
+{
+	struct crypto_tfm *tfm = crypto_skcipher_tfm(cipher);
+	struct rk_cipher_ctx *ctx = crypto_tfm_ctx(tfm);
+
+	if (keylen != AES_KEYSIZE_128 && keylen != AES_KEYSIZE_192 &&
+	    keylen != AES_KEYSIZE_256) {
+		crypto_skcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
+		return -EINVAL;
+	}
+	ctx->keylen = keylen;
+	memcpy_toio(ctx->dev->reg + RK_CRYPTO_AES_KEY_0, key, keylen);
+	return 0;
+}
+
+static int rk_des_setkey(struct crypto_skcipher *cipher,
+			 const u8 *key, unsigned int keylen)
+{
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(cipher);
+	int err;
+
+	err = verify_skcipher_des_key(cipher, key);
+	if (err)
+		return err;
+
+	ctx->keylen = keylen;
+	memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, key, keylen);
+	return 0;
+}
+
+static int rk_tdes_setkey(struct crypto_skcipher *cipher,
+			  const u8 *key, unsigned int keylen)
+{
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(cipher);
+	int err;
+
+	err = verify_skcipher_des3_key(cipher, key);
+	if (err)
+		return err;
+
+	ctx->keylen = keylen;
+	memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, key, keylen);
+	return 0;
+}
+
+static int rk_aes_ecb_encrypt(struct skcipher_request *req)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
+	struct rk_crypto_info *dev = ctx->dev;
+
+	ctx->mode = RK_CRYPTO_AES_ECB_MODE;
+	return rk_handle_req(dev, req);
+}
+
+static int rk_aes_ecb_decrypt(struct skcipher_request *req)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
+	struct rk_crypto_info *dev = ctx->dev;
+
+	ctx->mode = RK_CRYPTO_AES_ECB_MODE | RK_CRYPTO_DEC;
+	return rk_handle_req(dev, req);
+}
+
+static int rk_aes_cbc_encrypt(struct skcipher_request *req)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
+	struct rk_crypto_info *dev = ctx->dev;
+
+	ctx->mode = RK_CRYPTO_AES_CBC_MODE;
+	return rk_handle_req(dev, req);
+}
+
+static int rk_aes_cbc_decrypt(struct skcipher_request *req)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
+	struct rk_crypto_info *dev = ctx->dev;
+
+	ctx->mode = RK_CRYPTO_AES_CBC_MODE | RK_CRYPTO_DEC;
+	return rk_handle_req(dev, req);
+}
+
+static int rk_des_ecb_encrypt(struct skcipher_request *req)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
+	struct rk_crypto_info *dev = ctx->dev;
+
+	ctx->mode = 0;
+	return rk_handle_req(dev, req);
+}
+
+static int rk_des_ecb_decrypt(struct skcipher_request *req)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
+	struct rk_crypto_info *dev = ctx->dev;
+
+	ctx->mode = RK_CRYPTO_DEC;
+	return rk_handle_req(dev, req);
+}
+
+static int rk_des_cbc_encrypt(struct skcipher_request *req)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
+	struct rk_crypto_info *dev = ctx->dev;
+
+	ctx->mode = RK_CRYPTO_TDES_CHAINMODE_CBC;
+	return rk_handle_req(dev, req);
+}
+
+static int rk_des_cbc_decrypt(struct skcipher_request *req)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
+	struct rk_crypto_info *dev = ctx->dev;
+
+	ctx->mode = RK_CRYPTO_TDES_CHAINMODE_CBC | RK_CRYPTO_DEC;
+	return rk_handle_req(dev, req);
+}
+
+static int rk_des3_ede_ecb_encrypt(struct skcipher_request *req)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
+	struct rk_crypto_info *dev = ctx->dev;
+
+	ctx->mode = RK_CRYPTO_TDES_SELECT;
+	return rk_handle_req(dev, req);
+}
+
+static int rk_des3_ede_ecb_decrypt(struct skcipher_request *req)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
+	struct rk_crypto_info *dev = ctx->dev;
+
+	ctx->mode = RK_CRYPTO_TDES_SELECT | RK_CRYPTO_DEC;
+	return rk_handle_req(dev, req);
+}
+
+static int rk_des3_ede_cbc_encrypt(struct skcipher_request *req)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
+	struct rk_crypto_info *dev = ctx->dev;
+
+	ctx->mode = RK_CRYPTO_TDES_SELECT | RK_CRYPTO_TDES_CHAINMODE_CBC;
+	return rk_handle_req(dev, req);
+}
+
+static int rk_des3_ede_cbc_decrypt(struct skcipher_request *req)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
+	struct rk_crypto_info *dev = ctx->dev;
+
+	ctx->mode = RK_CRYPTO_TDES_SELECT | RK_CRYPTO_TDES_CHAINMODE_CBC |
+		    RK_CRYPTO_DEC;
+	return rk_handle_req(dev, req);
+}
+
+static void rk_ablk_hw_init(struct rk_crypto_info *dev)
+{
+	struct skcipher_request *req =
+		skcipher_request_cast(dev->async_req);
+	struct crypto_skcipher *cipher = crypto_skcipher_reqtfm(req);
+	struct crypto_tfm *tfm = crypto_skcipher_tfm(cipher);
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(cipher);
+	u32 ivsize, block, conf_reg = 0;
+
+	block = crypto_tfm_alg_blocksize(tfm);
+	ivsize = crypto_skcipher_ivsize(cipher);
+
+	if (block == DES_BLOCK_SIZE) {
+		ctx->mode |= RK_CRYPTO_TDES_FIFO_MODE |
+			     RK_CRYPTO_TDES_BYTESWAP_KEY |
+			     RK_CRYPTO_TDES_BYTESWAP_IV;
+		CRYPTO_WRITE(dev, RK_CRYPTO_TDES_CTRL, ctx->mode);
+		memcpy_toio(dev->reg + RK_CRYPTO_TDES_IV_0, req->iv, ivsize);
+		conf_reg = RK_CRYPTO_DESSEL;
+	} else {
+		ctx->mode |= RK_CRYPTO_AES_FIFO_MODE |
+			     RK_CRYPTO_AES_KEY_CHANGE |
+			     RK_CRYPTO_AES_BYTESWAP_KEY |
+			     RK_CRYPTO_AES_BYTESWAP_IV;
+		if (ctx->keylen == AES_KEYSIZE_192)
+			ctx->mode |= RK_CRYPTO_AES_192BIT_key;
+		else if (ctx->keylen == AES_KEYSIZE_256)
+			ctx->mode |= RK_CRYPTO_AES_256BIT_key;
+		CRYPTO_WRITE(dev, RK_CRYPTO_AES_CTRL, ctx->mode);
+		memcpy_toio(dev->reg + RK_CRYPTO_AES_IV_0, req->iv, ivsize);
+	}
+	conf_reg |= RK_CRYPTO_BYTESWAP_BTFIFO |
+		    RK_CRYPTO_BYTESWAP_BRFIFO;
+	CRYPTO_WRITE(dev, RK_CRYPTO_CONF, conf_reg);
+	CRYPTO_WRITE(dev, RK_CRYPTO_INTENA,
+		     RK_CRYPTO_BCDMA_ERR_ENA | RK_CRYPTO_BCDMA_DONE_ENA);
+}
+
+static void crypto_dma_start(struct rk_crypto_info *dev)
+{
+	CRYPTO_WRITE(dev, RK_CRYPTO_BRDMAS, dev->addr_in);
+	CRYPTO_WRITE(dev, RK_CRYPTO_BRDMAL, dev->count / 4);
+	CRYPTO_WRITE(dev, RK_CRYPTO_BTDMAS, dev->addr_out);
+	CRYPTO_WRITE(dev, RK_CRYPTO_CTRL, RK_CRYPTO_BLOCK_START |
+		     _SBF(RK_CRYPTO_BLOCK_START, 16));
+}
+
+static int rk_set_data_start(struct rk_crypto_info *dev)
+{
+	int err;
+	struct skcipher_request *req =
+		skcipher_request_cast(dev->async_req);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
+	u32 ivsize = crypto_skcipher_ivsize(tfm);
+	u8 *src_last_blk = page_address(sg_page(dev->sg_src)) +
+		dev->sg_src->offset + dev->sg_src->length - ivsize;
+
+	/* Store the iv that need to be updated in chain mode.
+	 * And update the IV buffer to contain the next IV for decryption mode.
+	 */
+	if (ctx->mode & RK_CRYPTO_DEC) {
+		memcpy(ctx->iv, src_last_blk, ivsize);
+		sg_pcopy_to_buffer(dev->first, dev->src_nents, req->iv,
+				   ivsize, dev->total - ivsize);
+	}
+
+	err = dev->load_data(dev, dev->sg_src, dev->sg_dst);
+	if (!err)
+		crypto_dma_start(dev);
+	return err;
+}
+
+static int rk_ablk_start(struct rk_crypto_info *dev)
+{
+	struct skcipher_request *req =
+		skcipher_request_cast(dev->async_req);
+	unsigned long flags;
+	int err = 0;
+
+	dev->left_bytes = req->cryptlen;
+	dev->total = req->cryptlen;
+	dev->sg_src = req->src;
+	dev->first = req->src;
+	dev->src_nents = sg_nents(req->src);
+	dev->sg_dst = req->dst;
+	dev->dst_nents = sg_nents(req->dst);
+	dev->aligned = 1;
+
+	spin_lock_irqsave(&dev->lock, flags);
+	rk_ablk_hw_init(dev);
+	err = rk_set_data_start(dev);
+	spin_unlock_irqrestore(&dev->lock, flags);
+	return err;
+}
+
+static void rk_iv_copyback(struct rk_crypto_info *dev)
+{
+	struct skcipher_request *req =
+		skcipher_request_cast(dev->async_req);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
+	u32 ivsize = crypto_skcipher_ivsize(tfm);
+
+	/* Update the IV buffer to contain the next IV for encryption mode. */
+	if (!(ctx->mode & RK_CRYPTO_DEC)) {
+		if (dev->aligned) {
+			memcpy(req->iv, sg_virt(dev->sg_dst) +
+				dev->sg_dst->length - ivsize, ivsize);
+		} else {
+			memcpy(req->iv, dev->addr_vir +
+				dev->count - ivsize, ivsize);
+		}
+	}
+}
+
+static void rk_update_iv(struct rk_crypto_info *dev)
+{
+	struct skcipher_request *req =
+		skcipher_request_cast(dev->async_req);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
+	u32 ivsize = crypto_skcipher_ivsize(tfm);
+	u8 *new_iv = NULL;
+
+	if (ctx->mode & RK_CRYPTO_DEC) {
+		new_iv = ctx->iv;
+	} else {
+		new_iv = page_address(sg_page(dev->sg_dst)) +
+			 dev->sg_dst->offset + dev->sg_dst->length - ivsize;
+	}
+
+	if (ivsize == DES_BLOCK_SIZE)
+		memcpy_toio(dev->reg + RK_CRYPTO_TDES_IV_0, new_iv, ivsize);
+	else if (ivsize == AES_BLOCK_SIZE)
+		memcpy_toio(dev->reg + RK_CRYPTO_AES_IV_0, new_iv, ivsize);
+}
+
+/* return:
+ *	true	some err was occurred
+ *	fault	no err, continue
+ */
+static int rk_ablk_rx(struct rk_crypto_info *dev)
+{
+	int err = 0;
+	struct skcipher_request *req =
+		skcipher_request_cast(dev->async_req);
+
+	dev->unload_data(dev);
+	if (!dev->aligned) {
+		if (!sg_pcopy_from_buffer(req->dst, dev->dst_nents,
+					  dev->addr_vir, dev->count,
+					  dev->total - dev->left_bytes -
+					  dev->count)) {
+			err = -EINVAL;
+			goto out_rx;
+		}
+	}
+	if (dev->left_bytes) {
+		rk_update_iv(dev);
+		if (dev->aligned) {
+			if (sg_is_last(dev->sg_src)) {
+				dev_err(dev->dev, "[%s:%d] Lack of data\n",
+					__func__, __LINE__);
+				err = -ENOMEM;
+				goto out_rx;
+			}
+			dev->sg_src = sg_next(dev->sg_src);
+			dev->sg_dst = sg_next(dev->sg_dst);
+		}
+		err = rk_set_data_start(dev);
+	} else {
+		rk_iv_copyback(dev);
+		/* here show the calculation is over without any err */
+		dev->complete(dev->async_req, 0);
+		tasklet_schedule(&dev->queue_task);
+	}
+out_rx:
+	return err;
+}
+
+static int rk_ablk_init_tfm(struct crypto_skcipher *tfm)
+{
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
+	struct rk_crypto_tmp *algt;
+
+	algt = container_of(alg, struct rk_crypto_tmp, alg.skcipher);
+
+	ctx->dev = algt->dev;
+	ctx->dev->align_size = crypto_tfm_alg_alignmask(crypto_skcipher_tfm(tfm)) + 1;
+	ctx->dev->start = rk_ablk_start;
+	ctx->dev->update = rk_ablk_rx;
+	ctx->dev->complete = rk_crypto_complete;
+	ctx->dev->addr_vir = (char *)__get_free_page(GFP_KERNEL);
+
+	return ctx->dev->addr_vir ? ctx->dev->enable_clk(ctx->dev) : -ENOMEM;
+}
+
+static void rk_ablk_exit_tfm(struct crypto_skcipher *tfm)
+{
+	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
+
+	free_page((unsigned long)ctx->dev->addr_vir);
+	ctx->dev->disable_clk(ctx->dev);
+}
+
+struct rk_crypto_tmp rk_ecb_aes_alg = {
+	.type = ALG_TYPE_CIPHER,
+	.alg.skcipher = {
+		.base.cra_name		= "ecb(aes)",
+		.base.cra_driver_name	= "ecb-aes-rk",
+		.base.cra_priority	= 300,
+		.base.cra_flags		= CRYPTO_ALG_ASYNC,
+		.base.cra_blocksize	= AES_BLOCK_SIZE,
+		.base.cra_ctxsize	= sizeof(struct rk_cipher_ctx),
+		.base.cra_alignmask	= 0x0f,
+		.base.cra_module	= THIS_MODULE,
+
+		.init			= rk_ablk_init_tfm,
+		.exit			= rk_ablk_exit_tfm,
+		.min_keysize		= AES_MIN_KEY_SIZE,
+		.max_keysize		= AES_MAX_KEY_SIZE,
+		.setkey			= rk_aes_setkey,
+		.encrypt		= rk_aes_ecb_encrypt,
+		.decrypt		= rk_aes_ecb_decrypt,
+	}
+};
+
+struct rk_crypto_tmp rk_cbc_aes_alg = {
+	.type = ALG_TYPE_CIPHER,
+	.alg.skcipher = {
+		.base.cra_name		= "cbc(aes)",
+		.base.cra_driver_name	= "cbc-aes-rk",
+		.base.cra_priority	= 300,
+		.base.cra_flags		= CRYPTO_ALG_ASYNC,
+		.base.cra_blocksize	= AES_BLOCK_SIZE,
+		.base.cra_ctxsize	= sizeof(struct rk_cipher_ctx),
+		.base.cra_alignmask	= 0x0f,
+		.base.cra_module	= THIS_MODULE,
+
+		.init			= rk_ablk_init_tfm,
+		.exit			= rk_ablk_exit_tfm,
+		.min_keysize		= AES_MIN_KEY_SIZE,
+		.max_keysize		= AES_MAX_KEY_SIZE,
+		.ivsize			= AES_BLOCK_SIZE,
+		.setkey			= rk_aes_setkey,
+		.encrypt		= rk_aes_cbc_encrypt,
+		.decrypt		= rk_aes_cbc_decrypt,
+	}
+};
+
+struct rk_crypto_tmp rk_ecb_des_alg = {
+	.type = ALG_TYPE_CIPHER,
+	.alg.skcipher = {
+		.base.cra_name		= "ecb(des)",
+		.base.cra_driver_name	= "ecb-des-rk",
+		.base.cra_priority	= 300,
+		.base.cra_flags		= CRYPTO_ALG_ASYNC,
+		.base.cra_blocksize	= DES_BLOCK_SIZE,
+		.base.cra_ctxsize	= sizeof(struct rk_cipher_ctx),
+		.base.cra_alignmask	= 0x07,
+		.base.cra_module	= THIS_MODULE,
+
+		.init			= rk_ablk_init_tfm,
+		.exit			= rk_ablk_exit_tfm,
+		.min_keysize		= DES_KEY_SIZE,
+		.max_keysize		= DES_KEY_SIZE,
+		.setkey			= rk_des_setkey,
+		.encrypt		= rk_des_ecb_encrypt,
+		.decrypt		= rk_des_ecb_decrypt,
+	}
+};
+
+struct rk_crypto_tmp rk_cbc_des_alg = {
+	.type = ALG_TYPE_CIPHER,
+	.alg.skcipher = {
+		.base.cra_name		= "cbc(des)",
+		.base.cra_driver_name	= "cbc-des-rk",
+		.base.cra_priority	= 300,
+		.base.cra_flags		= CRYPTO_ALG_ASYNC,
+		.base.cra_blocksize	= DES_BLOCK_SIZE,
+		.base.cra_ctxsize	= sizeof(struct rk_cipher_ctx),
+		.base.cra_alignmask	= 0x07,
+		.base.cra_module	= THIS_MODULE,
+
+		.init			= rk_ablk_init_tfm,
+		.exit			= rk_ablk_exit_tfm,
+		.min_keysize		= DES_KEY_SIZE,
+		.max_keysize		= DES_KEY_SIZE,
+		.ivsize			= DES_BLOCK_SIZE,
+		.setkey			= rk_des_setkey,
+		.encrypt		= rk_des_cbc_encrypt,
+		.decrypt		= rk_des_cbc_decrypt,
+	}
+};
+
+struct rk_crypto_tmp rk_ecb_des3_ede_alg = {
+	.type = ALG_TYPE_CIPHER,
+	.alg.skcipher = {
+		.base.cra_name		= "ecb(des3_ede)",
+		.base.cra_driver_name	= "ecb-des3-ede-rk",
+		.base.cra_priority	= 300,
+		.base.cra_flags		= CRYPTO_ALG_ASYNC,
+		.base.cra_blocksize	= DES_BLOCK_SIZE,
+		.base.cra_ctxsize	= sizeof(struct rk_cipher_ctx),
+		.base.cra_alignmask	= 0x07,
+		.base.cra_module	= THIS_MODULE,
+
+		.init			= rk_ablk_init_tfm,
+		.exit			= rk_ablk_exit_tfm,
+		.min_keysize		= DES3_EDE_KEY_SIZE,
+		.max_keysize		= DES3_EDE_KEY_SIZE,
+		.ivsize			= DES_BLOCK_SIZE,
+		.setkey			= rk_tdes_setkey,
+		.encrypt		= rk_des3_ede_ecb_encrypt,
+		.decrypt		= rk_des3_ede_ecb_decrypt,
+	}
+};
+
+struct rk_crypto_tmp rk_cbc_des3_ede_alg = {
+	.type = ALG_TYPE_CIPHER,
+	.alg.skcipher = {
+		.base.cra_name		= "cbc(des3_ede)",
+		.base.cra_driver_name	= "cbc-des3-ede-rk",
+		.base.cra_priority	= 300,
+		.base.cra_flags		= CRYPTO_ALG_ASYNC,
+		.base.cra_blocksize	= DES_BLOCK_SIZE,
+		.base.cra_ctxsize	= sizeof(struct rk_cipher_ctx),
+		.base.cra_alignmask	= 0x07,
+		.base.cra_module	= THIS_MODULE,
+
+		.init			= rk_ablk_init_tfm,
+		.exit			= rk_ablk_exit_tfm,
+		.min_keysize		= DES3_EDE_KEY_SIZE,
+		.max_keysize		= DES3_EDE_KEY_SIZE,
+		.ivsize			= DES_BLOCK_SIZE,
+		.setkey			= rk_tdes_setkey,
+		.encrypt		= rk_des3_ede_cbc_encrypt,
+		.decrypt		= rk_des3_ede_cbc_decrypt,
+	}
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
