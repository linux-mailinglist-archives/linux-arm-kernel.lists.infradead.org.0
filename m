Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAF9846A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:04:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WPHwR61W4GumjQLXpSWtlTyqRpsFR6mEPiBuRfn/5jg=; b=gmqPG1K4esP4oRP7l7ORQBiobI
	CMqyTWGaqjiWKtOJYq1K32GUv6iVKPJvFaOD10CEiXdWavl3kvp67wYKnvJYSKRAqtk7sSlfA8Pan
	MRdwuJN24j+GkG5fCjYAYRRin7mE89Sh4clFn88SCV2egZ809xtD0UAe2LaUTKgokT8LJWPTkxs0d
	SW+bBZCus2jKfCXDwACGfQqSgAo7D3Iz30KwX6iwjcZcfsT9xGv1Wxite228qS0+HB6FTP4KSYwDY
	LTxBifcFcHYNU9DaVy/Cx5IdJn+DlV0XsTxsqfLoYfZ6ItCQd6dvjA3Hpm+VpF+HIe2pF4wHFZmOz
	vcYBapVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvGvX-0003f1-T4; Wed, 07 Aug 2019 08:04:08 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvGuv-0003PE-Im
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:03:31 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id EB7E8C1211;
 Wed,  7 Aug 2019 08:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565165008; bh=xKwJ+hZtvU62s+HKwMkb08m3Vw//JbbbEQN450g/tV0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=eelwJjBIA0WowIrOVW4SrQMWtf6fZWpjbA8LJVV9tFTAm3X2SfSmBpj/snkPEhdMu
 At41qVl2f+DUZ++eoDnoeGEWF6khxzFz6V0+T5rORDfFNxtYkT6TBlTas8ZNQ47Zfb
 2dexMybNUmncvy3fSQWqMleBlw7ND3XOF+Sy7RrM5g1w6pUxw+70dsUwyZZ6rIQri9
 BenNDUuiY1J3Rk3RPws7L4nSkalAEicl9ozkIRA1AVu9kTNLSBrhb2agj8hqCc87Ju
 dpC0+j95gOIqPC/PAgD8tRJPvU2G2lblq1rqj0ZhYCakKyCjwPA9keuSZDkjJTWaUe
 B3DlLrS+R75qw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id A6FBEA0075;
 Wed,  7 Aug 2019 08:03:26 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v3 08/10] net: stmmac: Implement Safety Features in
 XGMAC core
Date: Wed,  7 Aug 2019 10:03:16 +0200
Message-Id: <183329795e779423d1cff55185083583eb15a5f0.1565164730.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565164729.git.joabreu@synopsys.com>
References: <cover.1565164729.git.joabreu@synopsys.com>
In-Reply-To: <cover.1565164729.git.joabreu@synopsys.com>
References: <cover.1565164729.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_010329_636234_E162A292 
X-CRM114-Status: GOOD (  15.23  )
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

XGMAC also supports Safety Features. This patch implements the
configuration and handling of this feature in XGMAC core.

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
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     |  26 ++
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    | 281 +++++++++++++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |   4 +
 3 files changed, 311 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index bae0b01000cc..34a53f2141dc 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -110,6 +110,12 @@
 #define XGMAC_HWFEAT_RXCHCNT		GENMASK(15, 12)
 #define XGMAC_HWFEAT_TXQCNT		GENMASK(9, 6)
 #define XGMAC_HWFEAT_RXQCNT		GENMASK(3, 0)
+#define XGMAC_HW_FEATURE3		0x00000128
+#define XGMAC_HWFEAT_ASP		GENMASK(15, 14)
+#define XGMAC_MAC_DPP_FSM_INT_STATUS	0x00000150
+#define XGMAC_MAC_FSM_CONTROL		0x00000158
+#define XGMAC_PRTYEN			BIT(1)
+#define XGMAC_TMOUTEN			BIT(0)
 #define XGMAC_MDIO_ADDR			0x00000200
 #define XGMAC_MDIO_DATA			0x00000204
 #define XGMAC_MDIO_C22P			0x00000220
