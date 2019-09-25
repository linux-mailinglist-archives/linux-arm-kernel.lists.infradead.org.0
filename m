Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 397D7BE22E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 18:16:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2nP6748XjrWS2dyN3uBetkx+lc1aZjBedmUNICfdhQ8=; b=L72LEmcJ2xijRy
	Eo4gDehC3wae673sbe9nZYreLfnmqsr0LaQML19jMUKstgpFHZ+56hixSA1opCZRYyrRHivhIi+ir
	cEBLcVB5ZfkvwaMjWzH5kwYvijnA73oTp1HLGMhGu1Kqq8KIKI2RqpA1EC7rx9Z1l/mEzuKA+rthA
	jm1IJ05KsnIs6s6GeJ93sFPynXfCMnwC6l0ahTjFdW4rsbuKaA/B+Mg/ZPEABSogX3sFcg/Ky5Ndl
	zldJ8crhx7pmm24IlkXARESpcugawr8QL5q9PiHLL3kjisQ+AAz94IJPW7rfVXIv/ru+6uFY40znz
	BJst8oszR4Z723LI7Whg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD9yJ-0006pV-Fo; Wed, 25 Sep 2019 16:16:55 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD9vR-0003vR-0s
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 16:14:03 +0000
Received: by mail-wm1-x341.google.com with SMTP id i16so6392926wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 09:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jexsTmRw4CcMhLW8uoTjvTlHKL6BoxHbV8Ic7banI6Y=;
 b=X8mFmd4yLVNY4oJiYyoojIfqERqJgfrNbslNSa6qiRdZuu52PPgOipL4/TapfpnoXV
 Gd4QKCJL4rt9CU5owm2CZPGZ3ZkVz/ALcAokE4W2esJICrSkGlJKLICaUw3eHJHAkXiY
 SHuUYGDildBgadb8Ql/bcmsjs6IAAjM9PBoF9B3SHtJemrn7zXyssy/5BQVgKdarAt6n
 847KhgVDMxkPCoLWrB5m3152Z+RdUF+dCHFnBctXRIeKeMFefvaTfm3rrBq5VJ8/Korj
 jteoF8IIgLkfWN82uVEinwWmn3buqdplcWFX39HbO59xJMQ+hFaynNyQJ2qLQ0xvkwHq
 BpSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jexsTmRw4CcMhLW8uoTjvTlHKL6BoxHbV8Ic7banI6Y=;
 b=XA5472Br7ACHDq5U700o33mvXGNK7nXhLxxi/WRLFIrUg4aQjIOrrGNGegAcuhcgt8
 t38E0Is0R3jwYqq8JOB2aFBQL2tvbhzZcSVamSmtaMqp3koRXjDZR0C6gCpPtHCY9MrQ
 /a42gL9kIN6i4a8NdHjyAT0WEmrEJnef2GYy8nm4pJiVswX+buf5Ec79KECl3NnId6LX
 2WYg6y8JGcVgFKn/JBji9jTIUiSsCFqXb1kl4aVxii90Kswi//SibYxdyQgpe455J3Pc
 Ni2QDMapxD/khXdmuxy8ok1RwJ0nMF+6b2LyJxP12JwaSPPyE4ZLfAqkEUdJjgWkQPCD
 HtUQ==
X-Gm-Message-State: APjAAAVyabXRuNBzV1bWsmo8K5aWFpRdq0fnYrevybRq2n9Pf2fgOE9l
 EcepTAQ44lBffjxTFzT2u0do3w==
X-Google-Smtp-Source: APXvYqyAibRAkTx8Cjw4OYEuyloTPcD0FvaxY4tAD/Tft/xEGSQHog13ymV800nTEmF+zF8thWteFg==
X-Received: by 2002:a1c:3182:: with SMTP id x124mr9125694wmx.168.1569428035523; 
 Wed, 25 Sep 2019 09:13:55 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id o70sm4991085wme.29.2019.09.25.09.13.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 09:13:54 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 06/18] crypto: rfc7539 - switch to shash for Poly1305
