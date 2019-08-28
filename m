Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 058939FAAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 08:38:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hS+0juf53hXBoIZX17vSjlLFbnSBUNCxFT7MUJPBC1I=; b=bkLqdbGh+nyG5Z
	29LJfUJf/YBuoblGNThUVNSMfirFQ2JVpTcBrJeTbnX7LIT0w7/pljeb0mecS8r/mwn1arwy1Im+J
	eX6K69QX4iK1ss5DxUwaBgEJJrsM5f9gUmsRp+43Br86R1PE08G1u8dTCEPTciDzYIli0pUL3NJhT
	edDzmTlOEtfmbBz/bP7ilOquNmXgntPkNSxe2eaiDnpKqhfR22TqrejUC2VbiRDExIuY/0AXe7vR6
	KVAoSWNFQik4UtK58dcvL6nxE/oDcfv8gQg87+qmewFdAxLZstS6ue1gvAh+oCphV2KpgnBIDBjip
	zGibajPS7nQ5rTADXhgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2rbb-00013h-IR; Wed, 28 Aug 2019 06:38:55 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2raI-0008Ul-P3; Wed, 28 Aug 2019 06:37:36 +0000
X-UUID: 5f062449cab745d7a271b0ec7bc02c23-20190827
X-UUID: 5f062449cab745d7a271b0ec7bc02c23-20190827
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <vic.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 168680646; Tue, 27 Aug 2019 22:37:33 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 27 Aug 2019 23:37:31 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 14:37:29 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 28 Aug 2019 14:37:29 +0800
From: Vic Wu <vic.wu@mediatek.com>
To: Herbert Xu <herbert@gondor.apana.org.au>
Subject: [PATCH 4/5] crypto: mediatek: add support to OFB/CFB mode
Date: Wed, 28 Aug 2019 14:37:15 +0800
Message-ID: <20190828063716.22689-4-vic.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190828063716.22689-1-vic.wu@mediatek.com>
References: <20190828063716.22689-1-vic.wu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 35CDEC2E700C3C70C1FFCDB3BFD448C152E15438D182B8786A1F96DEDA58D39F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_233734_837137_46C06B0D 
X-CRM114-Status: GOOD (  10.94  )
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

This patch adds support to OFB/CFB mode.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
Signed-off-by: Vic Wu <vic.wu@mediatek.com>
---
 drivers/crypto/mediatek/mtk-aes.c | 85 ++++++++++++++++++++++++++++---
 1 file changed, 78 insertions(+), 7 deletions(-)

diff --git a/drivers/crypto/mediatek/mtk-aes.c b/drivers/crypto/mediatek/mtk-aes.c
index 425d7f3f..9eeb8b8d 100644
--- a/drivers/crypto/mediatek/mtk-aes.c
+++ b/drivers/crypto/mediatek/mtk-aes.c
@@ -25,7 +25,7 @@
 
 #define AES_CT_CTRL_HDR		cpu_to_le32(0x00220000)
 
-/* AES-CBC/ECB/CTR command token */
+/* AES-CBC/ECB/CTR/OFB/CFB command token */
 #define AES_CMD0		cpu_to_le32(0x05000000)
 #define AES_CMD1		cpu_to_le32(0x2d060000)
 #define AES_CMD2		cpu_to_le32(0xe4a63806)
@@ -52,6 +52,8 @@
 /* AES transform information word 1 fields */
 #define AES_TFM_ECB		cpu_to_le32(0x0 << 0)
 #define AES_TFM_CBC		cpu_to_le32(0x1 << 0)
+#define AES_TFM_OFB		cpu_to_le32(0x4 << 0)
+#define AES_TFM_CFB128		cpu_to_le32(0x5 << 0)
 #define AES_TFM_CTR_INIT	cpu_to_le32(0x2 << 0)	/* init counter to 1 */
 #define AES_TFM_CTR_LOAD	cpu_to_le32(0x6 << 0)	/* load/reuse counter */
 #define AES_TFM_3IV		cpu_to_le32(0x7 << 5)	/* using IV 0-2 */
@@ -60,13 +62,15 @@
 #define AES_TFM_ENC_HASH	cpu_to_le32(0x1 << 17)
 
 /* AES flags */
-#define AES_FLAGS_CIPHER_MSK	GENMASK(2, 0)
+#define AES_FLAGS_CIPHER_MSK	GENMASK(4, 0)
 #define AES_FLAGS_ECB		BIT(0)
 #define AES_FLAGS_CBC		BIT(1)
 #define AES_FLAGS_CTR		BIT(2)
