Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BFD0E3439
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 15:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9v8QJ6LXayBXeQYiNk3hJAOgiGb14fwhrVVwQq+GFM8=; b=VfJ/3T9E9szQrL
	3ffIREGenmOGpbgL6/hkYgM9iazzAdkP8hnUJBUE/nbdHjFXQL1GaJrC6c9nJkQMdDMwVhFl/xtTi
	s2N+RrmQdRmik9ZBYvvcnSzcLMo34IZHFhZSmjrnxS2VD0xA8J/zo+FydGIF6AR1Xnkq5YhGnj7D/
	QbU9Bo/9ktyZI5TMkzNoVYyYWJZLPKJA/u193XM7i53NKDKjZ+ZDcprDo7vZgl9a81uP4PxI6zHO2
	QO4tXjZ48M0//njxpTYcSLxfUC0LvRBbVzVV8bbbdoaS/790BVRjj02FjQNfWWOZgqjpFJJG6YJrU
	aVsxuYXPWPTQ5BEAieiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNdD3-0008LZ-3F; Thu, 24 Oct 2019 13:31:25 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNd6E-0000hg-66
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 13:24:30 +0000
Received: by mail-wr1-x444.google.com with SMTP id a11so9991488wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 06:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fzYA+KPH1HLckQxgkplKIucO6xedINSV3sstBlzedDE=;
 b=b2NwSqCmBjvd9lPDRC2i1ZghCWgjAhbHe5IE1d4zsfCNGD172iPPA+t+WpU06uGh9/
 iVH0jzfuKZUL1jaIuWIz0aa+HTgLhZxvLsGfJvBkmSdx47Vfr4MzDvu91DAg/sOBMoCv
 virPjlj2xqwR8loNzKbGZfM9Jx60nxaIgfE222tM8FbsGb5Hbi6XhhthW4Ui29dU/mqC
 t5XSrw2aPK3WMZUx9VI35GwlCqTSyn31CGPKbJifWBrFO0NG/XHUIDaf2ZkPlboyvsii
 +1rl59zvPTDdgxhFA/bxXCxLkzkz9jKpXqKEoo9xoDxlm/d2ewku3jg/CQPpjqrcMWVM
 OokQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fzYA+KPH1HLckQxgkplKIucO6xedINSV3sstBlzedDE=;
 b=VP1G7kEELhLZZOhfNdYc+fnhYyqZIxmRgTiUD1l5JFtZeUx28hwj8fiFswqJ6BDRGu
 fkYb/TYHUj/MM6W9F4R61NTlZkozpNc3wqcX2xdcuExLYVjnht4AvRwVqwV9X1ab5AJk
 BJe1nZT0X4U4+xd/SKZHGZB1NLgPmVDwb2Sh+4BRyyPuwJ5t4ILkYuvJ9Mxf8OCzgch+
 zY4Ep0HM57sasxdBd5xf86LjheilmGcUI0w2rV081DvPspHhWmilSUG2oprcSPogSVTp
 74WcFDPnP38SRi9WZ73rKohsNnciXY3bH3VmCrCRwgC1gA0H3aM/mkeAWl+NK9oPzkvf
 wE0Q==
X-Gm-Message-State: APjAAAW7BR1b9hIacilfnweGV0BT25qPcOtXlUjRzGxkz1anwxQ9zgBv
 DuSUASxJ8wb88ZOy+z0wfPFsow==
X-Google-Smtp-Source: APXvYqy8osoZ8j7OBMvrxaJaUsVN6xjSrByaJqzGpSNwElcPzcnA/1DB32H2XHXZ0Y0hJswlXx2aKQ==
X-Received: by 2002:adf:e747:: with SMTP id c7mr3914028wrn.384.1571923459461; 
 Thu, 24 Oct 2019 06:24:19 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id e3sm2346310wme.36.2019.10.24.06.24.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 06:24:18 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 18/27] crypto: sahara - switch to skcipher API
Date: Thu, 24 Oct 2019 15:23:36 +0200
Message-Id: <20191024132345.5236-19-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
References: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_062422_282519_BBD5DAF0 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/crypto/sahara.c | 156 ++++++++++----------
 1 file changed, 75 insertions(+), 81 deletions(-)

diff --git a/drivers/crypto/sahara.c b/drivers/crypto/sahara.c
index 8ac8ec6decd5..d4ea2f11ca68 100644
--- a/drivers/crypto/sahara.c
+++ b/drivers/crypto/sahara.c
@@ -547,7 +547,7 @@ static int sahara_hw_descriptor_create(struct sahara_dev *dev)
 	return -EINVAL;
 }
 
