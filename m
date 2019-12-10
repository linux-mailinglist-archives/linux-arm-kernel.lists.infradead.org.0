Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A1C119131
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 20:56:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eQ9A3Mm4ZAMIWuZ7uTODyjpMw8/AKW9MisaD6hLzqvg=; b=c9RUIhGuQvlyB9hF4TWiyvuoBi
	34GDU1rBwCg6gM458UEwd0lY+2fodJXEX2cYHkCydaPz02bGj5fDi4PHZwecAQy0Xrb5izUNuaugJ
	2YVGa1RE79EIbWWqnxkG/kw9YXG42tbQx05qLaAGGjiehhz3QLU5AMSV4iDrKWqIIcbF3d5UuBqip
	/4RLgvXkM7ZUgrIR29oBRaHNxUsqQEnLQ5TlaZpsXIhhyU53rUOTfjHstWUDfi6ZUGyKshERfEFl7
	MJHTtal6SDnIKB6CVQWlBdLWJ6B3ur8i+3AgOQqLX0MRarIxViUmjkr2d6yUAU/jspyIi+aAtsZwp
	exObuLrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ielcJ-0000eG-Sh; Tue, 10 Dec 2019 19:56:19 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielb2-0006tE-Nk
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 19:55:05 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 97F0FC0BAB;
 Tue, 10 Dec 2019 19:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576007700; bh=5mtu7yITJVT2TTodVcu6zBjkvQJQ1FB1PHMfa6Ozs5s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=MvHxEbDwSJShps8YBfW4GhQvh36OTzaWPemnMAmKx15O7V8nGCtzf0jPBfsLlalU8
 076s0Qox8nPrCtVsI8ei8gRDv0iBCCaIK4rus23wDUWDAvMHUc9Ky1VZxC5RrTXC3S
 09UvFFbsPtHIBPhhS0sVbRro9QFvhlj4sRj96zo50YK+VAcxdx6DIPgtKDI8dQRMSP
 bKY+ZLEmOx3tmit9oXej3f2Mp5kiA94NpFPBmuLrj5pFZjUU2sdaT4p4lmEcZ1Zoas
 HAWHW1gDv38X8HsIJ6/BQFBvGvLmRaZq+/xa0Vhq0LwEdOiahqQPRY4w/ABaxmk5n6
 WoFB6XUVAou3w==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 0EAB1A0082;
 Tue, 10 Dec 2019 19:54:58 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 1/4] net: stmmac: Print more information in DebugFS
 DMA Capabilities file
Date: Tue, 10 Dec 2019 20:54:41 +0100
Message-Id: <cca3045069b6f667e8ff5a812a6ddd9b4565f65d.1576007149.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1576007149.git.Jose.Abreu@synopsys.com>
References: <cover.1576007149.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1576007149.git.Jose.Abreu@synopsys.com>
References: <cover.1576007149.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_115500_865345_F459D4DE 
X-CRM114-Status: GOOD (  10.78  )
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
index bbc65bd332a8..41d4188fc7bc 100644
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
