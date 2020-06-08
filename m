Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C48F1F23A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zf0KnRfTu3Rl04Ec+hMksDxaXNwoobFkQ3qEDNSYCrE=; b=WWAurb5NSiOIyh
	DGQMJBvTf1j2qCnSlQ6HpTtKomS22gqt+VB2MkdICgvHqfMAHT+Sv5l6X0TYdMqZTSyfjyEZ2aQmG
	1Zh3gEHbr9VD34uc2b/xjE1crpaVjVwjVMyDg/5vaOFNvbrKm85O//Gcsv8dUW982REEhE9apkYNg
	2+1YJD5fsbdGdsRnd2zMkEWD1ACvVX2qqo6dDBlFthsRF4h75PsovsQikn7egFx/C4wlbksQYO+kh
	mxPIdVlAbX3pR8F0X++2wSywwBJFHyr0G2wh4rGI2ZvpDE3KvLWqiMdP5XmHQJZ4MGaXdpn03M1bx
	dbqTU5S/HN54R8PnES7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiR16-0003ky-4Z; Mon, 08 Jun 2020 23:17:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQuG-0003DN-Nb; Mon, 08 Jun 2020 23:10:19 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 243D4208A9;
 Mon,  8 Jun 2020 23:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657816;
 bh=5itkUDluYpaS3Zxz7oL2dZm1OCRzVTnguZY9d4Ovqcg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CZ7plkCrPkDrRgea6NdYDVaUTu/XP1wglSFD+VvXneIOnMABxu4hKk3uJOcFLRP8i
 ea9XDisjhl/Tgdf8wAFtlKnTZ5ep3K+wv4z+zr3oAMeF+qd6NEA826f1wJnHqCviEA
 gVRyCgNyI3DjEOsbAZs0IfPFSjkZ6I8hWqGOIpT8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 190/274] mt76: mt7663: fix
 mt7615_mac_cca_stats_reset routine
Date: Mon,  8 Jun 2020 19:04:43 -0400
Message-Id: <20200608230607.3361041-190-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161016_898813_7BA74E6F 
X-CRM114-Status: UNSURE (   9.84  )
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lorenzo Bianconi <lorenzo@kernel.org>

[ Upstream commit 886a862d3677ac0d3b57d19ffcf5b2d48b9c5267 ]

Fix PHYMUX_5 register definition for mt7663 in
mt7615_mac_cca_stats_reset routine

Fixes: f40ac0f3d3c0 ("mt76: mt7615: introduce mt7663e support")
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Felix Fietkau <nbd@nbd.name>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mt7615/mac.c  | 8 +++++++-
 drivers/net/wireless/mediatek/mt76/mt7615/regs.h | 1 +
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
index a27a6d164009..656231786d55 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
@@ -1574,8 +1574,14 @@ void mt7615_mac_cca_stats_reset(struct mt7615_phy *phy)
 {
 	struct mt7615_dev *dev = phy->dev;
 	bool ext_phy = phy != &dev->phy;
-	u32 reg = MT_WF_PHY_R0_PHYMUX_5(ext_phy);
+	u32 reg;
 
+	if (is_mt7663(&dev->mt76))
+		reg = MT7663_WF_PHY_R0_PHYMUX_5;
+	else
+		reg = MT_WF_PHY_R0_PHYMUX_5(ext_phy);
+
+	/* reset PD and MDRDY counters */
 	mt76_clear(dev, reg, GENMASK(22, 20));
 	mt76_set(dev, reg, BIT(22) | BIT(20));
 }
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/regs.h b/drivers/net/wireless/mediatek/mt76/mt7615/regs.h
index 1e0d95b917e1..f7c2a633841c 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/regs.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/regs.h
@@ -151,6 +151,7 @@ enum mt7615_reg_base {
 #define MT_WF_PHY_WF2_RFCTRL0_LPBCN_EN	BIT(9)
 
 #define MT_WF_PHY_R0_PHYMUX_5(_phy)	MT_WF_PHY(0x0614 + ((_phy) << 9))
+#define MT7663_WF_PHY_R0_PHYMUX_5	MT_WF_PHY(0x0414)
 
 #define MT_WF_PHY_R0_PHYCTRL_STS0(_phy)	MT_WF_PHY(0x020c + ((_phy) << 9))
 #define MT_WF_PHYCTRL_STAT_PD_OFDM	GENMASK(31, 16)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
