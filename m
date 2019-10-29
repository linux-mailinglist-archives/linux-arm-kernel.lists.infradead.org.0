Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C91E89D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 14:43:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wiRGki6PKV/3RDOuqtJg8iFJ6f38bj3L+X2ypgZcxmw=; b=A9C8yHuPQNTV5s
	qKBTJ3hiN5ICooGBRsxT5o8Kr2feUcsRlCBhv4QZDwWxqQxfcRlfhG8zcRIczY+CU40v8YOuyMUQx
	Apk6BNxCEqLBtrMo6E/h+rRh9IGreJxOmQXB5gqSVrBbMYVk6hCeatA0fB8WDHzytQPNVB4QdQ6Y1
	zS9OJizvvopkyhrM7P6kyTRTZZPPOabB2NkcDRdAQ28Ko0xd0yTCKhaGBrVLybY22i8sDfhMEbaNg
	cL0K/KgjB2R+oCHfauCIOwIJRyjfFO01fmU+MLkcEc2F5ZrdI0X+yCdwkKd5cyVdbbHTWnF9C+T45
	wAI6umKYP8EP2XddpS4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPRm3-0002F5-Jr; Tue, 29 Oct 2019 13:43:03 +0000
Received: from mail-eopbgr130085.outbound.protection.outlook.com
 ([40.107.13.85] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPRkX-00010q-NZ
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 13:41:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JpdwvRIpATfusPJcTDCnH9NFlvuemj4jUAJI0ZdJiVSH/IFrdG4J3epyxakFJSNEsmPvGXBPgPKgk6qF1c4DU4Ztgvfqjqe7tONMFY4rBBOjDklaU7n0sNcBRgUpxlIMtFy7behkLBdbTrzt6y+tDcia+MlxhRF2/T+85AKQPLHfJlzI6wUBJaV0Vy9a9BQzPIwQJc4uMCbSHSk85cBpmW04enBFj3pB0L9lGrlPVVNQXhN6Da/ENrDp3eVlYSExZ/WZ1wA8kLUdZhrAWDrYh46zuOM4mRHuoxb6keMXGysoqcxph+MlyQfnhRAD/YUs3sug3UGjb7qn8Nrh1O3dSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dhvqOkMu2GXckDZf1/zbCsjg5AHZh23AH8C6jad/Dks=;
 b=BZG4Uth29xZmBB7KVyZAkEsfMTmg7wquiYwtN44I4RK1x/hStUxBopVpsCSbp9y0vbjmXTw/QcGblQREt6dSIQgUm2DlHq5x2lDuJRmsYBZ8O/YKzVFV9Z4zC66ZSXBc96JEol0b4qRL8NENjY17vdbPuC/hLB3IvDhOEStj6Qhl0uIORbQl0lFPYY5KCDg9N6fngWzZfbTpUCIOMHYOjucMD9dwqEf9AAVwuzOTbxpzKJFnWZ5q/2YSgXh7EjV64DCqCD05+egZRTozX3zWZI8wSrNAQSqWvHR/O4OZaWP+UT1HWv31VNhl9JP5fKiCvE63HToUvFJXAgf0Qp7EVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dhvqOkMu2GXckDZf1/zbCsjg5AHZh23AH8C6jad/Dks=;
 b=i1Cw/kHA3jVzk2HTV+pmevZIJZ6961jvmW82Jmu+NavvwteChpfXSlaEWZSruhI9E8Ve3hDPAtmh0rmTyVvRtsuspAOKv7/LDjENK3cbn7DvZPOOnFg8lQSJ1uOlBDUf6zrtRb8yKSs07AnJF1lH6YVNRCrsh0ovTP1XqdqeriI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5139.eurprd04.prod.outlook.com (20.176.215.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Tue, 29 Oct 2019 13:41:22 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2387.023; Tue, 29 Oct 2019
 13:41:22 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 6/7] clk: imx: sccg-pll: Switch to clk_hw based API
Thread-Topic: [PATCH 6/7] clk: imx: sccg-pll: Switch to clk_hw based API
Thread-Index: AQHVjl6Mj3bsIZq53UurLtNlu0w/Lg==
Date: Tue, 29 Oct 2019 13:41:21 +0000
Message-ID: <1572356175-24950-7-git-send-email-peng.fan@nxp.com>
References: <1572356175-24950-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1572356175-24950-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0030.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::18) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 26698e48-19a0-4694-018f-08d75c75af39
x-ms-traffictypediagnostic: AM0PR04MB5139:|AM0PR04MB5139:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5139476F0C6D6B025F67F85188610@AM0PR04MB5139.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(39860400002)(396003)(136003)(199004)(189003)(6436002)(102836004)(66946007)(52116002)(66556008)(66066001)(5660300002)(66476007)(2501003)(81166006)(8676002)(486006)(81156014)(6506007)(386003)(66446008)(6486002)(64756008)(256004)(478600001)(26005)(2906002)(3846002)(76176011)(186003)(25786009)(99286004)(71190400001)(71200400001)(6116002)(6512007)(6636002)(54906003)(14454004)(7736002)(36756003)(446003)(11346002)(476003)(2616005)(305945005)(4326008)(44832011)(50226002)(316002)(110136005)(86362001)(2201001)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5139;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X2+M6k8+okpt81fLqdKhJTUAI0bInbTK8q2YBZ9QZJRGBfiYcB/2hG40F1ErmYGbBrVlb8HEqP0qMGPXP2iHXooiCUTbGQAbN4kl9HH/ubbuMAnek2PCIHFnwiCVw/vEOTplbaGCsL9aA+7W6IL4iWkO2X0p1nGFUnbvSjcB9+rFqpzi4jIxAkXWkGi83HYJM1Zi8q7+OgQcOZMWcENkVoIdDRZYvnu6jsQCE+i9deVKKd0SLz8+/+tVZQn6fCyNOmcrC91WQ6tmF9g6LkHKYZbgnnTMcUd+RYDEZzmSoFdzlP2yDy2363bOgVLT2EWZQEsyj6KJF2rY1NNLvdYWOFxHz3SYWQY9Opr+ZNAXeXmQUPv6meSyMPhFC9ONeeA7iEGhZBgow7+UgeIpfx6D7rmm/PQ3x628P86hzTtQk/wDwawmakvLyQgPccSMoeS0
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26698e48-19a0-4694-018f-08d75c75af39
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 13:41:21.8981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x4qAm5WMGD4ujBuQjM3MoSlT/mN/JI/QJfAtRoPsh/AKv6vlcglnwo4qnD4bvrU2y9rdbiEiwEGsO8MRl5MrIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_064129_795646_E4101BE4 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Switch the imx_clk_sccg_pll function to clk_hw based API, rename
accordingly and add a macro for clk based legacy. This allows us to
move closer to a clear split between consumer and provider clk APIs.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-sccg-pll.c | 4 ++--
 drivers/clk/imx/clk.h          | 8 ++++++--
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk-sccg-pll.c b/drivers/clk/imx/clk-sccg-pll.c
index 5d65f65c512e..2cf874813458 100644
--- a/drivers/clk/imx/clk-sccg-pll.c
+++ b/drivers/clk/imx/clk-sccg-pll.c
@@ -506,7 +506,7 @@ static const struct clk_ops clk_sccg_pll_ops = {
 	.determine_rate	= clk_sccg_pll_determine_rate,
 };
 
