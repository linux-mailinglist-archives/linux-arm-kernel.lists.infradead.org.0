Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91346E3445
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 15:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x75bCysJDOrU5wG/arpXCVx/s2n6w+lMgKDNOz0tQaw=; b=hnDhVTuyrYNUFH
	0sHSAe3Yci5c5Y9sJTWMgdTREmV/dfT0ZlSP/LsxKTRUDzO8MdLg/uXdtHY7sEJvDWuAKO8lVPihZ
	NJQCWFWI50uH6fYUAOEHSxIvI4QPBavMnP41sBRvtuI+IoNW1lVvWM6P6IQjRQ95TecSSnnHqdTUQ
	1r3y5fzsFEqC7s/I0gaCaqMuDUuC6KWU0TkdrrpnN6FFL5YH39M5yL+D6l+Ncp0b9q6kt8J6qoLy8
	p5Uwxtm/yJdDdnKL8jV5ej1VtXWp74dgCMmWSVygNCleDLYrLJwY9f9ZFQBhWrlIj1ONiM0vXTeK6
	/XToWogpCyf/32O3XrRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNdEM-0000wg-JR; Thu, 24 Oct 2019 13:32:46 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNd6I-0000nC-HJ
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 13:24:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id c2so20843852wrr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 06:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=F96jKzWertERfGibWWWAj+auGlDCmMYLLof5VlwatCo=;
 b=zA/ycU2o66Iw4D26FWTDSs1RBBMNAZ+qN3iPzvFW7sT7Cmy4wE+9eHO4cIgosWmY5u
 KEF3dgci6PA0sY61WkWZ8CFGGbgHvOc6czpNHq6pxigWrIS8cELdYgEaOiwr1RLGs/8D
 7lr9sNHFFc64WWK3QZ9jAEy8SJiXxpTjx03G/VWo5mYG/OQM/9tXj64fuQQZay3Xkoeo
 W0QxfOxKI53oluUG0a4z7msHhtCS7G20LaZBITFrly6kPvnOZ6mq1yNGr9VAzxugB1Dm
 lHUG3DoLLY9LtCGcsxNBUEKDKBoftCNd6798XYbRbXrYXVA4Lh4PzCZ4OG8kB044ci83
 5qIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=F96jKzWertERfGibWWWAj+auGlDCmMYLLof5VlwatCo=;
 b=skveQjah1CtTVROt2A3IajMGoI7CGfrzitjUrv7Bgz5F4z0kNYmcJ0ZAJSokHEGAaW
 0307K4Tg/wThnLx+//ThRC77bBEmzbuMPsoD83oYYV/sPjZkndMHDfN7AJ791EIVfo/o
 QEyVKY3FYDyb/ZRSo3skHkaAcux99jb1qPdOuAttP9K8z+AATfWJ2m5PejuCBLFO//cP
 iA1t8aRSfb5/kYT9Z1q6BGOLErOoxkXpLyfBWK2MLPCHQSIPYRbCWXRlMUNhG9kbJrtQ
 Je1u/TscV4SM1Q1mhTCiKHdD/r3MW6rWgM+UmrhshYwDiOiIDSDWzAzGr0I/Noz4Z4LM
 x/Vg==
X-Gm-Message-State: APjAAAVSHqyXKxNJSoXn0gjzMcni5kFw4kv7b5XS+v0B1mHN8DBmYjf6
 oWdYHuF0q5LT+UzLiA/Rf41u9w==
X-Google-Smtp-Source: APXvYqymwQkhyqq6TdupTeNPpJdhApiqTZ0q+RsRoWx+igx/DJPqN6ke+/3l/u0v/XvGhppwdYDHUA==
X-Received: by 2002:adf:e34b:: with SMTP id n11mr3748456wrj.250.1571923464778; 
 Thu, 24 Oct 2019 06:24:24 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id e3sm2346310wme.36.2019.10.24.06.24.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 06:24:23 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 22/27] crypto: niagara2 - switch to skcipher API
