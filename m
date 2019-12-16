Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F24F1120197
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 10:57:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sMhPv6/6PVMmjkQHnT4PXc/ohqei02609y4pqoq5fRQ=; b=QIdQMatZG/aCyg
	ikuUKN1eZKKOE0Qn8WIXW8dDAiYkeIF3mWsznoML6Dvo+cyrP5+lZ5xXTpTDZulqP2KxFdUSTKlvD
	rM1XHdSB6rf7OqAsAdWHcNRYuukCU/pDFYuJ6mUQ9/HIKBsJM7fXSDANDtrQ7XeFp6pOKxK7ZuzO9
	IxWYsDAxCHmxLpC9hkO9sXQZBJersRDykJ+AfuNocS3IUdQiaCUwJbmgKIHHVR/qjA4A7O9Tm0L0A
	5WzwXmQG+3xYsymz0gysU7EF8aXzA4I312BbU6N1YIi47SWrfWhaOBPYEsTA6QNST3EUfo6bEnL+e
	zJZa2aF3dhYazo50gFAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ign7v-0006D1-Rz; Mon, 16 Dec 2019 09:57:19 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ign6m-0005M5-N0
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 09:56:10 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBG9u65f106041;
 Mon, 16 Dec 2019 03:56:06 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576490166;
 bh=avI91FBELJT9quIZJP1Cy+zKUk4/9Oroz+ODXwWi4lU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=PfDQvo+B6hGnqmxYR4hupjJ4qcp2urS4p77aMlRXivFbMQvlllFrsUU0D8FH6DgNb
 xLEYheF/MC0AhSJ+7GPlyK/5+h77aBqyC4TYuwPCgH8tMxuOeJWcSNNdial6fHks/8
 rTMqX4G+EKObkNDuXUl1MUt/BrKRpGMm8T04Mp5I=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBG9u6MV124914
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 16 Dec 2019 03:56:06 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 16
 Dec 2019 03:56:05 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 16 Dec 2019 03:56:05 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBG9tsJM084408;
 Mon, 16 Dec 2019 03:56:03 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Rob Herring <robh+dt@kernel.org>, Anil Varughese <aniljoy@cadence.com>,
 Roger Quadros <rogerq@ti.com>, Jyri Sarha <jsarha@ti.com>
Subject: [PATCH v4 03/14] phy: cadence: Sierra: Use "regmap" for read and
 write to Sierra registers
Date: Mon, 16 Dec 2019 15:27:01 +0530
Message-ID: <20191216095712.13266-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191216095712.13266-1-kishon@ti.com>
References: <20191216095712.13266-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_015608_865487_2B750739 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Use "regmap" for read and write to Sierra registers. This is in
perparation for adding SERDES_16G support present in TI's J721E
SoC.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/cadence/phy-cadence-sierra.c | 291 ++++++++++++++++++-----
 1 file changed, 237 insertions(+), 54 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index bed68c25682f..c60809f615af 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -22,49 +22,63 @@
 #include <dt-bindings/phy/phy.h>
 
 /* PHY register offsets */
