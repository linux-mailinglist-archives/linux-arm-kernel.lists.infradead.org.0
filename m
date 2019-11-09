Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C032F6092
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 18:16:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=acqpGTu13X8XTY1SZbQEr0hsM2rqgW8Jv/o5oPchUZk=; b=cvaanZE/oyBh0CsFm4YV12zCpX
	LJxwLLi20nC26BFLcyOfqbHxQvNfwOMDRhE1G1bl9K7tBQ5ZD3+Kne+TYGWGOPgarS9ggMjO2T9aU
	REormdabgpwYhMC7ND4iXLias5V13uC/UQ0+T/1wg9Hw73vYGKNIyxlICQkmr/8M9ytookoootand
	tjShCGV8tdx0isU4RWy3U9X9xibuEtd7LpcUM8GsLUEBtsV1bG6jJiFP62J0CeaY308SwlGvLkp2o
	7S8NKwAyuAA5BueTb5gR0gpMiz8YloZSYPJz8aHi71iLRKeUAIq/YUGAEyZKloULZv4FZDT1fk7wf
	6pKxByLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTULV-0001Lr-IR; Sat, 09 Nov 2019 17:16:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTUGV-0004mq-Nm
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 17:11:21 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 385D9207FF;
 Sat,  9 Nov 2019 17:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573319470;
 bh=0WGs0Yfxix9/73SqvzCaFwuzwBEDUHAqzLlfQxXw0Hk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=s0Qi0dSBK/WAogJR9XyssAptdqMhyjaurggt6DMU/tkEym7OgcPg2juCZ0djWBRFc
 oeJUwThCUbehu5USdspG6x/OCDl967UY9I4TSd8hNV1H3Pi+9GC4IFNe9XfPf9fSR7
 ILe04Fhoi9FSyu+nRI+TKDu0LGzYi+NK0N3IhMFc=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v4 14/29] crypto: hifn - switch to skcipher API
Date: Sat,  9 Nov 2019 18:09:39 +0100
Message-Id: <20191109170954.756-15-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191109170954.756-1-ardb@kernel.org>
References: <20191109170954.756-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_091112_010123_C6247D4E 
X-CRM114-Status: GOOD (  16.34  )
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

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/crypto/hifn_795x.c | 183 ++++++++++----------
 1 file changed, 92 insertions(+), 91 deletions(-)

diff --git a/drivers/crypto/hifn_795x.c b/drivers/crypto/hifn_795x.c
index a18e62df68d9..4e7323884ae3 100644
--- a/drivers/crypto/hifn_795x.c
+++ b/drivers/crypto/hifn_795x.c
@@ -22,6 +22,7 @@
 
 #include <crypto/algapi.h>
 #include <crypto/internal/des.h>
+#include <crypto/internal/skcipher.h>
 
 static char hifn_pll_ref[sizeof("extNNN")] = "ext";
 module_param_string(hifn_pll_ref, hifn_pll_ref, sizeof(hifn_pll_ref), 0444);
@@ -596,7 +597,7 @@ struct hifn_crypt_result {
 
 struct hifn_crypto_alg {
 	struct list_head	entry;
-	struct crypto_alg	alg;
+	struct skcipher_alg	alg;
 	struct hifn_device	*dev;
 };
 
@@ -1404,7 +1405,7 @@ static void hifn_cipher_walk_exit(struct hifn_cipher_walk *w)
 	w->num = 0;
 }
 
