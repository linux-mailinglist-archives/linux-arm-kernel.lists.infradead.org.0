Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6034AD62AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:36:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VVr+4vb+X/g6/AFopNOJMf33eCMNJe2/q5ul3Vcs2yA=; b=tmE90/3apc1mAg
	kWcBt1jutEsGUZ7atO4Y/TvOSuYGeGqvwOVpYFEPBDEKmU2bXhJiSxfVMqD4lH2KR8U5GSwLZp/63
	9YdyRSpehIB9Ac+7iNZDOeG7xxx1FMLDAOAposnPBg9w85t+P1fL7pklXjQoUVvTb83c8RdGju9rz
	kf+IWP/ZNKvgLSr+ij0aq37aFFXJREEUnCRl5BisSOlkEhNxfAzqN3lqfR7pQL+3ZdbRwe+HhbeRy
	J33y1kkUYFrcycn+k6gxx1RFuNMyTCZHr9VhYC35w+hsN4kRfvl/VHABZ1Qk3XKyC09P80vAT8rpK
	qDtuuezENNiwoWO01txQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzaL-00074q-5n; Mon, 14 Oct 2019 12:36:25 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzZt-0006kw-9p
 for linux-arm-kernel@bombadil.infradead.org; Mon, 14 Oct 2019 12:35:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dIBlYIM7JpanSQ8gUz4gqfgKYH0bGpfP4NHGwTwYVtE=; b=TtJmWNyDrvbS8U9hU7daPHUlOQ
 yXbj6nZV0Cfj76fTMJbfQ4oWJoBAOGgvIh8E4byVtxeP2mn73OZKIo29+qhxLWSLuRQjTaIBksXIp
 +qRtVjZnPipG39LBHQOP6JnhZsacZKSmI6daECBPsyjHZ2OB/GzhwCb0nPq4L7r9hIegbY4wFsp4D
 BilfuaYQrd4OP/nOIHP72icewEXUcQp19TOhRi1WXPLCrmkZn3AAWqvAejPB19bB1TRnyyZQ7rAcZ
 4AQRPgaWih2YFqcWSRYKFsSfeemrLwHZZQp+8yMbKvYGZ1YP+n4ft7WavIs9pC1Z3jM/c3W4rukWy
 FvVRL/DA==;
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzKt-0003UU-Gf
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:20:31 +0000
Received: by mail-wr1-x444.google.com with SMTP id v8so19482728wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 05:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dIBlYIM7JpanSQ8gUz4gqfgKYH0bGpfP4NHGwTwYVtE=;
 b=TTI/132XcYqgA01hLJxazKKGwXZGdOEOZlHROLBocIQ395sii/cjazYTU/KUEhvtdj
 ihE5hwynjCXM9+3vmz3xu7CHQtoPMtPqufDUnTKbWKH9AfxMwTA6oUOtghxqhUbeBsFV
 7YYQYktdMY8TMN/L9yKSwHT/oUpuLPmqxOz6bOoQtXoGdoejLu3N3nXVZclabl84A+KF
 LJPdB4GbnJ8H4zaMnz2YEmErBIu8ys9+FyaRC5o9ZSzfca1SO7Ne9hmTcyL068HVz9ah
 /remQixOG5c5Y48odZYuF4jZ1S/9q3WPEi4a76K8hpZTHUqc3SzZ07t3Vp3suxO3ei7g
 tzyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dIBlYIM7JpanSQ8gUz4gqfgKYH0bGpfP4NHGwTwYVtE=;
 b=dnMUB4AUdk/7xTydtY8gnn/UiZInsM35xS1jF12gcw/mpSAAMH48NBS+poswa98afX
 6ZcRW77nUYCK/Zt0KhteQWDcnkerxpdneaACx/xcLZZDa/8jdvP9A3Wz6HWmlGCri4+q
 IHpT8wwaxxOwbeHLt+a56h5LF0TuuX88dqzZi6KdZ5/Ynkir9DkftJKq7wlqh+j0NbYi
 /GC990fKpPcvDuABQ+eVoQoI/LZQOB9hGxxFXesQ0SFEHCeRHh+BlkaIaFI05+OaNN+c
 bs8v12dWlRdB+8533Qu8/HC+a+8tjztjrRXFiJZ7u/+ok2tx0S0yXj8VnW1tfwS72vLs
 EzTg==
X-Gm-Message-State: APjAAAV13HjfJYHC54+oTKLs4dwUQ+HzOi1eLfQJ5ehkwROXVBQwFSIw
 US9lxh7NUDX+kvWCpg/mVjjefQ==
X-Google-Smtp-Source: APXvYqwAS9SELkVFfqY2O1ccfslCrTOlnarICg9KAQxTt9ZQcBspYOBRRqt42RdkYSbfBHicRFyKXA==
X-Received: by 2002:adf:a141:: with SMTP id r1mr25960159wrr.122.1571055598545; 
 Mon, 14 Oct 2019 05:19:58 -0700 (PDT)
