Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B12A12B74D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 18:48:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fCmF/qPvi2LDb+frwCDbBIB+O7QhlAsAQCNpOS58V3M=; b=b363DFdiTw7G+n
	apw1OqP9P170aMttHthh8WCz3hefLz/R2EO8wTWtHOMIIw3jmF03yps+w7bxQy+bDRdKu+8EAayR+
	LHi+bYfJDDL+6SPl+SNxVzyJjrE2TEycEFu3PHZmW+eRW4x8D825APUU38P/EXNRbAdhNkPYDTYuc
	2R7tyIzdCnQH6Ix3DCe4zDwvaA+Eu8tQ/Nz3jMJEag9eQNFeJoYwsUPKoVfB5Ys90dGBW2+0Xz3fm
	CPQ+WYDDMIOdIT6TBgJcI5CIwZHfAALTlcg8K9+YMix3tA0szCrchfKbqq9w8ys2Anvzv1awlss84
	YvWSYO2ZJ33VThKEhYeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iktjG-0006Tb-VB; Fri, 27 Dec 2019 17:48:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iktfr-0003TM-1F
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 17:45:20 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 892772464B;
 Fri, 27 Dec 2019 17:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577468718;
 bh=fQ02JyQDkRWNpS/HDzUVnfKR46n40zNB008usY4M+uY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QJ8qJScEWMQnnkE+WyUKMI2wicg/SfoOlGZEmLPIenOApQHZnwGUziCa7QXkWkAOf
 0s96gPekV6zCOf8ZRJ/PTPyOeI30H9jB5qwzp6mB9e1U8I3ohq54ZwWzcqa90wckdp
 z9stLNTXJZBXQfz8mdOo1K5APQQJkatI0ulB7f9M=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 72/84] net: stmmac: Always arm TX Timer at end of
 transmission start
Date: Fri, 27 Dec 2019 12:43:40 -0500
Message-Id: <20191227174352.6264-72-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191227174352.6264-1-sashal@kernel.org>
References: <20191227174352.6264-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_094519_145954_8F9CED2A 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

[ Upstream commit 4772f26db8d1fb568c4862c538344a1b5fb52081 ]

If TX Coalesce timer is enabled we should always arm it, otherwise we
may hit the case where an interrupt is missed and the TX Queue will
timeout.

Arming the timer does not necessarly mean it will run the tx_clean()
because this function is wrapped around NAPI launcher.

Fixes: 9125cdd1be11 ("stmmac: add the initial tx coalesce schema")
Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 437b1b2b3e6b..7ee0e46539c0 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -2997,6 +2997,7 @@ static netdev_tx_t stmmac_tso_xmit(struct sk_buff *skb, struct net_device *dev)
 
 	tx_q->tx_tail_addr = tx_q->dma_tx_phy + (tx_q->cur_tx * sizeof(*desc));
 	stmmac_set_tx_tail_ptr(priv, priv->ioaddr, tx_q->tx_tail_addr, queue);
+	stmmac_tx_timer_arm(priv, queue);
 
 	return NETDEV_TX_OK;
 
@@ -3210,6 +3211,7 @@ static netdev_tx_t stmmac_xmit(struct sk_buff *skb, struct net_device *dev)
 
 	tx_q->tx_tail_addr = tx_q->dma_tx_phy + (tx_q->cur_tx * sizeof(*desc));
 	stmmac_set_tx_tail_ptr(priv, priv->ioaddr, tx_q->tx_tail_addr, queue);
+	stmmac_tx_timer_arm(priv, queue);
 
 	return NETDEV_TX_OK;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