-static int ablkcipher_add(unsigned int *drestp, struct scatterlist *dst,
+static int skcipher_add(unsigned int *drestp, struct scatterlist *dst,
 		unsigned int size, unsigned int *nbytesp)
 {
 	unsigned int copy, drest = *drestp, nbytes = *nbytesp;
@@ -1433,11 +1434,11 @@ static int ablkcipher_add(unsigned int *drestp, struct scatterlist *dst,
 	return idx;
 }
 
-static int hifn_cipher_walk(struct ablkcipher_request *req,
+static int hifn_cipher_walk(struct skcipher_request *req,
 		struct hifn_cipher_walk *w)
 {
 	struct scatterlist *dst, *t;
-	unsigned int nbytes = req->nbytes, offset, copy, diff;
+	unsigned int nbytes = req->cryptlen, offset, copy, diff;
 	int idx, tidx, err;
 
 	tidx = idx = 0;
@@ -1459,7 +1460,7 @@ static int hifn_cipher_walk(struct ablkcipher_request *req,
 
 			t = &w->cache[idx];
 
-			err = ablkcipher_add(&dlen, dst, slen, &nbytes);
+			err = skcipher_add(&dlen, dst, slen, &nbytes);
 			if (err < 0)
 				return err;
 
@@ -1498,7 +1499,7 @@ static int hifn_cipher_walk(struct ablkcipher_request *req,
 
 				dst = &req->dst[idx];
 
-				err = ablkcipher_add(&dlen, dst, nbytes, &nbytes);
+				err = skcipher_add(&dlen, dst, nbytes, &nbytes);
 				if (err < 0)
 					return err;
 
@@ -1518,13 +1519,13 @@ static int hifn_cipher_walk(struct ablkcipher_request *req,
 	return tidx;
 }
 
-static int hifn_setup_session(struct ablkcipher_request *req)
+static int hifn_setup_session(struct skcipher_request *req)
 {
 	struct hifn_context *ctx = crypto_tfm_ctx(req->base.tfm);
-	struct hifn_request_context *rctx = ablkcipher_request_ctx(req);
+	struct hifn_request_context *rctx = skcipher_request_ctx(req);
 	struct hifn_device *dev = ctx->dev;
 	unsigned long dlen, flags;
-	unsigned int nbytes = req->nbytes, idx = 0;
+	unsigned int nbytes = req->cryptlen, idx = 0;
 	int err = -EINVAL, sg_num;
 	struct scatterlist *dst;
 
@@ -1563,7 +1564,7 @@ static int hifn_setup_session(struct ablkcipher_request *req)
 		goto err_out;
 	}
 
-	err = hifn_setup_dma(dev, ctx, rctx, req->src, req->dst, req->nbytes, req);
+	err = hifn_setup_dma(dev, ctx, rctx, req->src, req->dst, req->cryptlen, req);
 	if (err)
 		goto err_out;
 
@@ -1610,7 +1611,7 @@ static int hifn_start_device(struct hifn_device *dev)
 	return 0;
 }
 
-static int ablkcipher_get(void *saddr, unsigned int *srestp, unsigned int offset,
+static int skcipher_get(void *saddr, unsigned int *srestp, unsigned int offset,
 		struct scatterlist *dst, unsigned int size, unsigned int *nbytesp)
 {
 	unsigned int srest = *srestp, nbytes = *nbytesp, copy;
@@ -1660,12 +1661,12 @@ static inline void hifn_complete_sa(struct hifn_device *dev, int i)
 	BUG_ON(dev->started < 0);
 }
 
-static void hifn_process_ready(struct ablkcipher_request *req, int error)
+static void hifn_process_ready(struct skcipher_request *req, int error)
 {
-	struct hifn_request_context *rctx = ablkcipher_request_ctx(req);
+	struct hifn_request_context *rctx = skcipher_request_ctx(req);
 
 	if (rctx->walk.flags & ASYNC_FLAGS_MISALIGNED) {
-		unsigned int nbytes = req->nbytes;
+		unsigned int nbytes = req->cryptlen;
 		int idx = 0, err;
 		struct scatterlist *dst, *t;
 		void *saddr;
@@ -1688,7 +1689,7 @@ static void hifn_process_ready(struct ablkcipher_request *req, int error)
 
 			saddr = kmap_atomic(sg_page(t));
 
-			err = ablkcipher_get(saddr, &t->length, t->offset,
+			err = skcipher_get(saddr, &t->length, t->offset,
 					dst, nbytes, &nbytes);
 			if (err < 0) {
 				kunmap_atomic(saddr);
@@ -1910,7 +1911,7 @@ static void hifn_flush(struct hifn_device *dev)
 {
 	unsigned long flags;
 	struct crypto_async_request *async_req;
-	struct ablkcipher_request *req;
+	struct skcipher_request *req;
 	struct hifn_dma *dma = (struct hifn_dma *)dev->desc_virt;
 	int i;
 
@@ -1926,7 +1927,7 @@ static void hifn_flush(struct hifn_device *dev)
 
 	spin_lock_irqsave(&dev->lock, flags);
 	while ((async_req = crypto_dequeue_request(&dev->queue))) {
-		req = ablkcipher_request_cast(async_req);
+		req = skcipher_request_cast(async_req);
 		spin_unlock_irqrestore(&dev->lock, flags);
 
 		hifn_process_ready(req, -ENODEV);
@@ -1936,14 +1937,14 @@ static void hifn_flush(struct hifn_device *dev)
 	spin_unlock_irqrestore(&dev->lock, flags);
 }
 
-static int hifn_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int hifn_setkey(struct crypto_skcipher *cipher, const u8 *key,
 		unsigned int len)
 {
-	struct hifn_context *ctx = crypto_ablkcipher_ctx(cipher);
+	struct hifn_context *ctx = crypto_skcipher_ctx(cipher);
 	struct hifn_device *dev = ctx->dev;
 	int err;
 
-	err = verify_ablkcipher_des_key(cipher, key);
+	err = verify_skcipher_des_key(cipher, key);
 	if (err)
 		return err;
 
@@ -1955,14 +1956,14 @@ static int hifn_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
 	return 0;
 }
 
-static int hifn_des3_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int hifn_des3_setkey(struct crypto_skcipher *cipher, const u8 *key,
 			    unsigned int len)
 {
-	struct hifn_context *ctx = crypto_ablkcipher_ctx(cipher);
+	struct hifn_context *ctx = crypto_skcipher_ctx(cipher);
 	struct hifn_device *dev = ctx->dev;
 	int err;
 
-	err = verify_ablkcipher_des3_key(cipher, key);
+	err = verify_skcipher_des3_key(cipher, key);
 	if (err)
 		return err;
 
@@ -1974,36 +1975,36 @@ static int hifn_des3_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
 	return 0;
 }
 
-static int hifn_handle_req(struct ablkcipher_request *req)
+static int hifn_handle_req(struct skcipher_request *req)
 {
 	struct hifn_context *ctx = crypto_tfm_ctx(req->base.tfm);
 	struct hifn_device *dev = ctx->dev;
 	int err = -EAGAIN;
 
-	if (dev->started + DIV_ROUND_UP(req->nbytes, PAGE_SIZE) <= HIFN_QUEUE_LENGTH)
+	if (dev->started + DIV_ROUND_UP(req->cryptlen, PAGE_SIZE) <= HIFN_QUEUE_LENGTH)
 		err = hifn_setup_session(req);
 
 	if (err == -EAGAIN) {
 		unsigned long flags;
 
 		spin_lock_irqsave(&dev->lock, flags);
-		err = ablkcipher_enqueue_request(&dev->queue, req);
+		err = crypto_enqueue_request(&dev->queue, &req->base);
 		spin_unlock_irqrestore(&dev->lock, flags);
 	}
 
 	return err;
 }
 
-static int hifn_setup_crypto_req(struct ablkcipher_request *req, u8 op,
+static int hifn_setup_crypto_req(struct skcipher_request *req, u8 op,
 		u8 type, u8 mode)
 {
 	struct hifn_context *ctx = crypto_tfm_ctx(req->base.tfm);
-	struct hifn_request_context *rctx = ablkcipher_request_ctx(req);
+	struct hifn_request_context *rctx = skcipher_request_ctx(req);
 	unsigned ivsize;
 
-	ivsize = crypto_ablkcipher_ivsize(crypto_ablkcipher_reqtfm(req));
+	ivsize = crypto_skcipher_ivsize(crypto_skcipher_reqtfm(req));
 
-	if (req->info && mode != ACRYPTO_MODE_ECB) {
+	if (req->iv && mode != ACRYPTO_MODE_ECB) {
 		if (type == ACRYPTO_TYPE_AES_128)
 			ivsize = HIFN_AES_IV_LENGTH;
 		else if (type == ACRYPTO_TYPE_DES)
@@ -2022,7 +2023,7 @@ static int hifn_setup_crypto_req(struct ablkcipher_request *req, u8 op,
 	rctx->op = op;
 	rctx->mode = mode;
 	rctx->type = type;
-	rctx->iv = req->info;
+	rctx->iv = req->iv;
 	rctx->ivsize = ivsize;
 
 	/*
@@ -2037,7 +2038,7 @@ static int hifn_setup_crypto_req(struct ablkcipher_request *req, u8 op,
 static int hifn_process_queue(struct hifn_device *dev)
 {
 	struct crypto_async_request *async_req, *backlog;
-	struct ablkcipher_request *req;
+	struct skcipher_request *req;
 	unsigned long flags;
 	int err = 0;
 
@@ -2053,7 +2054,7 @@ static int hifn_process_queue(struct hifn_device *dev)
 		if (backlog)
 			backlog->complete(backlog, -EINPROGRESS);
 
-		req = ablkcipher_request_cast(async_req);
+		req = skcipher_request_cast(async_req);
 
 		err = hifn_handle_req(req);
 		if (err)
@@ -2063,7 +2064,7 @@ static int hifn_process_queue(struct hifn_device *dev)
 	return err;
 }
 
-static int hifn_setup_crypto(struct ablkcipher_request *req, u8 op,
+static int hifn_setup_crypto(struct skcipher_request *req, u8 op,
 		u8 type, u8 mode)
 {
 	int err;
@@ -2083,22 +2084,22 @@ static int hifn_setup_crypto(struct ablkcipher_request *req, u8 op,
 /*
  * AES ecryption functions.
  */
-static inline int hifn_encrypt_aes_ecb(struct ablkcipher_request *req)
+static inline int hifn_encrypt_aes_ecb(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_ENCRYPT,
 			ACRYPTO_TYPE_AES_128, ACRYPTO_MODE_ECB);
 }
-static inline int hifn_encrypt_aes_cbc(struct ablkcipher_request *req)
+static inline int hifn_encrypt_aes_cbc(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_ENCRYPT,
 			ACRYPTO_TYPE_AES_128, ACRYPTO_MODE_CBC);
 }
-static inline int hifn_encrypt_aes_cfb(struct ablkcipher_request *req)
+static inline int hifn_encrypt_aes_cfb(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_ENCRYPT,
 			ACRYPTO_TYPE_AES_128, ACRYPTO_MODE_CFB);
 }
-static inline int hifn_encrypt_aes_ofb(struct ablkcipher_request *req)
+static inline int hifn_encrypt_aes_ofb(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_ENCRYPT,
 			ACRYPTO_TYPE_AES_128, ACRYPTO_MODE_OFB);
@@ -2107,22 +2108,22 @@ static inline int hifn_encrypt_aes_ofb(struct ablkcipher_request *req)
 /*
  * AES decryption functions.
  */
-static inline int hifn_decrypt_aes_ecb(struct ablkcipher_request *req)
+static inline int hifn_decrypt_aes_ecb(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_DECRYPT,
 			ACRYPTO_TYPE_AES_128, ACRYPTO_MODE_ECB);
 }
-static inline int hifn_decrypt_aes_cbc(struct ablkcipher_request *req)
+static inline int hifn_decrypt_aes_cbc(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_DECRYPT,
 			ACRYPTO_TYPE_AES_128, ACRYPTO_MODE_CBC);
 }
-static inline int hifn_decrypt_aes_cfb(struct ablkcipher_request *req)
+static inline int hifn_decrypt_aes_cfb(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_DECRYPT,
 			ACRYPTO_TYPE_AES_128, ACRYPTO_MODE_CFB);
 }
-static inline int hifn_decrypt_aes_ofb(struct ablkcipher_request *req)
+static inline int hifn_decrypt_aes_ofb(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_DECRYPT,
 			ACRYPTO_TYPE_AES_128, ACRYPTO_MODE_OFB);
@@ -2131,22 +2132,22 @@ static inline int hifn_decrypt_aes_ofb(struct ablkcipher_request *req)
 /*
  * DES ecryption functions.
  */
-static inline int hifn_encrypt_des_ecb(struct ablkcipher_request *req)
+static inline int hifn_encrypt_des_ecb(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_ENCRYPT,
 			ACRYPTO_TYPE_DES, ACRYPTO_MODE_ECB);
 }
-static inline int hifn_encrypt_des_cbc(struct ablkcipher_request *req)
+static inline int hifn_encrypt_des_cbc(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_ENCRYPT,
 			ACRYPTO_TYPE_DES, ACRYPTO_MODE_CBC);
 }
-static inline int hifn_encrypt_des_cfb(struct ablkcipher_request *req)
+static inline int hifn_encrypt_des_cfb(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_ENCRYPT,
 			ACRYPTO_TYPE_DES, ACRYPTO_MODE_CFB);
 }
-static inline int hifn_encrypt_des_ofb(struct ablkcipher_request *req)
+static inline int hifn_encrypt_des_ofb(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_ENCRYPT,
 			ACRYPTO_TYPE_DES, ACRYPTO_MODE_OFB);
@@ -2155,22 +2156,22 @@ static inline int hifn_encrypt_des_ofb(struct ablkcipher_request *req)
 /*
  * DES decryption functions.
  */
-static inline int hifn_decrypt_des_ecb(struct ablkcipher_request *req)
+static inline int hifn_decrypt_des_ecb(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_DECRYPT,
 			ACRYPTO_TYPE_DES, ACRYPTO_MODE_ECB);
 }
-static inline int hifn_decrypt_des_cbc(struct ablkcipher_request *req)
+static inline int hifn_decrypt_des_cbc(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_DECRYPT,
 			ACRYPTO_TYPE_DES, ACRYPTO_MODE_CBC);
 }
-static inline int hifn_decrypt_des_cfb(struct ablkcipher_request *req)
+static inline int hifn_decrypt_des_cfb(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_DECRYPT,
 			ACRYPTO_TYPE_DES, ACRYPTO_MODE_CFB);
 }
-static inline int hifn_decrypt_des_ofb(struct ablkcipher_request *req)
+static inline int hifn_decrypt_des_ofb(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_DECRYPT,
 			ACRYPTO_TYPE_DES, ACRYPTO_MODE_OFB);
@@ -2179,44 +2180,44 @@ static inline int hifn_decrypt_des_ofb(struct ablkcipher_request *req)
 /*
  * 3DES ecryption functions.
  */
-static inline int hifn_encrypt_3des_ecb(struct ablkcipher_request *req)
+static inline int hifn_encrypt_3des_ecb(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_ENCRYPT,
 			ACRYPTO_TYPE_3DES, ACRYPTO_MODE_ECB);
 }
-static inline int hifn_encrypt_3des_cbc(struct ablkcipher_request *req)
+static inline int hifn_encrypt_3des_cbc(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_ENCRYPT,
 			ACRYPTO_TYPE_3DES, ACRYPTO_MODE_CBC);
 }
-static inline int hifn_encrypt_3des_cfb(struct ablkcipher_request *req)
+static inline int hifn_encrypt_3des_cfb(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_ENCRYPT,
 			ACRYPTO_TYPE_3DES, ACRYPTO_MODE_CFB);
 }
-static inline int hifn_encrypt_3des_ofb(struct ablkcipher_request *req)
+static inline int hifn_encrypt_3des_ofb(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_ENCRYPT,
 			ACRYPTO_TYPE_3DES, ACRYPTO_MODE_OFB);
 }
 
 /* 3DES decryption functions. */
