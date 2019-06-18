Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BCC4A064
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 14:10:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ITzEpTYb9B8c4/Lw5ymellfBJaIjme1i1SnwxIEft7k=; b=i/vbjBPAMc/D3k
	FgxJHM3pS48/QGmPS9dXXPvGdiQOCGiRct1Kwk6UUu/zW9S2J3gIfP/2kDdEqTc5d+49RqblJobZy
	1Q/wmIICupLVmMzRQ31uaV+ta2unqJi3rupwSsL34IgjeD3LX/GCjdyIDZD1j5lJmqUhfCbcCOTfx
	vUw/Nses+4NCu7PE/c6o3nEo/roPH+pC6lsY2TTQkL4584SwLGaX8wQOse+3cSRGCgdnehyEhGKE0
	4Ho9vCu6RMcpdCU9Nk21GOSBEaksOx741LjHye7zajcacqNszYQHDzIzJqfGGvGjeEQ8gsbIkrIWY
	EdXEAeJ2Y+ynkXO2pQRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdCwo-0005HS-Bo; Tue, 18 Jun 2019 12:10:46 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdCuk-0002sw-Jn
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 12:08:44 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5IC8O25077651;
 Tue, 18 Jun 2019 07:08:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560859704;
 bh=VsC3s4gKhKDhApUEmZP2ekNks9zqWKfU7WoBNB5XCpE=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Skl8UHUvI2TFmEIxikpuMDDHnBEjVEMF/phQ/+sB/AGLcfNcYw3ZC6AUF/XKuWyyG
 fIOBt92yV7u4sSbJCTmqvqQQ1K6koQed/VI2XlYGHtL/2annsm0t2IPW+O5dmsLitk
 /+fvV5UaYRMKNwQO//lG0ep9WNRjmLkJduXil5nA=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5IC8OFF118529
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 18 Jun 2019 07:08:24 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 18
 Jun 2019 07:08:24 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 18 Jun 2019 07:08:23 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5IC89Gc080327;
 Tue, 18 Jun 2019 07:08:21 -0500
From: Keerthy <j-keerthy@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>, <robh+dt@kernel.org>
Subject: [PATCH 04/10] crypto: sa2ul: Add aead support for hmac(sha1)cbc(aes)
 algorithm
Date: Tue, 18 Jun 2019 17:38:37 +0530
Message-ID: <20190618120843.18777-5-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190618120843.18777-1-j-keerthy@ti.com>
References: <20190618120843.18777-1-j-keerthy@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_050838_847837_DF5728A5 
X-CRM114-Status: GOOD (  18.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: nm@ti.com, devicetree@vger.kernel.org, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add aead support for hmac(sha1)cbc(aes) algorithm. Authenticated
encryption (AE) and authenticated encryption with associated data
(AEAD) is a form of encryption which simultaneously provides
confidentiality, integrity, and authenticity assurances on the data.

hmac(sha1) has a digest size of 20 bytes is used for authetication
and AES in CBC mode is used in conjunction for encryption/decryption.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 drivers/crypto/sa2ul.c | 402 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 402 insertions(+)

diff --git a/drivers/crypto/sa2ul.c b/drivers/crypto/sa2ul.c
index a17c1f66c5c1..1a1bd882e0d2 100644
--- a/drivers/crypto/sa2ul.c
+++ b/drivers/crypto/sa2ul.c
@@ -228,6 +228,49 @@ static void sa_swiz_128(u8 *in, u16 len)
 	}
 }
 
