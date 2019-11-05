Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4D8EFEBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:37:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WwIqXvd7ByBwyj0LOyNJPtRLvsOvXxL82+yMpU5Qhjs=; b=l/44ErXsOFN4pV
	8JocqyjdeL1Ca7UBnJIMm5cH/mXKIrA1wY1NcAaGa/je5ERkbvOJ/JHQ4pyEdNvtcDfYiuoUcXVYE
	SqtfVCsjWndWY5JlOTMRDLT/pj4LgokTt3GRAeYfID6Uw9yyl5uKveIQCcaXy4uxpOE1T1lEc/bfL
	WGG3SrXiFI0VXbuQxp3Um3b8Hmy4clNlXfCs4y21uva1SDk87eElDSm/4YiUhp9iywMC0FUWEr1Yp
	7q6tgIvtrThVVAVVxyfNWKF/d3mS3wQnWlq/3BWoymXIAGLFKAeUUfyCJQoj13hoMR+2wWcJxIibc
	EN88xO2NiR09Hi2c7xAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRz1D-0000cC-MQ; Tue, 05 Nov 2019 13:37:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRytl-0000oC-2J
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:29:36 +0000
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr [92.154.90.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA42221D81;
 Tue,  5 Nov 2019 13:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572960568;
 bh=XMXsm+jP+XnXEZfWWHMHwjpG5xAfPCKaEgbRoPLxf/Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tAwjvPYb6MYglPcODlUIaHUGADPSJdselkpv5Yr9wYWDQbkRolw2oomU3KLOHDgcn
 Zb+u/lqFvyFu3mU7u9mH8IHe5G3g1AnOkBtN9VxPw3jWYbuLgNKSJY4Xdx2568rdcE
 dVhfoZuqDanqrivvcox/jGSSdH0JTHd686DAcB+g=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v3 24/29] crypto: talitos - switch to skcipher API
Date: Tue,  5 Nov 2019 14:28:21 +0100
Message-Id: <20191105132826.1838-25-ardb@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191105132826.1838-1-ardb@kernel.org>
References: <20191105132826.1838-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_052929_254486_DD8BD18C 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "David S. Miller" <davem@davemloft.net>, Eric Biggers <ebiggers@google.com>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org,
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

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/crypto/talitos.c | 308 +++++++++-----------
 1 file changed, 143 insertions(+), 165 deletions(-)

diff --git a/drivers/crypto/talitos.c b/drivers/crypto/talitos.c
index bcd533671ccc..d71d65846e47 100644
--- a/drivers/crypto/talitos.c
+++ b/drivers/crypto/talitos.c
@@ -35,7 +35,7 @@
 #include <crypto/md5.h>
 #include <crypto/internal/aead.h>
 #include <crypto/authenc.h>
-#include <crypto/skcipher.h>
+#include <crypto/internal/skcipher.h>
 #include <crypto/hash.h>
 #include <crypto/internal/hash.h>
 #include <crypto/scatterwalk.h>
@@ -1490,10 +1490,10 @@ static int aead_decrypt(struct aead_request *req)
 	return ipsec_esp(edesc, req, false, ipsec_esp_decrypt_swauth_done);
 }
 
