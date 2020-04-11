Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC6B1A55EA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 01:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0csxDAczuxGS6BwPGJQ5yECdz+eaeqze8wgrewPb/Kg=; b=K7r1776U9e+DPZ
	3Zph4leDkI/z/oTb3CeDlXD5B3Ammh716QH69KOG1BqllnlO8m57MmuzP/HkpcSZCYBiimHdGOujb
	U8n1bVcEQVvfMnQw7iA45usgBF7kztaP6eE23OHNuXCKR9NPFFANuqbvCyRFRfsu2H37ytqDUy6tZ
	xh7ysg/4Y4KQLfWsxLQ2guHnXvpzKiIpHD7qNLUs2KWXNcqCd16iZQfhcDaWZt+iOG7EMKLbNywjL
	hVr5wAHp2sTDlzVOln8mEwDHszrq3RaRV2QDuEUPZc6kWY57cM2Q9sc+FZCCpWAtdq/YUTHyWotKn
	+PotuaXnVgmlXPTban+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNPJX-0000SN-06; Sat, 11 Apr 2020 23:13:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNPEj-0002Yt-Ry; Sat, 11 Apr 2020 23:08:35 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5AAD021835;
 Sat, 11 Apr 2020 23:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586646509;
 bh=s4vRQIJwcxkL6l2FldF0HlhnWS37JsVCYYVOD5lTqjw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=N6QS8TvnS9OwRHruvz1jucCejeZVVfT5XzVdxONzKn2LYtJYnAWWo5ql/AFtcLaN1
 +jVi3wxGev2iaa7PVd5Mqm5SLRZcro1D4hawq0outzVT5ggGJHYNmp7FR2WeolPolU
 oGIzRZ38Mn8xlLFYt0ZnzKdAx2MjiRGUQwNeagVA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 068/121] mt76: mt7603: fix input validation issues
 for powersave-filtered frames
Date: Sat, 11 Apr 2020 19:06:13 -0400
Message-Id: <20200411230706.23855-68-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411230706.23855-1-sashal@kernel.org>
References: <20200411230706.23855-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_160830_005581_ADFF4976 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Felix Fietkau <nbd@nbd.name>

[ Upstream commit d55aa5e17461b8b423adae376978032c4a10a1d8 ]

Before extracting the tid out of the packet, check if it was qos-data.
Only accept tid values 0-7
Also, avoid accepting the hardware queue as skb queue mapping, it could
lead to an overrun. Instead, derive the hardware queue from the tid number,
in order to avoid issues with packets being filtered multiple times.
This also fixes a mismatch between hardware and software queue indexes.

Signed-off-by: Felix Fietkau <nbd@nbd.name>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../net/wireless/mediatek/mt76/mt7603/dma.c   | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7603/dma.c b/drivers/net/wireless/mediatek/mt76/mt7603/dma.c
index a6ab73060aada..57428467fe967 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7603/dma.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7603/dma.c
@@ -30,6 +30,16 @@ mt7603_init_tx_queue(struct mt7603_dev *dev, struct mt76_sw_queue *q,
 static void
 mt7603_rx_loopback_skb(struct mt7603_dev *dev, struct sk_buff *skb)
 {
+	static const u8 tid_to_ac[8] = {
+		IEEE80211_AC_BE,
+		IEEE80211_AC_BK,
+		IEEE80211_AC_BK,
+		IEEE80211_AC_BE,
+		IEEE80211_AC_VI,
+		IEEE80211_AC_VI,
+		IEEE80211_AC_VO,
+		IEEE80211_AC_VO
+	};
 	__le32 *txd = (__le32 *)skb->data;
 	struct ieee80211_hdr *hdr;
 	struct ieee80211_sta *sta;
@@ -38,7 +48,7 @@ mt7603_rx_loopback_skb(struct mt7603_dev *dev, struct sk_buff *skb)
 	void *priv;
 	int idx;
 	u32 val;
-	u8 tid;
+	u8 tid = 0;
 
 	if (skb->len < MT_TXD_SIZE + sizeof(struct ieee80211_hdr))
 		goto free;
@@ -56,15 +66,16 @@ mt7603_rx_loopback_skb(struct mt7603_dev *dev, struct sk_buff *skb)
 
 	priv = msta = container_of(wcid, struct mt7603_sta, wcid);
 	val = le32_to_cpu(txd[0]);
-	skb_set_queue_mapping(skb, FIELD_GET(MT_TXD0_Q_IDX, val));
-
 	val &= ~(MT_TXD0_P_IDX | MT_TXD0_Q_IDX);
 	val |= FIELD_PREP(MT_TXD0_Q_IDX, MT_TX_HW_QUEUE_MGMT);
 	txd[0] = cpu_to_le32(val);
 
 	sta = container_of(priv, struct ieee80211_sta, drv_priv);
 	hdr = (struct ieee80211_hdr *)&skb->data[MT_TXD_SIZE];
-	tid = *ieee80211_get_qos_ctl(hdr) & IEEE80211_QOS_CTL_TID_MASK;
+	if (ieee80211_is_data_qos(hdr->frame_control))
+		tid = *ieee80211_get_qos_ctl(hdr) &
+		      IEEE80211_QOS_CTL_TAG1D_MASK;
+	skb_set_queue_mapping(skb, tid_to_ac[tid]);
 	ieee80211_sta_set_buffered(sta, tid, true);
 
 	spin_lock_bh(&dev->ps_lock);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