Received: from localhost.localdomain (91-167-84-221.subs.proxad.net.
 [91.167.84.221])
 by smtp.gmail.com with ESMTPSA id i1sm20222470wmb.19.2019.10.14.05.19.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 05:19:57 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 18/25] crypto: picoxcell - switch to skcipher API
Date: Mon, 14 Oct 2019 14:19:03 +0200
Message-Id: <20191014121910.7264-19-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
References: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_132027_777261_093319A8 
X-CRM114-Status: GOOD (  22.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Eric Biggers <ebiggers@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Jamie Iles <jamie@jamieiles.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
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

Cc: Jamie Iles <jamie@jamieiles.com> 
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/crypto/picoxcell_crypto.c | 386 ++++++++++----------
 1 file changed, 184 insertions(+), 202 deletions(-)

diff --git a/drivers/crypto/picoxcell_crypto.c b/drivers/crypto/picoxcell_crypto.c
index 3cbefb41b099..29da449b3e9e 100644
--- a/drivers/crypto/picoxcell_crypto.c
+++ b/drivers/crypto/picoxcell_crypto.c
@@ -134,7 +134,7 @@ struct spacc_engine {
 struct spacc_alg {
 	unsigned long			ctrl_default;
 	unsigned long			type;
-	struct crypto_alg		alg;
+	struct skcipher_alg		alg;
 	struct spacc_engine		*engine;
 	struct list_head		entry;
 	int				key_offs;
@@ -173,7 +173,7 @@ struct spacc_aead_ctx {
 
 static int spacc_ablk_submit(struct spacc_req *req);
 
-static inline struct spacc_alg *to_spacc_alg(struct crypto_alg *alg)
+static inline struct spacc_alg *to_spacc_skcipher(struct skcipher_alg *alg)
 {
 	return alg ? container_of(alg, struct spacc_alg, alg) : NULL;
 }
@@ -733,13 +733,13 @@ static void spacc_aead_cra_exit(struct crypto_aead *tfm)
  * Set the DES key for a block cipher transform. This also performs weak key
  * checking if the transform has requested it.
  */
-static int spacc_des_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int spacc_des_setkey(struct crypto_skcipher *cipher, const u8 *key,
 			    unsigned int len)
 {
-	struct spacc_ablk_ctx *ctx = crypto_ablkcipher_ctx(cipher);
+	struct spacc_ablk_ctx *ctx = crypto_skcipher_ctx(cipher);
 	int err;
 
-	err = verify_ablkcipher_des_key(cipher, key);
+	err = verify_skcipher_des_key(cipher, key);
 	if (err)
 		return err;
 
@@ -753,13 +753,13 @@ static int spacc_des_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
  * Set the 3DES key for a block cipher transform. This also performs weak key
  * checking if the transform has requested it.
  */
-static int spacc_des3_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int spacc_des3_setkey(struct crypto_skcipher *cipher, const u8 *key,
 			     unsigned int len)
 {
-	struct spacc_ablk_ctx *ctx = crypto_ablkcipher_ctx(cipher);
+	struct spacc_ablk_ctx *ctx = crypto_skcipher_ctx(cipher);
 	int err;
 
-	err = verify_ablkcipher_des3_key(cipher, key);
+	err = verify_skcipher_des3_key(cipher, key);
 	if (err)
 		return err;
 
@@ -773,15 +773,15 @@ static int spacc_des3_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
  * Set the key for an AES block cipher. Some key lengths are not supported in
  * hardware so this must also check whether a fallback is needed.
  */
-static int spacc_aes_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int spacc_aes_setkey(struct crypto_skcipher *cipher, const u8 *key,
 			    unsigned int len)
 {
-	struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
+	struct crypto_tfm *tfm = crypto_skcipher_tfm(cipher);
 	struct spacc_ablk_ctx *ctx = crypto_tfm_ctx(tfm);
 	int err = 0;
 
 	if (len > AES_MAX_KEY_SIZE) {
-		crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
+		crypto_skcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
 		return -EINVAL;
 	}
 
@@ -822,15 +822,15 @@ static int spacc_aes_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
 	return err;
 }
 
-static int spacc_kasumi_f8_setkey(struct crypto_ablkcipher *cipher,
+static int spacc_kasumi_f8_setkey(struct crypto_skcipher *cipher,
 				  const u8 *key, unsigned int len)
 {
-	struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
+	struct crypto_tfm *tfm = crypto_skcipher_tfm(cipher);
 	struct spacc_ablk_ctx *ctx = crypto_tfm_ctx(tfm);
 	int err = 0;
 
 	if (len > AES_MAX_KEY_SIZE) {
-		crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
+		crypto_skcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
 		err = -EINVAL;
 		goto out;
 	}
@@ -844,12 +844,12 @@ static int spacc_kasumi_f8_setkey(struct crypto_ablkcipher *cipher,
 
 static int spacc_ablk_need_fallback(struct spacc_req *req)
 {
+	struct skcipher_request *ablk_req = skcipher_request_cast(req->req);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(ablk_req);
+	struct spacc_alg *spacc_alg = to_spacc_skcipher(crypto_skcipher_alg(tfm));
 	struct spacc_ablk_ctx *ctx;
-	struct crypto_tfm *tfm = req->req->tfm;
-	struct crypto_alg *alg = req->req->tfm->__crt_alg;
-	struct spacc_alg *spacc_alg = to_spacc_alg(alg);
 
-	ctx = crypto_tfm_ctx(tfm);
+	ctx = crypto_skcipher_ctx(tfm);
 
 	return (spacc_alg->ctrl_default & SPACC_CRYPTO_ALG_MASK) ==
 			SPA_CTRL_CIPH_ALG_AES &&
@@ -859,39 +859,39 @@ static int spacc_ablk_need_fallback(struct spacc_req *req)
 
 static void spacc_ablk_complete(struct spacc_req *req)
 {
-	struct ablkcipher_request *ablk_req = ablkcipher_request_cast(req->req);
+	struct skcipher_request *ablk_req = skcipher_request_cast(req->req);
 
 	if (ablk_req->src != ablk_req->dst) {
 		spacc_free_ddt(req, req->src_ddt, req->src_addr, ablk_req->src,
-			       ablk_req->nbytes, DMA_TO_DEVICE);
+			       ablk_req->cryptlen, DMA_TO_DEVICE);
 		spacc_free_ddt(req, req->dst_ddt, req->dst_addr, ablk_req->dst,
-			       ablk_req->nbytes, DMA_FROM_DEVICE);
+			       ablk_req->cryptlen, DMA_FROM_DEVICE);
 	} else
 		spacc_free_ddt(req, req->dst_ddt, req->dst_addr, ablk_req->dst,
-			       ablk_req->nbytes, DMA_BIDIRECTIONAL);
+			       ablk_req->cryptlen, DMA_BIDIRECTIONAL);
 
 	req->req->complete(req->req, req->result);
 }
 
 static int spacc_ablk_submit(struct spacc_req *req)
 {
-	struct crypto_tfm *tfm = req->req->tfm;
-	struct spacc_ablk_ctx *ctx = crypto_tfm_ctx(tfm);
-	struct ablkcipher_request *ablk_req = ablkcipher_request_cast(req->req);
-	struct crypto_alg *alg = req->req->tfm->__crt_alg;
-	struct spacc_alg *spacc_alg = to_spacc_alg(alg);
+	struct skcipher_request *ablk_req = skcipher_request_cast(req->req);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(ablk_req);
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
+	struct spacc_alg *spacc_alg = to_spacc_skcipher(alg);
+	struct spacc_ablk_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct spacc_engine *engine = ctx->generic.engine;
 	u32 ctrl;
 
 	req->ctx_id = spacc_load_ctx(&ctx->generic, ctx->key,
-		ctx->key_len, ablk_req->info, alg->cra_ablkcipher.ivsize,
+		ctx->key_len, ablk_req->iv, alg->ivsize,
 		NULL, 0);
 
 	writel(req->src_addr, engine->regs + SPA_SRC_PTR_REG_OFFSET);
 	writel(req->dst_addr, engine->regs + SPA_DST_PTR_REG_OFFSET);
 	writel(0, engine->regs + SPA_OFFSET_REG_OFFSET);
 
-	writel(ablk_req->nbytes, engine->regs + SPA_PROC_LEN_REG_OFFSET);
+	writel(ablk_req->cryptlen, engine->regs + SPA_PROC_LEN_REG_OFFSET);
 	writel(0, engine->regs + SPA_ICV_OFFSET_REG_OFFSET);
 	writel(0, engine->regs + SPA_AUX_INFO_REG_OFFSET);
 	writel(0, engine->regs + SPA_AAD_LEN_REG_OFFSET);
@@ -907,11 +907,11 @@ static int spacc_ablk_submit(struct spacc_req *req)
 	return -EINPROGRESS;
 }
 
-static int spacc_ablk_do_fallback(struct ablkcipher_request *req,
+static int spacc_ablk_do_fallback(struct skcipher_request *req,
 				  unsigned alg_type, bool is_encrypt)
 {
 	struct crypto_tfm *old_tfm =
-	    crypto_ablkcipher_tfm(crypto_ablkcipher_reqtfm(req));
+	    crypto_skcipher_tfm(crypto_skcipher_reqtfm(req));
 	struct spacc_ablk_ctx *ctx = crypto_tfm_ctx(old_tfm);
 	SYNC_SKCIPHER_REQUEST_ON_STACK(subreq, ctx->sw_cipher);
 	int err;
@@ -924,7 +924,7 @@ static int spacc_ablk_do_fallback(struct ablkcipher_request *req,
 	skcipher_request_set_sync_tfm(subreq, ctx->sw_cipher);
 	skcipher_request_set_callback(subreq, req->base.flags, NULL, NULL);
 	skcipher_request_set_crypt(subreq, req->src, req->dst,
-				   req->nbytes, req->info);
+				   req->cryptlen, req->iv);
 	err = is_encrypt ? crypto_skcipher_encrypt(subreq) :
 			   crypto_skcipher_decrypt(subreq);
 	skcipher_request_zero(subreq);
@@ -932,12 +932,13 @@ static int spacc_ablk_do_fallback(struct ablkcipher_request *req,
 	return err;
 }
 
-static int spacc_ablk_setup(struct ablkcipher_request *req, unsigned alg_type,
+static int spacc_ablk_setup(struct skcipher_request *req, unsigned alg_type,
 			    bool is_encrypt)
 {
-	struct crypto_alg *alg = req->base.tfm->__crt_alg;
-	struct spacc_engine *engine = to_spacc_alg(alg)->engine;
-	struct spacc_req *dev_req = ablkcipher_request_ctx(req);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
+	struct spacc_engine *engine = to_spacc_skcipher(alg)->engine;
+	struct spacc_req *dev_req = skcipher_request_ctx(req);
 	unsigned long flags;
 	int err = -ENOMEM;
 
@@ -956,17 +957,17 @@ static int spacc_ablk_setup(struct ablkcipher_request *req, unsigned alg_type,
 	 */
 	if (req->src != req->dst) {
 		dev_req->src_ddt = spacc_sg_to_ddt(engine, req->src,
-			req->nbytes, DMA_TO_DEVICE, &dev_req->src_addr);
+			req->cryptlen, DMA_TO_DEVICE, &dev_req->src_addr);
 		if (!dev_req->src_ddt)
 			goto out;
 
 		dev_req->dst_ddt = spacc_sg_to_ddt(engine, req->dst,
-			req->nbytes, DMA_FROM_DEVICE, &dev_req->dst_addr);
+			req->cryptlen, DMA_FROM_DEVICE, &dev_req->dst_addr);
 		if (!dev_req->dst_ddt)
 			goto out_free_src;
 	} else {
 		dev_req->dst_ddt = spacc_sg_to_ddt(engine, req->dst,
-			req->nbytes, DMA_BIDIRECTIONAL, &dev_req->dst_addr);
+			req->cryptlen, DMA_BIDIRECTIONAL, &dev_req->dst_addr);
 		if (!dev_req->dst_ddt)
 			goto out;
 
@@ -999,65 +1000,65 @@ static int spacc_ablk_setup(struct ablkcipher_request *req, unsigned alg_type,
 
 out_free_ddts:
 	spacc_free_ddt(dev_req, dev_req->dst_ddt, dev_req->dst_addr, req->dst,
-		       req->nbytes, req->src == req->dst ?
+		       req->cryptlen, req->src == req->dst ?
 		       DMA_BIDIRECTIONAL : DMA_FROM_DEVICE);
 out_free_src:
 	if (req->src != req->dst)
 		spacc_free_ddt(dev_req, dev_req->src_ddt, dev_req->src_addr,
-			       req->src, req->nbytes, DMA_TO_DEVICE);
+			       req->src, req->cryptlen, DMA_TO_DEVICE);
 out:
 	return err;
 }
 
-static int spacc_ablk_cra_init(struct crypto_tfm *tfm)
+static int spacc_ablk_init_tfm(struct crypto_skcipher *tfm)
 {
-	struct spacc_ablk_ctx *ctx = crypto_tfm_ctx(tfm);
-	struct crypto_alg *alg = tfm->__crt_alg;
-	struct spacc_alg *spacc_alg = to_spacc_alg(alg);
+	struct spacc_ablk_ctx *ctx = crypto_skcipher_ctx(tfm);
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
+	struct spacc_alg *spacc_alg = to_spacc_skcipher(alg);
 	struct spacc_engine *engine = spacc_alg->engine;
 
 	ctx->generic.flags = spacc_alg->type;
 	ctx->generic.engine = engine;
-	if (alg->cra_flags & CRYPTO_ALG_NEED_FALLBACK) {
+	if (alg->base.cra_flags & CRYPTO_ALG_NEED_FALLBACK) {
 		ctx->sw_cipher = crypto_alloc_sync_skcipher(
-			alg->cra_name, 0, CRYPTO_ALG_NEED_FALLBACK);
+			alg->base.cra_name, 0, CRYPTO_ALG_NEED_FALLBACK);
 		if (IS_ERR(ctx->sw_cipher)) {
 			dev_warn(engine->dev, "failed to allocate fallback for %s\n",
-				 alg->cra_name);
+				 alg->base.cra_name);
 			return PTR_ERR(ctx->sw_cipher);
 		}
 	}
 	ctx->generic.key_offs = spacc_alg->key_offs;
 	ctx->generic.iv_offs = spacc_alg->iv_offs;
 
-	tfm->crt_ablkcipher.reqsize = sizeof(struct spacc_req);
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct spacc_req));
 
 	return 0;
 }
 
-static void spacc_ablk_cra_exit(struct crypto_tfm *tfm)
+static void spacc_ablk_exit_tfm(struct crypto_skcipher *tfm)
 {
-	struct spacc_ablk_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct spacc_ablk_ctx *ctx = crypto_skcipher_ctx(tfm);
 
 	crypto_free_sync_skcipher(ctx->sw_cipher);
 }
 
-static int spacc_ablk_encrypt(struct ablkcipher_request *req)
+static int spacc_ablk_encrypt(struct skcipher_request *req)
 {
-	struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(req);
-	struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
-	struct spacc_alg *alg = to_spacc_alg(tfm->__crt_alg);
+	struct crypto_skcipher *cipher = crypto_skcipher_reqtfm(req);
+	struct skcipher_alg *alg = crypto_skcipher_alg(cipher);
+	struct spacc_alg *spacc_alg = to_spacc_skcipher(alg);
 
-	return spacc_ablk_setup(req, alg->type, 1);
+	return spacc_ablk_setup(req, spacc_alg->type, 1);
 }
 
-static int spacc_ablk_decrypt(struct ablkcipher_request *req)
+static int spacc_ablk_decrypt(struct skcipher_request *req)
 {
-	struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(req);
-	struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
-	struct spacc_alg *alg = to_spacc_alg(tfm->__crt_alg);
+	struct crypto_skcipher *cipher = crypto_skcipher_reqtfm(req);
+	struct skcipher_alg *alg = crypto_skcipher_alg(cipher);
+	struct spacc_alg *spacc_alg = to_spacc_skcipher(alg);
 
-	return spacc_ablk_setup(req, alg->type, 0);
+	return spacc_ablk_setup(req, spacc_alg->type, 0);
 }
 
 static inline int spacc_fifo_stat_empty(struct spacc_engine *engine)
@@ -1233,27 +1234,24 @@ static struct spacc_alg ipsec_engine_algs[] = {
 		.key_offs = 0,
 		.iv_offs = AES_MAX_KEY_SIZE,
 		.alg = {
-			.cra_name = "cbc(aes)",
-			.cra_driver_name = "cbc-aes-picoxcell",
-			.cra_priority = SPACC_CRYPTO_ALG_PRIORITY,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-				     CRYPTO_ALG_KERN_DRIVER_ONLY |
-				     CRYPTO_ALG_ASYNC |
-				     CRYPTO_ALG_NEED_FALLBACK,
-			.cra_blocksize = AES_BLOCK_SIZE,
-			.cra_ctxsize = sizeof(struct spacc_ablk_ctx),
-			.cra_type = &crypto_ablkcipher_type,
-			.cra_module = THIS_MODULE,
-			.cra_ablkcipher = {
-				.setkey = spacc_aes_setkey,
-				.encrypt = spacc_ablk_encrypt,
-				.decrypt = spacc_ablk_decrypt,
-				.min_keysize = AES_MIN_KEY_SIZE,
-				.max_keysize = AES_MAX_KEY_SIZE,
-				.ivsize = AES_BLOCK_SIZE,
-			},
-			.cra_init = spacc_ablk_cra_init,
-			.cra_exit = spacc_ablk_cra_exit,
+			.base.cra_name		= "cbc(aes)",
+			.base.cra_driver_name	= "cbc-aes-picoxcell",
+			.base.cra_priority	= SPACC_CRYPTO_ALG_PRIORITY,
+			.base.cra_flags		= CRYPTO_ALG_KERN_DRIVER_ONLY |
+						  CRYPTO_ALG_ASYNC |
+						  CRYPTO_ALG_NEED_FALLBACK,
+			.base.cra_blocksize	= AES_BLOCK_SIZE,
+			.base.cra_ctxsize	= sizeof(struct spacc_ablk_ctx),
+			.base.cra_module	= THIS_MODULE,
+
+			.setkey			= spacc_aes_setkey,
+			.encrypt 		= spacc_ablk_encrypt,
+			.decrypt 		= spacc_ablk_decrypt,
+			.min_keysize 		= AES_MIN_KEY_SIZE,
+			.max_keysize 		= AES_MAX_KEY_SIZE,
+			.ivsize			= AES_BLOCK_SIZE,
+			.init			= spacc_ablk_init_tfm,
+			.exit			= spacc_ablk_exit_tfm,
 		},
 	},
 	{
@@ -1261,25 +1259,23 @@ static struct spacc_alg ipsec_engine_algs[] = {
 		.iv_offs = AES_MAX_KEY_SIZE,
 		.ctrl_default = SPA_CTRL_CIPH_ALG_AES | SPA_CTRL_CIPH_MODE_ECB,
 		.alg = {
-			.cra_name = "ecb(aes)",
-			.cra_driver_name = "ecb-aes-picoxcell",
-			.cra_priority = SPACC_CRYPTO_ALG_PRIORITY,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-				CRYPTO_ALG_KERN_DRIVER_ONLY |
-				CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
-			.cra_blocksize = AES_BLOCK_SIZE,
-			.cra_ctxsize = sizeof(struct spacc_ablk_ctx),
-			.cra_type = &crypto_ablkcipher_type,
-			.cra_module = THIS_MODULE,
-			.cra_ablkcipher = {
-				.setkey = spacc_aes_setkey,
-				.encrypt = spacc_ablk_encrypt,
-				.decrypt = spacc_ablk_decrypt,
-				.min_keysize = AES_MIN_KEY_SIZE,
-				.max_keysize = AES_MAX_KEY_SIZE,
-			},
-			.cra_init = spacc_ablk_cra_init,
-			.cra_exit = spacc_ablk_cra_exit,
+			.base.cra_name		= "ecb(aes)",
+			.base.cra_driver_name	= "ecb-aes-picoxcell",
+			.base.cra_priority	= SPACC_CRYPTO_ALG_PRIORITY,
+			.base.cra_flags		= CRYPTO_ALG_KERN_DRIVER_ONLY |
+						  CRYPTO_ALG_ASYNC |
+						  CRYPTO_ALG_NEED_FALLBACK,
+			.base.cra_blocksize	= AES_BLOCK_SIZE,
+			.base.cra_ctxsize	= sizeof(struct spacc_ablk_ctx),
+			.base.cra_module	= THIS_MODULE,
+
+			.setkey			= spacc_aes_setkey,
+			.encrypt 		= spacc_ablk_encrypt,
+			.decrypt 		= spacc_ablk_decrypt,
+			.min_keysize 		= AES_MIN_KEY_SIZE,
+			.max_keysize 		= AES_MAX_KEY_SIZE,
+			.init			= spacc_ablk_init_tfm,
+			.exit			= spacc_ablk_exit_tfm,
 		},
 	},
 	{
@@ -1287,26 +1283,23 @@ static struct spacc_alg ipsec_engine_algs[] = {
 		.iv_offs = 0,
 		.ctrl_default = SPA_CTRL_CIPH_ALG_DES | SPA_CTRL_CIPH_MODE_CBC,
 		.alg = {
-			.cra_name = "cbc(des)",
-			.cra_driver_name = "cbc-des-picoxcell",
-			.cra_priority = SPACC_CRYPTO_ALG_PRIORITY,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-					CRYPTO_ALG_ASYNC |
-					CRYPTO_ALG_KERN_DRIVER_ONLY,
-			.cra_blocksize = DES_BLOCK_SIZE,
-			.cra_ctxsize = sizeof(struct spacc_ablk_ctx),
-			.cra_type = &crypto_ablkcipher_type,
-			.cra_module = THIS_MODULE,
-			.cra_ablkcipher = {
-				.setkey = spacc_des_setkey,
-				.encrypt = spacc_ablk_encrypt,
-				.decrypt = spacc_ablk_decrypt,
-				.min_keysize = DES_KEY_SIZE,
-				.max_keysize = DES_KEY_SIZE,
-				.ivsize = DES_BLOCK_SIZE,
-			},
-			.cra_init = spacc_ablk_cra_init,
-			.cra_exit = spacc_ablk_cra_exit,
+			.base.cra_name		= "cbc(des)",
+			.base.cra_driver_name	= "cbc-des-picoxcell",
+			.base.cra_priority	= SPACC_CRYPTO_ALG_PRIORITY,
+			.base.cra_flags		= CRYPTO_ALG_KERN_DRIVER_ONLY |
+						  CRYPTO_ALG_ASYNC,
+			.base.cra_blocksize	= DES_BLOCK_SIZE,
+			.base.cra_ctxsize	= sizeof(struct spacc_ablk_ctx),
+			.base.cra_module	= THIS_MODULE,
+
+			.setkey			= spacc_des_setkey,
+			.encrypt		= spacc_ablk_encrypt,
+			.decrypt		= spacc_ablk_decrypt,
+			.min_keysize		= DES_KEY_SIZE,
+			.max_keysize		= DES_KEY_SIZE,
+			.ivsize			= DES_BLOCK_SIZE,
+			.init			= spacc_ablk_init_tfm,
+			.exit			= spacc_ablk_exit_tfm,
 		},
 	},
 	{
@@ -1314,25 +1307,22 @@ static struct spacc_alg ipsec_engine_algs[] = {
 		.iv_offs = 0,
 		.ctrl_default = SPA_CTRL_CIPH_ALG_DES | SPA_CTRL_CIPH_MODE_ECB,
 		.alg = {
-			.cra_name = "ecb(des)",
-			.cra_driver_name = "ecb-des-picoxcell",
-			.cra_priority = SPACC_CRYPTO_ALG_PRIORITY,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-					CRYPTO_ALG_ASYNC |
-					CRYPTO_ALG_KERN_DRIVER_ONLY,
-			.cra_blocksize = DES_BLOCK_SIZE,
-			.cra_ctxsize = sizeof(struct spacc_ablk_ctx),
-			.cra_type = &crypto_ablkcipher_type,
-			.cra_module = THIS_MODULE,
-			.cra_ablkcipher = {
-				.setkey = spacc_des_setkey,
-				.encrypt = spacc_ablk_encrypt,
-				.decrypt = spacc_ablk_decrypt,
-				.min_keysize = DES_KEY_SIZE,
-				.max_keysize = DES_KEY_SIZE,
-			},
-			.cra_init = spacc_ablk_cra_init,
-			.cra_exit = spacc_ablk_cra_exit,
+			.base.cra_name		= "ecb(des)",
+			.base.cra_driver_name	= "ecb-des-picoxcell",
+			.base.cra_priority	= SPACC_CRYPTO_ALG_PRIORITY,
+			.base.cra_flags		= CRYPTO_ALG_KERN_DRIVER_ONLY |
+						  CRYPTO_ALG_ASYNC,
+			.base.cra_blocksize	= DES_BLOCK_SIZE,
+			.base.cra_ctxsize	= sizeof(struct spacc_ablk_ctx),
+			.base.cra_module	= THIS_MODULE,
+
+			.setkey			= spacc_des_setkey,
+			.encrypt		= spacc_ablk_encrypt,
+			.decrypt		= spacc_ablk_decrypt,
+			.min_keysize		= DES_KEY_SIZE,
+			.max_keysize		= DES_KEY_SIZE,
+			.init			= spacc_ablk_init_tfm,
+			.exit			= spacc_ablk_exit_tfm,
 		},
 	},
 	{
@@ -1340,26 +1330,23 @@ static struct spacc_alg ipsec_engine_algs[] = {
 		.iv_offs = 0,
 		.ctrl_default = SPA_CTRL_CIPH_ALG_DES | SPA_CTRL_CIPH_MODE_CBC,
 		.alg = {
-			.cra_name = "cbc(des3_ede)",
-			.cra_driver_name = "cbc-des3-ede-picoxcell",
-			.cra_priority = SPACC_CRYPTO_ALG_PRIORITY,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-					CRYPTO_ALG_ASYNC |
-					CRYPTO_ALG_KERN_DRIVER_ONLY,
-			.cra_blocksize = DES3_EDE_BLOCK_SIZE,
-			.cra_ctxsize = sizeof(struct spacc_ablk_ctx),
-			.cra_type = &crypto_ablkcipher_type,
-			.cra_module = THIS_MODULE,
-			.cra_ablkcipher = {
-				.setkey = spacc_des3_setkey,
-				.encrypt = spacc_ablk_encrypt,
-				.decrypt = spacc_ablk_decrypt,
-				.min_keysize = DES3_EDE_KEY_SIZE,
-				.max_keysize = DES3_EDE_KEY_SIZE,
-				.ivsize = DES3_EDE_BLOCK_SIZE,
-			},
-			.cra_init = spacc_ablk_cra_init,
-			.cra_exit = spacc_ablk_cra_exit,
+			.base.cra_name		= "cbc(des3_ede)",
+			.base.cra_driver_name	= "cbc-des3-ede-picoxcell",
+			.base.cra_priority	= SPACC_CRYPTO_ALG_PRIORITY,
+			.base.cra_flags		= CRYPTO_ALG_ASYNC |
+						  CRYPTO_ALG_KERN_DRIVER_ONLY,
+			.base.cra_blocksize	= DES3_EDE_BLOCK_SIZE,
+			.base.cra_ctxsize	= sizeof(struct spacc_ablk_ctx),
+			.base.cra_module	= THIS_MODULE,
+
+			.setkey			= spacc_des3_setkey,
+			.encrypt		= spacc_ablk_encrypt,
+			.decrypt		= spacc_ablk_decrypt,
+			.min_keysize		= DES3_EDE_KEY_SIZE,
+			.max_keysize		= DES3_EDE_KEY_SIZE,
+			.ivsize			= DES3_EDE_BLOCK_SIZE,
+			.init			= spacc_ablk_init_tfm,
+			.exit			= spacc_ablk_exit_tfm,
 		},
 	},
 	{
@@ -1367,25 +1354,22 @@ static struct spacc_alg ipsec_engine_algs[] = {
 		.iv_offs = 0,
 		.ctrl_default = SPA_CTRL_CIPH_ALG_DES | SPA_CTRL_CIPH_MODE_ECB,
 		.alg = {
-			.cra_name = "ecb(des3_ede)",
-			.cra_driver_name = "ecb-des3-ede-picoxcell",
-			.cra_priority = SPACC_CRYPTO_ALG_PRIORITY,
-			.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
-					CRYPTO_ALG_ASYNC |
-					CRYPTO_ALG_KERN_DRIVER_ONLY,
-			.cra_blocksize = DES3_EDE_BLOCK_SIZE,
-			.cra_ctxsize = sizeof(struct spacc_ablk_ctx),
-			.cra_type = &crypto_ablkcipher_type,
-			.cra_module = THIS_MODULE,
-			.cra_ablkcipher = {
-				.setkey = spacc_des3_setkey,
-				.encrypt = spacc_ablk_encrypt,
-				.decrypt = spacc_ablk_decrypt,
-				.min_keysize = DES3_EDE_KEY_SIZE,
-				.max_keysize = DES3_EDE_KEY_SIZE,
-			},
-			.cra_init = spacc_ablk_cra_init,
-			.cra_exit = spacc_ablk_cra_exit,
+			.base.cra_name		= "ecb(des3_ede)",
+			.base.cra_driver_name	= "ecb-des3-ede-picoxcell",
+			.base.cra_priority	= SPACC_CRYPTO_ALG_PRIORITY,
+			.base.cra_flags		= CRYPTO_ALG_ASYNC |
+						  CRYPTO_ALG_KERN_DRIVER_ONLY,
+			.base.cra_blocksize	= DES3_EDE_BLOCK_SIZE,
+			.base.cra_ctxsize	= sizeof(struct spacc_ablk_ctx),
+			.base.cra_module	= THIS_MODULE,
+
+			.setkey			= spacc_des3_setkey,
+			.encrypt		= spacc_ablk_encrypt,
+			.decrypt		= spacc_ablk_decrypt,
+			.min_keysize		= DES3_EDE_KEY_SIZE,
+			.max_keysize		= DES3_EDE_KEY_SIZE,
+			.init			= spacc_ablk_init_tfm,
+			.exit			= spacc_ablk_exit_tfm,
 		},
 	},
 };
@@ -1581,25 +1565,23 @@ static struct spacc_alg l2_engine_algs[] = {
 		.ctrl_default = SPA_CTRL_CIPH_ALG_KASUMI |
 				SPA_CTRL_CIPH_MODE_F8,
 		.alg = {
-			.cra_name = "f8(kasumi)",
-			.cra_driver_name = "f8-kasumi-picoxcell",
-			.cra_priority = SPACC_CRYPTO_ALG_PRIORITY,
-			.cra_flags = CRYPTO_ALG_ASYNC |
-					CRYPTO_ALG_KERN_DRIVER_ONLY,
-			.cra_blocksize = 8,
-			.cra_ctxsize = sizeof(struct spacc_ablk_ctx),
-			.cra_type = &crypto_ablkcipher_type,
-			.cra_module = THIS_MODULE,
-			.cra_ablkcipher = {
-				.setkey = spacc_kasumi_f8_setkey,
-				.encrypt = spacc_ablk_encrypt,
-				.decrypt = spacc_ablk_decrypt,
-				.min_keysize = 16,
-				.max_keysize = 16,
-				.ivsize = 8,
-			},
-			.cra_init = spacc_ablk_cra_init,
-			.cra_exit = spacc_ablk_cra_exit,
+			.base.cra_name		= "f8(kasumi)",
+			.base.cra_driver_name	= "f8-kasumi-picoxcell",
+			.base.cra_priority	= SPACC_CRYPTO_ALG_PRIORITY,
+			.base.cra_flags		= CRYPTO_ALG_ASYNC |
+						  CRYPTO_ALG_KERN_DRIVER_ONLY,
+			.base.cra_blocksize	= 8,
+			.base.cra_ctxsize	= sizeof(struct spacc_ablk_ctx),
+			.base.cra_module	= THIS_MODULE,
+
+			.setkey			= spacc_kasumi_f8_setkey,
+			.encrypt		= spacc_ablk_encrypt,
+			.decrypt		= spacc_ablk_decrypt,
+			.min_keysize		= 16,
+			.max_keysize		= 16,
+			.ivsize			= 8,
+			.init			= spacc_ablk_init_tfm,
+			.exit			= spacc_ablk_exit_tfm,
 		},
 	},
 };
@@ -1721,7 +1703,7 @@ static int spacc_probe(struct platform_device *pdev)
 	INIT_LIST_HEAD(&engine->registered_algs);
 	for (i = 0; i < engine->num_algs; ++i) {
 		engine->algs[i].engine = engine;
-		err = crypto_register_alg(&engine->algs[i].alg);
+		err = crypto_register_skcipher(&engine->algs[i].alg);
 		if (!err) {
 			list_add_tail(&engine->algs[i].entry,
 				      &engine->registered_algs);
@@ -1729,10 +1711,10 @@ static int spacc_probe(struct platform_device *pdev)
 		}
 		if (err)
 			dev_err(engine->dev, "failed to register alg \"%s\"\n",
-				engine->algs[i].alg.cra_name);
+				engine->algs[i].alg.base.cra_name);
 		else
 			dev_dbg(engine->dev, "registered alg \"%s\"\n",
-				engine->algs[i].alg.cra_name);
+				engine->algs[i].alg.base.cra_name);
 	}
 
 	INIT_LIST_HEAD(&engine->registered_aeads);
@@ -1781,7 +1763,7 @@ static int spacc_remove(struct platform_device *pdev)
 
 	list_for_each_entry_safe(alg, next, &engine->registered_algs, entry) {
 		list_del(&alg->entry);
-		crypto_unregister_alg(&alg->alg);
+		crypto_unregister_skcipher(&alg->alg);
 	}
 
 	clk_disable_unprepare(engine->clk);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
