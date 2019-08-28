Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 995589FAA3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 08:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nmwkT0xnV17d5HU5Xai8XNaGeY5iV1ELjTxp1EDrUzk=; b=fX06U3W/dM+J6q
	ga9qDhlVtwxFye74NF9YDakpC0cWD+VWAsUzQINr2EmMSRkC3/Ny9kK4DCwvusywTDdPHaOYq0ny2
	a4HfrZQ5A76Vm0/307lq7FHPC/KCwKEK3EXyuVOESbyQjn+xwIBIXIPt4N71WG8B5RcM9ZnPmPXiT
	ZTqJT29+3g9ghVL6SCrS5IbJJlwAnBz04RXFHCykWfZP3YygtVb8+RFeyHbKkRkAexdy5pcAkPcHW
	5deMl4HV9RDREVZuhEudgr4v1EU38qfr9glQrpapIvHttroIV9AQU00rV74lZyo8xRQ76i8fS0FCI
	lM3YBzxlqMzo5fODivmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2raP-0008SM-MG; Wed, 28 Aug 2019 06:37:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2raB-0008RW-As; Wed, 28 Aug 2019 06:37:29 +0000
X-UUID: bdc377e0c51641898b4a6ed13c47cb8a-20190827
X-UUID: bdc377e0c51641898b4a6ed13c47cb8a-20190827
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <vic.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 91410654; Tue, 27 Aug 2019 22:37:30 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 27 Aug 2019 23:37:29 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 14:37:27 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 28 Aug 2019 14:37:27 +0800
From: Vic Wu <vic.wu@mediatek.com>
To: Herbert Xu <herbert@gondor.apana.org.au>
Subject: [PATCH 2/5] crypto: mediatek: fix uninitialized value of gctx->textlen
Date: Wed, 28 Aug 2019 14:37:13 +0800
Message-ID: <20190828063716.22689-2-vic.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190828063716.22689-1-vic.wu@mediatek.com>
References: <20190828063716.22689-1-vic.wu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: F65AEE53D721DE43A7E2257D0A165C3D3E3FC6680F81F063306A834E96B04F1A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_233728_046604_89716498 
X-CRM114-Status: GOOD (  12.02  )
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

Add a pre-computed text length to avoid uninitialized value in the check.

Fixes: e47270665b5f ("crypto: mediatek - Add empty messages check in GCM mode")
Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
Signed-off-by: Vic Wu <vic.wu@mediatek.com>
---
 drivers/crypto/mediatek/mtk-aes.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/crypto/mediatek/mtk-aes.c b/drivers/crypto/mediatek/mtk-aes.c
index 43fcc8b5..425d7f3f 100644
--- a/drivers/crypto/mediatek/mtk-aes.c
+++ b/drivers/crypto/mediatek/mtk-aes.c
@@ -896,14 +896,11 @@ static int mtk_aes_gcm_start(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
 		aes->resume = mtk_aes_transfer_complete;
 		/* Compute total process length. */
 		aes->total = len + gctx->authsize;
-		/* Compute text length. */
-		gctx->textlen = req->cryptlen;
 		/* Hardware will append authenticated tag to output buffer */
 		scatterwalk_map_and_copy(tag, req->dst, len, gctx->authsize, 1);
 	} else {
 		aes->resume = mtk_aes_gcm_tag_verify;
 		aes->total = len;
-		gctx->textlen = req->cryptlen - gctx->authsize;
 	}
 
 	return mtk_aes_gcm_dma(cryp, aes, req->src, req->dst, len);
@@ -915,19 +912,22 @@ static int mtk_aes_gcm_crypt(struct aead_request *req, u64 mode)
 	struct mtk_aes_gcm_ctx *gctx = mtk_aes_gcm_ctx_cast(ctx);
 	struct mtk_aes_reqctx *rctx = aead_request_ctx(req);
 	struct mtk_cryp *cryp;
+	bool enc = !!(mode & AES_FLAGS_ENCRYPT);
 
 	cryp = mtk_aes_find_dev(ctx);
 	if (!cryp)
 		return -ENODEV;
 
+	/* Compute text length. */
+	gctx->textlen = req->cryptlen - (enc ? 0 : gctx->authsize);
+
 	/* Empty messages are not supported yet */
 	if (!gctx->textlen && !req->assoclen)
 		return -EINVAL;
 
 	rctx->mode = AES_FLAGS_GCM | mode;
 
-	return mtk_aes_handle_queue(cryp, !!(mode & AES_FLAGS_ENCRYPT),
-				    &req->base);
+	return mtk_aes_handle_queue(cryp, enc, &req->base);
 }
 
 /*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