Date: Wed, 25 Sep 2019 18:12:43 +0200
Message-Id: <20190925161255.1871-7-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_091357_586028_3F50E123 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
 Samuel Neves <sneves@dei.uc.pt>, Will Deacon <will@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Andy Lutomirski <luto@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The RFC7539 template uses an ahash Poly1305 transformation to implement
the authentication part of the algorithm. Since ahashes operate on
scatterlists only, this forces the RFC7539 driver to allocate scratch
buffers in the request context, to ensure that they are allocated from
the heap.

However, in practice, all Poly1305 implementations available today are
shashes wrapped by the generic ahash->shash wrapper, which means we are
jumping through hoops unnecessarily, especially considering that the
way this driver invokes the ahash (6 consecutive requests for the key,
associated data, padding, ciphertext, more padding and the tail) will
make it very difficult for a true asynchronous implementation to ever
materialize that can operate efficiently in this context.

So now that shashes can operate on scatterlists as well as virtually
mapped buffers, switch the RFC7539 template from ahash to shash for
the Poly1305 transformation. At the same time, switch to using the
ChaCha library to generate the Poly1305 key so that we don't have to
call into the [potentially asynchronous] skcipher twice, with one call
only operating on 32 bytes of data.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 crypto/chacha20poly1305.c | 513 ++++++--------------
 1 file changed, 145 insertions(+), 368 deletions(-)

diff --git a/crypto/chacha20poly1305.c b/crypto/chacha20poly1305.c
index 74e824e537e6..71496a8107f5 100644
--- a/crypto/chacha20poly1305.c
+++ b/crypto/chacha20poly1305.c
@@ -20,53 +20,32 @@
 
 struct chachapoly_instance_ctx {
 	struct crypto_skcipher_spawn chacha;
-	struct crypto_ahash_spawn poly;
+	struct crypto_shash_spawn poly;
 	unsigned int saltlen;
 };
 
 struct chachapoly_ctx {
 	struct crypto_skcipher *chacha;
-	struct crypto_ahash *poly;
+	struct crypto_shash *poly;
+	u32 chacha_key[CHACHA_KEY_SIZE / sizeof(u32)];
 	/* key bytes we use for the ChaCha20 IV */
 	unsigned int saltlen;
 	u8 salt[];
 };
 
-struct poly_req {
-	/* zero byte padding for AD/ciphertext, as needed */
-	u8 pad[POLY1305_BLOCK_SIZE];
-	/* tail data with AD/ciphertext lengths */
-	struct {
-		__le64 assoclen;
-		__le64 cryptlen;
-	} tail;
-	struct scatterlist src[1];
-	struct ahash_request req; /* must be last member */
-};
-
 struct chacha_req {
 	u8 iv[CHACHA_IV_SIZE];
-	struct scatterlist src[1];
 	struct skcipher_request req; /* must be last member */
 };
 
 struct chachapoly_req_ctx {
 	struct scatterlist src[2];
 	struct scatterlist dst[2];
-	/* the key we generate for Poly1305 using Chacha20 */
-	u8 key[POLY1305_KEY_SIZE];
-	/* calculated Poly1305 tag */
-	u8 tag[POLY1305_DIGEST_SIZE];
 	/* length of data to en/decrypt, without ICV */
 	unsigned int cryptlen;
-	/* Actual AD, excluding IV */
-	unsigned int assoclen;
 	/* request flags, with MAY_SLEEP cleared if needed */
 	u32 flags;
-	union {
-		struct poly_req poly;
-		struct chacha_req chacha;
-	} u;
+	struct chacha_req chacha;
 };
 
 static inline void async_done_continue(struct aead_request *req, int err,
@@ -94,43 +73,114 @@ static void chacha_iv(u8 *iv, struct aead_request *req, u32 icb)
 	       CHACHA_IV_SIZE - sizeof(leicb) - ctx->saltlen);
 }
 