-#define SIERRA_PHY_PLL_CFG		(0xc00e << 2)
-#define SIERRA_DET_STANDEC_A		(0x4000 << 2)
-#define SIERRA_DET_STANDEC_B		(0x4001 << 2)
-#define SIERRA_DET_STANDEC_C		(0x4002 << 2)
-#define SIERRA_DET_STANDEC_D		(0x4003 << 2)
-#define SIERRA_DET_STANDEC_E		(0x4004 << 2)
-#define SIERRA_PSM_LANECAL		(0x4008 << 2)
-#define SIERRA_PSM_DIAG			(0x4015 << 2)
-#define SIERRA_PSC_TX_A0		(0x4028 << 2)
-#define SIERRA_PSC_TX_A1		(0x4029 << 2)
-#define SIERRA_PSC_TX_A2		(0x402A << 2)
-#define SIERRA_PSC_TX_A3		(0x402B << 2)
-#define SIERRA_PSC_RX_A0		(0x4030 << 2)
-#define SIERRA_PSC_RX_A1		(0x4031 << 2)
-#define SIERRA_PSC_RX_A2		(0x4032 << 2)
-#define SIERRA_PSC_RX_A3		(0x4033 << 2)
-#define SIERRA_PLLCTRL_SUBRATE		(0x403A << 2)
-#define SIERRA_PLLCTRL_GEN_D		(0x403E << 2)
-#define SIERRA_DRVCTRL_ATTEN		(0x406A << 2)
-#define SIERRA_CLKPATHCTRL_TMR		(0x4081 << 2)
-#define SIERRA_RX_CREQ_FLTR_A_MODE1	(0x4087 << 2)
-#define SIERRA_RX_CREQ_FLTR_A_MODE0	(0x4088 << 2)
-#define SIERRA_CREQ_CCLKDET_MODE01	(0x408E << 2)
-#define SIERRA_RX_CTLE_MAINTENANCE	(0x4091 << 2)
-#define SIERRA_CREQ_FSMCLK_SEL		(0x4092 << 2)
-#define SIERRA_CTLELUT_CTRL		(0x4098 << 2)
-#define SIERRA_DFE_ECMP_RATESEL		(0x40C0 << 2)
-#define SIERRA_DFE_SMP_RATESEL		(0x40C1 << 2)
-#define SIERRA_DEQ_VGATUNE_CTRL		(0x40E1 << 2)
-#define SIERRA_TMRVAL_MODE3		(0x416E << 2)
-#define SIERRA_TMRVAL_MODE2		(0x416F << 2)
-#define SIERRA_TMRVAL_MODE1		(0x4170 << 2)
-#define SIERRA_TMRVAL_MODE0		(0x4171 << 2)
-#define SIERRA_PICNT_MODE1		(0x4174 << 2)
-#define SIERRA_CPI_OUTBUF_RATESEL	(0x417C << 2)
-#define SIERRA_LFPSFILT_NS		(0x418A << 2)
-#define SIERRA_LFPSFILT_RD		(0x418B << 2)
-#define SIERRA_LFPSFILT_MP		(0x418C << 2)
-#define SIERRA_SDFILT_H2L_A		(0x4191 << 2)
+#define SIERRA_COMMON_CDB_OFFSET	0x0
+#define SIERRA_MACRO_ID_REG		0x0
+
+#define SIERRA_LANE_CDB_OFFSET(ln, block_offset, reg_offset)	\
+				((0x4000 << (block_offset)) + \
+				 (((ln) << 9) << (reg_offset)))
+#define SIERRA_DET_STANDEC_A		0x000
+#define SIERRA_DET_STANDEC_B		0x001
+#define SIERRA_DET_STANDEC_C		0x002
+#define SIERRA_DET_STANDEC_D		0x003
+#define SIERRA_DET_STANDEC_E		0x004
+#define SIERRA_PSM_LANECAL		0x008
+#define SIERRA_PSM_DIAG			0x015
+#define SIERRA_PSC_TX_A0		0x028
+#define SIERRA_PSC_TX_A1		0x029
+#define SIERRA_PSC_TX_A2		0x02A
+#define SIERRA_PSC_TX_A3		0x02B
+#define SIERRA_PSC_RX_A0		0x030
+#define SIERRA_PSC_RX_A1		0x031
+#define SIERRA_PSC_RX_A2		0x032
+#define SIERRA_PSC_RX_A3		0x033
+#define SIERRA_PLLCTRL_SUBRATE		0x03A
+#define SIERRA_PLLCTRL_GEN_D		0x03E
+#define SIERRA_DRVCTRL_ATTEN		0x06A
+#define SIERRA_CLKPATHCTRL_TMR		0x081
+#define SIERRA_RX_CREQ_FLTR_A_MODE1	0x087
+#define SIERRA_RX_CREQ_FLTR_A_MODE0	0x088
+#define SIERRA_CREQ_CCLKDET_MODE01	0x08E
+#define SIERRA_RX_CTLE_MAINTENANCE	0x091
+#define SIERRA_CREQ_FSMCLK_SEL		0x092
+#define SIERRA_CTLELUT_CTRL		0x098
+#define SIERRA_DFE_ECMP_RATESEL		0x0C0
+#define SIERRA_DFE_SMP_RATESEL		0x0C1
+#define SIERRA_DEQ_VGATUNE_CTRL		0x0E1
+#define SIERRA_TMRVAL_MODE3		0x16E
+#define SIERRA_TMRVAL_MODE2		0x16F
+#define SIERRA_TMRVAL_MODE1		0x170
+#define SIERRA_TMRVAL_MODE0		0x171
+#define SIERRA_PICNT_MODE1		0x174
+#define SIERRA_CPI_OUTBUF_RATESEL	0x17C
+#define SIERRA_LFPSFILT_NS		0x18A
+#define SIERRA_LFPSFILT_RD		0x18B
+#define SIERRA_LFPSFILT_MP		0x18C
+#define SIERRA_SDFILT_H2L_A		0x191
+
+#define SIERRA_PHY_CONFIG_CTRL_OFFSET(block_offset)	\
+				      (0xc000 << (block_offset))
+#define SIERRA_PHY_PLL_CFG		0xe
 
 #define SIERRA_MACRO_ID			0x00007364
 #define SIERRA_MAX_LANES		4
 
