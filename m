Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E74E3428
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 15:29:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+lKPm3QC4run9nhiPUcU2Ws3HTr/4xKwaJRzLV+TPGg=; b=UQDmVWGGcxUgfU
	y5xpVmStcjOI3vfustTq3zzVhpZ3gjL8hj/lINJ/PWF4m5oVGARo9gYDSgcC3uGrCInX9dLRtMRPb
	f93wH0K4ow53+4TQ9umnzmm6nto/dxUYAboSWkaPJ3ltL9HpT6QlqHNJISFz2+HMD6oHqVoFCMnfg
	inIj43AHODThw3+385al9Dsg2z/OgEK5v1s37vAbotgXQTVYASrDudDbJa3Tfo9dfomR+XeblIpyp
	D4RVCFnLRGbq8kkfeujMX9Cp/EVLgNhFKazKU4IB6dTP3a9o17YW7bV8EH0fg0nsfHiV6wKik8JG6
	90nff9lPHirwGagdKT7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNdAh-00055y-CK; Thu, 24 Oct 2019 13:28:59 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNd65-0000cR-K6
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 13:24:24 +0000
Received: by mail-wm1-x341.google.com with SMTP id q70so2853372wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 06:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nE1sIohimgs8BDMyHcZseP+9B7QEi23+jSplbaZyScQ=;
 b=gnEP8NDu/kP7bkEq+n2ShLiOg2vQC7gGOEuJt6csJsrF6El9r4MmmgqHp8LnwRXD4/
 jZbZ3YITttv0upFT5rjcgke85rM7C3CCAPr6iouIxsU8kNOjIh2ZL/rd2Z2P/qCC/Qx7
 sdCyyYRu7XLRNSREAp3hFV7YKXGM3g0tUhJMgNx7nWAdJwFcrzG9hTCdMfBXXiVFY7eh
 W3UKcK5MaoR3THN7ygIBbqYDNeYT56Kog+9oxVstn+tLPinzJ/ab91pzezdol4Xw/t+U
 wcpeQGPeM9rwzB9d794wlHRLdbDIbWHsNDHwvQ+dLUVH5+PWJphAi4H7X6+Cqw6wEu5T
 O6og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nE1sIohimgs8BDMyHcZseP+9B7QEi23+jSplbaZyScQ=;
 b=WLrBgzhbpg0vP9tiG5AvtPD/eWec9Jinq7c9ntS7KYVCHBymILokSF3gA9tk+Z14uP
 JA3qxgRpwn9OBdLpO8dR7hR8lox6BF6ppRZ+2R1BZzHp5zm2pkUKT/OPi06WR0gD8jCw
 8IGQqy0MfdlOOcKrFCXPJq3rI5/gOUsN4ltwYUuY77ZkI4w3qiwWj33OMZoyDv6gVfDB
 JLS0XwYx20OpkXNtbja21X5XlrAQfBWBeKEScxPtOoxrieoQEluntlv+zVBPSWPXKK6F
 Z7Ml7T5BdBkAe78FAt4T5139qD3VNOyJdOhB1iG0WJD+2REI1bOyFQpjfIfwR9boZnOD
 aAuw==
X-Gm-Message-State: APjAAAU2WOVmI/A1hqKT9lu4YBO2PIlrWc5/ngtfmXpP4p/O25EDQIBA
 +SCAEXfjv3kiImbORxfcIMSmiA==
X-Google-Smtp-Source: APXvYqzWMRjSp1ePcxmIQqfi0Jo+Vz1/aNQO+x9um44ulYOiKw9Y3D2xYXNR/5y6PqzJDa5uoOSogA==
X-Received: by 2002:a1c:1d10:: with SMTP id d16mr5259861wmd.14.1571923451603; 
 Thu, 24 Oct 2019 06:24:11 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id e3sm2346310wme.36.2019.10.24.06.24.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 06:24:10 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 13/27] crypto: chelsio - switch to skcipher API
Date: Thu, 24 Oct 2019 15:23:31 +0200
Message-Id: <20191024132345.5236-14-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
References: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_062413_975483_DEFD2569 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Eric Biggers <ebiggers@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "David S. Miller" <davem@davemloft.net>, Atul Gupta <atul.gupta@chelsio.com>,
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

Cc: Atul Gupta <atul.gupta@chelsio.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/crypto/chelsio/chcr_algo.c   | 334 ++++++++++----------
 drivers/crypto/chelsio/chcr_algo.h   |   2 +-
 drivers/crypto/chelsio/chcr_crypto.h |  16 +-
 3 files changed, 173 insertions(+), 179 deletions(-)

diff --git a/drivers/crypto/chelsio/chcr_algo.c b/drivers/crypto/chelsio/chcr_algo.c
index 38ee38b37ae6..1b4a5664e604 100644
--- a/drivers/crypto/chelsio/chcr_algo.c
+++ b/drivers/crypto/chelsio/chcr_algo.c
@@ -93,7 +93,7 @@ static u32 round_constant[11] = {
 	0x1B000000, 0x36000000, 0x6C000000
 };
 
-static int chcr_handle_cipher_resp(struct ablkcipher_request *req,
+static int chcr_handle_cipher_resp(struct skcipher_request *req,
 				   unsigned char *input, int err);
 
 static inline  struct chcr_aead_ctx *AEAD_CTX(struct chcr_context *ctx)
@@ -568,11 +568,11 @@ static void  ulptx_walk_add_sg(struct ulptx_walk *walk,
 	}
 }
 
