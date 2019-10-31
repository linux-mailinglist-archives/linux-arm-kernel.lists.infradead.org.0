Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB943EAE3B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 12:02:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jGlVanAhP+lDUV6geLFQuCY7q0d5SPKdLisdxGLyglE=; b=kQ6g72WiiOvQhVasYMlif4MU8J
	4UZbnplEtjdGRB7cH6+VfgY4/bKuGXSmj/zZjF9794aOalrkyJHgf4RZ+xiQi+VMvDjlZkGGGVoT+
	5JcbXtQ34d2GUOwITgdCbuTDlr0xL+PHEiaQq2L6+zWjjYzt6/atdQFUa1pYeEEhWuVbEc+QrUH8u
	jZtRsKxd/rscujIJJSipEHRO2/3CTO5uPrdweaETzUn0DMCk/vBSDLlddrBPG9Tbe0JaTqoY9gcAn
	WivJS4LcvMSQCdmpjoZVlFBjrvL3aOQ5pYOaDebZ862tAoO/O2jPd1dfaMJIJkaWHvJT97sI4jxih
	52JysRMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ8Dk-0004xh-Q3; Thu, 31 Oct 2019 11:02:28 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ8CQ-0003yX-SY
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 11:01:11 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A9D25C08B4;
 Thu, 31 Oct 2019 11:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1572519662; bh=wQtrPv+GIGZu+Tp6DHyLxgJSIlQY5yW+McFB8EMBWDw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=K/aKKSqtUKMUPsRWVnHHIm2YegPgnrOvZJEXFBuVYB3VfFvDtR5DmRkE/4sHx8dYn
 8UCcbjSiKuPTW28gEwgPMHiEZSLHYu0BkDpYE/wUBUZ4Yr2rET0tlekHTlmKDFML7P
 fs5Y9EN+E240v3Jh6QwpMNk06hiBycl1qC6Dl++9vV4lpxxMRDRrKLlfL93nLyTC27
 9WbGslZnYlzYLplmyuPhU3Qe7cNIsEVpV2pjuJ2fEKyqqxEfzFBecdnMOHJJyCtOH8
 uQnLn4xVptxRBgKTF1qXPaehvXxQx6+EMszS5opgyfDjZ+Dlr3FKS4Q8qY9Sv521ZL
 0GtzrIWbODuEA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 6D854A0087;
 Thu, 31 Oct 2019 11:01:00 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net v2 10/10] net: stmmac: Fix the packet count in stmmac_rx()
Date: Thu, 31 Oct 2019 12:00:48 +0100
Message-Id: <fca9407d676529289866358f5f57656138ef039e.1572519070.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1572519070.git.Jose.Abreu@synopsys.com>
References: <cover.1572519070.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1572519070.git.Jose.Abreu@synopsys.com>
References: <cover.1572519070.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_040107_051177_E70EE771 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Currently, stmmac_rx() is counting the number of descriptors but it
should count the number of packets as specified by the NAPI limit.

Fix this.

Fixes: ec222003bd94 ("net: stmmac: Prepare to add Split Header support")
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
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 063b0ecd244b..d3886d2b16d4 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -3505,8 +3505,6 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
 		if (unlikely(status & dma_own))
 			break;
 
-		count++;
-
 		rx_q->cur_rx = STMMAC_GET_ENTRY(rx_q->cur_rx, DMA_RX_SIZE);
 		next_entry = rx_q->cur_rx;
 
@@ -3533,6 +3531,7 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
 			goto read_again;
 		if (unlikely(error)) {
 			dev_kfree_skb(skb);
+			count++;
 			continue;
 		}
 
@@ -3572,6 +3571,7 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
 			skb = napi_alloc_skb(&ch->rx_napi, len);
 			if (!skb) {
 				priv->dev->stats.rx_dropped++;
+				count++;
 				continue;
 			}
 
@@ -3637,6 +3637,7 @@ static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
 
 		priv->dev->stats.rx_packets++;
 		priv->dev->stats.rx_bytes += len;
+		count++;
 	}
 
 	if (status & rx_not_ls) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