-static int ablkcipher_setkey(struct crypto_ablkcipher *cipher,
+static int skcipher_setkey(struct crypto_skcipher *cipher,
 			     const u8 *key, unsigned int keylen)
 {
-	struct talitos_ctx *ctx = crypto_ablkcipher_ctx(cipher);
+	struct talitos_ctx *ctx = crypto_skcipher_ctx(cipher);
 	struct device *dev = ctx->dev;
 
 	if (ctx->keylen)
@@ -1507,39 +1507,39 @@ static int ablkcipher_setkey(struct crypto_ablkcipher *cipher,
 	return 0;
 }
 
-static int ablkcipher_des_setkey(struct crypto_ablkcipher *cipher,
+static int skcipher_des_setkey(struct crypto_skcipher *cipher,
 				 const u8 *key, unsigned int keylen)
 {
-	return verify_ablkcipher_des_key(cipher, key) ?:
-	       ablkcipher_setkey(cipher, key, keylen);
+	return verify_skcipher_des_key(cipher, key) ?:
+	       skcipher_setkey(cipher, key, keylen);
 }
 
-static int ablkcipher_des3_setkey(struct crypto_ablkcipher *cipher,
+static int skcipher_des3_setkey(struct crypto_skcipher *cipher,
 				  const u8 *key, unsigned int keylen)
 {
-	return verify_ablkcipher_des3_key(cipher, key) ?:
-	       ablkcipher_setkey(cipher, key, keylen);
+	return verify_skcipher_des3_key(cipher, key) ?:
+	       skcipher_setkey(cipher, key, keylen);
 }
 
-static int ablkcipher_aes_setkey(struct crypto_ablkcipher *cipher,
+static int skcipher_aes_setkey(struct crypto_skcipher *cipher,
 				  const u8 *key, unsigned int keylen)
 {
 	if (keylen == AES_KEYSIZE_128 || keylen == AES_KEYSIZE_192 ||
 	    keylen == AES_KEYSIZE_256)
-		return ablkcipher_setkey(cipher, key, keylen);
+		return skcipher_setkey(cipher, key, keylen);
 
-	crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
+	crypto_skcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
 
 	return -EINVAL;
 }
 
 static void common_nonsnoop_unmap(struct device *dev,
 				  struct talitos_edesc *edesc,
-				  struct ablkcipher_request *areq)
+				  struct skcipher_request *areq)
 {
 	unmap_single_talitos_ptr(dev, &edesc->desc.ptr[5], DMA_FROM_DEVICE);
 
-	talitos_sg_unmap(dev, edesc, areq->src, areq->dst, areq->nbytes, 0);
+	talitos_sg_unmap(dev, edesc, areq->src, areq->dst, areq->cryptlen, 0);
 	unmap_single_talitos_ptr(dev, &edesc->desc.ptr[1], DMA_TO_DEVICE);
 
 	if (edesc->dma_len)
@@ -1547,20 +1547,20 @@ static void common_nonsnoop_unmap(struct device *dev,
 				 DMA_BIDIRECTIONAL);
 }
 
-static void ablkcipher_done(struct device *dev,
+static void skcipher_done(struct device *dev,
 			    struct talitos_desc *desc, void *context,
 			    int err)
 {
-	struct ablkcipher_request *areq = context;
-	struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(areq);
-	struct talitos_ctx *ctx = crypto_ablkcipher_ctx(cipher);
-	unsigned int ivsize = crypto_ablkcipher_ivsize(cipher);
+	struct skcipher_request *areq = context;
+	struct crypto_skcipher *cipher = crypto_skcipher_reqtfm(areq);
+	struct talitos_ctx *ctx = crypto_skcipher_ctx(cipher);
+	unsigned int ivsize = crypto_skcipher_ivsize(cipher);
 	struct talitos_edesc *edesc;
 
 	edesc = container_of(desc, struct talitos_edesc, desc);
 
 	common_nonsnoop_unmap(dev, edesc, areq);
-	memcpy(areq->info, ctx->iv, ivsize);
+	memcpy(areq->iv, ctx->iv, ivsize);
 
 	kfree(edesc);
 
@@ -1568,17 +1568,17 @@ static void ablkcipher_done(struct device *dev,
 }
 
 static int common_nonsnoop(struct talitos_edesc *edesc,
-			   struct ablkcipher_request *areq,
+			   struct skcipher_request *areq,
 			   void (*callback) (struct device *dev,
 					     struct talitos_desc *desc,
 					     void *context, int error))
 {
-	struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(areq);
-	struct talitos_ctx *ctx = crypto_ablkcipher_ctx(cipher);
+	struct crypto_skcipher *cipher = crypto_skcipher_reqtfm(areq);
+	struct talitos_ctx *ctx = crypto_skcipher_ctx(cipher);
 	struct device *dev = ctx->dev;
 	struct talitos_desc *desc = &edesc->desc;
-	unsigned int cryptlen = areq->nbytes;
-	unsigned int ivsize = crypto_ablkcipher_ivsize(cipher);
+	unsigned int cryptlen = areq->cryptlen;
+	unsigned int ivsize = crypto_skcipher_ivsize(cipher);
 	int sg_count, ret;
 	bool sync_needed = false;
 	struct talitos_private *priv = dev_get_drvdata(dev);
@@ -1638,65 +1638,65 @@ static int common_nonsnoop(struct talitos_edesc *edesc,
 	return ret;
 }
 
-static struct talitos_edesc *ablkcipher_edesc_alloc(struct ablkcipher_request *
+static struct talitos_edesc *skcipher_edesc_alloc(struct skcipher_request *
 						    areq, bool encrypt)
 {
-	struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(areq);
-	struct talitos_ctx *ctx = crypto_ablkcipher_ctx(cipher);
-	unsigned int ivsize = crypto_ablkcipher_ivsize(cipher);
+	struct crypto_skcipher *cipher = crypto_skcipher_reqtfm(areq);
+	struct talitos_ctx *ctx = crypto_skcipher_ctx(cipher);
+	unsigned int ivsize = crypto_skcipher_ivsize(cipher);
 
 	return talitos_edesc_alloc(ctx->dev, areq->src, areq->dst,
-				   areq->info, 0, areq->nbytes, 0, ivsize, 0,
+				   areq->iv, 0, areq->cryptlen, 0, ivsize, 0,
 				   areq->base.flags, encrypt);
 }
 
-static int ablkcipher_encrypt(struct ablkcipher_request *areq)
+static int skcipher_encrypt(struct skcipher_request *areq)
 {
-	struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(areq);
-	struct talitos_ctx *ctx = crypto_ablkcipher_ctx(cipher);
+	struct crypto_skcipher *cipher = crypto_skcipher_reqtfm(areq);
+	struct talitos_ctx *ctx = crypto_skcipher_ctx(cipher);
 	struct talitos_edesc *edesc;
 	unsigned int blocksize =
-			crypto_tfm_alg_blocksize(crypto_ablkcipher_tfm(cipher));
+			crypto_tfm_alg_blocksize(crypto_skcipher_tfm(cipher));
 
-	if (!areq->nbytes)
+	if (!areq->cryptlen)
 		return 0;
 
-	if (areq->nbytes % blocksize)
+	if (areq->cryptlen % blocksize)
 		return -EINVAL;
 
 	/* allocate extended descriptor */
-	edesc = ablkcipher_edesc_alloc(areq, true);
+	edesc = skcipher_edesc_alloc(areq, true);
 	if (IS_ERR(edesc))
 		return PTR_ERR(edesc);
 
 	/* set encrypt */
 	edesc->desc.hdr = ctx->desc_hdr_template | DESC_HDR_MODE0_ENCRYPT;
 
-	return common_nonsnoop(edesc, areq, ablkcipher_done);
+	return common_nonsnoop(edesc, areq, skcipher_done);
 }
 
-static int ablkcipher_decrypt(struct ablkcipher_request *areq)
+static int skcipher_decrypt(struct skcipher_request *areq)
 {
-	struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(areq);
-	struct talitos_ctx *ctx = crypto_ablkcipher_ctx(cipher);
+	struct crypto_skcipher *cipher = crypto_skcipher_reqtfm(areq);
+	struct talitos_ctx *ctx = crypto_skcipher_ctx(cipher);
 	struct talitos_edesc *edesc;
 	unsigned int blocksize =
-			crypto_tfm_alg_blocksize(crypto_ablkcipher_tfm(cipher));
+			crypto_tfm_alg_blocksize(crypto_skcipher_tfm(cipher));
 
-	if (!areq->nbytes)
+	if (!areq->cryptlen)
 		return 0;
 
-	if (areq->nbytes % blocksize)
+	if (areq->cryptlen % blocksize)
 		return -EINVAL;
 
 	/* allocate extended descriptor */
-	edesc = ablkcipher_edesc_alloc(areq, false);
+	edesc = skcipher_edesc_alloc(areq, false);
 	if (IS_ERR(edesc))
 		return PTR_ERR(edesc);
 
 	edesc->desc.hdr = ctx->desc_hdr_template | DESC_HDR_DIR_INBOUND;
 
-	return common_nonsnoop(edesc, areq, ablkcipher_done);
+	return common_nonsnoop(edesc, areq, skcipher_done);
 }
 
 static void common_nonsnoop_hash_unmap(struct device *dev,
@@ -2257,7 +2257,7 @@ struct talitos_alg_template {
 	u32 type;
 	u32 priority;
 	union {
-		struct crypto_alg crypto;
+		struct skcipher_alg skcipher;
 		struct ahash_alg hash;
 		struct aead_alg aead;
 	} alg;
@@ -2702,123 +2702,102 @@ static struct talitos_alg_template driver_algs[] = {
 				     DESC_HDR_MODE1_MDEU_PAD |
 				     DESC_HDR_MODE1_MDEU_MD5_HMAC,
 	},
-	/* ABLKCIPHER algorithms. */
-	{	.type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-		.alg.crypto = {
-			.cra_name = "ecb(aes)",
-			.cra_driver_name = "ecb-aes-talitos",
-			.cra_blocksize = AES_BLOCK_SIZE,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-				     CRYPTO_ALG_ASYNC,
-			.cra_ablkcipher = {
-				.min_keysize = AES_MIN_KEY_SIZE,
-				.max_keysize = AES_MAX_KEY_SIZE,
-				.setkey = ablkcipher_aes_setkey,
-			}
+	/* SKCIPHER algorithms. */
+	{	.type = CRYPTO_ALG_TYPE_SKCIPHER,
+		.alg.skcipher = {
+			.base.cra_name = "ecb(aes)",
+			.base.cra_driver_name = "ecb-aes-talitos",
+			.base.cra_blocksize = AES_BLOCK_SIZE,
+			.base.cra_flags = CRYPTO_ALG_ASYNC,
+			.min_keysize = AES_MIN_KEY_SIZE,
+			.max_keysize = AES_MAX_KEY_SIZE,
+			.setkey = skcipher_aes_setkey,
 		},
 		.desc_hdr_template = DESC_HDR_TYPE_COMMON_NONSNOOP_NO_AFEU |
 				     DESC_HDR_SEL0_AESU,
 	},
-	{	.type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-		.alg.crypto = {
-			.cra_name = "cbc(aes)",
-			.cra_driver_name = "cbc-aes-talitos",
-			.cra_blocksize = AES_BLOCK_SIZE,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-                                     CRYPTO_ALG_ASYNC,
-			.cra_ablkcipher = {
-				.min_keysize = AES_MIN_KEY_SIZE,
-				.max_keysize = AES_MAX_KEY_SIZE,
-				.ivsize = AES_BLOCK_SIZE,
-				.setkey = ablkcipher_aes_setkey,
-			}
+	{	.type = CRYPTO_ALG_TYPE_SKCIPHER,
+		.alg.skcipher = {
+			.base.cra_name = "cbc(aes)",
+			.base.cra_driver_name = "cbc-aes-talitos",
+			.base.cra_blocksize = AES_BLOCK_SIZE,
+			.base.cra_flags = CRYPTO_ALG_ASYNC,
+			.min_keysize = AES_MIN_KEY_SIZE,
+			.max_keysize = AES_MAX_KEY_SIZE,
+			.ivsize = AES_BLOCK_SIZE,
+			.setkey = skcipher_aes_setkey,
 		},
 		.desc_hdr_template = DESC_HDR_TYPE_COMMON_NONSNOOP_NO_AFEU |
 				     DESC_HDR_SEL0_AESU |
 				     DESC_HDR_MODE0_AESU_CBC,
 	},
-	{	.type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-		.alg.crypto = {
-			.cra_name = "ctr(aes)",
-			.cra_driver_name = "ctr-aes-talitos",
-			.cra_blocksize = 1,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-				     CRYPTO_ALG_ASYNC,
-			.cra_ablkcipher = {
-				.min_keysize = AES_MIN_KEY_SIZE,
-				.max_keysize = AES_MAX_KEY_SIZE,
-				.ivsize = AES_BLOCK_SIZE,
-				.setkey = ablkcipher_aes_setkey,
-			}
+	{	.type = CRYPTO_ALG_TYPE_SKCIPHER,
+		.alg.skcipher = {
+			.base.cra_name = "ctr(aes)",
+			.base.cra_driver_name = "ctr-aes-talitos",
+			.base.cra_blocksize = 1,
+			.base.cra_flags = CRYPTO_ALG_ASYNC,
+			.min_keysize = AES_MIN_KEY_SIZE,
+			.max_keysize = AES_MAX_KEY_SIZE,
+			.ivsize = AES_BLOCK_SIZE,
+			.setkey = skcipher_aes_setkey,
 		},
 		.desc_hdr_template = DESC_HDR_TYPE_AESU_CTR_NONSNOOP |
 				     DESC_HDR_SEL0_AESU |
 				     DESC_HDR_MODE0_AESU_CTR,
 	},
-	{	.type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-		.alg.crypto = {
-			.cra_name = "ecb(des)",
-			.cra_driver_name = "ecb-des-talitos",
-			.cra_blocksize = DES_BLOCK_SIZE,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-				     CRYPTO_ALG_ASYNC,
-			.cra_ablkcipher = {
-				.min_keysize = DES_KEY_SIZE,
-				.max_keysize = DES_KEY_SIZE,
-				.setkey = ablkcipher_des_setkey,
-			}
+	{	.type = CRYPTO_ALG_TYPE_SKCIPHER,
+		.alg.skcipher = {
+			.base.cra_name = "ecb(des)",
+			.base.cra_driver_name = "ecb-des-talitos",
+			.base.cra_blocksize = DES_BLOCK_SIZE,
+			.base.cra_flags = CRYPTO_ALG_ASYNC,
+			.min_keysize = DES_KEY_SIZE,
+			.max_keysize = DES_KEY_SIZE,
+			.setkey = skcipher_des_setkey,
 		},
 		.desc_hdr_template = DESC_HDR_TYPE_COMMON_NONSNOOP_NO_AFEU |
 				     DESC_HDR_SEL0_DEU,
 	},
-	{	.type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-		.alg.crypto = {
-			.cra_name = "cbc(des)",
-			.cra_driver_name = "cbc-des-talitos",
-			.cra_blocksize = DES_BLOCK_SIZE,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-				     CRYPTO_ALG_ASYNC,
-			.cra_ablkcipher = {
-				.min_keysize = DES_KEY_SIZE,
-				.max_keysize = DES_KEY_SIZE,
-				.ivsize = DES_BLOCK_SIZE,
-				.setkey = ablkcipher_des_setkey,
-			}
+	{	.type = CRYPTO_ALG_TYPE_SKCIPHER,
+		.alg.skcipher = {
+			.base.cra_name = "cbc(des)",
+			.base.cra_driver_name = "cbc-des-talitos",
+			.base.cra_blocksize = DES_BLOCK_SIZE,
+			.base.cra_flags = CRYPTO_ALG_ASYNC,
+			.min_keysize = DES_KEY_SIZE,
+			.max_keysize = DES_KEY_SIZE,
+			.ivsize = DES_BLOCK_SIZE,
+			.setkey = skcipher_des_setkey,
 		},
 		.desc_hdr_template = DESC_HDR_TYPE_COMMON_NONSNOOP_NO_AFEU |
 				     DESC_HDR_SEL0_DEU |
 				     DESC_HDR_MODE0_DEU_CBC,
 	},
-	{	.type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-		.alg.crypto = {
-			.cra_name = "ecb(des3_ede)",
-			.cra_driver_name = "ecb-3des-talitos",
-			.cra_blocksize = DES3_EDE_BLOCK_SIZE,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-				     CRYPTO_ALG_ASYNC,
-			.cra_ablkcipher = {
-				.min_keysize = DES3_EDE_KEY_SIZE,
-				.max_keysize = DES3_EDE_KEY_SIZE,
-				.setkey = ablkcipher_des3_setkey,
-			}
+	{	.type = CRYPTO_ALG_TYPE_SKCIPHER,
+		.alg.skcipher = {
+			.base.cra_name = "ecb(des3_ede)",
+			.base.cra_driver_name = "ecb-3des-talitos",
+			.base.cra_blocksize = DES3_EDE_BLOCK_SIZE,
+			.base.cra_flags = CRYPTO_ALG_ASYNC,
+			.min_keysize = DES3_EDE_KEY_SIZE,
+			.max_keysize = DES3_EDE_KEY_SIZE,
+			.setkey = skcipher_des3_setkey,
 		},
 		.desc_hdr_template = DESC_HDR_TYPE_COMMON_NONSNOOP_NO_AFEU |
 				     DESC_HDR_SEL0_DEU |
 				     DESC_HDR_MODE0_DEU_3DES,
 	},
-	{	.type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-		.alg.crypto = {
-			.cra_name = "cbc(des3_ede)",
-			.cra_driver_name = "cbc-3des-talitos",
-			.cra_blocksize = DES3_EDE_BLOCK_SIZE,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-                                     CRYPTO_ALG_ASYNC,
-			.cra_ablkcipher = {
-				.min_keysize = DES3_EDE_KEY_SIZE,
-				.max_keysize = DES3_EDE_KEY_SIZE,
-				.ivsize = DES3_EDE_BLOCK_SIZE,
-				.setkey = ablkcipher_des3_setkey,
-			}
+	{	.type = CRYPTO_ALG_TYPE_SKCIPHER,
+		.alg.skcipher = {
+			.base.cra_name = "cbc(des3_ede)",
+			.base.cra_driver_name = "cbc-3des-talitos",
+			.base.cra_blocksize = DES3_EDE_BLOCK_SIZE,
+			.base.cra_flags = CRYPTO_ALG_ASYNC,
+			.min_keysize = DES3_EDE_KEY_SIZE,
+			.max_keysize = DES3_EDE_KEY_SIZE,
+			.ivsize = DES3_EDE_BLOCK_SIZE,
+			.setkey = skcipher_des3_setkey,
 		},
 		.desc_hdr_template = DESC_HDR_TYPE_COMMON_NONSNOOP_NO_AFEU |
 			             DESC_HDR_SEL0_DEU |
@@ -3036,46 +3015,45 @@ static int talitos_init_common(struct talitos_ctx *ctx,
 	return 0;
 }
 
-static int talitos_cra_init(struct crypto_tfm *tfm)
+static int talitos_cra_init_aead(struct crypto_aead *tfm)
 {
-	struct crypto_alg *alg = tfm->__crt_alg;
+	struct aead_alg *alg = crypto_aead_alg(tfm);
 	struct talitos_crypto_alg *talitos_alg;
-	struct talitos_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct talitos_ctx *ctx = crypto_aead_ctx(tfm);
 
-	if ((alg->cra_flags & CRYPTO_ALG_TYPE_MASK) == CRYPTO_ALG_TYPE_AHASH)
-		talitos_alg = container_of(__crypto_ahash_alg(alg),
-					   struct talitos_crypto_alg,
-					   algt.alg.hash);
-	else
-		talitos_alg = container_of(alg, struct talitos_crypto_alg,
-					   algt.alg.crypto);
+	talitos_alg = container_of(alg, struct talitos_crypto_alg,
+				   algt.alg.aead);
 
 	return talitos_init_common(ctx, talitos_alg);
 }
 
-static int talitos_cra_init_aead(struct crypto_aead *tfm)
+static int talitos_cra_init_skcipher(struct crypto_skcipher *tfm)
 {
-	struct aead_alg *alg = crypto_aead_alg(tfm);
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
 	struct talitos_crypto_alg *talitos_alg;
-	struct talitos_ctx *ctx = crypto_aead_ctx(tfm);
+	struct talitos_ctx *ctx = crypto_skcipher_ctx(tfm);
 
 	talitos_alg = container_of(alg, struct talitos_crypto_alg,
-				   algt.alg.aead);
+				   algt.alg.skcipher);
 
 	return talitos_init_common(ctx, talitos_alg);
 }
 
 static int talitos_cra_init_ahash(struct crypto_tfm *tfm)
 {
+	struct crypto_alg *alg = tfm->__crt_alg;
+	struct talitos_crypto_alg *talitos_alg;
 	struct talitos_ctx *ctx = crypto_tfm_ctx(tfm);
 
-	talitos_cra_init(tfm);
+	talitos_alg = container_of(__crypto_ahash_alg(alg),
+				   struct talitos_crypto_alg,
+				   algt.alg.hash);
 
 	ctx->keylen = 0;
 	crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
 				 sizeof(struct talitos_ahash_req_ctx));
 
-	return 0;
+	return talitos_init_common(ctx, talitos_alg);
 }
 
 static void talitos_cra_exit(struct crypto_tfm *tfm)
@@ -3116,7 +3094,8 @@ static int talitos_remove(struct platform_device *ofdev)
 
 	list_for_each_entry_safe(t_alg, n, &priv->alg_list, entry) {
 		switch (t_alg->algt.type) {
-		case CRYPTO_ALG_TYPE_ABLKCIPHER:
+		case CRYPTO_ALG_TYPE_SKCIPHER:
+			crypto_unregister_skcipher(&t_alg->algt.alg.skcipher);
 			break;
 		case CRYPTO_ALG_TYPE_AEAD:
 			crypto_unregister_aead(&t_alg->algt.alg.aead);
@@ -3160,15 +3139,14 @@ static struct talitos_crypto_alg *talitos_alg_alloc(struct device *dev,
 	t_alg->algt = *template;
 
 	switch (t_alg->algt.type) {
-	case CRYPTO_ALG_TYPE_ABLKCIPHER:
-		alg = &t_alg->algt.alg.crypto;
-		alg->cra_init = talitos_cra_init;
+	case CRYPTO_ALG_TYPE_SKCIPHER:
+		alg = &t_alg->algt.alg.skcipher.base;
 		alg->cra_exit = talitos_cra_exit;
-		alg->cra_type = &crypto_ablkcipher_type;
-		alg->cra_ablkcipher.setkey = alg->cra_ablkcipher.setkey ?:
-					     ablkcipher_setkey;
-		alg->cra_ablkcipher.encrypt = ablkcipher_encrypt;
-		alg->cra_ablkcipher.decrypt = ablkcipher_decrypt;
+		t_alg->algt.alg.skcipher.init = talitos_cra_init_skcipher;
+		t_alg->algt.alg.skcipher.setkey =
+			t_alg->algt.alg.skcipher.setkey ?: skcipher_setkey;
+		t_alg->algt.alg.skcipher.encrypt = skcipher_encrypt;
+		t_alg->algt.alg.skcipher.decrypt = skcipher_decrypt;
 		break;
 	case CRYPTO_ALG_TYPE_AEAD:
 		alg = &t_alg->algt.alg.aead.base;
@@ -3465,10 +3443,10 @@ static int talitos_probe(struct platform_device *ofdev)
 			}
 
 			switch (t_alg->algt.type) {
-			case CRYPTO_ALG_TYPE_ABLKCIPHER:
-				err = crypto_register_alg(
-						&t_alg->algt.alg.crypto);
-				alg = &t_alg->algt.alg.crypto;
+			case CRYPTO_ALG_TYPE_SKCIPHER:
+				err = crypto_register_skcipher(
+						&t_alg->algt.alg.skcipher);
+				alg = &t_alg->algt.alg.skcipher.base;
 				break;
 
 			case CRYPTO_ALG_TYPE_AEAD:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
