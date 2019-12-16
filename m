Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA75312019B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 10:58:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFkWHxZ4kB6Zowhrp1ILXldPd4vK7WRPSSzfUxyrs4g=; b=q0C7Kyz0DTcI+e
	fQSoGzqIvDxl636JSgVLTt+Kw6zmm7LyjJDU5cvxcizWSwk8QNqTCztq2al5SVfkmsZ6G/LIYtV0v
	sSN5wuvEO+bd/x/4EKXoELa7VQAnrP6WtateEJelWHxscvopcqRQUb8XaBDiWEu+UDjvzdlnk+NFp
	r3AGm9FTCx/8IyWO0ARiZ71zj/SP80jKKhOrF5yvSiTn8j+WAPIKcO+P99pM/GGgrLiEpJlIdBjsa
	95kB/3AmqZVXKYtijKpMigbdTBNsLQpW8zE8ltag+r8Ucoa0hqRCVK0pBwNTJIDRrh4hcB0GLYKWo
	oGR3qsr/TX16FhTdQxfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ign8y-0007BM-6g; Mon, 16 Dec 2019 09:58:24 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ign6z-0005ZG-7S
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 09:56:24 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBG9uH2Z038082;
 Mon, 16 Dec 2019 03:56:17 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576490177;
 bh=wFhMbK0aKwv2VfpsctsKUnFfelTtACNb0m2S+vpm1lw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Nk4InlhQFltYTEoVZG3VpS+dhiwWFK5VNSV8fAp+eguzS492xr+bV0LrtyBw4Kt2J
 5cllS0IyIP2Xp3M56hztFdo4Kf+UF7ivJfWbZs7gDuMGmA3lsGLpp7wUYU8hoFgisK
 VkIG8LEjYulgdmEVFkXI0oC2gXVXcR5BAGkrcGVA=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBG9uHdv094675
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 16 Dec 2019 03:56:17 -0600
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 16
 Dec 2019 03:56:17 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 16 Dec 2019 03:56:17 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBG9tsJQ084408;
 Mon, 16 Dec 2019 03:56:14 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Rob Herring <robh+dt@kernel.org>, Anil Varughese <aniljoy@cadence.com>,
 Roger Quadros <rogerq@ti.com>, Jyri Sarha <jsarha@ti.com>
Subject: [PATCH v4 07/14] phy: cadence: Sierra: Configure both lane cdb and
 common cdb registers for external SSC
Date: Mon, 16 Dec 2019 15:27:05 +0530
Message-ID: <20191216095712.13266-8-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191216095712.13266-1-kishon@ti.com>
References: <20191216095712.13266-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_015621_495361_093FA971 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anil Varughese <aniljoy@cadence.com>

The existing configuration done in Cadence Sierra driver is only for
reference and is not used in any platforms. Remove them and configure
both lane cdb and common cdb registers to be used with external
SSC configuration. This is validated in TI J721E platform.

Signed-off-by: Anil Varughese <aniljoy@cadence.com>
Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/cadence/phy-cadence-sierra.c | 350 ++++++++++++++++-------
 1 file changed, 254 insertions(+), 96 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index d490e1641cf9..fdca3bd178c6 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -22,58 +22,125 @@
 #include <dt-bindings/phy/phy.h>
 
 /* PHY register offsets */
-#define SIERRA_COMMON_CDB_OFFSET		0x0
-#define SIERRA_MACRO_ID_REG			0x0
+#define SIERRA_COMMON_CDB_OFFSET			0x0
+#define SIERRA_MACRO_ID_REG				0x0
+#define SIERRA_CMN_PLLLC_MODE_PREG			0x48
+#define SIERRA_CMN_PLLLC_LF_COEFF_MODE1_PREG		0x49
+#define SIERRA_CMN_PLLLC_LF_COEFF_MODE0_PREG		0x4A
+#define SIERRA_CMN_PLLLC_LOCK_CNTSTART_PREG		0x4B
+#define SIERRA_CMN_PLLLC_BWCAL_MODE1_PREG		0x4F
+#define SIERRA_CMN_PLLLC_BWCAL_MODE0_PREG		0x50
+#define SIERRA_CMN_PLLLC_SS_TIME_STEPSIZE_MODE_PREG	0x62
 
 #define SIERRA_LANE_CDB_OFFSET(ln, block_offset, reg_offset)	\
 				((0x4000 << (block_offset)) + \
 				 (((ln) << 9) << (reg_offset)))
 