-static int sahara_aes_process(struct ablkcipher_request *req)
+static int sahara_aes_process(struct skcipher_request *req)
 {
 	struct sahara_dev *dev = dev_ptr;
 	struct sahara_ctx *ctx;
@@ -558,20 +558,20 @@ static int sahara_aes_process(struct ablkcipher_request *req)
 	/* Request is ready to be dispatched by the device */
 	dev_dbg(dev->device,
 		"dispatch request (nbytes=%d, src=%p, dst=%p)\n",
-		req->nbytes, req->src, req->dst);
+		req->cryptlen, req->src, req->dst);
 
 	/* assign new request to device */
-	dev->total = req->nbytes;
+	dev->total = req->cryptlen;
 	dev->in_sg = req->src;
 	dev->out_sg = req->dst;
 
-	rctx = ablkcipher_request_ctx(req);
-	ctx = crypto_ablkcipher_ctx(crypto_ablkcipher_reqtfm(req));
+	rctx = skcipher_request_ctx(req);
+	ctx = crypto_skcipher_ctx(crypto_skcipher_reqtfm(req));
 	rctx->mode &= FLAGS_MODE_MASK;
 	dev->flags = (dev->flags & ~FLAGS_MODE_MASK) | rctx->mode;
 
-	if ((dev->flags & FLAGS_CBC) && req->info)
-		memcpy(dev->iv_base, req->info, AES_KEYSIZE_128);
+	if ((dev->flags & FLAGS_CBC) && req->iv)
+		memcpy(dev->iv_base, req->iv, AES_KEYSIZE_128);
 
 	/* assign new context to device */
 	dev->ctx = ctx;
@@ -597,10 +597,10 @@ static int sahara_aes_process(struct ablkcipher_request *req)
 	return 0;
 }
 
-static int sahara_aes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
+static int sahara_aes_setkey(struct crypto_skcipher *tfm, const u8 *key,
 			     unsigned int keylen)
 {
-	struct sahara_ctx *ctx = crypto_ablkcipher_ctx(tfm);
+	struct sahara_ctx *ctx = crypto_skcipher_ctx(tfm);
 	int ret;
 
 	ctx->keylen = keylen;
@@ -630,16 +630,16 @@ static int sahara_aes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
 	return ret;
 }
 
-static int sahara_aes_crypt(struct ablkcipher_request *req, unsigned long mode)
+static int sahara_aes_crypt(struct skcipher_request *req, unsigned long mode)
 {
-	struct sahara_aes_reqctx *rctx = ablkcipher_request_ctx(req);
+	struct sahara_aes_reqctx *rctx = skcipher_request_ctx(req);
 	struct sahara_dev *dev = dev_ptr;
 	int err = 0;
 
 	dev_dbg(dev->device, "nbytes: %d, enc: %d, cbc: %d\n",
-		req->nbytes, !!(mode & FLAGS_ENCRYPT), !!(mode & FLAGS_CBC));
+		req->cryptlen, !!(mode & FLAGS_ENCRYPT), !!(mode & FLAGS_CBC));
 
