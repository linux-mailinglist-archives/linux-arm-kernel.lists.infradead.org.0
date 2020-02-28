Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD44817323E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 08:57:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWBC7k+X6mxLt2SI4p0N8K/p7c6hFAS9YAT2IXhqQ20=; b=XlNbtn5aN9qG6k
	5Jwcz8EBGVDhsEP4LXC9/v6akAN4Z2z3csMUj5Wtcq6UU51gmlO+Gw8vkif7uPXwyWXVjckmJK0El
	OE7uosSdrFne/847DPl2ny29VM1rhO8M/Cl0CTt2SjBzRCvs/33WHinfwCBXF+gSicbGjOnOvtqS7
	QpQjq8t/taOesHa+AZZtLvPhJh2rXJPQh2gNa4fqxSyG+lZNkKRAiW2OAKU74YM+7zC1LCkTYWT2I
	UNPU1xgNHj+qurjUJWtwYAMnnqeB4P9fV+0eiYkZX/x/KT6CrZiQYUn0TLSiNKkPSEKLVAEtv0v0V
	OsYswxC9ZhJb3mtCH0PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7aWm-0004QM-2H; Fri, 28 Feb 2020 07:57:44 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7aWL-0004L4-Tg
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 07:57:19 +0000
Received: from localhost (87-49-45-242-mobile.dk.customer.tdc.net
 [87.49.45.242])
 by first.geanix.com (Postfix) with ESMTPSA id BCFF1C109A;
 Fri, 28 Feb 2020 07:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1582876635; bh=4Cyo9y5q/mldLL3pJH1O8Wl/0n5xEk8ts8a9jNcILNI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=CTg7JR3SxTdsWgj6JmFMmFx1TBjVm+KcweLEOCsAVysOJJhvWTgnYsAHnuR8+ZFf7
 i6vDWv4c5vy4w8Figd/Vvmah1BLyLXNBYu/0PviGtUSchi06brqc7jL67iup5Q+QbG
 lR8rWSpjt//EJl3JMacuHBJdX6Q1sVL767GH1Mxje1C/OJanZjsFbKx9cabfLN1+fS
 dvWudLF1dM1SvZwkADSPMgUqKUo7zl7rfJJSZaeHNT5DTxDDoJsqmdFR2t84TUfoD2
 0Ql4oFIrkcMUluCOLZ6VkrW87cJSfvcMlBToCs9Xo5g32j/T8nwFyGADC8PW1W6Gql
 usYeN04NvAz+Q==
From: Esben Haabendal <esben@geanix.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 2/4] net: ll_temac: Remove unused start_p variable
Date: Fri, 28 Feb 2020 08:57:12 +0100
Message-Id: <47799bc364ef24f750d5fa6d608c33c7e34c0b65.1582875715.git.esben@geanix.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1582875715.git.esben@geanix.com>
References: <cover.1582875715.git.esben@geanix.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=4.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,UNPARSEABLE_RELAY,URIBL_BLOCKED
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on 05ff821c8cf1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_235718_120611_91A19023 
X-CRM114-Status: GOOD (  10.26  )
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

The start_p variable was included in the initial commit,
commit 92744989533c ("net: add Xilinx ll_temac device driver"),
but has never had any real use.

Signed-off-by: Esben Haabendal <esben@geanix.com>
---
 drivers/net/ethernet/xilinx/ll_temac_main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/ll_temac_main.c b/drivers/net/ethernet/xilinx/ll_temac_main.c
index b0fab9a2056f..d6853c44e672 100644
--- a/drivers/net/ethernet/xilinx/ll_temac_main.c
+++ b/drivers/net/ethernet/xilinx/ll_temac_main.c
@@ -825,14 +825,13 @@ temac_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 {
 	struct temac_local *lp = netdev_priv(ndev);
 	struct cdmac_bd *cur_p;
-	dma_addr_t start_p, tail_p, skb_dma_addr;
+	dma_addr_t tail_p, skb_dma_addr;
 	int ii;
 	unsigned long num_frag;
 	skb_frag_t *frag;
 
 	num_frag = skb_shinfo(skb)->nr_frags;
 	frag = &skb_shinfo(skb)->frags[0];
-	start_p = lp->tx_bd_p + sizeof(*lp->tx_bd_v) * lp->tx_bd_tail;
 	cur_p = &lp->tx_bd_v[lp->tx_bd_tail];
 
 	if (temac_check_tx_bd_space(lp, num_frag + 1)) {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
