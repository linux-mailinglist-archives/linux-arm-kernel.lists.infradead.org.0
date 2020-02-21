Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 977D7166FD3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 07:48:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qBggKz3ko5zQge2uR8ZKFWVtVewOu+MUX0DAG5oOjF0=; b=Gw72le5rBYCFfF
	Sl6Y5ODCP2oLEwEEsErOSHMV2AGFv+UHmuH5M9AWRXWWi6tiB03S+WFBZlngEZ3ITFlURGuISBZTq
	njNeqe16HbEGtHfjaUIQBsZ2GnM+9Hdm1K3nTkZG9IellRft7X+gOZWn/oX+XDZ9u7I4oIBXX4Qpo
	fuNXGGoq80I8PPwF/Ge2xZnZV4FHH15SAM45YUzD7PQCKMNSRqaIPwNU3CcIgNoYsupBxjoXf+pfP
	To7XO7M7nvcNFYpOn7+nbfUizqB0wTf/WWl/EyuscOq4q9TZlNWomok5RrQS1GG57x4lR643c0kDj
	G9k1grFXehjq7uTOGsKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j526z-0000gG-D2; Fri, 21 Feb 2020 06:48:33 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j525t-0008HD-VS
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 06:47:27 +0000
Received: from localhost (87-49-45-242-mobile.dk.customer.tdc.net
 [87.49.45.242])
 by first.geanix.com (Postfix) with ESMTPSA id 785C3AEB4D;
 Fri, 21 Feb 2020 06:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1582267642; bh=KvmUZ7RpfqddUx8uLthfjCMTy9g+ZYpZDHIMYzR1KoQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Acn0rHEsAci/DYy2yplp8EcwQxmU0WxRKZiq5d4xvpYk9+E+Jk3Y667o2USRuVqJb
 Ksy6yHHV+Jy4J1BangMSPHMYI5BZcD2t3vMNFc/VDFuj09+xuuctbPbYpejEsLt8WC
 xgrGC+/4lq4Q93JSsNy5ztBfytW0CnjDsI8B6Eekt60Ikpv7hYEz73IoSPM2Cjt6gM
 pId7SarJoZiWdRjd5V7cL4gGq1aRMXK+yj8GWXIqpn0Rymc67CUSbyyw2JAXCnCjQc
 VCDEw8z6Q12Of+nCkYOJxEOv3z8EOWG73SsL0PVoK6aKPJM8NiE0dBSf0+2xq3vm4L
 uVQs2O0npbKow==
From: Esben Haabendal <esben@geanix.com>
To: netdev@vger.kernel.org
Subject: [PATCH net v2 1/4] net: ll_temac: Fix race condition causing TX hang
Date: Fri, 21 Feb 2020 07:47:21 +0100
Message-Id: <c93e0f5ef92d2b17c04e256e32460e9dee1107e8.1582267079.git.esben@geanix.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <cover.1582267079.git.esben@geanix.com>
References: <cover.1582108989.git.esben@geanix.com>
 <cover.1582267079.git.esben@geanix.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=4.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,UNPARSEABLE_RELAY,URIBL_BLOCKED
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on 05ff821c8cf1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_224726_176081_D97A5783 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
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

Fixes: 23ecc4bde21f ("net: ll_temac: fix checksum offload logic")
Signed-off-by: Esben Haabendal <esben@geanix.com>
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
