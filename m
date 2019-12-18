Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 428C712447C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:25:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NWHB+wQeTwm/qXVVLoP4hWkP0EZBxVDFTutw8eXAaxY=; b=SJgInBcQKEDyqmbQkI3+yUE83/
	9W1Z+m1oKc4e2ork5nSynP1lj3gSDyFgWCpEkQ1i9KoJXwtpUVGqmgJLL5BPGIg82QZJn8TZR0YA7
	0OUIrASZnJyuOel6MEbpmUO6aiLVX7v+7sJqovqMoVbnMq+h09B5fxjdv4lQMlT+p6LABuVpsp5Pg
	D7yQkilu0YVspzv5jd/FxSd4cUPrWPvlxSRzxHiSvvvTcxedI2QeKROE11x7rAy2Yu/0dKEl3HYuA
	xEfJoLEwqL1B8xfFXQjYWp2AKz7pCFRYVomZ2Ldy8UcxZc6iUV+/8mBdi60x43SNG+IE+WC0wUC3q
	VC19+BJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWW3-0002Rr-U7; Wed, 18 Dec 2019 10:25:15 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWVf-0002Q2-Ob
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:24:53 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 27F99C0D6A;
 Wed, 18 Dec 2019 10:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576664691; bh=llvgGrumShiuBeIdyIGzEeURrXNPj/+om1MXWeErZwE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=e1OXQE08Gxvv20nI4cOPC60QUxYpMzgJMyrGhINJqRWiKqrlGFPySCecdzTflmZLw
 23ZgwM0sW6OE1ZdIn0GVKWazP2ROhV1t0UjjrI6sDU/XHaY1ffxGvvkX2K9jpVd/T/
 h8Git4See/C1/DpnbgPqWWH7aEbjlQYobQBIAvXNXHMG154w25uUWm56YhuWhwAofA
 /xZb5GIH6D7sUPYNWUyTRXJ9C5kwCVRGL92GffBpvwcz6nac3YHE1xXz/1kyZ87YFZ
 Gxzei92G7CQr1zopn8woRiROZXTfIu4uraslCAgRlmhrEF4lKtablNHQPuchWRcVML
 CgTtFcrJ5e2Jg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id C5445A006F;
 Wed, 18 Dec 2019 10:24:49 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v3 1/3] net: stmmac: Print more information in
 DebugFS DMA Capabilities file
Date: Wed, 18 Dec 2019 11:24:43 +0100
Message-Id: <c4267be2e938d12cb5d0618a716d66ff01b3fde2.1576664538.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1576664538.git.Jose.Abreu@synopsys.com>
References: <cover.1576664538.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1576664538.git.Jose.Abreu@synopsys.com>
References: <cover.1576664538.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_022451_869291_D078D216 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jakub Kicinski <jakub.kicinski@netronome.com>,
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

DMA Capabilites have grown but the DebugFS that shows this info has not
been updated. Lets add the missing information.

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
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 31 ++++++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index da80866d0371..3299f5bb02e2 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -4238,9 +4238,38 @@ static int stmmac_dma_cap_show(struct seq_file *seq, void *v)
 		   priv->dma_cap.number_rx_channel);
 	seq_printf(seq, "\tNumber of Additional TX channel: %d\n",
 		   priv->dma_cap.number_tx_channel);
+	seq_printf(seq, "\tNumber of Additional RX queues: %d\n",
+		   priv->dma_cap.number_rx_queues);
+	seq_printf(seq, "\tNumber of Additional TX queues: %d\n",
+		   priv->dma_cap.number_tx_queues);
 	seq_printf(seq, "\tEnhanced descriptors: %s\n",
 		   (priv->dma_cap.enh_desc) ? "Y" : "N");
-
+	seq_printf(seq, "\tTX Fifo Size: %d\n", priv->dma_cap.tx_fifo_size);
+	seq_printf(seq, "\tRX Fifo Size: %d\n", priv->dma_cap.rx_fifo_size);
+	seq_printf(seq, "\tHash Table Size: %d\n", priv->dma_cap.hash_tb_sz);
+	seq_printf(seq, "\tTSO: %s\n", priv->dma_cap.tsoen ? "Y" : "N");
+	seq_printf(seq, "\tNumber of PPS Outputs: %d\n",
+		   priv->dma_cap.pps_out_num);
+	seq_printf(seq, "\tSafety Features: %s\n",
+		   priv->dma_cap.asp ? "Y" : "N");
+	seq_printf(seq, "\tFlexible RX Parser: %s\n",
+		   priv->dma_cap.frpsel ? "Y" : "N");
+	seq_printf(seq, "\tEnhanced Addressing: %d\n",
+		   priv->dma_cap.addr64);
+	seq_printf(seq, "\tReceive Side Scaling: %s\n",
+		   priv->dma_cap.rssen ? "Y" : "N");
+	seq_printf(seq, "\tVLAN Hash Filtering: %s\n",
+		   priv->dma_cap.vlhash ? "Y" : "N");
+	seq_printf(seq, "\tSplit Header: %s\n",
+		   priv->dma_cap.sphen ? "Y" : "N");
+	seq_printf(seq, "\tVLAN TX Insertion: %s\n",
+		   priv->dma_cap.vlins ? "Y" : "N");
+	seq_printf(seq, "\tDouble VLAN: %s\n",
+		   priv->dma_cap.dvlan ? "Y" : "N");
+	seq_printf(seq, "\tNumber of L3/L4 Filters: %d\n",
+		   priv->dma_cap.l3l4fnum);
+	seq_printf(seq, "\tARP Offloading: %s\n",
+		   priv->dma_cap.arpoffsel ? "Y" : "N");
 	return 0;
 }
 DEFINE_SHOW_ATTRIBUTE(stmmac_dma_cap);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