-	if (!IS_ALIGNED(req->nbytes, AES_BLOCK_SIZE)) {
+	if (!IS_ALIGNED(req->cryptlen, AES_BLOCK_SIZE)) {
 		dev_err(dev->device,
 			"request size is not exact amount of AES blocks\n");
 		return -EINVAL;
@@ -648,7 +648,7 @@ static int sahara_aes_crypt(struct ablkcipher_request *req, unsigned long mode)
 	rctx->mode = mode;
 
 	mutex_lock(&dev->queue_mutex);
-	err = ablkcipher_enqueue_request(&dev->queue, req);
+	err = crypto_enqueue_request(&dev->queue, &req->base);
 	mutex_unlock(&dev->queue_mutex);
 
 	wake_up_process(dev->kthread);
@@ -656,10 +656,10 @@ static int sahara_aes_crypt(struct ablkcipher_request *req, unsigned long mode)
 	return err;
 }
 
-static int sahara_aes_ecb_encrypt(struct ablkcipher_request *req)
+static int sahara_aes_ecb_encrypt(struct skcipher_request *req)
 {
-	struct sahara_ctx *ctx = crypto_ablkcipher_ctx(
-		crypto_ablkcipher_reqtfm(req));
+	struct sahara_ctx *ctx = crypto_skcipher_ctx(
+		crypto_skcipher_reqtfm(req));
 	int err;
 
 	if (unlikely(ctx->keylen != AES_KEYSIZE_128)) {
@@ -669,7 +669,7 @@ static int sahara_aes_ecb_encrypt(struct ablkcipher_request *req)
 		skcipher_request_set_callback(subreq, req->base.flags,
 					      NULL, NULL);
 		skcipher_request_set_crypt(subreq, req->src, req->dst,
-					   req->nbytes, req->info);
+					   req->cryptlen, req->iv);
 		err = crypto_skcipher_encrypt(subreq);
 		skcipher_request_zero(subreq);
 		return err;
@@ -678,10 +678,10 @@ static int sahara_aes_ecb_encrypt(struct ablkcipher_request *req)
 	return sahara_aes_crypt(req, FLAGS_ENCRYPT);
 }
 
-static int sahara_aes_ecb_decrypt(struct ablkcipher_request *req)
+static int sahara_aes_ecb_decrypt(struct skcipher_request *req)
 {
-	struct sahara_ctx *ctx = crypto_ablkcipher_ctx(
-		crypto_ablkcipher_reqtfm(req));
+	struct sahara_ctx *ctx = crypto_skcipher_ctx(
+		crypto_skcipher_reqtfm(req));
 	int err;
 
 	if (unlikely(ctx->keylen != AES_KEYSIZE_128)) {
@@ -691,7 +691,7 @@ static int sahara_aes_ecb_decrypt(struct ablkcipher_request *req)
 		skcipher_request_set_callback(subreq, req->base.flags,
 					      NULL, NULL);
 		skcipher_request_set_crypt(subreq, req->src, req->dst,
-					   req->nbytes, req->info);
+					   req->cryptlen, req->iv);
 		err = crypto_skcipher_decrypt(subreq);
 		skcipher_request_zero(subreq);
 		return err;
@@ -700,10 +700,10 @@ static int sahara_aes_ecb_decrypt(struct ablkcipher_request *req)
 	return sahara_aes_crypt(req, 0);
 }
 
-static int sahara_aes_cbc_encrypt(struct ablkcipher_request *req)
+static int sahara_aes_cbc_encrypt(struct skcipher_request *req)
 {
-	struct sahara_ctx *ctx = crypto_ablkcipher_ctx(
-		crypto_ablkcipher_reqtfm(req));
+	struct sahara_ctx *ctx = crypto_skcipher_ctx(
+		crypto_skcipher_reqtfm(req));
 	int err;
 
 	if (unlikely(ctx->keylen != AES_KEYSIZE_128)) {
@@ -713,7 +713,7 @@ static int sahara_aes_cbc_encrypt(struct ablkcipher_request *req)
 		skcipher_request_set_callback(subreq, req->base.flags,
 					      NULL, NULL);
 		skcipher_request_set_crypt(subreq, req->src, req->dst,
-					   req->nbytes, req->info);
+					   req->cryptlen, req->iv);
 		err = crypto_skcipher_encrypt(subreq);
 		skcipher_request_zero(subreq);
 		return err;
@@ -722,10 +722,10 @@ static int sahara_aes_cbc_encrypt(struct ablkcipher_request *req)
 	return sahara_aes_crypt(req, FLAGS_ENCRYPT | FLAGS_CBC);
 }
 
-static int sahara_aes_cbc_decrypt(struct ablkcipher_request *req)
+static int sahara_aes_cbc_decrypt(struct skcipher_request *req)
 {
-	struct sahara_ctx *ctx = crypto_ablkcipher_ctx(
-		crypto_ablkcipher_reqtfm(req));
+	struct sahara_ctx *ctx = crypto_skcipher_ctx(
+		crypto_skcipher_reqtfm(req));
 	int err;
 
 	if (unlikely(ctx->keylen != AES_KEYSIZE_128)) {
@@ -735,7 +735,7 @@ static int sahara_aes_cbc_decrypt(struct ablkcipher_request *req)
 		skcipher_request_set_callback(subreq, req->base.flags,
 					      NULL, NULL);
 		skcipher_request_set_crypt(subreq, req->src, req->dst,
-					   req->nbytes, req->info);
+					   req->cryptlen, req->iv);
 		err = crypto_skcipher_decrypt(subreq);
 		skcipher_request_zero(subreq);
 		return err;
@@ -744,10 +744,10 @@ static int sahara_aes_cbc_decrypt(struct ablkcipher_request *req)
 	return sahara_aes_crypt(req, FLAGS_CBC);
 }
 
-static int sahara_aes_cra_init(struct crypto_tfm *tfm)
+static int sahara_aes_init_tfm(struct crypto_skcipher *tfm)
 {
-	const char *name = crypto_tfm_alg_name(tfm);
-	struct sahara_ctx *ctx = crypto_tfm_ctx(tfm);
+	const char *name = crypto_tfm_alg_name(&tfm->base);
+	struct sahara_ctx *ctx = crypto_skcipher_ctx(tfm);
 
 	ctx->fallback = crypto_alloc_sync_skcipher(name, 0,
 					      CRYPTO_ALG_NEED_FALLBACK);
@@ -756,14 +756,14 @@ static int sahara_aes_cra_init(struct crypto_tfm *tfm)
 		return PTR_ERR(ctx->fallback);
 	}
 
-	tfm->crt_ablkcipher.reqsize = sizeof(struct sahara_aes_reqctx);
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct sahara_aes_reqctx));
 
 	return 0;
 }
 
