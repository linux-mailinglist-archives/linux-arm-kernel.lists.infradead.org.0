Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB51C1F26DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDa8ZwSKCOf3cMYUHVX3cvlYS58I09wmx/HGguGMvQI=; b=R+SHuYZlSx8tx2
	M87H2MwnReexK1UDNxi0yXEKpQbbfUgdONXK4ChG03rZKIIi1GjG3h//oUfqED5tXOOdz5nYYzv6W
	elkzSCRbgViFSQkoWg2RwbxbP3RQDgP5yef6q6NyBCm2IgUXltYbbF4rJ0l9eP5Zi4r73DE8IvwwG
	yvy+pjGmf1NT95oBtaMZw6RcwzlN/9Klb6VqlMHlUBIm7VgxbB1+lQXKqfqiij/FzyOVbX7kzaKTO
	zN/ouHaDy38/c0JcjQ+ScDkZUQxHrq6jKRN1O0hEtdjxrcA87VxnbntUyeEB5EgRTw3s71gdp8Vrb
	/sIzUsMDDw8NKX//E22A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRT5-0001Vz-IY; Mon, 08 Jun 2020 23:46:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR5N-0001Q0-0H
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:21:56 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC2892072F;
 Mon,  8 Jun 2020 23:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658504;
 bh=Yt4ktiABSZjT7Qsxewvm7RIKat6MF4nc+GNMq05JEII=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dLt4WmamlPj5behehNIAMMowfFI17Wr8/j4jsSESHFR3PGfni5/SbIcYKKMl9bnhT
 rHDancLB3WA9XDH+FX78SeE2g80dxQWDiKfjLPW8Kfqi7P//gvOa0hq0uDjGUkfBzP
 NxIj+fG+JgAYTHD6TmqoL5fcUoKj2+ChzQi6427c=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 135/175] crypto: stm32/crc32 - fix ext4 chksum
 BUG_ON()
Date: Mon,  8 Jun 2020 19:18:08 -0400
Message-Id: <20200608231848.3366970-135-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231848.3366970-1-sashal@kernel.org>
References: <20200608231848.3366970-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_162145_134511_314E24BE 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>,
 Nicolas Toromanoff <nicolas.toromanoff@st.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-crypto@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nicolas Toromanoff <nicolas.toromanoff@st.com>

[ Upstream commit 49c2c082e00e0bc4f5cbb7c21c7f0f873b35ab09 ]

Allow use of crc_update without prior call to crc_init.
And change (and fix) driver to use CRC device even on unaligned buffers.

Fixes: b51dbe90912a ("crypto: stm32 - Support for STM32 CRC32 crypto module")

Signed-off-by: Nicolas Toromanoff <nicolas.toromanoff@st.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/crypto/stm32/stm32-crc32.c | 98 +++++++++++++++---------------
 1 file changed, 48 insertions(+), 50 deletions(-)

diff --git a/drivers/crypto/stm32/stm32-crc32.c b/drivers/crypto/stm32/stm32-crc32.c
index 9e11c3480353..17b371eacd57 100644
--- a/drivers/crypto/stm32/stm32-crc32.c
+++ b/drivers/crypto/stm32/stm32-crc32.c
@@ -28,8 +28,10 @@
 
 /* Registers values */
 #define CRC_CR_RESET            BIT(0)
-#define CRC_CR_REVERSE          (BIT(7) | BIT(6) | BIT(5))
 #define CRC_INIT_DEFAULT        0xFFFFFFFF
+#define CRC_CR_REV_IN_WORD      (BIT(6) | BIT(5))
+#define CRC_CR_REV_IN_BYTE      BIT(5)
+#define CRC_CR_REV_OUT          BIT(7)
 
 #define CRC_AUTOSUSPEND_DELAY	50
 
