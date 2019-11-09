Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383FBF608E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 18:15:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tATF4aNM2jkc/EGNsmVvsi+dzdRk7QnrFRcnlEbJYe8=; b=LI8lePhoVM/F57lriySPjUTSQd
	0df3Pf8GTh/XZ4pwIhwBzW/5byrfW1SwlJeq6IUWJD6CwGC3sQJMwxs0X8tSUmH5AJ27zqZ3MVfc/
	szAApdQ10Eh8glDdQFvWUdXXXu+i7vIMHtYfjtPDiNoAoMcNqyjr/rzOzhk8aG6VlF+3FtRxVr1+T
	8Zx5ot7+pWq4X+u0Kpa/OdN15Ga75LTRaNtGcSJZb8Cs9ei0YJPuLBPV78XWvLGVPiiIWrPFp7QWd
	k1lA85+65/MgolJutMPYYn/S5d3Ee07nxzSBHnZFrIk6gk6uZoYKM4/JT5p0YC5Y6WeZKC4oYwBik
	avQWzX8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTUKR-0007Zs-B1; Sat, 09 Nov 2019 17:15:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTUGM-0004gO-1S
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 17:11:09 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C8C6A214E0;
 Sat,  9 Nov 2019 17:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573319461;
 bh=8DrAv/HAStSmDLL/lLsgsNUdOs+vGc83r0bLezZ7BjA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oUSMuuxXEuWmZo8AV1MBXIqgsxrn5dSqYM5rE6Ryp5t7SVbmDG7kSQ+H1CaXsr5bx
 FV1Whh1Z4/L9ero8dqwCiOB90nwCHoxo6NxyKChy29XuvWjnZqxTWvqV2DBodpMES1
 2dN67oG5QtX5E5mvjlCh8f2tY6n3zbL17j+ckRF4=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v4 10/29] crypto: bcm-spu - switch to skcipher API
Date: Sat,  9 Nov 2019 18:09:35 +0100
Message-Id: <20191109170954.756-11-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191109170954.756-1-ardb@kernel.org>
References: <20191109170954.756-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_091102_175111_D34F5796 
X-CRM114-Status: GOOD (  19.71  )
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
 drivers/crypto/Kconfig      |   2 +-
 drivers/crypto/bcm/cipher.c | 373 +++++++++-----------
 drivers/crypto/bcm/cipher.h |  10 +-
 drivers/crypto/bcm/spu2.c   |   6 +-
 4 files changed, 186 insertions(+), 205 deletions(-)

diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index c5cc04ddc4fb..581021fab462 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -708,7 +708,7 @@ config CRYPTO_DEV_BCM_SPU
 	select CRYPTO_SHA512
 	help
 	  This driver provides support for Broadcom crypto acceleration using the
-	  Secure Processing Unit (SPU). The SPU driver registers ablkcipher,
+	  Secure Processing Unit (SPU). The SPU driver registers skcipher,
 	  ahash, and aead algorithms with the kernel cryptographic API.
 
 source "drivers/crypto/stm32/Kconfig"
diff --git a/drivers/crypto/bcm/cipher.c b/drivers/crypto/bcm/cipher.c
index f85356a48e7e..1564a6f8c9cb 100644
--- a/drivers/crypto/bcm/cipher.c
+++ b/drivers/crypto/bcm/cipher.c
@@ -110,8 +110,8 @@ static u8 select_channel(void)
 }
 
 /**
- * spu_ablkcipher_rx_sg_create() - Build up the scatterlist of buffers used to
- * receive a SPU response message for an ablkcipher request. Includes buffers to
+ * spu_skcipher_rx_sg_create() - Build up the scatterlist of buffers used to
+ * receive a SPU response message for an skcipher request. Includes buffers to
  * catch SPU message headers and the response data.
  * @mssg:	mailbox message containing the receive sg
  * @rctx:	crypto request context
@@ -130,7 +130,7 @@ static u8 select_channel(void)
  *   < 0 if an error
  */
 static int
