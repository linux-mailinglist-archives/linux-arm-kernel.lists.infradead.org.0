Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1711D1F8F32
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 09:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhSALsW1ErfjjXzPgQRy1jluVmubSHp4Eq+MeinxRdI=; b=JRcMGomwEdBvcw
	SwPTXwnN3sNw8O9rVaoVSwtdy2C54EmJSRngap7e6NDbxhJDjON7U1isVMwH252GHqSjKY/hLE4NM
	SjpXIZ1rH/DfvkBnJX9TBYRj8O5uwVfI6CFU6Nd2vFCxKOtzwRUzkphLDT0tKCqFzb4uDhCt3VKzW
	+sN1KIAFLMMZjcwQ0RfDs3cVQT4h579GAhc6lrGAiBP1Ykkye6xsJKptXuaE3CYmMeXj6cyv0XJ0D
	DD2HAB/fsh8xgEH0Mxkn639zKZJvms7VcyC/05YugdGiIwjshIHsgSyK8ND/e3S6Sxn1J090GgbFh
	x7Wn3sjQ+oEvHTiGBPkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjMN-0008AK-Se; Mon, 15 Jun 2020 07:16:47 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjKt-0006TF-5t
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 07:15:21 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05F7F6fr117357;
 Mon, 15 Jun 2020 02:15:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592205306;
 bh=uyTbbs8DNPmVaQfmOLco5ZqZWiGRH8llrQ3Oh8wYNoM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=XTCf0mxtFAZYETH6rGFPkjSL1XqoMUFO7J5YmSeR0Ysw6MRxSUf4KMOpUEbowdDm5
 FrA7nVd75wtRLyzLqpQFfar91abXfIbg7MaWjwu+wqaJAMXHPnHxq74V8Xj4sB3qq9
 MQLd07LEUua1ORjgKyoiBQ8/8BHMJeBPwVgJJJ5E=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05F7F63A079893
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 15 Jun 2020 02:15:06 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 15
 Jun 2020 02:15:06 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 15 Jun 2020 02:15:06 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05F7Exr9062159;
 Mon, 15 Jun 2020 02:15:05 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <linux-crypto@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCHv4 3/7] crypto: sa2ul: add sha1/sha256/sha512 support