@@ -38,8 +40,6 @@ struct stm32_crc {
 	struct device    *dev;
 	void __iomem     *regs;
 	struct clk       *clk;
-	u8               pending_data[sizeof(u32)];
-	size_t           nb_pending_bytes;
 };
 
 struct stm32_crc_list {
@@ -59,7 +59,6 @@ struct stm32_crc_ctx {
 
 struct stm32_crc_desc_ctx {
 	u32    partial; /* crc32c: partial in first 4 bytes of that struct */
-	struct stm32_crc *crc;
 };
 
 static int stm32_crc32_cra_init(struct crypto_tfm *tfm)
@@ -101,25 +100,22 @@ static int stm32_crc_init(struct shash_desc *desc)
 	struct stm32_crc *crc;
 
 	spin_lock_bh(&crc_list.lock);
-	list_for_each_entry(crc, &crc_list.dev_list, list) {
-		ctx->crc = crc;
-		break;
-	}
+	crc = list_first_entry(&crc_list.dev_list, struct stm32_crc, list);
 	spin_unlock_bh(&crc_list.lock);
 
-	pm_runtime_get_sync(ctx->crc->dev);
+	pm_runtime_get_sync(crc->dev);
 
 	/* Reset, set key, poly and configure in bit reverse mode */
-	writel_relaxed(bitrev32(mctx->key), ctx->crc->regs + CRC_INIT);
-	writel_relaxed(bitrev32(mctx->poly), ctx->crc->regs + CRC_POL);
-	writel_relaxed(CRC_CR_RESET | CRC_CR_REVERSE, ctx->crc->regs + CRC_CR);
+	writel_relaxed(bitrev32(mctx->key), crc->regs + CRC_INIT);
+	writel_relaxed(bitrev32(mctx->poly), crc->regs + CRC_POL);
+	writel_relaxed(CRC_CR_RESET | CRC_CR_REV_IN_WORD | CRC_CR_REV_OUT,
+		       crc->regs + CRC_CR);
 
 	/* Store partial result */
-	ctx->partial = readl_relaxed(ctx->crc->regs + CRC_DR);
-	ctx->crc->nb_pending_bytes = 0;
+	ctx->partial = readl_relaxed(crc->regs + CRC_DR);
 
-	pm_runtime_mark_last_busy(ctx->crc->dev);
-	pm_runtime_put_autosuspend(ctx->crc->dev);
+	pm_runtime_mark_last_busy(crc->dev);
+	pm_runtime_put_autosuspend(crc->dev);
 
 	return 0;
 }
@@ -128,31 +124,49 @@ static int stm32_crc_update(struct shash_desc *desc, const u8 *d8,
 			    unsigned int length)
 {
 	struct stm32_crc_desc_ctx *ctx = shash_desc_ctx(desc);
-	struct stm32_crc *crc = ctx->crc;
-	u32 *d32;
-	unsigned int i;
+	struct stm32_crc_ctx *mctx = crypto_shash_ctx(desc->tfm);
+	struct stm32_crc *crc;
+
+	spin_lock_bh(&crc_list.lock);
+	crc = list_first_entry(&crc_list.dev_list, struct stm32_crc, list);
+	spin_unlock_bh(&crc_list.lock);
 
 	pm_runtime_get_sync(crc->dev);
 
-	if (unlikely(crc->nb_pending_bytes)) {
-		while (crc->nb_pending_bytes != sizeof(u32) && length) {
-			/* Fill in pending data */
-			crc->pending_data[crc->nb_pending_bytes++] = *(d8++);
+	/*
+	 * Restore previously calculated CRC for this context as init value
+	 * Restore polynomial configuration
+	 * Configure in register for word input data,
+	 * Configure out register in reversed bit mode data.
+	 */
+	writel_relaxed(bitrev32(ctx->partial), crc->regs + CRC_INIT);
+	writel_relaxed(bitrev32(mctx->poly), crc->regs + CRC_POL);
+	writel_relaxed(CRC_CR_RESET | CRC_CR_REV_IN_WORD | CRC_CR_REV_OUT,
+		       crc->regs + CRC_CR);
+
+	if (d8 != PTR_ALIGN(d8, sizeof(u32))) {
+		/* Configure for byte data */
+		writel_relaxed(CRC_CR_REV_IN_BYTE | CRC_CR_REV_OUT,
+			       crc->regs + CRC_CR);
+		while (d8 != PTR_ALIGN(d8, sizeof(u32)) && length) {
+			writeb_relaxed(*d8++, crc->regs + CRC_DR);
 			length--;
 		}
-
-		if (crc->nb_pending_bytes == sizeof(u32)) {
-			/* Process completed pending data */
-			writel_relaxed(*(u32 *)crc->pending_data,
-				       crc->regs + CRC_DR);
-			crc->nb_pending_bytes = 0;
-		}
+		/* Configure for word data */
+		writel_relaxed(CRC_CR_REV_IN_WORD | CRC_CR_REV_OUT,
+			       crc->regs + CRC_CR);
 	}
 
-	d32 = (u32 *)d8;
-	for (i = 0; i < length >> 2; i++)
-		/* Process 32 bits data */
-		writel_relaxed(*(d32++), crc->regs + CRC_DR);
+	for (; length >= sizeof(u32); d8 += sizeof(u32), length -= sizeof(u32))
+		writel_relaxed(*((u32 *)d8), crc->regs + CRC_DR);
+
+	if (length) {
+		/* Configure for byte data */
+		writel_relaxed(CRC_CR_REV_IN_BYTE | CRC_CR_REV_OUT,
+			       crc->regs + CRC_CR);
+		while (length--)
+			writeb_relaxed(*d8++, crc->regs + CRC_DR);
+	}
 
 	/* Store partial result */
 	ctx->partial = readl_relaxed(crc->regs + CRC_DR);
@@ -160,22 +174,6 @@ static int stm32_crc_update(struct shash_desc *desc, const u8 *d8,
 	pm_runtime_mark_last_busy(crc->dev);
 	pm_runtime_put_autosuspend(crc->dev);
 
-	/* Check for pending data (non 32 bits) */
-	length &= 3;
-	if (likely(!length))
-		return 0;
-
-	if ((crc->nb_pending_bytes + length) >= sizeof(u32)) {
-		/* Shall not happen */
-		dev_err(crc->dev, "Pending data overflow\n");
-		return -EINVAL;
-	}
-
-	d8 = (const u8 *)d32;
-	for (i = 0; i < length; i++)
-		/* Store pending data */
-		crc->pending_data[crc->nb_pending_bytes++] = *(d8++);
-
 	return 0;
 }
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
