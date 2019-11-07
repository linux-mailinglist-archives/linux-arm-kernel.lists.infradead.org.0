Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22110F2D65
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 12:26:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYC+a2JAvWsMdT/E2nNRTYaDmNr2XfrxPZjrzFSJY1E=; b=HYRpyQr7Gb1R/s
	jn0+BQEv0sG34UUHtk84OIAS0P4azPfFwz/YsQ5FH4FkwBciyWFRZ4O7Vh2X/rLUDwyvGE8YBg1zh
	6faU1DEw6Zti2qhfcwETH/r+b+nxIDPw5h8Ot2eH8EBTdhJ2GNujEin72/O+K/qe73fI25PFjiS35
	ee/Aofgf7zZADhQvbfz5gwNedkLtEFFbJwv95B8lLsDiX6JVz4e5qRfN3mIq46WBqtImNabN9wGnU
	qbcza27jSMMIviPNhWG29WTIOYTjLk4J9lLSkGAkdoRgqjoGJeajQhvNvPz7OSzkLkrFSilG6TuOZ
	JZSRihKrRK02fElyXpWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSfvz-0006B3-R2; Thu, 07 Nov 2019 11:26:39 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSfvq-0006A5-FB
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 11:26:32 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 03:26:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,278,1569308400"; d="scan'208";a="214569493"
Received: from silpixa00400314.ir.intel.com (HELO silpixa00400314)
 ([10.237.223.175])
 by orsmga002.jf.intel.com with ESMTP; 07 Nov 2019 03:26:24 -0800
Date: Thu, 7 Nov 2019 11:26:16 +0000
From: Giovanni Cabiddu <giovanni.cabiddu@intel.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v3 25/29] crypto: qat - switch to skcipher API
Message-ID: <20191107112616.GA744@silpixa00400314>
References: <20191105132826.1838-1-ardb@kernel.org>
 <20191105132826.1838-26-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105132826.1838-26-ardb@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_032630_577987_6262C0BE 
