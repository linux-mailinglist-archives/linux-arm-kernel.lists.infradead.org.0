Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1A0EFEB1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:36:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y4Z8lhOwEINal5gCII0MzTB92fWRWaMz1608iOjcnHk=; b=LcmC7rIf+gd8at
	c5gBYhIsDMl3MIZAf4D1+5o4EQBRWG4gij0EirdCLW3xF1PCT1hxzur5C2uGP3vrnekFraKMWdJeV
	dEBQKj/0m++sWXW3rDzNsYgwi0XWqUX+gmyJ+NJr/mV1jG9l5M1rVv+l+rdi1oq+mBeuCZ0K8DX3z
	ebRwR6oT8nbFGgZ6/3C0FqAzrcnc8skObW9OrU5vFeT+nEjGMwbOs1U/FdnDppEMDE2kAuJ/pvitn
	5kGmBaJR+BliNNjFek+76C601hDZf6gYcTh01aBrCTvIG71+b6B0AglCYhBIKCSvNlccwGzcYLevl
	f4FArDkConFhca9skBhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRz0A-0008GG-My; Tue, 05 Nov 2019 13:36:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRytf-0000k4-Ae
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:29:31 +0000
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr [92.154.90.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EEEFB222C1;
 Tue,  5 Nov 2019 13:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572960562;
 bh=dVxGV1PsTDxtejtNwttA9sz726rnO+cxleYlGb83neY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zJiSzoqctU812sfI1l4Hg5J0MvZPNu+wu86VkaLlhQvdJMnYB/MMZMX5pkduI5jfb
 t6PpT45eiKvA6np7ico05v/ebuCBFLNw6kmiXrrK47TGDUlbsT8uDcVDN/kCjYk0UD
 XRJh4QMvld4Ie/lMVC1qSu8d/qhXVqHpJkBgO69o=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v3 21/29] crypto: stm32 - switch to skcipher API
Date: Tue,  5 Nov 2019 14:28:18 +0100
Message-Id: <20191105132826.1838-22-ardb@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191105132826.1838-1-ardb@kernel.org>
References: <20191105132826.1838-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_052923_553514_384BD64E 
X-CRM114-Status: GOOD (  15.90  )
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Eric Biggers <ebiggers@google.com>, Ard Biesheuvel <ardb@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
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

Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/crypto/stm32/stm32-cryp.c | 338 +++++++++-----------
 1 file changed, 159 insertions(+), 179 deletions(-)

diff --git a/drivers/crypto/stm32/stm32-cryp.c b/drivers/crypto/stm32/stm32-cryp.c
index ba5ea6434f9c..d347a1d6e351 100644
--- a/drivers/crypto/stm32/stm32-cryp.c
+++ b/drivers/crypto/stm32/stm32-cryp.c
@@ -19,6 +19,7 @@
 #include <crypto/engine.h>
 #include <crypto/scatterwalk.h>
 #include <crypto/internal/aead.h>
+#include <crypto/internal/skcipher.h>
 
 #define DRIVER_NAME             "stm32-cryp"
 