+/* Prepare the ipad and opad from key as per SHA algorithm step 1*/
+static void prepare_kiopad(u8 *k_ipad, u8 *k_opad, const u8 *key, u16 key_sz)
+{
+	int i;
+
+	for (i = 0; i < key_sz; i++) {
+		k_ipad[i] = key[i] ^ 0x36;
+		k_opad[i] = key[i] ^ 0x5c;
+	}
+
+	/* Instead of XOR with 0 */
+	for (; i < SHA_MESSAGE_BYTES; i++) {
+		k_ipad[i] = 0x36;
+		k_opad[i] = 0x5c;
+	}
+}
+
+/* Generate HMAC-SHA1 intermediate Hash */
+static
+void sa_hmac_sha1_get_pad(const u8 *key, u16 key_sz, u32 *ipad, u32 *opad)
+{
+	u32 ws[SHA_WORKSPACE_WORDS];
+	u8 k_ipad[SHA_MESSAGE_BYTES];
+	u8 k_opad[SHA_MESSAGE_BYTES];
+	int i;
+
+	prepare_kiopad(k_ipad, k_opad, key, key_sz);
+
+	/* SHA-1 on k_ipad */
+	sha_init(ipad);
+	sha_transform(ipad, k_ipad, ws);
+
+	for (i = 0; i < SHA_DIGEST_WORDS; i++)
+		ipad[i] = cpu_to_be32(ipad[i]);
+
+	/* SHA-1 on k_opad */
+	sha_init(opad);
+	sha_transform(opad, k_opad, ws);
+
+	for (i = 0; i < SHA_DIGEST_WORDS; i++)
+		opad[i] = cpu_to_be32(opad[i]);
+}
+
 /* Derive the inverse key used in AES-CBC decryption operation */
 static inline int sa_aes_inv_key(u8 *inv_key, const u8 *key, u16 key_sz)
 {
@@ -814,6 +857,45 @@ static void sa_aes_dma_in_callback(void *data)
 	ablkcipher_request_complete(req, 0);
 }
 
+static void sa_aead_dma_in_callback(void *data)
+{
+	struct sa_rx_data *rxd = (struct sa_rx_data *)data;
+	struct aead_request *req = (struct aead_request *)rxd->req;
+	struct crypto_aead *tfm = crypto_aead_reqtfm(req);
+	u32 *mdptr;
+	unsigned int start = req->assoclen + req->cryptlen;
+	unsigned int authsize = crypto_aead_authsize(tfm);
+	u8 auth_tag[SA_MAX_AUTH_TAG_SZ];
+	int i, sglen, err = 0;
+	size_t pl, ml;
+
+	mdptr = (u32 *)dmaengine_desc_get_metadata_ptr(rxd->tx_in, &pl, &ml);
+	for (i = 0; i < (authsize / 4); i++)
+		mdptr[i + 4] = htonl(mdptr[i + 4]);
+
+	if (rxd->enc) {
+		scatterwalk_map_and_copy((void *)&mdptr[4], req->dst,
+					 start, crypto_aead_authsize(tfm), 1);
+	} else {
+		start -= authsize;
+		scatterwalk_map_and_copy(auth_tag, req->src,
+					 start, crypto_aead_authsize(tfm), 0);
+
+		err = memcmp((void *)&mdptr[4],
+			     auth_tag, authsize) ? -EBADMSG : 0;
+	}
+
+	sglen = sg_nents_for_len(req->dst, req->cryptlen + authsize);
+	dma_unmap_sg(rxd->ddev, req->dst, sglen, DMA_FROM_DEVICE);
+
+	sglen =  sg_nents_for_len(req->src, req->assoclen + req->cryptlen);
+	dma_unmap_sg(rxd->ddev, req->src, sglen, DMA_TO_DEVICE);
+
+	aead_request_complete(req, err);
+
+	kfree(rxd);
+}
+
 static void
 sa_prepare_tx_desc(u32 *mdptr, u32 pslen, u32 *psdata, u32 epiblen, u32 *epib)
 {
@@ -965,6 +1047,300 @@ static int sa_aes_cbc_decrypt(struct ablkcipher_request *req)
 	return sa_aes_run(req, req->info, 0);
 }
 