+static const struct reg_field macro_id_type =
+				REG_FIELD(SIERRA_MACRO_ID_REG, 0, 15);
+static const struct reg_field phy_pll_cfg_1 =
+				REG_FIELD(SIERRA_PHY_PLL_CFG, 1, 1);
+
 struct cdns_sierra_inst {
 	struct phy *phy;
 	u32 phy_type;
@@ -80,28 +94,93 @@ struct cdns_reg_pairs {
 
 struct cdns_sierra_data {
 		u32 id_value;
+		u8 block_offset_shift;
+		u8 reg_offset_shift;
 		u32 pcie_regs;
 		u32 usb_regs;
 		struct cdns_reg_pairs *pcie_vals;
 		struct cdns_reg_pairs  *usb_vals;
 };
 
-struct cdns_sierra_phy {
+struct cdns_regmap_cdb_context {
 	struct device *dev;
 	void __iomem *base;
+	u8 reg_offset_shift;
+};
+
+struct cdns_sierra_phy {
+	struct device *dev;
+	struct regmap *regmap;
 	struct cdns_sierra_data *init_data;
 	struct cdns_sierra_inst phys[SIERRA_MAX_LANES];
 	struct reset_control *phy_rst;
 	struct reset_control *apb_rst;
+	struct regmap *regmap_lane_cdb[SIERRA_MAX_LANES];
+	struct regmap *regmap_phy_config_ctrl;
+	struct regmap *regmap_common_cdb;
+	struct regmap_field *macro_id_type;
+	struct regmap_field *phy_pll_cfg_1;
 	struct clk *clk;
 	int nsubnodes;
 	bool autoconf;
 };
 
+static int cdns_regmap_write(void *context, unsigned int reg, unsigned int val)
+{
+	struct cdns_regmap_cdb_context *ctx = context;
+	u32 offset = reg << ctx->reg_offset_shift;
+
+	writew(val, ctx->base + offset);
+
+	return 0;
+}
+
+static int cdns_regmap_read(void *context, unsigned int reg, unsigned int *val)
+{
+	struct cdns_regmap_cdb_context *ctx = context;
+	u32 offset = reg << ctx->reg_offset_shift;
+
+	*val = readw(ctx->base + offset);
+	return 0;
+}
+
+#define SIERRA_LANE_CDB_REGMAP_CONF(n) \
+{ \
+	.name = "sierra_lane" n "_cdb", \
+	.reg_stride = 1, \
+	.fast_io = true, \
+	.reg_write = cdns_regmap_write, \
+	.reg_read = cdns_regmap_read, \
+}
+
+static struct regmap_config cdns_sierra_lane_cdb_config[] = {
+	SIERRA_LANE_CDB_REGMAP_CONF("0"),
+	SIERRA_LANE_CDB_REGMAP_CONF("1"),
+	SIERRA_LANE_CDB_REGMAP_CONF("2"),
+	SIERRA_LANE_CDB_REGMAP_CONF("3"),
+};
+
+static struct regmap_config cdns_sierra_common_cdb_config = {
+	.name = "sierra_common_cdb",
+	.reg_stride = 1,
+	.fast_io = true,
+	.reg_write = cdns_regmap_write,
+	.reg_read = cdns_regmap_read,
+};
+
+static struct regmap_config cdns_sierra_phy_config_ctrl_config = {
+	.name = "sierra_phy_config_ctrl",
+	.reg_stride = 1,
+	.fast_io = true,
+	.reg_write = cdns_regmap_write,
+	.reg_read = cdns_regmap_read,
+};
+
 static void cdns_sierra_phy_init(struct phy *gphy)
 {
 	struct cdns_sierra_inst *ins = phy_get_drvdata(gphy);
 	struct cdns_sierra_phy *phy = dev_get_drvdata(gphy->dev.parent);
+	struct regmap *regmap = phy->regmap;
 	int i, j;
 	struct cdns_reg_pairs *vals;
 	u32 num_regs;
@@ -115,10 +194,12 @@ static void cdns_sierra_phy_init(struct phy *gphy)
 	} else {
 		return;
 	}
-	for (i = 0; i < ins->num_lanes; i++)
-		for (j = 0; j < num_regs ; j++)
-			writel(vals[j].val, phy->base +
-				vals[j].off + (i + ins->mlane) * 0x800);
+	for (i = 0; i < ins->num_lanes; i++) {
+		for (j = 0; j < num_regs ; j++) {
+			regmap = phy->regmap_lane_cdb[i + ins->mlane];
+			regmap_write(regmap, vals[j].off, vals[j].val);
+		}
+	}
 }
 
 static int cdns_sierra_phy_on(struct phy *gphy)
@@ -159,37 +240,136 @@ static int cdns_sierra_get_optional(struct cdns_sierra_inst *inst,
 
 static const struct of_device_id cdns_sierra_id_table[];
 
+static struct regmap *cdns_regmap_init(struct device *dev, void __iomem *base,
+				       u32 block_offset, u8 reg_offset_shift,
+				       const struct regmap_config *config)
+{
+	struct cdns_regmap_cdb_context *ctx;
+
+	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return ERR_PTR(-ENOMEM);
+
+	ctx->dev = dev;
+	ctx->base = base + block_offset;
+	ctx->reg_offset_shift = reg_offset_shift;
+
+	return devm_regmap_init(dev, NULL, ctx, config);
+}
+
+static int cdns_regfield_init(struct cdns_sierra_phy *sp)
+{
+	struct device *dev = sp->dev;
+	struct regmap_field *field;
+	struct regmap *regmap;
+
+	regmap = sp->regmap_common_cdb;
+	field = devm_regmap_field_alloc(dev, regmap, macro_id_type);
+	if (IS_ERR(field)) {
+		dev_err(dev, "MACRO_ID_TYPE reg field init failed\n");
+		return PTR_ERR(field);
+	}
+	sp->macro_id_type = field;
+
+	regmap = sp->regmap_phy_config_ctrl;
+	field = devm_regmap_field_alloc(dev, regmap, phy_pll_cfg_1);
+	if (IS_ERR(field)) {
+		dev_err(dev, "PHY_PLL_CFG_1 reg field init failed\n");
+		return PTR_ERR(field);
+	}
+	sp->phy_pll_cfg_1 = field;
+
+	return 0;
+}
+
+static int cdns_regmap_init_blocks(struct cdns_sierra_phy *sp,
+				   void __iomem *base, u8 block_offset_shift,
+				   u8 reg_offset_shift)
+{
+	struct device *dev = sp->dev;
+	struct regmap *regmap;
+	u32 block_offset;
+	int i;
+
+	for (i = 0; i < SIERRA_MAX_LANES; i++) {
+		block_offset = SIERRA_LANE_CDB_OFFSET(i, block_offset_shift,
+						      reg_offset_shift);
+		regmap = cdns_regmap_init(dev, base, block_offset,
+					  reg_offset_shift,
+					  &cdns_sierra_lane_cdb_config[i]);
+		if (IS_ERR(regmap)) {
+			dev_err(dev, "Failed to init lane CDB regmap\n");
+			return PTR_ERR(regmap);
+		}
+		sp->regmap_lane_cdb[i] = regmap;
+	}
+
+	regmap = cdns_regmap_init(dev, base, SIERRA_COMMON_CDB_OFFSET,
+				  reg_offset_shift,
+				  &cdns_sierra_common_cdb_config);
+	if (IS_ERR(regmap)) {
+		dev_err(dev, "Failed to init common CDB regmap\n");
+		return PTR_ERR(regmap);
+	}
+	sp->regmap_common_cdb = regmap;
+
+	block_offset = SIERRA_PHY_CONFIG_CTRL_OFFSET(block_offset_shift);
+	regmap = cdns_regmap_init(dev, base, block_offset, reg_offset_shift,
+				  &cdns_sierra_phy_config_ctrl_config);
+	if (IS_ERR(regmap)) {
+		dev_err(dev, "Failed to init PHY config and control regmap\n");
+		return PTR_ERR(regmap);
+	}
+	sp->regmap_phy_config_ctrl = regmap;
+
+	return 0;
+}
+
 static int cdns_sierra_phy_probe(struct platform_device *pdev)
 {
 	struct cdns_sierra_phy *sp;
 	struct phy_provider *phy_provider;
 	struct device *dev = &pdev->dev;
 	const struct of_device_id *match;
+	struct cdns_sierra_data *data;
+	unsigned int id_value;
 	struct resource *res;
 	int i, ret, node = 0;
+	void __iomem *base;
 	struct device_node *dn = dev->of_node, *child;
 
 	if (of_get_child_count(dn) == 0)
 		return -ENODEV;
 
+	/* Get init data for this PHY */
+	match = of_match_device(cdns_sierra_id_table, dev);
+	if (!match)
+		return -EINVAL;
+
+	data = (struct cdns_sierra_data *)match->data;
+
 	sp = devm_kzalloc(dev, sizeof(*sp), GFP_KERNEL);
 	if (!sp)
 		return -ENOMEM;
 	dev_set_drvdata(dev, sp);
 	sp->dev = dev;
+	sp->init_data = data;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	sp->base = devm_ioremap_resource(dev, res);
-	if (IS_ERR(sp->base)) {
+	base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(base)) {
 		dev_err(dev, "missing \"reg\"\n");
-		return PTR_ERR(sp->base);
+		return PTR_ERR(base);
 	}
 
-	/* Get init data for this PHY */
-	match = of_match_device(cdns_sierra_id_table, dev);
-	if (!match)
-		return -EINVAL;
-	sp->init_data = (struct cdns_sierra_data *)match->data;
+	ret = cdns_regmap_init_blocks(sp, base, data->block_offset_shift,
+				      data->reg_offset_shift);
+	if (ret)
+		return ret;
+
+	ret = cdns_regfield_init(sp);
+	if (ret)
+		return ret;
 
 	platform_set_drvdata(pdev, sp);
 
@@ -219,7 +399,8 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
 	reset_control_deassert(sp->apb_rst);
 
 	/* Check that PHY is present */
-	if  (sp->init_data->id_value != readl(sp->base)) {
+	regmap_field_read(sp->macro_id_type, &id_value);
+	if  (sp->init_data->id_value != id_value) {
 		ret = -EINVAL;
 		goto clk_disable;
 	}
@@ -267,7 +448,7 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
 
 	/* If more than one subnode, configure the PHY as multilink */
 	if (!sp->autoconf && sp->nsubnodes > 1)
-		writel(2, sp->base + SIERRA_PHY_PLL_CFG);
+		regmap_field_write(sp->phy_pll_cfg_1, 0x1);
 
 	pm_runtime_enable(dev);
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
@@ -364,6 +545,8 @@ static struct cdns_reg_pairs cdns_pcie_regs[] = {
 
 static const struct cdns_sierra_data cdns_map_sierra = {
 	SIERRA_MACRO_ID,
+	0x2,
+	0x2,
 	ARRAY_SIZE(cdns_pcie_regs),
 	ARRAY_SIZE(cdns_usb_regs),
 	cdns_pcie_regs,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