-static int poly_verify_tag(struct aead_request *req)
+static int poly_generate_tag(struct aead_request *req, u8 *poly_tag,
+			     struct scatterlist *crypt)
 {
+	struct crypto_aead *tfm = crypto_aead_reqtfm(req);
+	struct chachapoly_ctx *ctx = crypto_aead_ctx(tfm);
 	struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
-	u8 tag[sizeof(rctx->tag)];
+	u32 chacha_state[CHACHA_BLOCK_SIZE / sizeof(u32)];
+	SHASH_DESC_ON_STACK(desc, ctx->poly);
+	u8 poly_key[POLY1305_KEY_SIZE];
+	bool skip_ad_pad, atomic;
+	u8 iv[CHACHA_IV_SIZE];
+	unsigned int assoclen;
+	unsigned int padlen;
+	__le64 tail[4];
+
+	/*
+	 * Take the Poly1305 hash of the entire AD plus ciphertext in one go if
+	 * a) we are not running in ESP mode (which puts data between the AD
+	 *    and the ciphertext in the input scatterlist), and
+	 * b) no padding is required between the AD and the ciphertext, and
+	 * c) the source buffer points to the ciphertext, either because we
+	 *    are decrypting, or because we are encrypting in place.
+	 */
+	if (crypto_aead_ivsize(tfm) == 8) {
+		if (req->assoclen < 8)
+			return -EINVAL;
+		assoclen = req->assoclen - 8;
+		skip_ad_pad = false;
+	} else {
+		assoclen = req->assoclen;
+		skip_ad_pad = !(assoclen % POLY1305_BLOCK_SIZE) &&
+			      (crypt == req->src);
+	}
 
-	scatterwalk_map_and_copy(tag, req->src,
-				 req->assoclen + rctx->cryptlen,
-				 sizeof(tag), 0);
-	if (crypto_memneq(tag, rctx->tag, sizeof(tag)))
-		return -EBADMSG;
+	/* derive the Poly1305 key */
+	chacha_iv(iv, req, 0);
+	chacha_init(chacha_state, ctx->chacha_key, iv);
+	chacha_crypt(chacha_state, poly_key, page_address(ZERO_PAGE(0)),
+		     sizeof(poly_key), 20);
+
+	desc->tfm = ctx->poly;
+	crypto_shash_init(desc);
+	crypto_shash_update(desc, poly_key, sizeof(poly_key));
+
+	atomic = !(rctx->flags & CRYPTO_TFM_REQ_MAY_SLEEP);
+	if (skip_ad_pad) {
+		crypto_shash_update_from_sg(desc, crypt,
+					    assoclen + rctx->cryptlen,
+					    atomic);
+	} else {
+		struct scatterlist sg[2];
+
+		crypto_shash_update_from_sg(desc, req->src, assoclen, atomic);
+
+		padlen = -assoclen % POLY1305_BLOCK_SIZE;
+		if (padlen)
+			crypto_shash_update(desc, page_address(ZERO_PAGE(0)),
+					    padlen);
+
+		crypt = scatterwalk_ffwd(sg, crypt, req->assoclen);
+		crypto_shash_update_from_sg(desc, crypt, rctx->cryptlen,
+					    atomic);
+	}
+
+	tail[0] = 0;
+	tail[1] = 0;
+	tail[2] = cpu_to_le64(assoclen);
+	tail[3] = cpu_to_le64(rctx->cryptlen);
+
+	padlen = -rctx->cryptlen % POLY1305_BLOCK_SIZE;
+	crypto_shash_finup(desc, (u8 *)tail + (2 * sizeof(__le64) - padlen),
+			   padlen + 2 * sizeof(__le64), poly_tag);
 	return 0;
 }
 
-static int poly_copy_tag(struct aead_request *req)
+static int poly_append_tag(struct aead_request *req)
 {
 	struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
+	u8 poly_tag[POLY1305_DIGEST_SIZE];
+	int err;
 
-	scatterwalk_map_and_copy(rctx->tag, req->dst,
+	err = poly_generate_tag(req, poly_tag, req->dst);
+	if (err)
+		return err;
+
+	scatterwalk_map_and_copy(poly_tag, req->dst,
 				 req->assoclen + rctx->cryptlen,
-				 sizeof(rctx->tag), 1);
+				 sizeof(poly_tag), 1);
 	return 0;
 }
 