-static inline int hifn_decrypt_3des_ecb(struct ablkcipher_request *req)
+static inline int hifn_decrypt_3des_ecb(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_DECRYPT,
 			ACRYPTO_TYPE_3DES, ACRYPTO_MODE_ECB);
 }
-static inline int hifn_decrypt_3des_cbc(struct ablkcipher_request *req)
+static inline int hifn_decrypt_3des_cbc(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_DECRYPT,
 			ACRYPTO_TYPE_3DES, ACRYPTO_MODE_CBC);
 }
-static inline int hifn_decrypt_3des_cfb(struct ablkcipher_request *req)
+static inline int hifn_decrypt_3des_cfb(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_DECRYPT,
 			ACRYPTO_TYPE_3DES, ACRYPTO_MODE_CFB);
 }
-static inline int hifn_decrypt_3des_ofb(struct ablkcipher_request *req)
+static inline int hifn_decrypt_3des_ofb(struct skcipher_request *req)
 {
 	return hifn_setup_crypto(req, ACRYPTO_OP_DECRYPT,
 			ACRYPTO_TYPE_3DES, ACRYPTO_MODE_OFB);
@@ -2226,16 +2227,16 @@ struct hifn_alg_template {
 	char name[CRYPTO_MAX_ALG_NAME];
 	char drv_name[CRYPTO_MAX_ALG_NAME];
 	unsigned int bsize;
-	struct ablkcipher_alg ablkcipher;
+	struct skcipher_alg skcipher;
 };
 
-static struct hifn_alg_template hifn_alg_templates[] = {
+static const struct hifn_alg_template hifn_alg_templates[] = {
 	/*
 	 * 3DES ECB, CBC, CFB and OFB modes.
 	 */
 	{
 		.name = "cfb(des3_ede)", .drv_name = "cfb-3des", .bsize = 8,
-		.ablkcipher = {
+		.skcipher = {
 			.min_keysize	=	HIFN_3DES_KEY_LENGTH,
 			.max_keysize	=	HIFN_3DES_KEY_LENGTH,
 			.setkey		=	hifn_des3_setkey,
@@ -2245,7 +2246,7 @@ static struct hifn_alg_template hifn_alg_templates[] = {
 	},
 	{
 		.name = "ofb(des3_ede)", .drv_name = "ofb-3des", .bsize = 8,
-		.ablkcipher = {
+		.skcipher = {
 			.min_keysize	=	HIFN_3DES_KEY_LENGTH,
 			.max_keysize	=	HIFN_3DES_KEY_LENGTH,
 			.setkey		=	hifn_des3_setkey,
@@ -2255,7 +2256,7 @@ static struct hifn_alg_template hifn_alg_templates[] = {
 	},
 	{
 		.name = "cbc(des3_ede)", .drv_name = "cbc-3des", .bsize = 8,
-		.ablkcipher = {
+		.skcipher = {
 			.ivsize		=	HIFN_IV_LENGTH,
 			.min_keysize	=	HIFN_3DES_KEY_LENGTH,
 			.max_keysize	=	HIFN_3DES_KEY_LENGTH,
@@ -2266,7 +2267,7 @@ static struct hifn_alg_template hifn_alg_templates[] = {
 	},
 	{
 		.name = "ecb(des3_ede)", .drv_name = "ecb-3des", .bsize = 8,
-		.ablkcipher = {
+		.skcipher = {
 			.min_keysize	=	HIFN_3DES_KEY_LENGTH,
 			.max_keysize	=	HIFN_3DES_KEY_LENGTH,
 			.setkey		=	hifn_des3_setkey,
@@ -2280,7 +2281,7 @@ static struct hifn_alg_template hifn_alg_templates[] = {
 	 */
 	{
 		.name = "cfb(des)", .drv_name = "cfb-des", .bsize = 8,
-		.ablkcipher = {
+		.skcipher = {
 			.min_keysize	=	HIFN_DES_KEY_LENGTH,
 			.max_keysize	=	HIFN_DES_KEY_LENGTH,
 			.setkey		=	hifn_setkey,
@@ -2290,7 +2291,7 @@ static struct hifn_alg_template hifn_alg_templates[] = {
 	},
 	{
 		.name = "ofb(des)", .drv_name = "ofb-des", .bsize = 8,
-		.ablkcipher = {
+		.skcipher = {
 			.min_keysize	=	HIFN_DES_KEY_LENGTH,
 			.max_keysize	=	HIFN_DES_KEY_LENGTH,
 			.setkey		=	hifn_setkey,
@@ -2300,7 +2301,7 @@ static struct hifn_alg_template hifn_alg_templates[] = {
 	},
 	{
 		.name = "cbc(des)", .drv_name = "cbc-des", .bsize = 8,
-		.ablkcipher = {
+		.skcipher = {
 			.ivsize		=	HIFN_IV_LENGTH,
 			.min_keysize	=	HIFN_DES_KEY_LENGTH,
 			.max_keysize	=	HIFN_DES_KEY_LENGTH,
@@ -2311,7 +2312,7 @@ static struct hifn_alg_template hifn_alg_templates[] = {
 	},
 	{
 		.name = "ecb(des)", .drv_name = "ecb-des", .bsize = 8,
-		.ablkcipher = {
+		.skcipher = {
 			.min_keysize	=	HIFN_DES_KEY_LENGTH,
 			.max_keysize	=	HIFN_DES_KEY_LENGTH,
 			.setkey		=	hifn_setkey,
@@ -2325,7 +2326,7 @@ static struct hifn_alg_template hifn_alg_templates[] = {
 	 */
 	{
 		.name = "ecb(aes)", .drv_name = "ecb-aes", .bsize = 16,
-		.ablkcipher = {
+		.skcipher = {
 			.min_keysize	=	AES_MIN_KEY_SIZE,
 			.max_keysize	=	AES_MAX_KEY_SIZE,
 			.setkey		=	hifn_setkey,
@@ -2335,7 +2336,7 @@ static struct hifn_alg_template hifn_alg_templates[] = {
 	},
 	{
 		.name = "cbc(aes)", .drv_name = "cbc-aes", .bsize = 16,
-		.ablkcipher = {
+		.skcipher = {
 			.ivsize		=	HIFN_AES_IV_LENGTH,
 			.min_keysize	=	AES_MIN_KEY_SIZE,
 			.max_keysize	=	AES_MAX_KEY_SIZE,
@@ -2346,7 +2347,7 @@ static struct hifn_alg_template hifn_alg_templates[] = {
 	},
 	{
 		.name = "cfb(aes)", .drv_name = "cfb-aes", .bsize = 16,
-		.ablkcipher = {
+		.skcipher = {
 			.min_keysize	=	AES_MIN_KEY_SIZE,
 			.max_keysize	=	AES_MAX_KEY_SIZE,
 			.setkey		=	hifn_setkey,
@@ -2356,7 +2357,7 @@ static struct hifn_alg_template hifn_alg_templates[] = {
 	},
 	{
 		.name = "ofb(aes)", .drv_name = "ofb-aes", .bsize = 16,
-		.ablkcipher = {
+		.skcipher = {
 			.min_keysize	=	AES_MIN_KEY_SIZE,
 			.max_keysize	=	AES_MAX_KEY_SIZE,
 			.setkey		=	hifn_setkey,
@@ -2366,18 +2367,19 @@ static struct hifn_alg_template hifn_alg_templates[] = {
 	},
 };
 
-static int hifn_cra_init(struct crypto_tfm *tfm)
+static int hifn_init_tfm(struct crypto_skcipher *tfm)
 {
-	struct crypto_alg *alg = tfm->__crt_alg;
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
 	struct hifn_crypto_alg *ha = crypto_alg_to_hifn(alg);
-	struct hifn_context *ctx = crypto_tfm_ctx(tfm);
+	struct hifn_context *ctx = crypto_skcipher_ctx(tfm);
 
 	ctx->dev = ha->dev;
-	tfm->crt_ablkcipher.reqsize = sizeof(struct hifn_request_context);
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct hifn_request_context));
+
 	return 0;
 }
 
-static int hifn_alg_alloc(struct hifn_device *dev, struct hifn_alg_template *t)
+static int hifn_alg_alloc(struct hifn_device *dev, const struct hifn_alg_template *t)
 {
 	struct hifn_crypto_alg *alg;
 	int err;
@@ -2386,26 +2388,25 @@ static int hifn_alg_alloc(struct hifn_device *dev, struct hifn_alg_template *t)
 	if (!alg)
 		return -ENOMEM;
 
-	snprintf(alg->alg.cra_name, CRYPTO_MAX_ALG_NAME, "%s", t->name);
-	snprintf(alg->alg.cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s-%s",
+	alg->alg = t->skcipher;
+	alg->alg.init = hifn_init_tfm;
+
+	snprintf(alg->alg.base.cra_name, CRYPTO_MAX_ALG_NAME, "%s", t->name);
+	snprintf(alg->alg.base.cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s-%s",
 		 t->drv_name, dev->name);
 
-	alg->alg.cra_priority = 300;
-	alg->alg.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-				CRYPTO_ALG_KERN_DRIVER_ONLY | CRYPTO_ALG_ASYNC;
-	alg->alg.cra_blocksize = t->bsize;
-	alg->alg.cra_ctxsize = sizeof(struct hifn_context);
-	alg->alg.cra_alignmask = 0;
-	alg->alg.cra_type = &crypto_ablkcipher_type;
-	alg->alg.cra_module = THIS_MODULE;
-	alg->alg.cra_u.ablkcipher = t->ablkcipher;
-	alg->alg.cra_init = hifn_cra_init;
+	alg->alg.base.cra_priority = 300;
+	alg->alg.base.cra_flags = CRYPTO_ALG_KERN_DRIVER_ONLY | CRYPTO_ALG_ASYNC;
+	alg->alg.base.cra_blocksize = t->bsize;
+	alg->alg.base.cra_ctxsize = sizeof(struct hifn_context);
+	alg->alg.base.cra_alignmask = 0;
+	alg->alg.base.cra_module = THIS_MODULE;
 
 	alg->dev = dev;
 
 	list_add_tail(&alg->entry, &dev->alg_list);
 
-	err = crypto_register_alg(&alg->alg);
+	err = crypto_register_skcipher(&alg->alg);
 	if (err) {
 		list_del(&alg->entry);
 		kfree(alg);
@@ -2420,7 +2421,7 @@ static void hifn_unregister_alg(struct hifn_device *dev)
 
 	list_for_each_entry_safe(a, n, &dev->alg_list, entry) {
 		list_del(&a->entry);
-		crypto_unregister_alg(&a->alg);
+		crypto_unregister_skcipher(&a->alg);
 		kfree(a);
 	}
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
