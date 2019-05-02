Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE1F114EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=br+2Gw/T8yhZu7dNF6HyFSEGVXpcUDvMaE+DZL6V1jU=; b=V7tuenMBIy1wBo
	/sBPZ6Lh6SDkl0VqFznISyPlnSfPpWHYzSRQLYYsnj2AWmJyQRyQ8tNGC/4ancegXkI80HfMND8CO
	inQIvTWX/S1Bbh6DGyY8whEQ4CT81oEOuPKS2glTNa94ltP9dIJQiLRHZPHOPvM1r9SCzmIcrc9v2
	jWDI2zwOgjGnzjEetptCVcGNXuM3FXoTgA6mseidg1ihl7neZBP5v2r+7FN1OTzP2n/KjijI4DPen
	V5ux2DHCmDiXudrhaa7919SeXRR6sR8RpNEiPCpilG4QMClS0iqYBw2NqCYldwqdjRtUJ8BGWm2Bh
	eL3g3Wahs7tVJaR7bZlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6mW-00007v-Gd; Thu, 02 May 2019 08:09:28 +0000
Received: from mail-eopbgr10041.outbound.protection.outlook.com ([40.107.1.41]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6kJ-0005Kv-QI
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:07:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vkqYsLfhg5iGkbuTS3L9cMtnuJC4tgOIzA8Ct3NDAeo=;
 b=ZZzjrCAnHEp6a0PwNiKnTSRBjarMZ0+ZsRwJI1vAW3HQneG4vUIgGY4Mx7DUiQvTdGkkgAlKDU3m5hIGsotYJitcEQd6SDtZl20wtC1m4oryhGeLGzcfHeW1bDn+Hy6RJ/bCV9Tj4UtRnlUFp8kt08gwX0wBY6spfENbOEd307E=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4948.eurprd04.prod.outlook.com (20.177.40.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.16; Thu, 2 May 2019 08:06:49 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8%7]) with mapi id 15.20.1856.008; Thu, 2 May 2019
 08:06:49 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <fabio.estevam@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v2 11/18] clk: imx: clk-fixup-mux: Switch to clk_hw based API
Thread-Topic: [PATCH v2 11/18] clk: imx: clk-fixup-mux: Switch to clk_hw based
 API
Thread-Index: AQHVAL3+Kq7BFPAkjUuNGbD1AGXNuA==
Date: Thu, 2 May 2019 08:06:49 +0000
Message-ID: <1556784376-7191-12-git-send-email-abel.vesa@nxp.com>
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
x-ms-office365-filtering-correlation-id: c2ac4af0-dcdb-44da-5ab7-08d6ced520f1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4948; 
x-ms-traffictypediagnostic: AM0PR04MB4948:
x-microsoft-antispam-prvs: <AM0PR04MB49480E148C05A7A842CDD339F6340@AM0PR04MB4948.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(366004)(396003)(346002)(136003)(189003)(199004)(86362001)(3846002)(8676002)(478600001)(25786009)(186003)(6436002)(81156014)(26005)(71190400001)(71200400001)(102836004)(14454004)(6116002)(4326008)(53936002)(305945005)(7736002)(66066001)(36756003)(81166006)(50226002)(8936002)(6512007)(66556008)(64756008)(44832011)(316002)(54906003)(110136005)(99286004)(476003)(2616005)(66946007)(73956011)(486006)(68736007)(66476007)(66446008)(256004)(2906002)(6486002)(11346002)(446003)(5660300002)(52116002)(76176011)(386003)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4948;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FLfS9dcpBdHYjCRxdTrC2SpOsCCJ6LA140XuXhLsEo2/aFkxrx+QsoHizknTXHvcnU9mJ+y3Y4ENL6R1mUwY9PDJDO7S/6RhbmzfO21wPRk6opB/YVGS6vBa8LFFMo3UxI2l1QwtNtY0bOSiqBuw/ep7aY4ONPQmmsMTwWVTc7/HW7Sfg9MNwzrgoHm2SaC9OnKB5ZFRqJ0QxK2fc++H6ZyyTbCqx2ggvgZ0ZWDHe71oDLLXf40b1oZvXmGbmdDObO9cpBreo0pjJDMM0enbcnfYJmEyMf2e8MvdfYxrqXtIuU1R1/QMAV17ED6rUSjrtVqwgpRCgcMujsNtH+Vb+8unRgowxI4rn5AGFDCpoXSauGPEdYB/vQ2kRp0iy5V9tVbPc7s5VmG7qZdVU0ePRxJU1iTW6Go/l8gFiPojst4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2ac4af0-dcdb-44da-5ab7-08d6ced520f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 08:06:49.7317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4948
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_010712_359580_47B3E470 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.41 listed in list.dnswl.org]
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

Switch the imx_clk_fixup_mux function to clk_hw based API, rename
accordingly and add a macro for clk based legacy. a macro for clk
based legacy. This allows us to move closer to a clear split between
consumer and provider clk APIs.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk-fixup-mux.c | 15 ++++++++++-----
 drivers/clk/imx/clk.h           |  3 +++
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/imx/clk-fixup-mux.c b/drivers/clk/imx/clk-fixup-mux.c
index 44817c1..f3c4ec2 100644
--- a/drivers/clk/imx/clk-fixup-mux.c
+++ b/drivers/clk/imx/clk-fixup-mux.c
@@ -69,13 +69,14 @@ static const struct clk_ops clk_fixup_mux_ops = {
 	.set_parent = clk_fixup_mux_set_parent,
 };
 
-struct clk *imx_clk_fixup_mux(const char *name, void __iomem *reg,
+struct clk_hw *imx_clk_hw_fixup_mux(const char *name, void __iomem *reg,
 			      u8 shift, u8 width, const char * const *parents,
 			      int num_parents, void (*fixup)(u32 *val))
 {
 	struct clk_fixup_mux *fixup_mux;
-	struct clk *clk;
+	struct clk_hw *hw;
 	struct clk_init_data init;
+	int ret;
 
 	if (!fixup)
 		return ERR_PTR(-EINVAL);
@@ -98,9 +99,13 @@ struct clk *imx_clk_fixup_mux(const char *name, void __iomem *reg,
 	fixup_mux->ops = &clk_mux_ops;
 	fixup_mux->fixup = fixup;
 
-	clk = clk_register(NULL, &fixup_mux->mux.hw);
-	if (IS_ERR(clk))
+	hw = &fixup_mux->mux.hw;
+
+	ret = clk_hw_register(NULL, hw);
+	if (ret) {
 		kfree(fixup_mux);
+		return ERR_PTR(ret);
+	}
 
-	return clk;
+	return hw;
 }
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index fc32baa..e1a47396 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -75,6 +75,9 @@ struct imx_pll14xx_clk {
 #define imx_clk_fixup_divider(name, parent, reg, shift, width, fixup) \
 	imx_clk_hw_fixup_divider(name, parent, reg, shift, width, fixup)->clk
 
+#define imx_clk_fixup_mux(name, reg, shift, width, parents, num_parents, fixup) \
+	imx_clk_hw_fixup_mux(name, reg, shift, width, parents, num_parents, fixup)->clk
+
 struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
 
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
