Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF9D1391B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 14:03:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/otPE7C403E2CfGgHdzDHreII8kmC4LUaI1HNjC1IdA=; b=T5wmbG56o0pPaCwCCZU89tQ3rb
	4gYUSr34D68yFFUBBn34bdpQZdYsoUW8NZjyBlnjJSBZbQl9apuAOc7WpTGsC8iQScjetPZh7yo5N
	aSdLcPnQA5sEpoaZre7VYTxVaauVWMye33CNAmSKM3J3IDUuGAn5jr3Sq1o4EQIxUYqYYm+gj/Kx4
	W8P8Vzh28QPCwkCAtWx+sqcSOJS/wCxlHtPf+E5CyZwOtDLvVL3UhPD3ApNa+zSjKYCZNRgfvLlQs
	jWFLzS4n1wzSF32Y6cYovj3/OuzdP3hb7DCJkjj0cZIylqNGMp/9YW+uIPLUJ66vGPfxCPWi78ZxY
	u4vpoc8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqzNj-00015N-I4; Mon, 13 Jan 2020 13:03:47 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqzMr-0000Ww-0y
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 13:02:56 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id AB9FCC05CE;
 Mon, 13 Jan 2020 13:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578920572; bh=lnen1K/tDz2A9H4GTK3qRrNyC5Q/weucAfwOJ6GT9sA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=kSuvAYXiLM4aNfQ0CflE/SGLlS11xMRvdhQFZ5m7M0hXlrcW057SZH6rDXLKTQMoF
 16qH498Jq+Zia4fyfq/Z9WD2du+CUvdYQJ7mwkplbwImdsAwoO8KWMMSCcvZ61ABQY
 HBlMdbLC3F3f/hhW6SjWNhqRZTIbWB3A+8oXc2UKeCgNj2sw8BwzZMUV5AAw1ofhHQ
 xgs7KXK+csaVrkl0ryKAen7WDfiPuAxFcHtoEDXxGy+Xd6rEO6u7sf2eXEWoHxqiN3
 8wCqx1DucsY+JE+WnkhvL/Mgw98CNkXK1Q/kKhJkIOkO2snLSmjOzcQmoa4HUwHTpN
 6My1WDrqrUMPQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 72299A0073;
 Mon, 13 Jan 2020 13:02:50 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v2 6/8] net: stmmac: Add missing information in
 DebugFS capabilities file
Date: Mon, 13 Jan 2020 14:02:41 +0100
Message-Id: <faaa377a5518be7357f897d02eb0e35b57912093.1578920366.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1578920366.git.Jose.Abreu@synopsys.com>
References: <cover.1578920366.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1578920366.git.Jose.Abreu@synopsys.com>
References: <cover.1578920366.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_050253_180464_C4BA3BAA 
X-CRM114-Status: GOOD (  10.96  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Adds more information regarding HW Capabilities in the corresponding
DebugFS file.

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
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index fcc1ffe0b11e..7c2645ee81b1 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -4341,6 +4341,10 @@ static int stmmac_dma_cap_show(struct seq_file *seq, void *v)
 		   priv->dma_cap.number_rx_queues);
 	seq_printf(seq, "\tNumber of Additional TX queues: %d\n",
 		   priv->dma_cap.number_tx_queues);
+	seq_printf(seq, "\tCurrent number of TX queues: %d\n",
+		   priv->plat->tx_queues_to_use);
+	seq_printf(seq, "\tCurrent number of RX queues: %d\n",
+		   priv->plat->rx_queues_to_use);
 	seq_printf(seq, "\tEnhanced descriptors: %s\n",
 		   (priv->dma_cap.enh_desc) ? "Y" : "N");
 	seq_printf(seq, "\tTX Fifo Size: %d\n", priv->dma_cap.tx_fifo_size);
@@ -4369,6 +4373,12 @@ static int stmmac_dma_cap_show(struct seq_file *seq, void *v)
 		   priv->dma_cap.l3l4fnum);
 	seq_printf(seq, "\tARP Offloading: %s\n",
 		   priv->dma_cap.arpoffsel ? "Y" : "N");
+	seq_printf(seq, "\tEnhancements to Scheduled Traffic (EST): %s\n",
+		   priv->dma_cap.estsel ? "Y" : "N");
+	seq_printf(seq, "\tFrame Preemption (FPE): %s\n",
+		   priv->dma_cap.fpesel ? "Y" : "N");
+	seq_printf(seq, "\tTime-Based Scheduling (TBS): %s\n",
+		   priv->dma_cap.tbssel ? "Y" : "N");
 	return 0;
 }
 DEFINE_SHOW_ATTRIBUTE(stmmac_dma_cap);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
