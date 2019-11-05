Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CFCEFEA5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:33:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Taj4Joye+yjH9yaLdFNJen10Rm0bsYPX35V01Sw0mi0=; b=YyTBIu0tCjV0io
	n3UMZubwLxIlyRs8aIS65+e4wuLkWBsKy0CEO7M38PHtVfnvc4repukoMrVNu/RO//lOxVhfRSZ1M
	/5k7qNlbgGrqeNGQED48GsYJHLBGJA0phIvgNbWXSpNAkLW+yLn+98Rm9gQT3xCQYMl191dySfGkP
	mgxbu+NavL3yKSUyODQbUibO/V5PXTtfLmPmF9QQgDUQn+HBqfB0+oZAnjxQTqBZkjTXG+WPTJBOJ
	Tyj5/GQwcipk8YIbGMwYd/oEPq5JUdFAtrTnC6gKxu1ctg2JP0KcZ0UMR+58qGcoMVxky4m1l9ged
	Pf9ZeBdxA4YZxLjDYWmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRyxE-0004ei-3P; Tue, 05 Nov 2019 13:33:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRytN-0000WL-HB
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:29:10 +0000
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr [92.154.90.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E9F721D7D;
 Tue,  5 Nov 2019 13:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572960544;
 bh=4ZmMc3s37SZ5hPxUYZs8A4gdoCec+90zjt1YYHnIVWE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=q+usVMwHpkhkKs9te2pxMvB8N7b461c3WlPdP3FeaR6NK0G15bhma/KOVUd3f3UV5
 uARWD1bOTAXZb+IT77qqltDidkQfNwnPIs/GBAkE8NiJYiuutdbHjZDaejqtcm7MQ6
 smtpkMKfACzft52V0y2DOi/4TzghLRtu8QU9pUAw=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v3 12/29] crypto: cavium/cpt - switch to skcipher API
Date: Tue,  5 Nov 2019 14:28:09 +0100
Message-Id: <20191105132826.1838-13-ardb@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191105132826.1838-1-ardb@kernel.org>
References: <20191105132826.1838-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_052905_655159_71D2E978 
X-CRM114-Status: GOOD (  14.60  )
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
 drivers/crypto/cavium/cpt/cptvf_algs.c | 292 +++++++++-----------
 1 file changed, 134 insertions(+), 158 deletions(-)

diff --git a/drivers/crypto/cavium/cpt/cptvf_algs.c b/drivers/crypto/cavium/cpt/cptvf_algs.c
index 596ce28b957d..1ad66677d88e 100644
--- a/drivers/crypto/cavium/cpt/cptvf_algs.c
+++ b/drivers/crypto/cavium/cpt/cptvf_algs.c
@@ -92,15 +92,15 @@ static inline void update_output_data(struct cpt_request_info *req_info,
 	}
 }
 
