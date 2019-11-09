Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 599ECF6087
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 18:14:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Rsyhi+QHXzAuOgiXeRP6cuXM/RDNQ5F569Phrb6kqVM=; b=Yq3p16D9lz+ZiIYV3jaZri1xbG
	L84xSvXDpNsu1BXd+i/NBO5coAc/jl37XsDRtIEPbkIeSmoY+4styGubFN2qqsdQfogWqoXMklDKP
	4PgBA6KrP7n3KHd6+uLd432b1ViMEUDGwUWz5QQWcpC4fjt5Ila1qcV9vyAHImk9ZHOsxOtWT/Xe6
	EITE/+hzTVx0I3TDKzKFTwCPdvH+aETbm/vmvwO2EUOfZryysayua7iiVCsaFFA8WqhFECt8ghkLa
	z3CAgP02i+4Rt6Wcyl4b3QVYuH6IeUZUBmyrmneaL6Eo71ekc+6JAPEZIEScUEH+RXTyT2J2jWG7b
	T6M5m4VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTUJF-0006iA-DW; Sat, 09 Nov 2019 17:14:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTUGH-0004cm-Gb
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 17:11:01 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15600207FF;
 Sat,  9 Nov 2019 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573319456;
 bh=d3h463wUI2dJQ8vtz4junHF5V2/XIdFUc0YYX/iiLgA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=b783Fd+fQ3oy0K0Ud02far69Mmlwn+z2m4OKEIpvFGtfXBk0Ylrl+5iaMhTZUTVnC
 L5lSY8LfW006JpKQCipUmvmc/mQB5ypSggH+Tb11nTqrifmmlDc1v2K2Lhflww/Jzi
 5BV85fl8VOAspoo+TROtAm6QzG75DOP4bWl75QFQ=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v4 08/29] crypto: atmel-aes - switch to skcipher API
Date: Sat,  9 Nov 2019 18:09:33 +0100
Message-Id: <20191109170954.756-9-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191109170954.756-1-ardb@kernel.org>
References: <20191109170954.756-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_091057_708393_1EDB36E2 
X-CRM114-Status: GOOD (  16.54  )
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Eric Biggers <ebiggers@google.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
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

Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
Tested-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/crypto/atmel-aes.c | 509 ++++++++++----------
 1 file changed, 245 insertions(+), 264 deletions(-)

diff --git a/drivers/crypto/atmel-aes.c b/drivers/crypto/atmel-aes.c
index f24af212260b..db1f6ed7ac59 100644
--- a/drivers/crypto/atmel-aes.c
+++ b/drivers/crypto/atmel-aes.c
@@ -36,6 +36,7 @@
 #include <crypto/gcm.h>
 #include <crypto/xts.h>
 #include <crypto/internal/aead.h>
+#include <crypto/internal/skcipher.h>
 #include <linux/platform_data/crypto-atmel.h>
 #include <dt-bindings/dma/at91.h>
 #include "atmel-aes-regs.h"
