Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B00BCD62A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:36:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y8ExU9iYa8/gMCmlhiufu1D3HlHyJKulSLEvr/9rFEU=; b=sUpFtSB2656IjS
	IkJa1syj4/E0FLQbERoRGBAG1+NQoXzdRqdUDVUMiiOmybsVDN9kf5j2sVDc3a7fqW43amBHaNfi+
	PN4Bl4JQAcjou0/e3u/x0YQn9uDAt/6hUDe2bd1Qj89VV726FAJidjvHLH43DXLXjL7SrmWxqdGlX
	S/V3y4lBESw9T3YnARSxbImI0FjcwFc7SIP/Qqb5Cuxep0jUAaFAt+hpfENTT/eCrLNidxvHTnqzh
	IoCnPdgwPJlPzLUggQXe98890CEJEaOwz/zHhIvpLoN3NewG6Nrm7laO6lJgw+SxAfQ9OMKUNX1bo
	Zva6QC9Bn6+cfSXeXlzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJza0-0006vf-VM; Mon, 14 Oct 2019 12:36:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzZt-0006r6-9o
 for linux-arm-kernel@bombadil.infradead.org; Mon, 14 Oct 2019 12:35:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tDXktGakkFdb9+F7OiKF0EEQZztrzDB1iwmCsDinX4g=; b=Ng5Uit9vO9FRlPv8j6i+70Mb2n
 zkRgYEj7o0W35HTm8wdzkmMZa8p0Dj50z9P0dshapHKcYMvGNAG5X2BKLbGZnENqNsZ8rVMyGCHM9
 b3u7qUhzBgiaOUa5vTKyNCNRkqkn/Dbtz6hGadv3haozd2V0JhiOXh0PSEoHbs2FS+DXEHOozDyu3
 wrdcdw2jXzji9/JJQJ2QLRAMFYbQ6YEDzCxDJbIUrUvRRa9yRidjt/tf/2LgcWgzt5M8m7QEMgl5a
 XejI5PPdIyoTBZ5UibE5UQ3SSwX/4uICeGlsPTKqn7sFTZ8op05wfywTtTk3LscUIvi7A27/DVWGu
 jSqOBFEA==;
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzKy-0003VU-HI
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:20:35 +0000
Received: by mail-wr1-x442.google.com with SMTP id p14so19473241wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 05:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tDXktGakkFdb9+F7OiKF0EEQZztrzDB1iwmCsDinX4g=;
 b=pj7Xna9Xoad0/4olhQVLutHLa9qj9LbfWBMRj4HmREzvo2Ay3FodeB1THWtfGjzx3v
 2vw9LL/w8MqaLFjTxdUCLB81BTyezXmQwyEcjNzRITokug8PrF/Fq0TxXWdtN6N3pVuM
 9ef//HAWF+I6NWM/tSuGv3D47vk+L53sA8NcxWSHGLEaj44Y7j6SLFg1KERuZ36fId4b
 NWPiOcQHflvfWyjUAoVWk7oJ4VPsNNFCtJ71ItmYLjvOxL2DRDpu1Ct1tyakzjK2evlI
 r1ykcNp5Y2VFHUItvwbAfKNYdB6BXHc7EVMgPszXJfSSl5seNeYweYg2LzAMoTFi3BOt
 7eRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tDXktGakkFdb9+F7OiKF0EEQZztrzDB1iwmCsDinX4g=;
 b=DLPdaW8/I6RBDO5AP1JODZhUmGj7vgoyXxMECakT9ZWZgNbbcH85804eseqaPPNh5p
 q9lqhhVWrlE4FHzyH479AS5SSs73p/nlWw19JfDpz6GZioOQ/6lTq39lFspND2ER07iV
 lwED+WnQwXwnoFtJP8o810vT7Xo77bYLaOMRvjIQWZD5kuKdgr5GIJuUcOwfCq5bwqxI
 BPlhJXxJJgypJqAgRIdzl9W0uaKnXIQvcAYob/sj64wPe4GKOirU/SRx4xmmoT3KeV3z
 ShFtBYuOHOGj7JIujCJFjzZs7CoxEy3NiI5lyYDyefZ7glRtkk/7m2geReAt9bYBu8zC
 5kRQ==
