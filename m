Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B734F9FAA6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 08:38:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YGjXJHafBnq99Gx29DDmtLD67i3wOqmxxQe6rcG+cmg=; b=nRNggLt3++b5J1
	OXDUacxL2W6GxG38qAwPf/0Xxazv1ySge5wij+AV3zpvoLwk1Cj+8Y4pCVIxLuzwZEZq+3PJ5x5K6
	s29VOJf7oeEd87gqbunscOAJcGTpITuvcCfcg4wAyeVLLjLkMOXZA8IAZRdJlT2bcWcP/i1thBa82
	CL9ooWNRpPx/L+GG5z6aRk1RE9VyLcHugj201QgOWaUJo/kd1c1H3/O2VgERy3DawlcCqzIh2pKJu
	VPoSv9kR1MKEgWRFdm6CfvNCYTPmKi29Bd2uJszH6K1cwekwpu0Alew+2cT7D3ZHzboIbnfdua9vz
	fJ/wJMm6Og3YcfXBBpuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2raj-0000Ga-PJ; Wed, 28 Aug 2019 06:38:02 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2raG-0008Th-4f; Wed, 28 Aug 2019 06:37:33 +0000
X-UUID: 6ec78164e83344aabd3b9748dcb859b3-20190827
X-UUID: 6ec78164e83344aabd3b9748dcb859b3-20190827
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <vic.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 272787459; Tue, 27 Aug 2019 22:37:35 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 27 Aug 2019 23:37:34 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 14:37:30 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 28 Aug 2019 14:37:30 +0800
From: Vic Wu <vic.wu@mediatek.com>
To: Herbert Xu <herbert@gondor.apana.org.au>
Subject: [PATCH 5/5] crypto: mediatek: fix incorrect crypto key setting
Date: Wed, 28 Aug 2019 14:37:16 +0800
Message-ID: <20190828063716.22689-5-vic.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190828063716.22689-1-vic.wu@mediatek.com>
References: <20190828063716.22689-1-vic.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_233732_191214_4A19A088 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
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

Record crypto key to context during setkey and set the key to
transform state buffer in encrypt/decrypt process.

Signed-off-by: Vic Wu <vic.wu@mediatek.com>
---
 drivers/crypto/mediatek/mtk-aes.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/crypto/mediatek/mtk-aes.c b/drivers/crypto/mediatek/mtk-aes.c
index 9eeb8b8d..05f21dc8 100644
--- a/drivers/crypto/mediatek/mtk-aes.c
+++ b/drivers/crypto/mediatek/mtk-aes.c
@@ -107,6 +107,7 @@ struct mtk_aes_reqctx {
 struct mtk_aes_base_ctx {
 	struct mtk_cryp *cryp;
 	u32 keylen;
+	__le32 key[12];
 	__le32 keymode;
 
 	mtk_aes_fn start;
@@ -541,6 +542,8 @@ static int mtk_aes_handle_queue(struct mtk_cryp *cryp, u8 id,
 		backlog->complete(backlog, -EINPROGRESS);
 
 	ctx = crypto_tfm_ctx(areq->tfm);
+	/* Write key into state buffer */
+	memcpy(ctx->info.state, ctx->key, sizeof(ctx->key));
 
 	aes->areq = areq;
 	aes->ctx = ctx;
@@ -660,7 +663,7 @@ static int mtk_aes_setkey(struct crypto_ablkcipher *tfm,
 	}
 
 	ctx->keylen = SIZE_IN_WORDS(keylen);
-	mtk_aes_write_state_le(ctx->info.state, (const u32 *)key, keylen);
+	mtk_aes_write_state_le(ctx->key, (const u32 *)key, keylen);
 
 	return 0;
 }
@@ -1093,10 +1096,8 @@ static int mtk_aes_gcm_setkey(struct crypto_aead *aead, const u8 *key,
 	if (err)
 		goto out;
 
-	/* Write key into state buffer */
-	mtk_aes_write_state_le(ctx->info.state, (const u32 *)key, keylen);
-	/* Write key(H) into state buffer */
-	mtk_aes_write_state_be(ctx->info.state + ctx->keylen, data->hash,
+	mtk_aes_write_state_le(ctx->key, (const u32 *)key, keylen);
+	mtk_aes_write_state_be(ctx->key + ctx->keylen, data->hash,
 			       AES_BLOCK_SIZE);
 out:
 	kzfree(data);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
