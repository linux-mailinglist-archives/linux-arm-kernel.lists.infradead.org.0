Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2137FFAA0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 17:08:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BqKVkFTtWXn38lX7eWKvn4zYeR6oVw05SbLxLgremGo=; b=VaP3H64s1Q4F+S
	p0xklB2CeAnCf1+cynPyXakljhEM9GV7gkDtXT+CaPv3WYUeMCETvQjPQmRCLQpT8WTaZ3StLbe05
	ab9/7qpQ+a5IHxdhqxjXfLgq+ro3enT/Q6Ml3uAupW2wNMgx/30KnPaIf3Llq5cG+poorktwaHHyP
	LhKgcYp4WRbrLss6X9wqOHucx45R5ddM4iQfEc87KnL6wDu1L0TeIuM6xMFW1oTUoRV0NkcRbqyJS
	+p7iGX0TF3Ry0W0PfKj4HWkVwlT8Vh/7xxHxKXrKEk+WmzlDuSTDgROSfqDVpq9jLxezOVzkkA30b
	aGKNZI2fRYc0r4aXrikQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWN5n-0002EO-Uc; Sun, 17 Nov 2019 16:08:03 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWN5e-0002Dg-Ga
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 16:07:56 +0000
Received: by mail-wr1-x443.google.com with SMTP id z10so16553212wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 17 Nov 2019 08:07:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3ZfuFAz9i7eipM0Ww7pnmorkcOiDa7xzRC8FduXZgjg=;
 b=DNSDbdPHmy5xZPJPbG6wCk5AKQstG/YcSuLATZewIeg/wyV3o2TvqAHibr3blWGTAg
 yeFr+03gdbeArSnM2RFZrEbTZT7Qq1GYx6k0jme4TQzu75tY2tnxtRj7gwxXc26dPA7w
 FIG2QpsiJZGmtZ72FGzK/ZWkPuZvs3yq6vIgrN08z3SdZGfsrBwxC1NljL54euWxikt/
 G6KRGuGEZ4A7Ng4wa+Y2NVjv3ZLha3GIEU+hBlFjJ54S48jfzBC4mkZ46SP7sYXT62N3
 smT9ztlH1U+Bit8r0WjSXaai10kVroMj7CWx8xNRPp/GBbUmcywM/rAIqlith64d5ezr
 atew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3ZfuFAz9i7eipM0Ww7pnmorkcOiDa7xzRC8FduXZgjg=;
 b=d9GPBemypBUtRwOi8hgovV4wvOxWZK/xMdnJd0JdSD15MoFZsOH0bxatRsiKX/C0lc
 Y8Q1uvLrBgXKrKFsFxQ8pF++8kUQbcJi3HATP29fHPZ77qfg+qNVyXfuwDy32bv5lhzS
 ukPZoE2zH0AJtL5aVban9Rt3vtxW+JFvjUu9F7koQ73eDHvXH5YOKG8+tlF7W7muyNH/
 GNdFixP7GcWnMds/fsMIdewwrylkP+rKWwMFdK4Q9gM7GwQ7McmiA3i/kjJ8now3XpFl
 IuQ9FHm/oM5XqsRZxKNhABAqWSi5zAT2SQ26f6zePamERV13hWLt99Gsd40E42pFov03
 zR0g==
X-Gm-Message-State: APjAAAUsZ7SXiFSBM/t0dTTZQe3sSlibsE03tRS7FhZimyvh87kd3gbD
 QXFtpJNqbl7fl3W/1k5+UJw=
X-Google-Smtp-Source: APXvYqxRoa5u/ttV4Rk72n7ofhq/PCWlE8ojnC2DDYLZCRCyx7oQ4nfIBiXuztaoLUJCHuNxPUt0ow==
X-Received: by 2002:a05:6000:354:: with SMTP id
 e20mr28087903wre.17.1574006869853; 
 Sun, 17 Nov 2019 08:07:49 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id a5sm19017916wrv.56.2019.11.17.08.07.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 08:07:49 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH] crypto: allwinner: sun8i-ce: enable working on big endian
