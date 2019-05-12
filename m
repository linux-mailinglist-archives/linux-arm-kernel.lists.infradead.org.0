Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F021ABCE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 12:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kiv9Or32nZgIiqadEkBhoeBl55vEpvX2ALOqPeJHFbg=; b=tlA5z5VS2Js3jd
	61bQqAcm9tmc1Y81CJvQt0PaAJlA0rz8kYdFlJaiHlUB9pHOg3RNrZ1pPMJh57cIhjmFDV+OsW9MB
	mN5p2o6brfi0R/cYh44kfyKKzBSx0XesmanRYa+KH7w4grG4mcaxBEdcoyGjfqae/ufkxtt7uPcWN
	GJSmuSesl+hozYOSU9N05I8aP3t7qRzfXRj6DRqb2a1wW4TZck4zSMwTSbY34qG8RO3h5MklEbK17
	KlrrYCqCu8o7Cc81Q1MtFMMcUmhwGJ7Y6IKQR5UNzw3HMUTuuFbr9tyF/dq8SOKdhA2j9zuJl/3yJ
	5cRE8aR5/LtJoqmdNTPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPlkr-0008Rk-HO; Sun, 12 May 2019 10:30:53 +0000
Received: from mail-eopbgr70075.outbound.protection.outlook.com ([40.107.7.75]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPlkk-0008RR-1d
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 10:30:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MJHUg6iM/oMHI3oxzjNBdSsky7UYYJYg2O0AhXa92Ww=;
 b=QMCciNio8Edmsd699t3oLG3jdPpr21N/ZR5SjdgwENSL+PMWDDbB9N8YX66eGOH8LRdBCkqlIJom3xafTFzvKdrUt/2/M4GnqAG2cIbdSDYtsRmfOxiteAmvis36ByU/lJuCL/CuHzkvbCWJ5fQRJjuagjcd8wiZCiFPSIfkB6w=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3675.eurprd04.prod.outlook.com (52.134.69.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Sun, 12 May 2019 10:30:41 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Sun, 12 May 2019
 10:30:41 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, Aisheng
 Dong <aisheng.dong@nxp.com>, "gustavo@embeddedor.com"
 <gustavo@embeddedor.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH RESEND] clk: imx7ulp: update nic1_bus_clk parent info
Thread-Topic: [PATCH RESEND] clk: imx7ulp: update nic1_bus_clk parent info
Thread-Index: AQHVCK2/SJLVf5bRSUqrwly/NQgOOw==
Date: Sun, 12 May 2019 10:30:41 +0000
Message-ID: <1557656739-13120-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0002.apcprd04.prod.outlook.com
 (2603:1096:202:2::12) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9a38ca12-bc8f-4051-9d17-08d6d6c4e1db
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3675; 
x-ms-traffictypediagnostic: DB3PR0402MB3675:
x-microsoft-antispam-prvs: <DB3PR0402MB367512B57DE9A0E7BEA4BB1CF50E0@DB3PR0402MB3675.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:289;
x-forefront-prvs: 0035B15214
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(39860400002)(396003)(346002)(366004)(199004)(189003)(14444005)(3846002)(6116002)(256004)(7416002)(2201001)(26005)(2906002)(66476007)(66556008)(64756008)(66446008)(5660300002)(8936002)(102836004)(73956011)(66946007)(6512007)(6506007)(71200400001)(386003)(99286004)(71190400001)(476003)(86362001)(2616005)(486006)(186003)(52116002)(110136005)(25786009)(14454004)(4326008)(305945005)(478600001)(2501003)(6436002)(7736002)(6486002)(53936002)(36756003)(68736007)(316002)(50226002)(15650500001)(66066001)(81166006)(81156014)(8676002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3675;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kyKjExGx9NSvqntaDLmzgoIfE3diKjqlSJLAsCwgZUjL2kJwuCo7qJ0S/QxMDqVWxQQe5kVjW7MAYFTM8j6M0JwRwRNnWBHJJnAzgdQTWagUsfdiAkTVPRbRzbELXktp71Xo1i2tE9219bTVmp5j17SkjsTEFCRBayE6fBcD+dcZkvXR+mDKwq4hN1Ap8z1+uLiEJgy0qJosPPvREtikaAEgqS7Poyx2vYs2zUhNDtLacgQY1WNmOnGi9AfKD7AC8KEIQPGtm2IYFsrFfz1f6Y0H0hMWIFmFotXIXGN+auNcF0Ka1lhVdOPmgdD+WFZo+LX08HcIdO3xts8r4ZyiDFFY9t2eXZy6g+NilcJyv9LeWwIILZ4Nb7GSIgmI6Y5ro++557vJx6XmXXaBsuv0kWnEnVVMip5epdRTavEfKH8=
Content-ID: <858DCB10922DA04E8F253FD5C25498CA@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a38ca12-bc8f-4051-9d17-08d6d6c4e1db
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2019 10:30:41.5517 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3675
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_033046_089408_974F5E82 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since i.MX7ULP B0 chip, nic1_bus_clk's parent is changed to
from nic0_clk directly, update it accordingly.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change, just resend patch with correct encoding.
---
 drivers/clk/imx/clk-imx7ulp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
index 6668210..42e4667 100644
--- a/drivers/clk/imx/clk-imx7ulp.c
+++ b/drivers/clk/imx/clk-imx7ulp.c
@@ -115,7 +115,7 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 
 	clks[IMX7ULP_CLK_NIC0_DIV]	= imx_clk_hw_divider_flags("nic0_clk",		"nic_sel",  base + 0x40, 24, 4, CLK_SET_RATE_PARENT | CLK_IS_CRITICAL);
 	clks[IMX7ULP_CLK_NIC1_DIV]	= imx_clk_hw_divider_flags("nic1_clk",		"nic0_clk", base + 0x40, 16, 4, CLK_SET_RATE_PARENT | CLK_IS_CRITICAL);
-	clks[IMX7ULP_CLK_NIC1_BUS_DIV]	= imx_clk_hw_divider_flags("nic1_bus_clk",	"nic1_clk", base + 0x40, 4,  4, CLK_SET_RATE_PARENT | CLK_IS_CRITICAL);
+	clks[IMX7ULP_CLK_NIC1_BUS_DIV]	= imx_clk_hw_divider_flags("nic1_bus_clk",	"nic0_clk", base + 0x40, 4,  4, CLK_SET_RATE_PARENT | CLK_IS_CRITICAL);
 
 	clks[IMX7ULP_CLK_GPU_DIV]	= imx_clk_hw_divider("gpu_clk", "nic0_clk", base + 0x40, 20, 4);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
