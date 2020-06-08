Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AADB1F23E6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:18:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7t6/e2eT6FiDDcELPHsoP1/KcnRP4a+cQM8I4/hD19s=; b=UjIJgPhrKB9gKR
	2lZvtNumkDdX8UuYHMFSRA1NzlY+Ie8EhfvcMaJW7bvAFS9mujQP0jrnz94sdUjwCH7WrIOi2pvJA
	N34t3i/R4/UJNOUTbYKfVjn/NFWk1JZKtEjwnfE0+SAqS3DxqXK5PB9/mPWiASoSGtsxibyr0xQmd
	cKGiyqkUUxQUyy866GZVL0I5ithZVBxWLbMg3csLTz0X22Z75dJludHuWgg74AyNUI3FslEqAoqhp
	/umus4NL5wyUmvs0ertu7W8GOEmc4fD2xjHahPVkkhY835jrpjGydQzK8JUg20AXKyt9b2BMIFgnL
	GhfvEXVXvtTWrWNLLy+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiR1p-0004JR-Mz; Mon, 08 Jun 2020 23:18:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQuI-0003RE-W7; Mon, 08 Jun 2020 23:10:21 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71B1D20E65;
 Mon,  8 Jun 2020 23:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657817;
 bh=+6kXrgQ4NVOvyd8KUFY2r+iOtJb5sRwbTKszCOGlshU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jwBSWwlHHwT1eOdvbDAzMiAS1zda14eYEEjhXFzOUnZIORcjTIHzvJz89PaBHtkab
 hrF3YbjaR7v8uk6duvBlLrHAO/3tP2M3hPDKudu8v8EMFAUwXoNE88qQvGNAxRW2Zt
 PUr69nkY0Sm3GgfOOF04c/QiN8Q497lYLP7iiU5Y=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 191/274] mt76: mt7615: do not always reset the dfs
 state setting the channel
Date: Mon,  8 Jun 2020 19:04:44 -0400
Message-Id: <20200608230607.3361041-191-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161019_277635_F2D97EDA 
X-CRM114-Status: GOOD (  11.89  )
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
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lorenzo Bianconi <lorenzo@kernel.org>

[ Upstream commit fdb786cce0ef3615dcbb30d8baf06a1d4cb7a344 ]

mac80211/hostapd runs mt7615_set_channel with the same channel
parameters sending multiple rdd commands overwriting the previous ones.
This behaviour is causing tpt issues on dfs channels.
Fix the issue checking new channel freq/width with the running one.

Fixes: 5dabdf71e94e ("mt76: mt7615: add multiple wiphy support to the dfs support code")
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Felix Fietkau <nbd@nbd.name>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../net/wireless/mediatek/mt76/mt7615/main.c  | 21 ++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
index 6586176c29af..f92ac9a916fc 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
@@ -218,6 +218,25 @@ static void mt7615_remove_interface(struct ieee80211_hw *hw,
 	spin_unlock_bh(&dev->sta_poll_lock);
 }
 
+static void mt7615_init_dfs_state(struct mt7615_phy *phy)
+{
+	struct mt76_phy *mphy = phy->mt76;
+	struct ieee80211_hw *hw = mphy->hw;
+	struct cfg80211_chan_def *chandef = &hw->conf.chandef;
+
+	if (hw->conf.flags & IEEE80211_CONF_OFFCHANNEL)
+		return;
+
+	if (!(chandef->chan->flags & IEEE80211_CHAN_RADAR))
+		return;
+
+	if (mphy->chandef.chan->center_freq == chandef->chan->center_freq &&
+	    mphy->chandef.width == chandef->width)
+		return;
+
+	phy->dfs_state = -1;
+}
+
 static int mt7615_set_channel(struct mt7615_phy *phy)
 {
 	struct mt7615_dev *dev = phy->dev;
@@ -229,7 +248,7 @@ static int mt7615_set_channel(struct mt7615_phy *phy)
 	mutex_lock(&dev->mt76.mutex);
 	set_bit(MT76_RESET, &phy->mt76->state);
 
-	phy->dfs_state = -1;
+	mt7615_init_dfs_state(phy);
 	mt76_set_channel(phy->mt76);
 
 	ret = mt7615_mcu_set_chan_info(phy, MCU_EXT_CMD_CHANNEL_SWITCH);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
