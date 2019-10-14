Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 011DAD626C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:23:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nCSF3bGU+vpDrMi5obl2fGDm+s+fi+svsEuV7S8780w=; b=L/FNMdX3NARmp0
	8nXTOF3yepLiXzLO7b3Z8UIzamOd4Zf4vQ5JQRy/nqgZczWtFiwNSHUrvVFnpjdBjT+Udjbo0U/MV
	+esxbyEEbli8tgV9dkU+stQLVaklpyTUFV3PGSKfPyX9ZFbnRuU9dGvfCbtiXjXTIdmhklIarvSGz
	2nIPsGxKffewMNvMa3H/sVrNYl6S0XkniXcfxckywI3hOcSZsP+/eNVsuoIATY0oxrW9+z+p/jbeh
	Imt+EfMIWdF/z8De+uVXctefYNuAJi0oFo10Gm6ZOHUf/tCDRF9Le3/Wu5gFDklsRBiHQhX+cwBvx
	uFNs8TUY8S4/qqqps0/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzNf-0006Cl-0T; Mon, 14 Oct 2019 12:23:19 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzKW-0002uT-Ib
 for linux-arm-kernel@bombadil.infradead.org; Mon, 14 Oct 2019 12:20:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7v5O3wUy2OkKyS7OY6FG70291BOVXDEM0+zkv7MUUt0=; b=HTxN/Bmo/tvzFe9simC6kssrx8
 4xFgQgW+Mh1cygC5WipMkZuay7pQSl2Ai64Bzx+4SXPhUjGIGg2ain5xbKBbQBgTc/BFmBJI/FN6U
 KaF6tYYPHEVxtcLhAZo2d/+jkZT5bLZJErm0mDyTlnWcmkT++AJ3/SWAakjoYpc7IZuijhFPIpxU7
 ldaLf7aKiaj4cBgulR65n3EBmDvud7Ll1KfRRP5zA/Pf0bpZlZx2uWFRcVUp62mgRx7cyM39Qa8NB
 zF+mOle4GShFoKPPCZz05jnX+PKtxWZeEq9rYyXZ3Oe/XV4i9NbdOXUlfkwOkgcu1b/R2e5+pxWBZ
 AkxYmiPA==;
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzKS-0008DS-IV
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:20:02 +0000
Received: by mail-wm1-x342.google.com with SMTP id b24so16529296wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 05:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7v5O3wUy2OkKyS7OY6FG70291BOVXDEM0+zkv7MUUt0=;
 b=TX6Koh5leMnKm62QCUb7r/xuTF1GaDxTJiqbMVnTGsJRe5mZWJMN207BZQEWe6RKjV
 ylBHD2gMXcTv/3V8u/Z7ai2A7Xd+hTaJqKviwL0PL0Eeal9EIBP9HdiT/OPBLYJp6uv1
 z2r/gcp4+zYF7HZDnQsyqKr9UmWAt/L4XiC2X2M/6FH8Wa8O4Woar/xeO1cfsRzS91u2
 cQ7l6ItThj0n7hamH/XDmSo3ZfELNm/aUk0akZTF1ReCKiCf09z2/UVtP6AVS+bKCBOl
 QhFBPUfWChVVa75p+5maZKWSkw4JsuAvlaIgwVDU4u1d1OUKTz5smsfR40JQBm9ac6vQ
 QDvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7v5O3wUy2OkKyS7OY6FG70291BOVXDEM0+zkv7MUUt0=;
 b=PegEtDX9UPekNKx6TgS0PAJ/k1diOKSWC90XXHbrC2+B0lGeKIX3KiqrlY8LEpZ/W5
 KyamUpPnrDPaJEe3l7W7CFaQl8/DZT6qrzwv6v4y6g38zvKwisbqFKQ+FhQlAzfSpX5a
 yVcQaOEFbEPjjITOvPlytIYYfOqpUUWueChF9zhl/PwXKhPT5sv1lG7DFvhWFVRpum0i
 BdWR0ozECBrXFPGN6eeYWul7nx7JLqmusxmpPMhgznLdYH+gbGKD8Rsejk9EqYqw/3HP
 71ewXwbiXMkslf8+S6DQSbV4ioNWRNc2O0FSiQxP/ZEm36yfw56OmvUKBHykYJs/ZGvE
 hTjg==
X-Gm-Message-State: APjAAAXsk/bmSUQtkLoj/7k+4HcTNqIreRROraJYV4zGH1ADu+SQuCzI
 APMIEtK7UroELTzA4JZEGT66vw==
X-Google-Smtp-Source: APXvYqxuqYwG97jO20/eHHFWCmdJi6GQZ1fTechL0wTGfqe6CNRgoN6ArLdNHZSwK/Igt0XCOm2VQA==
X-Received: by 2002:a05:600c:10ce:: with SMTP id
 l14mr14956220wmd.102.1571055593606; 
 Mon, 14 Oct 2019 05:19:53 -0700 (PDT)
Received: from localhost.localdomain (91-167-84-221.subs.proxad.net.
 [91.167.84.221])
 by smtp.gmail.com with ESMTPSA id i1sm20222470wmb.19.2019.10.14.05.19.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 05:19:52 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 14/25] crypto: hifn - switch to skcipher API
Date: Mon, 14 Oct 2019 14:18:59 +0200
Message-Id: <20191014121910.7264-15-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
References: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
