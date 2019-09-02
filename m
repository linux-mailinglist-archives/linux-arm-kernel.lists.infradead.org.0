Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8782EA50CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 10:04:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uLF03s0Y3Ni1GpA9Ct2GYSRoMOdA9+w1g2TRJfaC60Y=; b=RgonI+F6a2SgskbWsA+G5sc0LK
	oQJb18qNv66gI5fK2yzNjIJL7mwBvDbXV0ZeyjpRQvHnRQk/YrYLoW6jYgGGGjnHLE+iqrHW843gT
	cH9e6VPfzhDmqAC72b5PDgWphlb1gCCKixDRa9cKO5MzzTrEkPKx+NoRdYXV3snKGIzSiKDRD3dgw
	XVUJK2OszPKsPFxqy510QTt2hsuejShKJSe35OMrXarSybPwtk6Vv7cZFQzr7QqyeSMsM/DxabNJ1
	I1WGbVaxwii08EaszEIyeaFfs+3F0VGgvnuvyB9vmWDVkGx1lKXpjcDeB3CN3EL7WTbTctREwgMcC
	EYrzBaGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4hKH-0005Uq-1q; Mon, 02 Sep 2019 08:04:37 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hIH-00049a-Bn
 for linux-arm-kernel@bombadil.infradead.org; Mon, 02 Sep 2019 08:02:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0DMxC2VpMv4xvsgMMnwX+S12tAdCiEe/vY+WfdH0UGo=; b=hOAN57CjdhrTY0AY7saCERXYJ
 qrgBMkNEu7t8ztXAQp2MiJDM+H6UGJkqCPRqVWvmDn72B7uRsNZHF48oE16lp5lVm7vl4zdOG2CzV
 R4zMPZANMkxu+daLCR4s6C99Xr3+yINwp0Nk9+sbJ3EfHa4ttX7bicQzyiSTs9Rpbojj3BlKKxA0X
 zg5zyYZ28eOZCW6RotYY32loBcZ1xjJmU8xqMZ0lw4fzihauIOfWqDgaz17/szTUw7+mI2k0QyeHa
 f0zoAavTSkdwgO/ZXtWUI7jx9P1XA7xgfZNCJ73gYmbM8Dg8A3blU1idiXVAkmu98sEEh9V6gaOub
 y7zq/iPVQ==;
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hIV-0003ZO-GR
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 08:02:52 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id DD8DCC043B;
 Mon,  2 Sep 2019 08:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567411337; bh=793MRHdv4DLwQdQr3WJdmtfxyUuhU0fectEqf0N0Y5Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=a3B8ZYzxCH17QfUXa0xm+zzycE9iJFrOLWrcPD0A5LuaAgNMupDyl3dAAzO+eu+KB
 duDPedszgqvuEzVdA6wv4ZTHY7aCPWvBH8+apX9VH9iivflTOOa6c4mXvql48hqq42
 f5OXVfAm57L+nrt7SV0KR35+oJ7LNpi8D7oEsO9T8oPYgOZcGGh48Qg7kda8tVbI7C
 5plzqF1gJ5cPqJj9pDgnO1P1Vc1XSSQ5V/Pu19ctjEn+hEijXs6DzadN1NL35YYLDK
 94s6TC35GL54mcbwS1wtEQZjJg4esAuS9YHuunKfIsAWj5Tyw9Jj0L5+umDHLYcchS
 ZEnQtLBlutEqA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id A38C0A007C;
 Mon,  2 Sep 2019 08:02:15 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 09/13] net: stmmac: ethtool: Let user configure TX
 coalesce without RIWT
Date: Mon,  2 Sep 2019 10:01:51 +0200
Message-Id: <851a16ddd28878dbaf932cc05f0dab627189be40.1567410970.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1567410970.git.joabreu@synopsys.com>
References: <cover.1567410970.git.joabreu@synopsys.com>
In-Reply-To: <cover.1567410970.git.joabreu@synopsys.com>
References: <cover.1567410970.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_090248_247018_B8536CC7 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When RX Watchdog is disabled its currently not possible to configure TX
coalesce settings. Let user configure it anyway.

Signed-off-by: Jose Abreu <joabreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 .../net/ethernet/stmicro/stmmac/stmmac_ethtool.c    | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
index 1c450105e5a6..1a768837ca72 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
@@ -746,8 +746,15 @@ static int stmmac_set_coalesce(struct net_device *dev,
 	    (ec->tx_max_coalesced_frames_high) || (ec->rate_sample_interval))
 		return -EOPNOTSUPP;
 
-	if (ec->rx_coalesce_usecs == 0)
-		return -EINVAL;
+	if (priv->use_riwt && (ec->rx_coalesce_usecs > 0)) {
+		rx_riwt = stmmac_usec2riwt(ec->rx_coalesce_usecs, priv);
+
+		if ((rx_riwt > MAX_DMA_RIWT) || (rx_riwt < MIN_DMA_RIWT))
+			return -EINVAL;
+
+		priv->rx_riwt = rx_riwt;
+		stmmac_rx_watchdog(priv, priv->ioaddr, priv->rx_riwt, rx_cnt);
+	}
 
 	if ((ec->tx_coalesce_usecs == 0) &&
 	    (ec->tx_max_coalesced_frames == 0))
@@ -757,20 +764,10 @@ static int stmmac_set_coalesce(struct net_device *dev,
 	    (ec->tx_max_coalesced_frames > STMMAC_TX_MAX_FRAMES))
 		return -EINVAL;
 
-	rx_riwt = stmmac_usec2riwt(ec->rx_coalesce_usecs, priv);
-
-	if ((rx_riwt > MAX_DMA_RIWT) || (rx_riwt < MIN_DMA_RIWT))
-		return -EINVAL;
-	else if (!priv->use_riwt)
-		return -EOPNOTSUPP;
-
 	/* Only copy relevant parameters, ignore all others. */
 	priv->tx_coal_frames = ec->tx_max_coalesced_frames;
 	priv->tx_coal_timer = ec->tx_coalesce_usecs;
 	priv->rx_coal_frames = ec->rx_max_coalesced_frames;
-	priv->rx_riwt = rx_riwt;
-	stmmac_rx_watchdog(priv, priv->ioaddr, priv->rx_riwt, rx_cnt);
-
 	return 0;
 }
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
