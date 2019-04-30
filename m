Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5657EE98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 03:55:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vbwr0Vc6jqjKiR3bWaFwRBkIt9/hG58jy9zCC/STSco=; b=qmCigkvbwXLhXk
	47RDx2CKiqxb52pfT5JEEp00lKclfKkMGOYWSgg0jSWId3MSfKJLlXQRz0ifq/roND9nvrAN4z83A
	ED4zI0ae6/J+UaAoAjb0SObBOvR3LNx+ruPY9jHY7g3ytKEqYi83KqItcF7GCxvmYeuwLGGsLtOmJ
	BmTF50L8xS463+CVDGSbNmcqB5qbB5U2sCBRDBQJGeA5mQLIOkq4FlyKm1EyIISISLPOyY5wt+Xr8
	wawzpSDva7w1hOW8J5M64zTwUC1uDyvshYJsuuaLA227YRWGSPzgk2Jc7BVpAY8y66X2jK+Vhyha3
	d9a/cCiiNIcSi/b3fKJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLHzX-00062C-3F; Tue, 30 Apr 2019 01:55:31 +0000
Received: from mail-eopbgr20042.outbound.protection.outlook.com ([40.107.2.42]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLHzO-00061k-Uo
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 01:55:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yfff3VUuI7FcOhQjulztNG48leP+fI44AuIkflJgl58=;
 b=m8zNQMgmesbA5Qvqbu73itjk8fopxZ2wxo/NZp5eUir5WEd7SnUlPnJAucEl3j09Xnyde8W0/lYs1khktAFJ+oS/Wl2JR6Ly9V/vnT0JYy6tL9tqsdo/SM5CmbGtf3AQoHGHy0qrIFuoYOMVf8o0mjk1CobjmnoP9NE78TjDH4o=
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com (52.133.30.10) by
 AM6PR0402MB3829.eurprd04.prod.outlook.com (52.133.29.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Tue, 30 Apr 2019 01:55:18 +0000
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::55cc:4406:327:9259]) by AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::55cc:4406:327:9259%3]) with mapi id 15.20.1835.018; Tue, 30 Apr 2019
 01:55:18 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] clk: imx: pllv3: Fix fall through build warning
Thread-Topic: [PATCH] clk: imx: pllv3: Fix fall through build warning
Thread-Index: AQHU/vfDJ+hnJuSvCk6GSL1CreUf2Q==
Date: Tue, 30 Apr 2019 01:55:18 +0000
Message-ID: <1556589033-6080-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0063.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::27) To AM6PR0402MB3911.eurprd04.prod.outlook.com
 (2603:10a6:209:1c::10)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 68c6c806-fef6-46d2-40f5-08d6cd0ee578
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR0402MB3829; 
x-ms-traffictypediagnostic: AM6PR0402MB3829:
x-microsoft-antispam-prvs: <AM6PR0402MB382940A6A3A42D3A816F67AAF53A0@AM6PR0402MB3829.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:331;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(366004)(396003)(376002)(136003)(189003)(199004)(86362001)(4326008)(2501003)(2201001)(6436002)(81166006)(8936002)(6486002)(66066001)(52116002)(7736002)(66446008)(81156014)(110136005)(64756008)(73956011)(66476007)(66556008)(305945005)(99286004)(50226002)(316002)(25786009)(8676002)(6512007)(53936002)(256004)(14454004)(4744005)(66946007)(186003)(3846002)(6116002)(14444005)(26005)(2906002)(386003)(68736007)(71190400001)(97736004)(478600001)(476003)(486006)(5660300002)(6506007)(2616005)(71200400001)(36756003)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3829;
 H:AM6PR0402MB3911.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: um4Cp4BkeckDFY5Y5DLx3bezGZvre+JlN93QVKB+XsfrzCraQGIqgnMK4mLAqpassiMGSuJpW+AvZA9DXftPvH71t+bQ9JhPbeZMobX2yJ0SUi+GYVLS5jdapUU5ZSbBFLCHJHIsHS0JupB8dcdVf/vR5GCNffOC9NXjpDJ8iGj4cqKRXOja3XURtnPX+RDCpYpABNFT+j+j89n6WAPS585vpYqWd5W6N3JZgjeFMBUN7ctOk07Lsluoo1GF6QSWivOEW7W+iWjKosPelKohnz2PgjNhCn1VcNu0dCzhRuQMezYQ3smQIvcZ2nh43z8HBJXTcmb53N9ETZLUPtjugnkyZKQgiEtpXNRhvodt781BMQyUBluGkFYIeYLMROpkGN7C7RIjJ4Qb0YTAFFVZtnEgKj05V5nDx0Aybu9UVJA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68c6c806-fef6-46d2-40f5-08d6cd0ee578
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 01:55:18.7396 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3829
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_185522_992519_A195B38B 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix below fall through build warning:

drivers/clk/imx/clk-pllv3.c:453:21: warning:
this statement may fall through [-Wimplicit-fallthrough=]

   pll->denom_offset = PLL_IMX7_DENOM_OFFSET;
                     ^
drivers/clk/imx/clk-pllv3.c:454:2: note: here
  case IMX_PLLV3_AV:
  ^~~~

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clk/imx/clk-pllv3.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
index e892b9a..fbe4fe0 100644
--- a/drivers/clk/imx/clk-pllv3.c
+++ b/drivers/clk/imx/clk-pllv3.c
@@ -451,6 +451,7 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
 	case IMX_PLLV3_AV_IMX7:
 		pll->num_offset = PLL_IMX7_NUM_OFFSET;
 		pll->denom_offset = PLL_IMX7_DENOM_OFFSET;
+		/* fall through */
 	case IMX_PLLV3_AV:
 		ops = &clk_pllv3_av_ops;
 		break;
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
