Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE49D114FDF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 12:41:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LSbCuYAloRPlYgWuMdpRegJ/MeoSB49sDEWAyacMwnA=; b=loigl7Y/BI4A+r
	VN59hHu8wUO+WE/2GobTi3rzY7PocsFDzhZDZFCIK4s1Hu+Ww/ILAKa5wG7G3o5Rdx1wsgMR80+rz
	MuA4YuXk9x+Emx8eUiPzWe0NE0lkJl0+Foys36DwZizDHYoqS0wBBUc6Umxsn0TtvlyOH0H2wImUi
	qeneN7QIZhsNj9wTlQyww5oDwBUpgB/vhjAjjtEpXycUd53eYFoqAnIJqnkT1BZDjbpGSB29BzxNW
	RZoY7PBcPxMn9+VP/xnfM4FASrtylga52Jk+wbExGJMBgn52ZXak/eDRzBf1uF4OXI+VqxTQyktjc
	4M6nb2+hIDgLw409VITg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idByk-00026A-E8; Fri, 06 Dec 2019 11:40:58 +0000
Received: from lgeamrelo12.lge.com ([156.147.23.52] helo=lgeamrelo11.lge.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idByb-00025c-Vl
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 11:40:51 +0000
Received: from unknown (HELO lgemrelse6q.lge.com) (156.147.1.121)
 by 156.147.23.52 with ESMTP; 6 Dec 2019 20:40:41 +0900
X-Original-SENDERIP: 156.147.1.121
X-Original-MAILFROM: neidhard.kim@lge.com
Received: from unknown (HELO localhost.localdomain) (10.178.32.48)
 by 156.147.1.121 with ESMTP; 6 Dec 2019 20:40:41 +0900
X-Original-SENDERIP: 10.178.32.48
X-Original-MAILFROM: neidhard.kim@lge.com
From: Jongsung Kim <neidhard.kim@lge.com>
To: netdev@vger.kernel.org
Subject: [PATCH] net: stmmac: reset Tx desc base address before restarting Tx
Date: Fri,  6 Dec 2019 20:40:00 +0900
Message-Id: <20191206114000.27283-1-neidhard.kim@lge.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_034050_343637_7EFBAA52 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [156.147.23.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.torgue@st.com, Jongsung Kim <neidhard.kim@lge.com>,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 joabreu@synopsys.com, mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Refer to the databook of DesignWare Cores Ethernet MAC Universal:

6.2.1.5 Register 4 (Transmit Descriptor List Address Register

If this register is not changed when the ST bit is set to 0, then
the DMA takes the descriptor address where it was stopped earlier.

The stmmac_tx_err() does zero indices to Tx descriptors, but does
not reset HW current Tx descriptor address. To fix inconsistency,
the base address of the Tx descriptors should be rewritten before
restarting Tx.

Signed-off-by: Jongsung Kim <neidhard.kim@lge.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 644cb5d1fd4f..bbc65bd332a8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -2009,6 +2009,8 @@ static void stmmac_tx_err(struct stmmac_priv *priv, u32 chan)
 	tx_q->cur_tx = 0;
 	tx_q->mss = 0;
 	netdev_tx_reset_queue(netdev_get_tx_queue(priv->dev, chan));
+	stmmac_init_tx_chan(priv, priv->ioaddr, priv->plat->dma_cfg,
+			    tx_q->dma_tx_phy, chan);
 	stmmac_start_tx_dma(priv, chan);
 
 	priv->dev->stats.tx_errors++;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