Date: Sun, 17 Nov 2019 17:07:45 +0100
Message-Id: <20191117160745.32197-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_080754_576471_111905CE 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On big endian kernel, the sun8i-ce crypto driver does not works.
This patch do the necessary modification to permit it to work on BE
kernel (setting descriptor entries as __le32 and adding some cpu_to_le32)

Fixes: 06f751b61329 ("crypto: allwinner - Add sun8i-ce Crypto Engine")
Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 .../allwinner/sun8i-ce/sun8i-ce-cipher.c      | 50 +++++++++++--------
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h  | 24 ++++-----
 2 files changed, 40 insertions(+), 34 deletions(-)

diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
index b6e7c346c3ae..37d0b6c386a0 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
@@ -90,7 +90,9 @@ static int sun8i_ce_cipher(struct skcipher_request *areq)
 	struct ce_task *cet;
 	struct scatterlist *sg;
 	unsigned int todo, len, offset, ivsize;
+	dma_addr_t addr_iv = 0, addr_key = 0;
 	void *backup_iv = NULL;
+	u32 common, sym;
 	int flow, i;
 	int nr_sgs = 0;
 	int nr_sgd = 0;
@@ -115,28 +117,31 @@ static int sun8i_ce_cipher(struct skcipher_request *areq)
 	cet = chan->tl;
 	memset(cet, 0, sizeof(struct ce_task));
 
-	cet->t_id = flow;
-	cet->t_common_ctl = ce->variant->alg_cipher[algt->ce_algo_id];
-	cet->t_common_ctl |= rctx->op_dir | CE_COMM_INT;
-	cet->t_dlen = areq->cryptlen / 4;
+	cet->t_id = cpu_to_le32(flow);
+	common = ce->variant->alg_cipher[algt->ce_algo_id];
+	common |= rctx->op_dir | CE_COMM_INT;
+	cet->t_common_ctl = cpu_to_le32(common);
 	/* CTS and recent CE (H6) need length in bytes, in word otherwise */
 	if (ce->variant->has_t_dlen_in_bytes)
-		cet->t_dlen = areq->cryptlen;
+		cet->t_dlen = cpu_to_le32(areq->cryptlen);
+	else
+		cet->t_dlen = cpu_to_le32(areq->cryptlen / 4);
 
-	cet->t_sym_ctl = ce->variant->op_mode[algt->ce_blockmode];
+	sym = ce->variant->op_mode[algt->ce_blockmode];
 	len = op->keylen;
 	switch (len) {
 	case 128 / 8:
-		cet->t_sym_ctl |= CE_AES_128BITS;
+		sym |= CE_AES_128BITS;
 		break;
 	case 192 / 8:
-		cet->t_sym_ctl |= CE_AES_192BITS;
+		sym |= CE_AES_192BITS;
 		break;
 	case 256 / 8:
-		cet->t_sym_ctl |= CE_AES_256BITS;
+		sym |= CE_AES_256BITS;
 		break;
 	}
 
+	cet->t_sym_ctl = cpu_to_le32(sym);
 	cet->t_asym_ctl = 0;
 
 	chan->op_mode = ce->variant->op_mode[algt->ce_blockmode];
@@ -144,9 +149,9 @@ static int sun8i_ce_cipher(struct skcipher_request *areq)
 	chan->method = ce->variant->alg_cipher[algt->ce_algo_id];
 	chan->keylen = op->keylen;
 
-	cet->t_key = dma_map_single(ce->dev, op->key, op->keylen,
-				    DMA_TO_DEVICE);
-	if (dma_mapping_error(ce->dev, cet->t_key)) {
+	addr_key = dma_map_single(ce->dev, op->key, op->keylen, DMA_TO_DEVICE);
+	cet->t_key = cpu_to_le32(addr_key);
+	if (dma_mapping_error(ce->dev, addr_key)) {
 		dev_err(ce->dev, "Cannot DMA MAP KEY\n");
 		err = -EFAULT;
 		goto theend;
@@ -171,9 +176,10 @@ static int sun8i_ce_cipher(struct skcipher_request *areq)
 						 ivsize, 0);
 		}
 		memcpy(chan->bounce_iv, areq->iv, ivsize);