-#define SIERRA_DET_STANDEC_A_PREG		0x000
-#define SIERRA_DET_STANDEC_B_PREG		0x001
-#define SIERRA_DET_STANDEC_C_PREG		0x002
-#define SIERRA_DET_STANDEC_D_PREG		0x003
-#define SIERRA_DET_STANDEC_E_PREG		0x004
-#define SIERRA_PSM_LANECAL_PREG			0x008
-#define SIERRA_PSM_DIAG_PREG			0x015
-#define SIERRA_PSC_TX_A0_PREG			0x028
-#define SIERRA_PSC_TX_A1_PREG			0x029
-#define SIERRA_PSC_TX_A2_PREG			0x02A
-#define SIERRA_PSC_TX_A3_PREG			0x02B
-#define SIERRA_PSC_RX_A0_PREG			0x030
-#define SIERRA_PSC_RX_A1_PREG			0x031
-#define SIERRA_PSC_RX_A2_PREG			0x032
-#define SIERRA_PSC_RX_A3_PREG			0x033
-#define SIERRA_PLLCTRL_SUBRATE_PREG		0x03A
-#define SIERRA_PLLCTRL_GEN_D_PREG		0x03E
-#define SIERRA_DRVCTRL_ATTEN_PREG		0x06A
-#define SIERRA_CLKPATHCTRL_TMR_PREG		0x081
-#define SIERRA_RX_CREQ_FLTR_A_MODE1_PREG	0x087
-#define SIERRA_RX_CREQ_FLTR_A_MODE0_PREG	0x088
-#define SIERRA_CREQ_CCLKDET_MODE01_PREG		0x08E
-#define SIERRA_RX_CTLE_MAINTENANCE_PREG		0x091
-#define SIERRA_CREQ_FSMCLK_SEL_PREG		0x092
-#define SIERRA_CTLELUT_CTRL_PREG		0x098
-#define SIERRA_DFE_ECMP_RATESEL_PREG		0x0C0
-#define SIERRA_DFE_SMP_RATESEL_PREG		0x0C1
-#define SIERRA_DEQ_VGATUNE_CTRL_PREG		0x0E1
-#define SIERRA_TMRVAL_MODE3_PREG		0x16E
-#define SIERRA_TMRVAL_MODE2_PREG		0x16F
-#define SIERRA_TMRVAL_MODE1_PREG		0x170
-#define SIERRA_TMRVAL_MODE0_PREG		0x171
-#define SIERRA_PICNT_MODE1_PREG			0x174
-#define SIERRA_CPI_OUTBUF_RATESEL_PREG		0x17C
-#define SIERRA_LFPSFILT_NS_PREG			0x18A
-#define SIERRA_LFPSFILT_RD_PREG			0x18B
-#define SIERRA_LFPSFILT_MP_PREG			0x18C
-#define SIERRA_SDFILT_H2L_A_PREG		0x191
+#define SIERRA_DET_STANDEC_A_PREG			0x000
+#define SIERRA_DET_STANDEC_B_PREG			0x001
+#define SIERRA_DET_STANDEC_C_PREG			0x002
+#define SIERRA_DET_STANDEC_D_PREG			0x003
+#define SIERRA_DET_STANDEC_E_PREG			0x004
+#define SIERRA_PSM_LANECAL_DLY_A1_RESETS_PREG		0x008
+#define SIERRA_PSM_A0IN_TMR_PREG			0x009
+#define SIERRA_PSM_DIAG_PREG				0x015
+#define SIERRA_PSC_TX_A0_PREG				0x028
+#define SIERRA_PSC_TX_A1_PREG				0x029
+#define SIERRA_PSC_TX_A2_PREG				0x02A
+#define SIERRA_PSC_TX_A3_PREG				0x02B
+#define SIERRA_PSC_RX_A0_PREG				0x030
+#define SIERRA_PSC_RX_A1_PREG				0x031
+#define SIERRA_PSC_RX_A2_PREG				0x032
+#define SIERRA_PSC_RX_A3_PREG				0x033
+#define SIERRA_PLLCTRL_SUBRATE_PREG			0x03A
+#define SIERRA_PLLCTRL_GEN_D_PREG			0x03E
+#define SIERRA_PLLCTRL_CPGAIN_MODE_PREG			0x03F
+#define SIERRA_CLKPATH_BIASTRIM_PREG			0x04B
+#define SIERRA_DFE_BIASTRIM_PREG			0x04C
+#define SIERRA_DRVCTRL_ATTEN_PREG			0x06A
+#define SIERRA_CLKPATHCTRL_TMR_PREG			0x081
+#define SIERRA_RX_CREQ_FLTR_A_MODE3_PREG		0x085
+#define SIERRA_RX_CREQ_FLTR_A_MODE2_PREG		0x086
+#define SIERRA_RX_CREQ_FLTR_A_MODE1_PREG		0x087
+#define SIERRA_RX_CREQ_FLTR_A_MODE0_PREG		0x088
+#define SIERRA_CREQ_CCLKDET_MODE01_PREG			0x08E
+#define SIERRA_RX_CTLE_MAINTENANCE_PREG			0x091
+#define SIERRA_CREQ_FSMCLK_SEL_PREG			0x092
+#define SIERRA_CREQ_EQ_CTRL_PREG			0x093
+#define SIERRA_CREQ_SPARE_PREG				0x096
+#define SIERRA_CREQ_EQ_OPEN_EYE_THRESH_PREG		0x097
+#define SIERRA_CTLELUT_CTRL_PREG			0x098
+#define SIERRA_DFE_ECMP_RATESEL_PREG			0x0C0
+#define SIERRA_DFE_SMP_RATESEL_PREG			0x0C1
+#define SIERRA_DEQ_PHALIGN_CTRL				0x0C4
+#define SIERRA_DEQ_CONCUR_CTRL1_PREG			0x0C8
+#define SIERRA_DEQ_CONCUR_CTRL2_PREG			0x0C9
+#define SIERRA_DEQ_EPIPWR_CTRL2_PREG			0x0CD
+#define SIERRA_DEQ_FAST_MAINT_CYCLES_PREG		0x0CE
+#define SIERRA_DEQ_ERRCMP_CTRL_PREG			0x0D0
+#define SIERRA_DEQ_OFFSET_CTRL_PREG			0x0D8
+#define SIERRA_DEQ_GAIN_CTRL_PREG			0x0E0
+#define SIERRA_DEQ_VGATUNE_CTRL_PREG			0x0E1
+#define SIERRA_DEQ_GLUT0				0x0E8
+#define SIERRA_DEQ_GLUT1				0x0E9
+#define SIERRA_DEQ_GLUT2				0x0EA
+#define SIERRA_DEQ_GLUT3				0x0EB
+#define SIERRA_DEQ_GLUT4				0x0EC
+#define SIERRA_DEQ_GLUT5				0x0ED
+#define SIERRA_DEQ_GLUT6				0x0EE
+#define SIERRA_DEQ_GLUT7				0x0EF
+#define SIERRA_DEQ_GLUT8				0x0F0
+#define SIERRA_DEQ_GLUT9				0x0F1
+#define SIERRA_DEQ_GLUT10				0x0F2
+#define SIERRA_DEQ_GLUT11				0x0F3
+#define SIERRA_DEQ_GLUT12				0x0F4
+#define SIERRA_DEQ_GLUT13				0x0F5
+#define SIERRA_DEQ_GLUT14				0x0F6
+#define SIERRA_DEQ_GLUT15				0x0F7
+#define SIERRA_DEQ_GLUT16				0x0F8
+#define SIERRA_DEQ_ALUT0				0x108
+#define SIERRA_DEQ_ALUT1				0x109
+#define SIERRA_DEQ_ALUT2				0x10A
+#define SIERRA_DEQ_ALUT3				0x10B
+#define SIERRA_DEQ_ALUT4				0x10C
+#define SIERRA_DEQ_ALUT5				0x10D
+#define SIERRA_DEQ_ALUT6				0x10E
+#define SIERRA_DEQ_ALUT7				0x10F
+#define SIERRA_DEQ_ALUT8				0x110
+#define SIERRA_DEQ_ALUT9				0x111
+#define SIERRA_DEQ_ALUT10				0x112
+#define SIERRA_DEQ_ALUT11				0x113
+#define SIERRA_DEQ_ALUT12				0x114
+#define SIERRA_DEQ_ALUT13				0x115
+#define SIERRA_DEQ_DFETAP_CTRL_PREG			0x128
+#define SIERRA_DFE_EN_1010_IGNORE_PREG			0x134
+#define SIERRA_DEQ_TAU_CTRL1_SLOW_MAINT_PREG		0x150
+#define SIERRA_DEQ_TAU_CTRL2_PREG			0x151
+#define SIERRA_DEQ_PICTRL_PREG				0x161
+#define SIERRA_CPICAL_TMRVAL_MODE1_PREG			0x170
+#define SIERRA_CPICAL_TMRVAL_MODE0_PREG			0x171
+#define SIERRA_CPICAL_PICNT_MODE1_PREG			0x174
+#define SIERRA_CPI_OUTBUF_RATESEL_PREG			0x17C
+#define SIERRA_CPICAL_RES_STARTCODE_MODE23_PREG		0x183
+#define SIERRA_LFPSDET_SUPPORT_PREG			0x188
+#define SIERRA_LFPSFILT_NS_PREG				0x18A
+#define SIERRA_LFPSFILT_RD_PREG				0x18B
+#define SIERRA_LFPSFILT_MP_PREG				0x18C
+#define SIERRA_SIGDET_SUPPORT_PREG			0x190
+#define SIERRA_SDFILT_H2L_A_PREG			0x191
+#define SIERRA_SDFILT_L2H_PREG				0x193
+#define SIERRA_RXBUFFER_CTLECTRL_PREG			0x19E
+#define SIERRA_RXBUFFER_RCDFECTRL_PREG			0x19F
+#define SIERRA_RXBUFFER_DFECTRL_PREG			0x1A0
+#define SIERRA_DEQ_TAU_CTRL1_FAST_MAINT_PREG		0x14F
+#define SIERRA_DEQ_TAU_CTRL1_SLOW_MAINT_PREG		0x150
 
 #define SIERRA_PHY_CONFIG_CTRL_OFFSET(block_offset)	\
 				      (0xc000 << (block_offset))
