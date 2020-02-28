Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 090DC17323A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 08:57:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y8St0HkCLTHeY0684TjmipV7UApNBEyZvmZ895lGx1s=; b=qLre40q7NqYIj2
	DjTpGtelKV/uuWgQPKXPLRzy6hcP85BtHTaFCUAE0zWJoStpLRO26RrIt2z5UV1nH3T4yws2wS0EL
	koKS0nXRiiZspgzlIG13UkW+x0WpGgZrK1ywobCKDzEzAkixIondsYx6y/yDeCuY1WuahTYXax9sO
	cosX5ykaqz6j0kXRjV3TJN2a3IhR5YO+KC3F95R5op/Dr40ew7vRTTpzwAyvEob1lenVwlwmV1sTf
	ZBXji8oI+/Lhtuu8YQLl8/bJtoCUMh4UlFJXFb4bi0bQcd20Hfr7CP8Tqn6pslnLOUld4gb9eA/ZF
	AcRHJPXilotPBFb94M9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7aWM-0004Be-Ad; Fri, 28 Feb 2020 07:57:18 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7aW7-00047u-6E
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 07:57:04 +0000
Received: from localhost (87-49-45-242-mobile.dk.customer.tdc.net
 [87.49.45.242])
 by first.geanix.com (Postfix) with ESMTPSA id 1BF4FC109A;
 Fri, 28 Feb 2020 07:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1582876621; bh=pG1PPN8R1vtOo1QlkRHqdfs8dt6LaZxNLynXIIMrI8w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=RoVANOg68gVM7fGAozKvDMU4aMj4QokQ23Br/pmHLraEAX5gSs4tc7miM+dnleT36
 yElofHVBNnoY/ni4MNCsrY8GGLL6Y8HIc42W0Rra1t/57anBs72iuzxU4UZlSHGsWF
 P/UDLbbfvHAyNQgMHna/3oiDr/jUGCNEy7NO+EidKv7w9XmdBboMycgo9OzSg+N3UG
 AkhYAtPGJ7a5Lg2HpGx0xq1DCrnT+xkOjJiGvSmxS6/rVPgOo8nGHud3JDdjX0025W
 /rlHtPoNGyvPZUIkKEau1AYhZziDpEzR77yHC+euvrdq87hXtMNenQBycYnWbC/yjv
 yiNPxR7NQtJyQ==
From: Esben Haabendal <esben@geanix.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 1/4] net: ll_temac: Remove unused tx_bd_next struct
 field
Date: Fri, 28 Feb 2020 08:56:57 +0100
Message-Id: <1ac0e2037c91d9fd19e094e3205ca237554ef010.1582875715.git.esben@geanix.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1582875715.git.esben@geanix.com>
References: <cover.1582875715.git.esben@geanix.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=4.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,UNPARSEABLE_RELAY,URIBL_BLOCKED
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on 05ff821c8cf1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_235703_403465_CF3E94A2 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>
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
index 9461acec6f70..b0fab9a2056f 100644
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
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
