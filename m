Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 225F4114D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:08:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5WtStFt7XzgU2y71CZgU404J0EyJ3jUHFPpGN5bjws=; b=A59Lv+GwqW0Mpz
	S9Vhu3nMxXa9RClHcFYAQdmifQWKAIXvgPD7wVH7IOlISd/lilf087V9RytTfXZHI86LPJZWxhk7P
	eek976BnVJOPRvDdSrWf4TkXgDDAS1w7TKzpNvY9VJL4G/KknMOzjhROuX4gIG3J2iAZv1LRFy/c/
	mGgaGJapaDObPGgizNiIvrPPVNSenTYHVgVrmcy1HiaYJmeaXeYEw/GHQVHAqwYGKT7YUXC+LQSzy
	kggw/ZS6u8BmO5BnC2agqqP54TtemNvR8SAf25IwfFYyC90CCkMJ85s0r361WoqMbRBy960CSbc7n
	e2fSqRxofA8EhDDt+Gow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6lN-000772-KE; Thu, 02 May 2019 08:08:17 +0000
Received: from mail-eopbgr140089.outbound.protection.outlook.com
 ([40.107.14.89] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6k5-0005KE-Iu
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:07:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u8Zd1hiv1LPfTMDOycuMddd4tHyWtWHZ25l35F1azSI=;
 b=SVyAFJ4VTDYncVbEopl2ssreS+nHOp1x8924XNh1g3OwzXpy3IltJ6++JlNEpZ7W71oZiKCXh0aCvhKmPGNEhryb4ryiGtUj9Y6UwZpEdw2E+ak1ah81nWiXcP9/rFtu7wm9RYyJYj9TWrfPQH9IYQymeno2BWELMwVDP+XNBQA=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4563.eurprd04.prod.outlook.com (52.135.144.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Thu, 2 May 2019 08:06:45 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8%7]) with mapi id 15.20.1856.008; Thu, 2 May 2019
 08:06:45 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <fabio.estevam@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v2 06/18] clk: imx: clk-gate2: Switch to clk_hw based API
Thread-Topic: [PATCH v2 06/18] clk: imx: clk-gate2: Switch to clk_hw based API
Thread-Index: AQHVAL37v0rQ3S2aIkuHpd73wmKkow==
Date: Thu, 2 May 2019 08:06:45 +0000
Message-ID: <1556784376-7191-7-git-send-email-abel.vesa@nxp.com>
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
x-ms-office365-filtering-correlation-id: dcc9db4e-760a-4cd2-1f73-08d6ced51e53
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4563; 
x-ms-traffictypediagnostic: AM0PR04MB4563:
x-microsoft-antispam-prvs: <AM0PR04MB456362CAB8411766D95114D8F6340@AM0PR04MB4563.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(376002)(346002)(366004)(199004)(189003)(53936002)(66476007)(66556008)(64756008)(66946007)(73956011)(66446008)(66066001)(6116002)(36756003)(3846002)(305945005)(86362001)(6486002)(81156014)(6512007)(81166006)(25786009)(8676002)(4326008)(71200400001)(71190400001)(99286004)(8936002)(14454004)(76176011)(50226002)(11346002)(446003)(2616005)(68736007)(478600001)(386003)(2906002)(6506007)(52116002)(316002)(44832011)(54906003)(110136005)(26005)(7736002)(5660300002)(256004)(102836004)(186003)(14444005)(486006)(476003)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4563;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0FZiW8EG3IL1CjWJkITmeChqQbxkbuO/8s7bts7M4DL2AFRsOi4EXg4qh3Kbo9YzO9KsnAQMUoFWzlgei/QE3zUEJCYFX/1IgkmfHlh+wnlubGIzQfCNqvJ+5h8lSz0NUMHC9xFW4rT6xTza+NzDud9QvmEhoqmcZ6r//zXplHR5bqZFU0EiNBo2W+kikdQm3E/EHp6lKiw1bgLcWR2Bz7EB61ClRmZIEMCNY/45ltbjcapJesZKaTqbLsYOx/j3ALlSnEFQJanI95zdZWr13Vov8R3c7fAMuJwUPy5n4rM2euiETMgMpmP21Ogpz2NnX5VA+0bUnKb3/mYyK1vJii1l/0M/OyAOhFTA9P34vwfY1paGrNO8mosBrUFPYVCHCw5x5E6yL0N8E1k5w/DOPsSLLkohK3P27TTE6xekVE4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcc9db4e-760a-4cd2-1f73-08d6ced51e53
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 08:06:45.3612 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4563
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_010658_029259_F2A43492 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Switch the clk_register_gate2 function to clk_hw based API, rename
accordingly and add a macro for clk based legacy. This allows us to
move closer to a clear split between consumer and provider clk APIs.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk-gate2.c | 14 +++++++++-----
 drivers/clk/imx/clk.h       |  7 ++++++-
 2 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/imx/clk-gate2.c b/drivers/clk/imx/clk-gate2.c
index 60fc9d7..14551fd3 100644
--- a/drivers/clk/imx/clk-gate2.c
+++ b/drivers/clk/imx/clk-gate2.c
@@ -125,15 +125,16 @@ static const struct clk_ops clk_gate2_ops = {
 	.is_enabled = clk_gate2_is_enabled,
 };
 
-struct clk *clk_register_gate2(struct device *dev, const char *name,
+struct clk_hw *clk_hw_register_gate2(struct device *dev, const char *name,
 		const char *parent_name, unsigned long flags,
 		void __iomem *reg, u8 bit_idx, u8 cgr_val,
 		u8 clk_gate2_flags, spinlock_t *lock,
 		unsigned int *share_count)
 {
 	struct clk_gate2 *gate;
-	struct clk *clk;
+	struct clk_hw *hw;
 	struct clk_init_data init;
+	int ret;
 
 	gate = kzalloc(sizeof(struct clk_gate2), GFP_KERNEL);
 	if (!gate)
@@ -154,10 +155,13 @@ struct clk *clk_register_gate2(struct device *dev, const char *name,
 	init.num_parents = parent_name ? 1 : 0;
 
 	gate->hw.init = &init;
+	hw = &gate->hw;
 
-	clk = clk_register(dev, &gate->hw);
-	if (IS_ERR(clk))
+	ret = clk_hw_register(NULL, hw);
+	if (ret) {
 		kfree(gate);
+		return ERR_PTR(ret);
+	}
 
-	return clk;
+	return hw;
 }
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 996dcc6..c819ce15 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -58,6 +58,11 @@ struct imx_pll14xx_clk {
 #define imx_clk_cpu(name, parent_name, div, mux, pll, step) \
 	imx_clk_hw_cpu(name, parent_name, div, mux, pll, step)->clk
 
+#define clk_register_gate2(dev, name, parent_name, flags, reg, bit_idx, \
+				cgr_val, clk_gate_flags, lock, share_count) \
+	clk_hw_register_gate2(dev, name, parent_name, flags, reg, bit_idx, \
+				cgr_val, clk_gate_flags, lock, share_count)->clk
+
 struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
 
@@ -96,7 +101,7 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
 struct clk_hw *imx_clk_pllv4(const char *name, const char *parent_name,
 			     void __iomem *base);
 
-struct clk *clk_register_gate2(struct device *dev, const char *name,
+struct clk_hw *clk_hw_register_gate2(struct device *dev, const char *name,
 		const char *parent_name, unsigned long flags,
 		void __iomem *reg, u8 bit_idx, u8 cgr_val,
 		u8 clk_gate_flags, spinlock_t *lock,
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