@@ -492,23 +493,23 @@ static void atmel_aes_authenc_complete(struct atmel_aes_dev *dd, int err);
 
 static void atmel_aes_set_iv_as_last_ciphertext_block(struct atmel_aes_dev *dd)
 {
-	struct ablkcipher_request *req = ablkcipher_request_cast(dd->areq);
-	struct atmel_aes_reqctx *rctx = ablkcipher_request_ctx(req);
-	struct crypto_ablkcipher *ablkcipher = crypto_ablkcipher_reqtfm(req);
-	unsigned int ivsize = crypto_ablkcipher_ivsize(ablkcipher);
+	struct skcipher_request *req = skcipher_request_cast(dd->areq);
+	struct atmel_aes_reqctx *rctx = skcipher_request_ctx(req);
+	struct crypto_skcipher *skcipher = crypto_skcipher_reqtfm(req);
+	unsigned int ivsize = crypto_skcipher_ivsize(skcipher);
 
-	if (req->nbytes < ivsize)
+	if (req->cryptlen < ivsize)
 		return;
 
 	if (rctx->mode & AES_FLAGS_ENCRYPT) {
-		scatterwalk_map_and_copy(req->info, req->dst,
-					 req->nbytes - ivsize, ivsize, 0);
+		scatterwalk_map_and_copy(req->iv, req->dst,
+					 req->cryptlen - ivsize, ivsize, 0);
 	} else {
 		if (req->src == req->dst)
-			memcpy(req->info, rctx->lastc, ivsize);
+			memcpy(req->iv, rctx->lastc, ivsize);
 		else
-			scatterwalk_map_and_copy(req->info, req->src,
-						 req->nbytes - ivsize,
+			scatterwalk_map_and_copy(req->iv, req->src,
+						 req->cryptlen - ivsize,
 						 ivsize, 0);
 	}
 }
@@ -981,9 +982,9 @@ static int atmel_aes_transfer_complete(struct atmel_aes_dev *dd)
 
 static int atmel_aes_start(struct atmel_aes_dev *dd)
 {
-	struct ablkcipher_request *req = ablkcipher_request_cast(dd->areq);
-	struct atmel_aes_reqctx *rctx = ablkcipher_request_ctx(req);
-	bool use_dma = (req->nbytes >= ATMEL_AES_DMA_THRESHOLD ||
+	struct skcipher_request *req = skcipher_request_cast(dd->areq);
+	struct atmel_aes_reqctx *rctx = skcipher_request_ctx(req);
+	bool use_dma = (req->cryptlen >= ATMEL_AES_DMA_THRESHOLD ||
 			dd->ctx->block_size != AES_BLOCK_SIZE);
 	int err;
 
@@ -993,12 +994,12 @@ static int atmel_aes_start(struct atmel_aes_dev *dd)
 	if (err)
 		return atmel_aes_complete(dd, err);
 
-	atmel_aes_write_ctrl(dd, use_dma, req->info);
+	atmel_aes_write_ctrl(dd, use_dma, (void *)req->iv);
 	if (use_dma)
-		return atmel_aes_dma_start(dd, req->src, req->dst, req->nbytes,
+		return atmel_aes_dma_start(dd, req->src, req->dst, req->cryptlen,
 					   atmel_aes_transfer_complete);
 
-	return atmel_aes_cpu_start(dd, req->src, req->dst, req->nbytes,
+	return atmel_aes_cpu_start(dd, req->src, req->dst, req->cryptlen,
 				   atmel_aes_transfer_complete);
 }
 
@@ -1011,7 +1012,7 @@ atmel_aes_ctr_ctx_cast(struct atmel_aes_base_ctx *ctx)
 static int atmel_aes_ctr_transfer(struct atmel_aes_dev *dd)
 {
 	struct atmel_aes_ctr_ctx *ctx = atmel_aes_ctr_ctx_cast(dd->ctx);
-	struct ablkcipher_request *req = ablkcipher_request_cast(dd->areq);
+	struct skcipher_request *req = skcipher_request_cast(dd->areq);
 	struct scatterlist *src, *dst;
 	u32 ctr, blocks;
 	size_t datalen;
@@ -1019,11 +1020,11 @@ static int atmel_aes_ctr_transfer(struct atmel_aes_dev *dd)
 
 	/* Check for transfer completion. */
 	ctx->offset += dd->total;
-	if (ctx->offset >= req->nbytes)
+	if (ctx->offset >= req->cryptlen)
 		return atmel_aes_transfer_complete(dd);
 
 	/* Compute data length. */
-	datalen = req->nbytes - ctx->offset;
+	datalen = req->cryptlen - ctx->offset;
 	blocks = DIV_ROUND_UP(datalen, AES_BLOCK_SIZE);
 	ctr = be32_to_cpu(ctx->iv[3]);
 	if (dd->caps.has_ctr32) {
@@ -1076,8 +1077,8 @@ static int atmel_aes_ctr_transfer(struct atmel_aes_dev *dd)
 static int atmel_aes_ctr_start(struct atmel_aes_dev *dd)
 {
 	struct atmel_aes_ctr_ctx *ctx = atmel_aes_ctr_ctx_cast(dd->ctx);
-	struct ablkcipher_request *req = ablkcipher_request_cast(dd->areq);
-	struct atmel_aes_reqctx *rctx = ablkcipher_request_ctx(req);
+	struct skcipher_request *req = skcipher_request_cast(dd->areq);
+	struct atmel_aes_reqctx *rctx = skcipher_request_ctx(req);
 	int err;
 
 	atmel_aes_set_mode(dd, rctx);
@@ -1086,16 +1087,16 @@ static int atmel_aes_ctr_start(struct atmel_aes_dev *dd)
 	if (err)
 		return atmel_aes_complete(dd, err);
 
-	memcpy(ctx->iv, req->info, AES_BLOCK_SIZE);
+	memcpy(ctx->iv, req->iv, AES_BLOCK_SIZE);
 	ctx->offset = 0;
 	dd->total = 0;
 	return atmel_aes_ctr_transfer(dd);
 }
 
-static int atmel_aes_crypt(struct ablkcipher_request *req, unsigned long mode)
+static int atmel_aes_crypt(struct skcipher_request *req, unsigned long mode)
 {
-	struct crypto_ablkcipher *ablkcipher = crypto_ablkcipher_reqtfm(req);
-	struct atmel_aes_base_ctx *ctx = crypto_ablkcipher_ctx(ablkcipher);
+	struct crypto_skcipher *skcipher = crypto_skcipher_reqtfm(req);
+	struct atmel_aes_base_ctx *ctx = crypto_skcipher_ctx(skcipher);
 	struct atmel_aes_reqctx *rctx;
 	struct atmel_aes_dev *dd;
 
@@ -1126,30 +1127,30 @@ static int atmel_aes_crypt(struct ablkcipher_request *req, unsigned long mode)
 	if (!dd)
 		return -ENODEV;
 
-	rctx = ablkcipher_request_ctx(req);
+	rctx = skcipher_request_ctx(req);
 	rctx->mode = mode;
 
 	if (!(mode & AES_FLAGS_ENCRYPT) && (req->src == req->dst)) {
-		unsigned int ivsize = crypto_ablkcipher_ivsize(ablkcipher);
+		unsigned int ivsize = crypto_skcipher_ivsize(skcipher);
 
-		if (req->nbytes >= ivsize)
+		if (req->cryptlen >= ivsize)
 			scatterwalk_map_and_copy(rctx->lastc, req->src,
-						 req->nbytes - ivsize,
+						 req->cryptlen - ivsize,
 						 ivsize, 0);
 	}
 
 	return atmel_aes_handle_queue(dd, &req->base);
 }
 
-static int atmel_aes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
+static int atmel_aes_setkey(struct crypto_skcipher *tfm, const u8 *key,
 			   unsigned int keylen)
 {
-	struct atmel_aes_base_ctx *ctx = crypto_ablkcipher_ctx(tfm);
+	struct atmel_aes_base_ctx *ctx = crypto_skcipher_ctx(tfm);
 
 	if (keylen != AES_KEYSIZE_128 &&
 	    keylen != AES_KEYSIZE_192 &&
 	    keylen != AES_KEYSIZE_256) {
-		crypto_ablkcipher_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
+		crypto_skcipher_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
 		return -EINVAL;
 	}
 
@@ -1159,297 +1160,279 @@ static int atmel_aes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
 	return 0;
 }
 
-static int atmel_aes_ecb_encrypt(struct ablkcipher_request *req)
+static int atmel_aes_ecb_encrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_ECB | AES_FLAGS_ENCRYPT);
 }
 
-static int atmel_aes_ecb_decrypt(struct ablkcipher_request *req)
+static int atmel_aes_ecb_decrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_ECB);
 }
 
-static int atmel_aes_cbc_encrypt(struct ablkcipher_request *req)
+static int atmel_aes_cbc_encrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_CBC | AES_FLAGS_ENCRYPT);
 }
 