-spu_ablkcipher_rx_sg_create(struct brcm_message *mssg,
+spu_skcipher_rx_sg_create(struct brcm_message *mssg,
 			    struct iproc_reqctx_s *rctx,
 			    u8 rx_frag_num,
 			    unsigned int chunksize, u32 stat_pad_len)
@@ -179,8 +179,8 @@ spu_ablkcipher_rx_sg_create(struct brcm_message *mssg,
 }
 
 /**
- * spu_ablkcipher_tx_sg_create() - Build up the scatterlist of buffers used to
- * send a SPU request message for an ablkcipher request. Includes SPU message
+ * spu_skcipher_tx_sg_create() - Build up the scatterlist of buffers used to
+ * send a SPU request message for an skcipher request. Includes SPU message
  * headers and the request data.
  * @mssg:	mailbox message containing the transmit sg
  * @rctx:	crypto request context
@@ -198,7 +198,7 @@ spu_ablkcipher_rx_sg_create(struct brcm_message *mssg,
  *   < 0 if an error
  */
 static int
-spu_ablkcipher_tx_sg_create(struct brcm_message *mssg,
+spu_skcipher_tx_sg_create(struct brcm_message *mssg,
 			    struct iproc_reqctx_s *rctx,
 			    u8 tx_frag_num, unsigned int chunksize, u32 pad_len)
 {
@@ -283,7 +283,7 @@ static int mailbox_send_message(struct brcm_message *mssg, u32 flags,
 }
 
 /**
- * handle_ablkcipher_req() - Submit as much of a block cipher request as fits in
+ * handle_skcipher_req() - Submit as much of a block cipher request as fits in
  * a single SPU request message, starting at the current position in the request
  * data.
  * @rctx:	Crypto request context
@@ -300,12 +300,12 @@ static int mailbox_send_message(struct brcm_message *mssg, u32 flags,
  *			 asynchronously
  *         Any other value indicates an error
  */
-static int handle_ablkcipher_req(struct iproc_reqctx_s *rctx)
+static int handle_skcipher_req(struct iproc_reqctx_s *rctx)
 {
 	struct spu_hw *spu = &iproc_priv.spu;
 	struct crypto_async_request *areq = rctx->parent;
-	struct ablkcipher_request *req =
-	    container_of(areq, struct ablkcipher_request, base);
+	struct skcipher_request *req =
+	    container_of(areq, struct skcipher_request, base);
 	struct iproc_ctx_s *ctx = rctx->ctx;
 	struct spu_cipher_parms cipher_parms;
 	int err = 0;
@@ -468,7 +468,7 @@ static int handle_ablkcipher_req(struct iproc_reqctx_s *rctx)
 	    spu->spu_xts_tweak_in_payload())
 		rx_frag_num++;	/* extra sg to insert tweak */
 
-	err = spu_ablkcipher_rx_sg_create(mssg, rctx, rx_frag_num, chunksize,
+	err = spu_skcipher_rx_sg_create(mssg, rctx, rx_frag_num, chunksize,
 					  stat_pad_len);
 	if (err)
 		return err;
@@ -482,7 +482,7 @@ static int handle_ablkcipher_req(struct iproc_reqctx_s *rctx)
 	    spu->spu_xts_tweak_in_payload())
 		tx_frag_num++;	/* extra sg to insert tweak */
 
-	err = spu_ablkcipher_tx_sg_create(mssg, rctx, tx_frag_num, chunksize,
+	err = spu_skcipher_tx_sg_create(mssg, rctx, tx_frag_num, chunksize,
 					  pad_len);
 	if (err)
 		return err;
@@ -495,16 +495,16 @@ static int handle_ablkcipher_req(struct iproc_reqctx_s *rctx)
 }
 
 /**
- * handle_ablkcipher_resp() - Process a block cipher SPU response. Updates the
+ * handle_skcipher_resp() - Process a block cipher SPU response. Updates the
  * total received count for the request and updates global stats.
  * @rctx:	Crypto request context
  */
-static void handle_ablkcipher_resp(struct iproc_reqctx_s *rctx)
+static void handle_skcipher_resp(struct iproc_reqctx_s *rctx)
 {
 	struct spu_hw *spu = &iproc_priv.spu;
 #ifdef DEBUG
 	struct crypto_async_request *areq = rctx->parent;
-	struct ablkcipher_request *req = ablkcipher_request_cast(areq);
+	struct skcipher_request *req = skcipher_request_cast(areq);
 #endif
 	struct iproc_ctx_s *ctx = rctx->ctx;
 	u32 payload_len;
@@ -1685,8 +1685,8 @@ static void spu_rx_callback(struct mbox_client *cl, void *msg)
 
 	/* Process the SPU response message */
 	switch (rctx->ctx->alg->type) {
-	case CRYPTO_ALG_TYPE_ABLKCIPHER:
-		handle_ablkcipher_resp(rctx);
+	case CRYPTO_ALG_TYPE_SKCIPHER:
+		handle_skcipher_resp(rctx);
 		break;
 	case CRYPTO_ALG_TYPE_AHASH:
 		handle_ahash_resp(rctx);
@@ -1708,8 +1708,8 @@ static void spu_rx_callback(struct mbox_client *cl, void *msg)
 		spu_chunk_cleanup(rctx);
 
 		switch (rctx->ctx->alg->type) {
-		case CRYPTO_ALG_TYPE_ABLKCIPHER:
-			err = handle_ablkcipher_req(rctx);
+		case CRYPTO_ALG_TYPE_SKCIPHER:
+			err = handle_skcipher_req(rctx);
 			break;
 		case CRYPTO_ALG_TYPE_AHASH:
 			err = handle_ahash_req(rctx);
@@ -1739,7 +1739,7 @@ static void spu_rx_callback(struct mbox_client *cl, void *msg)
 /* ==================== Kernel Cryptographic API ==================== */
 
 /**
- * ablkcipher_enqueue() - Handle ablkcipher encrypt or decrypt request.
+ * skcipher_enqueue() - Handle skcipher encrypt or decrypt request.
  * @req:	Crypto API request
  * @encrypt:	true if encrypting; false if decrypting
  *
@@ -1747,11 +1747,11 @@ static void spu_rx_callback(struct mbox_client *cl, void *msg)
  *			asynchronously
  *	   < 0 if an error
  */
-static int ablkcipher_enqueue(struct ablkcipher_request *req, bool encrypt)
+static int skcipher_enqueue(struct skcipher_request *req, bool encrypt)
 {
-	struct iproc_reqctx_s *rctx = ablkcipher_request_ctx(req);
+	struct iproc_reqctx_s *rctx = skcipher_request_ctx(req);
 	struct iproc_ctx_s *ctx =
-	    crypto_ablkcipher_ctx(crypto_ablkcipher_reqtfm(req));
+	    crypto_skcipher_ctx(crypto_skcipher_reqtfm(req));
 	int err;
 
 	flow_log("%s() enc:%u\n", __func__, encrypt);
@@ -1761,7 +1761,7 @@ static int ablkcipher_enqueue(struct ablkcipher_request *req, bool encrypt)
 	rctx->parent = &req->base;
 	rctx->is_encrypt = encrypt;
 	rctx->bd_suppress = false;
-	rctx->total_todo = req->nbytes;
+	rctx->total_todo = req->cryptlen;
 	rctx->src_sent = 0;
 	rctx->total_sent = 0;
 	rctx->total_received = 0;
@@ -1782,15 +1782,15 @@ static int ablkcipher_enqueue(struct ablkcipher_request *req, bool encrypt)
 	    ctx->cipher.mode == CIPHER_MODE_GCM ||
 	    ctx->cipher.mode == CIPHER_MODE_CCM) {
 		rctx->iv_ctr_len =
-		    crypto_ablkcipher_ivsize(crypto_ablkcipher_reqtfm(req));
-		memcpy(rctx->msg_buf.iv_ctr, req->info, rctx->iv_ctr_len);
+		    crypto_skcipher_ivsize(crypto_skcipher_reqtfm(req));
+		memcpy(rctx->msg_buf.iv_ctr, req->iv, rctx->iv_ctr_len);
 	} else {
 		rctx->iv_ctr_len = 0;
 	}
 
 	/* Choose a SPU to process this request */
 	rctx->chan_idx = select_channel();
-	err = handle_ablkcipher_req(rctx);
+	err = handle_skcipher_req(rctx);
 	if (err != -EINPROGRESS)
 		/* synchronous result */
 		spu_chunk_cleanup(rctx);
@@ -1798,13 +1798,13 @@ static int ablkcipher_enqueue(struct ablkcipher_request *req, bool encrypt)
 	return err;
 }
 
-static int des_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int des_setkey(struct crypto_skcipher *cipher, const u8 *key,
 		      unsigned int keylen)
 {
-	struct iproc_ctx_s *ctx = crypto_ablkcipher_ctx(cipher);
+	struct iproc_ctx_s *ctx = crypto_skcipher_ctx(cipher);
 	int err;
 
-	err = verify_ablkcipher_des_key(cipher, key);
+	err = verify_skcipher_des_key(cipher, key);
 	if (err)
 		return err;
 
@@ -1812,13 +1812,13 @@ static int des_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
 	return 0;
 }
 
-static int threedes_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int threedes_setkey(struct crypto_skcipher *cipher, const u8 *key,
 			   unsigned int keylen)
 {
-	struct iproc_ctx_s *ctx = crypto_ablkcipher_ctx(cipher);
+	struct iproc_ctx_s *ctx = crypto_skcipher_ctx(cipher);
 	int err;
 
-	err = verify_ablkcipher_des3_key(cipher, key);
+	err = verify_skcipher_des3_key(cipher, key);
 	if (err)
 		return err;
 
@@ -1826,10 +1826,10 @@ static int threedes_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
 	return 0;
 }
 
-static int aes_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int aes_setkey(struct crypto_skcipher *cipher, const u8 *key,
 		      unsigned int keylen)
 {
-	struct iproc_ctx_s *ctx = crypto_ablkcipher_ctx(cipher);
+	struct iproc_ctx_s *ctx = crypto_skcipher_ctx(cipher);
 
 	if (ctx->cipher.mode == CIPHER_MODE_XTS)
 		/* XTS includes two keys of equal length */
@@ -1846,7 +1846,7 @@ static int aes_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
 		ctx->cipher_type = CIPHER_TYPE_AES256;
 		break;
 	default:
-		crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
+		crypto_skcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
 		return -EINVAL;
 	}
 	WARN_ON((ctx->max_payload != SPU_MAX_PAYLOAD_INF) &&
@@ -1854,10 +1854,10 @@ static int aes_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
 	return 0;
 }
 
-static int rc4_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int rc4_setkey(struct crypto_skcipher *cipher, const u8 *key,
 		      unsigned int keylen)
 {
-	struct iproc_ctx_s *ctx = crypto_ablkcipher_ctx(cipher);
+	struct iproc_ctx_s *ctx = crypto_skcipher_ctx(cipher);
 	int i;
 
 	ctx->enckeylen = ARC4_MAX_KEY_SIZE + ARC4_STATE_SIZE;
@@ -1874,16 +1874,16 @@ static int rc4_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
 	return 0;
 }
 
-static int ablkcipher_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int skcipher_setkey(struct crypto_skcipher *cipher, const u8 *key,
 			     unsigned int keylen)
 {
 	struct spu_hw *spu = &iproc_priv.spu;
-	struct iproc_ctx_s *ctx = crypto_ablkcipher_ctx(cipher);
+	struct iproc_ctx_s *ctx = crypto_skcipher_ctx(cipher);
 	struct spu_cipher_parms cipher_parms;
 	u32 alloc_len = 0;
 	int err;
 
-	flow_log("ablkcipher_setkey() keylen: %d\n", keylen);
+	flow_log("skcipher_setkey() keylen: %d\n", keylen);
 	flow_dump("  key: ", key, keylen);
 
 	switch (ctx->cipher.alg) {
@@ -1926,7 +1926,7 @@ static int ablkcipher_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
 		alloc_len = BCM_HDR_LEN + SPU2_HEADER_ALLOC_LEN;
 	memset(ctx->bcm_spu_req_hdr, 0, alloc_len);
 	cipher_parms.iv_buf = NULL;
-	cipher_parms.iv_len = crypto_ablkcipher_ivsize(cipher);
+	cipher_parms.iv_len = crypto_skcipher_ivsize(cipher);
 	flow_log("%s: iv_len %u\n", __func__, cipher_parms.iv_len);
 
 	cipher_parms.alg = ctx->cipher.alg;
@@ -1950,17 +1950,17 @@ static int ablkcipher_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
 	return 0;
 }
 
-static int ablkcipher_encrypt(struct ablkcipher_request *req)
+static int skcipher_encrypt(struct skcipher_request *req)
 {
-	flow_log("ablkcipher_encrypt() nbytes:%u\n", req->nbytes);
+	flow_log("skcipher_encrypt() nbytes:%u\n", req->cryptlen);
 
-	return ablkcipher_enqueue(req, true);
+	return skcipher_enqueue(req, true);
 }
 
-static int ablkcipher_decrypt(struct ablkcipher_request *req)
+static int skcipher_decrypt(struct skcipher_request *req)
 {
-	flow_log("ablkcipher_decrypt() nbytes:%u\n", req->nbytes);
-	return ablkcipher_enqueue(req, false);
+	flow_log("skcipher_decrypt() nbytes:%u\n", req->cryptlen);
+	return skcipher_enqueue(req, false);
 }
 
 static int ahash_enqueue(struct ahash_request *req)
@@ -3585,18 +3585,16 @@ static struct iproc_alg_s driver_algs[] = {
 	 .auth_first = 0,
 	 },
 
-/* ABLKCIPHER algorithms. */
+/* SKCIPHER algorithms. */
 	{
-	 .type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-	 .alg.crypto = {
-			.cra_name = "ecb(arc4)",
-			.cra_driver_name = "ecb-arc4-iproc",
-			.cra_blocksize = ARC4_BLOCK_SIZE,
-			.cra_ablkcipher = {
-					   .min_keysize = ARC4_MIN_KEY_SIZE,
-					   .max_keysize = ARC4_MAX_KEY_SIZE,
-					   .ivsize = 0,
-					}
+	 .type = CRYPTO_ALG_TYPE_SKCIPHER,
+	 .alg.skcipher = {
+			.base.cra_name = "ecb(arc4)",
+			.base.cra_driver_name = "ecb-arc4-iproc",
+			.base.cra_blocksize = ARC4_BLOCK_SIZE,
+			.min_keysize = ARC4_MIN_KEY_SIZE,
+			.max_keysize = ARC4_MAX_KEY_SIZE,
+			.ivsize = 0,
 			},
 	 .cipher_info = {
 			 .alg = CIPHER_ALG_RC4,
@@ -3608,16 +3606,14 @@ static struct iproc_alg_s driver_algs[] = {
 		       },
 	 },
 	{
-	 .type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-	 .alg.crypto = {
-			.cra_name = "ofb(des)",
-			.cra_driver_name = "ofb-des-iproc",
-			.cra_blocksize = DES_BLOCK_SIZE,
-			.cra_ablkcipher = {
-					   .min_keysize = DES_KEY_SIZE,
-					   .max_keysize = DES_KEY_SIZE,
-					   .ivsize = DES_BLOCK_SIZE,
-					}
+	 .type = CRYPTO_ALG_TYPE_SKCIPHER,
+	 .alg.skcipher = {
+			.base.cra_name = "ofb(des)",
+			.base.cra_driver_name = "ofb-des-iproc",
+			.base.cra_blocksize = DES_BLOCK_SIZE,
+			.min_keysize = DES_KEY_SIZE,
+			.max_keysize = DES_KEY_SIZE,
+			.ivsize = DES_BLOCK_SIZE,
 			},
 	 .cipher_info = {
 			 .alg = CIPHER_ALG_DES,
@@ -3629,16 +3625,14 @@ static struct iproc_alg_s driver_algs[] = {
 		       },
 	 },
 	{
-	 .type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-	 .alg.crypto = {
-			.cra_name = "cbc(des)",
-			.cra_driver_name = "cbc-des-iproc",
-			.cra_blocksize = DES_BLOCK_SIZE,
-			.cra_ablkcipher = {
-					   .min_keysize = DES_KEY_SIZE,
-					   .max_keysize = DES_KEY_SIZE,
-					   .ivsize = DES_BLOCK_SIZE,
-					}
+	 .type = CRYPTO_ALG_TYPE_SKCIPHER,
+	 .alg.skcipher = {
+			.base.cra_name = "cbc(des)",
+			.base.cra_driver_name = "cbc-des-iproc",
+			.base.cra_blocksize = DES_BLOCK_SIZE,
+			.min_keysize = DES_KEY_SIZE,
+			.max_keysize = DES_KEY_SIZE,
+			.ivsize = DES_BLOCK_SIZE,
 			},
 	 .cipher_info = {
 			 .alg = CIPHER_ALG_DES,
@@ -3650,16 +3644,14 @@ static struct iproc_alg_s driver_algs[] = {
 		       },
 	 },
 	{
-	 .type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-	 .alg.crypto = {
-			.cra_name = "ecb(des)",
-			.cra_driver_name = "ecb-des-iproc",
-			.cra_blocksize = DES_BLOCK_SIZE,
-			.cra_ablkcipher = {
-					   .min_keysize = DES_KEY_SIZE,
-					   .max_keysize = DES_KEY_SIZE,
-					   .ivsize = 0,
-					}
+	 .type = CRYPTO_ALG_TYPE_SKCIPHER,
+	 .alg.skcipher = {
+			.base.cra_name = "ecb(des)",
+			.base.cra_driver_name = "ecb-des-iproc",
+			.base.cra_blocksize = DES_BLOCK_SIZE,
+			.min_keysize = DES_KEY_SIZE,
+			.max_keysize = DES_KEY_SIZE,
+			.ivsize = 0,
 			},
 	 .cipher_info = {
 			 .alg = CIPHER_ALG_DES,
@@ -3671,16 +3663,14 @@ static struct iproc_alg_s driver_algs[] = {
 		       },
 	 },
 	{
-	 .type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-	 .alg.crypto = {
-			.cra_name = "ofb(des3_ede)",
-			.cra_driver_name = "ofb-des3-iproc",
-			.cra_blocksize = DES3_EDE_BLOCK_SIZE,
-			.cra_ablkcipher = {
-					   .min_keysize = DES3_EDE_KEY_SIZE,
-					   .max_keysize = DES3_EDE_KEY_SIZE,
-					   .ivsize = DES3_EDE_BLOCK_SIZE,
-					}
+	 .type = CRYPTO_ALG_TYPE_SKCIPHER,
+	 .alg.skcipher = {
+			.base.cra_name = "ofb(des3_ede)",
+			.base.cra_driver_name = "ofb-des3-iproc",
+			.base.cra_blocksize = DES3_EDE_BLOCK_SIZE,
+			.min_keysize = DES3_EDE_KEY_SIZE,
+			.max_keysize = DES3_EDE_KEY_SIZE,
+			.ivsize = DES3_EDE_BLOCK_SIZE,
 			},
 	 .cipher_info = {
 			 .alg = CIPHER_ALG_3DES,
@@ -3692,16 +3682,14 @@ static struct iproc_alg_s driver_algs[] = {
 		       },
 	 },
 	{
-	 .type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-	 .alg.crypto = {
-			.cra_name = "cbc(des3_ede)",
-			.cra_driver_name = "cbc-des3-iproc",
-			.cra_blocksize = DES3_EDE_BLOCK_SIZE,
-			.cra_ablkcipher = {
-					   .min_keysize = DES3_EDE_KEY_SIZE,
-					   .max_keysize = DES3_EDE_KEY_SIZE,
-					   .ivsize = DES3_EDE_BLOCK_SIZE,
-					}
+	 .type = CRYPTO_ALG_TYPE_SKCIPHER,
+	 .alg.skcipher = {
+			.base.cra_name = "cbc(des3_ede)",
+			.base.cra_driver_name = "cbc-des3-iproc",
+			.base.cra_blocksize = DES3_EDE_BLOCK_SIZE,
+			.min_keysize = DES3_EDE_KEY_SIZE,
+			.max_keysize = DES3_EDE_KEY_SIZE,
+			.ivsize = DES3_EDE_BLOCK_SIZE,
 			},
 	 .cipher_info = {
 			 .alg = CIPHER_ALG_3DES,
@@ -3713,16 +3701,14 @@ static struct iproc_alg_s driver_algs[] = {
 		       },
 	 },
 	{
-	 .type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-	 .alg.crypto = {
-			.cra_name = "ecb(des3_ede)",
-			.cra_driver_name = "ecb-des3-iproc",
-			.cra_blocksize = DES3_EDE_BLOCK_SIZE,
-			.cra_ablkcipher = {
-					   .min_keysize = DES3_EDE_KEY_SIZE,
-					   .max_keysize = DES3_EDE_KEY_SIZE,
-					   .ivsize = 0,
-					}
+	 .type = CRYPTO_ALG_TYPE_SKCIPHER,
+	 .alg.skcipher = {
+			.base.cra_name = "ecb(des3_ede)",
+			.base.cra_driver_name = "ecb-des3-iproc",
+			.base.cra_blocksize = DES3_EDE_BLOCK_SIZE,
+			.min_keysize = DES3_EDE_KEY_SIZE,
+			.max_keysize = DES3_EDE_KEY_SIZE,
+			.ivsize = 0,
 			},
 	 .cipher_info = {
 			 .alg = CIPHER_ALG_3DES,
@@ -3734,16 +3720,14 @@ static struct iproc_alg_s driver_algs[] = {
 		       },
 	 },
 	{
-	 .type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-	 .alg.crypto = {
-			.cra_name = "ofb(aes)",
-			.cra_driver_name = "ofb-aes-iproc",
-			.cra_blocksize = AES_BLOCK_SIZE,
-			.cra_ablkcipher = {
-					   .min_keysize = AES_MIN_KEY_SIZE,
-					   .max_keysize = AES_MAX_KEY_SIZE,
-					   .ivsize = AES_BLOCK_SIZE,
-					}
+	 .type = CRYPTO_ALG_TYPE_SKCIPHER,
+	 .alg.skcipher = {
+			.base.cra_name = "ofb(aes)",
+			.base.cra_driver_name = "ofb-aes-iproc",
+			.base.cra_blocksize = AES_BLOCK_SIZE,
+			.min_keysize = AES_MIN_KEY_SIZE,
+			.max_keysize = AES_MAX_KEY_SIZE,
+			.ivsize = AES_BLOCK_SIZE,
 			},
 	 .cipher_info = {
 			 .alg = CIPHER_ALG_AES,
@@ -3755,16 +3739,14 @@ static struct iproc_alg_s driver_algs[] = {
 		       },
 	 },
 	{
-	 .type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-	 .alg.crypto = {
-			.cra_name = "cbc(aes)",
-			.cra_driver_name = "cbc-aes-iproc",
-			.cra_blocksize = AES_BLOCK_SIZE,
-			.cra_ablkcipher = {
-					   .min_keysize = AES_MIN_KEY_SIZE,
-					   .max_keysize = AES_MAX_KEY_SIZE,
-					   .ivsize = AES_BLOCK_SIZE,
-					}
+	 .type = CRYPTO_ALG_TYPE_SKCIPHER,
+	 .alg.skcipher = {
+			.base.cra_name = "cbc(aes)",
+			.base.cra_driver_name = "cbc-aes-iproc",
+			.base.cra_blocksize = AES_BLOCK_SIZE,
+			.min_keysize = AES_MIN_KEY_SIZE,
+			.max_keysize = AES_MAX_KEY_SIZE,
+			.ivsize = AES_BLOCK_SIZE,
 			},
 	 .cipher_info = {
 			 .alg = CIPHER_ALG_AES,
@@ -3776,16 +3758,14 @@ static struct iproc_alg_s driver_algs[] = {
 		       },
 	 },
 	{
-	 .type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-	 .alg.crypto = {
-			.cra_name = "ecb(aes)",
-			.cra_driver_name = "ecb-aes-iproc",
-			.cra_blocksize = AES_BLOCK_SIZE,
-			.cra_ablkcipher = {
-					   .min_keysize = AES_MIN_KEY_SIZE,
-					   .max_keysize = AES_MAX_KEY_SIZE,
-					   .ivsize = 0,
-					}
+	 .type = CRYPTO_ALG_TYPE_SKCIPHER,
+	 .alg.skcipher = {
+			.base.cra_name = "ecb(aes)",
+			.base.cra_driver_name = "ecb-aes-iproc",
+			.base.cra_blocksize = AES_BLOCK_SIZE,
+			.min_keysize = AES_MIN_KEY_SIZE,
+			.max_keysize = AES_MAX_KEY_SIZE,
+			.ivsize = 0,
 			},
 	 .cipher_info = {
 			 .alg = CIPHER_ALG_AES,
@@ -3797,16 +3777,14 @@ static struct iproc_alg_s driver_algs[] = {
 		       },
 	 },
 	{
-	 .type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-	 .alg.crypto = {
-			.cra_name = "ctr(aes)",
-			.cra_driver_name = "ctr-aes-iproc",
-			.cra_blocksize = AES_BLOCK_SIZE,
-			.cra_ablkcipher = {
-					   .min_keysize = AES_MIN_KEY_SIZE,
-					   .max_keysize = AES_MAX_KEY_SIZE,
-					   .ivsize = AES_BLOCK_SIZE,
-					}
+	 .type = CRYPTO_ALG_TYPE_SKCIPHER,
+	 .alg.skcipher = {
+			.base.cra_name = "ctr(aes)",
+			.base.cra_driver_name = "ctr-aes-iproc",
+			.base.cra_blocksize = AES_BLOCK_SIZE,
+			.min_keysize = AES_MIN_KEY_SIZE,
+			.max_keysize = AES_MAX_KEY_SIZE,
+			.ivsize = AES_BLOCK_SIZE,
 			},
 	 .cipher_info = {
 			 .alg = CIPHER_ALG_AES,
@@ -3818,16 +3796,14 @@ static struct iproc_alg_s driver_algs[] = {
 		       },
 	 },
 {
-	 .type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-	 .alg.crypto = {
-			.cra_name = "xts(aes)",
-			.cra_driver_name = "xts-aes-iproc",
-			.cra_blocksize = AES_BLOCK_SIZE,
-			.cra_ablkcipher = {
-				.min_keysize = 2 * AES_MIN_KEY_SIZE,
-				.max_keysize = 2 * AES_MAX_KEY_SIZE,
-				.ivsize = AES_BLOCK_SIZE,
-				}
+	 .type = CRYPTO_ALG_TYPE_SKCIPHER,
+	 .alg.skcipher = {
+			.base.cra_name = "xts(aes)",
+			.base.cra_driver_name = "xts-aes-iproc",
+			.base.cra_blocksize = AES_BLOCK_SIZE,
+			.min_keysize = 2 * AES_MIN_KEY_SIZE,
+			.max_keysize = 2 * AES_MAX_KEY_SIZE,
+			.ivsize = AES_BLOCK_SIZE,
 			},
 	 .cipher_info = {
 			 .alg = CIPHER_ALG_AES,
@@ -4282,16 +4258,17 @@ static int generic_cra_init(struct crypto_tfm *tfm,
 	return 0;
 }
 
-static int ablkcipher_cra_init(struct crypto_tfm *tfm)
+static int skcipher_init_tfm(struct crypto_skcipher *skcipher)
 {
-	struct crypto_alg *alg = tfm->__crt_alg;
+	struct crypto_tfm *tfm = crypto_skcipher_tfm(skcipher);
+	struct skcipher_alg *alg = crypto_skcipher_alg(skcipher);
 	struct iproc_alg_s *cipher_alg;
 
 	flow_log("%s()\n", __func__);
 
-	tfm->crt_ablkcipher.reqsize = sizeof(struct iproc_reqctx_s);
+	crypto_skcipher_set_reqsize(skcipher, sizeof(struct iproc_reqctx_s));
 
-	cipher_alg = container_of(alg, struct iproc_alg_s, alg.crypto);
+	cipher_alg = container_of(alg, struct iproc_alg_s, alg.skcipher);
 	return generic_cra_init(tfm, cipher_alg);
 }
 
@@ -4363,6 +4340,11 @@ static void generic_cra_exit(struct crypto_tfm *tfm)
 	atomic_dec(&iproc_priv.session_count);
 }
 
+static void skcipher_exit_tfm(struct crypto_skcipher *tfm)
+{
+	generic_cra_exit(crypto_skcipher_tfm(tfm));
+}
+
 static void aead_cra_exit(struct crypto_aead *aead)
 {
 	struct crypto_tfm *tfm = crypto_aead_tfm(aead);
@@ -4524,10 +4506,10 @@ static void spu_counters_init(void)
 	atomic_set(&iproc_priv.bad_icv, 0);
 }
 
-static int spu_register_ablkcipher(struct iproc_alg_s *driver_alg)
+static int spu_register_skcipher(struct iproc_alg_s *driver_alg)
 {
 	struct spu_hw *spu = &iproc_priv.spu;
-	struct crypto_alg *crypto = &driver_alg->alg.crypto;
+	struct skcipher_alg *crypto = &driver_alg->alg.skcipher;
 	int err;
 
 	/* SPU2 does not support RC4 */
@@ -4535,26 +4517,23 @@ static int spu_register_ablkcipher(struct iproc_alg_s *driver_alg)
 	    (spu->spu_type == SPU_TYPE_SPU2))
 		return 0;
 
-	crypto->cra_module = THIS_MODULE;
-	crypto->cra_priority = cipher_pri;
-	crypto->cra_alignmask = 0;
-	crypto->cra_ctxsize = sizeof(struct iproc_ctx_s);
-
-	crypto->cra_init = ablkcipher_cra_init;
-	crypto->cra_exit = generic_cra_exit;
-	crypto->cra_type = &crypto_ablkcipher_type;
-	crypto->cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC |
-				CRYPTO_ALG_KERN_DRIVER_ONLY;
+	crypto->base.cra_module = THIS_MODULE;
+	crypto->base.cra_priority = cipher_pri;
+	crypto->base.cra_alignmask = 0;
+	crypto->base.cra_ctxsize = sizeof(struct iproc_ctx_s);
+	crypto->base.cra_flags = CRYPTO_ALG_ASYNC | CRYPTO_ALG_KERN_DRIVER_ONLY;
 
-	crypto->cra_ablkcipher.setkey = ablkcipher_setkey;
-	crypto->cra_ablkcipher.encrypt = ablkcipher_encrypt;
-	crypto->cra_ablkcipher.decrypt = ablkcipher_decrypt;
+	crypto->init = skcipher_init_tfm;
+	crypto->exit = skcipher_exit_tfm;
+	crypto->setkey = skcipher_setkey;
+	crypto->encrypt = skcipher_encrypt;
+	crypto->decrypt = skcipher_decrypt;
 
-	err = crypto_register_alg(crypto);
+	err = crypto_register_skcipher(crypto);
 	/* Mark alg as having been registered, if successful */
 	if (err == 0)
 		driver_alg->registered = true;
-	pr_debug("  registered ablkcipher %s\n", crypto->cra_driver_name);
+	pr_debug("  registered skcipher %s\n", crypto->base.cra_driver_name);
 	return err;
 }
 
@@ -4649,8 +4628,8 @@ static int spu_algs_register(struct device *dev)
 
 	for (i = 0; i < ARRAY_SIZE(driver_algs); i++) {
 		switch (driver_algs[i].type) {
-		case CRYPTO_ALG_TYPE_ABLKCIPHER:
-			err = spu_register_ablkcipher(&driver_algs[i]);
+		case CRYPTO_ALG_TYPE_SKCIPHER:
+			err = spu_register_skcipher(&driver_algs[i]);
 			break;
 		case CRYPTO_ALG_TYPE_AHASH:
 			err = spu_register_ahash(&driver_algs[i]);
@@ -4680,8 +4659,8 @@ static int spu_algs_register(struct device *dev)
 		if (!driver_algs[j].registered)
 			continue;
 		switch (driver_algs[j].type) {
-		case CRYPTO_ALG_TYPE_ABLKCIPHER:
-			crypto_unregister_alg(&driver_algs[j].alg.crypto);
+		case CRYPTO_ALG_TYPE_SKCIPHER:
+			crypto_unregister_skcipher(&driver_algs[j].alg.skcipher);
 			driver_algs[j].registered = false;
 			break;
 		case CRYPTO_ALG_TYPE_AHASH:
@@ -4837,10 +4816,10 @@ static int bcm_spu_remove(struct platform_device *pdev)
 			continue;
 
 		switch (driver_algs[i].type) {
-		case CRYPTO_ALG_TYPE_ABLKCIPHER:
-			crypto_unregister_alg(&driver_algs[i].alg.crypto);
+		case CRYPTO_ALG_TYPE_SKCIPHER:
+			crypto_unregister_skcipher(&driver_algs[i].alg.skcipher);
 			dev_dbg(dev, "  unregistered cipher %s\n",
-				driver_algs[i].alg.crypto.cra_driver_name);
+				driver_algs[i].alg.skcipher.base.cra_driver_name);
 			driver_algs[i].registered = false;
 			break;
 		case CRYPTO_ALG_TYPE_AHASH:
diff --git a/drivers/crypto/bcm/cipher.h b/drivers/crypto/bcm/cipher.h
index 766452b24d0a..b6d83e3aa46c 100644
--- a/drivers/crypto/bcm/cipher.h
+++ b/drivers/crypto/bcm/cipher.h
@@ -1,3 +1,4 @@
+
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2016 Broadcom
@@ -11,6 +12,7 @@
 #include <linux/mailbox_client.h>
 #include <crypto/aes.h>
 #include <crypto/internal/hash.h>
+#include <crypto/internal/skcipher.h>
 #include <crypto/aead.h>
 #include <crypto/arc4.h>
 #include <crypto/gcm.h>
@@ -102,7 +104,7 @@ struct auth_op {
 struct iproc_alg_s {
 	u32 type;
 	union {
-		struct crypto_alg crypto;
+		struct skcipher_alg skcipher;
 		struct ahash_alg hash;
 		struct aead_alg aead;
 	} alg;
@@ -149,7 +151,7 @@ struct spu_msg_buf {
 	u8 rx_stat[ALIGN(SPU_RX_STATUS_LEN, SPU_MSG_ALIGN)];
 
 	union {
-		/* Buffers only used for ablkcipher */
+		/* Buffers only used for skcipher */
 		struct {
 			/*
 			 * Field used for either SUPDT when RC4 is used
@@ -214,7 +216,7 @@ struct iproc_ctx_s {
 
 	/*
 	 * Buffer to hold SPU message header template. Template is created at
-	 * setkey time for ablkcipher requests, since most of the fields in the
+	 * setkey time for skcipher requests, since most of the fields in the
 	 * header are known at that time. At request time, just fill in a few
 	 * missing pieces related to length of data in the request and IVs, etc.
 	 */
@@ -256,7 +258,7 @@ struct iproc_reqctx_s {
 
 	/* total todo, rx'd, and sent for this request */
 	unsigned int total_todo;
-	unsigned int total_received;	/* only valid for ablkcipher */
+	unsigned int total_received;	/* only valid for skcipher */
 	unsigned int total_sent;
 
 	/*
diff --git a/drivers/crypto/bcm/spu2.c b/drivers/crypto/bcm/spu2.c
index 2add51024575..59abb5ecefa4 100644
--- a/drivers/crypto/bcm/spu2.c
+++ b/drivers/crypto/bcm/spu2.c
@@ -542,7 +542,7 @@ void spu2_dump_msg_hdr(u8 *buf, unsigned int buf_len)
 
 /**
  * spu2_fmd_init() - At setkey time, initialize the fixed meta data for
- * subsequent ablkcipher requests for this context.
+ * subsequent skcipher requests for this context.
  * @spu2_cipher_type:  Cipher algorithm
  * @spu2_mode:         Cipher mode
  * @cipher_key_len:    Length of cipher key, in bytes
@@ -1107,13 +1107,13 @@ u32 spu2_create_request(u8 *spu_hdr,
 }
 
 /**
- * spu_cipher_req_init() - Build an ablkcipher SPU2 request message header,
+ * spu_cipher_req_init() - Build an skcipher SPU2 request message header,
  * including FMD and OMD.
  * @spu_hdr:       Location of start of SPU request (FMD field)
  * @cipher_parms:  Parameters describing cipher request
  *
  * Called at setkey time to initialize a msg header that can be reused for all
- * subsequent ablkcipher requests. Construct the message starting at spu_hdr.
+ * subsequent skcipher requests. Construct the message starting at spu_hdr.
  * Caller should allocate this buffer in DMA-able memory at least
  * SPU_HEADER_ALLOC_LEN bytes long.
  *
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
