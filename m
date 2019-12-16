Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACFA1201B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 10:59:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0mrdLBSTA7aEKapHMxSIzvwqBZbp6COfox51ooy7e4=; b=uEEcpbRRL3nonJ
	pGWQ0mN+OmFTkCpir0zAtVbBHpxC0Al03ra44BH2qD1m5D06hG33lacFXDma1aWEKgjqPD/3FASFs
	7E4lqSaWwGr7yiO/y/Wqu/e+VIW/NZiHdfbmk2wWsytlis5I4sDFyWKClrYy/3UuxDsz81X5S3Jt/
	Dke5DsgFlMfM728lfVGcjE3vhCYQSTfVUgVqIv9DFHlPKVxupmfOrxhHSg+2N4EvcrT4iV87yFIIM
	Ob/53AZIBQLGwJL4o+cO31LZp5LzPiULKxBH73CLryWsv7V6SessCLOGyyCyQvPbSI7aQ9q6VVP8W
	6OwXaCFaRpBuupvkr1Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ign9u-000820-5K; Mon, 16 Dec 2019 09:59:22 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ign76-0005fJ-PO
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 09:56:30 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBG9uPeO106127;
 Mon, 16 Dec 2019 03:56:25 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576490185;
 bh=uk33OX2/IRV4qk5zeJOpsDKsk+aZEVFfOmbpkxiarpY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Uo5l031VytwY+htp3tFoNwtIhjoGVm6sIm2RQ0gPw4d9I2XSz4E0Z3X+p/I2Y6+Pj
 7uldACES1kpYDGOWKsRUFPGzd/KAm7JEb25a99lCxKje7s/UTr0LW7YOYCaUCYwwb4
 HR8uomFcwMpbpy8p0b2O1KLCOcPNSaFjLvW18JYw=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBG9uPQG049540
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 16 Dec 2019 03:56:25 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 16
 Dec 2019 03:56:25 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 16 Dec 2019 03:56:25 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBG9tsJT084408;
 Mon, 16 Dec 2019 03:56:23 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Rob Herring <robh+dt@kernel.org>, Anil Varughese <aniljoy@cadence.com>,
 Roger Quadros <rogerq@ti.com>, Jyri Sarha <jsarha@ti.com>
Subject: [PATCH v4 10/14] phy: cadence: Sierra: Change MAX_LANES of Sierra to
 16
Date: Mon, 16 Dec 2019 15:27:08 +0530
Message-ID: <20191216095712.13266-11-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191216095712.13266-1-kishon@ti.com>
References: <20191216095712.13266-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_015629_011789_24A5D07B 
X-CRM114-Status: GOOD (  16.11  )
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

Sierra SERDES IP supports upto 16 lanes (though not all of it
will be enabled in a platform). Allow Sierra driver to support a
maximum of upto 16 lanes.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/cadence/phy-cadence-sierra.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index 62bff4b043f0..665a6dbc7816 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -141,7 +141,7 @@
 #define SIERRA_PHY_PLL_CFG				0xe
 
 #define SIERRA_MACRO_ID					0x00007364
-#define SIERRA_MAX_LANES				4
+#define SIERRA_MAX_LANES				16
 #define PLL_LOCK_TIME					100000
 
 static const struct reg_field macro_id_type =
@@ -199,6 +199,7 @@ struct cdns_sierra_phy {
 	struct regmap_field *pllctrl_lock[SIERRA_MAX_LANES];
 	struct clk *clk;
 	int nsubnodes;
+	u32 num_lanes;
 	bool autoconf;
 };
 
@@ -235,6 +236,18 @@ static struct regmap_config cdns_sierra_lane_cdb_config[] = {
 	SIERRA_LANE_CDB_REGMAP_CONF("1"),
 	SIERRA_LANE_CDB_REGMAP_CONF("2"),
 	SIERRA_LANE_CDB_REGMAP_CONF("3"),
+	SIERRA_LANE_CDB_REGMAP_CONF("4"),
+	SIERRA_LANE_CDB_REGMAP_CONF("5"),
+	SIERRA_LANE_CDB_REGMAP_CONF("6"),
+	SIERRA_LANE_CDB_REGMAP_CONF("7"),
+	SIERRA_LANE_CDB_REGMAP_CONF("8"),
+	SIERRA_LANE_CDB_REGMAP_CONF("9"),
+	SIERRA_LANE_CDB_REGMAP_CONF("10"),
+	SIERRA_LANE_CDB_REGMAP_CONF("11"),
+	SIERRA_LANE_CDB_REGMAP_CONF("12"),
+	SIERRA_LANE_CDB_REGMAP_CONF("13"),
+	SIERRA_LANE_CDB_REGMAP_CONF("14"),
+	SIERRA_LANE_CDB_REGMAP_CONF("15"),
 };
 
 static struct regmap_config cdns_sierra_common_cdb_config = {
@@ -548,6 +561,8 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
 			}
 		}
 
+		sp->num_lanes += sp->phys[node].num_lanes;
+
 		gphy = devm_phy_create(dev, child, &ops);
 
 		if (IS_ERR(gphy)) {
@@ -561,6 +576,11 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
 	}
 	sp->nsubnodes = node;
 
+	if (sp->num_lanes > SIERRA_MAX_LANES) {
+		dev_err(dev, "Invalid lane configuration\n");
+		goto put_child2;
+	}
+
 	/* If more than one subnode, configure the PHY as multilink */
 	if (!sp->autoconf && sp->nsubnodes > 1)
 		regmap_field_write(sp->phy_pll_cfg_1, 0x1);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