-		cet->t_iv = dma_map_single(ce->dev, chan->bounce_iv,
-					   chan->ivlen, DMA_TO_DEVICE);
-		if (dma_mapping_error(ce->dev, cet->t_iv)) {
+		addr_iv = dma_map_single(ce->dev, chan->bounce_iv, chan->ivlen,
+					 DMA_TO_DEVICE);
+		cet->t_iv = cpu_to_le32(addr_iv);
+		if (dma_mapping_error(ce->dev, addr_iv)) {
 			dev_err(ce->dev, "Cannot DMA MAP IV\n");
 			err = -ENOMEM;
 			goto theend_iv;
@@ -208,9 +214,9 @@ static int sun8i_ce_cipher(struct skcipher_request *areq)
 
 	len = areq->cryptlen;
 	for_each_sg(areq->src, sg, nr_sgs, i) {
-		cet->t_src[i].addr = sg_dma_address(sg);
+		cet->t_src[i].addr = cpu_to_le32(sg_dma_address(sg));
 		todo = min(len, sg_dma_len(sg));
-		cet->t_src[i].len = todo / 4;
+		cet->t_src[i].len = cpu_to_le32(todo / 4);
 		dev_dbg(ce->dev, "%s total=%u SG(%d %u off=%d) todo=%u\n", __func__,
 			areq->cryptlen, i, cet->t_src[i].len, sg->offset, todo);
 		len -= todo;
@@ -223,9 +229,9 @@ static int sun8i_ce_cipher(struct skcipher_request *areq)
 
 	len = areq->cryptlen;
 	for_each_sg(areq->dst, sg, nr_sgd, i) {
-		cet->t_dst[i].addr = sg_dma_address(sg);
+		cet->t_dst[i].addr = cpu_to_le32(sg_dma_address(sg));
 		todo = min(len, sg_dma_len(sg));
-		cet->t_dst[i].len = todo / 4;
+		cet->t_dst[i].len = cpu_to_le32(todo / 4);
 		dev_dbg(ce->dev, "%s total=%u SG(%d %u off=%d) todo=%u\n", __func__,
 			areq->cryptlen, i, cet->t_dst[i].len, sg->offset, todo);
 		len -= todo;
@@ -250,8 +256,8 @@ static int sun8i_ce_cipher(struct skcipher_request *areq)
 
 theend_iv:
 	if (areq->iv && ivsize > 0) {
-		if (cet->t_iv)
-			dma_unmap_single(ce->dev, cet->t_iv, chan->ivlen,
+		if (addr_iv)
+			dma_unmap_single(ce->dev, addr_iv, chan->ivlen,
 					 DMA_TO_DEVICE);
 		offset = areq->cryptlen - ivsize;
 		if (rctx->op_dir & CE_DECRYPTION) {
@@ -265,7 +271,7 @@ static int sun8i_ce_cipher(struct skcipher_request *areq)
 	}
 
 theend_key:
-	dma_unmap_single(ce->dev, cet->t_key, op->keylen, DMA_TO_DEVICE);
+	dma_unmap_single(ce->dev, addr_key, op->keylen, DMA_TO_DEVICE);
 
 theend:
 	return err;
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
index c6ddad3393ed..43db49ceafe4 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
@@ -103,8 +103,8 @@ struct ce_variant {
 };
 
 struct sginfo {
-	u32 addr;
-	u32 len;
+	__le32 addr;
+	__le32 len;
 } __packed;
 
 /*
@@ -112,18 +112,18 @@ struct sginfo {
  * The structure of this descriptor could be found in the datasheet
  */
 struct ce_task {
-	u32 t_id;
-	u32 t_common_ctl;
-	u32 t_sym_ctl;
-	u32 t_asym_ctl;
-	u32 t_key;
-	u32 t_iv;
-	u32 t_ctr;
-	u32 t_dlen;
+	__le32 t_id;
+	__le32 t_common_ctl;
+	__le32 t_sym_ctl;
+	__le32 t_asym_ctl;
+	__le32 t_key;
+	__le32 t_iv;
+	__le32 t_ctr;
+	__le32 t_dlen;
 	struct sginfo t_src[MAX_SG];
 	struct sginfo t_dst[MAX_SG];
-	u32 next;
-	u32 reserved[3];
+	__le32 next;
+	__le32 reserved[3];
 } __packed __aligned(8);
 
 /*
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