-static int atmel_aes_cbc_decrypt(struct ablkcipher_request *req)
+static int atmel_aes_cbc_decrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_CBC);
 }
 
-static int atmel_aes_ofb_encrypt(struct ablkcipher_request *req)
+static int atmel_aes_ofb_encrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_OFB | AES_FLAGS_ENCRYPT);
 }
 
-static int atmel_aes_ofb_decrypt(struct ablkcipher_request *req)
+static int atmel_aes_ofb_decrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_OFB);
 }
 
-static int atmel_aes_cfb_encrypt(struct ablkcipher_request *req)
+static int atmel_aes_cfb_encrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_CFB128 | AES_FLAGS_ENCRYPT);
 }
 
-static int atmel_aes_cfb_decrypt(struct ablkcipher_request *req)
+static int atmel_aes_cfb_decrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_CFB128);
 }
 
-static int atmel_aes_cfb64_encrypt(struct ablkcipher_request *req)
+static int atmel_aes_cfb64_encrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_CFB64 | AES_FLAGS_ENCRYPT);
 }
 
-static int atmel_aes_cfb64_decrypt(struct ablkcipher_request *req)
+static int atmel_aes_cfb64_decrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_CFB64);
 }
 
-static int atmel_aes_cfb32_encrypt(struct ablkcipher_request *req)
+static int atmel_aes_cfb32_encrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_CFB32 | AES_FLAGS_ENCRYPT);
 }
 
