Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 196492E880
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 00:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ahhm4N8LiGUqFlhZkZK6OGRK8yzNSsD37PK696pr0NM=; b=UW7IxlcobJwyrxUFyA8l0gYfEW
	6oH5NeKTp7msHCwaigFP/1QGNb1/dsGRUejiEW+DUIyUQ0LZuclyUSEXJb6ykf6XyCP0uL/3enohl
	fa8WVJR5c47KF8JWRuR26xnrwtVzWKl4z+pDb4QIKXiUHB+cjml/bXGEAIZyLWtPLZOfjA34z778+
	KzHEkLX1w/ydoI0VscABGz+bP5gI2ellzrChjzxsiJOLZGpZGiTudeth3NzXq3UEgjoZ+jUkVMTSg
	9/Cig1JiVg1IvX5L/uvj0iONyhvtS1Nf8IZDb/5IIPS5mUC+yBzkGkyzF85dDldasbJWvG2azltHX
	GFO2x4mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW7O6-0000cs-Du; Wed, 29 May 2019 22:49:38 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW7Np-0008Ny-4g
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 22:49:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id D92FE1803086A;
 Thu, 30 May 2019 00:49:09 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 2/2] crypto: mxs-dcp: Implement reference keys
Date: Thu, 30 May 2019 00:48:44 +0200
Message-Id: <20190529224844.25203-2-richard@nod.at>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190529224844.25203-1-richard@nod.at>
References: <20190529224844.25203-1-richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_154921_467198_A41A1DBC 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: david@sigma-star.at, herbert@gondor.apana.org.au, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, Richard Weinberger <richard@nod.at>, festevam@gmail.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DCP allows working with secure keys. These keys can reside in a
protected memory region of the crypto accelerator, burned in
eFuses or being an internal chip key. To use these keys a key
reference is transferred to the chip instead of a AES key.
For DCP these references can be:
0x00 to 0x03: Key slot number in the secure memory region
0xfe: Unique device key
0xff: OTP key (burned in eFuse)

To utilize this functionality we check for the
CRYPTO_TFM_REQ_REF_KEY flag, if it is set the key as provided
via mxs_dcp_aes_setkey() is used as reference.

Signed-off-by: Richard Weinberger <richard@nod.at>
---
 drivers/crypto/mxs-dcp.c | 77 +++++++++++++++++++++++++++++++++++++++---------
 1 file changed, 63 insertions(+), 14 deletions(-)

diff --git a/drivers/crypto/mxs-dcp.c b/drivers/crypto/mxs-dcp.c
index b4429891e368..22b048a3a91b 100644
--- a/drivers/crypto/mxs-dcp.c
+++ b/drivers/crypto/mxs-dcp.c
@@ -147,6 +147,10 @@ static struct dcp *global_sdcp;
 
 #define MXS_DCP_CONTEXT				0x50
 
+#define MXS_DCP_KEY				0x60
+#define MXS_DCP_KEY_IDX(id, word)		(((id) << 4) | (word))
+#define MXS_DCP_KEYDATA				0x70
+
 #define MXS_DCP_CH_N_CMDPTR(n)			(0x100 + ((n) * 0x40))
 
 #define MXS_DCP_CH_N_SEMA(n)			(0x110 + ((n) * 0x40))
@@ -158,6 +162,7 @@ static struct dcp *global_sdcp;
 #define MXS_DCP_CONTROL0_HASH_TERM		(1 << 13)
 #define MXS_DCP_CONTROL0_HASH_INIT		(1 << 12)
 #define MXS_DCP_CONTROL0_PAYLOAD_KEY		(1 << 11)
+#define MXS_DCP_CONTROL0_OTP_KEY		(1 << 10)
 #define MXS_DCP_CONTROL0_CIPHER_ENCRYPT		(1 << 8)
 #define MXS_DCP_CONTROL0_CIPHER_INIT		(1 << 9)
 #define MXS_DCP_CONTROL0_ENABLE_HASH		(1 << 6)
