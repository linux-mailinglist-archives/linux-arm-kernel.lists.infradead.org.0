Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A900C9FAAB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 08:38:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gt/MGIQEeIy8HFg4XrJM42f/+D9IoBelaQfKEokPXg4=; b=jUF1s5tKfxfKRU
	oIPoUzIlAAgOwtQdcS8/3dznIAL7yBkqT0fnSBS5nPtQ0hoZGSZDwz0R4StK+Hlcoffd8TDs2fBEa
	eqqYTDFdE9xkJv+Fq5m1YZmRoV/TywdbyKux3IStGUGr+5Pg+MCq3OoDMfUpcax1vvdVpA5PtxVA3
	uINFW/zJe5xElBnW7xsKDzfjNSmgOSUHOLf6rKB3yFjosh6RB5oalBPJhuWka6SUlMrPfEZHSYoYE
	KX8Oh1XiFdxNwH3efhvm02eysbzntfkC+JnaUHkJMOxQuH4+XuUuaxt1qz4KxBA0zoxpLuTOg2bfm
	MvQ4HLumWn75qIa3dN5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2rb3-0000Xl-1V; Wed, 28 Aug 2019 06:38:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2raH-0008Ul-38; Wed, 28 Aug 2019 06:37:34 +0000
X-UUID: 0467dcf137a8400ca668357ffa1d3920-20190827
X-UUID: 0467dcf137a8400ca668357ffa1d3920-20190827
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <vic.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1919974406; Tue, 27 Aug 2019 22:37:34 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 27 Aug 2019 23:37:33 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 14:37:26 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 28 Aug 2019 14:37:26 +0800
From: Vic Wu <vic.wu@mediatek.com>
To: Herbert Xu <herbert@gondor.apana.org.au>
Subject: [PATCH 1/5] crypto: mediatek: move mtk_aes_find_dev() to the right
 place
Date: Wed, 28 Aug 2019 14:37:12 +0800
Message-ID: <20190828063716.22689-1-vic.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_233733_180675_99CC4A7E 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
 Vic Wu <vic.wu@mediatek.com>, "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ryder Lee <ryder.lee@mediatek.com>

Move mtk_aes_find_dev() to right functions as nobody uses the
'cryp' under current flows.

We can also avoid duplicate checks here and there in this way.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
Signed-off-by: Vic Wu <vic.wu@mediatek.com>
---
 drivers/crypto/mediatek/mtk-aes.c | 39 +++++++++++--------------------
 1 file changed, 14 insertions(+), 25 deletions(-)

diff --git a/drivers/crypto/mediatek/mtk-aes.c b/drivers/crypto/mediatek/mtk-aes.c
index 72e4549e..43fcc8b5 100644
--- a/drivers/crypto/mediatek/mtk-aes.c
+++ b/drivers/crypto/mediatek/mtk-aes.c
@@ -658,14 +658,19 @@ static int mtk_aes_setkey(struct crypto_ablkcipher *tfm,
 
 static int mtk_aes_crypt(struct ablkcipher_request *req, u64 mode)
 {
-	struct mtk_aes_base_ctx *ctx;
+	struct crypto_ablkcipher *ablkcipher = crypto_ablkcipher_reqtfm(req);
+	struct mtk_aes_base_ctx *ctx = crypto_ablkcipher_ctx(ablkcipher);
 	struct mtk_aes_reqctx *rctx;
+	struct mtk_cryp *cryp;
+
+	cryp = mtk_aes_find_dev(ctx);
+	if (!cryp)
+		return -ENODEV;
 
-	ctx = crypto_ablkcipher_ctx(crypto_ablkcipher_reqtfm(req));
 	rctx = ablkcipher_request_ctx(req);
 	rctx->mode = mode;
 
-	return mtk_aes_handle_queue(ctx->cryp, !(mode & AES_FLAGS_ENCRYPT),
+	return mtk_aes_handle_queue(cryp, !(mode & AES_FLAGS_ENCRYPT),
 				    &req->base);
 }
 
@@ -702,13 +707,6 @@ static int mtk_aes_ctr_decrypt(struct ablkcipher_request *req)
 static int mtk_aes_cra_init(struct crypto_tfm *tfm)
 {
 	struct mtk_aes_ctx *ctx = crypto_tfm_ctx(tfm);
-	struct mtk_cryp *cryp = NULL;
-
-	cryp = mtk_aes_find_dev(&ctx->base);
-	if (!cryp) {
-		pr_err("can't find crypto device\n");
-		return -ENODEV;
-	}
 
 	tfm->crt_ablkcipher.reqsize = sizeof(struct mtk_aes_reqctx);
 	ctx->base.start = mtk_aes_start;
@@ -718,13 +716,6 @@ static int mtk_aes_cra_init(struct crypto_tfm *tfm)
 static int mtk_aes_ctr_cra_init(struct crypto_tfm *tfm)
 {
 	struct mtk_aes_ctx *ctx = crypto_tfm_ctx(tfm);
-	struct mtk_cryp *cryp = NULL;
-
-	cryp = mtk_aes_find_dev(&ctx->base);
-	if (!cryp) {
-		pr_err("can't find crypto device\n");
-		return -ENODEV;
-	}
 
 	tfm->crt_ablkcipher.reqsize = sizeof(struct mtk_aes_reqctx);
 	ctx->base.start = mtk_aes_ctr_start;
@@ -930,6 +921,11 @@ static int mtk_aes_gcm_crypt(struct aead_request *req, u64 mode)
 	struct mtk_aes_base_ctx *ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
 	struct mtk_aes_gcm_ctx *gctx = mtk_aes_gcm_ctx_cast(ctx);
 	struct mtk_aes_reqctx *rctx = aead_request_ctx(req);
+	struct mtk_cryp *cryp;
+
+	cryp = mtk_aes_find_dev(ctx);
+	if (!cryp)
+		return -ENODEV;
 
 	/* Empty messages are not supported yet */
 	if (!gctx->textlen && !req->assoclen)
@@ -937,7 +933,7 @@ static int mtk_aes_gcm_crypt(struct aead_request *req, u64 mode)
 
 	rctx->mode = AES_FLAGS_GCM | mode;
 
-	return mtk_aes_handle_queue(ctx->cryp, !!(mode & AES_FLAGS_ENCRYPT),
+	return mtk_aes_handle_queue(cryp, !!(mode & AES_FLAGS_ENCRYPT),
 				    &req->base);
 }
 
@@ -1069,13 +1065,6 @@ static int mtk_aes_gcm_decrypt(struct aead_request *req)
 static int mtk_aes_gcm_init(struct crypto_aead *aead)
 {
 	struct mtk_aes_gcm_ctx *ctx = crypto_aead_ctx(aead);
-	struct mtk_cryp *cryp = NULL;
-
-	cryp = mtk_aes_find_dev(&ctx->base);
-	if (!cryp) {
-		pr_err("can't find crypto device\n");
-		return -ENODEV;
-	}
 
 	ctx->ctr = crypto_alloc_skcipher("ctr(aes)", 0,
 					 CRYPTO_ALG_ASYNC);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
