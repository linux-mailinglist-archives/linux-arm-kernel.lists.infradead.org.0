Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04490EFE9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:31:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+XveBZcGw73reaF5rToTprpGh0UATuUp9c3ebeMX0fg=; b=oWYcpTemRRieAv
	CvM1/jZh9AsLhcT63Ho3RG0k0cCzDMlwaixnhAYA7jc76hGxwM9JeYu6A/x1S3BDrYd/x2tfJcynN
	gNn+OD94xYKdHABrlj/jIjGd+lDcdkE4jLJiJvaTIWIaHcQzMjGrBUSklZ2LvfsinqE3MhvRGPGEt
	Q7QOsDHD1qDKQVjZilyqdD1cCDRXLoDXxBk+YXql7aHWwsKLfz1cXrr+bToZsxOK4M338Is/K4WdX
	bY6+nrsudMMfz7yCfHNpT0smHN0BX31cJad20JXUkjkpwG7XNhWYPxqDOPCja9ETTNY4Jkux8YklY
	pHGQdaD3rWA+XMX30ixw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRyvo-0003R4-Cv; Tue, 05 Nov 2019 13:31:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRytD-0000NT-Du
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:28:59 +0000
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr [92.154.90.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B763C21D7C;
 Tue,  5 Nov 2019 13:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572960534;
 bh=1lvANKN/c5D8dpKYYaQMPop5fdUnsHV+LFdDat1+FUU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=W6RR/GOm4HUSjBASlZpgiYLhQ3YhnnV8I1iDSR9b7sk3MVhS7BhpbnjBXPBymQH/2
 P49TUA0Jt70D0q+rEwekG/wtdLVJ+JWVnbPckrSyB4oFVJ7UKTXga6o+Ho9GOk7kpZ
 PXct/DtQfFXz6dVcSrIljeBSF+nasZlLEznxbIwI=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v3 07/29] crypto: s5p - switch to skcipher API
Date: Tue,  5 Nov 2019 14:28:04 +0100
Message-Id: <20191105132826.1838-8-ardb@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191105132826.1838-1-ardb@kernel.org>
References: <20191105132826.1838-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_052855_694388_8468901E 
X-CRM114-Status: GOOD (  17.88  )
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
 Eric Biggers <ebiggers@google.com>, Kamil Konieczny <k.konieczny@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
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

Reviewed-by: Kamil Konieczny <k.konieczny@samsung.com>
Tested-by: Kamil Konieczny <k.konieczny@samsung.com>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/crypto/s5p-sss.c | 187 ++++++++++----------
 1 file changed, 89 insertions(+), 98 deletions(-)

diff --git a/drivers/crypto/s5p-sss.c b/drivers/crypto/s5p-sss.c
index 010f1bb20dad..d66e20a2f54c 100644
--- a/drivers/crypto/s5p-sss.c
+++ b/drivers/crypto/s5p-sss.c
@@ -303,7 +303,7 @@ struct s5p_aes_dev {
 	void __iomem			*aes_ioaddr;
 	int				irq_fc;
 
-	struct ablkcipher_request	*req;
+	struct skcipher_request		*req;
 	struct s5p_aes_ctx		*ctx;
 	struct scatterlist		*sg_src;
 	struct scatterlist		*sg_dst;
@@ -456,7 +456,7 @@ static void s5p_free_sg_cpy(struct s5p_aes_dev *dev, struct scatterlist **sg)
 	if (!*sg)
 		return;
 
-	len = ALIGN(dev->req->nbytes, AES_BLOCK_SIZE);
+	len = ALIGN(dev->req->cryptlen, AES_BLOCK_SIZE);
 	free_pages((unsigned long)sg_virt(*sg), get_order(len));
 
 	kfree(*sg);
@@ -478,27 +478,27 @@ static void s5p_sg_copy_buf(void *buf, struct scatterlist *sg,
 
 static void s5p_sg_done(struct s5p_aes_dev *dev)
 {
-	struct ablkcipher_request *req = dev->req;
-	struct s5p_aes_reqctx *reqctx = ablkcipher_request_ctx(req);
+	struct skcipher_request *req = dev->req;
+	struct s5p_aes_reqctx *reqctx = skcipher_request_ctx(req);
 
 	if (dev->sg_dst_cpy) {
 		dev_dbg(dev->dev,
 			"Copying %d bytes of output data back to original place\n",
-			dev->req->nbytes);
+			dev->req->cryptlen);
 		s5p_sg_copy_buf(sg_virt(dev->sg_dst_cpy), dev->req->dst,
-				dev->req->nbytes, 1);
+				dev->req->cryptlen, 1);
 	}
 	s5p_free_sg_cpy(dev, &dev->sg_src_cpy);
 	s5p_free_sg_cpy(dev, &dev->sg_dst_cpy);
 	if (reqctx->mode & FLAGS_AES_CBC)
-		memcpy_fromio(req->info, dev->aes_ioaddr + SSS_REG_AES_IV_DATA(0), AES_BLOCK_SIZE);
+		memcpy_fromio(req->iv, dev->aes_ioaddr + SSS_REG_AES_IV_DATA(0), AES_BLOCK_SIZE);
 
 	else if (reqctx->mode & FLAGS_AES_CTR)
-		memcpy_fromio(req->info, dev->aes_ioaddr + SSS_REG_AES_CNT_DATA(0), AES_BLOCK_SIZE);
+		memcpy_fromio(req->iv, dev->aes_ioaddr + SSS_REG_AES_CNT_DATA(0), AES_BLOCK_SIZE);
 }
 
 /* Calls the completion. Cannot be called with dev->lock hold. */