-static inline u32 create_ctx_hdr(struct ablkcipher_request *req, u32 enc,
+static inline u32 create_ctx_hdr(struct skcipher_request *req, u32 enc,
 				 u32 *argcnt)
 {
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct cvm_enc_ctx *ctx = crypto_ablkcipher_ctx(tfm);
-	struct cvm_req_ctx *rctx = ablkcipher_request_ctx(req);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct cvm_enc_ctx *ctx = crypto_skcipher_ctx(tfm);
+	struct cvm_req_ctx *rctx = skcipher_request_ctx(req);
 	struct fc_context *fctx = &rctx->fctx;
 	u64 *offset_control = &rctx->control_word;
-	u32 enc_iv_len = crypto_ablkcipher_ivsize(tfm);
+	u32 enc_iv_len = crypto_skcipher_ivsize(tfm);
 	struct cpt_request_info *req_info = &rctx->cpt_req;
 	u64 *ctrl_flags = NULL;
 
@@ -115,7 +115,7 @@ static inline u32 create_ctx_hdr(struct ablkcipher_request *req, u32 enc,
 	else
 		req_info->req.opcode.s.minor = 3;
 
-	req_info->req.param1 = req->nbytes; /* Encryption Data length */
+	req_info->req.param1 = req->cryptlen; /* Encryption Data length */
 	req_info->req.param2 = 0; /*Auth data length */
 
 	fctx->enc.enc_ctrl.e.enc_cipher = ctx->cipher_type;
@@ -147,32 +147,32 @@ static inline u32 create_ctx_hdr(struct ablkcipher_request *req, u32 enc,
 	return 0;
 }
 
-static inline u32 create_input_list(struct ablkcipher_request  *req, u32 enc,
+static inline u32 create_input_list(struct skcipher_request  *req, u32 enc,
 				    u32 enc_iv_len)
 {
-	struct cvm_req_ctx *rctx = ablkcipher_request_ctx(req);
+	struct cvm_req_ctx *rctx = skcipher_request_ctx(req);
 	struct cpt_request_info *req_info = &rctx->cpt_req;
 	u32 argcnt =  0;
 
 	create_ctx_hdr(req, enc, &argcnt);
-	update_input_iv(req_info, req->info, enc_iv_len, &argcnt);
-	update_input_data(req_info, req->src, req->nbytes, &argcnt);
+	update_input_iv(req_info, req->iv, enc_iv_len, &argcnt);
+	update_input_data(req_info, req->src, req->cryptlen, &argcnt);
 	req_info->incnt = argcnt;
 
 	return 0;
 }
 
-static inline void store_cb_info(struct ablkcipher_request *req,
+static inline void store_cb_info(struct skcipher_request *req,
 				 struct cpt_request_info *req_info)
 {
 	req_info->callback = (void *)cvm_callback;
 	req_info->callback_arg = (void *)&req->base;
 }
 
-static inline void create_output_list(struct ablkcipher_request *req,
+static inline void create_output_list(struct skcipher_request *req,
 				      u32 enc_iv_len)
 {
-	struct cvm_req_ctx *rctx = ablkcipher_request_ctx(req);
+	struct cvm_req_ctx *rctx = skcipher_request_ctx(req);
 	struct cpt_request_info *req_info = &rctx->cpt_req;
 	u32 argcnt = 0;
 
@@ -184,16 +184,16 @@ static inline void create_output_list(struct ablkcipher_request *req,
 	 * [ 16 Bytes/     [   Request Enc/Dec/ DATA Len AES CBC ]
 	 */
 	/* Reading IV information */
-	update_output_iv(req_info, req->info, enc_iv_len, &argcnt);
-	update_output_data(req_info, req->dst, req->nbytes, &argcnt);
+	update_output_iv(req_info, req->iv, enc_iv_len, &argcnt);
+	update_output_data(req_info, req->dst, req->cryptlen, &argcnt);
 	req_info->outcnt = argcnt;
 }
 
-static inline int cvm_enc_dec(struct ablkcipher_request *req, u32 enc)
+static inline int cvm_enc_dec(struct skcipher_request *req, u32 enc)
 {
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct cvm_req_ctx *rctx = ablkcipher_request_ctx(req);
-	u32 enc_iv_len = crypto_ablkcipher_ivsize(tfm);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct cvm_req_ctx *rctx = skcipher_request_ctx(req);
+	u32 enc_iv_len = crypto_skcipher_ivsize(tfm);
 	struct fc_context *fctx = &rctx->fctx;
 	struct cpt_request_info *req_info = &rctx->cpt_req;
 	void *cdev = NULL;
@@ -217,20 +217,20 @@ static inline int cvm_enc_dec(struct ablkcipher_request *req, u32 enc)
 		return -EINPROGRESS;
 }
 
-static int cvm_encrypt(struct ablkcipher_request *req)
+static int cvm_encrypt(struct skcipher_request *req)
 {
 	return cvm_enc_dec(req, true);
 }
 
-static int cvm_decrypt(struct ablkcipher_request *req)
+static int cvm_decrypt(struct skcipher_request *req)
 {
 	return cvm_enc_dec(req, false);
 }
 
-static int cvm_xts_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int cvm_xts_setkey(struct crypto_skcipher *cipher, const u8 *key,
 		   u32 keylen)
 {
-	struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
+	struct crypto_tfm *tfm = crypto_skcipher_tfm(cipher);
 	struct cvm_enc_ctx *ctx = crypto_tfm_ctx(tfm);
 	int err;
 	const u8 *key1 = key;
@@ -284,10 +284,10 @@ static int cvm_validate_keylen(struct cvm_enc_ctx *ctx, u32 keylen)
 	return -EINVAL;
 }
 
-static int cvm_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int cvm_setkey(struct crypto_skcipher *cipher, const u8 *key,
 		      u32 keylen, u8 cipher_type)
 {
-	struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
+	struct crypto_tfm *tfm = crypto_skcipher_tfm(cipher);
 	struct cvm_enc_ctx *ctx = crypto_tfm_ctx(tfm);
 
 	ctx->cipher_type = cipher_type;
@@ -295,183 +295,159 @@ static int cvm_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
 		memcpy(ctx->enc_key, key, keylen);
 		return 0;
 	} else {
-		crypto_ablkcipher_set_flags(cipher,
+		crypto_skcipher_set_flags(cipher,
 					    CRYPTO_TFM_RES_BAD_KEY_LEN);
 		return -EINVAL;
 	}
 }
 
-static int cvm_cbc_aes_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int cvm_cbc_aes_setkey(struct crypto_skcipher *cipher, const u8 *key,
 			      u32 keylen)
 {
 	return cvm_setkey(cipher, key, keylen, AES_CBC);
 }
 
-static int cvm_ecb_aes_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int cvm_ecb_aes_setkey(struct crypto_skcipher *cipher, const u8 *key,
 			      u32 keylen)
 {
 	return cvm_setkey(cipher, key, keylen, AES_ECB);
 }
 
-static int cvm_cfb_aes_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int cvm_cfb_aes_setkey(struct crypto_skcipher *cipher, const u8 *key,
 			      u32 keylen)
 {
 	return cvm_setkey(cipher, key, keylen, AES_CFB);
 }
 
-static int cvm_cbc_des3_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int cvm_cbc_des3_setkey(struct crypto_skcipher *cipher, const u8 *key,
 			       u32 keylen)
 {
-	return verify_ablkcipher_des3_key(cipher, key) ?:
+	return verify_skcipher_des3_key(cipher, key) ?:
 	       cvm_setkey(cipher, key, keylen, DES3_CBC);
 }
 
-static int cvm_ecb_des3_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int cvm_ecb_des3_setkey(struct crypto_skcipher *cipher, const u8 *key,
 			       u32 keylen)
 {
-	return verify_ablkcipher_des3_key(cipher, key) ?:
+	return verify_skcipher_des3_key(cipher, key) ?:
 	       cvm_setkey(cipher, key, keylen, DES3_ECB);
 }
 
-static int cvm_enc_dec_init(struct crypto_tfm *tfm)
+static int cvm_enc_dec_init(struct crypto_skcipher *tfm)
 {
-	tfm->crt_ablkcipher.reqsize = sizeof(struct cvm_req_ctx);
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct cvm_req_ctx));
+
 	return 0;
 }
 
-static struct crypto_alg algs[] = { {
-	.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize = AES_BLOCK_SIZE,
-	.cra_ctxsize = sizeof(struct cvm_enc_ctx),
-	.cra_alignmask = 7,
-	.cra_priority = 4001,
-	.cra_name = "xts(aes)",
-	.cra_driver_name = "cavium-xts-aes",
-	.cra_type = &crypto_ablkcipher_type,
-	.cra_u = {
-		.ablkcipher = {
-			.ivsize = AES_BLOCK_SIZE,
-			.min_keysize = 2 * AES_MIN_KEY_SIZE,
-			.max_keysize = 2 * AES_MAX_KEY_SIZE,
-			.setkey = cvm_xts_setkey,
-			.encrypt = cvm_encrypt,
-			.decrypt = cvm_decrypt,
-		},
-	},
-	.cra_init = cvm_enc_dec_init,
-	.cra_module = THIS_MODULE,
+static struct skcipher_alg algs[] = { {
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= AES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct cvm_enc_ctx),
+	.base.cra_alignmask	= 7,
+	.base.cra_priority	= 4001,
+	.base.cra_name		= "xts(aes)",
+	.base.cra_driver_name	= "cavium-xts-aes",
+	.base.cra_module	= THIS_MODULE,
+
+	.ivsize			= AES_BLOCK_SIZE,
+	.min_keysize		= 2 * AES_MIN_KEY_SIZE,
+	.max_keysize		= 2 * AES_MAX_KEY_SIZE,
+	.setkey			= cvm_xts_setkey,
+	.encrypt		= cvm_encrypt,
+	.decrypt		= cvm_decrypt,
+	.init			= cvm_enc_dec_init,
 }, {
-	.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize = AES_BLOCK_SIZE,
-	.cra_ctxsize = sizeof(struct cvm_enc_ctx),
-	.cra_alignmask = 7,
-	.cra_priority = 4001,
-	.cra_name = "cbc(aes)",
-	.cra_driver_name = "cavium-cbc-aes",
-	.cra_type = &crypto_ablkcipher_type,
-	.cra_u = {
-		.ablkcipher = {
-			.ivsize = AES_BLOCK_SIZE,
-			.min_keysize = AES_MIN_KEY_SIZE,
-			.max_keysize = AES_MAX_KEY_SIZE,
-			.setkey = cvm_cbc_aes_setkey,
-			.encrypt = cvm_encrypt,
-			.decrypt = cvm_decrypt,
-		},
-	},
-	.cra_init = cvm_enc_dec_init,
-	.cra_module = THIS_MODULE,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= AES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct cvm_enc_ctx),
+	.base.cra_alignmask	= 7,
+	.base.cra_priority	= 4001,
+	.base.cra_name		= "cbc(aes)",
+	.base.cra_driver_name	= "cavium-cbc-aes",
+	.base.cra_module	= THIS_MODULE,
+
+	.ivsize			= AES_BLOCK_SIZE,
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.setkey			= cvm_cbc_aes_setkey,
+	.encrypt		= cvm_encrypt,
+	.decrypt		= cvm_decrypt,
+	.init			= cvm_enc_dec_init,
 }, {
-	.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize = AES_BLOCK_SIZE,
-	.cra_ctxsize = sizeof(struct cvm_enc_ctx),
-	.cra_alignmask = 7,
-	.cra_priority = 4001,
-	.cra_name = "ecb(aes)",
-	.cra_driver_name = "cavium-ecb-aes",
-	.cra_type = &crypto_ablkcipher_type,
-	.cra_u = {
-		.ablkcipher = {
-			.ivsize = AES_BLOCK_SIZE,
-			.min_keysize = AES_MIN_KEY_SIZE,
-			.max_keysize = AES_MAX_KEY_SIZE,
-			.setkey = cvm_ecb_aes_setkey,
-			.encrypt = cvm_encrypt,
-			.decrypt = cvm_decrypt,
-		},
-	},
-	.cra_init = cvm_enc_dec_init,
-	.cra_module = THIS_MODULE,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= AES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct cvm_enc_ctx),
+	.base.cra_alignmask	= 7,
+	.base.cra_priority	= 4001,
+	.base.cra_name		= "ecb(aes)",
+	.base.cra_driver_name	= "cavium-ecb-aes",
+	.base.cra_module	= THIS_MODULE,
+
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.setkey			= cvm_ecb_aes_setkey,
+	.encrypt		= cvm_encrypt,
+	.decrypt		= cvm_decrypt,
+	.init			= cvm_enc_dec_init,
 }, {
-	.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize = AES_BLOCK_SIZE,
-	.cra_ctxsize = sizeof(struct cvm_enc_ctx),
-	.cra_alignmask = 7,
-	.cra_priority = 4001,
-	.cra_name = "cfb(aes)",
-	.cra_driver_name = "cavium-cfb-aes",
-	.cra_type = &crypto_ablkcipher_type,
-	.cra_u = {
-		.ablkcipher = {
-			.ivsize = AES_BLOCK_SIZE,
-			.min_keysize = AES_MIN_KEY_SIZE,
-			.max_keysize = AES_MAX_KEY_SIZE,
-			.setkey = cvm_cfb_aes_setkey,
-			.encrypt = cvm_encrypt,
-			.decrypt = cvm_decrypt,
-		},
-	},
-	.cra_init = cvm_enc_dec_init,
-	.cra_module = THIS_MODULE,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= AES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct cvm_enc_ctx),
+	.base.cra_alignmask	= 7,
+	.base.cra_priority	= 4001,
+	.base.cra_name		= "cfb(aes)",
+	.base.cra_driver_name	= "cavium-cfb-aes",
+	.base.cra_module	= THIS_MODULE,
+
+	.ivsize			= AES_BLOCK_SIZE,
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.setkey			= cvm_cfb_aes_setkey,
+	.encrypt		= cvm_encrypt,
+	.decrypt		= cvm_decrypt,
+	.init			= cvm_enc_dec_init,
 }, {
-	.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize = DES3_EDE_BLOCK_SIZE,
-	.cra_ctxsize = sizeof(struct cvm_des3_ctx),
-	.cra_alignmask = 7,
-	.cra_priority = 4001,
-	.cra_name = "cbc(des3_ede)",
-	.cra_driver_name = "cavium-cbc-des3_ede",
-	.cra_type = &crypto_ablkcipher_type,
-	.cra_u = {
-		.ablkcipher = {
-			.min_keysize = DES3_EDE_KEY_SIZE,
-			.max_keysize = DES3_EDE_KEY_SIZE,
-			.ivsize = DES_BLOCK_SIZE,
-			.setkey = cvm_cbc_des3_setkey,
-			.encrypt = cvm_encrypt,
-			.decrypt = cvm_decrypt,
-		},
-	},
-	.cra_init = cvm_enc_dec_init,
-	.cra_module = THIS_MODULE,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= DES3_EDE_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct cvm_des3_ctx),
+	.base.cra_alignmask	= 7,
+	.base.cra_priority	= 4001,
+	.base.cra_name		= "cbc(des3_ede)",
+	.base.cra_driver_name	= "cavium-cbc-des3_ede",
+	.base.cra_module	= THIS_MODULE,
+
+	.min_keysize		= DES3_EDE_KEY_SIZE,
+	.max_keysize		= DES3_EDE_KEY_SIZE,
+	.ivsize			= DES_BLOCK_SIZE,
+	.setkey			= cvm_cbc_des3_setkey,
+	.encrypt		= cvm_encrypt,
+	.decrypt		= cvm_decrypt,
+	.init			= cvm_enc_dec_init,
 }, {
-	.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize = DES3_EDE_BLOCK_SIZE,
-	.cra_ctxsize = sizeof(struct cvm_des3_ctx),
-	.cra_alignmask = 7,
-	.cra_priority = 4001,
-	.cra_name = "ecb(des3_ede)",
-	.cra_driver_name = "cavium-ecb-des3_ede",
-	.cra_type = &crypto_ablkcipher_type,
-	.cra_u = {
-		.ablkcipher = {
-			.min_keysize = DES3_EDE_KEY_SIZE,
-			.max_keysize = DES3_EDE_KEY_SIZE,
-			.ivsize = DES_BLOCK_SIZE,
-			.setkey = cvm_ecb_des3_setkey,
-			.encrypt = cvm_encrypt,
-			.decrypt = cvm_decrypt,
-		},
-	},
-	.cra_init = cvm_enc_dec_init,
-	.cra_module = THIS_MODULE,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= DES3_EDE_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct cvm_des3_ctx),
+	.base.cra_alignmask	= 7,
+	.base.cra_priority	= 4001,
+	.base.cra_name		= "ecb(des3_ede)",
+	.base.cra_driver_name	= "cavium-ecb-des3_ede",
+	.base.cra_module	= THIS_MODULE,
+
+	.min_keysize		= DES3_EDE_KEY_SIZE,
+	.max_keysize		= DES3_EDE_KEY_SIZE,
+	.ivsize			= DES_BLOCK_SIZE,
+	.setkey			= cvm_ecb_des3_setkey,
+	.encrypt		= cvm_encrypt,
+	.decrypt		= cvm_decrypt,
+	.init			= cvm_enc_dec_init,
 } };
 
 static inline int cav_register_algs(void)
 {
 	int err = 0;
 
-	err = crypto_register_algs(algs, ARRAY_SIZE(algs));
+	err = crypto_register_skciphers(algs, ARRAY_SIZE(algs));
 	if (err)
 		return err;
 
@@ -480,7 +456,7 @@ static inline int cav_register_algs(void)
 
 static inline void cav_unregister_algs(void)
 {
-	crypto_unregister_algs(algs, ARRAY_SIZE(algs));
+	crypto_unregister_skciphers(algs, ARRAY_SIZE(algs));
 }
 
 int cvm_crypto_init(struct cpt_vf *cptvf)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