-static void chacha_decrypt_done(struct crypto_async_request *areq, int err)
+static void chacha_encrypt_done(struct crypto_async_request *areq, int err)
 {
-	async_done_continue(areq->data, err, poly_verify_tag);
+	async_done_continue(areq->data, err, poly_append_tag);
 }
 
-static int chacha_decrypt(struct aead_request *req)
+static int chachapoly_encrypt(struct aead_request *req)
 {
 	struct chachapoly_ctx *ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
 	struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
-	struct chacha_req *creq = &rctx->u.chacha;
+	struct chacha_req *creq = &rctx->chacha;
 	struct scatterlist *src, *dst;
 	int err;
 
-	if (rctx->cryptlen == 0)
+	rctx->cryptlen = req->cryptlen;
+	rctx->flags = aead_request_flags(req);
+
+	if (req->cryptlen == 0)
 		goto skip;
 
 	chacha_iv(creq->iv, req, 1);
@@ -141,273 +191,48 @@ static int chacha_decrypt(struct aead_request *req)
 		dst = scatterwalk_ffwd(rctx->dst, req->dst, req->assoclen);
 
 	skcipher_request_set_callback(&creq->req, rctx->flags,
-				      chacha_decrypt_done, req);
+				      chacha_encrypt_done, req);
 	skcipher_request_set_tfm(&creq->req, ctx->chacha);
 	skcipher_request_set_crypt(&creq->req, src, dst,
-				   rctx->cryptlen, creq->iv);
-	err = crypto_skcipher_decrypt(&creq->req);
+				   req->cryptlen, creq->iv);
+	err = crypto_skcipher_encrypt(&creq->req);
 	if (err)
 		return err;
 
 skip:
