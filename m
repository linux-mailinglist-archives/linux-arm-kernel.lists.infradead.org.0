Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 677DDEFEA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:32:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+6A8CQ0InQ872ArzqsX2Yk1oTZ9DB5Ss98/usuggSo=; b=Lr8F9UIRQXO3he
	p0gWrT0xvexJ5bNjrcsiPDVytxXxe/FHG5GMDtdFlR9cL0O4WcfIvJF03BPvAYjdpsymzG8EEQJ1s
	NZ7Dhi0JdHSpUfY3MuVvU43WVJJvgCUhPuIJlb0iZz1+xfK/9eAQFy6LQkczheGJye9IdUgsiTQdC
	5yFL0Kw/eqzIztCxHf2h/Y/VlPNqOSDy8T8iF/hms2Ew9O5Jgq+/k9Ztj5CHdLfiGsUET+eTUW/Vi
	f3nG6hG1l7mf127u49qVjOGvwrK0G+7zhsgMCe1T2lbXRMhvevgJe/e4G5CO3CqCPOzwzues7/c8v
	u0IjkvmqF583fBKMkZ2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRywQ-0003xJ-UP; Tue, 05 Nov 2019 13:32:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRytI-0000RW-OW
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:29:04 +0000
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr [92.154.90.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 489312190F;
 Tue,  5 Nov 2019 13:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572960539;
 bh=QaXLGE9pfzWB0PE3gj+kJ+WPGH1pcAciJ1mA+rGg2Tk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=a+8kJkeDE/AKRlLgY/ssJhWpytOii9t9yCuUd0qzfxlJTJLHBpb0nnZUUC+Tyq2ys
 HZQflgdIsDpZtt3Xr0032o9LBBGGPfUxJXdmhukN9aVkhIT8cOQt4QSRrURVmzl/cs
 OljCPqDJYZBFS6BucMWpr6ta/plvDsp8CcZgUyqM=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v3 09/29] crypto: atmel-tdes - switch to skcipher API
Date: Tue,  5 Nov 2019 14:28:06 +0100
Message-Id: <20191105132826.1838-10-ardb@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191105132826.1838-1-ardb@kernel.org>
References: <20191105132826.1838-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_052900_928786_C95B9615 
X-CRM114-Status: GOOD (  17.09  )
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Eric Biggers <ebiggers@google.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
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

Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/crypto/atmel-tdes.c | 433 ++++++++++----------
 1 file changed, 207 insertions(+), 226 deletions(-)

diff --git a/drivers/crypto/atmel-tdes.c b/drivers/crypto/atmel-tdes.c
index 1a6c86ae6148..bb7c0a387c04 100644
--- a/drivers/crypto/atmel-tdes.c
+++ b/drivers/crypto/atmel-tdes.c
@@ -36,6 +36,7 @@
 #include <crypto/internal/des.h>
 #include <crypto/hash.h>
 #include <crypto/internal/hash.h>
+#include <crypto/internal/skcipher.h>
 #include <linux/platform_data/crypto-atmel.h>
 #include "atmel-tdes-regs.h"
 
@@ -72,7 +73,7 @@ struct atmel_tdes_ctx {
 	struct atmel_tdes_dev *dd;
 
 	int		keylen;
-	u32		key[3*DES_KEY_SIZE / sizeof(u32)];
+	u32		key[DES3_EDE_KEY_SIZE / sizeof(u32)];
 	unsigned long	flags;
 
 	u16		block_size;
@@ -106,7 +107,7 @@ struct atmel_tdes_dev {
 	struct tasklet_struct	done_task;
 	struct tasklet_struct	queue_task;
 
-	struct ablkcipher_request	*req;
+	struct skcipher_request		*req;
 	size_t				total;
 
 	struct scatterlist	*in_sg;
@@ -307,8 +308,8 @@ static int atmel_tdes_write_ctrl(struct atmel_tdes_dev *dd)
 						dd->ctx->keylen >> 2);
 
 	if (((dd->flags & TDES_FLAGS_CBC) || (dd->flags & TDES_FLAGS_CFB) ||
-		(dd->flags & TDES_FLAGS_OFB)) && dd->req->info) {
-		atmel_tdes_write_n(dd, TDES_IV1R, dd->req->info, 2);
+		(dd->flags & TDES_FLAGS_OFB)) && dd->req->iv) {
+		atmel_tdes_write_n(dd, TDES_IV1R, (void *)dd->req->iv, 2);
 	}
 
 	return 0;