@@ -137,7 +138,7 @@ struct stm32_cryp {
 
 	struct crypto_engine    *engine;
 
-	struct ablkcipher_request *req;
+	struct skcipher_request *req;
 	struct aead_request     *areq;
 
 	size_t                  authsize;
@@ -395,8 +396,8 @@ static void stm32_cryp_hw_write_iv(struct stm32_cryp *cryp, u32 *iv)
 
 static void stm32_cryp_get_iv(struct stm32_cryp *cryp)
 {
-	struct ablkcipher_request *req = cryp->req;
-	u32 *tmp = req->info;
+	struct skcipher_request *req = cryp->req;
+	u32 *tmp = (void *)req->iv;
 
 	if (!tmp)
 		return;
@@ -616,7 +617,7 @@ static int stm32_cryp_hw_init(struct stm32_cryp *cryp)
 	case CR_TDES_CBC:
 	case CR_AES_CBC:
 	case CR_AES_CTR:
-		stm32_cryp_hw_write_iv(cryp, (u32 *)cryp->req->info);
+		stm32_cryp_hw_write_iv(cryp, (u32 *)cryp->req->iv);
 		break;
 
 	default:
@@ -667,7 +668,7 @@ static void stm32_cryp_finish_req(struct stm32_cryp *cryp, int err)
 	if (is_gcm(cryp) || is_ccm(cryp))
 		crypto_finalize_aead_request(cryp->engine, cryp->areq, err);
 	else
-		crypto_finalize_ablkcipher_request(cryp->engine, cryp->req,
+		crypto_finalize_skcipher_request(cryp->engine, cryp->req,
 						   err);
 
 	memset(cryp->ctx->key, 0, cryp->ctx->keylen);
@@ -685,11 +686,11 @@ static int stm32_cryp_cipher_one_req(struct crypto_engine *engine, void *areq);
 static int stm32_cryp_prepare_cipher_req(struct crypto_engine *engine,
 					 void *areq);
 
-static int stm32_cryp_cra_init(struct crypto_tfm *tfm)
+static int stm32_cryp_init_tfm(struct crypto_skcipher *tfm)
 {
-	struct stm32_cryp_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct stm32_cryp_ctx *ctx = crypto_skcipher_ctx(tfm);
 
-	tfm->crt_ablkcipher.reqsize = sizeof(struct stm32_cryp_reqctx);
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct stm32_cryp_reqctx));
 
 	ctx->enginectx.op.do_one_request = stm32_cryp_cipher_one_req;
 	ctx->enginectx.op.prepare_request = stm32_cryp_prepare_cipher_req;
@@ -714,11 +715,11 @@ static int stm32_cryp_aes_aead_init(struct crypto_aead *tfm)
 	return 0;
 }
 
-static int stm32_cryp_crypt(struct ablkcipher_request *req, unsigned long mode)
+static int stm32_cryp_crypt(struct skcipher_request *req, unsigned long mode)
 {
-	struct stm32_cryp_ctx *ctx = crypto_ablkcipher_ctx(
-			crypto_ablkcipher_reqtfm(req));
-	struct stm32_cryp_reqctx *rctx = ablkcipher_request_ctx(req);
+	struct stm32_cryp_ctx *ctx = crypto_skcipher_ctx(
+			crypto_skcipher_reqtfm(req));
+	struct stm32_cryp_reqctx *rctx = skcipher_request_ctx(req);
 	struct stm32_cryp *cryp = stm32_cryp_find_dev(ctx);
 
 	if (!cryp)
@@ -726,7 +727,7 @@ static int stm32_cryp_crypt(struct ablkcipher_request *req, unsigned long mode)
 
 	rctx->mode = mode;
 
-	return crypto_transfer_ablkcipher_request_to_engine(cryp->engine, req);
+	return crypto_transfer_skcipher_request_to_engine(cryp->engine, req);
 }
 
 static int stm32_cryp_aead_crypt(struct aead_request *req, unsigned long mode)
@@ -743,10 +744,10 @@ static int stm32_cryp_aead_crypt(struct aead_request *req, unsigned long mode)
 	return crypto_transfer_aead_request_to_engine(cryp->engine, req);
 }
 
-static int stm32_cryp_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
+static int stm32_cryp_setkey(struct crypto_skcipher *tfm, const u8 *key,
 			     unsigned int keylen)
 {
-	struct stm32_cryp_ctx *ctx = crypto_ablkcipher_ctx(tfm);
+	struct stm32_cryp_ctx *ctx = crypto_skcipher_ctx(tfm);
 
 	memcpy(ctx->key, key, keylen);
 	ctx->keylen = keylen;
@@ -754,7 +755,7 @@ static int stm32_cryp_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
 	return 0;
 }
 