@@ -154,6 +160,16 @@
 #define XGMAC_TC_PRTY_MAP1		0x00001044
 #define XGMAC_PSTC(x)			GENMASK((x) * 8 + 7, (x) * 8)
 #define XGMAC_PSTC_SHIFT(x)		((x) * 8)
+#define XGMAC_MTL_ECC_CONTROL		0x000010c0
+#define XGMAC_MTL_SAFETY_INT_STATUS	0x000010c4
+#define XGMAC_MEUIS			BIT(1)
+#define XGMAC_MECIS			BIT(0)
+#define XGMAC_MTL_ECC_INT_ENABLE	0x000010c8
+#define XGMAC_RPCEIE			BIT(12)
+#define XGMAC_ECEIE			BIT(8)
+#define XGMAC_RXCEIE			BIT(4)
+#define XGMAC_TXCEIE			BIT(0)
+#define XGMAC_MTL_ECC_INT_STATUS	0x000010cc
 #define XGMAC_MTL_TXQ_OPMODE(x)		(0x00001100 + (0x80 * (x)))
 #define XGMAC_TQS			GENMASK(25, 16)
 #define XGMAC_TQS_SHIFT			16
@@ -218,6 +234,16 @@
 #define XGMAC_TDPS			GENMASK(29, 0)
 #define XGMAC_RX_EDMA_CTRL		0x00003044
 #define XGMAC_RDPS			GENMASK(29, 0)
+#define XGMAC_DMA_SAFETY_INT_STATUS	0x00003064
+#define XGMAC_MCSIS			BIT(31)
+#define XGMAC_MSUIS			BIT(29)
+#define XGMAC_MSCIS			BIT(28)
+#define XGMAC_DEUIS			BIT(1)
+#define XGMAC_DECIS			BIT(0)
+#define XGMAC_DMA_ECC_INT_ENABLE	0x00003068
+#define XGMAC_DCEIE			BIT(1)
+#define XGMAC_TCEIE			BIT(0)
+#define XGMAC_DMA_ECC_INT_STATUS	0x0000306c
 #define XGMAC_DMA_CH_CONTROL(x)		(0x00003100 + (0x80 * (x)))
 #define XGMAC_PBLx8			BIT(16)
 #define XGMAC_DMA_CH_TX_CONTROL(x)	(0x00003104 + (0x80 * (x)))
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index e2dbebeb59e9..19dfb72cab11 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -530,6 +530,284 @@ static void dwxgmac2_update_vlan_hash(struct mac_device_info *hw, u32 hash,
 	}
 }
 