-static int atmel_aes_cfb32_decrypt(struct ablkcipher_request *req)
+static int atmel_aes_cfb32_decrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_CFB32);
 }
 
-static int atmel_aes_cfb16_encrypt(struct ablkcipher_request *req)
+static int atmel_aes_cfb16_encrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_CFB16 | AES_FLAGS_ENCRYPT);
 }
 
-static int atmel_aes_cfb16_decrypt(struct ablkcipher_request *req)
+static int atmel_aes_cfb16_decrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_CFB16);
 }
 
-static int atmel_aes_cfb8_encrypt(struct ablkcipher_request *req)
+static int atmel_aes_cfb8_encrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_CFB8 | AES_FLAGS_ENCRYPT);
 }
 
-static int atmel_aes_cfb8_decrypt(struct ablkcipher_request *req)
+static int atmel_aes_cfb8_decrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_CFB8);
 }
 
-static int atmel_aes_ctr_encrypt(struct ablkcipher_request *req)
+static int atmel_aes_ctr_encrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_CTR | AES_FLAGS_ENCRYPT);
 }
 
-static int atmel_aes_ctr_decrypt(struct ablkcipher_request *req)
+static int atmel_aes_ctr_decrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_CTR);
 }
 
-static int atmel_aes_cra_init(struct crypto_tfm *tfm)
+static int atmel_aes_init_tfm(struct crypto_skcipher *tfm)
 {
-	struct atmel_aes_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct atmel_aes_ctx *ctx = crypto_skcipher_ctx(tfm);
 
-	tfm->crt_ablkcipher.reqsize = sizeof(struct atmel_aes_reqctx);
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct atmel_aes_reqctx));
 	ctx->base.start = atmel_aes_start;
 
 	return 0;
 }
 
-static int atmel_aes_ctr_cra_init(struct crypto_tfm *tfm)
+static int atmel_aes_ctr_init_tfm(struct crypto_skcipher *tfm)
 {
-	struct atmel_aes_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct atmel_aes_ctx *ctx = crypto_skcipher_ctx(tfm);
 
-	tfm->crt_ablkcipher.reqsize = sizeof(struct atmel_aes_reqctx);
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct atmel_aes_reqctx));
 	ctx->base.start = atmel_aes_ctr_start;
 
 	return 0;
 }
 