-#define AES_FLAGS_GCM		BIT(3)
-#define AES_FLAGS_ENCRYPT	BIT(4)
-#define AES_FLAGS_BUSY		BIT(5)
+#define AES_FLAGS_OFB		BIT(3)
+#define AES_FLAGS_CFB128	BIT(4)
+#define AES_FLAGS_GCM		BIT(5)
+#define AES_FLAGS_ENCRYPT	BIT(6)
+#define AES_FLAGS_BUSY		BIT(7)
 
 #define AES_AUTH_TAG_ERR	cpu_to_le32(BIT(26))
 
@@ -412,7 +416,7 @@ exit:
 	return mtk_aes_complete(cryp, aes, -EINVAL);
 }
 
-/* Initialize transform information of CBC/ECB/CTR mode */
+/* Initialize transform information of CBC/ECB/CTR/OFB/CFB mode */
 static void mtk_aes_info_init(struct mtk_cryp *cryp, struct mtk_aes_rec *aes,
 			      size_t len)
 {
@@ -441,7 +445,12 @@ static void mtk_aes_info_init(struct mtk_cryp *cryp, struct mtk_aes_rec *aes,
 	case AES_FLAGS_CTR:
 		info->tfm[1] = AES_TFM_CTR_LOAD;
 		goto ctr;
-
+	case AES_FLAGS_OFB:
+		info->tfm[1] = AES_TFM_OFB;
+		break;
+	case AES_FLAGS_CFB128:
+		info->tfm[1] = AES_TFM_CFB128;
+		break;
 	default:
 		/* Should not happen... */
 		return;
@@ -704,6 +713,26 @@ static int mtk_aes_ctr_decrypt(struct ablkcipher_request *req)
 	return mtk_aes_crypt(req, AES_FLAGS_CTR);
 }
 
+static int mtk_aes_ofb_encrypt(struct ablkcipher_request *req)
+{
+	return mtk_aes_crypt(req, AES_FLAGS_ENCRYPT | AES_FLAGS_OFB);
+}
+
+static int mtk_aes_ofb_decrypt(struct ablkcipher_request *req)
+{
+	return mtk_aes_crypt(req, AES_FLAGS_OFB);
+}
+
+static int mtk_aes_cfb_encrypt(struct ablkcipher_request *req)
+{
+	return mtk_aes_crypt(req, AES_FLAGS_ENCRYPT | AES_FLAGS_CFB128);
+}
+
+static int mtk_aes_cfb_decrypt(struct ablkcipher_request *req)
+{
+	return mtk_aes_crypt(req, AES_FLAGS_CFB128);
+}
+
 static int mtk_aes_cra_init(struct crypto_tfm *tfm)
 {
 	struct mtk_aes_ctx *ctx = crypto_tfm_ctx(tfm);
@@ -785,6 +814,48 @@ static struct crypto_alg aes_algs[] = {
 		.decrypt	= mtk_aes_ctr_decrypt,
 	}
 },
+{
+	.cra_name		= "ofb(aes)",
+	.cra_driver_name	= "ofb-aes-mtk",
+	.cra_priority		= 400,
+	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
+				  CRYPTO_ALG_ASYNC,
+	.cra_init		= mtk_aes_cra_init,
+	.cra_blocksize		= 1,
+	.cra_ctxsize		= sizeof(struct mtk_aes_ctx),
+	.cra_alignmask		= 0xf,
+	.cra_type		= &crypto_ablkcipher_type,
+	.cra_module		= THIS_MODULE,
+	.cra_u.ablkcipher = {
+		.min_keysize	= AES_MIN_KEY_SIZE,
+		.max_keysize	= AES_MAX_KEY_SIZE,
+		.ivsize		= AES_BLOCK_SIZE,
+		.setkey		= mtk_aes_setkey,
+		.encrypt	= mtk_aes_ofb_encrypt,
+		.decrypt	= mtk_aes_ofb_decrypt,
+	}
+},
+{
+	.cra_name		= "cfb(aes)",
+	.cra_driver_name	= "cfb-aes-mtk",
+	.cra_priority		= 400,
+	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
+				  CRYPTO_ALG_ASYNC,
+	.cra_init		= mtk_aes_cra_init,
+	.cra_blocksize		= 1,
+	.cra_ctxsize		= sizeof(struct mtk_aes_ctx),
+	.cra_alignmask		= 0xf,
+	.cra_type		= &crypto_ablkcipher_type,
+	.cra_module		= THIS_MODULE,
+	.cra_u.ablkcipher = {
+		.min_keysize	= AES_MIN_KEY_SIZE,
+		.max_keysize	= AES_MAX_KEY_SIZE,
+		.ivsize		= AES_BLOCK_SIZE,
+		.setkey		= mtk_aes_setkey,
+		.encrypt	= mtk_aes_cfb_encrypt,
+		.decrypt	= mtk_aes_cfb_decrypt,
+	}
+},
 };
 
 static inline struct mtk_aes_gcm_ctx *
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