X-CRM114-Status: GOOD (  19.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Herbert Xu <herbert@gondor.apana.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ard,

Reviewed.

I also fixed some whitespaces reported by checkpatch, renamed a few vars
(atfm to stfm) and run a smoke test on c62x hw.

-- 
Giovanni

---8<---
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 5 Nov 2019 14:28:22 +0100
Subject: [PATCH] crypto: qat - switch to skcipher API

Commit 7a7ffe65c8c5 ("crypto: skcipher - Add top-level skcipher interface")
dated 20 august 2015 introduced the new skcipher API which is supposed to
replace both blkcipher and ablkcipher. While all consumers of the API have
been converted long ago, some producers of the ablkcipher remain, forcing
us to keep the ablkcipher support routines alive, along with the matching
code to expose [a]blkciphers via the skcipher API.

So switch this driver to the skcipher API, allowing us to finally drop the
blkcipher code in the near future.

Cc: Giovanni Cabiddu <giovanni.cabiddu@intel.com>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
[giovanni.cabiddu@intel.com: fix whitespaces and names]
Signed-off-by: Giovanni Cabiddu <giovanni.cabiddu@intel.com>
---
 drivers/crypto/qat/qat_common/qat_algs.c   | 304 ++++++++++-----------
 drivers/crypto/qat/qat_common/qat_crypto.h |   4 +-
 2 files changed, 146 insertions(+), 162 deletions(-)

diff --git a/drivers/crypto/qat/qat_common/qat_algs.c b/drivers/crypto/qat/qat_common/qat_algs.c
index b50eb55f8f57..35bca76b640f 100644
--- a/drivers/crypto/qat/qat_common/qat_algs.c
+++ b/drivers/crypto/qat/qat_common/qat_algs.c
@@ -48,6 +48,7 @@
 #include <linux/slab.h>
 #include <linux/crypto.h>
 #include <crypto/internal/aead.h>
+#include <crypto/internal/skcipher.h>
 #include <crypto/aes.h>
 #include <crypto/sha.h>
 #include <crypto/hash.h>
@@ -122,7 +123,7 @@ struct qat_alg_aead_ctx {
 	char opad[SHA512_BLOCK_SIZE];
 };
 
-struct qat_alg_ablkcipher_ctx {
+struct qat_alg_skcipher_ctx {
 	struct icp_qat_hw_cipher_algo_blk *enc_cd;
 	struct icp_qat_hw_cipher_algo_blk *dec_cd;
 	dma_addr_t enc_cd_paddr;
@@ -130,7 +131,7 @@ struct qat_alg_ablkcipher_ctx {
 	struct icp_qat_fw_la_bulk_req enc_fw_req;
 	struct icp_qat_fw_la_bulk_req dec_fw_req;
 	struct qat_crypto_instance *inst;
-	struct crypto_tfm *tfm;
+	struct crypto_skcipher *tfm;
 };
 
 static int qat_get_inter_state_size(enum icp_qat_hw_auth_algo qat_hash_alg)
@@ -463,10 +464,10 @@ static int qat_alg_aead_init_dec_session(struct crypto_aead *aead_tfm,
 	return 0;
 }
 
-static void qat_alg_ablkcipher_init_com(struct qat_alg_ablkcipher_ctx *ctx,
-					struct icp_qat_fw_la_bulk_req *req,
-					struct icp_qat_hw_cipher_algo_blk *cd,
-					const uint8_t *key, unsigned int keylen)
+static void qat_alg_skcipher_init_com(struct qat_alg_skcipher_ctx *ctx,
+				      struct icp_qat_fw_la_bulk_req *req,
+				      struct icp_qat_hw_cipher_algo_blk *cd,
+				      const uint8_t *key, unsigned int keylen)
 {
 	struct icp_qat_fw_comn_req_hdr_cd_pars *cd_pars = &req->cd_pars;
 	struct icp_qat_fw_comn_req_hdr *header = &req->comn_hdr;
@@ -485,28 +486,28 @@ static void qat_alg_ablkcipher_init_com(struct qat_alg_ablkcipher_ctx *ctx,
 	ICP_QAT_FW_COMN_NEXT_ID_SET(cd_ctrl, ICP_QAT_FW_SLICE_DRAM_WR);
 }
 
-static void qat_alg_ablkcipher_init_enc(struct qat_alg_ablkcipher_ctx *ctx,
-					int alg, const uint8_t *key,
-					unsigned int keylen, int mode)
+static void qat_alg_skcipher_init_enc(struct qat_alg_skcipher_ctx *ctx,
+				      int alg, const uint8_t *key,
+				      unsigned int keylen, int mode)
 {
 	struct icp_qat_hw_cipher_algo_blk *enc_cd = ctx->enc_cd;
 	struct icp_qat_fw_la_bulk_req *req = &ctx->enc_fw_req;
 	struct icp_qat_fw_comn_req_hdr_cd_pars *cd_pars = &req->cd_pars;
 
-	qat_alg_ablkcipher_init_com(ctx, req, enc_cd, key, keylen);
+	qat_alg_skcipher_init_com(ctx, req, enc_cd, key, keylen);
 	cd_pars->u.s.content_desc_addr = ctx->enc_cd_paddr;
 	enc_cd->aes.cipher_config.val = QAT_AES_HW_CONFIG_ENC(alg, mode);
 }
 
-static void qat_alg_ablkcipher_init_dec(struct qat_alg_ablkcipher_ctx *ctx,
-					int alg, const uint8_t *key,
-					unsigned int keylen, int mode)
+static void qat_alg_skcipher_init_dec(struct qat_alg_skcipher_ctx *ctx,
+				      int alg, const uint8_t *key,
+				      unsigned int keylen, int mode)
 {
 	struct icp_qat_hw_cipher_algo_blk *dec_cd = ctx->dec_cd;
 	struct icp_qat_fw_la_bulk_req *req = &ctx->dec_fw_req;
 	struct icp_qat_fw_comn_req_hdr_cd_pars *cd_pars = &req->cd_pars;
 
-	qat_alg_ablkcipher_init_com(ctx, req, dec_cd, key, keylen);
+	qat_alg_skcipher_init_com(ctx, req, dec_cd, key, keylen);
 	cd_pars->u.s.content_desc_addr = ctx->dec_cd_paddr;
 
 	if (mode != ICP_QAT_HW_CIPHER_CTR_MODE)
@@ -577,21 +578,21 @@ static int qat_alg_aead_init_sessions(struct crypto_aead *tfm, const u8 *key,
 	return -EFAULT;
 }
 
-static int qat_alg_ablkcipher_init_sessions(struct qat_alg_ablkcipher_ctx *ctx,
-					    const uint8_t *key,
-					    unsigned int keylen,
-					    int mode)
+static int qat_alg_skcipher_init_sessions(struct qat_alg_skcipher_ctx *ctx,
+					  const uint8_t *key,
+					  unsigned int keylen,
+					  int mode)
 {
 	int alg;
 
 	if (qat_alg_validate_key(keylen, &alg, mode))
 		goto bad_key;
 
-	qat_alg_ablkcipher_init_enc(ctx, alg, key, keylen, mode);
-	qat_alg_ablkcipher_init_dec(ctx, alg, key, keylen, mode);
+	qat_alg_skcipher_init_enc(ctx, alg, key, keylen, mode);
+	qat_alg_skcipher_init_dec(ctx, alg, key, keylen, mode);
 	return 0;
 bad_key:
-	crypto_tfm_set_flags(ctx->tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
+	crypto_skcipher_set_flags(ctx->tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
 	return -EINVAL;
 }
 
@@ -832,12 +833,12 @@ static void qat_aead_alg_callback(struct icp_qat_fw_la_resp *qat_resp,
 	areq->base.complete(&areq->base, res);
 }
 
-static void qat_ablkcipher_alg_callback(struct icp_qat_fw_la_resp *qat_resp,
-					struct qat_crypto_request *qat_req)
+static void qat_skcipher_alg_callback(struct icp_qat_fw_la_resp *qat_resp,
+				      struct qat_crypto_request *qat_req)
 {
-	struct qat_alg_ablkcipher_ctx *ctx = qat_req->ablkcipher_ctx;
+	struct qat_alg_skcipher_ctx *ctx = qat_req->skcipher_ctx;
 	struct qat_crypto_instance *inst = ctx->inst;
-	struct ablkcipher_request *areq = qat_req->ablkcipher_req;
+	struct skcipher_request *sreq = qat_req->skcipher_req;
 	uint8_t stat_filed = qat_resp->comn_resp.comn_status;
 	struct device *dev = &GET_DEV(ctx->inst->accel_dev);
 	int res = 0, qat_res = ICP_QAT_FW_COMN_RESP_CRYPTO_STAT_GET(stat_filed);
@@ -846,11 +847,11 @@ static void qat_ablkcipher_alg_callback(struct icp_qat_fw_la_resp *qat_resp,
 	if (unlikely(qat_res != ICP_QAT_FW_COMN_STATUS_FLAG_OK))
 		res = -EINVAL;
 
-	memcpy(areq->info, qat_req->iv, AES_BLOCK_SIZE);
+	memcpy(sreq->iv, qat_req->iv, AES_BLOCK_SIZE);
 	dma_free_coherent(dev, AES_BLOCK_SIZE, qat_req->iv,
 			  qat_req->iv_paddr);
 
-	areq->base.complete(&areq->base, res);
+	sreq->base.complete(&sreq->base, res);
 }
 
 void qat_alg_callback(void *resp)
@@ -949,21 +950,21 @@ static int qat_alg_aead_enc(struct aead_request *areq)
 	return -EINPROGRESS;
 }
 
-static int qat_alg_ablkcipher_rekey(struct qat_alg_ablkcipher_ctx *ctx,
-				    const u8 *key, unsigned int keylen,
-				    int mode)
+static int qat_alg_skcipher_rekey(struct qat_alg_skcipher_ctx *ctx,
+				  const u8 *key, unsigned int keylen,
+				  int mode)
 {
 	memset(ctx->enc_cd, 0, sizeof(*ctx->enc_cd));
 	memset(ctx->dec_cd, 0, sizeof(*ctx->dec_cd));
 	memset(&ctx->enc_fw_req, 0, sizeof(ctx->enc_fw_req));
 	memset(&ctx->dec_fw_req, 0, sizeof(ctx->dec_fw_req));
 
-	return qat_alg_ablkcipher_init_sessions(ctx, key, keylen, mode);
+	return qat_alg_skcipher_init_sessions(ctx, key, keylen, mode);
 }
 
-static int qat_alg_ablkcipher_newkey(struct qat_alg_ablkcipher_ctx *ctx,
-				     const u8 *key, unsigned int keylen,
-				     int mode)
+static int qat_alg_skcipher_newkey(struct qat_alg_skcipher_ctx *ctx,
+				   const u8 *key, unsigned int keylen,
+				   int mode)
 {
 	struct qat_crypto_instance *inst = NULL;
 	struct device *dev;
@@ -990,7 +991,7 @@ static int qat_alg_ablkcipher_newkey(struct qat_alg_ablkcipher_ctx *ctx,
 		goto out_free_enc;
 	}
 
-	ret = qat_alg_ablkcipher_init_sessions(ctx, key, keylen, mode);
+	ret = qat_alg_skcipher_init_sessions(ctx, key, keylen, mode);
 	if (ret)
 		goto out_free_all;
 
@@ -1012,51 +1013,51 @@ static int qat_alg_ablkcipher_newkey(struct qat_alg_ablkcipher_ctx *ctx,
 	return ret;
 }
 
-static int qat_alg_ablkcipher_setkey(struct crypto_ablkcipher *tfm,
-				     const u8 *key, unsigned int keylen,
-				     int mode)
+static int qat_alg_skcipher_setkey(struct crypto_skcipher *tfm,
+				   const u8 *key, unsigned int keylen,
+				   int mode)
 {
-	struct qat_alg_ablkcipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
+	struct qat_alg_skcipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 
 	if (ctx->enc_cd)
-		return qat_alg_ablkcipher_rekey(ctx, key, keylen, mode);
+		return qat_alg_skcipher_rekey(ctx, key, keylen, mode);
 	else
-		return qat_alg_ablkcipher_newkey(ctx, key, keylen, mode);
+		return qat_alg_skcipher_newkey(ctx, key, keylen, mode);
 }
 
-static int qat_alg_ablkcipher_cbc_setkey(struct crypto_ablkcipher *tfm,
-					 const u8 *key, unsigned int keylen)
+static int qat_alg_skcipher_cbc_setkey(struct crypto_skcipher *tfm,
+				       const u8 *key, unsigned int keylen)
 {
-	return qat_alg_ablkcipher_setkey(tfm, key, keylen,
-					 ICP_QAT_HW_CIPHER_CBC_MODE);
+	return qat_alg_skcipher_setkey(tfm, key, keylen,
+				       ICP_QAT_HW_CIPHER_CBC_MODE);
 }
 
-static int qat_alg_ablkcipher_ctr_setkey(struct crypto_ablkcipher *tfm,
-					 const u8 *key, unsigned int keylen)
+static int qat_alg_skcipher_ctr_setkey(struct crypto_skcipher *tfm,
+				       const u8 *key, unsigned int keylen)
 {
-	return qat_alg_ablkcipher_setkey(tfm, key, keylen,
-					 ICP_QAT_HW_CIPHER_CTR_MODE);
+	return qat_alg_skcipher_setkey(tfm, key, keylen,
+				       ICP_QAT_HW_CIPHER_CTR_MODE);
 }
 
-static int qat_alg_ablkcipher_xts_setkey(struct crypto_ablkcipher *tfm,
-					 const u8 *key, unsigned int keylen)
+static int qat_alg_skcipher_xts_setkey(struct crypto_skcipher *tfm,
+				       const u8 *key, unsigned int keylen)
 {
-	return qat_alg_ablkcipher_setkey(tfm, key, keylen,
-					 ICP_QAT_HW_CIPHER_XTS_MODE);
+	return qat_alg_skcipher_setkey(tfm, key, keylen,
+				       ICP_QAT_HW_CIPHER_XTS_MODE);
 }
 
-static int qat_alg_ablkcipher_encrypt(struct ablkcipher_request *req)
+static int qat_alg_skcipher_encrypt(struct skcipher_request *req)
 {
-	struct crypto_ablkcipher *atfm = crypto_ablkcipher_reqtfm(req);
-	struct crypto_tfm *tfm = crypto_ablkcipher_tfm(atfm);
-	struct qat_alg_ablkcipher_ctx *ctx = crypto_tfm_ctx(tfm);
-	struct qat_crypto_request *qat_req = ablkcipher_request_ctx(req);
+	struct crypto_skcipher *stfm = crypto_skcipher_reqtfm(req);
+	struct crypto_tfm *tfm = crypto_skcipher_tfm(stfm);
+	struct qat_alg_skcipher_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct qat_crypto_request *qat_req = skcipher_request_ctx(req);
 	struct icp_qat_fw_la_cipher_req_params *cipher_param;
 	struct icp_qat_fw_la_bulk_req *msg;
 	struct device *dev = &GET_DEV(ctx->inst->accel_dev);
 	int ret, ctr = 0;
 
-	if (req->nbytes == 0)
+	if (req->cryptlen == 0)
 		return 0;
 
 	qat_req->iv = dma_alloc_coherent(dev, AES_BLOCK_SIZE,
@@ -1073,17 +1074,17 @@ static int qat_alg_ablkcipher_encrypt(struct ablkcipher_request *req)
 
 	msg = &qat_req->req;
 	*msg = ctx->enc_fw_req;
-	qat_req->ablkcipher_ctx = ctx;
-	qat_req->ablkcipher_req = req;
-	qat_req->cb = qat_ablkcipher_alg_callback;
+	qat_req->skcipher_ctx = ctx;
+	qat_req->skcipher_req = req;
+	qat_req->cb = qat_skcipher_alg_callback;
 	qat_req->req.comn_mid.opaque_data = (uint64_t)(__force long)qat_req;
 	qat_req->req.comn_mid.src_data_addr = qat_req->buf.blp;
 	qat_req->req.comn_mid.dest_data_addr = qat_req->buf.bloutp;
 	cipher_param = (void *)&qat_req->req.serv_specif_rqpars;
-	cipher_param->cipher_length = req->nbytes;
+	cipher_param->cipher_length = req->cryptlen;
 	cipher_param->cipher_offset = 0;
 	cipher_param->u.s.cipher_IV_ptr = qat_req->iv_paddr;
-	memcpy(qat_req->iv, req->info, AES_BLOCK_SIZE);
+	memcpy(qat_req->iv, req->iv, AES_BLOCK_SIZE);
 	do {
 		ret = adf_send_message(ctx->inst->sym_tx, (uint32_t *)msg);
 	} while (ret == -EAGAIN && ctr++ < 10);
@@ -1097,26 +1098,26 @@ static int qat_alg_ablkcipher_encrypt(struct ablkcipher_request *req)
 	return -EINPROGRESS;
 }
 
-static int qat_alg_ablkcipher_blk_encrypt(struct ablkcipher_request *req)
+static int qat_alg_skcipher_blk_encrypt(struct skcipher_request *req)
 {
-	if (req->nbytes % AES_BLOCK_SIZE != 0)
+	if (req->cryptlen % AES_BLOCK_SIZE != 0)
 		return -EINVAL;
 
-	return qat_alg_ablkcipher_encrypt(req);
+	return qat_alg_skcipher_encrypt(req);
 }
 
-static int qat_alg_ablkcipher_decrypt(struct ablkcipher_request *req)
+static int qat_alg_skcipher_decrypt(struct skcipher_request *req)
 {
-	struct crypto_ablkcipher *atfm = crypto_ablkcipher_reqtfm(req);
-	struct crypto_tfm *tfm = crypto_ablkcipher_tfm(atfm);
-	struct qat_alg_ablkcipher_ctx *ctx = crypto_tfm_ctx(tfm);
-	struct qat_crypto_request *qat_req = ablkcipher_request_ctx(req);
+	struct crypto_skcipher *stfm = crypto_skcipher_reqtfm(req);
+	struct crypto_tfm *tfm = crypto_skcipher_tfm(stfm);
+	struct qat_alg_skcipher_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct qat_crypto_request *qat_req = skcipher_request_ctx(req);
 	struct icp_qat_fw_la_cipher_req_params *cipher_param;
 	struct icp_qat_fw_la_bulk_req *msg;
 	struct device *dev = &GET_DEV(ctx->inst->accel_dev);
 	int ret, ctr = 0;
 
-	if (req->nbytes == 0)
+	if (req->cryptlen == 0)
 		return 0;
 
 	qat_req->iv = dma_alloc_coherent(dev, AES_BLOCK_SIZE,
@@ -1133,17 +1134,17 @@ static int qat_alg_ablkcipher_decrypt(struct ablkcipher_request *req)
 
 	msg = &qat_req->req;
 	*msg = ctx->dec_fw_req;
-	qat_req->ablkcipher_ctx = ctx;
-	qat_req->ablkcipher_req = req;
-	qat_req->cb = qat_ablkcipher_alg_callback;
+	qat_req->skcipher_ctx = ctx;
+	qat_req->skcipher_req = req;
+	qat_req->cb = qat_skcipher_alg_callback;
 	qat_req->req.comn_mid.opaque_data = (uint64_t)(__force long)qat_req;
 	qat_req->req.comn_mid.src_data_addr = qat_req->buf.blp;
 	qat_req->req.comn_mid.dest_data_addr = qat_req->buf.bloutp;
 	cipher_param = (void *)&qat_req->req.serv_specif_rqpars;
-	cipher_param->cipher_length = req->nbytes;
+	cipher_param->cipher_length = req->cryptlen;
 	cipher_param->cipher_offset = 0;
 	cipher_param->u.s.cipher_IV_ptr = qat_req->iv_paddr;
-	memcpy(qat_req->iv, req->info, AES_BLOCK_SIZE);
+	memcpy(qat_req->iv, req->iv, AES_BLOCK_SIZE);
 	do {
 		ret = adf_send_message(ctx->inst->sym_tx, (uint32_t *)msg);
 	} while (ret == -EAGAIN && ctr++ < 10);
@@ -1157,12 +1158,12 @@ static int qat_alg_ablkcipher_decrypt(struct ablkcipher_request *req)
 	return -EINPROGRESS;
 }
 
-static int qat_alg_ablkcipher_blk_decrypt(struct ablkcipher_request *req)
+static int qat_alg_skcipher_blk_decrypt(struct skcipher_request *req)
 {
-	if (req->nbytes % AES_BLOCK_SIZE != 0)
+	if (req->cryptlen % AES_BLOCK_SIZE != 0)
 		return -EINVAL;
 
-	return qat_alg_ablkcipher_decrypt(req);
+	return qat_alg_skcipher_decrypt(req);
 }
 static int qat_alg_aead_init(struct crypto_aead *tfm,
 			     enum icp_qat_hw_auth_algo hash,
@@ -1218,18 +1219,18 @@ static void qat_alg_aead_exit(struct crypto_aead *tfm)
 	qat_crypto_put_instance(inst);
 }
 
-static int qat_alg_ablkcipher_init(struct crypto_tfm *tfm)
+static int qat_alg_skcipher_init_tfm(struct crypto_skcipher *tfm)
 {
-	struct qat_alg_ablkcipher_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct qat_alg_skcipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 
-	tfm->crt_ablkcipher.reqsize = sizeof(struct qat_crypto_request);
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct qat_crypto_request));
 	ctx->tfm = tfm;
 	return 0;
 }
 
-static void qat_alg_ablkcipher_exit(struct crypto_tfm *tfm)
+static void qat_alg_skcipher_exit_tfm(struct crypto_skcipher *tfm)
 {
-	struct qat_alg_ablkcipher_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct qat_alg_skcipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct qat_crypto_instance *inst = ctx->inst;
 	struct device *dev;
 
@@ -1308,92 +1309,75 @@ static struct aead_alg qat_aeads[] = { {
 	.maxauthsize = SHA512_DIGEST_SIZE,
 } };
 
-static struct crypto_alg qat_algs[] = { {
-	.cra_name = "cbc(aes)",
-	.cra_driver_name = "qat_aes_cbc",
-	.cra_priority = 4001,
-	.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize = AES_BLOCK_SIZE,
-	.cra_ctxsize = sizeof(struct qat_alg_ablkcipher_ctx),
-	.cra_alignmask = 0,
-	.cra_type = &crypto_ablkcipher_type,
-	.cra_module = THIS_MODULE,
-	.cra_init = qat_alg_ablkcipher_init,
-	.cra_exit = qat_alg_ablkcipher_exit,
-	.cra_u = {
-		.ablkcipher = {
-			.setkey = qat_alg_ablkcipher_cbc_setkey,
-			.decrypt = qat_alg_ablkcipher_blk_decrypt,
-			.encrypt = qat_alg_ablkcipher_blk_encrypt,
-			.min_keysize = AES_MIN_KEY_SIZE,
-			.max_keysize = AES_MAX_KEY_SIZE,
-			.ivsize = AES_BLOCK_SIZE,
-		},
-	},
+static struct skcipher_alg qat_skciphers[] = { {
+	.base.cra_name = "cbc(aes)",
+	.base.cra_driver_name = "qat_aes_cbc",
+	.base.cra_priority = 4001,
+	.base.cra_flags = CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize = AES_BLOCK_SIZE,
+	.base.cra_ctxsize = sizeof(struct qat_alg_skcipher_ctx),
+	.base.cra_alignmask = 0,
+	.base.cra_module = THIS_MODULE,
+
+	.init = qat_alg_skcipher_init_tfm,
+	.exit = qat_alg_skcipher_exit_tfm,
+	.setkey = qat_alg_skcipher_cbc_setkey,
+	.decrypt = qat_alg_skcipher_blk_decrypt,
+	.encrypt = qat_alg_skcipher_blk_encrypt,
+	.min_keysize = AES_MIN_KEY_SIZE,
+	.max_keysize = AES_MAX_KEY_SIZE,
+	.ivsize = AES_BLOCK_SIZE,
 }, {
-	.cra_name = "ctr(aes)",
-	.cra_driver_name = "qat_aes_ctr",
-	.cra_priority = 4001,
-	.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize = 1,
-	.cra_ctxsize = sizeof(struct qat_alg_ablkcipher_ctx),
-	.cra_alignmask = 0,
-	.cra_type = &crypto_ablkcipher_type,
-	.cra_module = THIS_MODULE,
-	.cra_init = qat_alg_ablkcipher_init,
-	.cra_exit = qat_alg_ablkcipher_exit,
-	.cra_u = {
-		.ablkcipher = {
-			.setkey = qat_alg_ablkcipher_ctr_setkey,
-			.decrypt = qat_alg_ablkcipher_decrypt,
-			.encrypt = qat_alg_ablkcipher_encrypt,
-			.min_keysize = AES_MIN_KEY_SIZE,
-			.max_keysize = AES_MAX_KEY_SIZE,
-			.ivsize = AES_BLOCK_SIZE,
-		},
-	},
+	.base.cra_name = "ctr(aes)",
+	.base.cra_driver_name = "qat_aes_ctr",
+	.base.cra_priority = 4001,
+	.base.cra_flags = CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize = 1,
+	.base.cra_ctxsize = sizeof(struct qat_alg_skcipher_ctx),
+	.base.cra_alignmask = 0,
+	.base.cra_module = THIS_MODULE,
+
+	.init = qat_alg_skcipher_init_tfm,
+	.exit = qat_alg_skcipher_exit_tfm,
+	.setkey = qat_alg_skcipher_ctr_setkey,
+	.decrypt = qat_alg_skcipher_decrypt,
+	.encrypt = qat_alg_skcipher_encrypt,
+	.min_keysize = AES_MIN_KEY_SIZE,
+	.max_keysize = AES_MAX_KEY_SIZE,
+	.ivsize = AES_BLOCK_SIZE,
 }, {
-	.cra_name = "xts(aes)",
-	.cra_driver_name = "qat_aes_xts",
-	.cra_priority = 4001,
-	.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC,
-	.cra_blocksize = AES_BLOCK_SIZE,
-	.cra_ctxsize = sizeof(struct qat_alg_ablkcipher_ctx),
-	.cra_alignmask = 0,
-	.cra_type = &crypto_ablkcipher_type,
-	.cra_module = THIS_MODULE,
-	.cra_init = qat_alg_ablkcipher_init,
-	.cra_exit = qat_alg_ablkcipher_exit,
-	.cra_u = {
-		.ablkcipher = {
-			.setkey = qat_alg_ablkcipher_xts_setkey,
-			.decrypt = qat_alg_ablkcipher_blk_decrypt,
-			.encrypt = qat_alg_ablkcipher_blk_encrypt,
-			.min_keysize = 2 * AES_MIN_KEY_SIZE,
-			.max_keysize = 2 * AES_MAX_KEY_SIZE,
-			.ivsize = AES_BLOCK_SIZE,
-		},
-	},
+	.base.cra_name = "xts(aes)",
+	.base.cra_driver_name = "qat_aes_xts",
+	.base.cra_priority = 4001,
+	.base.cra_flags = CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize = AES_BLOCK_SIZE,
+	.base.cra_ctxsize = sizeof(struct qat_alg_skcipher_ctx),
+	.base.cra_alignmask = 0,
+	.base.cra_module = THIS_MODULE,
+
+	.init = qat_alg_skcipher_init_tfm,
+	.exit = qat_alg_skcipher_exit_tfm,
+	.setkey = qat_alg_skcipher_xts_setkey,
+	.decrypt = qat_alg_skcipher_blk_decrypt,
+	.encrypt = qat_alg_skcipher_blk_encrypt,
+	.min_keysize = 2 * AES_MIN_KEY_SIZE,
+	.max_keysize = 2 * AES_MAX_KEY_SIZE,
+	.ivsize = AES_BLOCK_SIZE,
 } };
 
 int qat_algs_register(void)
 {
-	int ret = 0, i;
+	int ret = 0;
 
 	mutex_lock(&algs_lock);
 	if (++active_devs != 1)
 		goto unlock;
 
-	for (i = 0; i < ARRAY_SIZE(qat_algs); i++)
-		qat_algs[i].cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC;
-
-	ret = crypto_register_algs(qat_algs, ARRAY_SIZE(qat_algs));
+	ret = crypto_register_skciphers(qat_skciphers,
+					ARRAY_SIZE(qat_skciphers));
 	if (ret)
 		goto unlock;
 
-	for (i = 0; i < ARRAY_SIZE(qat_aeads); i++)
-		qat_aeads[i].base.cra_flags = CRYPTO_ALG_ASYNC;
-
 	ret = crypto_register_aeads(qat_aeads, ARRAY_SIZE(qat_aeads));
 	if (ret)
 		goto unreg_algs;
@@ -1403,7 +1387,7 @@ int qat_algs_register(void)
 	return ret;
 
 unreg_algs:
-	crypto_unregister_algs(qat_algs, ARRAY_SIZE(qat_algs));
+	crypto_unregister_skciphers(qat_skciphers, ARRAY_SIZE(qat_skciphers));
 	goto unlock;
 }
 
@@ -1414,7 +1398,7 @@ void qat_algs_unregister(void)
 		goto unlock;
 
 	crypto_unregister_aeads(qat_aeads, ARRAY_SIZE(qat_aeads));
-	crypto_unregister_algs(qat_algs, ARRAY_SIZE(qat_algs));
+	crypto_unregister_skciphers(qat_skciphers, ARRAY_SIZE(qat_skciphers));
 
 unlock:
 	mutex_unlock(&algs_lock);
diff --git a/drivers/crypto/qat/qat_common/qat_crypto.h b/drivers/crypto/qat/qat_common/qat_crypto.h
index c77a80020cde..300bb919a33a 100644
--- a/drivers/crypto/qat/qat_common/qat_crypto.h
+++ b/drivers/crypto/qat/qat_common/qat_crypto.h
@@ -79,11 +79,11 @@ struct qat_crypto_request {
 	struct icp_qat_fw_la_bulk_req req;
 	union {
 		struct qat_alg_aead_ctx *aead_ctx;
-		struct qat_alg_ablkcipher_ctx *ablkcipher_ctx;
+		struct qat_alg_skcipher_ctx *skcipher_ctx;
 	};
 	union {
 		struct aead_request *aead_req;
-		struct ablkcipher_request *ablkcipher_req;
+		struct skcipher_request *skcipher_req;
 	};
 	struct qat_crypto_request_buffs buf;
 	void (*cb)(struct icp_qat_fw_la_resp *resp,
-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
