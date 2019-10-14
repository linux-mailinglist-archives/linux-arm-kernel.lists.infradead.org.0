Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836F8D6422
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 15:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TpgLtWWpAHZ35mqOkFSbkBerkrIznbpSf2dhje8iwxo=; b=UQv2yVnoSAreEE
	UrD9XEgPW+WbUFZBc1lfqQ955opArTB0Rq+CYxcOktRCJ1qfCxSvMZF+T76agHboKgN3QnMw/GYYg
	oRGctfuIgiQAbwyMJj2ov4T8Q/0BXpMM9krdFR79qtcfJvaO3mfnNyRpLRXerXomlABiJM3BpNCs1
	OrkL0mHe77yU5r5wQC/D3/UvYau/BqtA/5rmyTw28EaDzfZGrw3Z0PMQ4V8QRHFlbnKZBJMvION1u
	ofQv2rsGbaHdtPwlvFHVcCTsDciPwUJVFOsGd80wUHGgnPS0tbTBCscHE/fc58XJGGrccRmkfpbRS
	spnMBWnyH5NsRRlB889w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK0QS-0008Uc-Lz; Mon, 14 Oct 2019 13:30:16 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK0P4-0007UI-Mn
 for linux-arm-kernel@bombadil.infradead.org; Mon, 14 Oct 2019 13:28:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iDXwkl7O2yYcupCDQGZpR6b45iWm8a4P/toc4fBfMes=; b=RN1zxxqw1xkRgnSpef/MHc094N
 rEtGdD/mIQkQiQV/47+7+Py/2htohV2I+Vz9Cz41Or6JVAFmGn3ssOKUrLnlXGk8vVRwoj2dz0mTS
 pVYQi5zw56KqkNS9sspggADUGkNlOHtXxg7pfb1BiyP15GpSHomq2f6lbHf8Ooqq329D5+9aR1x+j
 S7wANUfT3qDRxOb77zNAzbhZwsBFBxtgEwrPCEiBgShkg41OTPSJAQBMToDx5iOE9bijBnueZRXbL
 poglNEQnbyBAkkwlgcCj10+xPJ/wI/R60DvIG65A/odjZ4GpZjQiJ95HZWWFaKKMENuow39G4+zyh
 0O/u4XOA==;
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzKV-0008Du-Pe
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:20:05 +0000
Received: by mail-wr1-x444.google.com with SMTP id j11so19498277wrp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 05:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iDXwkl7O2yYcupCDQGZpR6b45iWm8a4P/toc4fBfMes=;
 b=x10DFkT8B5qOpDZyhv01DBUES+o3abX6KTZto38qzT+/nQopl+Gw5ulkwl83d3NxpI
 Ptdn+aIp3Xk2spcA6Un+jW5iTfnHu4uyZ/yz645Bn2snkupT+iPTrF6tjwBONGbMCnNk
 0ZCTmBZhbJh/wVk9d52YnW4vMY+9xmmqGplDq36w9f0nE5FqhLeCywZ6mMJI8tgt2Ijl
 hc9vL68E7o9GXNYkTRnm9SFne5DN1hmHr/B1BzPXI3mVE6EEXQX7D2CWCjhXTNy1JgDU
 B59TfSn81/ou+mZVOGa7BMvWBQPUSSJelct/FScqMvqA++4taM24mp2IGs19VuRk+WxA
 H9hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iDXwkl7O2yYcupCDQGZpR6b45iWm8a4P/toc4fBfMes=;
 b=hjQo1ZuZRUDc9Bww+nFWADkQJbWVfGsos034YyCoDbL2VQAX4M9mP70HMvOWrMMgU8
 02P4M4PmRgyvx+YykSoDmZZPMoymFOPYlDL2hn9e4nyy0H4MV20c4JFY4wjgYjtGHnp6
 tP1CvQ5l4cYr7XgV5woEZpaTcILI9+5iKju1YrUSbulBmeLN1ivh2SCeIKb0DpmvVs2S
 oLwBUbhjJMSHe1o3ppC4tHK6N2Pgp8HBNxLp+EAjPItjOL5EJyfRhRlhlU5C+WgXVCF3
 OhOByNtjYSiGC3ah5G2Cxuj8g6FGJAWSARjFMO0lrZzf6rmS/OxBgyCIJnbP1LVMTczI
 mvfQ==
