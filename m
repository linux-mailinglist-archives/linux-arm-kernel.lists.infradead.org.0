Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C58312019D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 10:59:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qLorIP/D/scqnEc2Zf3Own6YP7ommrptcJSjDj4ARuE=; b=X4iAP2QR+3vUbd
	Ht1tsO9V5WNiJIwkBBmMw2g3wS8GtFhv4YW0ilEnO7QOAFj6iaM3JrSN/Wh5AEP0R5gXzOnNpss/4
	LArmPZf2lGMk8d6gbvyhan+1YdXtrT8aeXEeWHWymHFWMqgNJRtWztSKLxcK8O0tnLO7H2EEEm0gI
	FCShvbl5j3MfhR9wObkK4rtLsj7QaofvU06FQfByqnnUBB2zGlZvEMRSBCv9SOyQtqONDO7CzltCP
	fNShYZUsWLB+AhWBdA1YfnH3yVB1/eGJR11lrWcMWIELA8LoTlXd9NQx3dzfkHO2ZAvCD4jySfbMW
	/XPgznboYYAL3bK+X1hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ign9T-0007hA-U4; Mon, 16 Dec 2019 09:58:55 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ign74-0005dm-9b
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 09:56:29 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBG9uNvB106117;
 Mon, 16 Dec 2019 03:56:23 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576490183;
 bh=Zekc0AXiObZrPPvegTp4K5GUPS8IXJOxaEdMQ6wwWA0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=svry36Y9SEy5nqCBDS949P2MxIkwOQjKA3MD3JzF9M4taTFldpbTbhILGa09CT9sD
 u2TbCA8zg2rBfLuAys6/0p/HVhwqh/Pp9OCvfEnovIVd+gOSj7Gapwprait5EZY7aQ
 Z4MhrxKxE550fy7nOBCzMy53CA67gUtLgBNPT3JE=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBG9uN4V094791
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 16 Dec 2019 03:56:23 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 16
 Dec 2019 03:56:22 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 16 Dec 2019 03:56:22 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBG9tsJS084408;
 Mon, 16 Dec 2019 03:56:20 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Rob Herring <robh+dt@kernel.org>, Anil Varughese <aniljoy@cadence.com>,
 Roger Quadros <rogerq@ti.com>, Jyri Sarha <jsarha@ti.com>
Subject: [PATCH v4 09/14] phy: cadence: Sierra: Check for PLL lock during PHY
 power on
Date: Mon, 16 Dec 2019 15:27:07 +0530
Message-ID: <20191216095712.13266-10-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191216095712.13266-1-kishon@ti.com>
References: <20191216095712.13266-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_015626_576785_5160B683 
X-CRM114-Status: GOOD (  16.63  )
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

Check for PLL lock during PHY power on.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/cadence/phy-cadence-sierra.c | 33 +++++++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index 497c83827670..62bff4b043f0 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -55,6 +55,7 @@
 #define SIERRA_PLLCTRL_SUBRATE_PREG			0x03A
 #define SIERRA_PLLCTRL_GEN_D_PREG			0x03E
 #define SIERRA_PLLCTRL_CPGAIN_MODE_PREG			0x03F
+#define SIERRA_PLLCTRL_STATUS_PREG			0x044
 #define SIERRA_CLKPATH_BIASTRIM_PREG			0x04B
 #define SIERRA_DFE_BIASTRIM_PREG			0x04C
 #define SIERRA_DRVCTRL_ATTEN_PREG			0x06A
@@ -141,11 +142,14 @@
 
 #define SIERRA_MACRO_ID					0x00007364
 #define SIERRA_MAX_LANES				4
+#define PLL_LOCK_TIME					100000
 
 static const struct reg_field macro_id_type =
 				REG_FIELD(SIERRA_MACRO_ID_REG, 0, 15);
 static const struct reg_field phy_pll_cfg_1 =
 				REG_FIELD(SIERRA_PHY_PLL_CFG, 1, 1);
+static const struct reg_field pllctrl_lock =
+				REG_FIELD(SIERRA_PLLCTRL_STATUS_PREG, 0, 0);
 
 struct cdns_sierra_inst {
 	struct phy *phy;
@@ -192,6 +196,7 @@ struct cdns_sierra_phy {
 	struct regmap *regmap_common_cdb;
 	struct regmap_field *macro_id_type;
 	struct regmap_field *phy_pll_cfg_1;
+	struct regmap_field *pllctrl_lock[SIERRA_MAX_LANES];
 	struct clk *clk;
 	int nsubnodes;
 	bool autoconf;
@@ -291,10 +296,25 @@ static int cdns_sierra_phy_init(struct phy *gphy)
 
 static int cdns_sierra_phy_on(struct phy *gphy)
 {
+	struct cdns_sierra_phy *sp = dev_get_drvdata(gphy->dev.parent);
 	struct cdns_sierra_inst *ins = phy_get_drvdata(gphy);
+	struct device *dev = sp->dev;
+	u32 val;
+	int ret;
 
 	/* Take the PHY lane group out of reset */
-	return reset_control_deassert(ins->lnk_rst);
+	ret = reset_control_deassert(ins->lnk_rst);
+	if (ret) {
+		dev_err(dev, "Failed to take the PHY lane out of reset\n");
+		return ret;
+	}
+
+	ret = regmap_field_read_poll_timeout(sp->pllctrl_lock[ins->mlane],
+					     val, val, 1000, PLL_LOCK_TIME);
+	if (ret < 0)
+		dev_err(dev, "PLL lock of lane failed\n");
+
+	return ret;
 }
 
 static int cdns_sierra_phy_off(struct phy *gphy)
@@ -350,6 +370,7 @@ static int cdns_regfield_init(struct cdns_sierra_phy *sp)
 	struct device *dev = sp->dev;
 	struct regmap_field *field;
 	struct regmap *regmap;
+	int i;
 
 	regmap = sp->regmap_common_cdb;
 	field = devm_regmap_field_alloc(dev, regmap, macro_id_type);
@@ -367,6 +388,16 @@ static int cdns_regfield_init(struct cdns_sierra_phy *sp)
 	}
 	sp->phy_pll_cfg_1 = field;
 
+	for (i = 0; i < SIERRA_MAX_LANES; i++) {
+		regmap = sp->regmap_lane_cdb[i];
+		field = devm_regmap_field_alloc(dev, regmap, pllctrl_lock);
+		if (IS_ERR(field)) {
+			dev_err(dev, "P%d_ENABLE reg field init failed\n", i);
+			return PTR_ERR(field);
+		}
+		sp->pllctrl_lock[i] =  field;
+	}
+
 	return 0;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
