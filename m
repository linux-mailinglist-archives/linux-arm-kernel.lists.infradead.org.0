Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFFD162249
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 09:27:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7+2SZAlzkte/rj6XaKVyUvDBOabLNP1W8ZBu7TpEXxw=; b=Uk4V5lSc89I2BH
	4ue/xDnf3NAw46t7XULm0o8JjPnaFao9OfYdoJPlphxzNtkNRuOD/H/0azxlIgFMqOQJZyXexgd8F
	xpTakWRJzMY9dy3+PALjqkubFH8g7xH2+KiVxirsclA88GIWYteUvbjOsnbT2E4Vuv9IV+Hlkf4Q6
	FAxJMHB3WjNKTilfKFk1oz5/H15JtYTwv+WwcFR0R/oJ3Dnid6J3+pOTbldU01s52+HmqggQd40hj
	JflzAWNw555/Eg02XOu1pNiqJ1gLf8aQBTuOn6MgHq9Ls5SFoG96Oi9x6ZRaiTp/HPNrcLsJY6qop
	Pn+TQlxaseeKzuf2X+5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3yEE-0000o0-Au; Tue, 18 Feb 2020 08:27:38 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3yDk-0000Wu-SS
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 08:27:10 +0000
Received: from localhost (unknown [193.163.1.7])
 by first.geanix.com (Postfix) with ESMTPSA id 919F3C0036;
 Tue, 18 Feb 2020 08:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1582014378; bh=HXbPSN1aokLgN/o7DVaUkYTISITHBVBZLKWriZmqQTI=;
 h=From:To:Cc:Subject:Date;
 b=l6+37eJul82C0JKH/GoZU6xqGEE8ZxvXS+hXWp3Ua30HtTpv7p2+dSwQ+rMWLKwaZ
 eHijheFGy20oIEAgBY99LSb2UqKGqh/jtO6fTqTfuT6BZ+l2cHbo1IpIyjhggUx6i8
 Eu/1+DFLaXbYpJx70mplhWMaBIKFT8Mu3UrIqyYUoJvsiMmnNssVjhfl+7WjTh/aui
 Z5a/SjnKhGRpcHlxoM0GdxQI40P06M17g3q6GLP5N2hPVumOUjmIXxGncJKMWjzFS5
 YyddRvPi/Gqcfn8LvAhsbtnxp0NFs/coOqkI4xI7FIkIeCvEVK4FSMAotWb13TT1Xe
 301AtVOhnkAag==
From: Esben Haabendal <esben@geanix.com>
To: netdev@vger.kernel.org
Subject: [PATCH 5/8] net: ll_temac: Remove unused tx_bd_next struct field
Date: Tue, 18 Feb 2020 09:27:06 +0100
Message-Id: <20200218082706.7458-1-esben@geanix.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Spam-Status: No, score=-1.7 required=4.0 tests=BAYES_00,DKIM_INVALID,
 DKIM_SIGNED,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=disabled
 version=3.4.3
X-Spam-Checker-Version: SpamAssassin 3.4.3 (2019-12-06) on eb9da72b0f73
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_002709_090856_C7F480A9 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
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
 linux-kernel@vger.kernel.org, =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The tx_bd_next field was included in the initial commit,
commit 92744989533c ("net: add Xilinx ll_temac device driver"),
but has never had any real use.

Signed-off-by: Esben Haabendal <esben@geanix.com>
---
 drivers/net/ethernet/xilinx/ll_temac.h      | 1 -
 drivers/net/ethernet/xilinx/ll_temac_main.c | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/ll_temac.h b/drivers/net/ethernet/xilinx/ll_temac.h
index 53fb8141f1a6..463ef9eaf42d 100644
--- a/drivers/net/ethernet/xilinx/ll_temac.h
+++ b/drivers/net/ethernet/xilinx/ll_temac.h
@@ -372,7 +372,6 @@ struct temac_local {
 	struct cdmac_bd *rx_bd_v;
 	dma_addr_t rx_bd_p;
 	int tx_bd_ci;
-	int tx_bd_next;
 	int tx_bd_tail;
 	int rx_bd_ci;
 	int rx_bd_tail;
diff --git a/drivers/net/ethernet/xilinx/ll_temac_main.c b/drivers/net/ethernet/xilinx/ll_temac_main.c
index 90b486becb5b..7623d09fbd0a 100644
--- a/drivers/net/ethernet/xilinx/ll_temac_main.c
+++ b/drivers/net/ethernet/xilinx/ll_temac_main.c
@@ -387,7 +387,6 @@ static int temac_dma_bd_init(struct net_device *ndev)
 
 	/* Init descriptor indexes */
 	lp->tx_bd_ci = 0;
-	lp->tx_bd_next = 0;
 	lp->tx_bd_tail = 0;
 	lp->rx_bd_ci = 0;
 	lp->rx_bd_tail = RX_BD_NUM - 1;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
