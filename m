Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F169AF6082
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 18:12:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j+kGl36Em/A3I9xwH8jUhAawsw4/AD8Ar18p7uaxTZc=; b=qXMn6yOFqmbIT9gRDadZTXnX+2
	h+xneZ2xkg+tcVJUhXwHzPzAW3m/yl2Lh0UEd9rVGE9ZBJmI8z6KZkb8Ms3YTPezAnd7FV2PCL83g
	3pfD0CXnd25MqvsN3NARNwUNw/Yacg7qYQIuNWycwpye0K+fksYosR/xXmdtirOMVTAqzQ7MkXIOs
	CjCS5fDHh8hkefhUnItI7dntQyGqbgNLSNy/xpz1nMEQMlnqmjkmuNF2V/qakuZrHnkXg3BATMKL4
	HlrwjztXMKREfeK533EcocdkAPqEp3VjtALHLxSRl8XhCasOAgRucYQVBrsRaEUBflcmD7jgfH+Sb
	svdRtPDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTUHQ-0005Iy-LA; Sat, 09 Nov 2019 17:12:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTUG4-0004RU-A3
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 17:10:46 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3216620659;
 Sat,  9 Nov 2019 17:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573319443;
 bh=sPODNzCM7iDyCy7B1yjtzXvo50V2zARFr1K8/GRaIa4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pL2yMLkVjq0jG16tIPUH6GRqgb4DohYnFYFtlXSJRXEmjK8vZ0R/bATjooZnlyw+t
 fasarqcyQyJpptqN0NgpG+IOtxgivYnBXToPatwWaRvGNT9zYf0+rNtzrVx+2dVulU
 8lpwN5cDo37jAlfkXybc1I5UtqiKsoqMymuOepsw=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v4 03/29] crypto: virtio - switch to skcipher API
Date: Sat,  9 Nov 2019 18:09:28 +0100
Message-Id: <20191109170954.756-4-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191109170954.756-1-ardb@kernel.org>
References: <20191109170954.756-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_091044_429923_AB101027 
X-CRM114-Status: GOOD (  18.89  )
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Eric Biggers <ebiggers@google.com>, Ard Biesheuvel <ardb@kernel.org>,
 Gonglei <arei.gonglei@huawei.com>, virtualization@lists.linux-foundation.org,
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

Cc: "Michael S. Tsirkin" <mst@redhat.com>
Cc: Jason Wang <jasowang@redhat.com>
Cc: Gonglei <arei.gonglei@huawei.com>
Cc: virtualization@lists.linux-foundation.org
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/crypto/virtio/virtio_crypto_algs.c   | 187 ++++++++++----------
 drivers/crypto/virtio/virtio_crypto_common.h |   2 +-
 2 files changed, 92 insertions(+), 97 deletions(-)

diff --git a/drivers/crypto/virtio/virtio_crypto_algs.c b/drivers/crypto/virtio/virtio_crypto_algs.c
index 82b316b2f537..4b71e80951b7 100644
--- a/drivers/crypto/virtio/virtio_crypto_algs.c
+++ b/drivers/crypto/virtio/virtio_crypto_algs.c
@@ -8,6 +8,7 @@
 
 #include <linux/scatterlist.h>
 #include <crypto/algapi.h>
+#include <crypto/internal/skcipher.h>
 #include <linux/err.h>
 #include <crypto/scatterwalk.h>
 #include <linux/atomic.h>
@@ -16,10 +17,10 @@
 #include "virtio_crypto_common.h"
 
 