@@ -502,8 +503,8 @@ static int atmel_tdes_crypt_dma(struct crypto_tfm *tfm, dma_addr_t dma_addr_in,
 
 static int atmel_tdes_crypt_start(struct atmel_tdes_dev *dd)
 {
-	struct crypto_tfm *tfm = crypto_ablkcipher_tfm(
-					crypto_ablkcipher_reqtfm(dd->req));
+	struct crypto_tfm *tfm = crypto_skcipher_tfm(
+					crypto_skcipher_reqtfm(dd->req));
 	int err, fast = 0, in, out;
 	size_t count;
 	dma_addr_t addr_in, addr_out;
@@ -573,7 +574,7 @@ static int atmel_tdes_crypt_start(struct atmel_tdes_dev *dd)
 
 static void atmel_tdes_finish_req(struct atmel_tdes_dev *dd, int err)
 {
-	struct ablkcipher_request *req = dd->req;
+	struct skcipher_request *req = dd->req;
 
 	clk_disable_unprepare(dd->iclk);
 
@@ -583,7 +584,7 @@ static void atmel_tdes_finish_req(struct atmel_tdes_dev *dd, int err)
 }
 
 static int atmel_tdes_handle_queue(struct atmel_tdes_dev *dd,
-			       struct ablkcipher_request *req)
+			       struct skcipher_request *req)
 {
 	struct crypto_async_request *async_req, *backlog;
 	struct atmel_tdes_ctx *ctx;
@@ -593,7 +594,7 @@ static int atmel_tdes_handle_queue(struct atmel_tdes_dev *dd,
 
 	spin_lock_irqsave(&dd->lock, flags);
 	if (req)
-		ret = ablkcipher_enqueue_request(&dd->queue, req);
+		ret = crypto_enqueue_request(&dd->queue, &req->base);
 	if (dd->flags & TDES_FLAGS_BUSY) {
 		spin_unlock_irqrestore(&dd->lock, flags);
 		return ret;
@@ -610,18 +611,18 @@ static int atmel_tdes_handle_queue(struct atmel_tdes_dev *dd,
 	if (backlog)
 		backlog->complete(backlog, -EINPROGRESS);
 
-	req = ablkcipher_request_cast(async_req);
+	req = skcipher_request_cast(async_req);
 
 	/* assign new request to device */
 	dd->req = req;
-	dd->total = req->nbytes;
+	dd->total = req->cryptlen;
 	dd->in_offset = 0;
 	dd->in_sg = req->src;
 	dd->out_offset = 0;
 	dd->out_sg = req->dst;
 
-	rctx = ablkcipher_request_ctx(req);
-	ctx = crypto_ablkcipher_ctx(crypto_ablkcipher_reqtfm(req));
+	rctx = skcipher_request_ctx(req);
+	ctx = crypto_skcipher_ctx(crypto_skcipher_reqtfm(req));
 	rctx->mode &= TDES_FLAGS_MODE_MASK;
 	dd->flags = (dd->flags & ~TDES_FLAGS_MODE_MASK) | rctx->mode;
 	dd->ctx = ctx;
@@ -665,32 +666,32 @@ static int atmel_tdes_crypt_dma_stop(struct atmel_tdes_dev *dd)
 	return err;
 }
 
-static int atmel_tdes_crypt(struct ablkcipher_request *req, unsigned long mode)
+static int atmel_tdes_crypt(struct skcipher_request *req, unsigned long mode)
 {
-	struct atmel_tdes_ctx *ctx = crypto_ablkcipher_ctx(
-			crypto_ablkcipher_reqtfm(req));
-	struct atmel_tdes_reqctx *rctx = ablkcipher_request_ctx(req);
+	struct atmel_tdes_ctx *ctx = crypto_skcipher_ctx(
+			crypto_skcipher_reqtfm(req));
+	struct atmel_tdes_reqctx *rctx = skcipher_request_ctx(req);
 
 	if (mode & TDES_FLAGS_CFB8) {
-		if (!IS_ALIGNED(req->nbytes, CFB8_BLOCK_SIZE)) {
+		if (!IS_ALIGNED(req->cryptlen, CFB8_BLOCK_SIZE)) {
 			pr_err("request size is not exact amount of CFB8 blocks\n");
 			return -EINVAL;
 		}
 		ctx->block_size = CFB8_BLOCK_SIZE;
 	} else if (mode & TDES_FLAGS_CFB16) {
-		if (!IS_ALIGNED(req->nbytes, CFB16_BLOCK_SIZE)) {
+		if (!IS_ALIGNED(req->cryptlen, CFB16_BLOCK_SIZE)) {
 			pr_err("request size is not exact amount of CFB16 blocks\n");
 			return -EINVAL;
 		}
 		ctx->block_size = CFB16_BLOCK_SIZE;
 	} else if (mode & TDES_FLAGS_CFB32) {
-		if (!IS_ALIGNED(req->nbytes, CFB32_BLOCK_SIZE)) {
+		if (!IS_ALIGNED(req->cryptlen, CFB32_BLOCK_SIZE)) {
 			pr_err("request size is not exact amount of CFB32 blocks\n");
 			return -EINVAL;
 		}
 		ctx->block_size = CFB32_BLOCK_SIZE;
 	} else {
-		if (!IS_ALIGNED(req->nbytes, DES_BLOCK_SIZE)) {
+		if (!IS_ALIGNED(req->cryptlen, DES_BLOCK_SIZE)) {
 			pr_err("request size is not exact amount of DES blocks\n");
 			return -EINVAL;
 		}
@@ -770,13 +771,13 @@ static void atmel_tdes_dma_cleanup(struct atmel_tdes_dev *dd)
 	dma_release_channel(dd->dma_lch_out.chan);
 }
 
-static int atmel_des_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
+static int atmel_des_setkey(struct crypto_skcipher *tfm, const u8 *key,
 			   unsigned int keylen)
 {
-	struct atmel_tdes_ctx *ctx = crypto_ablkcipher_ctx(tfm);
+	struct atmel_tdes_ctx *ctx = crypto_skcipher_ctx(tfm);
 	int err;
 
-	err = verify_ablkcipher_des_key(tfm, key);
+	err = verify_skcipher_des_key(tfm, key);
 	if (err)
 		return err;
 
@@ -786,13 +787,13 @@ static int atmel_des_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
 	return 0;
 }
 
-static int atmel_tdes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
+static int atmel_tdes_setkey(struct crypto_skcipher *tfm, const u8 *key,
 			   unsigned int keylen)
 {
-	struct atmel_tdes_ctx *ctx = crypto_ablkcipher_ctx(tfm);
+	struct atmel_tdes_ctx *ctx = crypto_skcipher_ctx(tfm);
 	int err;
 
-	err = verify_ablkcipher_des3_key(tfm, key);
+	err = verify_skcipher_des3_key(tfm, key);
 	if (err)
 		return err;
 
@@ -802,84 +803,84 @@ static int atmel_tdes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
 	return 0;
 }
 
-static int atmel_tdes_ecb_encrypt(struct ablkcipher_request *req)
+static int atmel_tdes_ecb_encrypt(struct skcipher_request *req)
 {
 	return atmel_tdes_crypt(req, TDES_FLAGS_ENCRYPT);
 }
 
-static int atmel_tdes_ecb_decrypt(struct ablkcipher_request *req)
+static int atmel_tdes_ecb_decrypt(struct skcipher_request *req)
 {
 	return atmel_tdes_crypt(req, 0);
 }
 
-static int atmel_tdes_cbc_encrypt(struct ablkcipher_request *req)
+static int atmel_tdes_cbc_encrypt(struct skcipher_request *req)
 {
 	return atmel_tdes_crypt(req, TDES_FLAGS_ENCRYPT | TDES_FLAGS_CBC);
 }
 
-static int atmel_tdes_cbc_decrypt(struct ablkcipher_request *req)
+static int atmel_tdes_cbc_decrypt(struct skcipher_request *req)
 {
 	return atmel_tdes_crypt(req, TDES_FLAGS_CBC);
 }
-static int atmel_tdes_cfb_encrypt(struct ablkcipher_request *req)
+static int atmel_tdes_cfb_encrypt(struct skcipher_request *req)
 {
 	return atmel_tdes_crypt(req, TDES_FLAGS_ENCRYPT | TDES_FLAGS_CFB);
 }
 
-static int atmel_tdes_cfb_decrypt(struct ablkcipher_request *req)
+static int atmel_tdes_cfb_decrypt(struct skcipher_request *req)
 {
 	return atmel_tdes_crypt(req, TDES_FLAGS_CFB);
 }
 
-static int atmel_tdes_cfb8_encrypt(struct ablkcipher_request *req)
+static int atmel_tdes_cfb8_encrypt(struct skcipher_request *req)
 {
 	return atmel_tdes_crypt(req, TDES_FLAGS_ENCRYPT | TDES_FLAGS_CFB |
 						TDES_FLAGS_CFB8);
 }
 
-static int atmel_tdes_cfb8_decrypt(struct ablkcipher_request *req)
+static int atmel_tdes_cfb8_decrypt(struct skcipher_request *req)
 {
 	return atmel_tdes_crypt(req, TDES_FLAGS_CFB | TDES_FLAGS_CFB8);
 }
 
-static int atmel_tdes_cfb16_encrypt(struct ablkcipher_request *req)
+static int atmel_tdes_cfb16_encrypt(struct skcipher_request *req)
 {
 	return atmel_tdes_crypt(req, TDES_FLAGS_ENCRYPT | TDES_FLAGS_CFB |
 						TDES_FLAGS_CFB16);
 }
 
-static int atmel_tdes_cfb16_decrypt(struct ablkcipher_request *req)
+static int atmel_tdes_cfb16_decrypt(struct skcipher_request *req)
 {
 	return atmel_tdes_crypt(req, TDES_FLAGS_CFB | TDES_FLAGS_CFB16);
 }
 
-static int atmel_tdes_cfb32_encrypt(struct ablkcipher_request *req)
+static int atmel_tdes_cfb32_encrypt(struct skcipher_request *req)
 {
 	return atmel_tdes_crypt(req, TDES_FLAGS_ENCRYPT | TDES_FLAGS_CFB |
 						TDES_FLAGS_CFB32);
 }
 
-static int atmel_tdes_cfb32_decrypt(struct ablkcipher_request *req)
+static int atmel_tdes_cfb32_decrypt(struct skcipher_request *req)
 {
 	return atmel_tdes_crypt(req, TDES_FLAGS_CFB | TDES_FLAGS_CFB32);
 }
 
-static int atmel_tdes_ofb_encrypt(struct ablkcipher_request *req)
+static int atmel_tdes_ofb_encrypt(struct skcipher_request *req)
 {
 	return atmel_tdes_crypt(req, TDES_FLAGS_ENCRYPT | TDES_FLAGS_OFB);
 }
 
-static int atmel_tdes_ofb_decrypt(struct ablkcipher_request *req)
+static int atmel_tdes_ofb_decrypt(struct skcipher_request *req)
 {
 	return atmel_tdes_crypt(req, TDES_FLAGS_OFB);
 }
 
-static int atmel_tdes_cra_init(struct crypto_tfm *tfm)
+static int atmel_tdes_init_tfm(struct crypto_skcipher *tfm)
 {
-	struct atmel_tdes_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct atmel_tdes_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct atmel_tdes_dev *dd;
 
-	tfm->crt_ablkcipher.reqsize = sizeof(struct atmel_tdes_reqctx);
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct atmel_tdes_reqctx));
 
 	dd = atmel_tdes_find_dev(ctx);
 	if (!dd)
@@ -888,204 +889,184 @@ static int atmel_tdes_cra_init(struct crypto_tfm *tfm)
 	return 0;
 }
 
-static struct crypto_alg tdes_algs[] = {
+static struct skcipher_alg tdes_algs[] = {
 {
-	.cra_name		= "ecb(des)",
-	.cra_driver_name	= "atmel-ecb-des",
-	.cra_priority		= 100,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= DES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct atmel_tdes_ctx),
-	.cra_alignmask		= 0x7,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_tdes_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= DES_KEY_SIZE,
-		.max_keysize	= DES_KEY_SIZE,
-		.setkey		= atmel_des_setkey,
-		.encrypt	= atmel_tdes_ecb_encrypt,
-		.decrypt	= atmel_tdes_ecb_decrypt,
-	}
+	.base.cra_name		= "ecb(des)",
+	.base.cra_driver_name	= "atmel-ecb-des",
+	.base.cra_priority	= 100,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= DES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
+	.base.cra_alignmask	= 0x7,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= atmel_tdes_init_tfm,
+	.min_keysize		= DES_KEY_SIZE,
+	.max_keysize		= DES_KEY_SIZE,
+	.setkey			= atmel_des_setkey,
+	.encrypt		= atmel_tdes_ecb_encrypt,
+	.decrypt		= atmel_tdes_ecb_decrypt,
 },
 {
-	.cra_name		= "cbc(des)",
-	.cra_driver_name	= "atmel-cbc-des",
-	.cra_priority		= 100,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= DES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct atmel_tdes_ctx),
-	.cra_alignmask		= 0x7,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_tdes_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= DES_KEY_SIZE,
-		.max_keysize	= DES_KEY_SIZE,
-		.ivsize		= DES_BLOCK_SIZE,
-		.setkey		= atmel_des_setkey,
-		.encrypt	= atmel_tdes_cbc_encrypt,
-		.decrypt	= atmel_tdes_cbc_decrypt,
-	}
+	.base.cra_name		= "cbc(des)",
+	.base.cra_driver_name	= "atmel-cbc-des",
+	.base.cra_priority	= 100,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= DES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
+	.base.cra_alignmask	= 0x7,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= atmel_tdes_init_tfm,
+	.min_keysize		= DES_KEY_SIZE,
+	.max_keysize		= DES_KEY_SIZE,
+	.ivsize			= DES_BLOCK_SIZE,
+	.setkey			= atmel_des_setkey,
+	.encrypt		= atmel_tdes_cbc_encrypt,
+	.decrypt		= atmel_tdes_cbc_decrypt,
 },
 {
-	.cra_name		= "cfb(des)",
-	.cra_driver_name	= "atmel-cfb-des",
-	.cra_priority		= 100,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= DES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct atmel_tdes_ctx),
-	.cra_alignmask		= 0x7,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_tdes_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= DES_KEY_SIZE,
-		.max_keysize	= DES_KEY_SIZE,
-		.ivsize		= DES_BLOCK_SIZE,
-		.setkey		= atmel_des_setkey,
-		.encrypt	= atmel_tdes_cfb_encrypt,
-		.decrypt	= atmel_tdes_cfb_decrypt,
-	}
+	.base.cra_name		= "cfb(des)",
+	.base.cra_driver_name	= "atmel-cfb-des",
+	.base.cra_priority	= 100,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= DES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
+	.base.cra_alignmask	= 0x7,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= atmel_tdes_init_tfm,
+	.min_keysize		= DES_KEY_SIZE,
+	.max_keysize		= DES_KEY_SIZE,
+	.ivsize			= DES_BLOCK_SIZE,
+	.setkey			= atmel_des_setkey,
+	.encrypt		= atmel_tdes_cfb_encrypt,
+	.decrypt		= atmel_tdes_cfb_decrypt,
 },
 {
-	.cra_name		= "cfb8(des)",
-	.cra_driver_name	= "atmel-cfb8-des",
-	.cra_priority		= 100,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= CFB8_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct atmel_tdes_ctx),
-	.cra_alignmask		= 0,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_tdes_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= DES_KEY_SIZE,
-		.max_keysize	= DES_KEY_SIZE,
-		.ivsize		= DES_BLOCK_SIZE,
-		.setkey		= atmel_des_setkey,
-		.encrypt	= atmel_tdes_cfb8_encrypt,
-		.decrypt	= atmel_tdes_cfb8_decrypt,
-	}
+	.base.cra_name		= "cfb8(des)",
+	.base.cra_driver_name	= "atmel-cfb8-des",
+	.base.cra_priority	= 100,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= CFB8_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
+	.base.cra_alignmask	= 0,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= atmel_tdes_init_tfm,
+	.min_keysize		= DES_KEY_SIZE,
+	.max_keysize		= DES_KEY_SIZE,
+	.ivsize			= DES_BLOCK_SIZE,
+	.setkey			= atmel_des_setkey,
+	.encrypt		= atmel_tdes_cfb8_encrypt,
+	.decrypt		= atmel_tdes_cfb8_decrypt,
 },
 {
-	.cra_name		= "cfb16(des)",
-	.cra_driver_name	= "atmel-cfb16-des",
-	.cra_priority		= 100,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= CFB16_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct atmel_tdes_ctx),
-	.cra_alignmask		= 0x1,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_tdes_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= DES_KEY_SIZE,
-		.max_keysize	= DES_KEY_SIZE,
-		.ivsize		= DES_BLOCK_SIZE,
-		.setkey		= atmel_des_setkey,
-		.encrypt	= atmel_tdes_cfb16_encrypt,
-		.decrypt	= atmel_tdes_cfb16_decrypt,
-	}
+	.base.cra_name		= "cfb16(des)",
+	.base.cra_driver_name	= "atmel-cfb16-des",
+	.base.cra_priority	= 100,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= CFB16_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
+	.base.cra_alignmask	= 0x1,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= atmel_tdes_init_tfm,
+	.min_keysize		= DES_KEY_SIZE,
+	.max_keysize		= DES_KEY_SIZE,
+	.ivsize			= DES_BLOCK_SIZE,
+	.setkey			= atmel_des_setkey,
+	.encrypt		= atmel_tdes_cfb16_encrypt,
+	.decrypt		= atmel_tdes_cfb16_decrypt,
 },
 {
-	.cra_name		= "cfb32(des)",
-	.cra_driver_name	= "atmel-cfb32-des",
-	.cra_priority		= 100,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= CFB32_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct atmel_tdes_ctx),
-	.cra_alignmask		= 0x3,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_tdes_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= DES_KEY_SIZE,
-		.max_keysize	= DES_KEY_SIZE,
-		.ivsize		= DES_BLOCK_SIZE,
-		.setkey		= atmel_des_setkey,
-		.encrypt	= atmel_tdes_cfb32_encrypt,
-		.decrypt	= atmel_tdes_cfb32_decrypt,
-	}
+	.base.cra_name		= "cfb32(des)",
+	.base.cra_driver_name	= "atmel-cfb32-des",
+	.base.cra_priority	= 100,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= CFB32_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
+	.base.cra_alignmask	= 0x3,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= atmel_tdes_init_tfm,
+	.min_keysize		= DES_KEY_SIZE,
+	.max_keysize		= DES_KEY_SIZE,
+	.ivsize			= DES_BLOCK_SIZE,
+	.setkey			= atmel_des_setkey,
+	.encrypt		= atmel_tdes_cfb32_encrypt,
+	.decrypt		= atmel_tdes_cfb32_decrypt,
 },
 {
-	.cra_name		= "ofb(des)",
-	.cra_driver_name	= "atmel-ofb-des",
-	.cra_priority		= 100,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= DES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct atmel_tdes_ctx),
-	.cra_alignmask		= 0x7,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_tdes_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= DES_KEY_SIZE,
-		.max_keysize	= DES_KEY_SIZE,
-		.ivsize		= DES_BLOCK_SIZE,
-		.setkey		= atmel_des_setkey,
-		.encrypt	= atmel_tdes_ofb_encrypt,
-		.decrypt	= atmel_tdes_ofb_decrypt,
-	}
+	.base.cra_name		= "ofb(des)",
+	.base.cra_driver_name	= "atmel-ofb-des",
+	.base.cra_priority	= 100,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= DES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
+	.base.cra_alignmask	= 0x7,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= atmel_tdes_init_tfm,
+	.min_keysize		= DES_KEY_SIZE,
+	.max_keysize		= DES_KEY_SIZE,
+	.ivsize			= DES_BLOCK_SIZE,
+	.setkey			= atmel_des_setkey,
+	.encrypt		= atmel_tdes_ofb_encrypt,
+	.decrypt		= atmel_tdes_ofb_decrypt,
 },
 {
-	.cra_name		= "ecb(des3_ede)",
-	.cra_driver_name	= "atmel-ecb-tdes",
-	.cra_priority		= 100,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= DES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct atmel_tdes_ctx),
-	.cra_alignmask		= 0x7,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_tdes_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= 3 * DES_KEY_SIZE,
-		.max_keysize	= 3 * DES_KEY_SIZE,
-		.setkey		= atmel_tdes_setkey,
-		.encrypt	= atmel_tdes_ecb_encrypt,
-		.decrypt	= atmel_tdes_ecb_decrypt,
-	}
+	.base.cra_name		= "ecb(des3_ede)",
+	.base.cra_driver_name	= "atmel-ecb-tdes",
+	.base.cra_priority	= 100,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= DES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
+	.base.cra_alignmask	= 0x7,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= atmel_tdes_init_tfm,
+	.min_keysize		= DES3_EDE_KEY_SIZE,
+	.max_keysize		= DES3_EDE_KEY_SIZE,
+	.setkey			= atmel_tdes_setkey,
+	.encrypt		= atmel_tdes_ecb_encrypt,
+	.decrypt		= atmel_tdes_ecb_decrypt,
 },
 {
-	.cra_name		= "cbc(des3_ede)",
-	.cra_driver_name	= "atmel-cbc-tdes",
-	.cra_priority		= 100,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= DES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct atmel_tdes_ctx),
-	.cra_alignmask		= 0x7,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_tdes_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= 3*DES_KEY_SIZE,
-		.max_keysize	= 3*DES_KEY_SIZE,
-		.ivsize		= DES_BLOCK_SIZE,
-		.setkey		= atmel_tdes_setkey,
-		.encrypt	= atmel_tdes_cbc_encrypt,
-		.decrypt	= atmel_tdes_cbc_decrypt,
-	}
+	.base.cra_name		= "cbc(des3_ede)",
+	.base.cra_driver_name	= "atmel-cbc-tdes",
+	.base.cra_priority	= 100,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= DES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
+	.base.cra_alignmask	= 0x7,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= atmel_tdes_init_tfm,
+	.min_keysize		= DES3_EDE_KEY_SIZE,
+	.max_keysize		= DES3_EDE_KEY_SIZE,
+	.setkey			= atmel_tdes_setkey,
+	.encrypt		= atmel_tdes_cbc_encrypt,
+	.decrypt		= atmel_tdes_cbc_decrypt,
+	.ivsize			= DES_BLOCK_SIZE,
 },
 {
-	.cra_name		= "ofb(des3_ede)",
-	.cra_driver_name	= "atmel-ofb-tdes",
-	.cra_priority		= 100,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= DES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct atmel_tdes_ctx),
-	.cra_alignmask		= 0x7,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= atmel_tdes_cra_init,
-	.cra_u.ablkcipher = {
-		.min_keysize	= 3*DES_KEY_SIZE,
-		.max_keysize	= 3*DES_KEY_SIZE,
-		.ivsize		= DES_BLOCK_SIZE,
-		.setkey		= atmel_tdes_setkey,
-		.encrypt	= atmel_tdes_ofb_encrypt,
-		.decrypt	= atmel_tdes_ofb_decrypt,
-	}
+	.base.cra_name		= "ofb(des3_ede)",
+	.base.cra_driver_name	= "atmel-ofb-tdes",
+	.base.cra_priority	= 100,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= DES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct atmel_tdes_ctx),
+	.base.cra_alignmask	= 0x7,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= atmel_tdes_init_tfm,
+	.min_keysize		= DES3_EDE_KEY_SIZE,
+	.max_keysize		= DES3_EDE_KEY_SIZE,
+	.setkey			= atmel_tdes_setkey,
+	.encrypt		= atmel_tdes_ofb_encrypt,
+	.decrypt		= atmel_tdes_ofb_decrypt,
+	.ivsize			= DES_BLOCK_SIZE,
 },
 };
 
@@ -1148,7 +1129,7 @@ static void atmel_tdes_unregister_algs(struct atmel_tdes_dev *dd)
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(tdes_algs); i++)
-		crypto_unregister_alg(&tdes_algs[i]);
+		crypto_unregister_skcipher(&tdes_algs[i]);
 }
 
 static int atmel_tdes_register_algs(struct atmel_tdes_dev *dd)
@@ -1156,7 +1137,7 @@ static int atmel_tdes_register_algs(struct atmel_tdes_dev *dd)
 	int err, i, j;
 
 	for (i = 0; i < ARRAY_SIZE(tdes_algs); i++) {
-		err = crypto_register_alg(&tdes_algs[i]);
+		err = crypto_register_skcipher(&tdes_algs[i]);
 		if (err)
 			goto err_tdes_algs;
 	}
@@ -1165,7 +1146,7 @@ static int atmel_tdes_register_algs(struct atmel_tdes_dev *dd)
 
 err_tdes_algs:
 	for (j = 0; j < i; j++)
-		crypto_unregister_alg(&tdes_algs[j]);
+		crypto_unregister_skcipher(&tdes_algs[j]);
 
 	return err;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
