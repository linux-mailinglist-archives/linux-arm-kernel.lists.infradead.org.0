Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCCBF609F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 18:19:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0hI/+HRJha0bbDh8qPbzgIdHD9Wh6vHB2PgninBxpe8=; b=Hn2qWsZst4gyI9eg7Bz7zpxFE9
	MAA9MeDUlKzTrg1nvTjZNMjK6q4EjB8WSa1v/YluWrw1PLE9FePHvoIgYxFPRV6zkJz+Ys9QKMRyu
	8rJf8g9I+DQit1XOoBGkQcEF6wKKGebqPgvS6jspmAFoe7+8rrmnpk45ZoSRcFYX7j3+959Ti9sU7
	iPniUoGjHnkCBRMDWItCyD1EbzniMITFDZstCj86A/NBR7hYaS/S5FYUiOMYboiIqmf+j6bqUeJDg
	C7lupdDEwpjAvrR0VAeNGrJthjlTH1HwbFqYklMTKtQRJHV59es8fBsvmQOcsKCgXrXxo2hmXMUWH
	Sr/Lh5Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTUOc-0003t2-G1; Sat, 09 Nov 2019 17:19:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTUGy-00058o-MP
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 17:11:43 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0717E21D7F;
 Sat,  9 Nov 2019 17:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573319499;
 bh=pfalVsN6HGSI4GJr5w4SsMsACN0RqS2vwyXpdZKw+jA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SP69EW4p5J0hkQH0PaBJyWEMOn+RboC/7UT8wPxmdHcB2PXL04VWU8MWUSjWO5Zo5
 EBe9IovDVGkngVTwkZ1KI85dIQq58AlRW1nUouZWWHosiQ77Y7zCq3B9TJa+MKzkxy
 7nM/YTwoVd+5m6nhYiGkOidozIwRFG9ZDWJpl7CA=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v4 26/29] crypto: marvell/cesa - rename blkcipher to skcipher
Date: Sat,  9 Nov 2019 18:09:51 +0100
Message-Id: <20191109170954.756-27-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191109170954.756-1-ardb@kernel.org>
References: <20191109170954.756-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_091140_994484_0DB2B2BE 
X-CRM114-Status: GOOD (  12.72  )
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
Cc: "David S. Miller" <davem@davemloft.net>, Eric Biggers <ebiggers@google.com>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Herbert Xu <herbert@gondor.apana.org.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver specific types contain some rudimentary references to the
blkcipher API, which is deprecated and will be removed. To avoid confusion,
rename these to skcipher. This is a cosmetic change only, as the code does
not actually use the blkcipher API.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/crypto/marvell/cesa.h   |  6 +++---
 drivers/crypto/marvell/cipher.c | 14 +++++++-------
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/crypto/marvell/cesa.h b/drivers/crypto/marvell/cesa.h
index d63a6ee905c9..f1ed3b85c0d2 100644
--- a/drivers/crypto/marvell/cesa.h
+++ b/drivers/crypto/marvell/cesa.h
@@ -232,13 +232,13 @@ struct mv_cesa_sec_accel_desc {
 };
 
 /**
- * struct mv_cesa_blkcipher_op_ctx - cipher operation context
+ * struct mv_cesa_skcipher_op_ctx - cipher operation context
  * @key:	cipher key
  * @iv:		cipher IV
  *
  * Context associated to a cipher operation.
  */