+static int sa_init_tfm(struct crypto_tfm *tfm)
+{
+	struct crypto_alg *alg = tfm->__crt_alg;
+	struct sa_tfm_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct sa_crypto_data *data = dev_get_drvdata(sa_k3_dev);
+	int ret;
+
+	if ((alg->cra_flags & CRYPTO_ALG_TYPE_MASK) == CRYPTO_ALG_TYPE_AEAD) {
+		memset(ctx, 0, sizeof(*ctx));
+		ctx->dev_data = data;
+
+		ret = sa_init_ctx_info(&ctx->enc, data);
+		if (ret)
+			return ret;
+		ret = sa_init_ctx_info(&ctx->dec, data);
+		if (ret) {
+			sa_free_ctx_info(&ctx->enc, data);
+			return ret;
+		}
+	}
+
+	dev_dbg(sa_k3_dev, "%s(0x%p) sc-ids(0x%x(0x%pad), 0x%x(0x%pad))\n",
+		__func__, tfm, ctx->enc.sc_id, &ctx->enc.sc_phys,
+		ctx->dec.sc_id, &ctx->dec.sc_phys);
+	return 0;
+}
+
+/* Algorithm init */
+static int sa_cra_init_aead(struct crypto_aead *tfm)
+{
+	return sa_init_tfm(crypto_aead_tfm(tfm));
+}
+
+/* Algorithm context teardown */
+static void sa_exit_tfm(struct crypto_tfm *tfm)
+{
+	struct crypto_alg *alg = tfm->__crt_alg;
+	struct sa_tfm_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct sa_crypto_data *data = dev_get_drvdata(sa_k3_dev);
+
+	dev_dbg(sa_k3_dev, "%s(0x%p) sc-ids(0x%x(0x%pad), 0x%x(0x%pad))\n",
+		__func__, tfm, ctx->enc.sc_id, &ctx->enc.sc_phys,
+		ctx->dec.sc_id, &ctx->dec.sc_phys);
+
+	if ((alg->cra_flags & CRYPTO_ALG_TYPE_MASK)
+		== CRYPTO_ALG_TYPE_AEAD) {
+		sa_free_ctx_info(&ctx->enc, data);
+		sa_free_ctx_info(&ctx->dec, data);
+	}
+}
+
+static void sa_exit_tfm_aead(struct crypto_aead *tfm)
+{
+	return sa_exit_tfm(crypto_aead_tfm(tfm));
+}
+
+/* AEAD algorithm configuration interface function */
+static int sa_aead_setkey(struct crypto_aead *authenc,
+			  const u8 *key, unsigned int keylen,
+			  struct algo_data *ad)
+{
+	struct sa_tfm_ctx *ctx = crypto_aead_ctx(authenc);
+	struct crypto_authenc_keys keys;
+
+	const char *cra_name;
+	int cmdl_len;
+	struct sa_cmdl_cfg cfg;
+
+	if (crypto_authenc_extractkeys(&keys, key, keylen) != 0)
+		goto badkey;
+
+	cra_name = crypto_tfm_alg_name(crypto_aead_tfm(authenc));
+
+	memset(&cfg, 0, sizeof(cfg));
+	cfg.enc1st = 1;
+	cfg.aalg = ad->aalg_id;
+	cfg.enc_eng_id = ad->enc_eng.eng_id;
+	cfg.auth_eng_id = ad->auth_eng.eng_id;
+	cfg.iv_size = crypto_aead_ivsize(authenc);
+	cfg.akey = keys.authkey;
+	cfg.akey_len = keys.authkeylen;
+
+	/* Setup Encryption Security Context & Command label template */
+	if (sa_init_sc(&ctx->enc, keys.enckey, keys.enckeylen,
+		       keys.authkey, keys.authkeylen,
+		       ad, 1, &ctx->enc.epib[1], true))
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
+	/* Setup Decryption Security Context & Command label template */
+	if (sa_init_sc(&ctx->dec, keys.enckey, keys.enckeylen,
+		       keys.authkey, keys.authkeylen,
+		       ad, 0, &ctx->dec.epib[1], true))
+		goto badkey;
+
+	cfg.enc1st = 0;
+	cfg.enc_eng_id = ad->enc_eng.eng_id;
+	cmdl_len = sa_format_cmdl_gen(&cfg, (u8 *)ctx->dec.cmdl,
+				      &ctx->dec.cmdl_upd_info);
+
+	if (cmdl_len <= 0 || (cmdl_len > SA_MAX_CMDL_WORDS * sizeof(u32)))
+		goto badkey;
+
+	ctx->dec.cmdl_size = cmdl_len;
+
+	kfree(ad);
+
+	return 0;
+
+badkey:
+	dev_err(sa_k3_dev, "%s: badkey\n", __func__);
+	return -EINVAL;
+}
+
+static int sa_aead_cbc_sha1_setkey(struct crypto_aead *authenc,
+				   const u8 *key, unsigned int keylen)
+{
+	struct algo_data *ad = kzalloc(sizeof(*ad), GFP_KERNEL);
+	struct crypto_authenc_keys keys;
+	int ret = 0, key_idx;
+
+	ret = crypto_authenc_extractkeys(&keys, key, keylen);
+	if (ret)
+		return ret;
+
+	/* Convert the key size (16/24/32) to the key size index (0/1/2) */
+	key_idx = (keys.enckeylen >> 3) - 2;
+	ad->enc_eng.eng_id = SA_ENG_ID_EM1;
+	ad->enc_eng.sc_size = SA_CTX_ENC_TYPE1_SZ;
+	ad->auth_eng.eng_id = SA_ENG_ID_AM1;
+	ad->auth_eng.sc_size = SA_CTX_AUTH_TYPE2_SZ;
+	ad->mci_enc = mci_cbc_enc_array[key_idx];
+	ad->mci_dec = mci_cbc_dec_array[key_idx];
+	ad->inv_key = true;
+	ad->keyed_mac = true;
+	ad->ealg_id = SA_EALG_ID_AES_CBC;
+	ad->aalg_id = SA_AALG_ID_HMAC_SHA1;
+	ad->hash_size = SHA1_DIGEST_SIZE;
+	ad->auth_ctrl = 0x2;
+	ad->prep_iopad = sa_hmac_sha1_get_pad;
+
+	return sa_aead_setkey(authenc, key, keylen, ad);
+}
+
+static int sa_aead_run(struct aead_request *req, u8 *iv, int enc)
+{
+	struct crypto_aead *tfm = crypto_aead_reqtfm(req);
+	struct sa_tfm_ctx *ctx = crypto_aead_ctx(tfm);
+	struct sa_ctx_info *sa_ctx = enc ? &ctx->enc : &ctx->dec;
+	struct sa_rx_data *rxd;
+	struct dma_async_tx_descriptor *tx_in, *tx_out;
+	struct sa_crypto_data *pdata = dev_get_drvdata(sa_k3_dev);
+	struct sa_dma_req_ctx req_ctx;
+	u8 enc_offset;
+	int sg_nents, dst_nents;
+	int psdata_offset;
+	u8 auth_offset = 0;
+	u8 *auth_iv = NULL;
+	u8 *aad = NULL;
+	u8 aad_len = 0;
+	u16 enc_len;
+	u16 auth_len = 0;
+	u32 *mdptr;
+	u32 req_type;
+	struct dma_chan *dma_rx;
+	gfp_t flags;
+	size_t pl, ml;
+	struct device *ddev;
+
+	flags = req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP ?
+			GFP_KERNEL : GFP_ATOMIC;
+
+	if (enc) {
+		iv = (u8 *)(req->iv);
+		enc_offset = req->assoclen;
+		enc_len = req->cryptlen;
+		auth_len = req->assoclen + req->cryptlen;
+	} else {
+		enc_offset = req->assoclen;
+		enc_len = req->cryptlen - crypto_aead_authsize(tfm);
+		auth_len = req->assoclen + req->cryptlen -
+			crypto_aead_authsize(tfm);
+	}
+
+	if (enc_len >= 256)
+		dma_rx = pdata->dma_rx2;
+	else
+		dma_rx = pdata->dma_rx1;
+
+	ddev = dma_rx->device->dev;
+	/* Allocate descriptor & submit packet */
+	sg_nents = sg_nents_for_len(req->src, enc_len + req->assoclen);
+	dst_nents = sg_nents_for_len(req->dst, enc_len +
+				     crypto_aead_authsize(tfm));
+
+	memcpy(req_ctx.cmdl, sa_ctx->cmdl, sa_ctx->cmdl_size);
+	/* Update Command Label */
+	sa_update_cmdl(sa_k3_dev, enc_offset, enc_len,
+		       iv, auth_offset, auth_len,
+		       auth_iv, aad_len, aad,
+		       &sa_ctx->cmdl_upd_info, req_ctx.cmdl);
+
+	/*
+	 * Last 2 words in PSDATA will have the crypto alg type &
+	 * crypto request pointer
+	 */
+	req_type = CRYPTO_ALG_TYPE_AEAD;
+	if (enc)
+		req_type |= (SA_REQ_SUBTYPE_ENC << SA_REQ_SUBTYPE_SHIFT);
+	else
+		req_type |= (SA_REQ_SUBTYPE_DEC << SA_REQ_SUBTYPE_SHIFT);
+
+	psdata_offset = sa_ctx->cmdl_size / sizeof(u32);
+
+	/* map the packet */
+	req_ctx.src = req->src;
+	req_ctx.src_nents = dma_map_sg(ddev, req->src,
+				       sg_nents, DMA_TO_DEVICE);
+	dst_nents = dma_map_sg(ddev, req->dst,
+			       dst_nents, DMA_FROM_DEVICE);
+
+	if (unlikely(req_ctx.src_nents != sg_nents)) {
+		dev_warn_ratelimited(sa_k3_dev, "failed to map tx pkt\n");
+		return -EIO;
+	}
+
+	req_ctx.dev_data = pdata;
+	req_ctx.pkt = true;
+
+	dma_sync_sg_for_device(pdata->dev, req->src, req_ctx.src_nents,
+			       DMA_TO_DEVICE);
+
+	tx_in = dmaengine_prep_slave_sg(dma_rx, req->dst, dst_nents,
+					DMA_DEV_TO_MEM,
+					DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
+	if (!tx_in) {
+		dev_err(pdata->dev, "IN prep_slave_sg() failed\n");
+		return -EINVAL;
+	}
+
+	rxd = kzalloc(sizeof(*rxd), GFP_KERNEL);
+	rxd->req = (void *)req;
+	rxd->enc = enc;
+	rxd->tx_in = tx_in;
+	rxd->ddev = ddev;
+
+	/* IN */
+	tx_in->callback = sa_aead_dma_in_callback;
+	tx_in->callback_param = rxd;
+
+	tx_out = dmaengine_prep_slave_sg(pdata->dma_tx, req->src,
+					 req_ctx.src_nents, DMA_MEM_TO_DEV,
+					 DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
+	if (!tx_out) {
+		dev_err(pdata->dev, "OUT prep_slave_sg() failed\n");
+		return -EINVAL;
+	}
+
+	mdptr = (u32 *)dmaengine_desc_get_metadata_ptr(tx_out, &pl, &ml);
+
+	sa_prepare_tx_desc(mdptr, (sa_ctx->cmdl_size + (SA_PSDATA_CTX_WORDS *
+			   sizeof(u32))), req_ctx.cmdl,
+			   sizeof(sa_ctx->epib), sa_ctx->epib);
+
+	ml = sa_ctx->cmdl_size + (SA_PSDATA_CTX_WORDS * sizeof(u32));
+	dmaengine_desc_set_metadata_len(tx_out, 52);
+
+	dmaengine_submit(tx_out);
+	dmaengine_submit(tx_in);
+
+	dma_async_issue_pending(dma_rx);
+	dma_async_issue_pending(pdata->dma_tx);
+	return -EINPROGRESS;
+}
+
+/* AEAD algorithm encrypt interface function */
+static int sa_aead_encrypt(struct aead_request *req)
+{
+	return sa_aead_run(req, req->iv, 1);
+}
+
+/* AEAD algorithm decrypt interface function */
+static int sa_aead_decrypt(struct aead_request *req)
+{
+	return sa_aead_run(req, req->iv, 0);
+}
+
 static struct sa_alg_tmpl sa_algs[] = {
 	{.type = CRYPTO_ALG_TYPE_ABLKCIPHER,
 	 .alg.crypto = {
@@ -1016,6 +1392,32 @@ static struct sa_alg_tmpl sa_algs[] = {
 			}
 		}
 	},
+	/* AEAD algorithms */
+	{.type	= CRYPTO_ALG_TYPE_AEAD,
+		.alg.aead = {
+				.base = {
+				.cra_name = "authenc(hmac(sha1),cbc(aes))",
+				.cra_driver_name =
+					"authenc(hmac(sha1),cbc(aes))-keystone-sa",
+				.cra_blocksize = AES_BLOCK_SIZE,
+				.cra_flags = CRYPTO_ALG_TYPE_AEAD |
+					CRYPTO_ALG_KERN_DRIVER_ONLY |
+					CRYPTO_ALG_ASYNC,
+				.cra_ctxsize = sizeof(struct sa_tfm_ctx),
+				.cra_module = THIS_MODULE,
+				.cra_alignmask = 0,
+				.cra_priority = 3000,
+			},
+			.ivsize = AES_BLOCK_SIZE,
+			.maxauthsize = SHA1_DIGEST_SIZE,
+
+			.init = sa_cra_init_aead,
+			.exit = sa_exit_tfm_aead,
+			.setkey = sa_aead_cbc_sha1_setkey,
+			.encrypt = sa_aead_encrypt,
+			.decrypt = sa_aead_decrypt,
+		}
+	},
 };
 
 /* Register the algorithms in crypto framework */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