X-Gm-Message-State: APjAAAX2sUv0xjBBCZdSKuv7aopcxXu09ByRaHImPLFcamzB3wNyZFST
 q3biTorKGY7XjjzJgfRIZ0N+Dg==
X-Google-Smtp-Source: APXvYqxlqwO8J8OKUPls95f5oexWvuFZP4Q/71goRqiJ45mLdlAbhx8sXV/XnwRiKYlKCL1n5TqMmw==
X-Received: by 2002:a5d:4a87:: with SMTP id o7mr26620721wrq.374.1571055600950; 
 Mon, 14 Oct 2019 05:20:00 -0700 (PDT)
Received: from localhost.localdomain (91-167-84-221.subs.proxad.net.
 [91.167.84.221])
 by smtp.gmail.com with ESMTPSA id i1sm20222470wmb.19.2019.10.14.05.19.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 05:19:59 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 20/25] crypto: stm32 - switch to skcipher API
Date: Mon, 14 Oct 2019 14:19:05 +0200
Message-Id: <20191014121910.7264-21-ard.biesheuvel@linaro.org>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Eric Biggers <ebiggers@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
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

Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/crypto/stm32/stm32-cryp.c | 338 +++++++++-----------
 1 file changed, 159 insertions(+), 179 deletions(-)

diff --git a/drivers/crypto/stm32/stm32-cryp.c b/drivers/crypto/stm32/stm32-cryp.c
index ba5ea6434f9c..d347a1d6e351 100644
--- a/drivers/crypto/stm32/stm32-cryp.c
+++ b/drivers/crypto/stm32/stm32-cryp.c
@@ -19,6 +19,7 @@
 #include <crypto/engine.h>
 #include <crypto/scatterwalk.h>
 #include <crypto/internal/aead.h>
+#include <crypto/internal/skcipher.h>
 
 #define DRIVER_NAME             "stm32-cryp"
 