X-Gm-Message-State: APjAAAXQwf5EOhgKjQexUNHQtGs8kQ8evFMJhJ7QiWF7ZPERhhgOc1W+
 057LDhWvWMHxS15bm573BCrelA==
X-Google-Smtp-Source: APXvYqzMiwqBOiDnneOCZYj0eDr8+ix1N1+HrfQ/ilwBWpcPnFYi9DjdSf1zuxjOv3penljTp9H+Kw==
X-Received: by 2002:adf:e4c2:: with SMTP id v2mr24522221wrm.324.1571055603322; 
 Mon, 14 Oct 2019 05:20:03 -0700 (PDT)
Received: from localhost.localdomain (91-167-84-221.subs.proxad.net.
 [91.167.84.221])
 by smtp.gmail.com with ESMTPSA id i1sm20222470wmb.19.2019.10.14.05.20.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 05:20:02 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 22/25] crypto: qce - switch to skcipher API
Date: Mon, 14 Oct 2019 14:19:07 +0200
Message-Id: <20191014121910.7264-23-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
References: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_132032_615869_45E453B1 
X-CRM114-Status: GOOD (  22.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
 drivers/crypto/qce/Makefile                     |   2 +-
 drivers/crypto/qce/cipher.h                     |   8 +-
 drivers/crypto/qce/common.c                     |  12 +-
 drivers/crypto/qce/common.h                     |   3 +-
 drivers/crypto/qce/core.c                       |   2 +-
 drivers/crypto/qce/{ablkcipher.c => skcipher.c} | 172 ++++++++++----------
 6 files changed, 100 insertions(+), 99 deletions(-)

diff --git a/drivers/crypto/qce/Makefile b/drivers/crypto/qce/Makefile
index 19a7f899acff..8caa04e1ec43 100644
--- a/drivers/crypto/qce/Makefile
+++ b/drivers/crypto/qce/Makefile
@@ -4,4 +4,4 @@ qcrypto-objs := core.o \
 		common.o \
 		dma.o \
 		sha.o \
-		ablkcipher.o
+		skcipher.o
diff --git a/drivers/crypto/qce/cipher.h b/drivers/crypto/qce/cipher.h
index 5cab8f0706a8..7770660bc853 100644
--- a/drivers/crypto/qce/cipher.h
+++ b/drivers/crypto/qce/cipher.h
@@ -45,12 +45,12 @@ struct qce_cipher_reqctx {
 	unsigned int cryptlen;
 };
 
-static inline struct qce_alg_template *to_cipher_tmpl(struct crypto_tfm *tfm)
+static inline struct qce_alg_template *to_cipher_tmpl(struct crypto_skcipher *tfm)
 {
-	struct crypto_alg *alg = tfm->__crt_alg;
-	return container_of(alg, struct qce_alg_template, alg.crypto);
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
+	return container_of(alg, struct qce_alg_template, alg.skcipher);
 }
 
-extern const struct qce_algo_ops ablkcipher_ops;
+extern const struct qce_algo_ops skcipher_ops;
 
 #endif /* _CIPHER_H_ */
diff --git a/drivers/crypto/qce/common.c b/drivers/crypto/qce/common.c
index 3fb510164326..da1188abc9ba 100644
--- a/drivers/crypto/qce/common.c
+++ b/drivers/crypto/qce/common.c
@@ -304,13 +304,13 @@ static int qce_setup_regs_ahash(struct crypto_async_request *async_req,
 	return 0;
 }
 
-static int qce_setup_regs_ablkcipher(struct crypto_async_request *async_req,
+static int qce_setup_regs_skcipher(struct crypto_async_request *async_req,
 				     u32 totallen, u32 offset)
 {
-	struct ablkcipher_request *req = ablkcipher_request_cast(async_req);
-	struct qce_cipher_reqctx *rctx = ablkcipher_request_ctx(req);
+	struct skcipher_request *req = skcipher_request_cast(async_req);
+	struct qce_cipher_reqctx *rctx = skcipher_request_ctx(req);
 	struct qce_cipher_ctx *ctx = crypto_tfm_ctx(async_req->tfm);
-	struct qce_alg_template *tmpl = to_cipher_tmpl(async_req->tfm);
+	struct qce_alg_template *tmpl = to_cipher_tmpl(crypto_skcipher_reqtfm(req));
 	struct qce_device *qce = tmpl->qce;
 	__be32 enckey[QCE_MAX_CIPHER_KEY_SIZE / sizeof(__be32)] = {0};
 	__be32 enciv[QCE_MAX_IV_SIZE / sizeof(__be32)] = {0};
@@ -389,8 +389,8 @@ int qce_start(struct crypto_async_request *async_req, u32 type, u32 totallen,
 	      u32 offset)
 {
 	switch (type) {
-	case CRYPTO_ALG_TYPE_ABLKCIPHER:
-		return qce_setup_regs_ablkcipher(async_req, totallen, offset);
+	case CRYPTO_ALG_TYPE_SKCIPHER:
+		return qce_setup_regs_skcipher(async_req, totallen, offset);
 	case CRYPTO_ALG_TYPE_AHASH:
 		return qce_setup_regs_ahash(async_req, totallen, offset);
 	default:
diff --git a/drivers/crypto/qce/common.h b/drivers/crypto/qce/common.h
index 47fb523357ac..282d4317470d 100644
--- a/drivers/crypto/qce/common.h
+++ b/drivers/crypto/qce/common.h
@@ -10,6 +10,7 @@
 #include <linux/types.h>
 #include <crypto/aes.h>
 #include <crypto/hash.h>
+#include <crypto/internal/skcipher.h>
 
 /* key size in bytes */
 #define QCE_SHA_HMAC_KEY_SIZE		64
@@ -79,7 +80,7 @@ struct qce_alg_template {
 	unsigned long alg_flags;
 	const u32 *std_iv;
 	union {
-		struct crypto_alg crypto;
+		struct skcipher_alg skcipher;
 		struct ahash_alg ahash;
 	} alg;
 	struct qce_device *qce;
diff --git a/drivers/crypto/qce/core.c b/drivers/crypto/qce/core.c
index 08d4ce3bfddf..0a44a6eeacf5 100644
--- a/drivers/crypto/qce/core.c
+++ b/drivers/crypto/qce/core.c
@@ -22,7 +22,7 @@
 #define QCE_QUEUE_LENGTH	1
 
 static const struct qce_algo_ops *qce_ops[] = {
-	&ablkcipher_ops,
+	&skcipher_ops,
 	&ahash_ops,
 };
 
diff --git a/drivers/crypto/qce/ablkcipher.c b/drivers/crypto/qce/skcipher.c
similarity index 61%
rename from drivers/crypto/qce/ablkcipher.c
rename to drivers/crypto/qce/skcipher.c
index f0b59a8bbed0..fee07323f8f9 100644
--- a/drivers/crypto/qce/ablkcipher.c
+++ b/drivers/crypto/qce/skcipher.c
@@ -12,14 +12,14 @@
 
 #include "cipher.h"
 
-static LIST_HEAD(ablkcipher_algs);
+static LIST_HEAD(skcipher_algs);
 
-static void qce_ablkcipher_done(void *data)
+static void qce_skcipher_done(void *data)
 {
 	struct crypto_async_request *async_req = data;
-	struct ablkcipher_request *req = ablkcipher_request_cast(async_req);
-	struct qce_cipher_reqctx *rctx = ablkcipher_request_ctx(req);
-	struct qce_alg_template *tmpl = to_cipher_tmpl(async_req->tfm);
+	struct skcipher_request *req = skcipher_request_cast(async_req);
+	struct qce_cipher_reqctx *rctx = skcipher_request_ctx(req);
+	struct qce_alg_template *tmpl = to_cipher_tmpl(crypto_skcipher_reqtfm(req));
 	struct qce_device *qce = tmpl->qce;
 	enum dma_data_direction dir_src, dir_dst;
 	u32 status;
@@ -32,7 +32,7 @@ static void qce_ablkcipher_done(void *data)
 
 	error = qce_dma_terminate_all(&qce->dma);
 	if (error)
-		dev_dbg(qce->dev, "ablkcipher dma termination error (%d)\n",
+		dev_dbg(qce->dev, "skcipher dma termination error (%d)\n",
 			error);
 
 	if (diff_dst)
@@ -43,18 +43,18 @@ static void qce_ablkcipher_done(void *data)
 
 	error = qce_check_status(qce, &status);
 	if (error < 0)
-		dev_dbg(qce->dev, "ablkcipher operation error (%x)\n", status);
+		dev_dbg(qce->dev, "skcipher operation error (%x)\n", status);
 
 	qce->async_req_done(tmpl->qce, error);
 }
 
 static int
-qce_ablkcipher_async_req_handle(struct crypto_async_request *async_req)
+qce_skcipher_async_req_handle(struct crypto_async_request *async_req)
 {
-	struct ablkcipher_request *req = ablkcipher_request_cast(async_req);
-	struct qce_cipher_reqctx *rctx = ablkcipher_request_ctx(req);
-	struct crypto_ablkcipher *ablkcipher = crypto_ablkcipher_reqtfm(req);
-	struct qce_alg_template *tmpl = to_cipher_tmpl(async_req->tfm);
+	struct skcipher_request *req = skcipher_request_cast(async_req);
+	struct qce_cipher_reqctx *rctx = skcipher_request_ctx(req);
+	struct crypto_skcipher *skcipher = crypto_skcipher_reqtfm(req);
+	struct qce_alg_template *tmpl = to_cipher_tmpl(crypto_skcipher_reqtfm(req));
 	struct qce_device *qce = tmpl->qce;
 	enum dma_data_direction dir_src, dir_dst;
 	struct scatterlist *sg;
@@ -62,17 +62,17 @@ qce_ablkcipher_async_req_handle(struct crypto_async_request *async_req)
 	gfp_t gfp;
 	int ret;
 
-	rctx->iv = req->info;
-	rctx->ivsize = crypto_ablkcipher_ivsize(ablkcipher);
-	rctx->cryptlen = req->nbytes;
+	rctx->iv = req->iv;
+	rctx->ivsize = crypto_skcipher_ivsize(skcipher);
+	rctx->cryptlen = req->cryptlen;
 
 	diff_dst = (req->src != req->dst) ? true : false;
 	dir_src = diff_dst ? DMA_TO_DEVICE : DMA_BIDIRECTIONAL;
 	dir_dst = diff_dst ? DMA_FROM_DEVICE : DMA_BIDIRECTIONAL;
 
-	rctx->src_nents = sg_nents_for_len(req->src, req->nbytes);
+	rctx->src_nents = sg_nents_for_len(req->src, req->cryptlen);
 	if (diff_dst)
-		rctx->dst_nents = sg_nents_for_len(req->dst, req->nbytes);
+		rctx->dst_nents = sg_nents_for_len(req->dst, req->cryptlen);
 	else
 		rctx->dst_nents = rctx->src_nents;
 	if (rctx->src_nents < 0) {
@@ -125,13 +125,13 @@ qce_ablkcipher_async_req_handle(struct crypto_async_request *async_req)
 
 	ret = qce_dma_prep_sgs(&qce->dma, rctx->src_sg, rctx->src_nents,
 			       rctx->dst_sg, rctx->dst_nents,
-			       qce_ablkcipher_done, async_req);
+			       qce_skcipher_done, async_req);
 	if (ret)
 		goto error_unmap_src;
 
 	qce_dma_issue_pending(&qce->dma);
 
-	ret = qce_start(async_req, tmpl->crypto_alg_type, req->nbytes, 0);
+	ret = qce_start(async_req, tmpl->crypto_alg_type, req->cryptlen, 0);
 	if (ret)
 		goto error_terminate;
 
@@ -149,10 +149,10 @@ qce_ablkcipher_async_req_handle(struct crypto_async_request *async_req)
 	return ret;
 }
 
-static int qce_ablkcipher_setkey(struct crypto_ablkcipher *ablk, const u8 *key,
+static int qce_skcipher_setkey(struct crypto_skcipher *ablk, const u8 *key,
 				 unsigned int keylen)
 {
-	struct crypto_tfm *tfm = crypto_ablkcipher_tfm(ablk);
+	struct crypto_tfm *tfm = crypto_skcipher_tfm(ablk);
 	struct qce_cipher_ctx *ctx = crypto_tfm_ctx(tfm);
 	int ret;
 
@@ -177,13 +177,13 @@ static int qce_ablkcipher_setkey(struct crypto_ablkcipher *ablk, const u8 *key,
 	return ret;
 }
 
-static int qce_des_setkey(struct crypto_ablkcipher *ablk, const u8 *key,
+static int qce_des_setkey(struct crypto_skcipher *ablk, const u8 *key,
 			  unsigned int keylen)
 {
-	struct qce_cipher_ctx *ctx = crypto_ablkcipher_ctx(ablk);
+	struct qce_cipher_ctx *ctx = crypto_skcipher_ctx(ablk);
 	int err;
 
-	err = verify_ablkcipher_des_key(ablk, key);
+	err = verify_skcipher_des_key(ablk, key);
 	if (err)
 		return err;
 
@@ -192,13 +192,13 @@ static int qce_des_setkey(struct crypto_ablkcipher *ablk, const u8 *key,
 	return 0;
 }
 
-static int qce_des3_setkey(struct crypto_ablkcipher *ablk, const u8 *key,
+static int qce_des3_setkey(struct crypto_skcipher *ablk, const u8 *key,
 			   unsigned int keylen)
 {
-	struct qce_cipher_ctx *ctx = crypto_ablkcipher_ctx(ablk);
+	struct qce_cipher_ctx *ctx = crypto_skcipher_ctx(ablk);
 	int err;
 
-	err = verify_ablkcipher_des3_key(ablk, key);
+	err = verify_skcipher_des3_key(ablk, key);
 	if (err)
 		return err;
 
@@ -207,12 +207,11 @@ static int qce_des3_setkey(struct crypto_ablkcipher *ablk, const u8 *key,
 	return 0;
 }
 
-static int qce_ablkcipher_crypt(struct ablkcipher_request *req, int encrypt)
+static int qce_skcipher_crypt(struct skcipher_request *req, int encrypt)
 {
-	struct crypto_tfm *tfm =
-			crypto_ablkcipher_tfm(crypto_ablkcipher_reqtfm(req));
-	struct qce_cipher_ctx *ctx = crypto_tfm_ctx(tfm);
-	struct qce_cipher_reqctx *rctx = ablkcipher_request_ctx(req);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct qce_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
+	struct qce_cipher_reqctx *rctx = skcipher_request_ctx(req);
 	struct qce_alg_template *tmpl = to_cipher_tmpl(tfm);
 	int ret;
 
@@ -227,7 +226,7 @@ static int qce_ablkcipher_crypt(struct ablkcipher_request *req, int encrypt)
 		skcipher_request_set_callback(subreq, req->base.flags,
 					      NULL, NULL);
 		skcipher_request_set_crypt(subreq, req->src, req->dst,
-					   req->nbytes, req->info);
+					   req->cryptlen, req->iv);
 		ret = encrypt ? crypto_skcipher_encrypt(subreq) :
 				crypto_skcipher_decrypt(subreq);
 		skcipher_request_zero(subreq);
@@ -237,36 +236,36 @@ static int qce_ablkcipher_crypt(struct ablkcipher_request *req, int encrypt)
 	return tmpl->qce->async_req_enqueue(tmpl->qce, &req->base);
 }
 
-static int qce_ablkcipher_encrypt(struct ablkcipher_request *req)
+static int qce_skcipher_encrypt(struct skcipher_request *req)
 {
-	return qce_ablkcipher_crypt(req, 1);
+	return qce_skcipher_crypt(req, 1);
 }
 
-static int qce_ablkcipher_decrypt(struct ablkcipher_request *req)
+static int qce_skcipher_decrypt(struct skcipher_request *req)
 {
-	return qce_ablkcipher_crypt(req, 0);
+	return qce_skcipher_crypt(req, 0);
 }
 
-static int qce_ablkcipher_init(struct crypto_tfm *tfm)
+static int qce_skcipher_init(struct crypto_skcipher *tfm)
 {
-	struct qce_cipher_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct qce_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 
 	memset(ctx, 0, sizeof(*ctx));
-	tfm->crt_ablkcipher.reqsize = sizeof(struct qce_cipher_reqctx);
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct qce_cipher_reqctx));
 
-	ctx->fallback = crypto_alloc_sync_skcipher(crypto_tfm_alg_name(tfm),
+	ctx->fallback = crypto_alloc_sync_skcipher(crypto_tfm_alg_name(&tfm->base),
 						   0, CRYPTO_ALG_NEED_FALLBACK);
 	return PTR_ERR_OR_ZERO(ctx->fallback);
 }
 
-static void qce_ablkcipher_exit(struct crypto_tfm *tfm)
+static void qce_skcipher_exit(struct crypto_skcipher *tfm)
 {
-	struct qce_cipher_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct qce_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 
 	crypto_free_sync_skcipher(ctx->fallback);
 }
 
-struct qce_ablkcipher_def {
+struct qce_skcipher_def {
 	unsigned long flags;
 	const char *name;
 	const char *drv_name;
@@ -276,7 +275,7 @@ struct qce_ablkcipher_def {
 	unsigned int max_keysize;
 };
 
-static const struct qce_ablkcipher_def ablkcipher_def[] = {
+static const struct qce_skcipher_def skcipher_def[] = {
 	{
 		.flags		= QCE_ALG_AES | QCE_MODE_ECB,
 		.name		= "ecb(aes)",
@@ -351,90 +350,91 @@ static const struct qce_ablkcipher_def ablkcipher_def[] = {
 	},
 };
 
-static int qce_ablkcipher_register_one(const struct qce_ablkcipher_def *def,
+static int qce_skcipher_register_one(const struct qce_skcipher_def *def,
 				       struct qce_device *qce)
 {
 	struct qce_alg_template *tmpl;
-	struct crypto_alg *alg;
+	struct skcipher_alg *alg;
 	int ret;
 
 	tmpl = kzalloc(sizeof(*tmpl), GFP_KERNEL);
 	if (!tmpl)
 		return -ENOMEM;
 
-	alg = &tmpl->alg.crypto;
+	alg = &tmpl->alg.skcipher;
 
-	snprintf(alg->cra_name, CRYPTO_MAX_ALG_NAME, "%s", def->name);
-	snprintf(alg->cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
+	snprintf(alg->base.cra_name, CRYPTO_MAX_ALG_NAME, "%s", def->name);
+	snprintf(alg->base.cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
 		 def->drv_name);
 
-	alg->cra_blocksize = def->blocksize;
-	alg->cra_ablkcipher.ivsize = def->ivsize;
-	alg->cra_ablkcipher.min_keysize = def->min_keysize;
-	alg->cra_ablkcipher.max_keysize = def->max_keysize;
-	alg->cra_ablkcipher.setkey = IS_3DES(def->flags) ? qce_des3_setkey :
-				     IS_DES(def->flags) ? qce_des_setkey :
-				     qce_ablkcipher_setkey;
-	alg->cra_ablkcipher.encrypt = qce_ablkcipher_encrypt;
-	alg->cra_ablkcipher.decrypt = qce_ablkcipher_decrypt;
-
-	alg->cra_priority = 300;
-	alg->cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC |
-			 CRYPTO_ALG_NEED_FALLBACK | CRYPTO_ALG_KERN_DRIVER_ONLY;
-	alg->cra_ctxsize = sizeof(struct qce_cipher_ctx);
-	alg->cra_alignmask = 0;
-	alg->cra_type = &crypto_ablkcipher_type;
-	alg->cra_module = THIS_MODULE;
-	alg->cra_init = qce_ablkcipher_init;
-	alg->cra_exit = qce_ablkcipher_exit;
+	alg->base.cra_blocksize		= def->blocksize;
+	alg->ivsize			= def->ivsize;
+	alg->min_keysize		= def->min_keysize;
+	alg->max_keysize		= def->max_keysize;
+	alg->setkey			= IS_3DES(def->flags) ? qce_des3_setkey :
+					  IS_DES(def->flags) ? qce_des_setkey :
+					  qce_skcipher_setkey;
+	alg->encrypt			= qce_skcipher_encrypt;
+	alg->decrypt			= qce_skcipher_decrypt;
+
+	alg->base.cra_priority		= 300;
+	alg->base.cra_flags		= CRYPTO_ALG_ASYNC |
+					  CRYPTO_ALG_NEED_FALLBACK |
+					  CRYPTO_ALG_KERN_DRIVER_ONLY;
+	alg->base.cra_ctxsize		= sizeof(struct qce_cipher_ctx);
+	alg->base.cra_alignmask		= 0;
+	alg->base.cra_module		= THIS_MODULE;
+
+	alg->init			= qce_skcipher_init;
+	alg->exit			= qce_skcipher_exit;
 
 	INIT_LIST_HEAD(&tmpl->entry);
-	tmpl->crypto_alg_type = CRYPTO_ALG_TYPE_ABLKCIPHER;
+	tmpl->crypto_alg_type = CRYPTO_ALG_TYPE_SKCIPHER;
 	tmpl->alg_flags = def->flags;
 	tmpl->qce = qce;
 
-	ret = crypto_register_alg(alg);
+	ret = crypto_register_skcipher(alg);
 	if (ret) {
 		kfree(tmpl);
-		dev_err(qce->dev, "%s registration failed\n", alg->cra_name);
+		dev_err(qce->dev, "%s registration failed\n", alg->base.cra_name);
 		return ret;
 	}
 
-	list_add_tail(&tmpl->entry, &ablkcipher_algs);
-	dev_dbg(qce->dev, "%s is registered\n", alg->cra_name);
+	list_add_tail(&tmpl->entry, &skcipher_algs);
+	dev_dbg(qce->dev, "%s is registered\n", alg->base.cra_name);
 	return 0;
 }
 
-static void qce_ablkcipher_unregister(struct qce_device *qce)
+static void qce_skcipher_unregister(struct qce_device *qce)
 {
 	struct qce_alg_template *tmpl, *n;
 
-	list_for_each_entry_safe(tmpl, n, &ablkcipher_algs, entry) {
-		crypto_unregister_alg(&tmpl->alg.crypto);
+	list_for_each_entry_safe(tmpl, n, &skcipher_algs, entry) {
+		crypto_unregister_skcipher(&tmpl->alg.skcipher);
 		list_del(&tmpl->entry);
 		kfree(tmpl);
 	}
 }
 
-static int qce_ablkcipher_register(struct qce_device *qce)
+static int qce_skcipher_register(struct qce_device *qce)
 {
 	int ret, i;
 
-	for (i = 0; i < ARRAY_SIZE(ablkcipher_def); i++) {
-		ret = qce_ablkcipher_register_one(&ablkcipher_def[i], qce);
+	for (i = 0; i < ARRAY_SIZE(skcipher_def); i++) {
+		ret = qce_skcipher_register_one(&skcipher_def[i], qce);
 		if (ret)
 			goto err;
 	}
 
 	return 0;
 err:
-	qce_ablkcipher_unregister(qce);
+	qce_skcipher_unregister(qce);
 	return ret;
 }
 
-const struct qce_algo_ops ablkcipher_ops = {
-	.type = CRYPTO_ALG_TYPE_ABLKCIPHER,
-	.register_algs = qce_ablkcipher_register,
-	.unregister_algs = qce_ablkcipher_unregister,
-	.async_req_handle = qce_ablkcipher_async_req_handle,
+const struct qce_algo_ops skcipher_ops = {
+	.type = CRYPTO_ALG_TYPE_SKCIPHER,
+	.register_algs = qce_skcipher_register,
+	.unregister_algs = qce_skcipher_unregister,
+	.async_req_handle = qce_skcipher_async_req_handle,
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