@@ -222,15 +227,22 @@ static int mxs_dcp_run_aes(struct dcp_async_ctx *actx,
 	struct dcp *sdcp = global_sdcp;
 	struct dcp_dma_desc *desc = &sdcp->coh->desc[actx->chan];
 	struct dcp_aes_req_ctx *rctx = ablkcipher_request_ctx(req);
+	struct crypto_async_request *arq = &req->base;
+	bool key_referenced = !!(crypto_tfm_get_flags(arq->tfm) &
+				 CRYPTO_TFM_REQ_REF_KEY);
+	dma_addr_t src_phys, dst_phys, key_phys = {0};
 	int ret;
 
-	dma_addr_t key_phys = dma_map_single(sdcp->dev, sdcp->coh->aes_key,
-					     2 * AES_KEYSIZE_128,
-					     DMA_TO_DEVICE);
-	dma_addr_t src_phys = dma_map_single(sdcp->dev, sdcp->coh->aes_in_buf,
-					     DCP_BUF_SZ, DMA_TO_DEVICE);
-	dma_addr_t dst_phys = dma_map_single(sdcp->dev, sdcp->coh->aes_out_buf,
-					     DCP_BUF_SZ, DMA_FROM_DEVICE);
+	if (!key_referenced) {
+		key_phys = dma_map_single(sdcp->dev, sdcp->coh->aes_key,
+						     2 * AES_KEYSIZE_128,
+						     DMA_TO_DEVICE);
+	}
+
+	src_phys = dma_map_single(sdcp->dev, sdcp->coh->aes_in_buf,
+				  DCP_BUF_SZ, DMA_TO_DEVICE);
+	dst_phys = dma_map_single(sdcp->dev, sdcp->coh->aes_out_buf,
+				  DCP_BUF_SZ, DMA_FROM_DEVICE);
 
 	if (actx->fill % AES_BLOCK_SIZE) {
 		dev_err(sdcp->dev, "Invalid block size!\n");
@@ -243,8 +255,12 @@ static int mxs_dcp_run_aes(struct dcp_async_ctx *actx,
 		    MXS_DCP_CONTROL0_INTERRUPT |
 		    MXS_DCP_CONTROL0_ENABLE_CIPHER;
 
-	/* Payload contains the key. */
-	desc->control0 |= MXS_DCP_CONTROL0_PAYLOAD_KEY;
+	if (key_referenced) {
+		desc->control0 |= MXS_DCP_CONTROL0_OTP_KEY;
+	} else {
+		/* Payload contains the key. */
+		desc->control0 |= MXS_DCP_CONTROL0_PAYLOAD_KEY;
+	}
 
 	if (rctx->enc)
 		desc->control0 |= MXS_DCP_CONTROL0_CIPHER_ENCRYPT;
@@ -258,18 +274,26 @@ static int mxs_dcp_run_aes(struct dcp_async_ctx *actx,
 	else
 		desc->control1 |= MXS_DCP_CONTROL1_CIPHER_MODE_CBC;
 
+	if (key_referenced)
+		desc->control1 |= sdcp->coh->aes_key[0] << 8;
+
 	desc->next_cmd_addr = 0;
 	desc->source = src_phys;
 	desc->destination = dst_phys;
 	desc->size = actx->fill;
-	desc->payload = key_phys;
+	if (key_referenced)
+		desc->payload = 0;
+	else
+		desc->payload = key_phys;
 	desc->status = 0;
 
 	ret = mxs_dcp_start_dma(actx);
 
 aes_done_run:
-	dma_unmap_single(sdcp->dev, key_phys, 2 * AES_KEYSIZE_128,
-			 DMA_TO_DEVICE);
+	if (!key_referenced) {
+		dma_unmap_single(sdcp->dev, key_phys, 2 * AES_KEYSIZE_128,
+				 DMA_TO_DEVICE);
+	}
 	dma_unmap_single(sdcp->dev, src_phys, DCP_BUF_SZ, DMA_TO_DEVICE);
 	dma_unmap_single(sdcp->dev, dst_phys, DCP_BUF_SZ, DMA_FROM_DEVICE);
 
@@ -498,15 +522,40 @@ static int mxs_dcp_aes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
 			      unsigned int len)
 {
 	struct dcp_async_ctx *actx = crypto_ablkcipher_ctx(tfm);
+	bool key_referenced = !!(crypto_ablkcipher_get_flags(tfm) &
+				 CRYPTO_TFM_REQ_REF_KEY);
 	unsigned int ret;
 
 	/*
-	 * AES 128 is supposed by the hardware, store key into temporary
+	 * AES 128 is supported by the hardware, store key into temporary
 	 * buffer and exit. We must use the temporary buffer here, since
 	 * there can still be an operation in progress.
 	 */
 	actx->key_len = len;
-	if (len == AES_KEYSIZE_128) {
+
+	if (key_referenced) {
+		/*
+		 * If a hardware key is used, no software fallback is possible.
+		 */
+		if (len != AES_KEYSIZE_128)
+			return -EINVAL;
+
+		/*
+		 * DCP supports the following key slots.
+		 */
+		switch (key[0]) {
+		case 0x00:
+		case 0x01:
+		case 0x02:
+		case 0x03:
+		case 0xfe:
+		case 0xff:
+			memcpy(actx->key, key, len);
+			return 0;
+		default:
+			return -EINVAL;
+		}
+	} else if (len == AES_KEYSIZE_128) {
 		memcpy(actx->key, key, len);
 		return 0;
 	}
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