@@ -137,7 +138,7 @@ struct stm32_cryp {
 
 	struct crypto_engine    *engine;
 
-	struct ablkcipher_request *req;
+	struct skcipher_request *req;
 	struct aead_request     *areq;
 
 	size_t                  authsize;
@@ -395,8 +396,8 @@ static void stm32_cryp_hw_write_iv(struct stm32_cryp *cryp, u32 *iv)
 
 static void stm32_cryp_get_iv(struct stm32_cryp *cryp)
 {
-	struct ablkcipher_request *req = cryp->req;
-	u32 *tmp = req->info;
+	struct skcipher_request *req = cryp->req;
+	u32 *tmp = (void *)req->iv;
 
 	if (!tmp)
 		return;
@@ -616,7 +617,7 @@ static int stm32_cryp_hw_init(struct stm32_cryp *cryp)
 	case CR_TDES_CBC:
 	case CR_AES_CBC:
 	case CR_AES_CTR:
-		stm32_cryp_hw_write_iv(cryp, (u32 *)cryp->req->info);
+		stm32_cryp_hw_write_iv(cryp, (u32 *)cryp->req->iv);
 		break;
 
 	default:
@@ -667,7 +668,7 @@ static void stm32_cryp_finish_req(struct stm32_cryp *cryp, int err)
 	if (is_gcm(cryp) || is_ccm(cryp))
 		crypto_finalize_aead_request(cryp->engine, cryp->areq, err);
 	else
-		crypto_finalize_ablkcipher_request(cryp->engine, cryp->req,
+		crypto_finalize_skcipher_request(cryp->engine, cryp->req,
 						   err);
 
 	memset(cryp->ctx->key, 0, cryp->ctx->keylen);
@@ -685,11 +686,11 @@ static int stm32_cryp_cipher_one_req(struct crypto_engine *engine, void *areq);
 static int stm32_cryp_prepare_cipher_req(struct crypto_engine *engine,
 					 void *areq);
 
-static int stm32_cryp_cra_init(struct crypto_tfm *tfm)
+static int stm32_cryp_init_tfm(struct crypto_skcipher *tfm)
 {
-	struct stm32_cryp_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct stm32_cryp_ctx *ctx = crypto_skcipher_ctx(tfm);
 
-	tfm->crt_ablkcipher.reqsize = sizeof(struct stm32_cryp_reqctx);
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct stm32_cryp_reqctx));
 
 	ctx->enginectx.op.do_one_request = stm32_cryp_cipher_one_req;
 	ctx->enginectx.op.prepare_request = stm32_cryp_prepare_cipher_req;
@@ -714,11 +715,11 @@ static int stm32_cryp_aes_aead_init(struct crypto_aead *tfm)
 	return 0;
 }
 
-static int stm32_cryp_crypt(struct ablkcipher_request *req, unsigned long mode)
+static int stm32_cryp_crypt(struct skcipher_request *req, unsigned long mode)
 {
-	struct stm32_cryp_ctx *ctx = crypto_ablkcipher_ctx(
-			crypto_ablkcipher_reqtfm(req));
-	struct stm32_cryp_reqctx *rctx = ablkcipher_request_ctx(req);
+	struct stm32_cryp_ctx *ctx = crypto_skcipher_ctx(
+			crypto_skcipher_reqtfm(req));
+	struct stm32_cryp_reqctx *rctx = skcipher_request_ctx(req);
 	struct stm32_cryp *cryp = stm32_cryp_find_dev(ctx);
 
 	if (!cryp)
@@ -726,7 +727,7 @@ static int stm32_cryp_crypt(struct ablkcipher_request *req, unsigned long mode)
 
 	rctx->mode = mode;
 
-	return crypto_transfer_ablkcipher_request_to_engine(cryp->engine, req);
+	return crypto_transfer_skcipher_request_to_engine(cryp->engine, req);
 }
 
 static int stm32_cryp_aead_crypt(struct aead_request *req, unsigned long mode)
@@ -743,10 +744,10 @@ static int stm32_cryp_aead_crypt(struct aead_request *req, unsigned long mode)
 	return crypto_transfer_aead_request_to_engine(cryp->engine, req);
 }
 
-static int stm32_cryp_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
+static int stm32_cryp_setkey(struct crypto_skcipher *tfm, const u8 *key,
 			     unsigned int keylen)
 {
-	struct stm32_cryp_ctx *ctx = crypto_ablkcipher_ctx(tfm);
+	struct stm32_cryp_ctx *ctx = crypto_skcipher_ctx(tfm);
 
 	memcpy(ctx->key, key, keylen);
 	ctx->keylen = keylen;
@@ -754,7 +755,7 @@ static int stm32_cryp_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
 	return 0;
 }
 
-static int stm32_cryp_aes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
+static int stm32_cryp_aes_setkey(struct crypto_skcipher *tfm, const u8 *key,
 				 unsigned int keylen)
 {
 	if (keylen != AES_KEYSIZE_128 && keylen != AES_KEYSIZE_192 &&
@@ -764,17 +765,17 @@ static int stm32_cryp_aes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
 		return stm32_cryp_setkey(tfm, key, keylen);
 }
 
-static int stm32_cryp_des_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
+static int stm32_cryp_des_setkey(struct crypto_skcipher *tfm, const u8 *key,
 				 unsigned int keylen)
 {
-	return verify_ablkcipher_des_key(tfm, key) ?:
+	return verify_skcipher_des_key(tfm, key) ?:
 	       stm32_cryp_setkey(tfm, key, keylen);
 }
 
-static int stm32_cryp_tdes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
+static int stm32_cryp_tdes_setkey(struct crypto_skcipher *tfm, const u8 *key,
 				  unsigned int keylen)
 {
-	return verify_ablkcipher_des3_key(tfm, key) ?:
+	return verify_skcipher_des3_key(tfm, key) ?:
 	       stm32_cryp_setkey(tfm, key, keylen);
 }
 
@@ -818,32 +819,32 @@ static int stm32_cryp_aes_ccm_setauthsize(struct crypto_aead *tfm,
 	return 0;
 }
 
-static int stm32_cryp_aes_ecb_encrypt(struct ablkcipher_request *req)
+static int stm32_cryp_aes_ecb_encrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_AES | FLG_ECB | FLG_ENCRYPT);
 }
 
