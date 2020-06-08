Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A29161F2685
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEFsovJ89iGSyrpE2eYGbMO7tApUJyjOQ5dgGb15gtg=; b=JSYMIdu24FZasW
	sdnUxj+f1sMuO91XXsYvX43Bdt14r83Jj0YgY46YFjUl3/fWNujSzs5GCeAstVQo4pbGX9M+9hTm5
	aXp1T+Yyux3mf4rv6f8BlBb+1pf9+OTlmM2DZcy6/SyQ+YoPRTvJrCbrd0G6LIZfsLNtHyN9AJiHn
	losZo7cLZUwGuT3JX4bsMJTOQz9mGv2QWGsaMbnbgt/X5gqqUQcN6vcwWotH5xYh/x2jMxKdvMlh9
	SM+JQA82nbTa5e4XsoS7Trb6pp5AyAmpr4h0weOqCmvZp9kW1dK3jfY8+Wog59ExOYO95dtkO/069
	RYx6KwVr+HQOkI8HYkPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRSC-0006sj-Nm; Mon, 08 Jun 2020 23:45:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR54-0001Ce-FP; Mon, 08 Jun 2020 23:21:30 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C4D7A208A7;
 Mon,  8 Jun 2020 23:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658485;
 bh=sYkeYCy4yELk+Rhqp6c/33bq9azVDEcLFEBAXNfGfAk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aKslZTUEEb6ZVx1jxbgzWNtBqbbplw5p2H8ddXtPPRqLoRPAmjcJ7gdVpALDXvOec
 j9gC0vTu2UfNXTeK0Nu19MDMeSb79bpfManJtEjmMZKBQrroTABVD0PoDjU4wqZLYL
 EEL0Bd/5K2GEcxHy8+QDvEj+WGeZElTSjPWFdNBM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 120/175] mt76: avoid rx reorder buffer overflow
Date: Mon,  8 Jun 2020 19:17:53 -0400
Message-Id: <20200608231848.3366970-120-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231848.3366970-1-sashal@kernel.org>
References: <20200608231848.3366970-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_162126_573754_90C8EE96 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
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
Cc: Sasha Levin <sashal@kernel.org>, Ryder Lee <ryder.lee@mediatek.com>,
 Chih-Min Chen <chih-min.chen@mediatek.com>, linux-wireless@vger.kernel.org,
 linux-mediatek@lists.infradead.org, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ryder Lee <ryder.lee@mediatek.com>

[ Upstream commit 7c4f744d6703757be959f521a7a441bf34745d99 ]

Enlarge slot to support 11ax 256 BA (256 MPDUs in an AMPDU)

Signed-off-by: Chih-Min Chen <chih-min.chen@mediatek.com>
Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
Signed-off-by: Felix Fietkau <nbd@nbd.name>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/agg-rx.c | 8 ++++----
 drivers/net/wireless/mediatek/mt76/mt76.h   | 6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/agg-rx.c b/drivers/net/wireless/mediatek/mt76/agg-rx.c
index 8f3d36a15e17..cbff0dfc9631 100644
--- a/drivers/net/wireless/mediatek/mt76/agg-rx.c
+++ b/drivers/net/wireless/mediatek/mt76/agg-rx.c
@@ -143,8 +143,8 @@ void mt76_rx_aggr_reorder(struct sk_buff *skb, struct sk_buff_head *frames)
 	struct ieee80211_sta *sta;
 	struct mt76_rx_tid *tid;
 	bool sn_less;
-	u16 seqno, head, size;
-	u8 ackp, idx;
+	u16 seqno, head, size, idx;
+	u8 ackp;
 
 	__skb_queue_tail(frames, skb);
 
@@ -230,7 +230,7 @@ void mt76_rx_aggr_reorder(struct sk_buff *skb, struct sk_buff_head *frames)
 }
 
 int mt76_rx_aggr_start(struct mt76_dev *dev, struct mt76_wcid *wcid, u8 tidno,
-		       u16 ssn, u8 size)
+		       u16 ssn, u16 size)
 {
 	struct mt76_rx_tid *tid;
 
@@ -254,7 +254,7 @@ EXPORT_SYMBOL_GPL(mt76_rx_aggr_start);
 
 static void mt76_rx_aggr_shutdown(struct mt76_dev *dev, struct mt76_rx_tid *tid)
 {
-	u8 size = tid->size;
+	u16 size = tid->size;
 	int i;
 
 	cancel_delayed_work(&tid->reorder_work);
diff --git a/drivers/net/wireless/mediatek/mt76/mt76.h b/drivers/net/wireless/mediatek/mt76/mt76.h
index 502814c26b33..52a16b42dfd7 100644
--- a/drivers/net/wireless/mediatek/mt76/mt76.h
+++ b/drivers/net/wireless/mediatek/mt76/mt76.h
@@ -240,8 +240,8 @@ struct mt76_rx_tid {
 	struct delayed_work reorder_work;
 
 	u16 head;
-	u8 size;
-	u8 nframes;
+	u16 size;
+	u16 nframes;
 
 	u8 started:1, stopped:1, timer_pending:1;
 
@@ -723,7 +723,7 @@ int mt76_get_survey(struct ieee80211_hw *hw, int idx,
 void mt76_set_stream_caps(struct mt76_dev *dev, bool vht);
 
 int mt76_rx_aggr_start(struct mt76_dev *dev, struct mt76_wcid *wcid, u8 tid,
-		       u16 ssn, u8 size);
+		       u16 ssn, u16 size);
 void mt76_rx_aggr_stop(struct mt76_dev *dev, struct mt76_wcid *wcid, u8 tid);
 
 void mt76_wcid_key_setup(struct mt76_dev *dev, struct mt76_wcid *wcid,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