-static inline int get_cryptoalg_subtype(struct crypto_tfm *tfm)
+static inline int get_cryptoalg_subtype(struct crypto_skcipher *tfm)
 {
-	struct crypto_alg *alg = tfm->__crt_alg;
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
 	struct chcr_alg_template *chcr_crypto_alg =
-		container_of(alg, struct chcr_alg_template, alg.crypto);
+		container_of(alg, struct chcr_alg_template, alg.skcipher);
 
 	return chcr_crypto_alg->type & CRYPTO_ALG_SUB_TYPE_MASK;
 }
@@ -757,14 +757,14 @@ static inline void create_wreq(struct chcr_context *ctx,
  */
 static struct sk_buff *create_cipher_wr(struct cipher_wr_param *wrparam)
 {
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(wrparam->req);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(wrparam->req);
 	struct ablk_ctx *ablkctx = ABLK_CTX(c_ctx(tfm));
 	struct sk_buff *skb = NULL;
 	struct chcr_wr *chcr_req;
 	struct cpl_rx_phys_dsgl *phys_cpl;
 	struct ulptx_sgl *ulptx;
-	struct chcr_blkcipher_req_ctx *reqctx =
-		ablkcipher_request_ctx(wrparam->req);
+	struct chcr_skcipher_req_ctx *reqctx =
+		skcipher_request_ctx(wrparam->req);
 	unsigned int temp = 0, transhdr_len, dst_size;
 	int error;
 	int nents;
@@ -807,9 +807,9 @@ static struct sk_buff *create_cipher_wr(struct cipher_wr_param *wrparam)
 
 	chcr_req->key_ctx.ctx_hdr = ablkctx->key_ctx_hdr;
 	if ((reqctx->op == CHCR_DECRYPT_OP) &&
-	    (!(get_cryptoalg_subtype(crypto_ablkcipher_tfm(tfm)) ==
+	    (!(get_cryptoalg_subtype(tfm) ==
 	       CRYPTO_ALG_SUB_TYPE_CTR)) &&
-	    (!(get_cryptoalg_subtype(crypto_ablkcipher_tfm(tfm)) ==
+	    (!(get_cryptoalg_subtype(tfm) ==
 	       CRYPTO_ALG_SUB_TYPE_CTR_RFC3686))) {
 		generate_copy_rrkey(ablkctx, &chcr_req->key_ctx);
 	} else {
@@ -843,7 +843,7 @@ static struct sk_buff *create_cipher_wr(struct cipher_wr_param *wrparam)
 	if (reqctx->op && (ablkctx->ciph_mode ==
 			   CHCR_SCMD_CIPHER_MODE_AES_CBC))
 		sg_pcopy_to_buffer(wrparam->req->src,
-			sg_nents(wrparam->req->src), wrparam->req->info, 16,
+			sg_nents(wrparam->req->src), wrparam->req->iv, 16,
 			reqctx->processed + wrparam->bytes - AES_BLOCK_SIZE);
 
 	return skb;
@@ -866,11 +866,11 @@ static inline int chcr_keyctx_ck_size(unsigned int keylen)
 
 	return ck_size;
 }
-static int chcr_cipher_fallback_setkey(struct crypto_ablkcipher *cipher,
+static int chcr_cipher_fallback_setkey(struct crypto_skcipher *cipher,
 				       const u8 *key,
 				       unsigned int keylen)
 {
-	struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
+	struct crypto_tfm *tfm = crypto_skcipher_tfm(cipher);
 	struct ablk_ctx *ablkctx = ABLK_CTX(c_ctx(cipher));
 	int err = 0;
 
@@ -886,7 +886,7 @@ static int chcr_cipher_fallback_setkey(struct crypto_ablkcipher *cipher,
 	return err;
 }
 
-static int chcr_aes_cbc_setkey(struct crypto_ablkcipher *cipher,
+static int chcr_aes_cbc_setkey(struct crypto_skcipher *cipher,
 			       const u8 *key,
 			       unsigned int keylen)
 {
@@ -912,13 +912,13 @@ static int chcr_aes_cbc_setkey(struct crypto_ablkcipher *cipher,
 	ablkctx->ciph_mode = CHCR_SCMD_CIPHER_MODE_AES_CBC;
 	return 0;
 badkey_err:
-	crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
+	crypto_skcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
 	ablkctx->enckey_len = 0;
 
 	return err;
 }
 
-static int chcr_aes_ctr_setkey(struct crypto_ablkcipher *cipher,
+static int chcr_aes_ctr_setkey(struct crypto_skcipher *cipher,
 				   const u8 *key,
 				   unsigned int keylen)
 {
@@ -943,13 +943,13 @@ static int chcr_aes_ctr_setkey(struct crypto_ablkcipher *cipher,
 
 	return 0;
 badkey_err:
-	crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
+	crypto_skcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
 	ablkctx->enckey_len = 0;
 
 	return err;
 }
 
-static int chcr_aes_rfc3686_setkey(struct crypto_ablkcipher *cipher,
+static int chcr_aes_rfc3686_setkey(struct crypto_skcipher *cipher,
 				   const u8 *key,
 				   unsigned int keylen)
 {
@@ -981,7 +981,7 @@ static int chcr_aes_rfc3686_setkey(struct crypto_ablkcipher *cipher,
 
 	return 0;
 badkey_err:
-	crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
+	crypto_skcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
 	ablkctx->enckey_len = 0;
 
 	return err;
@@ -1017,12 +1017,12 @@ static unsigned int adjust_ctr_overflow(u8 *iv, u32 bytes)
 	return bytes;
 }
 
-static int chcr_update_tweak(struct ablkcipher_request *req, u8 *iv,
+static int chcr_update_tweak(struct skcipher_request *req, u8 *iv,
 			     u32 isfinal)
 {
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 	struct ablk_ctx *ablkctx = ABLK_CTX(c_ctx(tfm));
-	struct chcr_blkcipher_req_ctx *reqctx = ablkcipher_request_ctx(req);
+	struct chcr_skcipher_req_ctx *reqctx = skcipher_request_ctx(req);
 	struct crypto_aes_ctx aes;
 	int ret, i;
 	u8 *key;
@@ -1051,16 +1051,16 @@ static int chcr_update_tweak(struct ablkcipher_request *req, u8 *iv,
 	return 0;
 }
 
-static int chcr_update_cipher_iv(struct ablkcipher_request *req,
+static int chcr_update_cipher_iv(struct skcipher_request *req,
 				   struct cpl_fw6_pld *fw6_pld, u8 *iv)
 {
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct chcr_blkcipher_req_ctx *reqctx = ablkcipher_request_ctx(req);
-	int subtype = get_cryptoalg_subtype(crypto_ablkcipher_tfm(tfm));
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct chcr_skcipher_req_ctx *reqctx = skcipher_request_ctx(req);
+	int subtype = get_cryptoalg_subtype(tfm);
 	int ret = 0;
 
 	if (subtype == CRYPTO_ALG_SUB_TYPE_CTR)
-		ctr_add_iv(iv, req->info, (reqctx->processed /
+		ctr_add_iv(iv, req->iv, (reqctx->processed /
 			   AES_BLOCK_SIZE));
 	else if (subtype == CRYPTO_ALG_SUB_TYPE_CTR_RFC3686)
 		*(__be32 *)(reqctx->iv + CTR_RFC3686_NONCE_SIZE +
@@ -1071,7 +1071,7 @@ static int chcr_update_cipher_iv(struct ablkcipher_request *req,
 	else if (subtype == CRYPTO_ALG_SUB_TYPE_CBC) {
 		if (reqctx->op)
 			/*Updated before sending last WR*/
-			memcpy(iv, req->info, AES_BLOCK_SIZE);
+			memcpy(iv, req->iv, AES_BLOCK_SIZE);
 		else
 			memcpy(iv, &fw6_pld->data[2], AES_BLOCK_SIZE);
 	}
@@ -1085,16 +1085,16 @@ static int chcr_update_cipher_iv(struct ablkcipher_request *req,
  * for subsequent update requests
  */
 
-static int chcr_final_cipher_iv(struct ablkcipher_request *req,
+static int chcr_final_cipher_iv(struct skcipher_request *req,
 				   struct cpl_fw6_pld *fw6_pld, u8 *iv)
 {
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	struct chcr_blkcipher_req_ctx *reqctx = ablkcipher_request_ctx(req);
-	int subtype = get_cryptoalg_subtype(crypto_ablkcipher_tfm(tfm));
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct chcr_skcipher_req_ctx *reqctx = skcipher_request_ctx(req);
+	int subtype = get_cryptoalg_subtype(tfm);
 	int ret = 0;
 
 	if (subtype == CRYPTO_ALG_SUB_TYPE_CTR)
-		ctr_add_iv(iv, req->info, DIV_ROUND_UP(reqctx->processed,
+		ctr_add_iv(iv, req->iv, DIV_ROUND_UP(reqctx->processed,
 						       AES_BLOCK_SIZE));
 	else if (subtype == CRYPTO_ALG_SUB_TYPE_XTS)
 		ret = chcr_update_tweak(req, iv, 1);
@@ -1108,25 +1108,25 @@ static int chcr_final_cipher_iv(struct ablkcipher_request *req,
 
 }
 
-static int chcr_handle_cipher_resp(struct ablkcipher_request *req,
+static int chcr_handle_cipher_resp(struct skcipher_request *req,
 				   unsigned char *input, int err)
 {
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 	struct uld_ctx *u_ctx = ULD_CTX(c_ctx(tfm));
 	struct ablk_ctx *ablkctx = ABLK_CTX(c_ctx(tfm));
 	struct sk_buff *skb;
 	struct cpl_fw6_pld *fw6_pld = (struct cpl_fw6_pld *)input;
-	struct chcr_blkcipher_req_ctx *reqctx = ablkcipher_request_ctx(req);
+	struct chcr_skcipher_req_ctx *reqctx = skcipher_request_ctx(req);
 	struct  cipher_wr_param wrparam;
 	struct chcr_dev *dev = c_ctx(tfm)->dev;
 	int bytes;
 
 	if (err)
 		goto unmap;
-	if (req->nbytes == reqctx->processed) {
+	if (req->cryptlen == reqctx->processed) {
 		chcr_cipher_dma_unmap(&ULD_CTX(c_ctx(tfm))->lldi.pdev->dev,
 				      req);
-		err = chcr_final_cipher_iv(req, fw6_pld, req->info);
+		err = chcr_final_cipher_iv(req, fw6_pld, req->iv);
 		goto complete;
 	}
 
@@ -1134,13 +1134,13 @@ static int chcr_handle_cipher_resp(struct ablkcipher_request *req,
 		bytes = chcr_sg_ent_in_wr(reqctx->srcsg, reqctx->dstsg, 0,
 					  CIP_SPACE_LEFT(ablkctx->enckey_len),
 					  reqctx->src_ofst, reqctx->dst_ofst);
-		if ((bytes + reqctx->processed) >= req->nbytes)
-			bytes  = req->nbytes - reqctx->processed;
+		if ((bytes + reqctx->processed) >= req->cryptlen)
+			bytes  = req->cryptlen - reqctx->processed;
 		else
 			bytes = rounddown(bytes, 16);
 	} else {
 		/*CTR mode counter overfloa*/
-		bytes  = req->nbytes - reqctx->processed;
+		bytes  = req->cryptlen - reqctx->processed;
 	}
 	err = chcr_update_cipher_iv(req, fw6_pld, reqctx->iv);
 	if (err)
@@ -1153,13 +1153,13 @@ static int chcr_handle_cipher_resp(struct ablkcipher_request *req,
 				     req->base.flags,
 				     req->src,
 				     req->dst,
-				     req->nbytes,
-				     req->info,
+				     req->cryptlen,
+				     req->iv,
 				     reqctx->op);
 		goto complete;
 	}
 
-	if (get_cryptoalg_subtype(crypto_ablkcipher_tfm(tfm)) ==
+	if (get_cryptoalg_subtype(tfm) ==
 	    CRYPTO_ALG_SUB_TYPE_CTR)
 		bytes = adjust_ctr_overflow(reqctx->iv, bytes);
 	wrparam.qid = u_ctx->lldi.rxq_ids[c_ctx(tfm)->rx_qidx];
@@ -1185,33 +1185,33 @@ static int chcr_handle_cipher_resp(struct ablkcipher_request *req,
 	return err;
 }
 
-static int process_cipher(struct ablkcipher_request *req,
+static int process_cipher(struct skcipher_request *req,
 				  unsigned short qid,
 				  struct sk_buff **skb,
 				  unsigned short op_type)
 {
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
-	unsigned int ivsize = crypto_ablkcipher_ivsize(tfm);
-	struct chcr_blkcipher_req_ctx *reqctx = ablkcipher_request_ctx(req);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	unsigned int ivsize = crypto_skcipher_ivsize(tfm);
+	struct chcr_skcipher_req_ctx *reqctx = skcipher_request_ctx(req);
 	struct ablk_ctx *ablkctx = ABLK_CTX(c_ctx(tfm));
 	struct	cipher_wr_param wrparam;
 	int bytes, err = -EINVAL;
 
 	reqctx->processed = 0;
-	if (!req->info)
+	if (!req->iv)
 		goto error;
 	if ((ablkctx->enckey_len == 0) || (ivsize > AES_BLOCK_SIZE) ||
-	    (req->nbytes == 0) ||
-	    (req->nbytes % crypto_ablkcipher_blocksize(tfm))) {
+	    (req->cryptlen == 0) ||
+	    (req->cryptlen % crypto_skcipher_blocksize(tfm))) {
 		pr_err("AES: Invalid value of Key Len %d nbytes %d IV Len %d\n",
-		       ablkctx->enckey_len, req->nbytes, ivsize);
+		       ablkctx->enckey_len, req->cryptlen, ivsize);
 		goto error;
 	}
 
 	err = chcr_cipher_dma_map(&ULD_CTX(c_ctx(tfm))->lldi.pdev->dev, req);
 	if (err)
 		goto error;
-	if (req->nbytes < (SGE_MAX_WR_LEN - (sizeof(struct chcr_wr) +
+	if (req->cryptlen < (SGE_MAX_WR_LEN - (sizeof(struct chcr_wr) +
 					    AES_MIN_KEY_SIZE +
 					    sizeof(struct cpl_rx_phys_dsgl) +
 					/*Min dsgl size*/
@@ -1219,14 +1219,14 @@ static int process_cipher(struct ablkcipher_request *req,
 		/* Can be sent as Imm*/
 		unsigned int dnents = 0, transhdr_len, phys_dsgl, kctx_len;
 
-		dnents = sg_nents_xlen(req->dst, req->nbytes,
+		dnents = sg_nents_xlen(req->dst, req->cryptlen,
 				       CHCR_DST_SG_SIZE, 0);
 		phys_dsgl = get_space_for_phys_dsgl(dnents);
 		kctx_len = roundup(ablkctx->enckey_len, 16);
 		transhdr_len = CIPHER_TRANSHDR_SIZE(kctx_len, phys_dsgl);
-		reqctx->imm = (transhdr_len + IV + req->nbytes) <=
+		reqctx->imm = (transhdr_len + IV + req->cryptlen) <=
 			SGE_MAX_WR_LEN;
-		bytes = IV + req->nbytes;
+		bytes = IV + req->cryptlen;
 
 	} else {
 		reqctx->imm = 0;
@@ -1236,21 +1236,21 @@ static int process_cipher(struct ablkcipher_request *req,
 		bytes = chcr_sg_ent_in_wr(req->src, req->dst, 0,
 					  CIP_SPACE_LEFT(ablkctx->enckey_len),
 					  0, 0);
-		if ((bytes + reqctx->processed) >= req->nbytes)
-			bytes  = req->nbytes - reqctx->processed;
+		if ((bytes + reqctx->processed) >= req->cryptlen)
+			bytes  = req->cryptlen - reqctx->processed;
 		else
 			bytes = rounddown(bytes, 16);
 	} else {
-		bytes = req->nbytes;
+		bytes = req->cryptlen;
 	}
-	if (get_cryptoalg_subtype(crypto_ablkcipher_tfm(tfm)) ==
+	if (get_cryptoalg_subtype(tfm) ==
 	    CRYPTO_ALG_SUB_TYPE_CTR) {
-		bytes = adjust_ctr_overflow(req->info, bytes);
+		bytes = adjust_ctr_overflow(req->iv, bytes);
 	}
-	if (get_cryptoalg_subtype(crypto_ablkcipher_tfm(tfm)) ==
+	if (get_cryptoalg_subtype(tfm) ==
 	    CRYPTO_ALG_SUB_TYPE_CTR_RFC3686) {
 		memcpy(reqctx->iv, ablkctx->nonce, CTR_RFC3686_NONCE_SIZE);
-		memcpy(reqctx->iv + CTR_RFC3686_NONCE_SIZE, req->info,
+		memcpy(reqctx->iv + CTR_RFC3686_NONCE_SIZE, req->iv,
 				CTR_RFC3686_IV_SIZE);
 
 		/* initialize counter portion of counter block */
@@ -1259,7 +1259,7 @@ static int process_cipher(struct ablkcipher_request *req,
 
 	} else {
 
-		memcpy(reqctx->iv, req->info, IV);
+		memcpy(reqctx->iv, req->iv, IV);
 	}
 	if (unlikely(bytes == 0)) {
 		chcr_cipher_dma_unmap(&ULD_CTX(c_ctx(tfm))->lldi.pdev->dev,
@@ -1268,7 +1268,7 @@ static int process_cipher(struct ablkcipher_request *req,
 					   req->base.flags,
 					   req->src,
 					   req->dst,
-					   req->nbytes,
+					   req->cryptlen,
 					   reqctx->iv,
 					   op_type);
 		goto error;
@@ -1296,9 +1296,9 @@ static int process_cipher(struct ablkcipher_request *req,
 	return err;
 }
 
-static int chcr_aes_encrypt(struct ablkcipher_request *req)
+static int chcr_aes_encrypt(struct skcipher_request *req)
 {
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 	struct chcr_dev *dev = c_ctx(tfm)->dev;
 	struct sk_buff *skb = NULL;
 	int err, isfull = 0;
@@ -1329,9 +1329,9 @@ static int chcr_aes_encrypt(struct ablkcipher_request *req)
 	return err;
 }
 
-static int chcr_aes_decrypt(struct ablkcipher_request *req)
+static int chcr_aes_decrypt(struct skcipher_request *req)
 {
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 	struct uld_ctx *u_ctx = ULD_CTX(c_ctx(tfm));
 	struct chcr_dev *dev = c_ctx(tfm)->dev;
 	struct sk_buff *skb = NULL;
@@ -1398,27 +1398,28 @@ static int chcr_device_init(struct chcr_context *ctx)
 	return err;
 }
 
-static int chcr_cra_init(struct crypto_tfm *tfm)
+static int chcr_init_tfm(struct crypto_skcipher *tfm)
 {
-	struct crypto_alg *alg = tfm->__crt_alg;
-	struct chcr_context *ctx = crypto_tfm_ctx(tfm);
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
+	struct chcr_context *ctx = crypto_skcipher_ctx(tfm);
 	struct ablk_ctx *ablkctx = ABLK_CTX(ctx);
 
-	ablkctx->sw_cipher = crypto_alloc_sync_skcipher(alg->cra_name, 0,
+	ablkctx->sw_cipher = crypto_alloc_sync_skcipher(alg->base.cra_name, 0,
 				CRYPTO_ALG_NEED_FALLBACK);
 	if (IS_ERR(ablkctx->sw_cipher)) {
-		pr_err("failed to allocate fallback for %s\n", alg->cra_name);
+		pr_err("failed to allocate fallback for %s\n", alg->base.cra_name);
 		return PTR_ERR(ablkctx->sw_cipher);
 	}
 
-	tfm->crt_ablkcipher.reqsize =  sizeof(struct chcr_blkcipher_req_ctx);
-	return chcr_device_init(crypto_tfm_ctx(tfm));
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct chcr_skcipher_req_ctx));
+
+	return chcr_device_init(ctx);
 }
 
-static int chcr_rfc3686_init(struct crypto_tfm *tfm)
+static int chcr_rfc3686_init(struct crypto_skcipher *tfm)
 {
-	struct crypto_alg *alg = tfm->__crt_alg;
-	struct chcr_context *ctx = crypto_tfm_ctx(tfm);
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
+	struct chcr_context *ctx = crypto_skcipher_ctx(tfm);
 	struct ablk_ctx *ablkctx = ABLK_CTX(ctx);
 
 	/*RFC3686 initialises IV counter value to 1, rfc3686(ctr(aes))
@@ -1427,17 +1428,17 @@ static int chcr_rfc3686_init(struct crypto_tfm *tfm)
 	ablkctx->sw_cipher = crypto_alloc_sync_skcipher("ctr(aes)", 0,
 				CRYPTO_ALG_NEED_FALLBACK);
 	if (IS_ERR(ablkctx->sw_cipher)) {
-		pr_err("failed to allocate fallback for %s\n", alg->cra_name);
+		pr_err("failed to allocate fallback for %s\n", alg->base.cra_name);
 		return PTR_ERR(ablkctx->sw_cipher);
 	}
-	tfm->crt_ablkcipher.reqsize =  sizeof(struct chcr_blkcipher_req_ctx);
-	return chcr_device_init(crypto_tfm_ctx(tfm));
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct chcr_skcipher_req_ctx));
+	return chcr_device_init(ctx);
 }
 
 
-static void chcr_cra_exit(struct crypto_tfm *tfm)
+static void chcr_exit_tfm(struct crypto_skcipher *tfm)
 {
-	struct chcr_context *ctx = crypto_tfm_ctx(tfm);
+	struct chcr_context *ctx = crypto_skcipher_ctx(tfm);
 	struct ablk_ctx *ablkctx = ABLK_CTX(ctx);
 
 	crypto_free_sync_skcipher(ablkctx->sw_cipher);
@@ -2056,8 +2057,8 @@ int chcr_handle_resp(struct crypto_async_request *req, unsigned char *input,
 		err = chcr_handle_aead_resp(aead_request_cast(req), input, err);
 		break;
 
-	case CRYPTO_ALG_TYPE_ABLKCIPHER:
-		 chcr_handle_cipher_resp(ablkcipher_request_cast(req),
+	case CRYPTO_ALG_TYPE_SKCIPHER:
+		 chcr_handle_cipher_resp(skcipher_request_cast(req),
 					       input, err);
 		break;
 	case CRYPTO_ALG_TYPE_AHASH:
@@ -2148,7 +2149,7 @@ static int chcr_ahash_setkey(struct crypto_ahash *tfm, const u8 *key,
 	return err;
 }
 
-static int chcr_aes_xts_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
+static int chcr_aes_xts_setkey(struct crypto_skcipher *cipher, const u8 *key,
 			       unsigned int key_len)
 {
 	struct ablk_ctx *ablkctx = ABLK_CTX(c_ctx(cipher));
@@ -2172,7 +2173,7 @@ static int chcr_aes_xts_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
 	ablkctx->ciph_mode = CHCR_SCMD_CIPHER_MODE_AES_XTS;
 	return 0;
 badkey_err:
-	crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
+	crypto_skcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
 	ablkctx->enckey_len = 0;
 
 	return err;
@@ -2576,12 +2577,12 @@ void chcr_add_aead_dst_ent(struct aead_request *req,
 	dsgl_walk_end(&dsgl_walk, qid, ctx->pci_chan_id);
 }
 
-void chcr_add_cipher_src_ent(struct ablkcipher_request *req,
+void chcr_add_cipher_src_ent(struct skcipher_request *req,
 			     void *ulptx,
 			     struct  cipher_wr_param *wrparam)
 {
 	struct ulptx_walk ulp_walk;
-	struct chcr_blkcipher_req_ctx *reqctx = ablkcipher_request_ctx(req);
+	struct chcr_skcipher_req_ctx *reqctx = skcipher_request_ctx(req);
 	u8 *buf = ulptx;
 
 	memcpy(buf, reqctx->iv, IV);
@@ -2599,13 +2600,13 @@ void chcr_add_cipher_src_ent(struct ablkcipher_request *req,
 	}
 }
 
-void chcr_add_cipher_dst_ent(struct ablkcipher_request *req,
+void chcr_add_cipher_dst_ent(struct skcipher_request *req,
 			     struct cpl_rx_phys_dsgl *phys_cpl,
 			     struct  cipher_wr_param *wrparam,
 			     unsigned short qid)
 {
-	struct chcr_blkcipher_req_ctx *reqctx = ablkcipher_request_ctx(req);
-	struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(wrparam->req);
+	struct chcr_skcipher_req_ctx *reqctx = skcipher_request_ctx(req);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(wrparam->req);
 	struct chcr_context *ctx = c_ctx(tfm);
 	struct dsgl_walk dsgl_walk;
 
@@ -2680,7 +2681,7 @@ void chcr_hash_dma_unmap(struct device *dev,
 }
 
 int chcr_cipher_dma_map(struct device *dev,
-			struct ablkcipher_request *req)
+			struct skcipher_request *req)
 {
 	int error;
 
@@ -2709,7 +2710,7 @@ int chcr_cipher_dma_map(struct device *dev,
 }
 
 void chcr_cipher_dma_unmap(struct device *dev,
-			   struct ablkcipher_request *req)
+			   struct skcipher_request *req)
 {
 	if (req->src == req->dst) {
 		dma_unmap_sg(dev, req->src, sg_nents(req->src),
@@ -3712,82 +3713,76 @@ static int chcr_aead_decrypt(struct aead_request *req)
 static struct chcr_alg_template driver_algs[] = {
 	/* AES-CBC */
 	{
-		.type = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_SUB_TYPE_CBC,
+		.type = CRYPTO_ALG_TYPE_SKCIPHER | CRYPTO_ALG_SUB_TYPE_CBC,
 		.is_registered = 0,
-		.alg.crypto = {
-			.cra_name		= "cbc(aes)",
-			.cra_driver_name	= "cbc-aes-chcr",
-			.cra_blocksize		= AES_BLOCK_SIZE,
-			.cra_init		= chcr_cra_init,
-			.cra_exit		= chcr_cra_exit,
-			.cra_u.ablkcipher	= {
-				.min_keysize	= AES_MIN_KEY_SIZE,
-				.max_keysize	= AES_MAX_KEY_SIZE,
-				.ivsize		= AES_BLOCK_SIZE,
-				.setkey			= chcr_aes_cbc_setkey,
-				.encrypt		= chcr_aes_encrypt,
-				.decrypt		= chcr_aes_decrypt,
+		.alg.skcipher = {
+			.base.cra_name		= "cbc(aes)",
+			.base.cra_driver_name	= "cbc-aes-chcr",
+			.base.cra_blocksize	= AES_BLOCK_SIZE,
+
+			.init			= chcr_init_tfm,
+			.exit			= chcr_exit_tfm,
+			.min_keysize		= AES_MIN_KEY_SIZE,
+			.max_keysize		= AES_MAX_KEY_SIZE,
+			.ivsize			= AES_BLOCK_SIZE,
+			.setkey			= chcr_aes_cbc_setkey,
+			.encrypt		= chcr_aes_encrypt,
+			.decrypt		= chcr_aes_decrypt,
 			}
-		}
 	},
 	{
-		.type = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_SUB_TYPE_XTS,
+		.type = CRYPTO_ALG_TYPE_SKCIPHER | CRYPTO_ALG_SUB_TYPE_XTS,
 		.is_registered = 0,
-		.alg.crypto =   {
-			.cra_name		= "xts(aes)",
-			.cra_driver_name	= "xts-aes-chcr",
-			.cra_blocksize		= AES_BLOCK_SIZE,
-			.cra_init		= chcr_cra_init,
-			.cra_exit		= NULL,
-			.cra_u .ablkcipher = {
-					.min_keysize	= 2 * AES_MIN_KEY_SIZE,
-					.max_keysize	= 2 * AES_MAX_KEY_SIZE,
-					.ivsize		= AES_BLOCK_SIZE,
-					.setkey		= chcr_aes_xts_setkey,
-					.encrypt	= chcr_aes_encrypt,
-					.decrypt	= chcr_aes_decrypt,
-				}
+		.alg.skcipher = {
+			.base.cra_name		= "xts(aes)",
+			.base.cra_driver_name	= "xts-aes-chcr",
+			.base.cra_blocksize	= AES_BLOCK_SIZE,
+
+			.init			= chcr_init_tfm,
+			.exit			= chcr_exit_tfm,
+			.min_keysize		= 2 * AES_MIN_KEY_SIZE,
+			.max_keysize		= 2 * AES_MAX_KEY_SIZE,
+			.ivsize			= AES_BLOCK_SIZE,
+			.setkey			= chcr_aes_xts_setkey,
+			.encrypt		= chcr_aes_encrypt,
+			.decrypt		= chcr_aes_decrypt,
 			}
 	},
 	{
-		.type = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_SUB_TYPE_CTR,
+		.type = CRYPTO_ALG_TYPE_SKCIPHER | CRYPTO_ALG_SUB_TYPE_CTR,
 		.is_registered = 0,
-		.alg.crypto = {
-			.cra_name		= "ctr(aes)",
-			.cra_driver_name	= "ctr-aes-chcr",
-			.cra_blocksize		= 1,
-			.cra_init		= chcr_cra_init,
-			.cra_exit		= chcr_cra_exit,
-			.cra_u.ablkcipher	= {
-				.min_keysize	= AES_MIN_KEY_SIZE,
-				.max_keysize	= AES_MAX_KEY_SIZE,
-				.ivsize		= AES_BLOCK_SIZE,
-				.setkey		= chcr_aes_ctr_setkey,
-				.encrypt	= chcr_aes_encrypt,
-				.decrypt	= chcr_aes_decrypt,
-			}
+		.alg.skcipher = {
+			.base.cra_name		= "ctr(aes)",
+			.base.cra_driver_name	= "ctr-aes-chcr",
+			.base.cra_blocksize	= 1,
+
+			.init			= chcr_init_tfm,
+			.exit			= chcr_exit_tfm,
+			.min_keysize		= AES_MIN_KEY_SIZE,
+			.max_keysize		= AES_MAX_KEY_SIZE,
+			.ivsize			= AES_BLOCK_SIZE,
+			.setkey			= chcr_aes_ctr_setkey,
+			.encrypt		= chcr_aes_encrypt,
+			.decrypt		= chcr_aes_decrypt,
 		}
 	},
 	{
-		.type = CRYPTO_ALG_TYPE_ABLKCIPHER |
+		.type = CRYPTO_ALG_TYPE_SKCIPHER |
 			CRYPTO_ALG_SUB_TYPE_CTR_RFC3686,
 		.is_registered = 0,
-		.alg.crypto = {
-			.cra_name		= "rfc3686(ctr(aes))",
-			.cra_driver_name	= "rfc3686-ctr-aes-chcr",
-			.cra_blocksize		= 1,
-			.cra_init		= chcr_rfc3686_init,
-			.cra_exit		= chcr_cra_exit,
-			.cra_u.ablkcipher	= {
-				.min_keysize	= AES_MIN_KEY_SIZE +
-					CTR_RFC3686_NONCE_SIZE,
-				.max_keysize	= AES_MAX_KEY_SIZE +
-					CTR_RFC3686_NONCE_SIZE,
-				.ivsize		= CTR_RFC3686_IV_SIZE,
-				.setkey		= chcr_aes_rfc3686_setkey,
-				.encrypt	= chcr_aes_encrypt,
-				.decrypt	= chcr_aes_decrypt,
-			}
+		.alg.skcipher = {
+			.base.cra_name		= "rfc3686(ctr(aes))",
+			.base.cra_driver_name	= "rfc3686-ctr-aes-chcr",
+			.base.cra_blocksize	= 1,
+
+			.init			= chcr_rfc3686_init,
+			.exit			= chcr_exit_tfm,
+			.min_keysize		= AES_MIN_KEY_SIZE + CTR_RFC3686_NONCE_SIZE,
+			.max_keysize		= AES_MAX_KEY_SIZE + CTR_RFC3686_NONCE_SIZE,
+			.ivsize			= CTR_RFC3686_IV_SIZE,
+			.setkey			= chcr_aes_rfc3686_setkey,
+			.encrypt		= chcr_aes_encrypt,
+			.decrypt		= chcr_aes_decrypt,
 		}
 	},
 	/* SHA */
@@ -4254,10 +4249,10 @@ static int chcr_unregister_alg(void)
 
 	for (i = 0; i < ARRAY_SIZE(driver_algs); i++) {
 		switch (driver_algs[i].type & CRYPTO_ALG_TYPE_MASK) {
-		case CRYPTO_ALG_TYPE_ABLKCIPHER:
+		case CRYPTO_ALG_TYPE_SKCIPHER:
 			if (driver_algs[i].is_registered)
-				crypto_unregister_alg(
-						&driver_algs[i].alg.crypto);
+				crypto_unregister_skcipher(
+						&driver_algs[i].alg.skcipher);
 			break;
 		case CRYPTO_ALG_TYPE_AEAD:
 			if (driver_algs[i].is_registered)
@@ -4293,21 +4288,20 @@ static int chcr_register_alg(void)
 		if (driver_algs[i].is_registered)
 			continue;
 		switch (driver_algs[i].type & CRYPTO_ALG_TYPE_MASK) {
-		case CRYPTO_ALG_TYPE_ABLKCIPHER:
-			driver_algs[i].alg.crypto.cra_priority =
+		case CRYPTO_ALG_TYPE_SKCIPHER:
+			driver_algs[i].alg.skcipher.base.cra_priority =
 				CHCR_CRA_PRIORITY;
-			driver_algs[i].alg.crypto.cra_module = THIS_MODULE;
-			driver_algs[i].alg.crypto.cra_flags =
-				CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC |
+			driver_algs[i].alg.skcipher.base.cra_module = THIS_MODULE;
+			driver_algs[i].alg.skcipher.base.cra_flags =
+				CRYPTO_ALG_TYPE_SKCIPHER | CRYPTO_ALG_ASYNC |
 				CRYPTO_ALG_NEED_FALLBACK;
-			driver_algs[i].alg.crypto.cra_ctxsize =
+			driver_algs[i].alg.skcipher.base.cra_ctxsize =
 				sizeof(struct chcr_context) +
 				sizeof(struct ablk_ctx);
-			driver_algs[i].alg.crypto.cra_alignmask = 0;
-			driver_algs[i].alg.crypto.cra_type =
-				&crypto_ablkcipher_type;
-			err = crypto_register_alg(&driver_algs[i].alg.crypto);
-			name = driver_algs[i].alg.crypto.cra_driver_name;
+			driver_algs[i].alg.skcipher.base.cra_alignmask = 0;
+
+			err = crypto_register_skcipher(&driver_algs[i].alg.skcipher);
+			name = driver_algs[i].alg.skcipher.base.cra_driver_name;
 			break;
 		case CRYPTO_ALG_TYPE_AEAD:
 			driver_algs[i].alg.aead.base.cra_flags =
diff --git a/drivers/crypto/chelsio/chcr_algo.h b/drivers/crypto/chelsio/chcr_algo.h
index d1e6b51df0ce..f58c2b5c7fc5 100644
--- a/drivers/crypto/chelsio/chcr_algo.h
+++ b/drivers/crypto/chelsio/chcr_algo.h
@@ -287,7 +287,7 @@ struct hash_wr_param {
 };
 
 struct cipher_wr_param {
-	struct ablkcipher_request *req;
+	struct skcipher_request *req;
 	char *iv;
 	int bytes;
 	unsigned short qid;
diff --git a/drivers/crypto/chelsio/chcr_crypto.h b/drivers/crypto/chelsio/chcr_crypto.h
index 993c97e70565..6db2df8c8a05 100644
--- a/drivers/crypto/chelsio/chcr_crypto.h
+++ b/drivers/crypto/chelsio/chcr_crypto.h
@@ -160,9 +160,9 @@ static inline struct chcr_context *a_ctx(struct crypto_aead *tfm)
 	return crypto_aead_ctx(tfm);
 }
 
-static inline struct chcr_context *c_ctx(struct crypto_ablkcipher *tfm)
+static inline struct chcr_context *c_ctx(struct crypto_skcipher *tfm)
 {
-	return crypto_ablkcipher_ctx(tfm);
+	return crypto_skcipher_ctx(tfm);
 }
 
 static inline struct chcr_context *h_ctx(struct crypto_ahash *tfm)
@@ -285,7 +285,7 @@ struct chcr_ahash_req_ctx {
 	u8 bfr2[CHCR_HASH_MAX_BLOCK_SIZE_128];
 };
 
-struct chcr_blkcipher_req_ctx {
+struct chcr_skcipher_req_ctx {
 	struct sk_buff *skb;
 	struct scatterlist *dstsg;
 	unsigned int processed;
@@ -302,7 +302,7 @@ struct chcr_alg_template {
 	u32 type;
 	u32 is_registered;
 	union {
-		struct crypto_alg crypto;
+		struct skcipher_alg skcipher;
 		struct ahash_alg hash;
 		struct aead_alg aead;
 	} alg;
@@ -321,12 +321,12 @@ void chcr_add_aead_dst_ent(struct aead_request *req,
 			   struct cpl_rx_phys_dsgl *phys_cpl,
 			   unsigned short qid);
 void chcr_add_aead_src_ent(struct aead_request *req, struct ulptx_sgl *ulptx);
-void chcr_add_cipher_src_ent(struct ablkcipher_request *req,
+void chcr_add_cipher_src_ent(struct skcipher_request *req,
 			     void *ulptx,
 			     struct  cipher_wr_param *wrparam);
-int chcr_cipher_dma_map(struct device *dev, struct ablkcipher_request *req);
-void chcr_cipher_dma_unmap(struct device *dev, struct ablkcipher_request *req);
-void chcr_add_cipher_dst_ent(struct ablkcipher_request *req,
+int chcr_cipher_dma_map(struct device *dev, struct skcipher_request *req);
+void chcr_cipher_dma_unmap(struct device *dev, struct skcipher_request *req);
+void chcr_add_cipher_dst_ent(struct skcipher_request *req,
 			     struct cpl_rx_phys_dsgl *phys_cpl,
 			     struct  cipher_wr_param *wrparam,
 			     unsigned short qid);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