-static int stm32_cryp_aes_ecb_decrypt(struct ablkcipher_request *req)
+static int stm32_cryp_aes_ecb_decrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_AES | FLG_ECB);
 }
 
-static int stm32_cryp_aes_cbc_encrypt(struct ablkcipher_request *req)
+static int stm32_cryp_aes_cbc_encrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_AES | FLG_CBC | FLG_ENCRYPT);
 }
 
-static int stm32_cryp_aes_cbc_decrypt(struct ablkcipher_request *req)
+static int stm32_cryp_aes_cbc_decrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_AES | FLG_CBC);
 }
 
-static int stm32_cryp_aes_ctr_encrypt(struct ablkcipher_request *req)
+static int stm32_cryp_aes_ctr_encrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_AES | FLG_CTR | FLG_ENCRYPT);
 }
 
-static int stm32_cryp_aes_ctr_decrypt(struct ablkcipher_request *req)
+static int stm32_cryp_aes_ctr_decrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_AES | FLG_CTR);
 }
@@ -868,47 +869,47 @@ static int stm32_cryp_aes_ccm_decrypt(struct aead_request *req)
 	return stm32_cryp_aead_crypt(req, FLG_AES | FLG_CCM);
 }
 
-static int stm32_cryp_des_ecb_encrypt(struct ablkcipher_request *req)
+static int stm32_cryp_des_ecb_encrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_DES | FLG_ECB | FLG_ENCRYPT);
 }
 
-static int stm32_cryp_des_ecb_decrypt(struct ablkcipher_request *req)
+static int stm32_cryp_des_ecb_decrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_DES | FLG_ECB);
 }
 
-static int stm32_cryp_des_cbc_encrypt(struct ablkcipher_request *req)
+static int stm32_cryp_des_cbc_encrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_DES | FLG_CBC | FLG_ENCRYPT);
 }
 
-static int stm32_cryp_des_cbc_decrypt(struct ablkcipher_request *req)
+static int stm32_cryp_des_cbc_decrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_DES | FLG_CBC);
 }
 
-static int stm32_cryp_tdes_ecb_encrypt(struct ablkcipher_request *req)
+static int stm32_cryp_tdes_ecb_encrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_TDES | FLG_ECB | FLG_ENCRYPT);
 }
 
-static int stm32_cryp_tdes_ecb_decrypt(struct ablkcipher_request *req)
+static int stm32_cryp_tdes_ecb_decrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_TDES | FLG_ECB);
 }
 
-static int stm32_cryp_tdes_cbc_encrypt(struct ablkcipher_request *req)
+static int stm32_cryp_tdes_cbc_encrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_TDES | FLG_CBC | FLG_ENCRYPT);
 }
 
-static int stm32_cryp_tdes_cbc_decrypt(struct ablkcipher_request *req)
+static int stm32_cryp_tdes_cbc_decrypt(struct skcipher_request *req)
 {
 	return stm32_cryp_crypt(req, FLG_TDES | FLG_CBC);
 }
 