-#define SIERRA_PHY_PLL_CFG			0xe
+#define SIERRA_PHY_PLL_CFG				0xe
 
-#define SIERRA_MACRO_ID				0x00007364
-#define SIERRA_MAX_LANES			4
+#define SIERRA_MACRO_ID					0x00007364
+#define SIERRA_MAX_LANES				4
 
 static const struct reg_field macro_id_type =
 				REG_FIELD(SIERRA_MACRO_ID_REG, 0, 15);
@@ -97,10 +164,14 @@ struct cdns_sierra_data {
 		u32 id_value;
 		u8 block_offset_shift;
 		u8 reg_offset_shift;
-		u32 pcie_regs;
-		u32 usb_regs;
-		struct cdns_reg_pairs *pcie_vals;
-		struct cdns_reg_pairs  *usb_vals;
+		u32 pcie_cmn_regs;
+		u32 pcie_ln_regs;
+		u32 usb_cmn_regs;
+		u32 usb_ln_regs;
+		struct cdns_reg_pairs *pcie_cmn_vals;
+		struct cdns_reg_pairs *pcie_ln_vals;
+		struct cdns_reg_pairs *usb_cmn_vals;
+		struct cdns_reg_pairs *usb_ln_vals;
 };
 
 struct cdns_regmap_cdb_context {
@@ -183,26 +254,35 @@ static int cdns_sierra_phy_init(struct phy *gphy)
 	struct cdns_sierra_phy *phy = dev_get_drvdata(gphy->dev.parent);
 	struct regmap *regmap = phy->regmap;
 	int i, j;
-	struct cdns_reg_pairs *vals;
-	u32 num_regs;
+	struct cdns_reg_pairs *cmn_vals, *ln_vals;
+	u32 num_cmn_regs, num_ln_regs;
 
 	/* Initialise the PHY registers, unless auto configured */
 	if (phy->autoconf)
 		return 0;
 
 	if (ins->phy_type == PHY_TYPE_PCIE) {
-		num_regs = phy->init_data->pcie_regs;
-		vals = phy->init_data->pcie_vals;
+		num_cmn_regs = phy->init_data->pcie_cmn_regs;
+		num_ln_regs = phy->init_data->pcie_ln_regs;
+		cmn_vals = phy->init_data->pcie_cmn_vals;
+		ln_vals = phy->init_data->pcie_ln_vals;
 	} else if (ins->phy_type == PHY_TYPE_USB3) {
-		num_regs = phy->init_data->usb_regs;
-		vals = phy->init_data->usb_vals;
+		num_cmn_regs = phy->init_data->usb_cmn_regs;
+		num_ln_regs = phy->init_data->usb_ln_regs;
+		cmn_vals = phy->init_data->usb_cmn_vals;
+		ln_vals = phy->init_data->usb_ln_vals;
 	} else {
 		return -EINVAL;
 	}
+
+	regmap = phy->regmap_common_cdb;
+	for (j = 0; j < num_cmn_regs ; j++)
+		regmap_write(regmap, cmn_vals[j].off, cmn_vals[j].val);
+
 	for (i = 0; i < ins->num_lanes; i++) {
-		for (j = 0; j < num_regs ; j++) {
+		for (j = 0; j < num_ln_regs ; j++) {
 			regmap = phy->regmap_lane_cdb[i + ins->mlane];
-			regmap_write(regmap, vals[j].off, vals[j].val);
+			regmap_write(regmap, ln_vals[j].off, ln_vals[j].val);
 		}
 	}
 
@@ -491,80 +571,158 @@ static int cdns_sierra_phy_remove(struct platform_device *pdev)
 	return 0;
 }
 
-static struct cdns_reg_pairs cdns_usb_regs[] = {
-	/*
-	 * Write USB configuration parameters to the PHY.
-	 * These values are specific to this specific hardware
-	 * configuration.
-	 */
+/* refclk100MHz_32b_PCIe_cmn_pll_ext_ssc */
+static struct cdns_reg_pairs cdns_pcie_cmn_regs_ext_ssc[] = {
+	{0x2106, SIERRA_CMN_PLLLC_LF_COEFF_MODE1_PREG},
+	{0x2106, SIERRA_CMN_PLLLC_LF_COEFF_MODE0_PREG},
+	{0x8A06, SIERRA_CMN_PLLLC_BWCAL_MODE1_PREG},
+	{0x8A06, SIERRA_CMN_PLLLC_BWCAL_MODE0_PREG},
+	{0x1B1B, SIERRA_CMN_PLLLC_SS_TIME_STEPSIZE_MODE_PREG}
+};
+
+/* refclk100MHz_32b_PCIe_ln_ext_ssc */
+static struct cdns_reg_pairs cdns_pcie_ln_regs_ext_ssc[] = {
+	{0x813E, SIERRA_CLKPATHCTRL_TMR_PREG},
+	{0x8047, SIERRA_RX_CREQ_FLTR_A_MODE3_PREG},
+	{0x808F, SIERRA_RX_CREQ_FLTR_A_MODE2_PREG},
+	{0x808F, SIERRA_RX_CREQ_FLTR_A_MODE1_PREG},
+	{0x808F, SIERRA_RX_CREQ_FLTR_A_MODE0_PREG},
+	{0x033C, SIERRA_RX_CTLE_MAINTENANCE_PREG},
+	{0x44CC, SIERRA_CREQ_EQ_OPEN_EYE_THRESH_PREG}
+};
+
+/* refclk100MHz_20b_USB_cmn_pll_ext_ssc */
+static struct cdns_reg_pairs cdns_usb_cmn_regs_ext_ssc[] = {
+	{0x2085, SIERRA_CMN_PLLLC_LF_COEFF_MODE1_PREG},
+	{0x2085, SIERRA_CMN_PLLLC_LF_COEFF_MODE0_PREG},
+	{0x0000, SIERRA_CMN_PLLLC_BWCAL_MODE0_PREG},
+	{0x0000, SIERRA_CMN_PLLLC_SS_TIME_STEPSIZE_MODE_PREG}
+};
+
+/* refclk100MHz_20b_USB_ln_ext_ssc */
+static struct cdns_reg_pairs cdns_usb_ln_regs_ext_ssc[] = {
 	{0xFE0A, SIERRA_DET_STANDEC_A_PREG},
 	{0x000F, SIERRA_DET_STANDEC_B_PREG},
-	{0x55A5, SIERRA_DET_STANDEC_C_PREG},
-	{0x69AD, SIERRA_DET_STANDEC_D_PREG},
+	{0x00A5, SIERRA_DET_STANDEC_C_PREG},
+	{0x69ad, SIERRA_DET_STANDEC_D_PREG},
 	{0x0241, SIERRA_DET_STANDEC_E_PREG},
-	{0x0110, SIERRA_PSM_LANECAL_PREG},
+	{0x0010, SIERRA_PSM_LANECAL_DLY_A1_RESETS_PREG},
+	{0x0014, SIERRA_PSM_A0IN_TMR_PREG},
 	{0xCF00, SIERRA_PSM_DIAG_PREG},
 	{0x001F, SIERRA_PSC_TX_A0_PREG},
 	{0x0007, SIERRA_PSC_TX_A1_PREG},
 	{0x0003, SIERRA_PSC_TX_A2_PREG},
 	{0x0003, SIERRA_PSC_TX_A3_PREG},
 	{0x0FFF, SIERRA_PSC_RX_A0_PREG},
-	{0x0003, SIERRA_PSC_RX_A1_PREG},
+	{0x0619, SIERRA_PSC_RX_A1_PREG},
 	{0x0003, SIERRA_PSC_RX_A2_PREG},
 	{0x0001, SIERRA_PSC_RX_A3_PREG},
 	{0x0001, SIERRA_PLLCTRL_SUBRATE_PREG},
 	{0x0406, SIERRA_PLLCTRL_GEN_D_PREG},
+	{0x5233, SIERRA_PLLCTRL_CPGAIN_MODE_PREG},
+	{0x00CA, SIERRA_CLKPATH_BIASTRIM_PREG},
+	{0x2512, SIERRA_DFE_BIASTRIM_PREG},
 	{0x0000, SIERRA_DRVCTRL_ATTEN_PREG},
-	{0x823E, SIERRA_CLKPATHCTRL_TMR_PREG},
-	{0x078F, SIERRA_RX_CREQ_FLTR_A_MODE1_PREG},
-	{0x078F, SIERRA_RX_CREQ_FLTR_A_MODE0_PREG},
+	{0x873E, SIERRA_CLKPATHCTRL_TMR_PREG},
+	{0x03CF, SIERRA_RX_CREQ_FLTR_A_MODE1_PREG},
+	{0x01CE, SIERRA_RX_CREQ_FLTR_A_MODE0_PREG},
 	{0x7B3C, SIERRA_CREQ_CCLKDET_MODE01_PREG},
-	{0x023C, SIERRA_RX_CTLE_MAINTENANCE_PREG},
+	{0x033F, SIERRA_RX_CTLE_MAINTENANCE_PREG},
 	{0x3232, SIERRA_CREQ_FSMCLK_SEL_PREG},
-	{0x8452, SIERRA_CTLELUT_CTRL_PREG},
-	{0x4121, SIERRA_DFE_ECMP_RATESEL_PREG},
-	{0x4121, SIERRA_DFE_SMP_RATESEL_PREG},
-	{0x9999, SIERRA_DEQ_VGATUNE_CTRL_PREG},
-	{0x0330, SIERRA_TMRVAL_MODE0_PREG},
-	{0x01FF, SIERRA_PICNT_MODE1_PREG},
+	{0x0000, SIERRA_CREQ_EQ_CTRL_PREG},
+	{0x8000, SIERRA_CREQ_SPARE_PREG},
+	{0xCC44, SIERRA_CREQ_EQ_OPEN_EYE_THRESH_PREG},
+	{0x8453, SIERRA_CTLELUT_CTRL_PREG},
+	{0x4110, SIERRA_DFE_ECMP_RATESEL_PREG},
+	{0x4110, SIERRA_DFE_SMP_RATESEL_PREG},
+	{0x0002, SIERRA_DEQ_PHALIGN_CTRL},
+	{0x3200, SIERRA_DEQ_CONCUR_CTRL1_PREG},
+	{0x5064, SIERRA_DEQ_CONCUR_CTRL2_PREG},
+	{0x0030, SIERRA_DEQ_EPIPWR_CTRL2_PREG},
+	{0x0048, SIERRA_DEQ_FAST_MAINT_CYCLES_PREG},
+	{0x5A5A, SIERRA_DEQ_ERRCMP_CTRL_PREG},
+	{0x02F5, SIERRA_DEQ_OFFSET_CTRL_PREG},
+	{0x02F5, SIERRA_DEQ_GAIN_CTRL_PREG},
+	{0x9A8A, SIERRA_DEQ_VGATUNE_CTRL_PREG},
+	{0x0014, SIERRA_DEQ_GLUT0},
+	{0x0014, SIERRA_DEQ_GLUT1},
+	{0x0014, SIERRA_DEQ_GLUT2},
+	{0x0014, SIERRA_DEQ_GLUT3},
+	{0x0014, SIERRA_DEQ_GLUT4},
+	{0x0014, SIERRA_DEQ_GLUT5},
+	{0x0014, SIERRA_DEQ_GLUT6},
+	{0x0014, SIERRA_DEQ_GLUT7},
+	{0x0014, SIERRA_DEQ_GLUT8},
+	{0x0014, SIERRA_DEQ_GLUT9},
+	{0x0014, SIERRA_DEQ_GLUT10},
+	{0x0014, SIERRA_DEQ_GLUT11},
+	{0x0014, SIERRA_DEQ_GLUT12},
+	{0x0014, SIERRA_DEQ_GLUT13},
+	{0x0014, SIERRA_DEQ_GLUT14},
+	{0x0014, SIERRA_DEQ_GLUT15},
+	{0x0014, SIERRA_DEQ_GLUT16},
+	{0x0BAE, SIERRA_DEQ_ALUT0},
+	{0x0AEB, SIERRA_DEQ_ALUT1},
+	{0x0A28, SIERRA_DEQ_ALUT2},
+	{0x0965, SIERRA_DEQ_ALUT3},
+	{0x08A2, SIERRA_DEQ_ALUT4},
+	{0x07DF, SIERRA_DEQ_ALUT5},
+	{0x071C, SIERRA_DEQ_ALUT6},
+	{0x0659, SIERRA_DEQ_ALUT7},
+	{0x0596, SIERRA_DEQ_ALUT8},
+	{0x0514, SIERRA_DEQ_ALUT9},
+	{0x0492, SIERRA_DEQ_ALUT10},
+	{0x0410, SIERRA_DEQ_ALUT11},
+	{0x038E, SIERRA_DEQ_ALUT12},
+	{0x030C, SIERRA_DEQ_ALUT13},
+	{0x03F4, SIERRA_DEQ_DFETAP_CTRL_PREG},
+	{0x0001, SIERRA_DFE_EN_1010_IGNORE_PREG},
+	{0x3C01, SIERRA_DEQ_TAU_CTRL1_FAST_MAINT_PREG},
+	{0x3C40, SIERRA_DEQ_TAU_CTRL1_SLOW_MAINT_PREG},
+	{0x1C08, SIERRA_DEQ_TAU_CTRL2_PREG},
+	{0x0033, SIERRA_DEQ_PICTRL_PREG},
+	{0x0400, SIERRA_CPICAL_TMRVAL_MODE1_PREG},
+	{0x0330, SIERRA_CPICAL_TMRVAL_MODE0_PREG},
+	{0x01FF, SIERRA_CPICAL_PICNT_MODE1_PREG},
 	{0x0009, SIERRA_CPI_OUTBUF_RATESEL_PREG},
+	{0x3232, SIERRA_CPICAL_RES_STARTCODE_MODE23_PREG},
+	{0x0005, SIERRA_LFPSDET_SUPPORT_PREG},
 	{0x000F, SIERRA_LFPSFILT_NS_PREG},
 	{0x0009, SIERRA_LFPSFILT_RD_PREG},
 	{0x0001, SIERRA_LFPSFILT_MP_PREG},
 	{0x8013, SIERRA_SDFILT_H2L_A_PREG},
-	{0x0400, SIERRA_TMRVAL_MODE1_PREG},
-};
-
-static struct cdns_reg_pairs cdns_pcie_regs[] = {
-	/*
-	 * Write PCIe configuration parameters to the PHY.
-	 * These values are specific to this specific hardware
-	 * configuration.
-	 */
-	{0x891f, SIERRA_DET_STANDEC_D_PREG},
-	{0x0053, SIERRA_DET_STANDEC_E_PREG},
-	{0x0400, SIERRA_TMRVAL_MODE2_PREG},
-	{0x0200, SIERRA_TMRVAL_MODE3_PREG},
+	{0x8009, SIERRA_SDFILT_L2H_PREG},
+	{0x0024, SIERRA_RXBUFFER_CTLECTRL_PREG},
+	{0x0020, SIERRA_RXBUFFER_RCDFECTRL_PREG},
+	{0x4243, SIERRA_RXBUFFER_DFECTRL_PREG}
 };
 
 static const struct cdns_sierra_data cdns_map_sierra = {
 	SIERRA_MACRO_ID,
 	0x2,
 	0x2,
-	ARRAY_SIZE(cdns_pcie_regs),
-	ARRAY_SIZE(cdns_usb_regs),
-	cdns_pcie_regs,
-	cdns_usb_regs
+	ARRAY_SIZE(cdns_pcie_cmn_regs_ext_ssc),
+	ARRAY_SIZE(cdns_pcie_ln_regs_ext_ssc),
+	ARRAY_SIZE(cdns_usb_cmn_regs_ext_ssc),
+	ARRAY_SIZE(cdns_usb_ln_regs_ext_ssc),
+	cdns_pcie_cmn_regs_ext_ssc,
+	cdns_pcie_ln_regs_ext_ssc,
+	cdns_usb_cmn_regs_ext_ssc,
+	cdns_usb_ln_regs_ext_ssc,
 };
 
 static const struct cdns_sierra_data cdns_ti_map_sierra = {
 	SIERRA_MACRO_ID,
 	0x0,
 	0x1,
-	ARRAY_SIZE(cdns_pcie_regs),
-	ARRAY_SIZE(cdns_usb_regs),
-	cdns_pcie_regs,
-	cdns_usb_regs
+	ARRAY_SIZE(cdns_pcie_cmn_regs_ext_ssc),
+	ARRAY_SIZE(cdns_pcie_ln_regs_ext_ssc),
+	ARRAY_SIZE(cdns_usb_cmn_regs_ext_ssc),
+	ARRAY_SIZE(cdns_usb_ln_regs_ext_ssc),
+	cdns_pcie_cmn_regs_ext_ssc,
+	cdns_pcie_ln_regs_ext_ssc,
+	cdns_usb_cmn_regs_ext_ssc,
+	cdns_usb_ln_regs_ext_ssc,
 };
 
 static const struct of_device_id cdns_sierra_id_table[] = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