-	return poly_verify_tag(req);
-}
-
-static int poly_tail_continue(struct aead_request *req)
-{
-	struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
-
-	if (rctx->cryptlen == req->cryptlen) /* encrypting */
-		return poly_copy_tag(req);
-
-	return chacha_decrypt(req);
-}
-
-static void poly_tail_done(struct crypto_async_request *areq, int err)
-{
-	async_done_continue(areq->data, err, poly_tail_continue);
-}
-
-static int poly_tail(struct aead_request *req)
-{
-	struct crypto_aead *tfm = crypto_aead_reqtfm(req);
-	struct chachapoly_ctx *ctx = crypto_aead_ctx(tfm);
-	struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
-	struct poly_req *preq = &rctx->u.poly;
-	int err;
-
-	preq->tail.assoclen = cpu_to_le64(rctx->assoclen);
-	preq->tail.cryptlen = cpu_to_le64(rctx->cryptlen);
-	sg_init_one(preq->src, &preq->tail, sizeof(preq->tail));
-
-	ahash_request_set_callback(&preq->req, rctx->flags,
-				   poly_tail_done, req);
-	ahash_request_set_tfm(&preq->req, ctx->poly);
-	ahash_request_set_crypt(&preq->req, preq->src,
-				rctx->tag, sizeof(preq->tail));
-
-	err = crypto_ahash_finup(&preq->req);
-	if (err)
-		return err;
-
-	return poly_tail_continue(req);
-}
-
-static void poly_cipherpad_done(struct crypto_async_request *areq, int err)
-{
-	async_done_continue(areq->data, err, poly_tail);
-}
-
-static int poly_cipherpad(struct aead_request *req)
-{
-	struct chachapoly_ctx *ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
-	struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
-	struct poly_req *preq = &rctx->u.poly;
-	unsigned int padlen;
-	int err;
-
-	padlen = -rctx->cryptlen % POLY1305_BLOCK_SIZE;
-	memset(preq->pad, 0, sizeof(preq->pad));
-	sg_init_one(preq->src, preq->pad, padlen);
-
-	ahash_request_set_callback(&preq->req, rctx->flags,
-				   poly_cipherpad_done, req);
-	ahash_request_set_tfm(&preq->req, ctx->poly);
-	ahash_request_set_crypt(&preq->req, preq->src, NULL, padlen);
-
-	err = crypto_ahash_update(&preq->req);
-	if (err)
-		return err;
-
-	return poly_tail(req);
-}
-
-static void poly_cipher_done(struct crypto_async_request *areq, int err)
-{
-	async_done_continue(areq->data, err, poly_cipherpad);
-}
-
-static int poly_cipher(struct aead_request *req)
-{
-	struct chachapoly_ctx *ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
-	struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
-	struct poly_req *preq = &rctx->u.poly;
-	struct scatterlist *crypt = req->src;
-	int err;
-
-	if (rctx->cryptlen == req->cryptlen) /* encrypting */
-		crypt = req->dst;
-
-	crypt = scatterwalk_ffwd(rctx->src, crypt, req->assoclen);
-
-	ahash_request_set_callback(&preq->req, rctx->flags,
-				   poly_cipher_done, req);
-	ahash_request_set_tfm(&preq->req, ctx->poly);
-	ahash_request_set_crypt(&preq->req, crypt, NULL, rctx->cryptlen);
-
-	err = crypto_ahash_update(&preq->req);
-	if (err)
-		return err;
-
-	return poly_cipherpad(req);
-}
-
-static void poly_adpad_done(struct crypto_async_request *areq, int err)
-{
-	async_done_continue(areq->data, err, poly_cipher);
-}
-
-static int poly_adpad(struct aead_request *req)
-{
-	struct chachapoly_ctx *ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
-	struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
-	struct poly_req *preq = &rctx->u.poly;
-	unsigned int padlen;
-	int err;
-
-	padlen = -rctx->assoclen % POLY1305_BLOCK_SIZE;
-	memset(preq->pad, 0, sizeof(preq->pad));
-	sg_init_one(preq->src, preq->pad, padlen);
-
-	ahash_request_set_callback(&preq->req, rctx->flags,
-				   poly_adpad_done, req);
-	ahash_request_set_tfm(&preq->req, ctx->poly);
-	ahash_request_set_crypt(&preq->req, preq->src, NULL, padlen);
-
-	err = crypto_ahash_update(&preq->req);
-	if (err)
-		return err;
-
-	return poly_cipher(req);
-}
-
-static void poly_ad_done(struct crypto_async_request *areq, int err)
-{
-	async_done_continue(areq->data, err, poly_adpad);
-}
-
-static int poly_ad(struct aead_request *req)
-{
-	struct chachapoly_ctx *ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
-	struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
-	struct poly_req *preq = &rctx->u.poly;
-	int err;
-
-	ahash_request_set_callback(&preq->req, rctx->flags,
-				   poly_ad_done, req);
-	ahash_request_set_tfm(&preq->req, ctx->poly);
-	ahash_request_set_crypt(&preq->req, req->src, NULL, rctx->assoclen);
-
-	err = crypto_ahash_update(&preq->req);
-	if (err)
-		return err;
-
-	return poly_adpad(req);
-}
-
-static void poly_setkey_done(struct crypto_async_request *areq, int err)
-{
-	async_done_continue(areq->data, err, poly_ad);
-}
-
-static int poly_setkey(struct aead_request *req)
-{
-	struct chachapoly_ctx *ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
-	struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
-	struct poly_req *preq = &rctx->u.poly;
-	int err;
-
-	sg_init_one(preq->src, rctx->key, sizeof(rctx->key));
-
-	ahash_request_set_callback(&preq->req, rctx->flags,
-				   poly_setkey_done, req);
-	ahash_request_set_tfm(&preq->req, ctx->poly);
-	ahash_request_set_crypt(&preq->req, preq->src, NULL, sizeof(rctx->key));
-
-	err = crypto_ahash_update(&preq->req);
-	if (err)
-		return err;
-
-	return poly_ad(req);
+	return poly_append_tag(req);
 }
 
-static void poly_init_done(struct crypto_async_request *areq, int err)
+static void chacha_decrypt_done(struct crypto_async_request *areq, int err)
 {
-	async_done_continue(areq->data, err, poly_setkey);
+	aead_request_complete(areq->data, err);
 }
 
