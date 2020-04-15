Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E931A9DB3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:47:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QGQJXaXxiUNSiw9pxPmy3H0v3WrGXyzS5DOiZ+csxXc=; b=acO3IiMUQKy/bK
	5b8jCi+9Qoh1VZ6QGnxIExcQIMaIlnSKpUQdhxuUVGU4LYPO18mCLKGvv52gD1EXOs53A7OVnuwsu
	nOtQ0lRJCcTjcgCoTz5ctgbdRh6tIxiaFJhFkTi2zKKtjwb4YyGjFKLjnqh1M6qFdsmMI+70xXCCu
	skTUFHKMdQlLFEkJeoD2LVPV05beH1sBGOzMrud4uwzfqCp6i+QHMPYRxb5q9UhbarHqNDAIaHdUF
	h2xisWkIQkHNJGmsylkCwUYxT/AxinCehUKIyD+El/1tkoEMd8+qPkJFBm+afTbWj7zWF36MGVqLm
	b2ICs347vVCW9VTq0NfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgVb-0005ab-RD; Wed, 15 Apr 2020 11:47:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgSZ-0000dH-Et
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 11:44:04 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1DFE72137B;
 Wed, 15 Apr 2020 11:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586951042;
 bh=bVX46KhkbkCHDIA/scQ1dBlN5PmtSFZfWNNUIRuWydQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=A/2NSaTlzsrvJl4x7uRVzU26yE5OB6YyUPBUNjU5CW0Lnw2zEFt67RdAkV4+YQOy2
 gWh4V9U45fBowBzI25LcuCWEt2h1VLwVhnABg7gXSzYw1HrAR8skcpL78WPJFogBFl
 xGAEX6v32mf+Zm6s+LFAmeIZc1ajR/5OEWfkmPII=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 078/106] net: stmmac: xgmac: Fix VLAN register
 handling
Date: Wed, 15 Apr 2020 07:41:58 -0400
Message-Id: <20200415114226.13103-78-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415114226.13103-1-sashal@kernel.org>
References: <20200415114226.13103-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_044403_532594_592E44CE 
X-CRM114-Status: UNSURE (   9.38  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Sasha Levin <sashal@kernel.org>,
 netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>

[ Upstream commit 21f64e72e7073199a6f8d7d8efe52cd814d7d665 ]

Commit 907a076881f1, forgot that we need to clear old values of
XGMAC_VLAN_TAG register when we switch from VLAN perfect matching to
HASH matching.

Fix it.

Fixes: 907a076881f1 ("net: stmmac: xgmac: fix incorrect XGMAC_VLAN_TAG register writting")
Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index e9bf54a579df6..f0b9c43f6e31e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -576,8 +576,13 @@ static void dwxgmac2_update_vlan_hash(struct mac_device_info *hw, u32 hash,
 			value |= XGMAC_VLAN_EDVLP;
 			value |= XGMAC_VLAN_ESVL;
 			value |= XGMAC_VLAN_DOVLTC;
+		} else {
+			value &= ~XGMAC_VLAN_EDVLP;
+			value &= ~XGMAC_VLAN_ESVL;
+			value &= ~XGMAC_VLAN_DOVLTC;
 		}
 
+		value &= ~XGMAC_VLAN_VID;
 		writel(value, ioaddr + XGMAC_VLAN_TAG);
 	} else if (perfect_match) {
 		u32 value = readl(ioaddr + XGMAC_PACKET_FILTER);
@@ -588,13 +593,19 @@ static void dwxgmac2_update_vlan_hash(struct mac_device_info *hw, u32 hash,
 
 		value = readl(ioaddr + XGMAC_VLAN_TAG);
 
+		value &= ~XGMAC_VLAN_VTHM;
 		value |= XGMAC_VLAN_ETV;
 		if (is_double) {
 			value |= XGMAC_VLAN_EDVLP;
 			value |= XGMAC_VLAN_ESVL;
 			value |= XGMAC_VLAN_DOVLTC;
+		} else {
+			value &= ~XGMAC_VLAN_EDVLP;
+			value &= ~XGMAC_VLAN_ESVL;
+			value &= ~XGMAC_VLAN_DOVLTC;
 		}
 
+		value &= ~XGMAC_VLAN_VID;
 		writel(value | perfect_match, ioaddr + XGMAC_VLAN_TAG);
 	} else {
 		u32 value = readl(ioaddr + XGMAC_PACKET_FILTER);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