-struct clk *imx_clk_sccg_pll(const char *name,
+struct clk_hw *imx_clk_hw_sccg_pll(const char *name,
 				const char * const *parent_names,
 				u8 num_parents,
 				u8 parent, u8 bypass1, u8 bypass2,
@@ -545,5 +545,5 @@ struct clk *imx_clk_sccg_pll(const char *name,
 		return ERR_PTR(ret);
 	}
 
-	return hw->clk;
+	return hw;
 }
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index a260b8dd3256..9de6bc590638 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -116,13 +116,17 @@ struct clk_hw *imx_clk_hw_frac_pll(const char *name, const char *parent_name,
 #define imx_clk_frac_pll(name, parent_name, base) \
 	imx_clk_hw_frac_pll(name, parent_name, base)->clk
 
-struct clk *imx_clk_sccg_pll(const char *name,
+struct clk_hw *imx_clk_hw_sccg_pll(const char *name,
 				const char * const *parent_names,
 				u8 num_parents,
 				u8 parent, u8 bypass1, u8 bypass2,
 				void __iomem *base,
 				unsigned long flags);
-
+#define imx_clk_sccg_pll(name, parent_names, num_parents, parent, \
+			 bypass1, bypass2, base, flags) \
+	imx_clk_hw_sccg_pll(name, parent_names, num_parents, parent, \
+			    bypass1, bypass2, base, flags)->clk
+
 enum imx_pllv3_type {
 	IMX_PLLV3_GENERIC,
 	IMX_PLLV3_SYS,
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