-static int poly_init(struct aead_request *req)
+static int chachapoly_decrypt(struct aead_request *req)
 {
 	struct chachapoly_ctx *ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
 	struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
-	struct poly_req *preq = &rctx->u.poly;
-	int err;
-
-	ahash_request_set_callback(&preq->req, rctx->flags,
-				   poly_init_done, req);
-	ahash_request_set_tfm(&preq->req, ctx->poly);
-
-	err = crypto_ahash_init(&preq->req);
-	if (err)
-		return err;
-
-	return poly_setkey(req);
-}
-
-static void poly_genkey_done(struct crypto_async_request *areq, int err)
-{
-	async_done_continue(areq->data, err, poly_init);
-}
-
-static int poly_genkey(struct aead_request *req)
-{
-	struct crypto_aead *tfm = crypto_aead_reqtfm(req);
-	struct chachapoly_ctx *ctx = crypto_aead_ctx(tfm);
-	struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
-	struct chacha_req *creq = &rctx->u.chacha;
+	struct chacha_req *creq = &rctx->chacha;
+	u8 calculated_tag[POLY1305_DIGEST_SIZE];
+	u8 provided_tag[POLY1305_DIGEST_SIZE];
+	struct scatterlist *src, *dst;
 	int err;
 
-	rctx->assoclen = req->assoclen;
-
-	if (crypto_aead_ivsize(tfm) == 8) {
-		if (rctx->assoclen < 8)
-			return -EINVAL;
-		rctx->assoclen -= 8;
-	}
-
-	memset(rctx->key, 0, sizeof(rctx->key));
-	sg_init_one(creq->src, rctx->key, sizeof(rctx->key));
-
-	chacha_iv(creq->iv, req, 0);
-
-	skcipher_request_set_callback(&creq->req, rctx->flags,
-				      poly_genkey_done, req);
-	skcipher_request_set_tfm(&creq->req, ctx->chacha);
-	skcipher_request_set_crypt(&creq->req, creq->src, creq->src,
-				   POLY1305_KEY_SIZE, creq->iv);
+	rctx->cryptlen = req->cryptlen - POLY1305_DIGEST_SIZE;
+	rctx->flags = aead_request_flags(req);
 
-	err = crypto_skcipher_decrypt(&creq->req);
+	err = poly_generate_tag(req, calculated_tag, req->src);
 	if (err)
 		return err;
+	scatterwalk_map_and_copy(provided_tag, req->src,
+				 req->assoclen + rctx->cryptlen,
+				 sizeof(provided_tag), 0);
 
-	return poly_init(req);
-}
-
-static void chacha_encrypt_done(struct crypto_async_request *areq, int err)
-{
-	async_done_continue(areq->data, err, poly_genkey);
-}
-
-static int chacha_encrypt(struct aead_request *req)
-{
-	struct chachapoly_ctx *ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
-	struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
-	struct chacha_req *creq = &rctx->u.chacha;
-	struct scatterlist *src, *dst;
-	int err;
+	if (crypto_memneq(calculated_tag, provided_tag, sizeof(provided_tag)))
+		return -EBADMSG;
 
-	if (req->cryptlen == 0)
-		goto skip;
+	if (rctx->cryptlen == 0)
+		return 0;
 
 	chacha_iv(creq->iv, req, 1);
 
@@ -417,60 +242,11 @@ static int chacha_encrypt(struct aead_request *req)
 		dst = scatterwalk_ffwd(rctx->dst, req->dst, req->assoclen);
 
 	skcipher_request_set_callback(&creq->req, rctx->flags,
-				      chacha_encrypt_done, req);
+				      chacha_decrypt_done, req);
 	skcipher_request_set_tfm(&creq->req, ctx->chacha);
 	skcipher_request_set_crypt(&creq->req, src, dst,
-				   req->cryptlen, creq->iv);
-	err = crypto_skcipher_encrypt(&creq->req);
-	if (err)
-		return err;
-
-skip:
-	return poly_genkey(req);
-}
-
-static int chachapoly_encrypt(struct aead_request *req)
-{
-	struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
-
-	rctx->cryptlen = req->cryptlen;
-	rctx->flags = aead_request_flags(req);
-
-	/* encrypt call chain:
-	 * - chacha_encrypt/done()
-	 * - poly_genkey/done()
-	 * - poly_init/done()
-	 * - poly_setkey/done()
-	 * - poly_ad/done()
-	 * - poly_adpad/done()
-	 * - poly_cipher/done()
-	 * - poly_cipherpad/done()
-	 * - poly_tail/done/continue()
-	 * - poly_copy_tag()
-	 */
-	return chacha_encrypt(req);
-}
-
-static int chachapoly_decrypt(struct aead_request *req)
-{
-	struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
-
-	rctx->cryptlen = req->cryptlen - POLY1305_DIGEST_SIZE;
-	rctx->flags = aead_request_flags(req);
-
-	/* decrypt call chain:
-	 * - poly_genkey/done()
-	 * - poly_init/done()
-	 * - poly_setkey/done()
-	 * - poly_ad/done()
-	 * - poly_adpad/done()
-	 * - poly_cipher/done()
-	 * - poly_cipherpad/done()
-	 * - poly_tail/done/continue()
-	 * - chacha_decrypt/done()
-	 * - poly_verify_tag()
-	 */
-	return poly_genkey(req);
+				   rctx->cryptlen, creq->iv);
+	return crypto_skcipher_decrypt(&creq->req);
 }
 
 static int chachapoly_setkey(struct crypto_aead *aead, const u8 *key,
@@ -482,6 +258,15 @@ static int chachapoly_setkey(struct crypto_aead *aead, const u8 *key,
 	if (keylen != ctx->saltlen + CHACHA_KEY_SIZE)
 		return -EINVAL;
 
+	ctx->chacha_key[0] = get_unaligned_le32(key);
+	ctx->chacha_key[1] = get_unaligned_le32(key + 4);
+	ctx->chacha_key[2] = get_unaligned_le32(key + 8);
+	ctx->chacha_key[3] = get_unaligned_le32(key + 12);
+	ctx->chacha_key[4] = get_unaligned_le32(key + 16);
+	ctx->chacha_key[5] = get_unaligned_le32(key + 20);
+	ctx->chacha_key[6] = get_unaligned_le32(key + 24);
+	ctx->chacha_key[7] = get_unaligned_le32(key + 28);
+
 	keylen -= ctx->saltlen;
 	memcpy(ctx->salt, key + keylen, ctx->saltlen);
 
@@ -510,16 +295,16 @@ static int chachapoly_init(struct crypto_aead *tfm)
 	struct chachapoly_instance_ctx *ictx = aead_instance_ctx(inst);
 	struct chachapoly_ctx *ctx = crypto_aead_ctx(tfm);
 	struct crypto_skcipher *chacha;
-	struct crypto_ahash *poly;
+	struct crypto_shash *poly;
 	unsigned long align;
 
-	poly = crypto_spawn_ahash(&ictx->poly);
+	poly = crypto_spawn_shash(&ictx->poly);
 	if (IS_ERR(poly))
 		return PTR_ERR(poly);
 
 	chacha = crypto_spawn_skcipher(&ictx->chacha);
 	if (IS_ERR(chacha)) {
-		crypto_free_ahash(poly);
+		crypto_free_shash(poly);
 		return PTR_ERR(chacha);
 	}
 
@@ -531,13 +316,10 @@ static int chachapoly_init(struct crypto_aead *tfm)
 	align &= ~(crypto_tfm_ctx_alignment() - 1);
 	crypto_aead_set_reqsize(
 		tfm,
-		align + offsetof(struct chachapoly_req_ctx, u) +
-		max(offsetof(struct chacha_req, req) +
-		    sizeof(struct skcipher_request) +
-		    crypto_skcipher_reqsize(chacha),
-		    offsetof(struct poly_req, req) +
-		    sizeof(struct ahash_request) +
-		    crypto_ahash_reqsize(poly)));
+		align +
+		offsetof(struct chachapoly_req_ctx, chacha.req) +
+		sizeof(struct skcipher_request) +
+		crypto_skcipher_reqsize(chacha));
 
 	return 0;
 }