-static int stm32_cryp_aes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
+static int stm32_cryp_aes_setkey(struct crypto_skcipher *tfm, const u8 *key,
 				 unsigned int keylen)
 {
 	if (keylen != AES_KEYSIZE_128 && keylen != AES_KEYSIZE_192 &&
@@ -764,17 +765,17 @@ static int stm32_cryp_aes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
 		return stm32_cryp_setkey(tfm, key, keylen);
 }
 
-static int stm32_cryp_des_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
+static int stm32_cryp_des_setkey(struct crypto_skcipher *tfm, const u8 *key,
 				 unsigned int keylen)
 {
-	return verify_ablkcipher_des_key(tfm, key) ?:
+	return verify_skcipher_des_key(tfm, key) ?:
 	       stm32_cryp_setkey(tfm, key, keylen);
 }
 
-static int stm32_cryp_tdes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
+static int stm32_cryp_tdes_setkey(struct crypto_skcipher *tfm, const u8 *key,
 				  unsigned int keylen)
 {
-	return verify_ablkcipher_des3_key(tfm, key) ?:
+	return verify_skcipher_des3_key(tfm, key) ?:
 	       stm32_cryp_setkey(tfm, key, keylen);
 }
 
@@ -818,32 +819,32 @@ static int stm32_cryp_aes_ccm_setauthsize(struct crypto_aead *tfm,
 	return 0;
 }
 
-static int stm32_cryp_aes_ecb_encrypt(struct ablkcipher_request *req)
+static int stm32_cryp_aes_ecb_encrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_AES | FLG_ECB | FLG_ENCRYPT);
 }
 
-static int stm32_cryp_aes_ecb_decrypt(struct ablkcipher_request *req)
+static int stm32_cryp_aes_ecb_decrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_AES | FLG_ECB);
 }
 
-static int stm32_cryp_aes_cbc_encrypt(struct ablkcipher_request *req)
+static int stm32_cryp_aes_cbc_encrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_AES | FLG_CBC | FLG_ENCRYPT);
 }
 
-static int stm32_cryp_aes_cbc_decrypt(struct ablkcipher_request *req)
+static int stm32_cryp_aes_cbc_decrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_AES | FLG_CBC);
 }
 
-static int stm32_cryp_aes_ctr_encrypt(struct ablkcipher_request *req)
+static int stm32_cryp_aes_ctr_encrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_AES | FLG_CTR | FLG_ENCRYPT);
 }
 
-static int stm32_cryp_aes_ctr_decrypt(struct ablkcipher_request *req)
+static int stm32_cryp_aes_ctr_decrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_AES | FLG_CTR);
 }
@@ -868,47 +869,47 @@ static int stm32_cryp_aes_ccm_decrypt(struct aead_request *req)
 	return stm32_cryp_aead_crypt(req, FLG_AES | FLG_CCM);
 }
 
-static int stm32_cryp_des_ecb_encrypt(struct ablkcipher_request *req)
+static int stm32_cryp_des_ecb_encrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_DES | FLG_ECB | FLG_ENCRYPT);
 }
 
-static int stm32_cryp_des_ecb_decrypt(struct ablkcipher_request *req)
+static int stm32_cryp_des_ecb_decrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_DES | FLG_ECB);
 }
 
-static int stm32_cryp_des_cbc_encrypt(struct ablkcipher_request *req)
+static int stm32_cryp_des_cbc_encrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_DES | FLG_CBC | FLG_ENCRYPT);
 }
 
-static int stm32_cryp_des_cbc_decrypt(struct ablkcipher_request *req)
+static int stm32_cryp_des_cbc_decrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_DES | FLG_CBC);
 }
 
-static int stm32_cryp_tdes_ecb_encrypt(struct ablkcipher_request *req)
+static int stm32_cryp_tdes_ecb_encrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_TDES | FLG_ECB | FLG_ENCRYPT);
 }
 
-static int stm32_cryp_tdes_ecb_decrypt(struct ablkcipher_request *req)
+static int stm32_cryp_tdes_ecb_decrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_TDES | FLG_ECB);
 }
 
-static int stm32_cryp_tdes_cbc_encrypt(struct ablkcipher_request *req)
+static int stm32_cryp_tdes_cbc_encrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_TDES | FLG_CBC | FLG_ENCRYPT);
 }
 
-static int stm32_cryp_tdes_cbc_decrypt(struct ablkcipher_request *req)
+static int stm32_cryp_tdes_cbc_decrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_TDES | FLG_CBC);
 }
 