-static void sahara_aes_cra_exit(struct crypto_tfm *tfm)
+static void sahara_aes_exit_tfm(struct crypto_skcipher *tfm)
 {
-	struct sahara_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct sahara_ctx *ctx = crypto_skcipher_ctx(tfm);
 
 	crypto_free_sync_skcipher(ctx->fallback);
 }
@@ -1071,8 +1071,8 @@ static int sahara_queue_manage(void *data)
 
 				ret = sahara_sha_process(req);
 			} else {
-				struct ablkcipher_request *req =
-					ablkcipher_request_cast(async_req);
+				struct skcipher_request *req =
+					skcipher_request_cast(async_req);
 
 				ret = sahara_aes_process(req);
 			}
@@ -1189,48 +1189,42 @@ static int sahara_sha_cra_init(struct crypto_tfm *tfm)
 	return 0;
 }
 
-static struct crypto_alg aes_algs[] = {
+static struct skcipher_alg aes_algs[] = {
 {
-	.cra_name		= "ecb(aes)",
-	.cra_driver_name	= "sahara-ecb-aes",
-	.cra_priority		= 300,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-			CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
-	.cra_blocksize		= AES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct sahara_ctx),
-	.cra_alignmask		= 0x0,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= sahara_aes_cra_init,
-	.cra_exit		= sahara_aes_cra_exit,
-	.cra_u.ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE ,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.setkey		= sahara_aes_setkey,
-		.encrypt	= sahara_aes_ecb_encrypt,
-		.decrypt	= sahara_aes_ecb_decrypt,
-	}
+	.base.cra_name		= "ecb(aes)",
+	.base.cra_driver_name	= "sahara-ecb-aes",
+	.base.cra_priority	= 300,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
+	.base.cra_blocksize	= AES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct sahara_ctx),
+	.base.cra_alignmask	= 0x0,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= sahara_aes_init_tfm,
+	.exit			= sahara_aes_exit_tfm,
+	.min_keysize		= AES_MIN_KEY_SIZE ,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.setkey			= sahara_aes_setkey,
+	.encrypt		= sahara_aes_ecb_encrypt,
+	.decrypt		= sahara_aes_ecb_decrypt,
 }, {
-	.cra_name		= "cbc(aes)",
-	.cra_driver_name	= "sahara-cbc-aes",
-	.cra_priority		= 300,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-			CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
-	.cra_blocksize		= AES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct sahara_ctx),
-	.cra_alignmask		= 0x0,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= sahara_aes_cra_init,
-	.cra_exit		= sahara_aes_cra_exit,
-	.cra_u.ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE ,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.ivsize		= AES_BLOCK_SIZE,
-		.setkey		= sahara_aes_setkey,
-		.encrypt	= sahara_aes_cbc_encrypt,
-		.decrypt	= sahara_aes_cbc_decrypt,
-	}
+	.base.cra_name		= "cbc(aes)",
+	.base.cra_driver_name	= "sahara-cbc-aes",
+	.base.cra_priority	= 300,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
+	.base.cra_blocksize	= AES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct sahara_ctx),
+	.base.cra_alignmask	= 0x0,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= sahara_aes_init_tfm,
+	.exit			= sahara_aes_exit_tfm,
+	.min_keysize		= AES_MIN_KEY_SIZE ,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.ivsize			= AES_BLOCK_SIZE,
+	.setkey			= sahara_aes_setkey,
+	.encrypt		= sahara_aes_cbc_encrypt,
+	.decrypt		= sahara_aes_cbc_decrypt,
 }
 };
 
@@ -1318,7 +1312,7 @@ static int sahara_register_algs(struct sahara_dev *dev)
 	unsigned int i, j, k, l;
 
 	for (i = 0; i < ARRAY_SIZE(aes_algs); i++) {
-		err = crypto_register_alg(&aes_algs[i]);
+		err = crypto_register_skcipher(&aes_algs[i]);
 		if (err)
 			goto err_aes_algs;
 	}
@@ -1348,7 +1342,7 @@ static int sahara_register_algs(struct sahara_dev *dev)
 
 err_aes_algs:
 	for (j = 0; j < i; j++)
-		crypto_unregister_alg(&aes_algs[j]);
+		crypto_unregister_skcipher(&aes_algs[j]);
 
 	return err;
 }
@@ -1358,7 +1352,7 @@ static void sahara_unregister_algs(struct sahara_dev *dev)
 	unsigned int i;
 
 	for (i = 0; i < ARRAY_SIZE(aes_algs); i++)
-		crypto_unregister_alg(&aes_algs[i]);
+		crypto_unregister_skcipher(&aes_algs[i]);
 
 	for (i = 0; i < ARRAY_SIZE(sha_v3_algs); i++)
 		crypto_unregister_ahash(&sha_v3_algs[i]);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