-struct virtio_crypto_ablkcipher_ctx {
+struct virtio_crypto_skcipher_ctx {
 	struct crypto_engine_ctx enginectx;
 	struct virtio_crypto *vcrypto;
-	struct crypto_tfm *tfm;
+	struct crypto_skcipher *tfm;
 
 	struct virtio_crypto_sym_session_info enc_sess_info;
 	struct virtio_crypto_sym_session_info dec_sess_info;
@@ -30,8 +31,8 @@ struct virtio_crypto_sym_request {
 
 	/* Cipher or aead */
 	uint32_t type;
-	struct virtio_crypto_ablkcipher_ctx *ablkcipher_ctx;
-	struct ablkcipher_request *ablkcipher_req;
+	struct virtio_crypto_skcipher_ctx *skcipher_ctx;
+	struct skcipher_request *skcipher_req;
 	uint8_t *iv;
 	/* Encryption? */
 	bool encrypt;
@@ -41,7 +42,7 @@ struct virtio_crypto_algo {
 	uint32_t algonum;
 	uint32_t service;
 	unsigned int active_devs;
-	struct crypto_alg algo;
+	struct skcipher_alg algo;
 };
 
 /*
@@ -49,9 +50,9 @@ struct virtio_crypto_algo {
  * and crypto algorithms registion.
  */
 static DEFINE_MUTEX(algs_lock);
-static void virtio_crypto_ablkcipher_finalize_req(
+static void virtio_crypto_skcipher_finalize_req(
 	struct virtio_crypto_sym_request *vc_sym_req,
-	struct ablkcipher_request *req,
+	struct skcipher_request *req,
 	int err);
 
 static void virtio_crypto_dataq_sym_callback
@@ -59,7 +60,7 @@ static void virtio_crypto_dataq_sym_callback
 {
 	struct virtio_crypto_sym_request *vc_sym_req =
 		container_of(vc_req, struct virtio_crypto_sym_request, base);
-	struct ablkcipher_request *ablk_req;
+	struct skcipher_request *ablk_req;
 	int error;
 
 	/* Finish the encrypt or decrypt process */
@@ -79,8 +80,8 @@ static void virtio_crypto_dataq_sym_callback
 			error = -EIO;
 			break;
 		}
-		ablk_req = vc_sym_req->ablkcipher_req;
-		virtio_crypto_ablkcipher_finalize_req(vc_sym_req,
+		ablk_req = vc_sym_req->skcipher_req;
+		virtio_crypto_skcipher_finalize_req(vc_sym_req,
 							ablk_req, error);
 	}
 }
@@ -110,8 +111,8 @@ virtio_crypto_alg_validate_key(int key_len, uint32_t *alg)
 	return 0;
 }
 
-static int virtio_crypto_alg_ablkcipher_init_session(
-		struct virtio_crypto_ablkcipher_ctx *ctx,
+static int virtio_crypto_alg_skcipher_init_session(
+		struct virtio_crypto_skcipher_ctx *ctx,
 		uint32_t alg, const uint8_t *key,
 		unsigned int keylen,
 		int encrypt)
@@ -200,8 +201,8 @@ static int virtio_crypto_alg_ablkcipher_init_session(
 	return 0;
 }
 
-static int virtio_crypto_alg_ablkcipher_close_session(
-		struct virtio_crypto_ablkcipher_ctx *ctx,
+static int virtio_crypto_alg_skcipher_close_session(
+		struct virtio_crypto_skcipher_ctx *ctx,
 		int encrypt)
 {
 	struct scatterlist outhdr, status_sg, *sgs[2];
@@ -261,8 +262,8 @@ static int virtio_crypto_alg_ablkcipher_close_session(
 	return 0;
 }
 
-static int virtio_crypto_alg_ablkcipher_init_sessions(
-		struct virtio_crypto_ablkcipher_ctx *ctx,
+static int virtio_crypto_alg_skcipher_init_sessions(
+		struct virtio_crypto_skcipher_ctx *ctx,
 		const uint8_t *key, unsigned int keylen)
 {
 	uint32_t alg;
@@ -278,30 +279,30 @@ static int virtio_crypto_alg_ablkcipher_init_sessions(
 		goto bad_key;
 
 	/* Create encryption session */
-	ret = virtio_crypto_alg_ablkcipher_init_session(ctx,
+	ret = virtio_crypto_alg_skcipher_init_session(ctx,
 			alg, key, keylen, 1);
 	if (ret)
 		return ret;
 	/* Create decryption session */
-	ret = virtio_crypto_alg_ablkcipher_init_session(ctx,
+	ret = virtio_crypto_alg_skcipher_init_session(ctx,
 			alg, key, keylen, 0);
 	if (ret) {
-		virtio_crypto_alg_ablkcipher_close_session(ctx, 1);
+		virtio_crypto_alg_skcipher_close_session(ctx, 1);
 		return ret;
 	}
 	return 0;
 
 bad_key:
-	crypto_tfm_set_flags(ctx->tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
+	crypto_skcipher_set_flags(ctx->tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
 	return -EINVAL;
 }
 
 /* Note: kernel crypto API realization */
-static int virtio_crypto_ablkcipher_setkey(struct crypto_ablkcipher *tfm,
+static int virtio_crypto_skcipher_setkey(struct crypto_skcipher *tfm,
 					 const uint8_t *key,
 					 unsigned int keylen)
 {
-	struct virtio_crypto_ablkcipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
+	struct virtio_crypto_skcipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	uint32_t alg;
 	int ret;
 
@@ -323,11 +324,11 @@ static int virtio_crypto_ablkcipher_setkey(struct crypto_ablkcipher *tfm,
 		ctx->vcrypto = vcrypto;
 	} else {
 		/* Rekeying, we should close the created sessions previously */
-		virtio_crypto_alg_ablkcipher_close_session(ctx, 1);
-		virtio_crypto_alg_ablkcipher_close_session(ctx, 0);
+		virtio_crypto_alg_skcipher_close_session(ctx, 1);
+		virtio_crypto_alg_skcipher_close_session(ctx, 0);
 	}
 
-	ret = virtio_crypto_alg_ablkcipher_init_sessions(ctx, key, keylen);
+	ret = virtio_crypto_alg_skcipher_init_sessions(ctx, key, keylen);
 	if (ret) {
 		virtcrypto_dev_put(ctx->vcrypto);
 		ctx->vcrypto = NULL;
@@ -339,14 +340,14 @@ static int virtio_crypto_ablkcipher_setkey(struct crypto_ablkcipher *tfm,
 }
 
 static int
-__virtio_crypto_ablkcipher_do_req(struct virtio_crypto_sym_request *vc_sym_req,
-		struct ablkcipher_request *req,
+__virtio_crypto_skcipher_do_req(struct virtio_crypto_sym_request *vc_sym_req,
+		struct skcipher_request *req,
 		struct data_queue *data_vq)
 {
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct virtio_crypto_ablkcipher_ctx *ctx = vc_sym_req->ablkcipher_ctx;
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct virtio_crypto_skcipher_ctx *ctx = vc_sym_req->skcipher_ctx;
 	struct virtio_crypto_request *vc_req = &vc_sym_req->base;
-	unsigned int ivsize = crypto_ablkcipher_ivsize(tfm);
+	unsigned int ivsize = crypto_skcipher_ivsize(tfm);
 	struct virtio_crypto *vcrypto = ctx->vcrypto;
 	struct virtio_crypto_op_data_req *req_data;
 	int src_nents, dst_nents;
@@ -359,7 +360,7 @@ __virtio_crypto_ablkcipher_do_req(struct virtio_crypto_sym_request *vc_sym_req,
 	int sg_total;
 	uint8_t *iv;
 
-	src_nents = sg_nents_for_len(req->src, req->nbytes);
+	src_nents = sg_nents_for_len(req->src, req->cryptlen);
 	dst_nents = sg_nents(req->dst);
 
 	pr_debug("virtio_crypto: Number of sgs (src_nents: %d, dst_nents: %d)\n",
@@ -396,7 +397,7 @@ __virtio_crypto_ablkcipher_do_req(struct virtio_crypto_sym_request *vc_sym_req,
 	req_data->u.sym_req.op_type = cpu_to_le32(VIRTIO_CRYPTO_SYM_OP_CIPHER);
 	req_data->u.sym_req.u.cipher.para.iv_len = cpu_to_le32(ivsize);
 	req_data->u.sym_req.u.cipher.para.src_data_len =
-			cpu_to_le32(req->nbytes);
+			cpu_to_le32(req->cryptlen);
 
 	dst_len = virtio_crypto_alg_sg_nents_length(req->dst);
 	if (unlikely(dst_len > U32_MAX)) {
@@ -406,9 +407,9 @@ __virtio_crypto_ablkcipher_do_req(struct virtio_crypto_sym_request *vc_sym_req,
 	}
 
 	pr_debug("virtio_crypto: src_len: %u, dst_len: %llu\n",
-			req->nbytes, dst_len);
+			req->cryptlen, dst_len);
 
-	if (unlikely(req->nbytes + dst_len + ivsize +
+	if (unlikely(req->cryptlen + dst_len + ivsize +
 		sizeof(vc_req->status) > vcrypto->max_size)) {
 		pr_err("virtio_crypto: The length is too big\n");
 		err = -EINVAL;
@@ -434,10 +435,10 @@ __virtio_crypto_ablkcipher_do_req(struct virtio_crypto_sym_request *vc_sym_req,
 		err = -ENOMEM;
 		goto free;
 	}
-	memcpy(iv, req->info, ivsize);
+	memcpy(iv, req->iv, ivsize);
 	if (!vc_sym_req->encrypt)
-		scatterwalk_map_and_copy(req->info, req->src,
-					 req->nbytes - AES_BLOCK_SIZE,
+		scatterwalk_map_and_copy(req->iv, req->src,
+					 req->cryptlen - AES_BLOCK_SIZE,
 					 AES_BLOCK_SIZE, 0);
 
 	sg_init_one(&iv_sg, iv, ivsize);
@@ -476,93 +477,93 @@ __virtio_crypto_ablkcipher_do_req(struct virtio_crypto_sym_request *vc_sym_req,
 	return err;
 }
 
-static int virtio_crypto_ablkcipher_encrypt(struct ablkcipher_request *req)
+static int virtio_crypto_skcipher_encrypt(struct skcipher_request *req)
 {
-	struct crypto_ablkcipher *atfm = crypto_ablkcipher_reqtfm(req);
-	struct virtio_crypto_ablkcipher_ctx *ctx = crypto_ablkcipher_ctx(atfm);
+	struct crypto_skcipher *atfm = crypto_skcipher_reqtfm(req);
+	struct virtio_crypto_skcipher_ctx *ctx = crypto_skcipher_ctx(atfm);
 	struct virtio_crypto_sym_request *vc_sym_req =
-				ablkcipher_request_ctx(req);
+				skcipher_request_ctx(req);
 	struct virtio_crypto_request *vc_req = &vc_sym_req->base;
 	struct virtio_crypto *vcrypto = ctx->vcrypto;
 	/* Use the first data virtqueue as default */
 	struct data_queue *data_vq = &vcrypto->data_vq[0];
 
-	if (!req->nbytes)
+	if (!req->cryptlen)
 		return 0;
-	if (req->nbytes % AES_BLOCK_SIZE)
+	if (req->cryptlen % AES_BLOCK_SIZE)
 		return -EINVAL;
 
 	vc_req->dataq = data_vq;
 	vc_req->alg_cb = virtio_crypto_dataq_sym_callback;
-	vc_sym_req->ablkcipher_ctx = ctx;
-	vc_sym_req->ablkcipher_req = req;
+	vc_sym_req->skcipher_ctx = ctx;
+	vc_sym_req->skcipher_req = req;
 	vc_sym_req->encrypt = true;
 
-	return crypto_transfer_ablkcipher_request_to_engine(data_vq->engine, req);
+	return crypto_transfer_skcipher_request_to_engine(data_vq->engine, req);
 }
 
-static int virtio_crypto_ablkcipher_decrypt(struct ablkcipher_request *req)
+static int virtio_crypto_skcipher_decrypt(struct skcipher_request *req)
 {
-	struct crypto_ablkcipher *atfm = crypto_ablkcipher_reqtfm(req);
-	struct virtio_crypto_ablkcipher_ctx *ctx = crypto_ablkcipher_ctx(atfm);
+	struct crypto_skcipher *atfm = crypto_skcipher_reqtfm(req);
+	struct virtio_crypto_skcipher_ctx *ctx = crypto_skcipher_ctx(atfm);
 	struct virtio_crypto_sym_request *vc_sym_req =
-				ablkcipher_request_ctx(req);
+				skcipher_request_ctx(req);
 	struct virtio_crypto_request *vc_req = &vc_sym_req->base;
 	struct virtio_crypto *vcrypto = ctx->vcrypto;
 	/* Use the first data virtqueue as default */
 	struct data_queue *data_vq = &vcrypto->data_vq[0];
 
-	if (!req->nbytes)
+	if (!req->cryptlen)
 		return 0;
-	if (req->nbytes % AES_BLOCK_SIZE)
+	if (req->cryptlen % AES_BLOCK_SIZE)
 		return -EINVAL;
 
 	vc_req->dataq = data_vq;
 	vc_req->alg_cb = virtio_crypto_dataq_sym_callback;
-	vc_sym_req->ablkcipher_ctx = ctx;
-	vc_sym_req->ablkcipher_req = req;
+	vc_sym_req->skcipher_ctx = ctx;
+	vc_sym_req->skcipher_req = req;
 	vc_sym_req->encrypt = false;
 
-	return crypto_transfer_ablkcipher_request_to_engine(data_vq->engine, req);
+	return crypto_transfer_skcipher_request_to_engine(data_vq->engine, req);
 }
 
-static int virtio_crypto_ablkcipher_init(struct crypto_tfm *tfm)
+static int virtio_crypto_skcipher_init(struct crypto_skcipher *tfm)
 {
-	struct virtio_crypto_ablkcipher_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct virtio_crypto_skcipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 
-	tfm->crt_ablkcipher.reqsize = sizeof(struct virtio_crypto_sym_request);
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct virtio_crypto_sym_request));
 	ctx->tfm = tfm;
 
-	ctx->enginectx.op.do_one_request = virtio_crypto_ablkcipher_crypt_req;
+	ctx->enginectx.op.do_one_request = virtio_crypto_skcipher_crypt_req;
 	ctx->enginectx.op.prepare_request = NULL;
 	ctx->enginectx.op.unprepare_request = NULL;
 	return 0;
 }
 
-static void virtio_crypto_ablkcipher_exit(struct crypto_tfm *tfm)
+static void virtio_crypto_skcipher_exit(struct crypto_skcipher *tfm)
 {
-	struct virtio_crypto_ablkcipher_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct virtio_crypto_skcipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 
 	if (!ctx->vcrypto)
 		return;
 
-	virtio_crypto_alg_ablkcipher_close_session(ctx, 1);
-	virtio_crypto_alg_ablkcipher_close_session(ctx, 0);
+	virtio_crypto_alg_skcipher_close_session(ctx, 1);
+	virtio_crypto_alg_skcipher_close_session(ctx, 0);
 	virtcrypto_dev_put(ctx->vcrypto);
 	ctx->vcrypto = NULL;
 }
 
-int virtio_crypto_ablkcipher_crypt_req(
+int virtio_crypto_skcipher_crypt_req(
 	struct crypto_engine *engine, void *vreq)
 {
-	struct ablkcipher_request *req = container_of(vreq, struct ablkcipher_request, base);
+	struct skcipher_request *req = container_of(vreq, struct skcipher_request, base);
 	struct virtio_crypto_sym_request *vc_sym_req =
-				ablkcipher_request_ctx(req);
+				skcipher_request_ctx(req);
 	struct virtio_crypto_request *vc_req = &vc_sym_req->base;
 	struct data_queue *data_vq = vc_req->dataq;
 	int ret;
 
-	ret = __virtio_crypto_ablkcipher_do_req(vc_sym_req, req, data_vq);
+	ret = __virtio_crypto_skcipher_do_req(vc_sym_req, req, data_vq);
 	if (ret < 0)
 		return ret;
 
@@ -571,16 +572,16 @@ int virtio_crypto_ablkcipher_crypt_req(
 	return 0;
 }
 
-static void virtio_crypto_ablkcipher_finalize_req(
+static void virtio_crypto_skcipher_finalize_req(
 	struct virtio_crypto_sym_request *vc_sym_req,
-	struct ablkcipher_request *req,
+	struct skcipher_request *req,
 	int err)
 {
 	if (vc_sym_req->encrypt)
-		scatterwalk_map_and_copy(req->info, req->dst,
-					 req->nbytes - AES_BLOCK_SIZE,
+		scatterwalk_map_and_copy(req->iv, req->dst,
+					 req->cryptlen - AES_BLOCK_SIZE,
 					 AES_BLOCK_SIZE, 0);
-	crypto_finalize_ablkcipher_request(vc_sym_req->base.dataq->engine,
+	crypto_finalize_skcipher_request(vc_sym_req->base.dataq->engine,
 					   req, err);
 	kzfree(vc_sym_req->iv);
 	virtcrypto_clear_request(&vc_sym_req->base);
@@ -590,27 +591,21 @@ static struct virtio_crypto_algo virtio_crypto_algs[] = { {
 	.algonum = VIRTIO_CRYPTO_CIPHER_AES_CBC,
 	.service = VIRTIO_CRYPTO_SERVICE_CIPHER,
 	.algo = {
-		.cra_name = "cbc(aes)",
-		.cra_driver_name = "virtio_crypto_aes_cbc",
-		.cra_priority = 150,
-		.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-		.cra_blocksize = AES_BLOCK_SIZE,
-		.cra_ctxsize  = sizeof(struct virtio_crypto_ablkcipher_ctx),
-		.cra_alignmask = 0,
-		.cra_module = THIS_MODULE,
-		.cra_type = &crypto_ablkcipher_type,
-		.cra_init = virtio_crypto_ablkcipher_init,
-		.cra_exit = virtio_crypto_ablkcipher_exit,
-		.cra_u = {
-			.ablkcipher = {
-				.setkey = virtio_crypto_ablkcipher_setkey,
-				.decrypt = virtio_crypto_ablkcipher_decrypt,
-				.encrypt = virtio_crypto_ablkcipher_encrypt,
-				.min_keysize = AES_MIN_KEY_SIZE,
-				.max_keysize = AES_MAX_KEY_SIZE,
-				.ivsize = AES_BLOCK_SIZE,
-			},
-		},
+		.base.cra_name		= "cbc(aes)",
+		.base.cra_driver_name	= "virtio_crypto_aes_cbc",
+		.base.cra_priority	= 150,
+		.base.cra_flags		= CRYPTO_ALG_ASYNC,
+		.base.cra_blocksize	= AES_BLOCK_SIZE,
+		.base.cra_ctxsize	= sizeof(struct virtio_crypto_skcipher_ctx),
+		.base.cra_module	= THIS_MODULE,
+		.init			= virtio_crypto_skcipher_init,
+		.exit			= virtio_crypto_skcipher_exit,
+		.setkey			= virtio_crypto_skcipher_setkey,
+		.decrypt		= virtio_crypto_skcipher_decrypt,
+		.encrypt		= virtio_crypto_skcipher_encrypt,
+		.min_keysize		= AES_MIN_KEY_SIZE,
+		.max_keysize		= AES_MAX_KEY_SIZE,
+		.ivsize			= AES_BLOCK_SIZE,
 	},
 } };
 
@@ -630,14 +625,14 @@ int virtio_crypto_algs_register(struct virtio_crypto *vcrypto)
 			continue;
 
 		if (virtio_crypto_algs[i].active_devs == 0) {
-			ret = crypto_register_alg(&virtio_crypto_algs[i].algo);
+			ret = crypto_register_skcipher(&virtio_crypto_algs[i].algo);
 			if (ret)
 				goto unlock;
 		}
 
 		virtio_crypto_algs[i].active_devs++;
 		dev_info(&vcrypto->vdev->dev, "Registered algo %s\n",
-			 virtio_crypto_algs[i].algo.cra_name);
+			 virtio_crypto_algs[i].algo.base.cra_name);
 	}
 
 unlock:
@@ -661,7 +656,7 @@ void virtio_crypto_algs_unregister(struct virtio_crypto *vcrypto)
 			continue;
 
 		if (virtio_crypto_algs[i].active_devs == 1)
-			crypto_unregister_alg(&virtio_crypto_algs[i].algo);
+			crypto_unregister_skcipher(&virtio_crypto_algs[i].algo);
 
 		virtio_crypto_algs[i].active_devs--;
 	}
diff --git a/drivers/crypto/virtio/virtio_crypto_common.h b/drivers/crypto/virtio/virtio_crypto_common.h
index 1c6e00da5a29..a24f85c589e7 100644
--- a/drivers/crypto/virtio/virtio_crypto_common.h
+++ b/drivers/crypto/virtio/virtio_crypto_common.h
@@ -112,7 +112,7 @@ struct virtio_crypto *virtcrypto_get_dev_node(int node,
 					      uint32_t algo);
 int virtcrypto_dev_start(struct virtio_crypto *vcrypto);
 void virtcrypto_dev_stop(struct virtio_crypto *vcrypto);
-int virtio_crypto_ablkcipher_crypt_req(
+int virtio_crypto_skcipher_crypt_req(
 	struct crypto_engine *engine, void *vreq);
 
 void
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
