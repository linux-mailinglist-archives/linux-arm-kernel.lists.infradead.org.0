Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 995DD1216E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 19:33:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSDIFytoGspAZhlmDcK3WpYB6BqRYQ5ejCg9JG3Z30w=; b=hZ32h8U9BE29gv
	r1J1X3xLA4DVIlLXvqwrz5kJ4GhKmW/VyQoib5TB8AZHYo5e97KjPvZWFut4qssO1+5MdT6ToNKUu
	DW4P7uccwJphcH5kMETU1qaPYJbdI0UGBBq9X4GmHfsV1ZmcTG8GyaTZg78lgBu4YSQDusu2ORJY7
	89pkLFFxJqv5Z/Q5/nxGO3dBH93y+SVUkpmAvT99RaRviXGcBwfcWqR5nmqXhVra0PhneUUVW2tP1
	szgTUsw07m7FcWTpHKMPBVTvLZcLpqUasHecmfv2wQPZAg6fwG8I7rcIs4omuARWChFde7unlzyMH
	eA10RRCkjSKglL0dq4Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igvBa-0002Fv-Gr; Mon, 16 Dec 2019 18:33:38 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igvB0-0001pm-72
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 18:33:03 +0000
Received: by mail-pl1-x643.google.com with SMTP id c23so4854672plz.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 10:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=muvIZPXZzFYwA2KnEz8hZgGKrX75pxgv3Lg3oHbwLBw=;
 b=q0owXzgWorl+IT7EkpCMUN7xBbxlHC/mqAg9W9RTyNS1DZPouBDeAjh2z75XOKd2XM
 H2zvMJ4+D+vRCyLPoV6/ukez7dhju4BzISB2MFuIgVn9R1bF60KrQ550ejjEjQQhfJ3d
 R6NMNgCf9eQ1IK4+oUHoP4GJq41qma1QJ5kd37GC7FjKlmfruE/dmor9jXZdFrXVKioA
 MjjovHVvZIdkz64f6uLojQxp16D0wP4RaCry0+ZHNRAZb/NA2qnA5ZNWLVFXFDoN8Puk
 qTHH3zv1kSFftAZkAo5ErJVGH268XiYuT8vWzHBZEYjeH53PXUOGImxAgc3iof0dfak+
 TCqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=muvIZPXZzFYwA2KnEz8hZgGKrX75pxgv3Lg3oHbwLBw=;
 b=lnG2VwpkCUOep6RpWCSQ4ELwRjKklGcpUu+gTcSgrelHxy+IHErJC/kxpJj+dEsrKX
 LpcP4jNVjW0MeZUxk5rs/vTFcn9VXkjO7DEe5HypZ5weugkiX+Ja+bbg3om7tnNM8ZOW
 KX46+u4c7u/ZOxmoZ0dsGhsMDmja+xhRzWaqeLZCeCb6N2jddTXBIx1oOW6FVdOB16iM
 L/zwuM0Ni55z4DRXwVYvYwuPi0yPxC6pZAVBcc3jNntm1VI9Pc2FPCTiaX2vz5akc5WT
 p5JvziK8RZEOLJYhqv67dMH9mJy+QQ+YMLERWqr71xCBula+2bz2Ef4bxhXDUmOl7/WH
 ASkQ==
X-Gm-Message-State: APjAAAWRJvCNaGSZyTkWZcPtL97ohGzYSoqR37fyEsnww8HPi8Z8vBYT
 Qwsq9Z3P2OKfAevKRVrHNuk=
X-Google-Smtp-Source: APXvYqygLqbMNydAuYdfkCmF+8oCs3Vw2xkRqAtHA6tCsjJGXCzAIzsezFGkNLbfktPTVScTqWNo8w==
X-Received: by 2002:a17:902:bd85:: with SMTP id
 q5mr4061608pls.17.1576521181571; 
 Mon, 16 Dec 2019 10:33:01 -0800 (PST)
Received: from localhost.localdomain (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id d65sm23400738pfa.159.2019.12.16.10.33.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 10:33:00 -0800 (PST)
From: Richard Cochran <richardcochran@gmail.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 2/3] net: axienet: Support software transmit time
 stamping.
Date: Mon, 16 Dec 2019 10:32:55 -0800
Message-Id: <79b2d20c323484b8f86690ea56dae52b1be6a8e9.1576520432.git.richardcochran@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1576520432.git.richardcochran@gmail.com>
References: <cover.1576520432.git.richardcochran@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_103302_254833_C5D24301 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richardcochran[at]gmail.com)
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
Cc: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MAC drivers are expected to invoke the transmit time stamping hook in
order to support both software time stamping and PHY time stamping.
This patch adds the missing hook.  In addition, drivers calling
netif_rx() should first check for PHY time stamping by calling
skb_defer_rx_timestamp().

Signed-off-by: Richard Cochran <richardcochran@gmail.com>
---
 drivers/net/ethernet/xilinx/xilinx_axienet_main.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index 53644abe52da..05fa7371c39a 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -675,6 +675,9 @@ axienet_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 	cur_p->skb = skb;
 
 	tail_p = lp->tx_bd_p + sizeof(*lp->tx_bd_v) * lp->tx_bd_tail;
+
+	skb_tx_timestamp(skb);
+
 	/* Start the transfer */
 	axienet_dma_out32(lp, XAXIDMA_TX_TDESC_OFFSET, tail_p);
 	if (++lp->tx_bd_tail >= lp->tx_bd_num)
@@ -736,7 +739,8 @@ static void axienet_recv(struct net_device *ndev)
 			skb->ip_summed = CHECKSUM_COMPLETE;
 		}
 
-		netif_rx(skb);
+		if (!skb_defer_rx_timestamp(skb))
+			netif_rx(skb);
 
 		size += length;
 		packets++;
@@ -1367,6 +1371,7 @@ static const struct ethtool_ops axienet_ethtool_ops = {
 	.set_pauseparam = axienet_ethtools_set_pauseparam,
 	.get_coalesce   = axienet_ethtools_get_coalesce,
 	.set_coalesce   = axienet_ethtools_set_coalesce,
+	.get_ts_info	= ethtool_op_get_ts_info,
 	.get_link_ksettings = axienet_ethtools_get_link_ksettings,
 	.set_link_ksettings = axienet_ethtools_set_link_ksettings,
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
