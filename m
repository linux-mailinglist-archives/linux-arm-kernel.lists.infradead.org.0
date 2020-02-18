Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CEB162234
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 09:26:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nKIDa0VhxECuZYuif1hQvJVBlK8Q0capBXGq2oq8vt4=; b=TOpPOHgHpAz1ip
	nf0jDiOVghXFteNVA9XuenWBXQ5jluDPKyYriZPYfDmLSnfPvUKRmjuAj6+J3zh4YWFpkkBGhUw8K
	zQnmYrIbE/MdgQCGqq/ndUZZN/90+Tr+/BNyVyTUChuBSpk16Z3gnM2FjqXfACrOIcPNsq7I6lns/
	fdIUbPCmt5GLKQmeDbrijGdzTocnKtdyflAks/Zcws9qv8aFFLft8DsoHB6ltq8d7nA03/l8vHnnl
	ZHppYJThrvybUTiz9bSXe8E84mOV40mHLS4ukilUxcSrKLWt7laPUgnw6FCRdh0UD8e2Qi2XKv+d3
	k8qW2o+4NgVaabjJrU/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3yDG-0008Do-7d; Tue, 18 Feb 2020 08:26:38 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3yD0-000898-04
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 08:26:23 +0000
Received: from localhost (unknown [193.163.1.7])
 by first.geanix.com (Postfix) with ESMTPSA id CEB4CC0026;
 Tue, 18 Feb 2020 08:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1582014331; bh=qoOyWfzrbqLyzdPY/hjg2UBPWMBJE3nsF+rXsF0O5mw=;
 h=From:To:Cc:Subject:Date;
 b=l4PYsw3bh9kdGsaJ7lo1bIxGxVqWrUj1Bu9jhShyb73EV+k9w7SsfvQpeKAZVKMw5
 /TGLrOw1Q904u38D+9MkswUYt/spejVTERMRCsTSoFmXM6HAHj7+KL609NWASdjrf6
 4ByiSSKGbst/ELiFHMn5RcuCQNa4gdgAx6aMfLyXPQD8/qn+SDFJSo0T1013WRj2ym
 lu7aHzqSmznI+4Gz5hzb6JLbALHA/S/ukcXUwVv3TZtrAwMTrv420DZwCWk3krrPmA
 A+ybgrcTZYc97gBip/TD0Sf/nuQ26+VUzq76NMUqBX5ovjE+oMymvCgFJiN4yzExQQ
 JnDhmuhE/0QgA==
From: Esben Haabendal <esben@geanix.com>
To: netdev@vger.kernel.org
Subject: [PATCH 1/8] net: ll_temac: Fix race condition causing TX hang
Date: Tue, 18 Feb 2020 09:26:19 +0100
Message-Id: <20200218082619.7119-1-esben@geanix.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Spam-Status: No, score=0.2 required=4.0 tests=BAYES_40,DKIM_INVALID,
 DKIM_SIGNED,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=disabled
 version=3.4.3
X-Spam-Checker-Version: SpamAssassin 3.4.3 (2019-12-06) on eb9da72b0f73
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_002622_196777_EEAB05AD 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Michal Simek <michal.simek@xilinx.com>,
 stable@vger.kernel.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It is possible that the interrupt handler fires and frees up space in
the TX ring in between checking for sufficient TX ring space and
stopping the TX queue in temac_start_xmit. If this happens, the
queue wake from the interrupt handler will occur before the queue is
stopped, causing a lost wakeup and the adapter's transmit hanging.

To avoid this, after stopping the queue, check again whether there is
sufficient space in the TX ring. If so, wake up the queue again.

This is a port of the similar fix in axienet driver,
commit 7de44285c1f6 ("net: axienet: Fix race condition causing TX hang").

Signed-off-by: Esben Haabendal <esben@geanix.com>
Cc: stable@vger.kernel.org
---
 drivers/net/ethernet/xilinx/ll_temac_main.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/ll_temac_main.c b/drivers/net/ethernet/xilinx/ll_temac_main.c
index 6f11f52c9a9e..996004ef8bd4 100644
--- a/drivers/net/ethernet/xilinx/ll_temac_main.c
+++ b/drivers/net/ethernet/xilinx/ll_temac_main.c
@@ -788,6 +788,9 @@ static void temac_start_xmit_done(struct net_device *ndev)
 		stat = be32_to_cpu(cur_p->app0);
 	}
 
+	/* Matches barrier in temac_start_xmit */
+	smp_mb();
+
 	netif_wake_queue(ndev);
 }
 
@@ -830,9 +833,19 @@ temac_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 	cur_p = &lp->tx_bd_v[lp->tx_bd_tail];
 
 	if (temac_check_tx_bd_space(lp, num_frag + 1)) {
-		if (!netif_queue_stopped(ndev))
-			netif_stop_queue(ndev);
-		return NETDEV_TX_BUSY;
+		if (netif_queue_stopped(ndev))
+			return NETDEV_TX_BUSY;
+
+		netif_stop_queue(ndev);
+
+		/* Matches barrier in temac_start_xmit_done */
+		smp_mb();
+
+		/* Space might have just been freed - check again */
+		if (temac_check_tx_bd_space(lp, num_frag))
+			return NETDEV_TX_BUSY;
+
+		netif_wake_queue(ndev);
 	}
 
 	cur_p->app0 = 0;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