-static int stm32_cryp_prepare_req(struct ablkcipher_request *req,
+static int stm32_cryp_prepare_req(struct skcipher_request *req,
 				  struct aead_request *areq)
 {
 	struct stm32_cryp_ctx *ctx;
@@ -919,7 +920,7 @@ static int stm32_cryp_prepare_req(struct ablkcipher_request *req,
 	if (!req && !areq)
 		return -EINVAL;
 
-	ctx = req ? crypto_ablkcipher_ctx(crypto_ablkcipher_reqtfm(req)) :
+	ctx = req ? crypto_skcipher_ctx(crypto_skcipher_reqtfm(req)) :
 		    crypto_aead_ctx(crypto_aead_reqtfm(areq));
 
 	cryp = ctx->cryp;
@@ -927,7 +928,7 @@ static int stm32_cryp_prepare_req(struct ablkcipher_request *req,
 	if (!cryp)
 		return -ENODEV;
 
-	rctx = req ? ablkcipher_request_ctx(req) : aead_request_ctx(areq);
+	rctx = req ? skcipher_request_ctx(req) : aead_request_ctx(areq);
 	rctx->mode &= FLG_MODE_MASK;
 
 	ctx->cryp = cryp;
@@ -939,7 +940,7 @@ static int stm32_cryp_prepare_req(struct ablkcipher_request *req,
 	if (req) {
 		cryp->req = req;
 		cryp->areq = NULL;
-		cryp->total_in = req->nbytes;
+		cryp->total_in = req->cryptlen;
 		cryp->total_out = cryp->total_in;
 	} else {
 		/*
@@ -1016,8 +1017,8 @@ static int stm32_cryp_prepare_req(struct ablkcipher_request *req,
 static int stm32_cryp_prepare_cipher_req(struct crypto_engine *engine,
 					 void *areq)
 {
-	struct ablkcipher_request *req = container_of(areq,
-						      struct ablkcipher_request,
+	struct skcipher_request *req = container_of(areq,
+						      struct skcipher_request,
 						      base);
 
 	return stm32_cryp_prepare_req(req, NULL);
@@ -1025,11 +1026,11 @@ static int stm32_cryp_prepare_cipher_req(struct crypto_engine *engine,
 
 static int stm32_cryp_cipher_one_req(struct crypto_engine *engine, void *areq)
 {
-	struct ablkcipher_request *req = container_of(areq,
-						      struct ablkcipher_request,
+	struct skcipher_request *req = container_of(areq,
+						      struct skcipher_request,
 						      base);
-	struct stm32_cryp_ctx *ctx = crypto_ablkcipher_ctx(
-			crypto_ablkcipher_reqtfm(req));
+	struct stm32_cryp_ctx *ctx = crypto_skcipher_ctx(
+			crypto_skcipher_reqtfm(req));
 	struct stm32_cryp *cryp = ctx->cryp;
 
 	if (!cryp)
@@ -1724,150 +1725,129 @@ static irqreturn_t stm32_cryp_irq(int irq, void *arg)
 	return IRQ_WAKE_THREAD;
 }
 
-static struct crypto_alg crypto_algs[] = {
-{
-	.cra_name		= "ecb(aes)",
-	.cra_driver_name	= "stm32-ecb-aes",
-	.cra_priority		= 200,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-				  CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= AES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct stm32_cryp_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= stm32_cryp_cra_init,
-	.cra_ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.setkey		= stm32_cryp_aes_setkey,
-		.encrypt	= stm32_cryp_aes_ecb_encrypt,
-		.decrypt	= stm32_cryp_aes_ecb_decrypt,
-	}
+static struct skcipher_alg crypto_algs[] = {
+{
+	.base.cra_name		= "ecb(aes)",
+	.base.cra_driver_name	= "stm32-ecb-aes",
+	.base.cra_priority	= 200,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= AES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct stm32_cryp_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= stm32_cryp_init_tfm,
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.setkey			= stm32_cryp_aes_setkey,
+	.encrypt		= stm32_cryp_aes_ecb_encrypt,
+	.decrypt		= stm32_cryp_aes_ecb_decrypt,
 },
 {
-	.cra_name		= "cbc(aes)",
-	.cra_driver_name	= "stm32-cbc-aes",
-	.cra_priority		= 200,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-				  CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= AES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct stm32_cryp_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= stm32_cryp_cra_init,
-	.cra_ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.ivsize		= AES_BLOCK_SIZE,
-		.setkey		= stm32_cryp_aes_setkey,
-		.encrypt	= stm32_cryp_aes_cbc_encrypt,
-		.decrypt	= stm32_cryp_aes_cbc_decrypt,
-	}
+	.base.cra_name		= "cbc(aes)",
+	.base.cra_driver_name	= "stm32-cbc-aes",
+	.base.cra_priority	= 200,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= AES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct stm32_cryp_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= stm32_cryp_init_tfm,
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.ivsize			= AES_BLOCK_SIZE,
+	.setkey			= stm32_cryp_aes_setkey,
+	.encrypt		= stm32_cryp_aes_cbc_encrypt,
+	.decrypt		= stm32_cryp_aes_cbc_decrypt,
 },
 {
-	.cra_name		= "ctr(aes)",
-	.cra_driver_name	= "stm32-ctr-aes",
-	.cra_priority		= 200,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-				  CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= 1,
-	.cra_ctxsize		= sizeof(struct stm32_cryp_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= stm32_cryp_cra_init,
-	.cra_ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.ivsize		= AES_BLOCK_SIZE,
-		.setkey		= stm32_cryp_aes_setkey,
-		.encrypt	= stm32_cryp_aes_ctr_encrypt,
-		.decrypt	= stm32_cryp_aes_ctr_decrypt,
-	}
+	.base.cra_name		= "ctr(aes)",
+	.base.cra_driver_name	= "stm32-ctr-aes",
+	.base.cra_priority	= 200,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= 1,
+	.base.cra_ctxsize	= sizeof(struct stm32_cryp_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= stm32_cryp_init_tfm,
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.ivsize			= AES_BLOCK_SIZE,
+	.setkey			= stm32_cryp_aes_setkey,
+	.encrypt		= stm32_cryp_aes_ctr_encrypt,
+	.decrypt		= stm32_cryp_aes_ctr_decrypt,
 },
 {
-	.cra_name		= "ecb(des)",
-	.cra_driver_name	= "stm32-ecb-des",
-	.cra_priority		= 200,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-				  CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= DES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct stm32_cryp_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= stm32_cryp_cra_init,
-	.cra_ablkcipher = {
-		.min_keysize	= DES_BLOCK_SIZE,
-		.max_keysize	= DES_BLOCK_SIZE,
-		.setkey		= stm32_cryp_des_setkey,
-		.encrypt	= stm32_cryp_des_ecb_encrypt,
-		.decrypt	= stm32_cryp_des_ecb_decrypt,
-	}
+	.base.cra_name		= "ecb(des)",
+	.base.cra_driver_name	= "stm32-ecb-des",
+	.base.cra_priority	= 200,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= DES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct stm32_cryp_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= stm32_cryp_init_tfm,
+	.min_keysize		= DES_BLOCK_SIZE,
+	.max_keysize		= DES_BLOCK_SIZE,
+	.setkey			= stm32_cryp_des_setkey,
+	.encrypt		= stm32_cryp_des_ecb_encrypt,
+	.decrypt		= stm32_cryp_des_ecb_decrypt,
 },
 {
-	.cra_name		= "cbc(des)",
-	.cra_driver_name	= "stm32-cbc-des",
-	.cra_priority		= 200,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-				  CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= DES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct stm32_cryp_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= stm32_cryp_cra_init,
-	.cra_ablkcipher = {
-		.min_keysize	= DES_BLOCK_SIZE,
-		.max_keysize	= DES_BLOCK_SIZE,
-		.ivsize		= DES_BLOCK_SIZE,
-		.setkey		= stm32_cryp_des_setkey,
-		.encrypt	= stm32_cryp_des_cbc_encrypt,
-		.decrypt	= stm32_cryp_des_cbc_decrypt,
-	}
+	.base.cra_name		= "cbc(des)",
+	.base.cra_driver_name	= "stm32-cbc-des",
+	.base.cra_priority	= 200,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= DES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct stm32_cryp_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= stm32_cryp_init_tfm,
+	.min_keysize		= DES_BLOCK_SIZE,
+	.max_keysize		= DES_BLOCK_SIZE,
+	.ivsize			= DES_BLOCK_SIZE,
+	.setkey			= stm32_cryp_des_setkey,
+	.encrypt		= stm32_cryp_des_cbc_encrypt,
+	.decrypt		= stm32_cryp_des_cbc_decrypt,
 },
 {
-	.cra_name		= "ecb(des3_ede)",
-	.cra_driver_name	= "stm32-ecb-des3",
-	.cra_priority		= 200,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-				  CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= DES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct stm32_cryp_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= stm32_cryp_cra_init,
-	.cra_ablkcipher = {
-		.min_keysize	= 3 * DES_BLOCK_SIZE,
-		.max_keysize	= 3 * DES_BLOCK_SIZE,
-		.setkey		= stm32_cryp_tdes_setkey,
-		.encrypt	= stm32_cryp_tdes_ecb_encrypt,
-		.decrypt	= stm32_cryp_tdes_ecb_decrypt,
-	}
+	.base.cra_name		= "ecb(des3_ede)",
+	.base.cra_driver_name	= "stm32-ecb-des3",
+	.base.cra_priority	= 200,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= DES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct stm32_cryp_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= stm32_cryp_init_tfm,
+	.min_keysize		= 3 * DES_BLOCK_SIZE,
+	.max_keysize		= 3 * DES_BLOCK_SIZE,
+	.setkey			= stm32_cryp_tdes_setkey,
+	.encrypt		= stm32_cryp_tdes_ecb_encrypt,
+	.decrypt		= stm32_cryp_tdes_ecb_decrypt,
 },
 {
-	.cra_name		= "cbc(des3_ede)",
-	.cra_driver_name	= "stm32-cbc-des3",
-	.cra_priority		= 200,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-				  CRYPTO_ALG_ASYNC,
-	.cra_blocksize		= DES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct stm32_cryp_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_init		= stm32_cryp_cra_init,
-	.cra_ablkcipher = {
-		.min_keysize	= 3 * DES_BLOCK_SIZE,
-		.max_keysize	= 3 * DES_BLOCK_SIZE,
-		.ivsize		= DES_BLOCK_SIZE,
-		.setkey		= stm32_cryp_tdes_setkey,
-		.encrypt	= stm32_cryp_tdes_cbc_encrypt,
-		.decrypt	= stm32_cryp_tdes_cbc_decrypt,
-	}
+	.base.cra_name		= "cbc(des3_ede)",
+	.base.cra_driver_name	= "stm32-cbc-des3",
+	.base.cra_priority	= 200,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= DES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct stm32_cryp_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.init			= stm32_cryp_init_tfm,
+	.min_keysize		= 3 * DES_BLOCK_SIZE,
+	.max_keysize		= 3 * DES_BLOCK_SIZE,
+	.ivsize			= DES_BLOCK_SIZE,
+	.setkey			= stm32_cryp_tdes_setkey,
+	.encrypt		= stm32_cryp_tdes_cbc_encrypt,
+	.decrypt		= stm32_cryp_tdes_cbc_decrypt,
 },
 };
 
@@ -2010,7 +1990,7 @@ static int stm32_cryp_probe(struct platform_device *pdev)
 		goto err_engine2;
 	}
 
-	ret = crypto_register_algs(crypto_algs, ARRAY_SIZE(crypto_algs));
+	ret = crypto_register_skciphers(crypto_algs, ARRAY_SIZE(crypto_algs));
 	if (ret) {
 		dev_err(dev, "Could not register algs\n");
 		goto err_algs;
@@ -2027,7 +2007,7 @@ static int stm32_cryp_probe(struct platform_device *pdev)
 	return 0;
 
 err_aead_algs:
-	crypto_unregister_algs(crypto_algs, ARRAY_SIZE(crypto_algs));
+	crypto_unregister_skciphers(crypto_algs, ARRAY_SIZE(crypto_algs));
 err_algs:
 err_engine2:
 	crypto_engine_exit(cryp->engine);
@@ -2059,7 +2039,7 @@ static int stm32_cryp_remove(struct platform_device *pdev)
 		return ret;
 
 	crypto_unregister_aeads(aead_algs, ARRAY_SIZE(aead_algs));
-	crypto_unregister_algs(crypto_algs, ARRAY_SIZE(crypto_algs));
+	crypto_unregister_skciphers(crypto_algs, ARRAY_SIZE(crypto_algs));
 
 	crypto_engine_exit(cryp->engine);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
