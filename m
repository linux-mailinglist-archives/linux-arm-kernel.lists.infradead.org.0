Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F981190CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 20:36:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=F6ZgVYyZOf+pocLRgZEGcRovqaSm4JLBexWmP+2wlDY=; b=OpJnkeefLL2EG73fNSCxl2mM/a
	plx/FAiNP1FNUfY/2cz/ziLhThLjAj/w+cjbcfl1xKk2GFkrSOAfjIy9t7bw9JIY7AyFFeTC6UwTt
	ZJe3otlp4N12TR0YVifFCNCmsRUSDswKYO0wWTvG8YKwlXBTh7Pc1cc0EAfpmikbspE3BorF0myD9
	jjhFoCXcYFyvr6NIjUCb7P6Gi0pOY+wI2/V4OPfUgreD8p4fJI9/15DsYw7Vg4vqB+4xD50Ob6b6H
	1TYtE8K30CHcQU1w1faf6YbE192zbXsDbXyAuSCch8TenumL2xKUl7nNY21DBM8r+qMKlughBDdxb
	grkNFO/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ielIg-0007xR-QF; Tue, 10 Dec 2019 19:36:02 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielGr-00058U-6V
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 19:34:13 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 34415C0B80;
 Tue, 10 Dec 2019 19:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576006448; bh=8cmpB+rTgiZ4iC0euaQMaGtJc3x/xfqnlQkzLOnVQDo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=kj0r0Yq2nvawlnOXu2VIkTqHFS0TMHg3TOAOg5KmriOEqwmFmVWVNL/U/fTsm8Snm
 Ae/1BzXIDh47C088+zh5Y7N7CZOkAMlt5SmMog/ygo3s8udHGZOKc9ma2B/6qcamd/
 0PFwZJ13sseYetLRuhJgGPhaFVGximWRTmWZ87nCX+ormuB8AFjsYh9cAF8BKSrjFC
 kk8BXVD58+2eJ5XN7JNvpoVIbW8QaNR7bbmTiV7Zx65UAz+MXtW77o8jMth11XjuTE
 q8juDozbNxZBPvx78oxBEGnfypwzfX/Wk/h8fTpwPNco+aHHDLSOLmp0l2LvLqiZsY
 GmZc7HyO3GJAw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id E2278A0092;
 Tue, 10 Dec 2019 19:34:05 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 3/8] net: stmmac: Do not accept invalid MTU values
Date: Tue, 10 Dec 2019 20:33:55 +0100
Message-Id: <7c86807d2db415419e1158a2f8c87bd6dfe8facb.1576005975.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1576005975.git.Jose.Abreu@synopsys.com>
References: <cover.1576005975.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1576005975.git.Jose.Abreu@synopsys.com>
References: <cover.1576005975.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_113409_329076_416C56C2 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The maximum MTU value is determined by the maximum size of TX FIFO so
that a full packet can fit in the FIFO. Add a check for this in the MTU
change callback.

Also check if provided and rounded MTU does not passes the maximum limit
of 16K.

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
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index dfecced43f29..2ebac89049ed 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -3827,12 +3827,22 @@ static void stmmac_set_rx_mode(struct net_device *dev)
 static int stmmac_change_mtu(struct net_device *dev, int new_mtu)
 {
 	struct stmmac_priv *priv = netdev_priv(dev);
+	int txfifosz = priv->plat->tx_fifo_size;
+
+	if (txfifosz == 0)
+		txfifosz = priv->dma_cap.tx_fifo_size;
+
+	txfifosz /= priv->plat->tx_queues_to_use;
 
 	if (netif_running(dev)) {
 		netdev_err(priv->dev, "must be stopped to change its MTU\n");
 		return -EBUSY;
 	}
 
+	/* If condition true, FIFO is too small or MTU too large */
+	if ((txfifosz < new_mtu) || (new_mtu > STMMAC_ALIGN(BUF_SIZE_16KiB)))
+		return -EINVAL;
+
 	dev->mtu = new_mtu;
 
 	netdev_update_features(dev);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
