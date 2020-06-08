Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 438EB1F23F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:18:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lIiXQBYEJuIZa24kFF0geUAfluPXW2MYDquUpuWStJg=; b=kNG9/08409yAtR
	Q8jF1VASXcOTPhpAxItw9WjvlvynqTWRZN2ZPfFL8BBDrunrug/Q7+MlNy4ZmC0Wc02z+sn0cT9tP
	gXfvHu8MXHUuwXzLMbCWbc5IHDK0VuMiN6ehiIs51yFb0A+RI3rgwzjYkEXFM0oeralwuiZrw5+NE
	cziHPEbpUqA15vu3Y0/n669DrJlDuCOsebvr+0lBzyT0tiy7s3wPyjxgd75racpl4KzfxTopFcYch
	FdzxBmLNpyUt9li+HUuUNbRxZUvx0UFoyTGkxBp3Vr4IvYYxbMIsIw/iYEHZR4nnobWWJd//+j3TR
	P3RiL4URwHlKNlK/ivaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiR21-0004aV-1T; Mon, 08 Jun 2020 23:18:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQuL-0003pI-8G; Mon, 08 Jun 2020 23:10:23 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 30931208B8;
 Mon,  8 Jun 2020 23:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657820;
 bh=wwX3oMSrctskPbGkvudSONYgRfHBUkGW7Urvxsugfos=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QsVV9tZcHDRoGkUFwAUS3YCpoybfjeEge99/f7AnUG/ZrAkMd8t45OFEaUyMvy1dz
 4Af1PGKLppJ5LpRYphJ7ENVmgUTHWJqlc6PA8BamO7fDhk8oxyoPY9H7AnGBs570Vq
 sKUCBTuFB9uhdfxWy5dwG4QecFxhclyQ1q1zCcCo=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 193/274] mt76: mt7663: fix DMA unmap length
Date: Mon,  8 Jun 2020 19:04:46 -0400
Message-Id: <20200608230607.3361041-193-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161021_501665_F92E3B06 
X-CRM114-Status: GOOD (  11.50  )
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-wireless@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Soul Huang <soul.huang@mediatek.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lorenzo Bianconi <lorenzo@kernel.org>

[ Upstream commit 89829c9e65ab680f7e5a1658cb74bc6316ab036e ]

Fix DMA unmap length for mt7663e devices in mt7615_txp_skb_unmap_hw

Fixes: f40ac0f3d3c0 ("mt76: mt7615: introduce mt7663e support")
Co-developed-by: Sean Wang <sean.wang@mediatek.com>
Signed-off-by: Sean Wang <sean.wang@mediatek.com>
Co-developed-by: Soul Huang <soul.huang@mediatek.com>
Signed-off-by: Soul Huang <soul.huang@mediatek.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../net/wireless/mediatek/mt76/mt7615/mac.c   | 20 +++++++++++++------
 .../net/wireless/mediatek/mt76/mt7615/mac.h   |  2 ++
 2 files changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
index b5249d08564c..f66b76ff2978 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
@@ -666,15 +666,18 @@ mt7615_txp_skb_unmap_fw(struct mt76_dev *dev, struct mt7615_fw_txp *txp)
 static void
 mt7615_txp_skb_unmap_hw(struct mt76_dev *dev, struct mt7615_hw_txp *txp)
 {
+	u32 last_mask;
 	int i;
 
+	last_mask = is_mt7663(dev) ? MT_TXD_LEN_LAST : MT_TXD_LEN_MSDU_LAST;
+
 	for (i = 0; i < ARRAY_SIZE(txp->ptr); i++) {
 		struct mt7615_txp_ptr *ptr = &txp->ptr[i];
 		bool last;
 		u16 len;
 
 		len = le16_to_cpu(ptr->len0);
-		last = len & MT_TXD_LEN_MSDU_LAST;
+		last = len & last_mask;
 		len &= MT_TXD_LEN_MASK;
 		dma_unmap_single(dev->dev, le32_to_cpu(ptr->buf0), len,
 				 DMA_TO_DEVICE);
@@ -682,7 +685,7 @@ mt7615_txp_skb_unmap_hw(struct mt76_dev *dev, struct mt7615_hw_txp *txp)
 			break;
 
 		len = le16_to_cpu(ptr->len1);
-		last = len & MT_TXD_LEN_MSDU_LAST;
+		last = len & last_mask;
 		len &= MT_TXD_LEN_MASK;
 		dma_unmap_single(dev->dev, le32_to_cpu(ptr->buf1), len,
 				 DMA_TO_DEVICE);
@@ -1098,21 +1101,26 @@ mt7615_write_hw_txp(struct mt7615_dev *dev, struct mt76_tx_info *tx_info,
 {
 	struct mt7615_hw_txp *txp = txp_ptr;
 	struct mt7615_txp_ptr *ptr = &txp->ptr[0];
-	int nbuf = tx_info->nbuf - 1;
-	int i;
+	int i, nbuf = tx_info->nbuf - 1;
+	u32 last_mask;
 
 	tx_info->buf[0].len = MT_TXD_SIZE + sizeof(*txp);
 	tx_info->nbuf = 1;
 
 	txp->msdu_id[0] = cpu_to_le16(id | MT_MSDU_ID_VALID);
 
+	if (is_mt7663(&dev->mt76))
+		last_mask = MT_TXD_LEN_LAST;
+	else
+		last_mask = MT_TXD_LEN_AMSDU_LAST |
+			    MT_TXD_LEN_MSDU_LAST;
+
 	for (i = 0; i < nbuf; i++) {
 		u16 len = tx_info->buf[i + 1].len & MT_TXD_LEN_MASK;
 		u32 addr = tx_info->buf[i + 1].addr;
 
 		if (i == nbuf - 1)
-			len |= MT_TXD_LEN_MSDU_LAST |
-			       MT_TXD_LEN_AMSDU_LAST;
+			len |= last_mask;
 
 		if (i & 1) {
 			ptr->buf1 = cpu_to_le32(addr);
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.h b/drivers/net/wireless/mediatek/mt76/mt7615/mac.h
index 53ac184ab2d6..d3da40df7f32 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.h
@@ -255,6 +255,8 @@ enum tx_phy_bandwidth {
 #define MT_TXD_LEN_MASK			GENMASK(11, 0)
 #define MT_TXD_LEN_MSDU_LAST		BIT(14)
 #define MT_TXD_LEN_AMSDU_LAST		BIT(15)
+/* mt7663 */
+#define MT_TXD_LEN_LAST			BIT(15)
 
 struct mt7615_txp_ptr {
 	__le32 buf0;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