-static struct crypto_alg aes_algs[] = {
-{
-	.cra_name		= "ecb(aes)",
-	.cra_driver_name	= "atmel-ecb-aes",
-	.cra_priority		= ATMEL_AES_PRIORITY,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= AES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct atmel_aes_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_aes_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.setkey		= atmel_aes_setkey,
-		.encrypt	= atmel_aes_ecb_encrypt,
-		.decrypt	= atmel_aes_ecb_decrypt,
-	}
+static struct skcipher_alg aes_algs[] = {
+{
+	.base.cra_name		= "ecb(aes)",
+	.base.cra_driver_name	= "atmel-ecb-aes",
+	.base.cra_priority	= ATMEL_AES_PRIORITY,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= AES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct atmel_aes_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= atmel_aes_init_tfm,
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.setkey			= atmel_aes_setkey,
+	.encrypt		= atmel_aes_ecb_encrypt,
+	.decrypt		= atmel_aes_ecb_decrypt,
 },
 {
-	.cra_name		= "cbc(aes)",
-	.cra_driver_name	= "atmel-cbc-aes",
-	.cra_priority		= ATMEL_AES_PRIORITY,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= AES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct atmel_aes_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_aes_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.ivsize		= AES_BLOCK_SIZE,
-		.setkey		= atmel_aes_setkey,
-		.encrypt	= atmel_aes_cbc_encrypt,
-		.decrypt	= atmel_aes_cbc_decrypt,
-	}
+	.base.cra_name		= "cbc(aes)",
+	.base.cra_driver_name	= "atmel-cbc-aes",
+	.base.cra_priority	= ATMEL_AES_PRIORITY,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= AES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct atmel_aes_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= atmel_aes_init_tfm,
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.setkey			= atmel_aes_setkey,
+	.encrypt		= atmel_aes_cbc_encrypt,
+	.decrypt		= atmel_aes_cbc_decrypt,
+	.ivsize			= AES_BLOCK_SIZE,
 },
 {
-	.cra_name		= "ofb(aes)",
-	.cra_driver_name	= "atmel-ofb-aes",
-	.cra_priority		= ATMEL_AES_PRIORITY,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= AES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct atmel_aes_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_aes_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.ivsize		= AES_BLOCK_SIZE,
-		.setkey		= atmel_aes_setkey,
-		.encrypt	= atmel_aes_ofb_encrypt,
-		.decrypt	= atmel_aes_ofb_decrypt,
-	}
+	.base.cra_name		= "ofb(aes)",
+	.base.cra_driver_name	= "atmel-ofb-aes",
+	.base.cra_priority	= ATMEL_AES_PRIORITY,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= AES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct atmel_aes_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= atmel_aes_init_tfm,
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.setkey			= atmel_aes_setkey,
+	.encrypt		= atmel_aes_ofb_encrypt,
+	.decrypt		= atmel_aes_ofb_decrypt,
+	.ivsize			= AES_BLOCK_SIZE,
 },
 {
-	.cra_name		= "cfb(aes)",
-	.cra_driver_name	= "atmel-cfb-aes",
-	.cra_priority		= ATMEL_AES_PRIORITY,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= AES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct atmel_aes_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_aes_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.ivsize		= AES_BLOCK_SIZE,
-		.setkey		= atmel_aes_setkey,
-		.encrypt	= atmel_aes_cfb_encrypt,
-		.decrypt	= atmel_aes_cfb_decrypt,
-	}
+	.base.cra_name		= "cfb(aes)",
+	.base.cra_driver_name	= "atmel-cfb-aes",
+	.base.cra_priority	= ATMEL_AES_PRIORITY,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= AES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct atmel_aes_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= atmel_aes_init_tfm,
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.setkey			= atmel_aes_setkey,
+	.encrypt		= atmel_aes_cfb_encrypt,
+	.decrypt		= atmel_aes_cfb_decrypt,
+	.ivsize			= AES_BLOCK_SIZE,
 },
 {
-	.cra_name		= "cfb32(aes)",
-	.cra_driver_name	= "atmel-cfb32-aes",
-	.cra_priority		= ATMEL_AES_PRIORITY,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= CFB32_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct atmel_aes_ctx),
-	.cra_alignmask		= 0x3,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_aes_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.ivsize		= AES_BLOCK_SIZE,
-		.setkey		= atmel_aes_setkey,
-		.encrypt	= atmel_aes_cfb32_encrypt,
-		.decrypt	= atmel_aes_cfb32_decrypt,
-	}
+	.base.cra_name		= "cfb32(aes)",
+	.base.cra_driver_name	= "atmel-cfb32-aes",
+	.base.cra_priority	= ATMEL_AES_PRIORITY,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= CFB32_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct atmel_aes_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= atmel_aes_init_tfm,
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.setkey			= atmel_aes_setkey,
+	.encrypt		= atmel_aes_cfb32_encrypt,
+	.decrypt		= atmel_aes_cfb32_decrypt,
+	.ivsize			= AES_BLOCK_SIZE,
 },
 {
-	.cra_name		= "cfb16(aes)",
-	.cra_driver_name	= "atmel-cfb16-aes",
-	.cra_priority		= ATMEL_AES_PRIORITY,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= CFB16_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct atmel_aes_ctx),
-	.cra_alignmask		= 0x1,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_aes_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.ivsize		= AES_BLOCK_SIZE,
-		.setkey		= atmel_aes_setkey,
-		.encrypt	= atmel_aes_cfb16_encrypt,
-		.decrypt	= atmel_aes_cfb16_decrypt,
-	}
+	.base.cra_name		= "cfb16(aes)",
+	.base.cra_driver_name	= "atmel-cfb16-aes",
+	.base.cra_priority	= ATMEL_AES_PRIORITY,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= CFB16_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct atmel_aes_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= atmel_aes_init_tfm,
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.setkey			= atmel_aes_setkey,
+	.encrypt		= atmel_aes_cfb16_encrypt,
+	.decrypt		= atmel_aes_cfb16_decrypt,
+	.ivsize			= AES_BLOCK_SIZE,
 },
 {
-	.cra_name		= "cfb8(aes)",
-	.cra_driver_name	= "atmel-cfb8-aes",
-	.cra_priority		= ATMEL_AES_PRIORITY,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= CFB8_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct atmel_aes_ctx),
-	.cra_alignmask		= 0x0,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_aes_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.ivsize		= AES_BLOCK_SIZE,
-		.setkey		= atmel_aes_setkey,
-		.encrypt	= atmel_aes_cfb8_encrypt,
-		.decrypt	= atmel_aes_cfb8_decrypt,
-	}
+	.base.cra_name		= "cfb8(aes)",
+	.base.cra_driver_name	= "atmel-cfb8-aes",
+	.base.cra_priority	= ATMEL_AES_PRIORITY,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= CFB8_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct atmel_aes_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= atmel_aes_init_tfm,
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.setkey			= atmel_aes_setkey,
+	.encrypt		= atmel_aes_cfb8_encrypt,
+	.decrypt		= atmel_aes_cfb8_decrypt,
+	.ivsize			= AES_BLOCK_SIZE,
 },
 {
-	.cra_name		= "ctr(aes)",
-	.cra_driver_name	= "atmel-ctr-aes",
-	.cra_priority		= ATMEL_AES_PRIORITY,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= 1,
-	.cra_ctxsize		= sizeof(struct atmel_aes_ctr_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_aes_ctr_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.ivsize		= AES_BLOCK_SIZE,
-		.setkey		= atmel_aes_setkey,
-		.encrypt	= atmel_aes_ctr_encrypt,
-		.decrypt	= atmel_aes_ctr_decrypt,
-	}
+	.base.cra_name		= "ctr(aes)",
+	.base.cra_driver_name	= "atmel-ctr-aes",
+	.base.cra_priority	= ATMEL_AES_PRIORITY,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= 1,
+	.base.cra_ctxsize	= sizeof(struct atmel_aes_ctr_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= atmel_aes_ctr_init_tfm,
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.setkey			= atmel_aes_setkey,
+	.encrypt		= atmel_aes_ctr_encrypt,
+	.decrypt		= atmel_aes_ctr_decrypt,
+	.ivsize			= AES_BLOCK_SIZE,
 },
 };
 
