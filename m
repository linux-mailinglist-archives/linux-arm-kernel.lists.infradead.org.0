Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7679120199
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 10:57:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+6sjRIPVZONf62wU0LuaAekNCSZ3QmtrBckFdr9lZYE=; b=GrK+0UUKuBfr43
	ah/Y4v/w2WMQQj5WyepuHCEgi2wzHkShxkwBPCeP0OfP35VRqq1I4T3J8hIPfirR1rUNcRhg0dxrR
	u1fGBI8+2vJc+bhg8hDRTmFj+DJxocXX2in1OlRPGdnfHPVQlv33iJKSFQBixeBAXx79UdbZNfsoQ
	zozmSWfFAd82C5ttRp2bRf6pyHZB8qzLTN4sd0Ucs+g6vLv1DorVokTQNkxct4X4+6020Ik8MqofE
	DKplViOFDnVGga1svmiBb619hzyzXQkPNJctR1IXjIHrup5W+BqsbPKmMUsThXZNC7V2Tt6uykIyO
	tHMepWiKZc5KimMPWvGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ign8Q-0006f3-2H; Mon, 16 Dec 2019 09:57:50 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ign6v-0005Vt-99
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 09:56:19 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBG9uBuk106083;
 Mon, 16 Dec 2019 03:56:11 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576490171;
 bh=KgCdmhuOnIHUcH9TRzqb5Eaq1xWjKMdqrGjEhzQdvbA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=QalqmDYfFg9W7WqHbHUsMzhSqkcDYi6Y0MwJmDj4tw3Tfs8ezM8ph6eqhvOp0qxFx
 YRSSF2sT/J2Q3PAevOekStn3YJUii+8k4NKD4GtPYDUx9jIvxxWfV1bGi3anw3JPSC
 0driCIsf1+dAGQgr+rItzlC9xy0PiZu0DLjWkIdg=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBG9uBqE049265
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 16 Dec 2019 03:56:11 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 16
 Dec 2019 03:56:11 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 16 Dec 2019 03:56:11 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBG9tsJO084408;
 Mon, 16 Dec 2019 03:56:08 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Rob Herring <robh+dt@kernel.org>, Anil Varughese <aniljoy@cadence.com>,
 Roger Quadros <rogerq@ti.com>, Jyri Sarha <jsarha@ti.com>
Subject: [PATCH v4 05/14] phy: cadence: Sierra: Make cdns_sierra_phy_init() as
 phy_ops
Date: Mon, 16 Dec 2019 15:27:03 +0530
Message-ID: <20191216095712.13266-6-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191216095712.13266-1-kishon@ti.com>
References: <20191216095712.13266-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_015617_488754_BD2D1C0D 
X-CRM114-Status: GOOD (  16.49  )
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

Instead of invoking cdns_sierra_phy_init() from probe, add it in
phy_ops so that it's initialized when the PHY consumer invokes
phy_init()

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/cadence/phy-cadence-sierra.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index d3b0dac2db77..bc2ae260359c 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -176,7 +176,7 @@ static struct regmap_config cdns_sierra_phy_config_ctrl_config = {
 	.reg_read = cdns_regmap_read,
 };
 
-static void cdns_sierra_phy_init(struct phy *gphy)
+static int cdns_sierra_phy_init(struct phy *gphy)
 {
 	struct cdns_sierra_inst *ins = phy_get_drvdata(gphy);
 	struct cdns_sierra_phy *phy = dev_get_drvdata(gphy->dev.parent);
@@ -185,6 +185,10 @@ static void cdns_sierra_phy_init(struct phy *gphy)
 	struct cdns_reg_pairs *vals;
 	u32 num_regs;
 
+	/* Initialise the PHY registers, unless auto configured */
+	if (phy->autoconf)
+		return 0;
+
 	if (ins->phy_type == PHY_TYPE_PCIE) {
 		num_regs = phy->init_data->pcie_regs;
 		vals = phy->init_data->pcie_vals;
@@ -192,7 +196,7 @@ static void cdns_sierra_phy_init(struct phy *gphy)
 		num_regs = phy->init_data->usb_regs;
 		vals = phy->init_data->usb_vals;
 	} else {
-		return;
+		return -EINVAL;
 	}
 	for (i = 0; i < ins->num_lanes; i++) {
 		for (j = 0; j < num_regs ; j++) {
@@ -200,6 +204,8 @@ static void cdns_sierra_phy_init(struct phy *gphy)
 			regmap_write(regmap, vals[j].off, vals[j].val);
 		}
 	}
+
+	return 0;
 }
 
 static int cdns_sierra_phy_on(struct phy *gphy)
@@ -218,6 +224,7 @@ static int cdns_sierra_phy_off(struct phy *gphy)
 }
 
 static const struct phy_ops ops = {
+	.init		= cdns_sierra_phy_init,
 	.power_on	= cdns_sierra_phy_on,
 	.power_off	= cdns_sierra_phy_off,
 	.owner		= THIS_MODULE,
@@ -438,10 +445,6 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
 		sp->phys[node].phy = gphy;
 		phy_set_drvdata(gphy, &sp->phys[node]);
 
-		/* Initialise the PHY registers, unless auto configured */
-		if (!sp->autoconf)
-			cdns_sierra_phy_init(gphy);
-
 		node++;
 	}
 	sp->nsubnodes = node;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