-struct mv_cesa_blkcipher_op_ctx {
+struct mv_cesa_skcipher_op_ctx {
 	u32 key[8];
 	u32 iv[4];
 };
@@ -265,7 +265,7 @@ struct mv_cesa_hash_op_ctx {
 struct mv_cesa_op_ctx {
 	struct mv_cesa_sec_accel_desc desc;
 	union {
-		struct mv_cesa_blkcipher_op_ctx blkcipher;
+		struct mv_cesa_skcipher_op_ctx skcipher;
 		struct mv_cesa_hash_op_ctx hash;
 	} ctx;
 };
diff --git a/drivers/crypto/marvell/cipher.c b/drivers/crypto/marvell/cipher.c
index 84ceddfee76b..d8e8c857770c 100644
--- a/drivers/crypto/marvell/cipher.c
+++ b/drivers/crypto/marvell/cipher.c
@@ -209,7 +209,7 @@ mv_cesa_skcipher_complete(struct crypto_async_request *req)
 		struct mv_cesa_req *basereq;
 
 		basereq = &creq->base;
-		memcpy(skreq->iv, basereq->chain.last->op->ctx.blkcipher.iv,
+		memcpy(skreq->iv, basereq->chain.last->op->ctx.skcipher.iv,
 		       ivsize);
 	} else {
 		memcpy_fromio(skreq->iv,
@@ -470,7 +470,7 @@ static int mv_cesa_des_op(struct skcipher_request *req,
 	mv_cesa_update_op_cfg(tmpl, CESA_SA_DESC_CFG_CRYPTM_DES,
 			      CESA_SA_DESC_CFG_CRYPTM_MSK);
 
-	memcpy(tmpl->ctx.blkcipher.key, ctx->key, DES_KEY_SIZE);
+	memcpy(tmpl->ctx.skcipher.key, ctx->key, DES_KEY_SIZE);
 
 	return mv_cesa_skcipher_queue_req(req, tmpl);
 }
@@ -523,7 +523,7 @@ static int mv_cesa_cbc_des_op(struct skcipher_request *req,
 	mv_cesa_update_op_cfg(tmpl, CESA_SA_DESC_CFG_CRYPTCM_CBC,
 			      CESA_SA_DESC_CFG_CRYPTCM_MSK);
 
-	memcpy(tmpl->ctx.blkcipher.iv, req->iv, DES_BLOCK_SIZE);
+	memcpy(tmpl->ctx.skcipher.iv, req->iv, DES_BLOCK_SIZE);
 
 	return mv_cesa_des_op(req, tmpl);
 }
@@ -575,7 +575,7 @@ static int mv_cesa_des3_op(struct skcipher_request *req,
 	mv_cesa_update_op_cfg(tmpl, CESA_SA_DESC_CFG_CRYPTM_3DES,
 			      CESA_SA_DESC_CFG_CRYPTM_MSK);
 
-	memcpy(tmpl->ctx.blkcipher.key, ctx->key, DES3_EDE_KEY_SIZE);
+	memcpy(tmpl->ctx.skcipher.key, ctx->key, DES3_EDE_KEY_SIZE);
 
 	return mv_cesa_skcipher_queue_req(req, tmpl);
 }
@@ -628,7 +628,7 @@ struct skcipher_alg mv_cesa_ecb_des3_ede_alg = {
 static int mv_cesa_cbc_des3_op(struct skcipher_request *req,
 			       struct mv_cesa_op_ctx *tmpl)
 {
-	memcpy(tmpl->ctx.blkcipher.iv, req->iv, DES3_EDE_BLOCK_SIZE);
+	memcpy(tmpl->ctx.skcipher.iv, req->iv, DES3_EDE_BLOCK_SIZE);
 
 	return mv_cesa_des3_op(req, tmpl);
 }
@@ -694,7 +694,7 @@ static int mv_cesa_aes_op(struct skcipher_request *req,
 		key = ctx->aes.key_enc;
 
 	for (i = 0; i < ctx->aes.key_length / sizeof(u32); i++)
-		tmpl->ctx.blkcipher.key[i] = cpu_to_le32(key[i]);
+		tmpl->ctx.skcipher.key[i] = cpu_to_le32(key[i]);
 
 	if (ctx->aes.key_length == 24)
 		cfg |= CESA_SA_DESC_CFG_AES_LEN_192;
@@ -755,7 +755,7 @@ static int mv_cesa_cbc_aes_op(struct skcipher_request *req,
 {
 	mv_cesa_update_op_cfg(tmpl, CESA_SA_DESC_CFG_CRYPTCM_CBC,
 			      CESA_SA_DESC_CFG_CRYPTCM_MSK);
-	memcpy(tmpl->ctx.blkcipher.iv, req->iv, AES_BLOCK_SIZE);
+	memcpy(tmpl->ctx.skcipher.iv, req->iv, AES_BLOCK_SIZE);
 
 	return mv_cesa_aes_op(req, tmpl);
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
