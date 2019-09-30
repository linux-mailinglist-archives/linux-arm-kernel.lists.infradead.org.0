Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 188F0C1D0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:22:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4mfRcNAQwzQIiYqm9S5EWeYAtHgZUSziS7CU38NxtSw=; b=AMyIuP1d5GYkWCohyn3j/1iJFM
	av7OfWQFtGWXYzyuVqyX8Gx3sw8FjBPQzw4I6ACw8ok2DCi3AfZzElpIIipcHtGg+YNOY664FJ0og
	fUM7Ok5xCGg+gEKR6tkHfNg0Wro8XN3ZWe7YFzoOyUgPW42nmffPK0eGmnEwyTf8VDwMf+PLahMkK
	CYAZJAb8WhzTcqCOA5ZsKsju7i1KwwN2Y+ryqJoCH2xEmxBVc3EiL2r1MgpBdQc6ZrR6JoyW7i24I
	tcZ5XIEBUn+hd9BovJeH5X6qwohbo90nPgN/UMdrdavSBScVcfF9jdTf6Mf+P7tYS+XrO83lzX+lC
	VSa1T2GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqx3-00017H-GU; Mon, 30 Sep 2019 08:22:37 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqu0-0005df-Si
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:19:37 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 48058C0388;
 Mon, 30 Sep 2019 08:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1569831566; bh=MV+Pa6bWic8PJcQ0PmrvM1y6FtITxVDL2Xu5W5HutE4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=aY2ZpTj0gPC5rJyO1lNM0LeulgSCTg92HZmjU9RuBLQewGTFWd6CVm3WvE+nLp3r2
 Ak/1TcdmSD175F2ZPluaqjH0upQyF2SMC/PZ+AZik5z7LQoZsyZLLD3TDu0CC76viW
 ps+zeMAO8kBszRxFlQrOesg3xpV1EXXi+tK2AV7n90IdEls+elyeY7WA5dZVuRv+Vw
 J/wZfc6zDnHyONvCBTUAzvdvgKJ3jyGdYWT2eod/xNkNSaMwDXag3/3Np8JY4cySl1
 46CyTzYNe14jPJkjvhHgGy2SZ7IU+zs2u9vSvPdVOM5ZuxFoobWY4SehmF0lVRaRq7
 MHgyvyRsNag2w==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 6A78FA0079;
 Mon, 30 Sep 2019 08:19:23 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH v2 net 4/9] net: stmmac: dwmac4: Always update the MAC Hash
 Filter
Date: Mon, 30 Sep 2019 10:19:08 +0200
Message-Id: <08edfc3e1c95d7ce243bae6879b16d0b103095cf.1569831229.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1569831228.git.Jose.Abreu@synopsys.com>
References: <cover.1569831228.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1569831228.git.Jose.Abreu@synopsys.com>
References: <cover.1569831228.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_011929_056872_18F105B3 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

We need to always update the MAC Hash Filter so that previous entries
are invalidated.

Found out while running stmmac selftests.

Fixes: b8ef7020d6e5 ("net: stmmac: add support for hash table size 128/256 in dwmac4")
Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

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
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
index 9b4b5f69fc02..2cb9c53f93b8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
@@ -401,8 +401,11 @@ static void dwmac4_set_filter(struct mac_device_info *hw,
 	int numhashregs = (hw->multicast_filter_bins >> 5);
 	int mcbitslog2 = hw->mcast_bits_log2;
 	unsigned int value;
+	u32 mc_filter[8];
 	int i;
 
+	memset(mc_filter, 0, sizeof(mc_filter));
+
 	value = readl(ioaddr + GMAC_PACKET_FILTER);
 	value &= ~GMAC_PACKET_FILTER_HMC;
 	value &= ~GMAC_PACKET_FILTER_HPF;
@@ -416,16 +419,13 @@ static void dwmac4_set_filter(struct mac_device_info *hw,
 		/* Pass all multi */
 		value |= GMAC_PACKET_FILTER_PM;
 		/* Set all the bits of the HASH tab */
-		for (i = 0; i < numhashregs; i++)
-			writel(0xffffffff, ioaddr + GMAC_HASH_TAB(i));
+		memset(mc_filter, 0xff, sizeof(mc_filter));
 	} else if (!netdev_mc_empty(dev)) {
 		struct netdev_hw_addr *ha;
-		u32 mc_filter[8];
 
 		/* Hash filter for multicast */
 		value |= GMAC_PACKET_FILTER_HMC;
 
-		memset(mc_filter, 0, sizeof(mc_filter));
 		netdev_for_each_mc_addr(ha, dev) {
 			/* The upper n bits of the calculated CRC are used to
 			 * index the contents of the hash table. The number of
@@ -440,10 +440,11 @@ static void dwmac4_set_filter(struct mac_device_info *hw,
 			 */
 			mc_filter[bit_nr >> 5] |= (1 << (bit_nr & 0x1f));
 		}
-		for (i = 0; i < numhashregs; i++)
-			writel(mc_filter[i], ioaddr + GMAC_HASH_TAB(i));
 	}
 
+	for (i = 0; i < numhashregs; i++)
+		writel(mc_filter[i], ioaddr + GMAC_HASH_TAB(i));
+
 	value |= GMAC_PACKET_FILTER_HPF;
 
 	/* Handle multiple unicast addresses */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
