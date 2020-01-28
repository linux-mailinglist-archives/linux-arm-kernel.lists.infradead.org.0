Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F2714B108
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 09:40:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7OWa0NKmJeVQLvaM4BpbIxb5aCo0uHzUi2w1rZC3pGk=; b=ZO36jY7PP7oEkZ
	vqcX0/iTMJrPiZie+o3ow7FZevvxNFvFE0ZcTrN05Y3ylM4oY74ihsyT4sF+PxtGD436KIurKz62R
	sY6BKNsV/bQKcIXcgA8eKGle+E/nFU6KuZcq5teFXydAXD/P2xlYom/F+IxxAcnYwKDEc1+NRQHFy
	CUFiw9MpNJi8hsqd6Ef4wvpi7Nf5w5jk02xzhI78LnodQleKhjFxejOgJYEqSHK13cduiAH+2lPjW
	r9VL3mrSxvwNqMC9TpQ3OONQ+vMYufdv/EXkKR9cTvgwGwvRxAK3ouqYITjWiWE5CGF2M1BQV2d2A
	/6cei6jMSK+coCOwcD4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwMPz-0001AG-25; Tue, 28 Jan 2020 08:40:19 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwMPo-0000Fv-8B
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 08:40:10 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00S8WtBS008580; Tue, 28 Jan 2020 09:40:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=wYVLtBQDsVpHpQf/7yE70/hiuInLMKJGmpFUxExoUkk=;
 b=YjhOSP9P4lWFFyr1VBF94DHLOUzMLuRFiOnYnD5ZYvkd3f46cKSVYS8nd69wZumylxN/
 li3GFgUJB8pA6h6mWv8zX+iW5sS1FcgcHBci0jv65sqaaDEULF9NmiJZdmDNEOdOEQmR
 fFHIUKvfvPhsnhzL6rEc0LPkQ/R+j5sj+iD0hJeLICCWf7uO1ECeJnBGCXm4i8dFfRis
 Ma2/gHmdtJzR/5+7CUqUP6vo3aaI9B69fUA3GgOTgYcfr/RJ+1ADV+hemNK3ROOYiQdM
 hVMsqVlb8FLHeUgLYFjcti62DGR3/wMiJQfIoKiQNe195XoX7R+mkiSl9ypLuN6fwkBT lw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrcaxvrv1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 09:40:00 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C422210002A;
 Tue, 28 Jan 2020 09:39:55 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7D5A8211F3F;
 Tue, 28 Jan 2020 09:39:55 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 28 Jan 2020 09:39:54 +0100
From: Christophe Roullier <christophe.roullier@st.com>
To: <davem@davemloft.net>, <joabreu@synopsys.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <peppe.cavallaro@st.com>
Subject: [PATCH 1/1] net: ethernet: stmmac: simplify phy modes management for
 stm32
Date: Tue, 28 Jan 2020 09:39:42 +0100
Message-ID: <20200128083942.17823-1-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_02:2020-01-24,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_004008_666887_A58CE71E 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: netdev@vger.kernel.org, christophe.roullier@st.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

No new feature, just to simplify stm32 part to be easier to use.
Add by default all Ethernet clocks in DT, and activate or not in function
of phy mode, clock frequency, if property "st,ext-phyclk" is set or not.
Keep backward compatibility
-----------------------------------------------------------------------
|PHY_MODE | Normal | PHY wo crystal|   PHY wo crystal   |  No 125Mhz  |
|         |        |      25MHz    |        50MHz       |  from PHY   |
-----------------------------------------------------------------------
|  MII    |	 -    |     eth-ck    |       n/a          |	    n/a  |
|         |        | st,ext-phyclk |                    |             |
-----------------------------------------------------------------------
|  GMII   |	 -    |     eth-ck    |       n/a          |	    n/a  |
|         |        | st,ext-phyclk |                    |             |
-----------------------------------------------------------------------
| RGMII   |	 -    |     eth-ck    |       n/a          |      eth-ck  |
|         |        | st,ext-phyclk |                    |st,eth-clk-sel|
|         |        |               |                    |       or     |
|         |        |               |                    | st,ext-phyclk|
------------------------------------------------------------------------
| RMII    |	 -    |     eth-ck    |      eth-ck        |	     n/a  |
|         |        | st,ext-phyclk | st,eth-ref-clk-sel |              |
|         |        |               | or st,ext-phyclk   |              |
------------------------------------------------------------------------

Signed-off-by: Christophe Roullier <christophe.roullier@st.com>

---
 .../net/ethernet/stmicro/stmmac/dwmac-stm32.c | 58 +++++++++++--------
 1 file changed, 34 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
index 9b7be996d07b..866251eac868 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
@@ -29,6 +29,11 @@
 #define SYSCFG_PMCR_ETH_CLK_SEL		BIT(16)
 #define SYSCFG_PMCR_ETH_REF_CLK_SEL	BIT(17)
 
