Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48051ADD94
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 18:55:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mdvExCD0pjZR/oWjATptX1idIPjEPudXk0haFNHY+IQ=; b=u+8
	sNrbfiEf6ztq1wvP1oG9dgpXF4A31V6L2yxPEYmbxumb3+c5ltLa3f8bi9Q9NEWVQ8wlDdsfT39CP
	ZVKWzT87enPl2Cqz7MyXAyMK1LZlvVWyscwmgJ+cBPoziZfb/e+J8Jq+XyQB95GfPT+mrctBU0J5F
	Id0hL5z3dg1MFLE3S6ZV2Mn0+Wk7qPwCo/PhOJHm2MUVcRhKjzkgRYiSVDyjiqFTgUIARMe/uLCwn
	Q9AX3ehEvPQ60KpzENlkbmEyXoeNYfF8dzO9vxxs6RGBOJuReY09LCRlHYzWWkc3nTTrvuLYMVLIA
	MDbE5ppfEk5wAE2eWNZ9kSHPZcsqilQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7MwH-0005YS-5x; Mon, 09 Sep 2019 16:54:53 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Mvx-0005Xp-4W
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 16:54:34 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id EB2B7C0196;
 Mon,  9 Sep 2019 16:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568048072; bh=ztU5cXLi0V4K5mhBVrPh5y1if4Ams78t+OFbPXBvR9E=;
 h=From:To:Cc:Subject:Date:From;
 b=RIpsg1ujBISZCK6V15inoKksfPMnzSXgBKiCvP3SBoKcYo2tSiaqiVXAVjoTKz6LT
 G2nTzlz5HF9Dia7IQ96oqJRA/DqBbUKFmFimUb3oR/vkGLI8reJf5sopl3bGe0y8+c
 c6O6+lqyAEsU71J2Fe0cRvbCZUXLvCquZiQsrYpaUPpKdLMQnRt2MvvolBHpJ40IhS
 el/Mfq+W4iXG77c7vqT+VdG4edAdoOwcBRdf6RaW5oNhOYscLkA6piuVMhfFh+iCG4
 8KGA2iGbImOqqih0IfeNIY4Flp4QNjhfAXoNs3OvOWmS8cC/wuGWz+ZOJ97EEgdrmw
 M97Tz76vpaUcw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id E1219A0057;
 Mon,  9 Sep 2019 16:54:28 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next] net: stmmac: pci: Add HAPS support using GMAC5
Date: Mon,  9 Sep 2019 18:54:26 +0200
Message-Id: <c37a55225e1ef66233b47c02b1441b91abeb3b76.1568047994.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_095433_285680_EE4FBA99 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Add the support for Synopsys HAPS board that uses GMAC5.

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
 drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c | 71 ++++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c
index 20906287b6d4..292045f4581f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c
@@ -375,6 +375,75 @@ static const struct stmmac_pci_info quark_pci_info = {
 	.setup = quark_default_data,
 };
 
+static int snps_gmac5_default_data(struct pci_dev *pdev,
+				   struct plat_stmmacenet_data *plat)
+{
+	int i;
+
+	plat->clk_csr = 5;
+	plat->has_gmac4 = 1;
+	plat->force_sf_dma_mode = 1;
+	plat->tso_en = 1;
+	plat->pmt = 1;
+
+	plat->mdio_bus_data->phy_mask = 0;
+
+	/* Set default value for multicast hash bins */
+	plat->multicast_filter_bins = HASH_TABLE_SIZE;
+
+	/* Set default value for unicast filter entries */
+	plat->unicast_filter_entries = 1;
+
+	/* Set the maxmtu to a default of JUMBO_LEN */
+	plat->maxmtu = JUMBO_LEN;
+
+	/* Set default number of RX and TX queues to use */
+	plat->tx_queues_to_use = 4;
+	plat->rx_queues_to_use = 4;
+
+	plat->tx_sched_algorithm = MTL_TX_ALGORITHM_WRR;
+	for (i = 0; i < plat->tx_queues_to_use; i++) {
+		plat->tx_queues_cfg[i].use_prio = false;
+		plat->tx_queues_cfg[i].mode_to_use = MTL_QUEUE_DCB;
+		plat->tx_queues_cfg[i].weight = 25;
+	}
+
+	plat->rx_sched_algorithm = MTL_RX_ALGORITHM_SP;
+	for (i = 0; i < plat->rx_queues_to_use; i++) {
+		plat->rx_queues_cfg[i].use_prio = false;
+		plat->rx_queues_cfg[i].mode_to_use = MTL_QUEUE_DCB;
+		plat->rx_queues_cfg[i].pkt_route = 0x0;
+		plat->rx_queues_cfg[i].chan = i;
+	}
+
+	plat->bus_id = 1;
+	plat->phy_addr = -1;
+	plat->interface = PHY_INTERFACE_MODE_GMII;
+
+	plat->dma_cfg->pbl = 32;
+	plat->dma_cfg->pblx8 = true;
+
+	/* Axi Configuration */
+	plat->axi = devm_kzalloc(&pdev->dev, sizeof(*plat->axi), GFP_KERNEL);
+	if (!plat->axi)
+		return -ENOMEM;
+
+	plat->axi->axi_wr_osr_lmt = 31;
+	plat->axi->axi_rd_osr_lmt = 31;
+
+	plat->axi->axi_fb = false;
+	plat->axi->axi_blen[0] = 4;
+	plat->axi->axi_blen[1] = 8;
+	plat->axi->axi_blen[2] = 16;
+	plat->axi->axi_blen[3] = 32;
+
+	return 0;
+}
+
+static const struct stmmac_pci_info snps_gmac5_pci_info = {
+	.setup = snps_gmac5_default_data,
+};
+
 /**
  * stmmac_pci_probe
  *
@@ -518,6 +587,7 @@ static SIMPLE_DEV_PM_OPS(stmmac_pm_ops, stmmac_pci_suspend, stmmac_pci_resume);
 #define STMMAC_EHL_RGMII1G_ID	0x4b30
 #define STMMAC_EHL_SGMII1G_ID	0x4b31
 #define STMMAC_TGL_SGMII1G_ID	0xa0ac
+#define STMMAC_GMAC5_ID		0x7102
 
 #define STMMAC_DEVICE(vendor_id, dev_id, info)	{	\
 	PCI_VDEVICE(vendor_id, dev_id),			\
@@ -531,6 +601,7 @@ static const struct pci_device_id stmmac_id_table[] = {
 	STMMAC_DEVICE(INTEL, STMMAC_EHL_RGMII1G_ID, ehl_rgmii1g_pci_info),
 	STMMAC_DEVICE(INTEL, STMMAC_EHL_SGMII1G_ID, ehl_sgmii1g_pci_info),
 	STMMAC_DEVICE(INTEL, STMMAC_TGL_SGMII1G_ID, tgl_sgmii1g_pci_info),
+	STMMAC_DEVICE(SYNOPSYS, STMMAC_GMAC5_ID, snps_gmac5_pci_info),
 	{}
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
