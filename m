Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE039114C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:07:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZGV9oesX21im+3Jk5lcSmmrfJGWDqfiLISu60k05CKs=; b=IbIiqV6fqVTDdu
	3zBJ1JrIr2fTV4HxhRbNuQ/4aSCtQ9TQLnUqtFZNCO7HKr3KfQfkShF1QkuElk9QLDspvRvOH1wdH
	9neeZm5nNHBVlnuonsearjG7QqlNmAiXT8rQSXDs1zQjc12adV/w4F2m06RlXLT0aoNfsyMou762q
	YUr6a3BGsEe8A2NZpYN2FGfthuJ9pI65ZZPRNH0B6MnRucQlCl/fHTRS0Dz4moZWLWHZhBj5kwYh1
	PGt5CsWVPBXooJPKMol/gYpPpu1FUTETqIxo2YW5wOkJhoYAg3V7afI7T5GXIIHliLWNJK0bUo1/F
	PcnxULpOeqHJmTX3jd5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6kY-00060q-1p; Thu, 02 May 2019 08:07:26 +0000
Received: from mail-ve1eur01on061c.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::61c]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6jy-0005LF-Ey
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:06:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bX1zcMKRqIVg29mc/4nz3GvFhP8QLtpoN17PQAnAhZs=;
 b=Y81/puwhZVjeVHfLl4uDkNxeH3Nng9Z2Y4qTdpM+MI5yfTUYNbRBSeLxb0E5jVFLX2goA5WHrL44O3ot8/8ApStEX9LXwfQHamYbXc5YZbJ/oLb4BnRS+hK5M0F9UPrMusiQp23WwrtWeCUFC3Q15Gqfq+gzvQQOR8+fUKb38kg=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4563.eurprd04.prod.outlook.com (52.135.144.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Thu, 2 May 2019 08:06:41 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8%7]) with mapi id 15.20.1856.008; Thu, 2 May 2019
 08:06:41 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <fabio.estevam@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v2 02/18] clk: imx6sx: Do not reparent to unregistered
 IMX6SX_CLK_AXI
Thread-Topic: [PATCH v2 02/18] clk: imx6sx: Do not reparent to unregistered
 IMX6SX_CLK_AXI
Thread-Index: AQHVAL35WmG4+8Wp/Ua+lzjPl71Z5A==
Date: Thu, 2 May 2019 08:06:41 +0000
Message-ID: <1556784376-7191-3-git-send-email-abel.vesa@nxp.com>
References: <1556784376-7191-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1556784376-7191-1-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0501CA0041.eurprd05.prod.outlook.com
 (2603:10a6:800:60::27) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 457436e1-ab4b-4125-dbc4-08d6ced51bec
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4563; 
x-ms-traffictypediagnostic: AM0PR04MB4563:
x-microsoft-antispam-prvs: <AM0PR04MB456365DBA815BE3D5C01645BF6340@AM0PR04MB4563.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(376002)(346002)(366004)(199004)(189003)(53936002)(66476007)(66556008)(64756008)(66946007)(73956011)(66446008)(66066001)(6116002)(36756003)(3846002)(305945005)(86362001)(6486002)(81156014)(6512007)(81166006)(25786009)(8676002)(4326008)(71200400001)(71190400001)(99286004)(8936002)(14454004)(76176011)(50226002)(11346002)(446003)(2616005)(68736007)(478600001)(386003)(2906002)(6506007)(4744005)(52116002)(316002)(44832011)(54906003)(110136005)(26005)(7736002)(5660300002)(256004)(102836004)(186003)(486006)(476003)(6436002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4563;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zK5XnEuHaVNWs+pNKI+TJuuKEK4Ngj9IeNQf/916f7QyCz1i5mavtxpUSLsU3gIfnrfd6xBZmSUuGCS4FrrpQPB6bB0V0FzzVAfwyuMwRtgo06mkVu91ObCklqlPubyQDG6Sbo6OWjOmTiwv37KOn0TTT32QUCjwEdnw2OYYBld3iLtp6c97nAD5kG9PFE6vCmLT0xsx0UawgorXPs7BGdTlRyFmq5tjt8gU4Lhc8j5L+NcMnXQRklnj4HZtM0LlKUComaChQvge2XxC6yiuH0HxaAOwmBLM6xjX0joVP3r5eGRndtnshRs1sRbXV5IhGhRYwaHZRN8UZooNX5dhabBSSPaoB6xUn2q9jYOu0yG17goiixy4hpgyavC77cjU0q8iqWuIATUtUumCULVutYQzYawGFjfnll8YQGy1VOo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 457436e1-ab4b-4125-dbc4-08d6ced51bec
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 08:06:41.3775 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4563
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_010650_812212_0FF1AAA0 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:61c listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clock IMX6SX_CLK_AXI is not registered at all.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk-imx6sx.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6sx.c b/drivers/clk/imx/clk-imx6sx.c
index 91558b0..4ed180c 100644
--- a/drivers/clk/imx/clk-imx6sx.c
+++ b/drivers/clk/imx/clk-imx6sx.c
@@ -512,8 +512,6 @@ static void __init imx6sx_clocks_init(struct device_node *ccm_node)
 	/* Set the parent clks of PCIe lvds1 and pcie_axi to be pcie ref, axi */
 	if (clk_set_parent(clks[IMX6SX_CLK_LVDS1_SEL], clks[IMX6SX_CLK_PCIE_REF_125M]))
 		pr_err("Failed to set pcie bus parent clk.\n");
-	if (clk_set_parent(clks[IMX6SX_CLK_PCIE_AXI_SEL], clks[IMX6SX_CLK_AXI]))
-		pr_err("Failed to set pcie parent clk.\n");
 
 	/*
 	 * Init enet system AHB clock, set to 200MHz
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