-static int stm32_cryp_prepare_req(struct ablkcipher_request *req,
+static int stm32_cryp_prepare_req(struct skcipher_request *req,
 				  struct aead_request *areq)
 {
 	struct stm32_cryp_ctx *ctx;
@@ -919,7 +920,7 @@ static int stm32_cryp_prepare_req(struct ablkcipher_request *req,
 	if (!req && !areq)
 		return -EINVAL;
 
-	ctx = req ? crypto_ablkcipher_ctx(crypto_ablkcipher_reqtfm(req)) :
+	ctx = req ? crypto_skcipher_ctx(crypto_skcipher_reqtfm(req)) :
 		    crypto_aead_ctx(crypto_aead_reqtfm(areq));
 
 	cryp = ctx->cryp;
@@ -927,7 +928,7 @@ static int stm32_cryp_prepare_req(struct ablkcipher_request *req,
 	if (!cryp)
 		return -ENODEV;
 
-	rctx = req ? ablkcipher_request_ctx(req) : aead_request_ctx(areq);
+	rctx = req ? skcipher_request_ctx(req) : aead_request_ctx(areq);
 	rctx->mode &= FLG_MODE_MASK;
 
 	ctx->cryp = cryp;
@@ -939,7 +940,7 @@ static int stm32_cryp_prepare_req(struct ablkcipher_request *req,
 	if (req) {
 		cryp->req = req;
 		cryp->areq = NULL;
-		cryp->total_in = req->nbytes;
+		cryp->total_in = req->cryptlen;
 		cryp->total_out = cryp->total_in;
 	} else {
 		/*
@@ -1016,8 +1017,8 @@ static int stm32_cryp_prepare_req(struct ablkcipher_request *req,
 static int stm32_cryp_prepare_cipher_req(struct crypto_engine *engine,
 					 void *areq)
 {
-	struct ablkcipher_request *req = container_of(areq,
-						      struct ablkcipher_request,
+	struct skcipher_request *req = container_of(areq,
+						      struct skcipher_request,
 						      base);
 
 	return stm32_cryp_prepare_req(req, NULL);
@@ -1025,11 +1026,11 @@ static int stm32_cryp_prepare_cipher_req(struct crypto_engine *engine,
 
 static int stm32_cryp_cipher_one_req(struct crypto_engine *engine, void *areq)
 {
-	struct ablkcipher_request *req = container_of(areq,
-						      struct ablkcipher_request,
+	struct skcipher_request *req = container_of(areq,
+						      struct skcipher_request,
 						      base);
-	struct stm32_cryp_ctx *ctx = crypto_ablkcipher_ctx(
-			crypto_ablkcipher_reqtfm(req));
+	struct stm32_cryp_ctx *ctx = crypto_skcipher_ctx(
+			crypto_skcipher_reqtfm(req));
 	struct stm32_cryp *cryp = ctx->cryp;
 
 	if (!cryp)
@@ -1724,150 +1725,129 @@ static irqreturn_t stm32_cryp_irq(int irq, void *arg)
 	return IRQ_WAKE_THREAD;
 }
 
-static struct crypto_alg crypto_algs[] = {
-{
-	.cra_name		= "ecb(aes)",
-	.cra_driver_name	= "stm32-ecb-aes",
-	.cra_priority		= 200,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-				  CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= AES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct stm32_cryp_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= stm32_cryp_cra_init,
-	.cra_ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.setkey		= stm32_cryp_aes_setkey,
-		.encrypt	= stm32_cryp_aes_ecb_encrypt,
-		.decrypt	= stm32_cryp_aes_ecb_decrypt,
-	}
+static struct skcipher_alg crypto_algs[] = {
+{
+	.base.cra_name		= "ecb(aes)",
+	.base.cra_driver_name	= "stm32-ecb-aes",
+	.base.cra_priority	= 200,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= AES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct stm32_cryp_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= stm32_cryp_init_tfm,
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.setkey			= stm32_cryp_aes_setkey,
+	.encrypt		= stm32_cryp_aes_ecb_encrypt,
+	.decrypt		= stm32_cryp_aes_ecb_decrypt,
 },
 {
-	.cra_name		= "cbc(aes)",
-	.cra_driver_name	= "stm32-cbc-aes",
-	.cra_priority		= 200,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-				  CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= AES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct stm32_cryp_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= stm32_cryp_cra_init,
-	.cra_ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.ivsize		= AES_BLOCK_SIZE,
-		.setkey		= stm32_cryp_aes_setkey,
-		.encrypt	= stm32_cryp_aes_cbc_encrypt,
-		.decrypt	= stm32_cryp_aes_cbc_decrypt,
-	}
+	.base.cra_name		= "cbc(aes)",
+	.base.cra_driver_name	= "stm32-cbc-aes",
+	.base.cra_priority	= 200,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= AES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct stm32_cryp_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= stm32_cryp_init_tfm,
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.ivsize			= AES_BLOCK_SIZE,
+	.setkey			= stm32_cryp_aes_setkey,
+	.encrypt		= stm32_cryp_aes_cbc_encrypt,
+	.decrypt		= stm32_cryp_aes_cbc_decrypt,
 },
 {
-	.cra_name		= "ctr(aes)",
-	.cra_driver_name	= "stm32-ctr-aes",
-	.cra_priority		= 200,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-				  CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= 1,
-	.cra_ctxsize		= sizeof(struct stm32_cryp_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= stm32_cryp_cra_init,
-	.cra_ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.ivsize		= AES_BLOCK_SIZE,
-		.setkey		= stm32_cryp_aes_setkey,
-		.encrypt	= stm32_cryp_aes_ctr_encrypt,
-		.decrypt	= stm32_cryp_aes_ctr_decrypt,
-	}
+	.base.cra_name		= "ctr(aes)",
+	.base.cra_driver_name	= "stm32-ctr-aes",
+	.base.cra_priority	= 200,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= 1,
+	.base.cra_ctxsize	= sizeof(struct stm32_cryp_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= stm32_cryp_init_tfm,
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.ivsize			= AES_BLOCK_SIZE,
+	.setkey			= stm32_cryp_aes_setkey,
+	.encrypt		= stm32_cryp_aes_ctr_encrypt,
+	.decrypt		= stm32_cryp_aes_ctr_decrypt,
 },
 {
-	.cra_name		= "ecb(des)",
-	.cra_driver_name	= "stm32-ecb-des",
-	.cra_priority		= 200,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-				  CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= DES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct stm32_cryp_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= stm32_cryp_cra_init,
-	.cra_ablkcipher = {
-		.min_keysize	= DES_BLOCK_SIZE,
-		.max_keysize	= DES_BLOCK_SIZE,
-		.setkey		= stm32_cryp_des_setkey,
-		.encrypt	= stm32_cryp_des_ecb_encrypt,
-		.decrypt	= stm32_cryp_des_ecb_decrypt,
-	}
+	.base.cra_name		= "ecb(des)",
+	.base.cra_driver_name	= "stm32-ecb-des",
+	.base.cra_priority	= 200,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= DES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct stm32_cryp_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= stm32_cryp_init_tfm,
+	.min_keysize		= DES_BLOCK_SIZE,
+	.max_keysize		= DES_BLOCK_SIZE,
+	.setkey			= stm32_cryp_des_setkey,
+	.encrypt		= stm32_cryp_des_ecb_encrypt,
+	.decrypt		= stm32_cryp_des_ecb_decrypt,
 },
 {
-	.cra_name		= "cbc(des)",
-	.cra_driver_name	= "stm32-cbc-des",
-	.cra_priority		= 200,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-				  CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= DES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct stm32_cryp_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= stm32_cryp_cra_init,
-	.cra_ablkcipher = {
-		.min_keysize	= DES_BLOCK_SIZE,
-		.max_keysize	= DES_BLOCK_SIZE,
-		.ivsize		= DES_BLOCK_SIZE,
-		.setkey		= stm32_cryp_des_setkey,
-		.encrypt	= stm32_cryp_des_cbc_encrypt,
-		.decrypt	= stm32_cryp_des_cbc_decrypt,
-	}
+	.base.cra_name		= "cbc(des)",
+	.base.cra_driver_name	= "stm32-cbc-des",
+	.base.cra_priority	= 200,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= DES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct stm32_cryp_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= stm32_cryp_init_tfm,
+	.min_keysize		= DES_BLOCK_SIZE,
+	.max_keysize		= DES_BLOCK_SIZE,
+	.ivsize			= DES_BLOCK_SIZE,
+	.setkey			= stm32_cryp_des_setkey,
+	.encrypt		= stm32_cryp_des_cbc_encrypt,
+	.decrypt		= stm32_cryp_des_cbc_decrypt,
 },
 {
-	.cra_name		= "ecb(des3_ede)",
-	.cra_driver_name	= "stm32-ecb-des3",
-	.cra_priority		= 200,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-				  CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= DES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct stm32_cryp_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= stm32_cryp_cra_init,
-	.cra_ablkcipher = {
-		.min_keysize	= 3 * DES_BLOCK_SIZE,
-		.max_keysize	= 3 * DES_BLOCK_SIZE,
-		.setkey		= stm32_cryp_tdes_setkey,
-		.encrypt	= stm32_cryp_tdes_ecb_encrypt,
-		.decrypt	= stm32_cryp_tdes_ecb_decrypt,
-	}
+	.base.cra_name		= "ecb(des3_ede)",
+	.base.cra_driver_name	= "stm32-ecb-des3",
+	.base.cra_priority	= 200,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= DES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct stm32_cryp_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= stm32_cryp_init_tfm,
+	.min_keysize		= 3 * DES_BLOCK_SIZE,
+	.max_keysize		= 3 * DES_BLOCK_SIZE,
+	.setkey			= stm32_cryp_tdes_setkey,
+	.encrypt		= stm32_cryp_tdes_ecb_encrypt,
+	.decrypt		= stm32_cryp_tdes_ecb_decrypt,
 },
 {
-	.cra_name		= "cbc(des3_ede)",
-	.cra_driver_name	= "stm32-cbc-des3",
-	.cra_priority		= 200,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-				  CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= DES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct stm32_cryp_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= stm32_cryp_cra_init,
-	.cra_ablkcipher = {
-		.min_keysize	= 3 * DES_BLOCK_SIZE,
-		.max_keysize	= 3 * DES_BLOCK_SIZE,
-		.ivsize		= DES_BLOCK_SIZE,
-		.setkey		= stm32_cryp_tdes_setkey,
-		.encrypt	= stm32_cryp_tdes_cbc_encrypt,
-		.decrypt	= stm32_cryp_tdes_cbc_decrypt,
-	}
+	.base.cra_name		= "cbc(des3_ede)",
+	.base.cra_driver_name	= "stm32-cbc-des3",
+	.base.cra_priority	= 200,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= DES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct stm32_cryp_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= stm32_cryp_init_tfm,
+	.min_keysize		= 3 * DES_BLOCK_SIZE,
+	.max_keysize		= 3 * DES_BLOCK_SIZE,
+	.ivsize			= DES_BLOCK_SIZE,
+	.setkey			= stm32_cryp_tdes_setkey,
+	.encrypt		= stm32_cryp_tdes_cbc_encrypt,
+	.decrypt		= stm32_cryp_tdes_cbc_decrypt,
 },
 };
 
@@ -2010,7 +1990,7 @@ static int stm32_cryp_probe(struct platform_device *pdev)
 		goto err_engine2;
 	}
 
-	ret = crypto_register_algs(crypto_algs, ARRAY_SIZE(crypto_algs));
+	ret = crypto_register_skciphers(crypto_algs, ARRAY_SIZE(crypto_algs));
 	if (ret) {
 		dev_err(dev, "Could not register algs\n");
 		goto err_algs;
@@ -2027,7 +2007,7 @@ static int stm32_cryp_probe(struct platform_device *pdev)
 	return 0;
 
 err_aead_algs:
-	crypto_unregister_algs(crypto_algs, ARRAY_SIZE(crypto_algs));
+	crypto_unregister_skciphers(crypto_algs, ARRAY_SIZE(crypto_algs));
 err_algs:
 err_engine2:
 	crypto_engine_exit(cryp->engine);
@@ -2059,7 +2039,7 @@ static int stm32_cryp_remove(struct platform_device *pdev)
 		return ret;
 
 	crypto_unregister_aeads(aead_algs, ARRAY_SIZE(aead_algs));
-	crypto_unregister_algs(crypto_algs, ARRAY_SIZE(crypto_algs));
+	crypto_unregister_skciphers(crypto_algs, ARRAY_SIZE(crypto_algs));
 
 	crypto_engine_exit(cryp->engine);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