+/* CLOCK feed to PHY*/
+#define ETH_CK_F_25M	25000000
+#define ETH_CK_F_50M	50000000
+#define ETH_CK_F_125M	125000000
+
 /*  Ethernet PHY interface selection in register SYSCFG Configuration
  *------------------------------------------
  * src	 |BIT(23)| BIT(22)| BIT(21)|BIT(20)|
@@ -58,33 +63,20 @@
  *|         |        |      25MHz    |        50MHz       |                  |
  * ---------------------------------------------------------------------------
  *|  MII    |	 -   |     eth-ck    |	      n/a	  |	  n/a        |
- *|         |        |		     |                    |		     |
+ *|         |        | st,ext-phyclk |                    |		     |
  * ---------------------------------------------------------------------------
  *|  GMII   |	 -   |     eth-ck    |	      n/a	  |	  n/a        |
- *|         |        |               |                    |		     |
+ *|         |        | st,ext-phyclk |                    |		     |
  * ---------------------------------------------------------------------------
- *| RGMII   |	 -   |     eth-ck    |	      n/a	  |  eth-ck (no pin) |
- *|         |        |               |                    |  st,eth-clk-sel  |
+ *| RGMII   |	 -   |     eth-ck    |	      n/a	  |      eth-ck      |
+ *|         |        | st,ext-phyclk |                    | st,eth-clk-sel or|
+ *|         |        |               |                    | st,ext-phyclk    |
  * ---------------------------------------------------------------------------
  *| RMII    |	 -   |     eth-ck    |	    eth-ck        |	  n/a        |
- *|         |        |		     | st,eth-ref-clk-sel |		     |
+ *|         |        | st,ext-phyclk | st,eth-ref-clk-sel |		     |
+ *|         |        |               | or st,ext-phyclk   |		     |
  * ---------------------------------------------------------------------------
  *
- * BIT(17) : set this bit in RMII mode when you have PHY without crystal 50MHz
- * BIT(16) : set this bit in GMII/RGMII PHY when you do not want use 125Mhz
- * from PHY
- *-----------------------------------------------------
- * src	 |         BIT(17)       |       BIT(16)      |
- *-----------------------------------------------------
- * MII   |           n/a	 |         n/a        |
- *-----------------------------------------------------
- * GMII  |           n/a         |   st,eth-clk-sel   |
- *-----------------------------------------------------
- * RGMII |           n/a         |   st,eth-clk-sel   |
- *-----------------------------------------------------
- * RMII  |   st,eth-ref-clk-sel	 |         n/a        |
- *-----------------------------------------------------
- *
  */
 
 struct stm32_dwmac {
@@ -93,6 +85,8 @@ struct stm32_dwmac {
 	struct clk *clk_eth_ck;
 	struct clk *clk_ethstp;
 	struct clk *syscfg_clk;
+	int ext_phyclk;
+	int enable_eth_ck;
 	int eth_clk_sel_reg;
 	int eth_ref_clk_sel_reg;
 	int irq_pwr_wakeup;
@@ -170,24 +164,34 @@ static int stm32mp1_clk_prepare(struct stm32_dwmac *dwmac, bool prepare)
 static int stm32mp1_set_mode(struct plat_stmmacenet_data *plat_dat)
 {
 	struct stm32_dwmac *dwmac = plat_dat->bsp_priv;
-	u32 reg = dwmac->mode_reg;
+	u32 reg = dwmac->mode_reg, clk_rate;
 	int val;
 
+	clk_rate = clk_get_rate(dwmac->clk_eth_ck);
+	dwmac->enable_eth_ck = false;
 	switch (plat_dat->interface) {
 	case PHY_INTERFACE_MODE_MII:
+		if (clk_rate == ETH_CK_F_25M && dwmac->ext_phyclk)
+			dwmac->enable_eth_ck = true;
 		val = SYSCFG_PMCR_ETH_SEL_MII;
 		pr_debug("SYSCFG init : PHY_INTERFACE_MODE_MII\n");
 		break;
 	case PHY_INTERFACE_MODE_GMII:
 		val = SYSCFG_PMCR_ETH_SEL_GMII;
-		if (dwmac->eth_clk_sel_reg)
+		if (clk_rate == ETH_CK_F_25M &&
+		    (dwmac->eth_clk_sel_reg || dwmac->ext_phyclk)) {
+			dwmac->enable_eth_ck = true;
 			val |= SYSCFG_PMCR_ETH_CLK_SEL;
+		}
 		pr_debug("SYSCFG init : PHY_INTERFACE_MODE_GMII\n");
 		break;
 	case PHY_INTERFACE_MODE_RMII:
 		val = SYSCFG_PMCR_ETH_SEL_RMII;
-		if (dwmac->eth_ref_clk_sel_reg)
+		if ((clk_rate == ETH_CK_F_25M || clk_rate == ETH_CK_F_50M) &&
+		    (dwmac->eth_ref_clk_sel_reg || dwmac->ext_phyclk)) {
+			dwmac->enable_eth_ck = true;
 			val |= SYSCFG_PMCR_ETH_REF_CLK_SEL;
+		}
 		pr_debug("SYSCFG init : PHY_INTERFACE_MODE_RMII\n");
 		break;
 	case PHY_INTERFACE_MODE_RGMII:
@@ -195,8 +199,11 @@ static int stm32mp1_set_mode(struct plat_stmmacenet_data *plat_dat)
 	case PHY_INTERFACE_MODE_RGMII_RXID:
 	case PHY_INTERFACE_MODE_RGMII_TXID:
 		val = SYSCFG_PMCR_ETH_SEL_RGMII;
-		if (dwmac->eth_clk_sel_reg)
+		if ((clk_rate == ETH_CK_F_25M || clk_rate == ETH_CK_F_125M) &&
+		    (dwmac->eth_clk_sel_reg || dwmac->ext_phyclk)) {
+			dwmac->enable_eth_ck = true;
 			val |= SYSCFG_PMCR_ETH_CLK_SEL;
+		}
 		pr_debug("SYSCFG init : PHY_INTERFACE_MODE_RGMII\n");
 		break;
 	default:
@@ -294,6 +301,9 @@ static int stm32mp1_parse_data(struct stm32_dwmac *dwmac,
 	struct device_node *np = dev->of_node;
 	int err = 0;
 
+	/* Ethernet PHY have no crystal */
+	dwmac->ext_phyclk = of_property_read_bool(np, "st,ext-phyclk");
+
 	/* Gigabit Ethernet 125MHz clock selection. */
 	dwmac->eth_clk_sel_reg = of_property_read_bool(np, "st,eth-clk-sel");
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