Date: Thu, 24 Oct 2019 15:23:40 +0200
Message-Id: <20191024132345.5236-23-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
References: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_062426_735915_CEFDA7CA 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: "David S. Miller" <davem@davemloft.net>, Eric Biggers <ebiggers@google.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
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

Acked-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/crypto/n2_core.c | 194 ++++++++++----------
 1 file changed, 96 insertions(+), 98 deletions(-)

diff --git a/drivers/crypto/n2_core.c b/drivers/crypto/n2_core.c
index dc15b06e96ab..e040912f790e 100644
--- a/drivers/crypto/n2_core.c
+++ b/drivers/crypto/n2_core.c
@@ -23,6 +23,7 @@
 #include <linux/sched.h>
 
 #include <crypto/internal/hash.h>
+#include <crypto/internal/skcipher.h>
 #include <crypto/scatterwalk.h>
 #include <crypto/algapi.h>
 
@@ -657,7 +658,7 @@ static int n2_hmac_async_digest(struct ahash_request *req)
 				  ctx->hash_key_len);
 }
 
-struct n2_cipher_context {
+struct n2_skcipher_context {
 	int			key_len;
 	int			enc_type;
 	union {
@@ -683,7 +684,7 @@ struct n2_crypto_chunk {
 };
 
 struct n2_request_context {
-	struct ablkcipher_walk	walk;
+	struct skcipher_walk	walk;
 	struct list_head	chunk_list;
 	struct n2_crypto_chunk	chunk;
 	u8			temp_iv[16];
@@ -708,29 +709,29 @@ struct n2_request_context {
  * is not a valid sequence.
  */
 
-struct n2_cipher_alg {
+struct n2_skcipher_alg {
 	struct list_head	entry;
 	u8			enc_type;
-	struct crypto_alg	alg;
+	struct skcipher_alg	skcipher;
 };
 
-static inline struct n2_cipher_alg *n2_cipher_alg(struct crypto_tfm *tfm)
+static inline struct n2_skcipher_alg *n2_skcipher_alg(struct crypto_skcipher *tfm)
 {
-	struct crypto_alg *alg = tfm->__crt_alg;
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
 
-	return container_of(alg, struct n2_cipher_alg, alg);
+	return container_of(alg, struct n2_skcipher_alg, skcipher);
 }
 
-struct n2_cipher_request_context {
-	struct ablkcipher_walk	walk;
+struct n2_skcipher_request_context {
+	struct skcipher_walk	walk;
 };
 
-static int n2_aes_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int n2_aes_setkey(struct crypto_skcipher *skcipher, const u8 *key,
 			 unsigned int keylen)
 {
-	struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
-	struct n2_cipher_context *ctx = crypto_tfm_ctx(tfm);
-	struct n2_cipher_alg *n2alg = n2_cipher_alg(tfm);
+	struct crypto_tfm *tfm = crypto_skcipher_tfm(skcipher);
+	struct n2_skcipher_context *ctx = crypto_tfm_ctx(tfm);
+	struct n2_skcipher_alg *n2alg = n2_skcipher_alg(skcipher);
 
 	ctx->enc_type = (n2alg->enc_type & ENC_TYPE_CHAINING_MASK);
 
@@ -745,7 +746,7 @@ static int n2_aes_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
 		ctx->enc_type |= ENC_TYPE_ALG_AES256;
 		break;
 	default:
-		crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
+		crypto_skcipher_set_flags(skcipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
 		return -EINVAL;
 	}
 
@@ -754,15 +755,15 @@ static int n2_aes_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
 	return 0;
 }
 
-static int n2_des_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int n2_des_setkey(struct crypto_skcipher *skcipher, const u8 *key,
 			 unsigned int keylen)
 {
-	struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
-	struct n2_cipher_context *ctx = crypto_tfm_ctx(tfm);
-	struct n2_cipher_alg *n2alg = n2_cipher_alg(tfm);
+	struct crypto_tfm *tfm = crypto_skcipher_tfm(skcipher);
+	struct n2_skcipher_context *ctx = crypto_tfm_ctx(tfm);
+	struct n2_skcipher_alg *n2alg = n2_skcipher_alg(skcipher);
 	int err;
 
-	err = verify_ablkcipher_des_key(cipher, key);
+	err = verify_skcipher_des_key(skcipher, key);
 	if (err)
 		return err;
 
@@ -773,15 +774,15 @@ static int n2_des_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
 	return 0;
 }
 
-static int n2_3des_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int n2_3des_setkey(struct crypto_skcipher *skcipher, const u8 *key,
 			  unsigned int keylen)
 {
-	struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
-	struct n2_cipher_context *ctx = crypto_tfm_ctx(tfm);
-	struct n2_cipher_alg *n2alg = n2_cipher_alg(tfm);
+	struct crypto_tfm *tfm = crypto_skcipher_tfm(skcipher);
+	struct n2_skcipher_context *ctx = crypto_tfm_ctx(tfm);
+	struct n2_skcipher_alg *n2alg = n2_skcipher_alg(skcipher);
 	int err;
 
-	err = verify_ablkcipher_des3_key(cipher, key);
+	err = verify_skcipher_des3_key(skcipher, key);
 	if (err)
 		return err;
 
@@ -792,12 +793,12 @@ static int n2_3des_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
 	return 0;
 }
 
-static int n2_arc4_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int n2_arc4_setkey(struct crypto_skcipher *skcipher, const u8 *key,
 			  unsigned int keylen)
 {
-	struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
-	struct n2_cipher_context *ctx = crypto_tfm_ctx(tfm);
-	struct n2_cipher_alg *n2alg = n2_cipher_alg(tfm);
+	struct crypto_tfm *tfm = crypto_skcipher_tfm(skcipher);
+	struct n2_skcipher_context *ctx = crypto_tfm_ctx(tfm);
+	struct n2_skcipher_alg *n2alg = n2_skcipher_alg(skcipher);
 	u8 *s = ctx->key.arc4;
 	u8 *x = s + 256;
 	u8 *y = x + 1;
@@ -822,7 +823,7 @@ static int n2_arc4_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
 	return 0;
 }
 
-static inline int cipher_descriptor_len(int nbytes, unsigned int block_size)
+static inline int skcipher_descriptor_len(int nbytes, unsigned int block_size)
 {
 	int this_len = nbytes;
 
@@ -830,10 +831,11 @@ static inline int cipher_descriptor_len(int nbytes, unsigned int block_size)
 	return this_len > (1 << 16) ? (1 << 16) : this_len;
 }
 
-static int __n2_crypt_chunk(struct crypto_tfm *tfm, struct n2_crypto_chunk *cp,
+static int __n2_crypt_chunk(struct crypto_skcipher *skcipher,
+			    struct n2_crypto_chunk *cp,
 			    struct spu_queue *qp, bool encrypt)
 {
-	struct n2_cipher_context *ctx = crypto_tfm_ctx(tfm);
+	struct n2_skcipher_context *ctx = crypto_skcipher_ctx(skcipher);
 	struct cwq_initial_entry *ent;
 	bool in_place;
 	int i;
@@ -877,18 +879,17 @@ static int __n2_crypt_chunk(struct crypto_tfm *tfm, struct n2_crypto_chunk *cp,
 	return (spu_queue_submit(qp, ent) != HV_EOK) ? -EINVAL : 0;
 }
 
-static int n2_compute_chunks(struct ablkcipher_request *req)
+static int n2_compute_chunks(struct skcipher_request *req)
 {
-	struct n2_request_context *rctx = ablkcipher_request_ctx(req);
-	struct ablkcipher_walk *walk = &rctx->walk;
+	struct n2_request_context *rctx = skcipher_request_ctx(req);
+	struct skcipher_walk *walk = &rctx->walk;
 	struct n2_crypto_chunk *chunk;
 	unsigned long dest_prev;
 	unsigned int tot_len;
 	bool prev_in_place;
 	int err, nbytes;
 
-	ablkcipher_walk_init(walk, req->dst, req->src, req->nbytes);
-	err = ablkcipher_walk_phys(req, walk);
+	err = skcipher_walk_async(walk, req);
 	if (err)
 		return err;
 
@@ -910,12 +911,12 @@ static int n2_compute_chunks(struct ablkcipher_request *req)
 		bool in_place;
 		int this_len;
 
-		src_paddr = (page_to_phys(walk->src.page) +
-			     walk->src.offset);
-		dest_paddr = (page_to_phys(walk->dst.page) +
-			      walk->dst.offset);
+		src_paddr = (page_to_phys(walk->src.phys.page) +
+			     walk->src.phys.offset);
+		dest_paddr = (page_to_phys(walk->dst.phys.page) +
+			      walk->dst.phys.offset);
 		in_place = (src_paddr == dest_paddr);
-		this_len = cipher_descriptor_len(nbytes, walk->blocksize);
+		this_len = skcipher_descriptor_len(nbytes, walk->blocksize);
 
 		if (chunk->arr_len != 0) {
 			if (in_place != prev_in_place ||
@@ -946,7 +947,7 @@ static int n2_compute_chunks(struct ablkcipher_request *req)
 		prev_in_place = in_place;
 		tot_len += this_len;
 
-		err = ablkcipher_walk_done(req, walk, nbytes - this_len);
+		err = skcipher_walk_done(walk, nbytes - this_len);
 		if (err)
 			break;
 	}
@@ -958,15 +959,14 @@ static int n2_compute_chunks(struct ablkcipher_request *req)
 	return err;
 }
 
-static void n2_chunk_complete(struct ablkcipher_request *req, void *final_iv)
+static void n2_chunk_complete(struct skcipher_request *req, void *final_iv)
 {
-	struct n2_request_context *rctx = ablkcipher_request_ctx(req);
+	struct n2_request_context *rctx = skcipher_request_ctx(req);
 	struct n2_crypto_chunk *c, *tmp;
 
 	if (final_iv)
 		memcpy(rctx->walk.iv, final_iv, rctx->walk.blocksize);
 
-	ablkcipher_walk_complete(&rctx->walk);
 	list_for_each_entry_safe(c, tmp, &rctx->chunk_list, entry) {
 		list_del(&c->entry);
 		if (unlikely(c != &rctx->chunk))
@@ -975,10 +975,10 @@ static void n2_chunk_complete(struct ablkcipher_request *req, void *final_iv)
 
 }
 
-static int n2_do_ecb(struct ablkcipher_request *req, bool encrypt)
+static int n2_do_ecb(struct skcipher_request *req, bool encrypt)
 {
-	struct n2_request_context *rctx = ablkcipher_request_ctx(req);
-	struct crypto_tfm *tfm = req->base.tfm;
+	struct n2_request_context *rctx = skcipher_request_ctx(req);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 	int err = n2_compute_chunks(req);
 	struct n2_crypto_chunk *c, *tmp;
 	unsigned long flags, hv_ret;
@@ -1017,20 +1017,20 @@ static int n2_do_ecb(struct ablkcipher_request *req, bool encrypt)
 	return err;
 }
 
-static int n2_encrypt_ecb(struct ablkcipher_request *req)
+static int n2_encrypt_ecb(struct skcipher_request *req)
 {
 	return n2_do_ecb(req, true);
 }
 
-static int n2_decrypt_ecb(struct ablkcipher_request *req)
+static int n2_decrypt_ecb(struct skcipher_request *req)
 {
 	return n2_do_ecb(req, false);
 }
 
-static int n2_do_chaining(struct ablkcipher_request *req, bool encrypt)
+static int n2_do_chaining(struct skcipher_request *req, bool encrypt)
 {
-	struct n2_request_context *rctx = ablkcipher_request_ctx(req);
-	struct crypto_tfm *tfm = req->base.tfm;
+	struct n2_request_context *rctx = skcipher_request_ctx(req);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 	unsigned long flags, hv_ret, iv_paddr;
 	int err = n2_compute_chunks(req);
 	struct n2_crypto_chunk *c, *tmp;
@@ -1107,32 +1107,32 @@ static int n2_do_chaining(struct ablkcipher_request *req, bool encrypt)
 	return err;
 }
 
-static int n2_encrypt_chaining(struct ablkcipher_request *req)
+static int n2_encrypt_chaining(struct skcipher_request *req)
 {
 	return n2_do_chaining(req, true);
 }
 
-static int n2_decrypt_chaining(struct ablkcipher_request *req)
+static int n2_decrypt_chaining(struct skcipher_request *req)
 {
 	return n2_do_chaining(req, false);
 }
 
-struct n2_cipher_tmpl {
+struct n2_skcipher_tmpl {
 	const char		*name;
 	const char		*drv_name;
 	u8			block_size;
 	u8			enc_type;
-	struct ablkcipher_alg	ablkcipher;
+	struct skcipher_alg	skcipher;
 };
 
-static const struct n2_cipher_tmpl cipher_tmpls[] = {
+static const struct n2_skcipher_tmpl skcipher_tmpls[] = {
 	/* ARC4: only ECB is supported (chaining bits ignored) */
 	{	.name		= "ecb(arc4)",
 		.drv_name	= "ecb-arc4",
 		.block_size	= 1,
 		.enc_type	= (ENC_TYPE_ALG_RC4_STREAM |
 				   ENC_TYPE_CHAINING_ECB),
-		.ablkcipher	= {
+		.skcipher	= {
 			.min_keysize	= 1,
 			.max_keysize	= 256,
 			.setkey		= n2_arc4_setkey,
@@ -1147,7 +1147,7 @@ static const struct n2_cipher_tmpl cipher_tmpls[] = {
 		.block_size	= DES_BLOCK_SIZE,
 		.enc_type	= (ENC_TYPE_ALG_DES |
 				   ENC_TYPE_CHAINING_ECB),
-		.ablkcipher	= {
+		.skcipher	= {
 			.min_keysize	= DES_KEY_SIZE,
 			.max_keysize	= DES_KEY_SIZE,
 			.setkey		= n2_des_setkey,
@@ -1160,7 +1160,7 @@ static const struct n2_cipher_tmpl cipher_tmpls[] = {
 		.block_size	= DES_BLOCK_SIZE,
 		.enc_type	= (ENC_TYPE_ALG_DES |
 				   ENC_TYPE_CHAINING_CBC),
-		.ablkcipher	= {
+		.skcipher	= {
 			.ivsize		= DES_BLOCK_SIZE,
 			.min_keysize	= DES_KEY_SIZE,
 			.max_keysize	= DES_KEY_SIZE,
@@ -1174,7 +1174,7 @@ static const struct n2_cipher_tmpl cipher_tmpls[] = {
 		.block_size	= DES_BLOCK_SIZE,
 		.enc_type	= (ENC_TYPE_ALG_DES |
 				   ENC_TYPE_CHAINING_CFB),
-		.ablkcipher	= {
+		.skcipher	= {
 			.min_keysize	= DES_KEY_SIZE,
 			.max_keysize	= DES_KEY_SIZE,
 			.setkey		= n2_des_setkey,
@@ -1189,7 +1189,7 @@ static const struct n2_cipher_tmpl cipher_tmpls[] = {
 		.block_size	= DES_BLOCK_SIZE,
 		.enc_type	= (ENC_TYPE_ALG_3DES |
 				   ENC_TYPE_CHAINING_ECB),
-		.ablkcipher	= {
+		.skcipher	= {
 			.min_keysize	= 3 * DES_KEY_SIZE,
 			.max_keysize	= 3 * DES_KEY_SIZE,
 			.setkey		= n2_3des_setkey,
@@ -1202,7 +1202,7 @@ static const struct n2_cipher_tmpl cipher_tmpls[] = {
 		.block_size	= DES_BLOCK_SIZE,
 		.enc_type	= (ENC_TYPE_ALG_3DES |
 				   ENC_TYPE_CHAINING_CBC),
-		.ablkcipher	= {
+		.skcipher	= {
 			.ivsize		= DES_BLOCK_SIZE,
 			.min_keysize	= 3 * DES_KEY_SIZE,
 			.max_keysize	= 3 * DES_KEY_SIZE,
@@ -1216,7 +1216,7 @@ static const struct n2_cipher_tmpl cipher_tmpls[] = {
 		.block_size	= DES_BLOCK_SIZE,
 		.enc_type	= (ENC_TYPE_ALG_3DES |
 				   ENC_TYPE_CHAINING_CFB),
-		.ablkcipher	= {
+		.skcipher	= {
 			.min_keysize	= 3 * DES_KEY_SIZE,
 			.max_keysize	= 3 * DES_KEY_SIZE,
 			.setkey		= n2_3des_setkey,
@@ -1230,7 +1230,7 @@ static const struct n2_cipher_tmpl cipher_tmpls[] = {
 		.block_size	= AES_BLOCK_SIZE,
 		.enc_type	= (ENC_TYPE_ALG_AES128 |
 				   ENC_TYPE_CHAINING_ECB),
-		.ablkcipher	= {
+		.skcipher	= {
 			.min_keysize	= AES_MIN_KEY_SIZE,
 			.max_keysize	= AES_MAX_KEY_SIZE,
 			.setkey		= n2_aes_setkey,
@@ -1243,7 +1243,7 @@ static const struct n2_cipher_tmpl cipher_tmpls[] = {
 		.block_size	= AES_BLOCK_SIZE,
 		.enc_type	= (ENC_TYPE_ALG_AES128 |
 				   ENC_TYPE_CHAINING_CBC),
-		.ablkcipher	= {
+		.skcipher	= {
 			.ivsize		= AES_BLOCK_SIZE,
 			.min_keysize	= AES_MIN_KEY_SIZE,
 			.max_keysize	= AES_MAX_KEY_SIZE,
@@ -1257,7 +1257,7 @@ static const struct n2_cipher_tmpl cipher_tmpls[] = {
 		.block_size	= AES_BLOCK_SIZE,
 		.enc_type	= (ENC_TYPE_ALG_AES128 |
 				   ENC_TYPE_CHAINING_COUNTER),
-		.ablkcipher	= {
+		.skcipher	= {
 			.ivsize		= AES_BLOCK_SIZE,
 			.min_keysize	= AES_MIN_KEY_SIZE,
 			.max_keysize	= AES_MAX_KEY_SIZE,
@@ -1268,9 +1268,9 @@ static const struct n2_cipher_tmpl cipher_tmpls[] = {
 	},
 
 };
-#define NUM_CIPHER_TMPLS ARRAY_SIZE(cipher_tmpls)
+#define NUM_CIPHER_TMPLS ARRAY_SIZE(skcipher_tmpls)
 
-static LIST_HEAD(cipher_algs);
+static LIST_HEAD(skcipher_algs);
 
 struct n2_hash_tmpl {
 	const char	*name;
@@ -1344,14 +1344,14 @@ static int algs_registered;
 
 static void __n2_unregister_algs(void)
 {
-	struct n2_cipher_alg *cipher, *cipher_tmp;
+	struct n2_skcipher_alg *skcipher, *skcipher_tmp;
 	struct n2_ahash_alg *alg, *alg_tmp;
 	struct n2_hmac_alg *hmac, *hmac_tmp;
 
-	list_for_each_entry_safe(cipher, cipher_tmp, &cipher_algs, entry) {
-		crypto_unregister_alg(&cipher->alg);
-		list_del(&cipher->entry);
-		kfree(cipher);
+	list_for_each_entry_safe(skcipher, skcipher_tmp, &skcipher_algs, entry) {
+		crypto_unregister_skcipher(&skcipher->skcipher);
+		list_del(&skcipher->entry);
+		kfree(skcipher);
 	}
 	list_for_each_entry_safe(hmac, hmac_tmp, &hmac_algs, derived.entry) {
 		crypto_unregister_ahash(&hmac->derived.alg);
@@ -1365,44 +1365,42 @@ static void __n2_unregister_algs(void)
 	}
 }
 
-static int n2_cipher_cra_init(struct crypto_tfm *tfm)
+static int n2_skcipher_init_tfm(struct crypto_skcipher *tfm)
 {
-	tfm->crt_ablkcipher.reqsize = sizeof(struct n2_request_context);
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct n2_request_context));
 	return 0;
 }
 
-static int __n2_register_one_cipher(const struct n2_cipher_tmpl *tmpl)
+static int __n2_register_one_skcipher(const struct n2_skcipher_tmpl *tmpl)
 {
-	struct n2_cipher_alg *p = kzalloc(sizeof(*p), GFP_KERNEL);
-	struct crypto_alg *alg;
+	struct n2_skcipher_alg *p = kzalloc(sizeof(*p), GFP_KERNEL);
+	struct skcipher_alg *alg;
 	int err;
 
 	if (!p)
 		return -ENOMEM;
 
-	alg = &p->alg;
+	alg = &p->skcipher;
+	*alg = tmpl->skcipher;
 
-	snprintf(alg->cra_name, CRYPTO_MAX_ALG_NAME, "%s", tmpl->name);
-	snprintf(alg->cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s-n2", tmpl->drv_name);
-	alg->cra_priority = N2_CRA_PRIORITY;
-	alg->cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-			 CRYPTO_ALG_KERN_DRIVER_ONLY | CRYPTO_ALG_ASYNC;
-	alg->cra_blocksize = tmpl->block_size;
+	snprintf(alg->base.cra_name, CRYPTO_MAX_ALG_NAME, "%s", tmpl->name);
+	snprintf(alg->base.cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s-n2", tmpl->drv_name);
+	alg->base.cra_priority = N2_CRA_PRIORITY;
+	alg->base.cra_flags = CRYPTO_ALG_KERN_DRIVER_ONLY | CRYPTO_ALG_ASYNC;
+	alg->base.cra_blocksize = tmpl->block_size;
 	p->enc_type = tmpl->enc_type;
-	alg->cra_ctxsize = sizeof(struct n2_cipher_context);
-	alg->cra_type = &crypto_ablkcipher_type;
-	alg->cra_u.ablkcipher = tmpl->ablkcipher;
-	alg->cra_init = n2_cipher_cra_init;
-	alg->cra_module = THIS_MODULE;
-
-	list_add(&p->entry, &cipher_algs);
-	err = crypto_register_alg(alg);
+	alg->base.cra_ctxsize = sizeof(struct n2_skcipher_context);
+	alg->base.cra_module = THIS_MODULE;
+	alg->init = n2_skcipher_init_tfm;
+
+	list_add(&p->entry, &skcipher_algs);
+	err = crypto_register_skcipher(alg);
 	if (err) {
-		pr_err("%s alg registration failed\n", alg->cra_name);
+		pr_err("%s alg registration failed\n", alg->base.cra_name);
 		list_del(&p->entry);
 		kfree(p);
 	} else {
-		pr_info("%s alg registered\n", alg->cra_name);
+		pr_info("%s alg registered\n", alg->base.cra_name);
 	}
 	return err;
 }
@@ -1517,7 +1515,7 @@ static int n2_register_algs(void)
 		}
 	}
 	for (i = 0; i < NUM_CIPHER_TMPLS; i++) {
-		err = __n2_register_one_cipher(&cipher_tmpls[i]);
+		err = __n2_register_one_skcipher(&skcipher_tmpls[i]);
 		if (err) {
 			__n2_unregister_algs();
 			goto out;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
