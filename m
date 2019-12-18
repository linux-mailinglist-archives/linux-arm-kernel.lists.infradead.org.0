Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E00281244B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:34:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=w6O50+p2XVaD05VI3P/bRy/5wUtZIUTgPPSOW9xgfDw=; b=C0W3DPMrUn8vJ5xy2oiYnaZZHc
	bB3MOW/QC+bzRyTp9N/ttEcdrfOUzvfbnE2CJmsS9YZcLUPJQwWlbYVgh1A4BGhbT7H6++KLLeBVl
	AVxQySlc5BmXz/HI0/tgGsxSaQDcS79jSM+HYLyfS0vJwiPQQPEF1d24CPdatNnBhQVjBwgE/5tX1
	2y6pie+9HnkW81QEie8ldGzUr106EdI3AExiam/C4P49dQ3uAxOpksFAFkorUF1whvDS0DFttGJOR
	w3C/MtHLThZYWG+WzEqYqAt5PiLyhBA6uso7y1qbPLNlgjWcGwrSAfq3kYD7H4Y2rpBenvRl/VaTr
	lDuYkTPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWeb-00084P-AE; Wed, 18 Dec 2019 10:34:05 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWdw-0007jL-4P
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:33:25 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id EF7C9405C6;
 Wed, 18 Dec 2019 10:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576665201; bh=wj6sCtmNcy6nxZMnDQRmD3lTcMPEpv2f8Ae23zQUnfM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=Al6xwfkkTpgN6/CIyhzEPpgQjYPsmXRxyahxOokpKKehlePwbBQkQvqTYLOwkvsVI
 tLDow+F5u09U73gJqSMVOBlhZrRk5z/WkpFJTQ7TOCREUXwOAWxsUm65VtDn5D2Fn/
 b/0adpvs/op5hUURgh4Bd5iEdxvVHiFsd1uJVs9VBPI1dIuLeDF0qo/FEdSPSc2FrZ
 RuwIkGm6Sd9e8cOYqLdVq+ne1xbqEauoGCaNeX3PHuhgvn0QB/NXxGbZ9Glmx/IEtE
 hFgfey8rwVvgwz3O6eDPmaDQI1m9jn1iFqLqVQ2nVqTErWZU8uf83nvj/BDoDyrGtQ
 FllDaFBzkceVQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id BE22CA00B1;
 Wed, 18 Dec 2019 10:33:19 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 7/7] net: stmmac: mmc: Add Frame Preemption counters
 on GMAC5+ cores
Date: Wed, 18 Dec 2019 11:33:11 +0100
Message-Id: <fd0742e12751ee0d2b54aba9464b4ff5387628aa.1576664870.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1576664870.git.Jose.Abreu@synopsys.com>
References: <cover.1576664870.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1576664870.git.Jose.Abreu@synopsys.com>
References: <cover.1576664870.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_023324_217806_D7625EEC 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
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
 Alexandre Torgue <alexandre.torgue@st.com>, Richard.Ong@synopsys.com,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Boon Leong <boon.leong.ong@intel.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Andre Guedes <andre.guedes@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This can be useful for debug. Add these counters on GMAC5+ cores just
like we did for XGMAC.

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
 drivers/net/ethernet/stmicro/stmmac/mmc_core.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/mmc_core.c b/drivers/net/ethernet/stmicro/stmmac/mmc_core.c
index 252cf48c5816..a57b0fa815ab 100644
--- a/drivers/net/ethernet/stmicro/stmmac/mmc_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/mmc_core.c
@@ -119,6 +119,13 @@
 #define MMC_RX_ICMP_GD_OCTETS		0x180
 #define MMC_RX_ICMP_ERR_OCTETS		0x184
 
+#define MMC_TX_FPE_FRAG			0x1a8
+#define MMC_TX_HOLD_REQ			0x1ac
+#define MMC_RX_PKT_ASSEMBLY_ERR		0x1c8
+#define MMC_RX_PKT_SMD_ERR		0x1cc
+#define MMC_RX_PKT_ASSEMBLY_OK		0x1d0
+#define MMC_RX_FPE_FRAG			0x1d4
+
 /* XGMAC MMC Registers */
 #define MMC_XGMAC_TX_OCTET_GB		0x14
 #define MMC_XGMAC_TX_PKT_GB		0x1c
@@ -315,6 +322,15 @@ static void dwmac_mmc_read(void __iomem *mmcaddr, struct stmmac_counters *mmc)
 	mmc->mmc_rx_tcp_err_octets += readl(mmcaddr + MMC_RX_TCP_ERR_OCTETS);
 	mmc->mmc_rx_icmp_gd_octets += readl(mmcaddr + MMC_RX_ICMP_GD_OCTETS);
 	mmc->mmc_rx_icmp_err_octets += readl(mmcaddr + MMC_RX_ICMP_ERR_OCTETS);
+
+	mmc->mmc_tx_fpe_fragment_cntr += readl(mmcaddr + MMC_TX_FPE_FRAG);
+	mmc->mmc_tx_hold_req_cntr += readl(mmcaddr + MMC_TX_HOLD_REQ);
+	mmc->mmc_rx_packet_assembly_err_cntr +=
+		readl(mmcaddr + MMC_RX_PKT_ASSEMBLY_ERR);
+	mmc->mmc_rx_packet_smd_err_cntr += readl(mmcaddr + MMC_RX_PKT_SMD_ERR);
+	mmc->mmc_rx_packet_assembly_ok_cntr +=
+		readl(mmcaddr + MMC_RX_PKT_ASSEMBLY_OK);
+	mmc->mmc_rx_fpe_fragment_cntr += readl(mmcaddr + MMC_RX_FPE_FRAG);
 }
 
 const struct stmmac_mmc_ops dwmac_mmc_ops = {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
