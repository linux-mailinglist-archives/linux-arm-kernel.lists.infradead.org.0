Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F302F6090
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 18:16:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vSzbba46II9lI/QbDrRT3Vz6bxofm8+RgR72aYI7maQ=; b=WkTh+n6OgbxnE6xHlAk7K3x8c4
	7pCXm6cHAmTnJi/YBDYjzQ0Roc14+F3+hPKLxDis9WDXsXdA/MeMmugArqstyGCqTuGh8zUTZ5qb8
	VM4eeX6CQfwaDdTyiJnbh942ULDExOTS+LFgFjorxz9B9bw4ECGXLRkiLF+FX0nXHRIerLlJa8Rob
	g8o2GjoIDUmCXHUlAYYmUFy/xx9/uvP0aGerr9nFO7Owh76Bh5wqwcMZAslvyIuDEa4i1NKAB7WlD
	WreJ08RIM4CHcU+3cyCVGl9rZIlIOASh4vDLV2e63z4GFpwS8iNtFzYAoVXTdwCBIiGPACJFuzX73
	0TR5dEAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTUL2-0000tq-JA; Sat, 09 Nov 2019 17:15:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTUGX-0004o9-J6
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 17:11:20 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7930F21D7E;
 Sat,  9 Nov 2019 17:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573319473;
 bh=riELOaIHdXttHLkg4cqMaFwaI8m/2z2eLaAmYUJRTYU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nEYO+pu5gDOk8oRjZIL04twYrSYxZscnsv8uMOm2phbBZEc7q/sFOrrFCcZboldwV
 LA/j5xuwcna3PknhZ8qBy1BdE7S5iPJGC60dvu6FmXlRfbhhNtyEG0VAOmX2NYzj7s
 s94ITb9MoQbbUndo55a3TYM4ZR/X6hbk6QNWRrww=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v4 15/29] crypto: ixp4xx - switch to skcipher API
Date: Sat,  9 Nov 2019 18:09:40 +0100
Message-Id: <20191109170954.756-16-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191109170954.756-1-ardb@kernel.org>
References: <20191109170954.756-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_091113_700834_A527821C 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
MIME-Version: 1.0
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
ablkcipher code in the near future.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/crypto/ixp4xx_crypto.c | 228 ++++++++++----------
 1 file changed, 108 insertions(+), 120 deletions(-)

diff --git a/drivers/crypto/ixp4xx_crypto.c b/drivers/crypto/ixp4xx_crypto.c
index 9181523ba760..391e3b4df364 100644
--- a/drivers/crypto/ixp4xx_crypto.c
+++ b/drivers/crypto/ixp4xx_crypto.c
@@ -23,6 +23,7 @@
 #include <crypto/sha.h>
 #include <crypto/algapi.h>
 #include <crypto/internal/aead.h>
+#include <crypto/internal/skcipher.h>
 #include <crypto/authenc.h>
 #include <crypto/scatterwalk.h>
 
@@ -137,7 +138,7 @@ struct crypt_ctl {
 	/* Used by Host: 4*4 bytes*/
 	unsigned ctl_flags;
 	union {
-		struct ablkcipher_request *ablk_req;
+		struct skcipher_request *ablk_req;
 		struct aead_request *aead_req;
 		struct crypto_tfm *tfm;
 	} data;
@@ -186,7 +187,7 @@ struct ixp_ctx {
 };
 
 struct ixp_alg {
-	struct crypto_alg crypto;
+	struct skcipher_alg crypto;
 	const struct ix_hash_algo *hash;
 	u32 cfg_enc;
 	u32 cfg_dec;
@@ -239,17 +240,17 @@ static inline struct crypt_ctl *crypt_phys2virt(dma_addr_t phys)
 
 static inline u32 cipher_cfg_enc(struct crypto_tfm *tfm)
 {
-	return container_of(tfm->__crt_alg, struct ixp_alg,crypto)->cfg_enc;
+	return container_of(tfm->__crt_alg, struct ixp_alg,crypto.base)->cfg_enc;
 }
 
 static inline u32 cipher_cfg_dec(struct crypto_tfm *tfm)
 {
-	return container_of(tfm->__crt_alg, struct ixp_alg,crypto)->cfg_dec;
+	return container_of(tfm->__crt_alg, struct ixp_alg,crypto.base)->cfg_dec;
 }
 
 static inline const struct ix_hash_algo *ix_hash(struct crypto_tfm *tfm)
 {
-	return container_of(tfm->__crt_alg, struct ixp_alg, crypto)->hash;
+	return container_of(tfm->__crt_alg, struct ixp_alg, crypto.base)->hash;
 }
 
 static int setup_crypt_desc(void)
@@ -378,8 +379,8 @@ static void one_packet(dma_addr_t phys)
 		break;
 	}
 	case CTL_FLAG_PERFORM_ABLK: {
-		struct ablkcipher_request *req = crypt->data.ablk_req;
-		struct ablk_ctx *req_ctx = ablkcipher_request_ctx(req);
+		struct skcipher_request *req = crypt->data.ablk_req;
+		struct ablk_ctx *req_ctx = skcipher_request_ctx(req);
 
 		if (req_ctx->dst) {
 			free_buf_chain(dev, req_ctx->dst, crypt->dst_buf);
@@ -571,10 +572,10 @@ static int init_tfm(struct crypto_tfm *tfm)
 	return ret;
 }
 
-static int init_tfm_ablk(struct crypto_tfm *tfm)
+static int init_tfm_ablk(struct crypto_skcipher *tfm)
 {
-	tfm->crt_ablkcipher.reqsize = sizeof(struct ablk_ctx);
-	return init_tfm(tfm);
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct ablk_ctx));
+	return init_tfm(crypto_skcipher_tfm(tfm));
 }
 
 static int init_tfm_aead(struct crypto_aead *tfm)