+struct dwxgmac3_error_desc {
+	bool valid;
+	const char *desc;
+	const char *detailed_desc;
+};
+
+#define STAT_OFF(field)		offsetof(struct stmmac_safety_stats, field)
+
+static void dwxgmac3_log_error(struct net_device *ndev, u32 value, bool corr,
+			       const char *module_name,
+			       const struct dwxgmac3_error_desc *desc,
+			       unsigned long field_offset,
+			       struct stmmac_safety_stats *stats)
+{
+	unsigned long loc, mask;
+	u8 *bptr = (u8 *)stats;
+	unsigned long *ptr;
+
+	ptr = (unsigned long *)(bptr + field_offset);
+
+	mask = value;
+	for_each_set_bit(loc, &mask, 32) {
+		netdev_err(ndev, "Found %s error in %s: '%s: %s'\n", corr ?
+				"correctable" : "uncorrectable", module_name,
+				desc[loc].desc, desc[loc].detailed_desc);
+
+		/* Update counters */
+		ptr[loc]++;
+	}
+}
+
+static const struct dwxgmac3_error_desc dwxgmac3_mac_errors[32]= {
+	{ true, "ATPES", "Application Transmit Interface Parity Check Error" },
+	{ true, "DPES", "Descriptor Cache Data Path Parity Check Error" },
+	{ true, "TPES", "TSO Data Path Parity Check Error" },
+	{ true, "TSOPES", "TSO Header Data Path Parity Check Error" },
+	{ true, "MTPES", "MTL Data Path Parity Check Error" },
+	{ true, "MTSPES", "MTL TX Status Data Path Parity Check Error" },
+	{ true, "MTBUPES", "MAC TBU Data Path Parity Check Error" },
+	{ true, "MTFCPES", "MAC TFC Data Path Parity Check Error" },
+	{ true, "ARPES", "Application Receive Interface Data Path Parity Check Error" },
+	{ true, "MRWCPES", "MTL RWC Data Path Parity Check Error" },
+	{ true, "MRRCPES", "MTL RCC Data Path Parity Check Error" },
+	{ true, "CWPES", "CSR Write Data Path Parity Check Error" },
+	{ true, "ASRPES", "AXI Slave Read Data Path Parity Check Error" },
+	{ true, "TTES", "TX FSM Timeout Error" },
+	{ true, "RTES", "RX FSM Timeout Error" },
+	{ true, "CTES", "CSR FSM Timeout Error" },
+	{ true, "ATES", "APP FSM Timeout Error" },
+	{ true, "PTES", "PTP FSM Timeout Error" },
+	{ false, "UNKNOWN", "Unknown Error" }, /* 18 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 19 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 20 */
+	{ true, "MSTTES", "Master Read/Write Timeout Error" },
+	{ true, "SLVTES", "Slave Read/Write Timeout Error" },
+	{ true, "ATITES", "Application Timeout on ATI Interface Error" },
+	{ true, "ARITES", "Application Timeout on ARI Interface Error" },
+	{ true, "FSMPES", "FSM State Parity Error" },
+	{ false, "UNKNOWN", "Unknown Error" }, /* 26 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 27 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 28 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 29 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 30 */
+	{ true, "CPI", "Control Register Parity Check Error" },
+};
+
+static void dwxgmac3_handle_mac_err(struct net_device *ndev,
+				    void __iomem *ioaddr, bool correctable,
+				    struct stmmac_safety_stats *stats)
+{
+	u32 value;
+
+	value = readl(ioaddr + XGMAC_MAC_DPP_FSM_INT_STATUS);
+	writel(value, ioaddr + XGMAC_MAC_DPP_FSM_INT_STATUS);
+
+	dwxgmac3_log_error(ndev, value, correctable, "MAC",
+			   dwxgmac3_mac_errors, STAT_OFF(mac_errors), stats);
+}
+
+static const struct dwxgmac3_error_desc dwxgmac3_mtl_errors[32]= {
+	{ true, "TXCES", "MTL TX Memory Error" },
+	{ true, "TXAMS", "MTL TX Memory Address Mismatch Error" },
+	{ true, "TXUES", "MTL TX Memory Error" },
+	{ false, "UNKNOWN", "Unknown Error" }, /* 3 */
+	{ true, "RXCES", "MTL RX Memory Error" },
+	{ true, "RXAMS", "MTL RX Memory Address Mismatch Error" },
+	{ true, "RXUES", "MTL RX Memory Error" },
+	{ false, "UNKNOWN", "Unknown Error" }, /* 7 */
+	{ true, "ECES", "MTL EST Memory Error" },
+	{ true, "EAMS", "MTL EST Memory Address Mismatch Error" },
+	{ true, "EUES", "MTL EST Memory Error" },
+	{ false, "UNKNOWN", "Unknown Error" }, /* 11 */
+	{ true, "RPCES", "MTL RX Parser Memory Error" },
+	{ true, "RPAMS", "MTL RX Parser Memory Address Mismatch Error" },
+	{ true, "RPUES", "MTL RX Parser Memory Error" },
+	{ false, "UNKNOWN", "Unknown Error" }, /* 15 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 16 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 17 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 18 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 19 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 20 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 21 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 22 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 23 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 24 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 25 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 26 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 27 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 28 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 29 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 30 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 31 */
+};
+
+static void dwxgmac3_handle_mtl_err(struct net_device *ndev,
+				    void __iomem *ioaddr, bool correctable,
+				    struct stmmac_safety_stats *stats)
+{
+	u32 value;
+
+	value = readl(ioaddr + XGMAC_MTL_ECC_INT_STATUS);
+	writel(value, ioaddr + XGMAC_MTL_ECC_INT_STATUS);
+
+	dwxgmac3_log_error(ndev, value, correctable, "MTL",
+			   dwxgmac3_mtl_errors, STAT_OFF(mtl_errors), stats);
+}
+
+static const struct dwxgmac3_error_desc dwxgmac3_dma_errors[32]= {
+	{ true, "TCES", "DMA TSO Memory Error" },
+	{ true, "TAMS", "DMA TSO Memory Address Mismatch Error" },
+	{ true, "TUES", "DMA TSO Memory Error" },
+	{ false, "UNKNOWN", "Unknown Error" }, /* 3 */
+	{ true, "DCES", "DMA DCACHE Memory Error" },
+	{ true, "DAMS", "DMA DCACHE Address Mismatch Error" },
+	{ true, "DUES", "DMA DCACHE Memory Error" },
+	{ false, "UNKNOWN", "Unknown Error" }, /* 7 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 8 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 9 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 10 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 11 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 12 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 13 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 14 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 15 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 16 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 17 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 18 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 19 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 20 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 21 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 22 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 23 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 24 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 25 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 26 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 27 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 28 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 29 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 30 */
+	{ false, "UNKNOWN", "Unknown Error" }, /* 31 */
+};
+
+static void dwxgmac3_handle_dma_err(struct net_device *ndev,
+				    void __iomem *ioaddr, bool correctable,
+				    struct stmmac_safety_stats *stats)
+{
+	u32 value;
+
+	value = readl(ioaddr + XGMAC_DMA_ECC_INT_STATUS);
+	writel(value, ioaddr + XGMAC_DMA_ECC_INT_STATUS);
+
+	dwxgmac3_log_error(ndev, value, correctable, "DMA",
+			   dwxgmac3_dma_errors, STAT_OFF(dma_errors), stats);
+}
+
+static int dwxgmac3_safety_feat_config(void __iomem *ioaddr, unsigned int asp)
+{
+	u32 value;
+
+	if (!asp)
+		return -EINVAL;
+
+	/* 1. Enable Safety Features */
+	writel(0x0, ioaddr + XGMAC_MTL_ECC_CONTROL);
+
+	/* 2. Enable MTL Safety Interrupts */
+	value = readl(ioaddr + XGMAC_MTL_ECC_INT_ENABLE);
+	value |= XGMAC_RPCEIE; /* RX Parser Memory Correctable Error */
+	value |= XGMAC_ECEIE; /* EST Memory Correctable Error */
+	value |= XGMAC_RXCEIE; /* RX Memory Correctable Error */
+	value |= XGMAC_TXCEIE; /* TX Memory Correctable Error */
+	writel(value, ioaddr + XGMAC_MTL_ECC_INT_ENABLE);
+
+	/* 3. Enable DMA Safety Interrupts */
+	value = readl(ioaddr + XGMAC_DMA_ECC_INT_ENABLE);
+	value |= XGMAC_DCEIE; /* Descriptor Cache Memory Correctable Error */
+	value |= XGMAC_TCEIE; /* TSO Memory Correctable Error */
+	writel(value, ioaddr + XGMAC_DMA_ECC_INT_ENABLE);
+
+	/* Only ECC Protection for External Memory feature is selected */
+	if (asp <= 0x1)
+		return 0;
+
+	/* 4. Enable Parity and Timeout for FSM */
+	value = readl(ioaddr + XGMAC_MAC_FSM_CONTROL);
+	value |= XGMAC_PRTYEN; /* FSM Parity Feature */
+	value |= XGMAC_TMOUTEN; /* FSM Timeout Feature */
+	writel(value, ioaddr + XGMAC_MAC_FSM_CONTROL);
+
+	return 0;
+}
+
+static int dwxgmac3_safety_feat_irq_status(struct net_device *ndev,
+					   void __iomem *ioaddr,
+					   unsigned int asp,
+					   struct stmmac_safety_stats *stats)
+{
+	bool err, corr;
+	u32 mtl, dma;
+	int ret = 0;
+
+	if (!asp)
+		return -EINVAL;
+
+	mtl = readl(ioaddr + XGMAC_MTL_SAFETY_INT_STATUS);
+	dma = readl(ioaddr + XGMAC_DMA_SAFETY_INT_STATUS);
+
+	err = (mtl & XGMAC_MCSIS) || (dma & XGMAC_MCSIS);
+	corr = false;
+	if (err) {
+		dwxgmac3_handle_mac_err(ndev, ioaddr, corr, stats);
+		ret |= !corr;
+	}
+
+	err = (mtl & (XGMAC_MEUIS | XGMAC_MECIS)) ||
+	      (dma & (XGMAC_MSUIS | XGMAC_MSCIS));
+	corr = (mtl & XGMAC_MECIS) || (dma & XGMAC_MSCIS);
+	if (err) {
+		dwxgmac3_handle_mtl_err(ndev, ioaddr, corr, stats);
+		ret |= !corr;
+	}
+
+	err = dma & (XGMAC_DEUIS | XGMAC_DECIS);
+	corr = dma & XGMAC_DECIS;
+	if (err) {
+		dwxgmac3_handle_dma_err(ndev, ioaddr, corr, stats);
+		ret |= !corr;
+	}
+
+	return ret;
+}
+
+static const struct dwxgmac3_error {
+	const struct dwxgmac3_error_desc *desc;
+} dwxgmac3_all_errors[] = {
+	{ dwxgmac3_mac_errors },
+	{ dwxgmac3_mtl_errors },
+	{ dwxgmac3_dma_errors },
+};
+
+static int dwxgmac3_safety_feat_dump(struct stmmac_safety_stats *stats,
+				     int index, unsigned long *count,
+				     const char **desc)
+{
+	int module = index / 32, offset = index % 32;
+	unsigned long *ptr = (unsigned long *)stats;
+
+	if (module >= ARRAY_SIZE(dwxgmac3_all_errors))
+		return -EINVAL;
+	if (!dwxgmac3_all_errors[module].desc[offset].valid)
+		return -EINVAL;
+	if (count)
+		*count = *(ptr + index);
+	if (desc)
+		*desc = dwxgmac3_all_errors[module].desc[offset].desc;
+	return 0;
+}
+
 const struct stmmac_ops dwxgmac210_ops = {
 	.core_init = dwxgmac2_core_init,
 	.set_mac = dwxgmac2_set_mac,
@@ -559,6 +837,9 @@ const struct stmmac_ops dwxgmac210_ops = {
 	.pcs_get_adv_lp = NULL,
 	.debug = NULL,
 	.set_filter = dwxgmac2_set_filter,
+	.safety_feat_config = dwxgmac3_safety_feat_config,
+	.safety_feat_irq_status = dwxgmac3_safety_feat_irq_status,
+	.safety_feat_dump = dwxgmac3_safety_feat_dump,
 	.set_mac_loopback = dwxgmac2_set_mac_loopback,
 	.rss_configure = dwxgmac2_rss_configure,
 	.update_vlan_hash = dwxgmac2_update_vlan_hash,
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index b50e275e76c2..e4a1c877f2e1 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -399,6 +399,10 @@ static void dwxgmac2_get_hw_feature(void __iomem *ioaddr,
 		((hw_cap & XGMAC_HWFEAT_TXQCNT) >> 6) + 1;
 	dma_cap->number_rx_queues =
 		((hw_cap & XGMAC_HWFEAT_RXQCNT) >> 0) + 1;
+
+	/* MAC HW feature 3 */
+	hw_cap = readl(ioaddr + XGMAC_HW_FEATURE3);
+	dma_cap->asp = (hw_cap & XGMAC_HWFEAT_ASP) >> 14;
 }
 
 static void dwxgmac2_rx_watchdog(void __iomem *ioaddr, u32 riwt, u32 nchan)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