-static struct crypto_alg aes_cfb64_alg = {
-	.cra_name		= "cfb64(aes)",
-	.cra_driver_name	= "atmel-cfb64-aes",
-	.cra_priority		= ATMEL_AES_PRIORITY,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= CFB64_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct atmel_aes_ctx),
-	.cra_alignmask		= 0x7,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_aes_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.ivsize		= AES_BLOCK_SIZE,
-		.setkey		= atmel_aes_setkey,
-		.encrypt	= atmel_aes_cfb64_encrypt,
-		.decrypt	= atmel_aes_cfb64_decrypt,
-	}
+static struct skcipher_alg aes_cfb64_alg = {
+	.base.cra_name		= "cfb64(aes)",
+	.base.cra_driver_name	= "atmel-cfb64-aes",
+	.base.cra_priority	= ATMEL_AES_PRIORITY,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= CFB64_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct atmel_aes_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= atmel_aes_init_tfm,
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.setkey			= atmel_aes_setkey,
+	.encrypt		= atmel_aes_cfb64_encrypt,
+	.decrypt		= atmel_aes_cfb64_decrypt,
+	.ivsize			= AES_BLOCK_SIZE,
 };
 
 
@@ -1864,8 +1847,8 @@ static int atmel_aes_xts_process_data(struct atmel_aes_dev *dd);
 static int atmel_aes_xts_start(struct atmel_aes_dev *dd)
 {
 	struct atmel_aes_xts_ctx *ctx = atmel_aes_xts_ctx_cast(dd->ctx);
-	struct ablkcipher_request *req = ablkcipher_request_cast(dd->areq);
-	struct atmel_aes_reqctx *rctx = ablkcipher_request_ctx(req);
+	struct skcipher_request *req = skcipher_request_cast(dd->areq);
+	struct atmel_aes_reqctx *rctx = skcipher_request_ctx(req);
 	unsigned long flags;
 	int err;
 
@@ -1875,7 +1858,7 @@ static int atmel_aes_xts_start(struct atmel_aes_dev *dd)
 	if (err)
 		return atmel_aes_complete(dd, err);
 
-	/* Compute the tweak value from req->info with ecb(aes). */
+	/* Compute the tweak value from req->iv with ecb(aes). */
 	flags = dd->flags;
 	dd->flags &= ~AES_FLAGS_MODE_MASK;
 	dd->flags |= (AES_FLAGS_ECB | AES_FLAGS_ENCRYPT);
@@ -1883,14 +1866,14 @@ static int atmel_aes_xts_start(struct atmel_aes_dev *dd)
 				 ctx->key2, ctx->base.keylen);
 	dd->flags = flags;
 