@@ -590,6 +591,11 @@ static void exit_tfm(struct crypto_tfm *tfm)
 	free_sa_dir(&ctx->decrypt);
 }
 
+static void exit_tfm_ablk(struct crypto_skcipher *tfm)
+{
+	exit_tfm(crypto_skcipher_tfm(tfm));
+}
+
 static void exit_tfm_aead(struct crypto_aead *tfm)
 {
 	exit_tfm(crypto_aead_tfm(tfm));
@@ -809,10 +815,10 @@ static struct buffer_desc *chainup_buffers(struct device *dev,
 	return buf;
 }
 
-static int ablk_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
+static int ablk_setkey(struct crypto_skcipher *tfm, const u8 *key,
 			unsigned int key_len)
 {
-	struct ixp_ctx *ctx = crypto_ablkcipher_ctx(tfm);
+	struct ixp_ctx *ctx = crypto_skcipher_ctx(tfm);
 	u32 *flags = &tfm->base.crt_flags;
 	int ret;
 
@@ -845,17 +851,17 @@ static int ablk_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
 	return ret;
 }
 
-static int ablk_des3_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
+static int ablk_des3_setkey(struct crypto_skcipher *tfm, const u8 *key,
 			    unsigned int key_len)
 {
-	return verify_ablkcipher_des3_key(tfm, key) ?:
+	return verify_skcipher_des3_key(tfm, key) ?:
 	       ablk_setkey(tfm, key, key_len);
 }
 
-static int ablk_rfc3686_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
+static int ablk_rfc3686_setkey(struct crypto_skcipher *tfm, const u8 *key,
 		unsigned int key_len)
 {
-	struct ixp_ctx *ctx = crypto_ablkcipher_ctx(tfm);
+	struct ixp_ctx *ctx = crypto_skcipher_ctx(tfm);
 
 	/* the nonce is stored in bytes at end of key */
 	if (key_len < CTR_RFC3686_NONCE_SIZE)
@@ -868,16 +874,16 @@ static int ablk_rfc3686_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
 	return ablk_setkey(tfm, key, key_len);
 }
 
-static int ablk_perform(struct ablkcipher_request *req, int encrypt)
+static int ablk_perform(struct skcipher_request *req, int encrypt)
 {
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct ixp_ctx *ctx = crypto_ablkcipher_ctx(tfm);
-	unsigned ivsize = crypto_ablkcipher_ivsize(tfm);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct ixp_ctx *ctx = crypto_skcipher_ctx(tfm);
+	unsigned ivsize = crypto_skcipher_ivsize(tfm);
 	struct ix_sa_dir *dir;
 	struct crypt_ctl *crypt;
-	unsigned int nbytes = req->nbytes;
+	unsigned int nbytes = req->cryptlen;
 	enum dma_data_direction src_direction = DMA_BIDIRECTIONAL;
-	struct ablk_ctx *req_ctx = ablkcipher_request_ctx(req);
+	struct ablk_ctx *req_ctx = skcipher_request_ctx(req);
 	struct buffer_desc src_hook;
 	struct device *dev = &pdev->dev;
 	gfp_t flags = req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP ?
@@ -902,8 +908,8 @@ static int ablk_perform(struct ablkcipher_request *req, int encrypt)
 	crypt->crypt_offs = 0;
 	crypt->crypt_len = nbytes;
 
-	BUG_ON(ivsize && !req->info);
-	memcpy(crypt->iv, req->info, ivsize);
+	BUG_ON(ivsize && !req->iv);
+	memcpy(crypt->iv, req->iv, ivsize);
 	if (req->src != req->dst) {
 		struct buffer_desc dst_hook;
 		crypt->mode |= NPE_OP_NOT_IN_PLACE;
@@ -941,22 +947,22 @@ static int ablk_perform(struct ablkcipher_request *req, int encrypt)
 	return -ENOMEM;
 }
 
-static int ablk_encrypt(struct ablkcipher_request *req)
+static int ablk_encrypt(struct skcipher_request *req)
 {
 	return ablk_perform(req, 1);
 }
 
-static int ablk_decrypt(struct ablkcipher_request *req)
+static int ablk_decrypt(struct skcipher_request *req)
 {
 	return ablk_perform(req, 0);
 }
 
-static int ablk_rfc3686_crypt(struct ablkcipher_request *req)
+static int ablk_rfc3686_crypt(struct skcipher_request *req)
 {
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct ixp_ctx *ctx = crypto_ablkcipher_ctx(tfm);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct ixp_ctx *ctx = crypto_skcipher_ctx(tfm);
 	u8 iv[CTR_RFC3686_BLOCK_SIZE];
-	u8 *info = req->info;
+	u8 *info = req->iv;
 	int ret;
 
 	/* set up counter block */
@@ -967,9 +973,9 @@ static int ablk_rfc3686_crypt(struct ablkcipher_request *req)
 	*(__be32 *)(iv + CTR_RFC3686_NONCE_SIZE + CTR_RFC3686_IV_SIZE) =
 		cpu_to_be32(1);
 
-	req->info = iv;
+	req->iv = iv;
 	ret = ablk_perform(req, 1);
-	req->info = info;
+	req->iv = info;
 	return ret;
 }
 
@@ -1212,107 +1218,91 @@ static int aead_decrypt(struct aead_request *req)
 static struct ixp_alg ixp4xx_algos[] = {
 {
 	.crypto	= {
-		.cra_name	= "cbc(des)",
-		.cra_blocksize	= DES_BLOCK_SIZE,
-		.cra_u		= { .ablkcipher = {
-			.min_keysize	= DES_KEY_SIZE,
-			.max_keysize	= DES_KEY_SIZE,
-			.ivsize		= DES_BLOCK_SIZE,
-			}
-		}
+		.base.cra_name		= "cbc(des)",
+		.base.cra_blocksize	= DES_BLOCK_SIZE,
+
+		.min_keysize		= DES_KEY_SIZE,
+		.max_keysize		= DES_KEY_SIZE,
+		.ivsize			= DES_BLOCK_SIZE,
 	},
 	.cfg_enc = CIPH_ENCR | MOD_DES | MOD_CBC_ENC | KEYLEN_192,
 	.cfg_dec = CIPH_DECR | MOD_DES | MOD_CBC_DEC | KEYLEN_192,
 
 }, {
 	.crypto	= {
-		.cra_name	= "ecb(des)",
-		.cra_blocksize	= DES_BLOCK_SIZE,
-		.cra_u		= { .ablkcipher = {
-			.min_keysize	= DES_KEY_SIZE,
-			.max_keysize	= DES_KEY_SIZE,
-			}
-		}
+		.base.cra_name		= "ecb(des)",
+		.base.cra_blocksize	= DES_BLOCK_SIZE,
+		.min_keysize		= DES_KEY_SIZE,
+		.max_keysize		= DES_KEY_SIZE,
 	},
 	.cfg_enc = CIPH_ENCR | MOD_DES | MOD_ECB | KEYLEN_192,
 	.cfg_dec = CIPH_DECR | MOD_DES | MOD_ECB | KEYLEN_192,
 }, {
 	.crypto	= {
-		.cra_name	= "cbc(des3_ede)",
-		.cra_blocksize	= DES3_EDE_BLOCK_SIZE,
-		.cra_u		= { .ablkcipher = {
-			.min_keysize	= DES3_EDE_KEY_SIZE,
-			.max_keysize	= DES3_EDE_KEY_SIZE,
-			.ivsize		= DES3_EDE_BLOCK_SIZE,
-			.setkey		= ablk_des3_setkey,
-			}
-		}
+		.base.cra_name		= "cbc(des3_ede)",
+		.base.cra_blocksize	= DES3_EDE_BLOCK_SIZE,
+
+		.min_keysize		= DES3_EDE_KEY_SIZE,
+		.max_keysize		= DES3_EDE_KEY_SIZE,
+		.ivsize			= DES3_EDE_BLOCK_SIZE,
+		.setkey			= ablk_des3_setkey,
 	},
 	.cfg_enc = CIPH_ENCR | MOD_3DES | MOD_CBC_ENC | KEYLEN_192,
 	.cfg_dec = CIPH_DECR | MOD_3DES | MOD_CBC_DEC | KEYLEN_192,
 }, {
 	.crypto	= {
-		.cra_name	= "ecb(des3_ede)",
-		.cra_blocksize	= DES3_EDE_BLOCK_SIZE,
-		.cra_u		= { .ablkcipher = {
-			.min_keysize	= DES3_EDE_KEY_SIZE,
-			.max_keysize	= DES3_EDE_KEY_SIZE,
-			.setkey		= ablk_des3_setkey,
-			}
-		}
+		.base.cra_name		= "ecb(des3_ede)",
+		.base.cra_blocksize	= DES3_EDE_BLOCK_SIZE,
+
+		.min_keysize		= DES3_EDE_KEY_SIZE,
+		.max_keysize		= DES3_EDE_KEY_SIZE,
+		.setkey			= ablk_des3_setkey,
 	},
 	.cfg_enc = CIPH_ENCR | MOD_3DES | MOD_ECB | KEYLEN_192,
 	.cfg_dec = CIPH_DECR | MOD_3DES | MOD_ECB | KEYLEN_192,
 }, {
 	.crypto	= {
-		.cra_name	= "cbc(aes)",
-		.cra_blocksize	= AES_BLOCK_SIZE,
-		.cra_u		= { .ablkcipher = {
-			.min_keysize	= AES_MIN_KEY_SIZE,
-			.max_keysize	= AES_MAX_KEY_SIZE,
-			.ivsize		= AES_BLOCK_SIZE,
-			}
-		}
+		.base.cra_name		= "cbc(aes)",
+		.base.cra_blocksize	= AES_BLOCK_SIZE,
+
+		.min_keysize		= AES_MIN_KEY_SIZE,
+		.max_keysize		= AES_MAX_KEY_SIZE,
+		.ivsize			= AES_BLOCK_SIZE,
 	},
 	.cfg_enc = CIPH_ENCR | MOD_AES | MOD_CBC_ENC,
 	.cfg_dec = CIPH_DECR | MOD_AES | MOD_CBC_DEC,
 }, {
 	.crypto	= {
-		.cra_name	= "ecb(aes)",
-		.cra_blocksize	= AES_BLOCK_SIZE,
-		.cra_u		= { .ablkcipher = {
-			.min_keysize	= AES_MIN_KEY_SIZE,
-			.max_keysize	= AES_MAX_KEY_SIZE,
-			}
-		}
+		.base.cra_name		= "ecb(aes)",
+		.base.cra_blocksize	= AES_BLOCK_SIZE,
+
+		.min_keysize		= AES_MIN_KEY_SIZE,
+		.max_keysize		= AES_MAX_KEY_SIZE,
 	},
 	.cfg_enc = CIPH_ENCR | MOD_AES | MOD_ECB,
 	.cfg_dec = CIPH_DECR | MOD_AES | MOD_ECB,
 }, {
 	.crypto	= {
-		.cra_name	= "ctr(aes)",
-		.cra_blocksize	= AES_BLOCK_SIZE,
-		.cra_u		= { .ablkcipher = {
-			.min_keysize	= AES_MIN_KEY_SIZE,
-			.max_keysize	= AES_MAX_KEY_SIZE,
-			.ivsize		= AES_BLOCK_SIZE,
-			}
-		}
+		.base.cra_name		= "ctr(aes)",
+		.base.cra_blocksize	= 1,
+
+		.min_keysize		= AES_MIN_KEY_SIZE,
+		.max_keysize		= AES_MAX_KEY_SIZE,
+		.ivsize			= AES_BLOCK_SIZE,
 	},
 	.cfg_enc = CIPH_ENCR | MOD_AES | MOD_CTR,
 	.cfg_dec = CIPH_ENCR | MOD_AES | MOD_CTR,
 }, {
 	.crypto	= {
-		.cra_name	= "rfc3686(ctr(aes))",
-		.cra_blocksize	= AES_BLOCK_SIZE,
-		.cra_u		= { .ablkcipher = {
-			.min_keysize	= AES_MIN_KEY_SIZE,
-			.max_keysize	= AES_MAX_KEY_SIZE,
-			.ivsize		= AES_BLOCK_SIZE,
-			.setkey		= ablk_rfc3686_setkey,
-			.encrypt	= ablk_rfc3686_crypt,
-			.decrypt	= ablk_rfc3686_crypt }
-		}
+		.base.cra_name		= "rfc3686(ctr(aes))",
+		.base.cra_blocksize	= 1,
+
+		.min_keysize		= AES_MIN_KEY_SIZE,
+		.max_keysize		= AES_MAX_KEY_SIZE,
+		.ivsize			= AES_BLOCK_SIZE,
+		.setkey			= ablk_rfc3686_setkey,
+		.encrypt		= ablk_rfc3686_crypt,
+		.decrypt		= ablk_rfc3686_crypt,
 	},
 	.cfg_enc = CIPH_ENCR | MOD_AES | MOD_CTR,
 	.cfg_dec = CIPH_ENCR | MOD_AES | MOD_CTR,
@@ -1421,10 +1411,10 @@ static int __init ixp_module_init(void)
 		return err;
 	}
 	for (i=0; i< num; i++) {
-		struct crypto_alg *cra = &ixp4xx_algos[i].crypto;
+		struct skcipher_alg *cra = &ixp4xx_algos[i].crypto;
 
-		if (snprintf(cra->cra_driver_name, CRYPTO_MAX_ALG_NAME,
-			"%s"IXP_POSTFIX, cra->cra_name) >=
+		if (snprintf(cra->base.cra_driver_name, CRYPTO_MAX_ALG_NAME,
+			"%s"IXP_POSTFIX, cra->base.cra_name) >=
 			CRYPTO_MAX_ALG_NAME)
 		{
 			continue;
@@ -1434,26 +1424,24 @@ static int __init ixp_module_init(void)
 		}
 
 		/* block ciphers */
-		cra->cra_type = &crypto_ablkcipher_type;
-		cra->cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-				 CRYPTO_ALG_KERN_DRIVER_ONLY |
-				 CRYPTO_ALG_ASYNC;
-		if (!cra->cra_ablkcipher.setkey)
-			cra->cra_ablkcipher.setkey = ablk_setkey;
-		if (!cra->cra_ablkcipher.encrypt)
-			cra->cra_ablkcipher.encrypt = ablk_encrypt;
-		if (!cra->cra_ablkcipher.decrypt)
-			cra->cra_ablkcipher.decrypt = ablk_decrypt;
-		cra->cra_init = init_tfm_ablk;
-
-		cra->cra_ctxsize = sizeof(struct ixp_ctx);
-		cra->cra_module = THIS_MODULE;
-		cra->cra_alignmask = 3;
-		cra->cra_priority = 300;
-		cra->cra_exit = exit_tfm;
-		if (crypto_register_alg(cra))
+		cra->base.cra_flags = CRYPTO_ALG_KERN_DRIVER_ONLY |
+				      CRYPTO_ALG_ASYNC;
+		if (!cra->setkey)
+			cra->setkey = ablk_setkey;
+		if (!cra->encrypt)
+			cra->encrypt = ablk_encrypt;
+		if (!cra->decrypt)
+			cra->decrypt = ablk_decrypt;
+		cra->init = init_tfm_ablk;
+		cra->exit = exit_tfm_ablk;
+
+		cra->base.cra_ctxsize = sizeof(struct ixp_ctx);
+		cra->base.cra_module = THIS_MODULE;
+		cra->base.cra_alignmask = 3;
+		cra->base.cra_priority = 300;
+		if (crypto_register_skcipher(cra))
 			printk(KERN_ERR "Failed to register '%s'\n",
-				cra->cra_name);
+				cra->base.cra_name);
 		else
 			ixp4xx_algos[i].registered = 1;
 	}
@@ -1504,7 +1492,7 @@ static void __exit ixp_module_exit(void)
 
 	for (i=0; i< num; i++) {
 		if (ixp4xx_algos[i].registered)
-			crypto_unregister_alg(&ixp4xx_algos[i].crypto);
+			crypto_unregister_skcipher(&ixp4xx_algos[i].crypto);
 	}
 	release_ixp_crypto(&pdev->dev);
 	platform_device_unregister(pdev);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
