Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8838591279
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 20:55:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HMI3VVgrGaUg4GWHRwqe9BIy0robTKcXERL3OINBoAg=; b=IKvcOlibkQyE+hoOmjfbURRdUG
	DC34lsGnqsfc7O0At6hlvhEDkO74E3VJxS/8ZZeGXWEafkNfWUVVnLGetXAyq5SsKyXL68j6lpFlS
	lhkIqIHG484jgYSgQwAmQKONav1F7NTDuNqiMv1j/B9gw23fXQi1WgQAJYJXzUsn6UiYHq0P24BiY
	rpNhrs97UdUQNh/Zk3b9YwbeUToaVnfAMa6Ip3vnLwM1dLaeVhYSoPD2gE4ZyXUcC0vJeLsv63pC4
	5MrblkHuanF8MepVY8KnwnPgAddj9iM0+f7qYNqwgXDQyGLn2wlmr8CgXsK1WotR32PsCMoW0KFVh
	MvudWbhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz3rB-0007mq-R5; Sat, 17 Aug 2019 18:55:18 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz3qt-0007Zd-C6
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 18:55:00 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id DECBAC0E43;
 Sat, 17 Aug 2019 18:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1566068097; bh=fVQZvfAxc/G+VutS8V5jk5gMniugumrB3Ej9sQMBc1s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=NXSS6GG2OkQOAcl3gN7TN/5Wn1EHzH+/S1+yTbJB6uOSV9wOJOcDC+dKvrw0oTLXF
 fcX1sMIGH3J4NwtG05AQoGUOHXT/O97ObbDiX93/lhyouTDsWydo0+NNjOmN2DaW5r
 fthSorC5NAxPnPVJUCM3VhyQiD18vzhwbkbvSa29/HB8kGVzbbixVCFVC7geM4N7r+
 hv5tIqzmdU6mFCR9xhQZUdNR/HX7jV7q3efiifHex0aFIhbSSxPhZCn4zl6Lobyoed
 vgUwWs8VtKfCAF8e6H4bT9h8s7NomloZlsvItzkuoxx0DAHnmg1OgEqJYd4f/1cykv
 NPB/E28hxYKyA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 9B977A006D;
 Sat, 17 Aug 2019 18:54:55 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v3 05/12] net: stmmac: Add a counter for Split Header
 packets
Date: Sat, 17 Aug 2019 20:54:44 +0200
Message-Id: <f9a9af5a961f7d507c3bb0d6e578dbfa45f54641.1566067802.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1566067802.git.joabreu@synopsys.com>
References: <cover.1566067802.git.joabreu@synopsys.com>
In-Reply-To: <cover.1566067802.git.joabreu@synopsys.com>
References: <cover.1566067802.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_115459_430608_8A5A1EA4 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Jakub Kicinski <jakub.kicinski@netronome.com>,
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

Add a counter that increments each time a packet with split header is
received.

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
 drivers/net/ethernet/stmicro/stmmac/common.h         | 1 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c | 1 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c    | 1 +
 3 files changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/common.h b/drivers/net/ethernet/stmicro/stmmac/common.h
index 527f961579f4..1303ec81fd3d 100644
--- a/drivers/net/ethernet/stmicro/stmmac/common.h
+++ b/drivers/net/ethernet/stmicro/stmmac/common.h
@@ -75,6 +75,7 @@ struct stmmac_extra_stats {
 	unsigned long rx_missed_cntr;
 	unsigned long rx_overflow_cntr;
 	unsigned long rx_vlan;
+	unsigned long rx_split_hdr_pkt_n;
 	/* Tx/Rx IRQ error info */
 	unsigned long tx_undeflow_irq;
 	unsigned long tx_process_stopped_irq;
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
index 2423160ab582..eb784fdb6d32 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c
@@ -65,6 +65,7 @@ static const struct stmmac_stats stmmac_gstrings_stats[] = {
 	STMMAC_STAT(rx_missed_cntr),
 	STMMAC_STAT(rx_overflow_cntr),
 	STMMAC_STAT(rx_vlan),
+	STMMAC_STAT(rx_split_hdr_pkt_n),
 	/* Tx/Rx IRQ error info */
 	STMMAC_STAT(tx_undeflow_irq),
 	STMMAC_STAT(tx_process_stopped_irq),
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 60e5f3584790..f2a198eda20b 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -3503,6 +3503,7 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
 				len = hlen;
 
 				prefetch(page_address(buf->sec_page));
+				priv->xstats.rx_split_hdr_pkt_n++;
 			}
 
 			skb = napi_alloc_skb(&ch->rx_napi, len);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