-	atmel_aes_write_block(dd, AES_IDATAR(0), req->info);
+	atmel_aes_write_block(dd, AES_IDATAR(0), (void *)req->iv);
 	return atmel_aes_wait_for_data_ready(dd, atmel_aes_xts_process_data);
 }
 
 static int atmel_aes_xts_process_data(struct atmel_aes_dev *dd)
 {
-	struct ablkcipher_request *req = ablkcipher_request_cast(dd->areq);
-	bool use_dma = (req->nbytes >= ATMEL_AES_DMA_THRESHOLD);
+	struct skcipher_request *req = skcipher_request_cast(dd->areq);
+	bool use_dma = (req->cryptlen >= ATMEL_AES_DMA_THRESHOLD);
 	u32 tweak[AES_BLOCK_SIZE / sizeof(u32)];
 	static const __le32 one[AES_BLOCK_SIZE / sizeof(u32)] = {cpu_to_le32(1), };
 	u8 *tweak_bytes = (u8 *)tweak;
@@ -1915,20 +1898,20 @@ static int atmel_aes_xts_process_data(struct atmel_aes_dev *dd)
 	atmel_aes_write_block(dd, AES_TWR(0), tweak);
 	atmel_aes_write_block(dd, AES_ALPHAR(0), one);
 	if (use_dma)
-		return atmel_aes_dma_start(dd, req->src, req->dst, req->nbytes,
+		return atmel_aes_dma_start(dd, req->src, req->dst, req->cryptlen,
 					   atmel_aes_transfer_complete);
 
-	return atmel_aes_cpu_start(dd, req->src, req->dst, req->nbytes,
+	return atmel_aes_cpu_start(dd, req->src, req->dst, req->cryptlen,
 				   atmel_aes_transfer_complete);
 }
 
-static int atmel_aes_xts_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
+static int atmel_aes_xts_setkey(struct crypto_skcipher *tfm, const u8 *key,
 				unsigned int keylen)
 {
-	struct atmel_aes_xts_ctx *ctx = crypto_ablkcipher_ctx(tfm);
+	struct atmel_aes_xts_ctx *ctx = crypto_skcipher_ctx(tfm);
 	int err;
 
-	err = xts_check_key(crypto_ablkcipher_tfm(tfm), key, keylen);
+	err = xts_check_key(crypto_skcipher_tfm(tfm), key, keylen);
 	if (err)
 		return err;
 
@@ -1939,45 +1922,43 @@ static int atmel_aes_xts_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
 	return 0;
 }
 
-static int atmel_aes_xts_encrypt(struct ablkcipher_request *req)
+static int atmel_aes_xts_encrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_XTS | AES_FLAGS_ENCRYPT);
 }
 
-static int atmel_aes_xts_decrypt(struct ablkcipher_request *req)
+static int atmel_aes_xts_decrypt(struct skcipher_request *req)
 {
 	return atmel_aes_crypt(req, AES_FLAGS_XTS);
 }
 
-static int atmel_aes_xts_cra_init(struct crypto_tfm *tfm)
+static int atmel_aes_xts_init_tfm(struct crypto_skcipher *tfm)
 {
-	struct atmel_aes_xts_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct atmel_aes_xts_ctx *ctx = crypto_skcipher_ctx(tfm);
 
-	tfm->crt_ablkcipher.reqsize = sizeof(struct atmel_aes_reqctx);
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct atmel_aes_reqctx));
 	ctx->base.start = atmel_aes_xts_start;
 
 	return 0;
 }
 