@@ -546,7 +328,7 @@ static void chachapoly_exit(struct crypto_aead *tfm)
 {
 	struct chachapoly_ctx *ctx = crypto_aead_ctx(tfm);
 
-	crypto_free_ahash(ctx->poly);
+	crypto_free_shash(ctx->poly);
 	crypto_free_skcipher(ctx->chacha);
 }
 
@@ -555,7 +337,7 @@ static void chachapoly_free(struct aead_instance *inst)
 	struct chachapoly_instance_ctx *ctx = aead_instance_ctx(inst);
 
 	crypto_drop_skcipher(&ctx->chacha);
-	crypto_drop_ahash(&ctx->poly);
+	crypto_drop_shash(&ctx->poly);
 	kfree(inst);
 }
 
@@ -566,9 +348,9 @@ static int chachapoly_create(struct crypto_template *tmpl, struct rtattr **tb,
 	struct aead_instance *inst;
 	struct skcipher_alg *chacha;
 	struct crypto_alg *poly;
-	struct hash_alg_common *poly_hash;
+	struct shash_alg *poly_hash;
 	struct chachapoly_instance_ctx *ctx;
-	const char *chacha_name, *poly_name;
+	const char *chacha_name;
 	int err;
 
 	if (ivsize > CHACHAPOLY_IV_SIZE)
@@ -584,18 +366,10 @@ static int chachapoly_create(struct crypto_template *tmpl, struct rtattr **tb,
 	chacha_name = crypto_attr_alg_name(tb[1]);
 	if (IS_ERR(chacha_name))
 		return PTR_ERR(chacha_name);
-	poly_name = crypto_attr_alg_name(tb[2]);
-	if (IS_ERR(poly_name))
-		return PTR_ERR(poly_name);
-
-	poly = crypto_find_alg(poly_name, &crypto_ahash_type,
-			       CRYPTO_ALG_TYPE_HASH,
-			       CRYPTO_ALG_TYPE_AHASH_MASK |
-			       crypto_requires_sync(algt->type,
-						    algt->mask));
-	if (IS_ERR(poly))
-		return PTR_ERR(poly);
-	poly_hash = __crypto_hash_alg_common(poly);
+	poly_hash = shash_attr_alg(tb[2], 0, 0);
+	if (IS_ERR(poly_hash))
+		return PTR_ERR(poly_hash);
+	poly = &poly_hash->base;
 
 	err = -EINVAL;
 	if (poly_hash->digestsize != POLY1305_DIGEST_SIZE)
@@ -608,7 +382,7 @@ static int chachapoly_create(struct crypto_template *tmpl, struct rtattr **tb,
 
 	ctx = aead_instance_ctx(inst);
 	ctx->saltlen = CHACHAPOLY_IV_SIZE - ivsize;
-	err = crypto_init_ahash_spawn(&ctx->poly, poly_hash,
+	err = crypto_init_shash_spawn(&ctx->poly, poly_hash,
 				      aead_crypto_instance(inst));
 	if (err)
 		goto err_free_inst;
@@ -630,10 +404,13 @@ static int chachapoly_create(struct crypto_template *tmpl, struct rtattr **tb,
 	if (chacha->base.cra_blocksize != 1)
 		goto out_drop_chacha;
 
+	if (strcmp(chacha->base.cra_name, "chacha20") ||
+	    strcmp(poly->cra_name, "poly1305"))
+		goto out_drop_chacha;
+
 	err = -ENAMETOOLONG;
 	if (snprintf(inst->alg.base.cra_name, CRYPTO_MAX_ALG_NAME,
-		     "%s(%s,%s)", name, chacha->base.cra_name,
-		     poly->cra_name) >= CRYPTO_MAX_ALG_NAME)
+		     "%s(chacha20,poly1305)", name) >= CRYPTO_MAX_ALG_NAME)
 		goto out_drop_chacha;
 	if (snprintf(inst->alg.base.cra_driver_name, CRYPTO_MAX_ALG_NAME,
 		     "%s(%s,%s)", name, chacha->base.cra_driver_name,
@@ -672,7 +449,7 @@ static int chachapoly_create(struct crypto_template *tmpl, struct rtattr **tb,
 out_drop_chacha:
 	crypto_drop_skcipher(&ctx->chacha);
 err_drop_poly:
-	crypto_drop_ahash(&ctx->poly);
+	crypto_drop_shash(&ctx->poly);
 err_free_inst:
 	kfree(inst);
 	goto out_put_poly;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