Date: Mon, 15 Jun 2020 10:14:48 +0300
Message-ID: <20200615071452.25141-4-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200615071452.25141-1-t-kristo@ti.com>
References: <20200615071452.25141-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_001515_365424_ADFED344 
X-CRM114-Status: GOOD (  20.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.23.248 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: j-keerthy@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Keerthy <j-keerthy@ti.com>

Add support for sha1/sha256/sha512 sa2ul based hardware authentication.

Signed-off-by: Keerthy <j-keerthy@ti.com>
[t-kristo@ti.com: various bug fixes, major cleanups and refactoring of code]
Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/crypto/sa2ul.c | 582 ++++++++++++++++++++++++++++++++++++++++-
 drivers/crypto/sa2ul.h |  31 ++-
 2 files changed, 600 insertions(+), 13 deletions(-)

diff --git a/drivers/crypto/sa2ul.c b/drivers/crypto/sa2ul.c
index 67f3189d8e2c..80e7a2a3366b 100644
--- a/drivers/crypto/sa2ul.c
+++ b/drivers/crypto/sa2ul.c
@@ -18,8 +18,10 @@
 
 #include <crypto/aes.h>
 #include <crypto/des.h>
+#include <crypto/internal/hash.h>
 #include <crypto/internal/skcipher.h>
 #include <crypto/scatterwalk.h>
+#include <crypto/sha.h>
 
 #include "sa2ul.h"
 
@@ -69,20 +71,32 @@ static struct device *sa_k3_dev;
 
 /**
  * struct sa_cmdl_cfg - Command label configuration descriptor
+ * @aalg: authentication algorithm ID
  * @enc_eng_id: Encryption Engine ID supported by the SA hardware
+ * @auth_eng_id: Authentication Engine ID
  * @iv_size: Initialization Vector size
+ * @akey: Authentication key
+ * @akey_len: Authentication key length
  */
 struct sa_cmdl_cfg {
+	int aalg;
 	u8 enc_eng_id;
+	u8 auth_eng_id;
 	u8 iv_size;
+	const u8 *akey;
+	u16 akey_len;
 };
 
 /**
  * struct algo_data - Crypto algorithm specific data
  * @enc_eng: Encryption engine info structure
+ * @auth_eng: Authentication engine info structure
+ * @auth_ctrl: Authentication control word
+ * @hash_size: Size of digest
  * @iv_idx: iv index in psdata
  * @iv_out_size: iv out size
  * @ealg_id: Encryption Algorithm ID
+ * @aalg_id: Authentication algorithm ID
  * @mci_enc: Mode Control Instruction for Encryption algorithm
  * @mci_dec: Mode Control Instruction for Decryption
  * @inv_key: Whether the encryption algorithm demands key inversion
@@ -90,9 +104,13 @@ struct sa_cmdl_cfg {
  */
 struct algo_data {
 	struct sa_eng_info enc_eng;
+	struct sa_eng_info auth_eng;
+	u8 auth_ctrl;
+	u8 hash_size;
 	u8 iv_idx;
 	u8 iv_out_size;
 	u8 ealg_id;
+	u8 aalg_id;
 	u8 *mci_enc;
 	u8 *mci_dec;
 	bool inv_key;
@@ -109,6 +127,7 @@ struct sa_alg_tmpl {
 	u32 type;		/* CRYPTO_ALG_TYPE from <linux/crypto.h> */
 	union {
 		struct skcipher_alg skcipher;
+		struct ahash_alg ahash;
 	} alg;
 	bool registered;
 };
@@ -166,6 +185,9 @@ struct sa_req {
 	u8 enc_offset;
 	u16 enc_size;
 	u8 *enc_iv;
+	u8 auth_offset;
+	u16 auth_size;
+	u8 *auth_iv;
 	u32 type;
 	u32 *cmdl;
 	struct crypto_async_request *base;
@@ -354,6 +376,20 @@ static int sa_set_sc_enc(struct algo_data *ad, const u8 *key, u16 key_sz,
 	return 0;
 }
 
+/* Set Security context for the authentication engine */
+static void sa_set_sc_auth(struct algo_data *ad, const u8 *key, u16 key_sz,
+			   u8 *sc_buf)
+{
+	/* Set Authentication mode selector to hash processing */
+	sc_buf[0] = SA_HASH_PROCESSING;
+	/* Auth SW ctrl word: bit[6]=1 (upload computed hash to TLR section) */
+	sc_buf[1] = SA_UPLOAD_HASH_TO_TLR;
+	sc_buf[1] |= ad->auth_ctrl;
+
+	/* basic hash */
+	sc_buf[1] |= SA_BASIC_HASH;
+}
+
 static inline void sa_copy_iv(u32 *out, const u8 *iv, bool size16)
 {
 	int j;
@@ -369,8 +405,9 @@ static inline void sa_copy_iv(u32 *out, const u8 *iv, bool size16)
 static int sa_format_cmdl_gen(struct sa_cmdl_cfg *cfg, u8 *cmdl,
 			      struct sa_cmdl_upd_info *upd_info)
 {
-	u8 enc_offset = 0, total = 0;
+	u8 enc_offset = 0, auth_offset = 0, total = 0;
 	u8 enc_next_eng = SA_ENG_ID_OUTPORT2;
+	u8 auth_next_eng = SA_ENG_ID_OUTPORT2;
 	u32 *word_ptr = (u32 *)cmdl;
 	int i;
 
@@ -380,7 +417,10 @@ static int sa_format_cmdl_gen(struct sa_cmdl_cfg *cfg, u8 *cmdl,
 	/* Iniialize the command update structure */
 	memzero_explicit(upd_info, sizeof(*upd_info));
 
-	if (cfg->enc_eng_id != SA_ENG_ID_NONE)
+	if (cfg->enc_eng_id)
+		total = SA_CMDL_HEADER_SIZE_BYTES;
+
+	if (cfg->auth_eng_id)
 		total = SA_CMDL_HEADER_SIZE_BYTES;
 
 	if (cfg->iv_size)
@@ -388,7 +428,7 @@ static int sa_format_cmdl_gen(struct sa_cmdl_cfg *cfg, u8 *cmdl,
 
 	enc_next_eng = SA_ENG_ID_OUTPORT2;
 
-	if (cfg->enc_eng_id != SA_ENG_ID_NONE) {
+	if (cfg->enc_eng_id) {
 		upd_info->flags |= SA_CMDL_UPD_ENC;
 		upd_info->enc_size.index = enc_offset >> 2;
 		upd_info->enc_offset.index = upd_info->enc_size.index + 1;
@@ -415,6 +455,16 @@ static int sa_format_cmdl_gen(struct sa_cmdl_cfg *cfg, u8 *cmdl,
 		}
 	}
 
+	if (cfg->auth_eng_id) {
+		upd_info->flags |= SA_CMDL_UPD_AUTH;
+		upd_info->auth_size.index = auth_offset >> 2;
+		upd_info->auth_offset.index = upd_info->auth_size.index + 1;
+		cmdl[auth_offset + SA_CMDL_OFFSET_NESC] = auth_next_eng;
+		cmdl[auth_offset + SA_CMDL_OFFSET_LABEL_LEN] =
+			SA_CMDL_HEADER_SIZE_BYTES;
+		total += SA_CMDL_HEADER_SIZE_BYTES;
+	}
+
 	total = roundup(total, 8);
 
 	for (i = 0; i < total / 4; i++)
@@ -448,6 +498,27 @@ static inline void sa_update_cmdl(struct sa_req *req, u32 *cmdl,
 			}
 		}
 	}
+
+	if (likely(upd_info->flags & SA_CMDL_UPD_AUTH)) {
+		cmdl[upd_info->auth_size.index] &= ~SA_CMDL_PAYLOAD_LENGTH_MASK;
+		cmdl[upd_info->auth_size.index] |= req->auth_size;
+		cmdl[upd_info->auth_offset.index] &=
+			~SA_CMDL_SOP_BYPASS_LEN_MASK;
+		cmdl[upd_info->auth_offset.index] |=
+			((u32)req->auth_offset <<
+			 __ffs(SA_CMDL_SOP_BYPASS_LEN_MASK));
+		if (upd_info->flags & SA_CMDL_UPD_AUTH_IV) {
+			sa_copy_iv(&cmdl[upd_info->auth_iv.index],
+				   req->auth_iv,
+				   (upd_info->auth_iv.size > 8));
+		}
+		if (upd_info->flags & SA_CMDL_UPD_AUX_KEY) {
+			int offset = (req->auth_size & 0xF) ? 4 : 0;
+
+			memcpy(&cmdl[upd_info->aux_key_info.index],
+			       &upd_info->aux_key[offset], 16);
+		}
+	}
 }
 
 /* Format SWINFO words to be sent to SA */
@@ -481,21 +552,34 @@ static void sa_dump_sc(u8 *buf, dma_addr_t dma_addr)
 
 static
 int sa_init_sc(struct sa_ctx_info *ctx, const u8 *enc_key,
-	       u16 enc_key_sz, struct algo_data *ad, u8 enc, u32 *swinfo)
+	       u16 enc_key_sz, const u8 *auth_key, u16 auth_key_sz,
+	       struct algo_data *ad, u8 enc, u32 *swinfo)
 {
 	int enc_sc_offset = 0;
+	int auth_sc_offset = 0;
 	u8 *sc_buf = ctx->sc;
 	u16 sc_id = ctx->sc_id;
 	u8 first_engine;
 
 	memzero_explicit(sc_buf, SA_CTX_MAX_SZ);
 
-	enc_sc_offset = SA_CTX_PHP_PE_CTX_SZ;
+	if (ad->enc_eng.eng_id) {
+		enc_sc_offset = SA_CTX_PHP_PE_CTX_SZ;
+		first_engine = ad->enc_eng.eng_id;
+		sc_buf[1] = SA_SCCTL_FE_ENC;
+		ad->hash_size = ad->iv_out_size;
+	} else {
+		enc_sc_offset = SA_CTX_PHP_PE_CTX_SZ;
+		auth_sc_offset = enc_sc_offset + ad->enc_eng.sc_size;
+		first_engine = ad->auth_eng.eng_id;
+		sc_buf[1] = SA_SCCTL_FE_AUTH_ENC;
+		if (!ad->hash_size)
+			return -EINVAL;
+		ad->hash_size = roundup(ad->hash_size, 8);
+	}
 
 	/* SCCTL Owner info: 0=host, 1=CP_ACE */
 	sc_buf[SA_CTX_SCCTL_OWNER_OFFSET] = 0;
-	/* SCCTL F/E control */
-	sc_buf[1] = SA_SCCTL_FE_ENC;
 	memcpy(&sc_buf[2], &sc_id, 2);
 	sc_buf[4] = 0x0;
 	sc_buf[5] = PRIV_ID;
@@ -509,16 +593,19 @@ int sa_init_sc(struct sa_ctx_info *ctx, const u8 *enc_key,
 			return -EINVAL;
 	}
 
+	/* Prepare context for authentication engine */
+	if (ad->auth_eng.sc_size)
+		sa_set_sc_auth(ad, auth_key, auth_key_sz,
+			       &sc_buf[auth_sc_offset]);
+
 	/* Set the ownership of context to CP_ACE */
 	sc_buf[SA_CTX_SCCTL_OWNER_OFFSET] = 0x80;
 
 	/* swizzle the security context */
 	sa_swiz_128(sc_buf, SA_CTX_MAX_SZ);
-	/* Setup SWINFO */
-	first_engine = ad->enc_eng.eng_id;
 
 	sa_set_swinfo(first_engine, ctx->sc_id, ctx->sc_phys, 1, 0,
-		      SA_SW_INFO_FLAG_EVICT, ad->iv_out_size, swinfo);
+		      SA_SW_INFO_FLAG_EVICT, ad->hash_size, swinfo);
 
 	sa_dump_sc(sc_buf, ctx->sc_phys);
 
@@ -656,7 +743,8 @@ static int sa_cipher_setkey(struct crypto_skcipher *tfm, const u8 *key,
 		return ret;
 
 	/* Setup Encryption Security Context & Command label template */
-	if (sa_init_sc(&ctx->enc, key, keylen, ad, 1, &ctx->enc.epib[1]))
+	if (sa_init_sc(&ctx->enc, key, keylen, NULL, 0, ad, 1,
+		       &ctx->enc.epib[1]))
 		goto badkey;
 
 	cmdl_len = sa_format_cmdl_gen(&cfg,
@@ -668,7 +756,8 @@ static int sa_cipher_setkey(struct crypto_skcipher *tfm, const u8 *key,
 	ctx->enc.cmdl_size = cmdl_len;
 
 	/* Setup Decryption Security Context & Command label template */
-	if (sa_init_sc(&ctx->dec, key, keylen, ad, 0, &ctx->dec.epib[1]))
+	if (sa_init_sc(&ctx->dec, key, keylen, NULL, 0, ad, 0,
+		       &ctx->dec.epib[1]))
 		goto badkey;
 
 	cfg.enc_eng_id = ad->enc_eng.eng_id;
@@ -1061,6 +1150,386 @@ static int sa_decrypt(struct skcipher_request *req)
 	return sa_cipher_run(req, req->iv, 0);
 }
 
+static void sa_sha_cleanup_cache_data(struct sa_sha_req_ctx *ctx)
+{
+	struct scatterlist *sg;
+
+	if (!ctx->sg_next)
+		return;
+
+	while (ctx->src) {
+		sg = ctx->src;
+		ctx->src = sg_next(ctx->src);
+		free_pages((u64)sg_virt(sg), get_order(sg->length));
+		kfree(sg);
+	}
+}
+
+static void sa_sha_dma_in_callback(void *data)
+{
+	struct sa_rx_data *rxd = (struct sa_rx_data *)data;
+	struct ahash_request *req;
+	struct crypto_ahash *tfm;
+	unsigned int authsize;
+	struct sa_sha_req_ctx *rctx;
+	int i, sg_nents;
+	size_t ml, pl;
+	u32 *mdptr, *result;
+
+	req = container_of(rxd->req, struct ahash_request, base);
+	tfm = crypto_ahash_reqtfm(req);
+	authsize = crypto_ahash_digestsize(tfm);
+	rctx = ahash_request_ctx(req);
+
+	mdptr = (u32 *)dmaengine_desc_get_metadata_ptr(rxd->tx_in, &pl, &ml);
+	result = (u32 *)req->result;
+
+	for (i = 0; i < (authsize / 4); i++)
+		result[i] = htonl(mdptr[i + 4]);
+
+	sg_nents = sg_nents_for_len(req->src, req->nbytes);
+	dma_unmap_sg(rxd->ddev, req->src, sg_nents, DMA_FROM_DEVICE);
+
+	kfree(rxd->split_src_sg);
+
+	kfree(rxd);
+
+	sa_sha_cleanup_cache_data(rctx);
+
+	ahash_request_complete(req, 0);
+}
+
+static int zero_message_process(struct ahash_request *req)
+{
+	struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
+	int sa_digest_size = crypto_ahash_digestsize(tfm);
+
+	switch (sa_digest_size) {
+	case SHA1_DIGEST_SIZE:
+		memcpy(req->result, sha1_zero_message_hash, sa_digest_size);
+		break;
+	case SHA256_DIGEST_SIZE:
+		memcpy(req->result, sha256_zero_message_hash, sa_digest_size);
+		break;
+	case SHA512_DIGEST_SIZE:
+		memcpy(req->result, sha512_zero_message_hash, sa_digest_size);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int sa_sha_run(struct ahash_request *req)
+{
+	struct sa_tfm_ctx *ctx = crypto_ahash_ctx(crypto_ahash_reqtfm(req));
+	struct sa_sha_req_ctx *rctx = ahash_request_ctx(req);
+	int ret;
+	struct sa_req sa_req = { 0 };
+	size_t auth_len;
+
+	if (!rctx->src) {
+		rctx->src = req->src;
+		rctx->len = req->nbytes;
+	}
+
+	auth_len = rctx->len;
+
+	if (!auth_len)
+		return zero_message_process(req);
+
+	if (auth_len > SA_MAX_DATA_SZ ||
+	    (auth_len >= SA_UNSAFE_DATA_SZ_MIN &&
+	     auth_len <= SA_UNSAFE_DATA_SZ_MAX)) {
+		struct crypto_wait wait;
+		struct ahash_request *subreq;
+
+		crypto_init_wait(&wait);
+
+		subreq = ahash_request_alloc(ctx->fallback.ahash, GFP_KERNEL);
+		ahash_request_set_tfm(subreq, ctx->fallback.ahash);
+		subreq->base.flags = req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP;
+		subreq->nbytes = auth_len;
+		subreq->src = rctx->src;
+		subreq->result = req->result;
+
+		ahash_request_set_callback(subreq, CRYPTO_TFM_REQ_MAY_BACKLOG,
+					   crypto_req_done, &wait);
+
+		ret = crypto_ahash_digest(subreq);
+		ret |= crypto_wait_req(ret, &wait);
+
+		ahash_request_free(subreq);
+
+		sa_sha_cleanup_cache_data(rctx);
+
+		ahash_request_complete(req, ret);
+
+		return ret;
+	}
+
+	sa_req.size = auth_len;
+	sa_req.auth_size = auth_len;
+	sa_req.src = rctx->src;
+	sa_req.dst = rctx->src;
+	sa_req.enc = true;
+	sa_req.type = CRYPTO_ALG_TYPE_AHASH;
+	sa_req.callback = sa_sha_dma_in_callback;
+	sa_req.mdata_size = 28;
+	sa_req.ctx = ctx;
+	sa_req.base = &req->base;
+
+	return sa_run(&sa_req);
+}
+
+static int sa_sha_setup(struct sa_tfm_ctx *ctx, struct  algo_data *ad)
+{
+	int bs = crypto_shash_blocksize(ctx->shash);
+	int cmdl_len;
+	struct sa_cmdl_cfg cfg;
+
+	ad->enc_eng.sc_size = SA_CTX_ENC_TYPE1_SZ;
+	ad->auth_eng.eng_id = SA_ENG_ID_AM1;
+	ad->auth_eng.sc_size = SA_CTX_AUTH_TYPE2_SZ;
+
+	memset(ctx->authkey, 0, bs);
+	memset(&cfg, 0, sizeof(cfg));
+	cfg.aalg = ad->aalg_id;
+	cfg.enc_eng_id = ad->enc_eng.eng_id;
+	cfg.auth_eng_id = ad->auth_eng.eng_id;
+	cfg.iv_size = 0;
+	cfg.akey = NULL;
+	cfg.akey_len = 0;
+
+	/* Setup Encryption Security Context & Command label template */
+	if (sa_init_sc(&ctx->enc, NULL, 0, NULL, 0, ad, 0,
+		       &ctx->enc.epib[1]))
+		goto badkey;
+
+	cmdl_len = sa_format_cmdl_gen(&cfg,
+				      (u8 *)ctx->enc.cmdl,
+				      &ctx->enc.cmdl_upd_info);
+	if (cmdl_len <= 0 || (cmdl_len > SA_MAX_CMDL_WORDS * sizeof(u32)))
+		goto badkey;
+
+	ctx->enc.cmdl_size = cmdl_len;
+
+	return 0;
+
+badkey:
+	dev_err(sa_k3_dev, "%s: badkey\n", __func__);
+	return -EINVAL;
+}
+
+static int sa_sha_cra_init_alg(struct crypto_tfm *tfm, const char *alg_base)
+{
+	struct sa_tfm_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct sa_crypto_data *data = dev_get_drvdata(sa_k3_dev);
+	int ret;
+
+	memset(ctx, 0, sizeof(*ctx));
+	ctx->dev_data = data;
+	ret = sa_init_ctx_info(&ctx->enc, data);
+	if (ret)
+		return ret;
+
+	if (alg_base) {
+		ctx->shash = crypto_alloc_shash(alg_base, 0,
+						CRYPTO_ALG_NEED_FALLBACK);
+		if (IS_ERR(ctx->shash)) {
+			dev_err(sa_k3_dev, "base driver %s couldn't be loaded\n",
+				alg_base);
+			return PTR_ERR(ctx->shash);
+		}
+		/* for fallback */
+		ctx->fallback.ahash =
+			crypto_alloc_ahash(alg_base, 0,
+					   CRYPTO_ALG_NEED_FALLBACK);
+		if (IS_ERR(ctx->fallback.ahash)) {
+			dev_err(ctx->dev_data->dev,
+				"Could not load fallback driver\n");
+			return PTR_ERR(ctx->fallback.ahash);
+		}
+	}
+
+	dev_dbg(sa_k3_dev, "%s(0x%p) sc-ids(0x%x(0x%pad), 0x%x(0x%pad))\n",
+		__func__, tfm, ctx->enc.sc_id, &ctx->enc.sc_phys,
+		ctx->dec.sc_id, &ctx->dec.sc_phys);
+
+	crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
+				 sizeof(struct sa_sha_req_ctx));
+
+	return 0;
+}
+
+static int sa_sha_digest(struct ahash_request *req)
+{
+	struct sa_sha_req_ctx *rctx = ahash_request_ctx(req);
+
+	memzero_explicit(rctx, sizeof(*rctx));
+	return sa_sha_run(req);
+}
+
+static int sa_sha_init(struct ahash_request *req)
+{
+	struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
+	struct sa_sha_req_ctx *rctx = ahash_request_ctx(req);
+
+	dev_dbg(sa_k3_dev, "init: digest size: %d, rctx=%llx\n",
+		crypto_ahash_digestsize(tfm), (u64)rctx);
+
+	memzero_explicit(rctx, sizeof(*rctx));
+
+	return 0;
+}
+
+static int sa_sha_update(struct ahash_request *req)
+{
+	struct sa_sha_req_ctx *rctx = ahash_request_ctx(req);
+	struct scatterlist *sg;
+	void *buf;
+	int pages;
+	struct page *pg;
+
+	if (!req->nbytes)
+		return 0;
+
+	if (rctx->buf_free >= req->nbytes) {
+		pg = sg_page(rctx->sg_next);
+		buf = kmap_atomic(pg);
+		scatterwalk_map_and_copy(buf + rctx->offset, req->src, 0,
+					 req->nbytes, 0);
+		kunmap_atomic(buf);
+		rctx->buf_free -= req->nbytes;
+		rctx->sg_next->length += req->nbytes;
+		rctx->offset += req->nbytes;
+	} else {
+		pages = get_order(req->nbytes);
+		buf = (void *)__get_free_pages(GFP_ATOMIC, pages);
+		if (!buf)
+			return -ENOMEM;
+
+		sg = kzalloc(sizeof(*sg) * 2, GFP_KERNEL);
+		if (!sg)
+			return -ENOMEM;
+
+		sg_init_table(sg, 1);
+		sg_set_buf(sg, buf, req->nbytes);
+		scatterwalk_map_and_copy(buf, req->src, 0, req->nbytes, 0);
+
+		rctx->buf_free = (PAGE_SIZE << pages) - req->nbytes;
+
+		if (rctx->sg_next) {
+			sg_unmark_end(rctx->sg_next);
+			sg_chain(rctx->sg_next, 2, sg);
+		} else {
+			rctx->src = sg;
+		}
+
+		rctx->sg_next = sg;
+		rctx->src_nents++;
+
+		rctx->offset = req->nbytes;
+	}
+
+	rctx->len += req->nbytes;
+
+	return 0;
+}
+
+static int sa_sha_final(struct ahash_request *req)
+{
+	return sa_sha_run(req);
+}
+
+static int sa_sha_finup(struct ahash_request *req)
+{
+	sa_sha_update(req);
+
+	return sa_sha_run(req);
+}
+
+static int sa_sha_import(struct ahash_request *req, const void *in)
+{
+	struct sa_sha_req_ctx *rctx = ahash_request_ctx(req);
+
+	memcpy(rctx, in, sizeof(*rctx));
+	return 0;
+}
+
+static int sa_sha_export(struct ahash_request *req, void *out)
+{
+	struct sa_sha_req_ctx *rctx = ahash_request_ctx(req);
+
+	memcpy(out, rctx, sizeof(*rctx));
+	return 0;
+}
+
+static int sa_sha1_cra_init(struct crypto_tfm *tfm)
+{
+	struct algo_data ad = { 0 };
+	struct sa_tfm_ctx *ctx = crypto_tfm_ctx(tfm);
+
+	sa_sha_cra_init_alg(tfm, "sha1");
+
+	ad.aalg_id = SA_AALG_ID_SHA1;
+	ad.hash_size = SHA1_DIGEST_SIZE;
+	ad.auth_ctrl = SA_AUTH_SW_CTRL_SHA1;
+
+	sa_sha_setup(ctx, &ad);
+
+	return 0;
+}
+
+static int sa_sha256_cra_init(struct crypto_tfm *tfm)
+{
+	struct algo_data ad = { 0 };
+	struct sa_tfm_ctx *ctx = crypto_tfm_ctx(tfm);
+
+	sa_sha_cra_init_alg(tfm, "sha256");
+
+	ad.aalg_id = SA_AALG_ID_SHA2_256;
+	ad.hash_size = SHA256_DIGEST_SIZE;
+	ad.auth_ctrl = SA_AUTH_SW_CTRL_SHA256;
+
+	sa_sha_setup(ctx, &ad);
+
+	return 0;
+}
+
+static int sa_sha512_cra_init(struct crypto_tfm *tfm)
+{
+	struct algo_data ad = { 0 };
+	struct sa_tfm_ctx *ctx = crypto_tfm_ctx(tfm);
+
+	sa_sha_cra_init_alg(tfm, "sha512");
+
+	ad.aalg_id = SA_AALG_ID_SHA2_512;
+	ad.hash_size = SHA512_DIGEST_SIZE;
+	ad.auth_ctrl = SA_AUTH_SW_CTRL_SHA512;
+
+	sa_sha_setup(ctx, &ad);
+
+	return 0;
+}
+
+static void sa_sha_cra_exit(struct crypto_tfm *tfm)
+{
+	struct sa_tfm_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct sa_crypto_data *data = dev_get_drvdata(sa_k3_dev);
+
+	dev_dbg(sa_k3_dev, "%s(0x%p) sc-ids(0x%x(0x%pad), 0x%x(0x%pad))\n",
+		__func__, tfm, ctx->enc.sc_id, &ctx->enc.sc_phys,
+		ctx->dec.sc_id, &ctx->dec.sc_phys);
+
+	if (crypto_tfm_alg_type(tfm) == CRYPTO_ALG_TYPE_AHASH)
+		sa_free_ctx_info(&ctx->enc, data);
+
+	crypto_free_shash(ctx->shash);
+	crypto_free_ahash(ctx->fallback.ahash);
+}
+
 static struct sa_alg_tmpl sa_algs[] = {
 	{
 		.type = CRYPTO_ALG_TYPE_SKCIPHER,
@@ -1152,6 +1621,90 @@ static struct sa_alg_tmpl sa_algs[] = {
 			.decrypt		= sa_decrypt,
 		}
 	},
+	{
+		.type = CRYPTO_ALG_TYPE_AHASH,
+		.alg.ahash = {
+			.halg.base = {
+				.cra_name	= "sha1",
+				.cra_driver_name	= "sha1-sa2ul",
+				.cra_priority	= 400,
+				.cra_flags	= CRYPTO_ALG_TYPE_AHASH |
+						  CRYPTO_ALG_ASYNC |
+						  CRYPTO_ALG_KERN_DRIVER_ONLY |
+						  CRYPTO_ALG_NEED_FALLBACK,
+				.cra_blocksize	= SHA1_BLOCK_SIZE,
+				.cra_ctxsize	= sizeof(struct sa_tfm_ctx),
+				.cra_module	= THIS_MODULE,
+				.cra_init	= sa_sha1_cra_init,
+				.cra_exit	= sa_sha_cra_exit,
+			},
+			.halg.digestsize	= SHA1_DIGEST_SIZE,
+			.halg.statesize		= sizeof(struct sa_sha_req_ctx),
+			.init			= sa_sha_init,
+			.update			= sa_sha_update,
+			.final			= sa_sha_final,
+			.finup			= sa_sha_finup,
+			.digest			= sa_sha_digest,
+			.export			= sa_sha_export,
+			.import			= sa_sha_import,
+		},
+	},
+	{
+		.type = CRYPTO_ALG_TYPE_AHASH,
+		.alg.ahash = {
+			.halg.base = {
+				.cra_name	= "sha256",
+				.cra_driver_name	= "sha256-sa2ul",
+				.cra_priority	= 400,
+				.cra_flags	= CRYPTO_ALG_TYPE_AHASH |
+						  CRYPTO_ALG_ASYNC |
+						  CRYPTO_ALG_KERN_DRIVER_ONLY |
+						  CRYPTO_ALG_NEED_FALLBACK,
+				.cra_blocksize	= SHA256_BLOCK_SIZE,
+				.cra_ctxsize	= sizeof(struct sa_tfm_ctx),
+				.cra_module	= THIS_MODULE,
+				.cra_init	= sa_sha256_cra_init,
+				.cra_exit	= sa_sha_cra_exit,
+			},
+			.halg.digestsize	= SHA256_DIGEST_SIZE,
+			.halg.statesize		= sizeof(struct sa_sha_req_ctx),
+			.init			= sa_sha_init,
+			.update			= sa_sha_update,
+			.final			= sa_sha_final,
+			.finup			= sa_sha_finup,
+			.digest			= sa_sha_digest,
+			.export			= sa_sha_export,
+			.import			= sa_sha_import,
+		},
+	},
+	{
+		.type = CRYPTO_ALG_TYPE_AHASH,
+		.alg.ahash = {
+			.halg.base = {
+				.cra_name	= "sha512",
+				.cra_driver_name	= "sha512-sa2ul",
+				.cra_priority	= 400,
+				.cra_flags	= CRYPTO_ALG_TYPE_AHASH |
+						  CRYPTO_ALG_ASYNC |
+						  CRYPTO_ALG_KERN_DRIVER_ONLY |
+						  CRYPTO_ALG_NEED_FALLBACK,
+				.cra_blocksize	= SHA512_BLOCK_SIZE,
+				.cra_ctxsize	= sizeof(struct sa_tfm_ctx),
+				.cra_module	= THIS_MODULE,
+				.cra_init	= sa_sha512_cra_init,
+				.cra_exit	= sa_sha_cra_exit,
+			},
+			.halg.digestsize	= SHA512_DIGEST_SIZE,
+			.halg.statesize		= sizeof(struct sa_sha_req_ctx),
+			.init			= sa_sha_init,
+			.update			= sa_sha_update,
+			.final			= sa_sha_final,
+			.finup			= sa_sha_finup,
+			.digest			= sa_sha_digest,
+			.export			= sa_sha_export,
+			.import			= sa_sha_import,
+		},
+	},
 };
 
 /* Register the algorithms in crypto framework */
@@ -1166,6 +1719,9 @@ void sa_register_algos(const struct device *dev)
 		if (type == CRYPTO_ALG_TYPE_SKCIPHER) {
 			alg_name = sa_algs[i].alg.skcipher.base.cra_name;
 			err = crypto_register_skcipher(&sa_algs[i].alg.skcipher);
+		} else if (type == CRYPTO_ALG_TYPE_AHASH) {
+			alg_name = sa_algs[i].alg.ahash.halg.base.cra_name;
+			err = crypto_register_ahash(&sa_algs[i].alg.ahash);
 		} else {
 			dev_err(dev,
 				"un-supported crypto algorithm (%d)",
@@ -1192,6 +1748,8 @@ void sa_unregister_algos(const struct device *dev)
 			continue;
 		if (type == CRYPTO_ALG_TYPE_SKCIPHER)
 			crypto_unregister_skcipher(&sa_algs[i].alg.skcipher);
+		else if (type == CRYPTO_ALG_TYPE_AHASH)
+			crypto_unregister_ahash(&sa_algs[i].alg.ahash);
 
 		sa_algs[i].registered = false;
 	}
diff --git a/drivers/crypto/sa2ul.h b/drivers/crypto/sa2ul.h
index 45ba86cb5d11..733b00bc6e0f 100644
--- a/drivers/crypto/sa2ul.h
+++ b/drivers/crypto/sa2ul.h
@@ -73,7 +73,6 @@ struct sa_tfm_ctx;
 #define SA_ENG_ID_AM1   4       /* Auth. engine with SHA1/MD5/SHA2 core */
 #define SA_ENG_ID_AM2   5       /*  Authentication engine for pass 2 */
 #define SA_ENG_ID_OUTPORT2 20   /*  Egress module 2  */
-#define SA_ENG_ID_NONE  0xff
 
 /*
  * Command Label Definitions
@@ -156,6 +155,13 @@ struct sa_tfm_ctx;
 #define SA_ALIGN_MASK		(sizeof(u32) - 1)
 #define SA_ALIGNED		__aligned(32)
 
+#define SA_AUTH_SW_CTRL_MD5	1
+#define SA_AUTH_SW_CTRL_SHA1	2
+#define SA_AUTH_SW_CTRL_SHA224	3
+#define SA_AUTH_SW_CTRL_SHA256	4
+#define SA_AUTH_SW_CTRL_SHA384	5
+#define SA_AUTH_SW_CTRL_SHA512	6
+
 /* SA2UL can only handle maximum data size of 64KB */
 #define SA_MAX_DATA_SZ		U16_MAX
 
@@ -297,15 +303,38 @@ struct sa_tfm_ctx {
 	struct sa_crypto_data *dev_data;
 	struct sa_ctx_info enc;
 	struct sa_ctx_info dec;
+	struct sa_ctx_info auth;
 	int keylen;
 	int iv_idx;
 	u32 key[AES_KEYSIZE_256 / sizeof(u32)];
+	u8 authkey[SHA512_BLOCK_SIZE];
+	struct crypto_shash	*shash;
 	/* for fallback */
 	union {
 		struct crypto_sync_skcipher	*skcipher;
+		struct crypto_ahash		*ahash;
 	} fallback;
 };
 
+/**
+ * struct sa_sha_req_ctx: Structure used for sha request
+ * @dev_data: struct sa_crypto_data pointer
+ * @cmdl: Complete command label with psdata and epib included
+ * @src: source payload scatterlist pointer
+ * @src_nents: Number of nodes in source scatterlist
+ */
+struct sa_sha_req_ctx {
+	struct sa_crypto_data	*dev_data;
+	u32			cmdl[SA_MAX_CMDL_WORDS + SA_PSDATA_CTX_WORDS];
+	struct scatterlist	*src;
+	unsigned int		src_nents;
+	u32			mode;
+	struct scatterlist	*sg_next;
+	int			len;
+	int			buf_free;
+	int			offset;
+};
+
 enum sa_submode {
 	SA_MODE_GEN = 0,
 	SA_MODE_CCM,
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