-static void s5p_aes_complete(struct ablkcipher_request *req, int err)
+static void s5p_aes_complete(struct skcipher_request *req, int err)
 {
 	req->base.complete(&req->base, err);
 }
@@ -523,7 +523,7 @@ static int s5p_make_sg_cpy(struct s5p_aes_dev *dev, struct scatterlist *src,
 	if (!*dst)
 		return -ENOMEM;
 
-	len = ALIGN(dev->req->nbytes, AES_BLOCK_SIZE);
+	len = ALIGN(dev->req->cryptlen, AES_BLOCK_SIZE);
 	pages = (void *)__get_free_pages(GFP_ATOMIC, get_order(len));
 	if (!pages) {
 		kfree(*dst);
@@ -531,7 +531,7 @@ static int s5p_make_sg_cpy(struct s5p_aes_dev *dev, struct scatterlist *src,
 		return -ENOMEM;
 	}
 
-	s5p_sg_copy_buf(pages, src, dev->req->nbytes, 0);
+	s5p_sg_copy_buf(pages, src, dev->req->cryptlen, 0);
 
 	sg_init_table(*dst, 1);
 	sg_set_buf(*dst, pages, len);
@@ -660,7 +660,7 @@ static irqreturn_t s5p_aes_interrupt(int irq, void *dev_id)
 {
 	struct platform_device *pdev = dev_id;
 	struct s5p_aes_dev *dev = platform_get_drvdata(pdev);
-	struct ablkcipher_request *req;
+	struct skcipher_request *req;
 	int err_dma_tx = 0;
 	int err_dma_rx = 0;
 	int err_dma_hx = 0;
@@ -1870,7 +1870,7 @@ static bool s5p_is_sg_aligned(struct scatterlist *sg)
 }
 
 static int s5p_set_indata_start(struct s5p_aes_dev *dev,
-				struct ablkcipher_request *req)
+				struct skcipher_request *req)
 {
 	struct scatterlist *sg;
 	int err;
@@ -1897,7 +1897,7 @@ static int s5p_set_indata_start(struct s5p_aes_dev *dev,
 }
 
 static int s5p_set_outdata_start(struct s5p_aes_dev *dev,
-				 struct ablkcipher_request *req)
+				 struct skcipher_request *req)
 {
 	struct scatterlist *sg;
 	int err;
@@ -1925,7 +1925,7 @@ static int s5p_set_outdata_start(struct s5p_aes_dev *dev,
 
 static void s5p_aes_crypt_start(struct s5p_aes_dev *dev, unsigned long mode)
 {
-	struct ablkcipher_request *req = dev->req;
+	struct skcipher_request *req = dev->req;
 	u32 aes_control;
 	unsigned long flags;
 	int err;
@@ -1938,12 +1938,12 @@ static void s5p_aes_crypt_start(struct s5p_aes_dev *dev, unsigned long mode)
 
 	if ((mode & FLAGS_AES_MODE_MASK) == FLAGS_AES_CBC) {
 		aes_control |= SSS_AES_CHAIN_MODE_CBC;
-		iv = req->info;
+		iv = req->iv;
 		ctr = NULL;
 	} else if ((mode & FLAGS_AES_MODE_MASK) == FLAGS_AES_CTR) {
 		aes_control |= SSS_AES_CHAIN_MODE_CTR;
 		iv = NULL;
-		ctr = req->info;
+		ctr = req->iv;
 	} else {
 		iv = NULL; /* AES_ECB */
 		ctr = NULL;
@@ -2021,21 +2021,21 @@ static void s5p_tasklet_cb(unsigned long data)
 	if (backlog)
 		backlog->complete(backlog, -EINPROGRESS);
 
-	dev->req = ablkcipher_request_cast(async_req);
+	dev->req = skcipher_request_cast(async_req);
 	dev->ctx = crypto_tfm_ctx(dev->req->base.tfm);
-	reqctx   = ablkcipher_request_ctx(dev->req);
+	reqctx   = skcipher_request_ctx(dev->req);
 
 	s5p_aes_crypt_start(dev, reqctx->mode);
 }
 
 static int s5p_aes_handle_req(struct s5p_aes_dev *dev,
-			      struct ablkcipher_request *req)
+			      struct skcipher_request *req)
 {
 	unsigned long flags;
 	int err;
 
 	spin_lock_irqsave(&dev->lock, flags);
-	err = ablkcipher_enqueue_request(&dev->queue, req);
+	err = crypto_enqueue_request(&dev->queue, &req->base);
 	if (dev->busy) {
 		spin_unlock_irqrestore(&dev->lock, flags);
 		return err;
@@ -2049,17 +2049,17 @@ static int s5p_aes_handle_req(struct s5p_aes_dev *dev,
 	return err;
 }
 
-static int s5p_aes_crypt(struct ablkcipher_request *req, unsigned long mode)
+static int s5p_aes_crypt(struct skcipher_request *req, unsigned long mode)
 {
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct s5p_aes_reqctx *reqctx = ablkcipher_request_ctx(req);
-	struct s5p_aes_ctx *ctx = crypto_ablkcipher_ctx(tfm);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct s5p_aes_reqctx *reqctx = skcipher_request_ctx(req);
+	struct s5p_aes_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct s5p_aes_dev *dev = ctx->dev;
 
-	if (!req->nbytes)
+	if (!req->cryptlen)
 		return 0;
 
-	if (!IS_ALIGNED(req->nbytes, AES_BLOCK_SIZE) &&
+	if (!IS_ALIGNED(req->cryptlen, AES_BLOCK_SIZE) &&
 			((mode & FLAGS_AES_MODE_MASK) != FLAGS_AES_CTR)) {
 		dev_dbg(dev->dev, "request size is not exact amount of AES blocks\n");
 		return -EINVAL;
@@ -2070,10 +2070,10 @@ static int s5p_aes_crypt(struct ablkcipher_request *req, unsigned long mode)
 	return s5p_aes_handle_req(dev, req);
 }
 
-static int s5p_aes_setkey(struct crypto_ablkcipher *cipher,
+static int s5p_aes_setkey(struct crypto_skcipher *cipher,
 			  const u8 *key, unsigned int keylen)
 {
-	struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
+	struct crypto_tfm *tfm = crypto_skcipher_tfm(cipher);
 	struct s5p_aes_ctx *ctx = crypto_tfm_ctx(tfm);
 
 	if (keylen != AES_KEYSIZE_128 &&
@@ -2087,106 +2087,97 @@ static int s5p_aes_setkey(struct crypto_ablkcipher *cipher,
 	return 0;
 }
 
-static int s5p_aes_ecb_encrypt(struct ablkcipher_request *req)
+static int s5p_aes_ecb_encrypt(struct skcipher_request *req)
 {
 	return s5p_aes_crypt(req, 0);
 }
 
-static int s5p_aes_ecb_decrypt(struct ablkcipher_request *req)
+static int s5p_aes_ecb_decrypt(struct skcipher_request *req)
 {
 	return s5p_aes_crypt(req, FLAGS_AES_DECRYPT);
 }
 
-static int s5p_aes_cbc_encrypt(struct ablkcipher_request *req)
+static int s5p_aes_cbc_encrypt(struct skcipher_request *req)
 {
 	return s5p_aes_crypt(req, FLAGS_AES_CBC);
 }
 
-static int s5p_aes_cbc_decrypt(struct ablkcipher_request *req)
+static int s5p_aes_cbc_decrypt(struct skcipher_request *req)
 {
 	return s5p_aes_crypt(req, FLAGS_AES_DECRYPT | FLAGS_AES_CBC);
 }
 
-static int s5p_aes_ctr_crypt(struct ablkcipher_request *req)
+static int s5p_aes_ctr_crypt(struct skcipher_request *req)
 {
 	return s5p_aes_crypt(req, FLAGS_AES_CTR);
 }
 
-static int s5p_aes_cra_init(struct crypto_tfm *tfm)
+static int s5p_aes_init_tfm(struct crypto_skcipher *tfm)
 {
-	struct s5p_aes_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct s5p_aes_ctx *ctx = crypto_skcipher_ctx(tfm);
 
 	ctx->dev = s5p_dev;
-	tfm->crt_ablkcipher.reqsize = sizeof(struct s5p_aes_reqctx);
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct s5p_aes_reqctx));
 
 	return 0;
 }
 
-static struct crypto_alg algs[] = {
+static struct skcipher_alg algs[] = {
 	{
-		.cra_name		= "ecb(aes)",
-		.cra_driver_name	= "ecb-aes-s5p",
-		.cra_priority		= 100,
-		.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-					  CRYPTO_ALG_ASYNC |
+		.base.cra_name		= "ecb(aes)",
+		.base.cra_driver_name	= "ecb-aes-s5p",
+		.base.cra_priority	= 100,
+		.base.cra_flags		= CRYPTO_ALG_ASYNC |
 					  CRYPTO_ALG_KERN_DRIVER_ONLY,
-		.cra_blocksize		= AES_BLOCK_SIZE,
-		.cra_ctxsize		= sizeof(struct s5p_aes_ctx),
-		.cra_alignmask		= 0x0f,
-		.cra_type		= &crypto_ablkcipher_type,
-		.cra_module		= THIS_MODULE,
-		.cra_init		= s5p_aes_cra_init,
-		.cra_u.ablkcipher = {
-			.min_keysize	= AES_MIN_KEY_SIZE,
-			.max_keysize	= AES_MAX_KEY_SIZE,
-			.setkey		= s5p_aes_setkey,
-			.encrypt	= s5p_aes_ecb_encrypt,
-			.decrypt	= s5p_aes_ecb_decrypt,
-		}
+		.base.cra_blocksize	= AES_BLOCK_SIZE,
+		.base.cra_ctxsize	= sizeof(struct s5p_aes_ctx),
+		.base.cra_alignmask	= 0x0f,
+		.base.cra_module	= THIS_MODULE,
+
+		.min_keysize		= AES_MIN_KEY_SIZE,
+		.max_keysize		= AES_MAX_KEY_SIZE,
+		.setkey			= s5p_aes_setkey,
+		.encrypt		= s5p_aes_ecb_encrypt,
+		.decrypt		= s5p_aes_ecb_decrypt,
+		.init			= s5p_aes_init_tfm,
 	},
 	{
-		.cra_name		= "cbc(aes)",
-		.cra_driver_name	= "cbc-aes-s5p",
-		.cra_priority		= 100,
-		.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-					  CRYPTO_ALG_ASYNC |
+		.base.cra_name		= "cbc(aes)",
+		.base.cra_driver_name	= "cbc-aes-s5p",
+		.base.cra_priority	= 100,
+		.base.cra_flags		= CRYPTO_ALG_ASYNC |
 					  CRYPTO_ALG_KERN_DRIVER_ONLY,
-		.cra_blocksize		= AES_BLOCK_SIZE,
-		.cra_ctxsize		= sizeof(struct s5p_aes_ctx),
-		.cra_alignmask		= 0x0f,
-		.cra_type		= &crypto_ablkcipher_type,
-		.cra_module		= THIS_MODULE,
-		.cra_init		= s5p_aes_cra_init,
-		.cra_u.ablkcipher = {
-			.min_keysize	= AES_MIN_KEY_SIZE,
-			.max_keysize	= AES_MAX_KEY_SIZE,
-			.ivsize		= AES_BLOCK_SIZE,
-			.setkey		= s5p_aes_setkey,
-			.encrypt	= s5p_aes_cbc_encrypt,
-			.decrypt	= s5p_aes_cbc_decrypt,
-		}
+		.base.cra_blocksize	= AES_BLOCK_SIZE,
+		.base.cra_ctxsize	= sizeof(struct s5p_aes_ctx),
+		.base.cra_alignmask	= 0x0f,
+		.base.cra_module	= THIS_MODULE,
+
+		.min_keysize		= AES_MIN_KEY_SIZE,
+		.max_keysize		= AES_MAX_KEY_SIZE,
+		.ivsize			= AES_BLOCK_SIZE,
+		.setkey			= s5p_aes_setkey,
+		.encrypt		= s5p_aes_cbc_encrypt,
+		.decrypt		= s5p_aes_cbc_decrypt,
+		.init			= s5p_aes_init_tfm,
 	},
 	{
-		.cra_name		= "ctr(aes)",
-		.cra_driver_name	= "ctr-aes-s5p",
-		.cra_priority		= 100,
-		.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-					  CRYPTO_ALG_ASYNC |
+		.base.cra_name		= "ctr(aes)",
+		.base.cra_driver_name	= "ctr-aes-s5p",
+		.base.cra_priority	= 100,
+		.base.cra_flags		= CRYPTO_ALG_ASYNC |
 					  CRYPTO_ALG_KERN_DRIVER_ONLY,
-		.cra_blocksize		= 1,
-		.cra_ctxsize		= sizeof(struct s5p_aes_ctx),
-		.cra_alignmask		= 0x0f,
-		.cra_type		= &crypto_ablkcipher_type,
-		.cra_module		= THIS_MODULE,
-		.cra_init		= s5p_aes_cra_init,
-		.cra_u.ablkcipher = {
-			.min_keysize	= AES_MIN_KEY_SIZE,
-			.max_keysize	= AES_MAX_KEY_SIZE,
-			.ivsize		= AES_BLOCK_SIZE,
-			.setkey		= s5p_aes_setkey,
-			.encrypt	= s5p_aes_ctr_crypt,
-			.decrypt	= s5p_aes_ctr_crypt,
-		}
+		.base.cra_blocksize	= 1,
+		.base.cra_ctxsize	= sizeof(struct s5p_aes_ctx),
+		.base.cra_alignmask	= 0x0f,
+		.base.cra_module	= THIS_MODULE,
+
+		.min_keysize		= AES_MIN_KEY_SIZE,
+		.max_keysize		= AES_MAX_KEY_SIZE,
+		.ivsize			= AES_BLOCK_SIZE,
+		.setkey			= s5p_aes_setkey,
+		.encrypt		= s5p_aes_ctr_crypt,
+		.decrypt		= s5p_aes_ctr_crypt,
+		.init			= s5p_aes_init_tfm,
 	},
 };
 
@@ -2297,7 +2288,7 @@ static int s5p_aes_probe(struct platform_device *pdev)
 	crypto_init_queue(&pdata->queue, CRYPTO_QUEUE_LEN);
 
 	for (i = 0; i < ARRAY_SIZE(algs); i++) {
-		err = crypto_register_alg(&algs[i]);
+		err = crypto_register_skcipher(&algs[i]);
 		if (err)
 			goto err_algs;
 	}
@@ -2334,11 +2325,11 @@ static int s5p_aes_probe(struct platform_device *pdev)
 
 err_algs:
 	if (i < ARRAY_SIZE(algs))
-		dev_err(dev, "can't register '%s': %d\n", algs[i].cra_name,
+		dev_err(dev, "can't register '%s': %d\n", algs[i].base.cra_name,
 			err);
 
 	for (j = 0; j < i; j++)
-		crypto_unregister_alg(&algs[j]);
+		crypto_unregister_skcipher(&algs[j]);
 
 	tasklet_kill(&pdata->tasklet);
 
@@ -2362,7 +2353,7 @@ static int s5p_aes_remove(struct platform_device *pdev)
 		return -ENODEV;
 
 	for (i = 0; i < ARRAY_SIZE(algs); i++)
-		crypto_unregister_alg(&algs[i]);
+		crypto_unregister_skcipher(&algs[i]);
 
 	tasklet_kill(&pdata->tasklet);
 	if (pdata->use_hash) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
