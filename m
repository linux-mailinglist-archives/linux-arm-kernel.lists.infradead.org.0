Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC76846BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WvcYQH2K7banDC1o2mmN8EpxASqyMVNSc8uzaF1r6Jo=; b=Mm8aZKBVZwtJnUNVmhS2SXukqm
	QUAh6FmWQ4fNZJKH0EIwYPyWWcZJcQoIMOsvA82lBkjkIHPMEtqxe/utNUfDDip/GKzSOvC/AWB+0
	a0yO8XcIztwlehdwpDsGyhYWQpDRxjIip06d/4//2ZxziJIE5WPwzZSQnAriyMX7Ub6s0ScC+bZp2
	0nPOlRC1BJF68S0iusz8rJkwhlDF5oob+PMVekHfOeDh4yPLdwhBC5rdnHTi/FRC5mw5S/ZjFjj34
	WwQEP1SmFyqJ4mWw6abkOji6eB/CrvfYpE8913UhoAo95YKQDZNAg+N692FtDEt0DIhLuSMrMoehw
	DBT3i8LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvGwV-0004Wl-31; Wed, 07 Aug 2019 08:05:07 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvGuv-0003PC-K0
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:03:33 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 9F95EC0BD0;
 Wed,  7 Aug 2019 08:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565165008; bh=SAjBsqpaJXqi+dF6OXS+5et5v2cw5mG0s/Z67cMC8Sk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=d8E2LYX9KdolLg9JJltUZONxaPLYTp/Dcuiw9qT+94NeXo+GTIKb0+s396kLXURoQ
 L7jib4NdMrHjZsxc9k4B7Ioe5e07gmuA/8X4BcjFlgPKAC1b81Q4V2sQ1QV7yrZLZH
 Xhcqa7q+jIDyzUC+qWVNXWyfj4V6hn/EXquoyNVNGk+xfh3KtmEyW4VM/44rU4cHKM
 dVlnpTPsklbabjdw09Py/19Sz9iw4rvrR6gL5v53fo05Sc0vQh+deucqLKysZRRBhl
 PMCw0jHNdUgKZ0tKUljZoG4nqVojj2eqVSkV/06SXdF9FkdrW97+BEwmlLP7RaJOSf
 JWnSQWhvw5WnA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 3E9D1A0067;
 Wed,  7 Aug 2019 08:03:26 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v3 03/10] net: stmmac: xgmac: Implement
 tx_queue_prio()
Date: Wed,  7 Aug 2019 10:03:11 +0200
Message-Id: <ed0a5e81de71c28f2749698ccbf77ce0b19a6ad7.1565164729.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565164729.git.joabreu@synopsys.com>
References: <cover.1565164729.git.joabreu@synopsys.com>
In-Reply-To: <cover.1565164729.git.joabreu@synopsys.com>
References: <cover.1565164729.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_010329_710789_DAC86EF1 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Implement the TX Queue Priority callback in XGMAC core.

Signed-off-by: Jose Abreu <joabreu@synopsys.com>

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
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h      |  4 ++++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c | 19 ++++++++++++++++++-
 2 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index 86a42bc39d21..b77091161765 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -127,6 +127,10 @@
 #define XGMAC_MTL_RXQ_DMA_MAP1		0x00001034
 #define XGMAC_QxMDMACH(x)		GENMASK((x) * 8 + 3, (x) * 8)
 #define XGMAC_QxMDMACH_SHIFT(x)		((x) * 8)
+#define XGMAC_TC_PRTY_MAP0		0x00001040
+#define XGMAC_TC_PRTY_MAP1		0x00001044
+#define XGMAC_PSTC(x)			GENMASK((x) * 8 + 7, (x) * 8)
+#define XGMAC_PSTC_SHIFT(x)		((x) * 8)
 #define XGMAC_MTL_TXQ_OPMODE(x)		(0x00001100 + (0x80 * (x)))
 #define XGMAC_TQS			GENMASK(25, 16)
 #define XGMAC_TQS_SHIFT			16
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index ce6503dfc86d..bfbd5ae11540 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -118,6 +118,23 @@ static void dwxgmac2_rx_queue_prio(struct mac_device_info *hw, u32 prio,
 	writel(value, ioaddr + reg);
 }
 
+static void dwxgmac2_tx_queue_prio(struct mac_device_info *hw, u32 prio,
+				   u32 queue)
+{
+	void __iomem *ioaddr = hw->pcsr;
+	u32 value, reg;
+
+	reg = (queue < 4) ? XGMAC_TC_PRTY_MAP0 : XGMAC_TC_PRTY_MAP1;
+	if (queue >= 4)
+		queue -= 4;
+
+	value = readl(ioaddr + reg);
+	value &= ~XGMAC_PSTC(queue);
+	value |= (prio << XGMAC_PSTC_SHIFT(queue)) & XGMAC_PSTC(queue);
+
+	writel(value, ioaddr + reg);
+}
+
 static void dwxgmac2_prog_mtl_rx_algorithms(struct mac_device_info *hw,
 					    u32 rx_alg)
 {
@@ -428,7 +445,7 @@ const struct stmmac_ops dwxgmac210_ops = {
 	.rx_ipc = dwxgmac2_rx_ipc,
 	.rx_queue_enable = dwxgmac2_rx_queue_enable,
 	.rx_queue_prio = dwxgmac2_rx_queue_prio,
-	.tx_queue_prio = NULL,
+	.tx_queue_prio = dwxgmac2_tx_queue_prio,
 	.rx_queue_routing = NULL,
 	.prog_mtl_rx_algorithms = dwxgmac2_prog_mtl_rx_algorithms,
 	.prog_mtl_tx_algorithms = dwxgmac2_prog_mtl_tx_algorithms,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