-static struct crypto_alg aes_xts_alg = {
-	.cra_name		= "xts(aes)",
-	.cra_driver_name	= "atmel-xts-aes",
-	.cra_priority		= ATMEL_AES_PRIORITY,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= AES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct atmel_aes_xts_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_aes_xts_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= 2 * AES_MIN_KEY_SIZE,
-		.max_keysize	= 2 * AES_MAX_KEY_SIZE,
-		.ivsize		= AES_BLOCK_SIZE,
-		.setkey		= atmel_aes_xts_setkey,
-		.encrypt	= atmel_aes_xts_encrypt,
-		.decrypt	= atmel_aes_xts_decrypt,
-	}
+static struct skcipher_alg aes_xts_alg = {
+	.base.cra_name		= "xts(aes)",
+	.base.cra_driver_name	= "atmel-xts-aes",
+	.base.cra_priority	= ATMEL_AES_PRIORITY,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= AES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct atmel_aes_xts_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.min_keysize		= 2 * AES_MIN_KEY_SIZE,
+	.max_keysize		= 2 * AES_MAX_KEY_SIZE,
+	.ivsize			= AES_BLOCK_SIZE,
+	.setkey			= atmel_aes_xts_setkey,
+	.encrypt		= atmel_aes_xts_encrypt,
+	.decrypt		= atmel_aes_xts_decrypt,
+	.init			= atmel_aes_xts_init_tfm,
 };
 
 #if IS_ENABLED(CONFIG_CRYPTO_DEV_ATMEL_AUTHENC)
@@ -2474,16 +2455,16 @@ static void atmel_aes_unregister_algs(struct atmel_aes_dev *dd)
 #endif
 
 	if (dd->caps.has_xts)
-		crypto_unregister_alg(&aes_xts_alg);
+		crypto_unregister_skcipher(&aes_xts_alg);
 
 	if (dd->caps.has_gcm)
 		crypto_unregister_aead(&aes_gcm_alg);
 
 	if (dd->caps.has_cfb64)
-		crypto_unregister_alg(&aes_cfb64_alg);
+		crypto_unregister_skcipher(&aes_cfb64_alg);
 
 	for (i = 0; i < ARRAY_SIZE(aes_algs); i++)
-		crypto_unregister_alg(&aes_algs[i]);
+		crypto_unregister_skcipher(&aes_algs[i]);
 }
 
 static int atmel_aes_register_algs(struct atmel_aes_dev *dd)
@@ -2491,13 +2472,13 @@ static int atmel_aes_register_algs(struct atmel_aes_dev *dd)
 	int err, i, j;
 
 	for (i = 0; i < ARRAY_SIZE(aes_algs); i++) {
-		err = crypto_register_alg(&aes_algs[i]);
+		err = crypto_register_skcipher(&aes_algs[i]);
 		if (err)
 			goto err_aes_algs;
 	}
 
 	if (dd->caps.has_cfb64) {
-		err = crypto_register_alg(&aes_cfb64_alg);
+		err = crypto_register_skcipher(&aes_cfb64_alg);
 		if (err)
 			goto err_aes_cfb64_alg;
 	}
@@ -2509,7 +2490,7 @@ static int atmel_aes_register_algs(struct atmel_aes_dev *dd)
 	}
 
 	if (dd->caps.has_xts) {
-		err = crypto_register_alg(&aes_xts_alg);
+		err = crypto_register_skcipher(&aes_xts_alg);
 		if (err)
 			goto err_aes_xts_alg;
 	}
@@ -2531,17 +2512,17 @@ static int atmel_aes_register_algs(struct atmel_aes_dev *dd)
 err_aes_authenc_alg:
 	for (j = 0; j < i; j++)
 		crypto_unregister_aead(&aes_authenc_algs[j]);
-	crypto_unregister_alg(&aes_xts_alg);
+	crypto_unregister_skcipher(&aes_xts_alg);
 #endif
 err_aes_xts_alg:
 	crypto_unregister_aead(&aes_gcm_alg);
 err_aes_gcm_alg:
-	crypto_unregister_alg(&aes_cfb64_alg);
+	crypto_unregister_skcipher(&aes_cfb64_alg);
 err_aes_cfb64_alg:
 	i = ARRAY_SIZE(aes_algs);
 err_aes_algs:
 	for (j = 0; j < i; j++)
-		crypto_unregister_alg(&aes_algs[j]);
+		crypto_unregister_skcipher(&aes_algs[j]);
 
 	return err;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
