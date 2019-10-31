Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9684EACFF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 11:02:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Edl+NMGgs71C/PJThiyPalXdV/XSDHrLaDO3/Ry+vJc=; b=h9E1t4z11t7u3R
	ZfbSz+bX2DO62mLt4GTalLUSNIWi8Da6JyJwJ+m3vTf2IYLp2xlg2c1DhaIshbpWrx8oAPbCw+AuL
	B8/DpoDLEaN7v9LoA4xsVZ2EhFP7IgPgm9jWvVlxzkDTGSKdYByBvjIuLU63xcRg6Pe2TBSLGaLPy
	r9bDfkSDsuh+7jGSPXxFzuiAj1BibVVPWkXwIetNsw9c0E+Jxg2to9YKWOvoyZRZEoKWePJpmKd0J
	laTIx4W6cwlZ01brV0Saa80oYhkfgEtZlOroZ9sLtiWevcdGWuPlVm26Kj23P4UwUkSNE38yrPktj
	AZCID0lRS6o8id+neVhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ7HK-0008RO-RU; Thu, 31 Oct 2019 10:02:06 +0000
Received: from mail-eopbgr130043.outbound.protection.outlook.com
 ([40.107.13.43] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ7HA-0008PE-Sc
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 10:01:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xye22T7IS3rMlAq3vqH8pDigwXkjt3gr/q2ZH+7d3dJcL1QJBXU4ItRisR5H+g/yQrMYa1NEp/fl5pBJ7yLmhn2FBr9MnZElduftHE/sRetSL0AYo5d3ZKK8NyusiIZB6AC1qDmjrFONw8KLAMIpF0lakLyB/rEuJCfE0U60NXRd95ahrtIFAREeNL++/IhONi9eevxm0JGhEwoIl2M3264qcbjLmziz/trSlj5K/jUb62Ky0ccpYepoWpxL0BO/Ju529URQ5LCrF6HlMyhf+5UmLQKBFd3Ky8o0hmE0AY8XusjNXXd00uNl+O6I4UgsfsfpMf5r5oLy/RfLP2pmzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vpxFxDU2of7SQZNngwghUxxa3ayNHAaxiGXH0RQJ7DM=;
 b=QPNEDlDS6iVRx0srjKOF1WeYHe4ccF4svYhx75eo+BtmYDJ2Q+WgkD3bjvfD6UAr048bzMTHossbr4chImTb3KO8A36b9iACOr0VABYGc7JooMj5cBO+iuDSljls1NP7Jxleyp3J5+VUH4RFJ2w+NXjxvVyRC3J/kXBwJa1WzNdWOUSw5nr3Rn85hdCK8nS8gTCcfiuddGjJDKiwSO5Y8BGNIbfRJ4jncyXIW/GW2qPMAryK0dYkCszpFUMQluJnaGCsLtpgV2ci9MawdS9ZPb7DIq7Rcky+rqy0iZ+7FFotCODvAUfwx6MaYeNqoGAISXLfZ89upeBsKk4HWCP2Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vpxFxDU2of7SQZNngwghUxxa3ayNHAaxiGXH0RQJ7DM=;
 b=hgFnCiK4lERMN8kHG4LOfafDdRJvp82x47vQ2YCNbKYgbgWTbXcKuRWKpnzmzOc2EUChXPJqf2soZyUT/jjHcnHJbnYBu8bN26m7JSMLxkUsZtEHPOuzgDPL9G9WAZ1TN4ePBpRsRoOU+UZ/xV42itlcM0bOAMaproLUV/6cskI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6337.eurprd04.prod.outlook.com (20.179.253.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.28; Thu, 31 Oct 2019 10:01:50 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2387.028; Thu, 31 Oct 2019
 10:01:50 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 0/2] clk: imx: imx7d: move setting clk parent to dts
Thread-Topic: [PATCH 0/2] clk: imx: imx7d: move setting clk parent to dts
Thread-Index: AQHVj9I3Mk/CPT9a/U6/2s1HPBCm4g==
Date: Thu, 31 Oct 2019 10:01:50 +0000
Message-ID: <1572515888-3385-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0118.apcprd03.prod.outlook.com
 (2603:1096:203:b0::34) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a287214d-65b9-4500-c28b-08d75de95944
x-ms-traffictypediagnostic: AM0PR04MB6337:|AM0PR04MB6337:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6337FDA2892A603E38C00C2288630@AM0PR04MB6337.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 02070414A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(346002)(136003)(396003)(376002)(189003)(199004)(2501003)(71190400001)(71200400001)(6436002)(8936002)(2616005)(99286004)(316002)(6636002)(66946007)(476003)(478600001)(50226002)(256004)(14454004)(110136005)(54906003)(4744005)(305945005)(7736002)(2906002)(2201001)(102836004)(44832011)(66446008)(64756008)(66476007)(6486002)(66556008)(486006)(3846002)(66066001)(26005)(386003)(86362001)(52116002)(81166006)(81156014)(186003)(5660300002)(8676002)(25786009)(36756003)(6512007)(4326008)(6116002)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6337;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5XtpqkCysoZlTdC558RoCeZTpot6oSyUp+C972Mzj8rwZXgWMpXZG3ertzMv4hW9CNuD6ePPrY5f/XHbGmBtMSk4avU2d+SVcXXYPR2Ty+SeBX3xQbYmREFFFg1R8xcYFDvieg/7nn4drINWoUJaAM6U9yV5sKsUvM1zKxRrA2xZ7q7ZTJjnZdQRK6VddAgAaiaITUcRkGCXkw1FdD3tSfvAGK+a4GaZo2dKIke6GM0ve3NptZPgE9u86o8x7suAKNa4e24exdK4/ukhOR5vNUjp7HxiozOFONcESp+djEWyPmP4QSaPM8xm07tJemVC0FlQJ/cEZaqOA8DLzjXmpL9ooWdz4hQ1VaM3ngn2irS1NcRuuP5yFD538bbnH/FsTsLLiIOYelV1O3mqi0K2mIbLo/8Iat1KowCknZTepiO/42kKQ1akGPTsnRHAYkCC
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a287214d-65b9-4500-c28b-08d75de95944
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2019 10:01:50.6963 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xtJc1nEkBJxCuHHYI70c45CUNWcU7+4Ji+6EqgMzjzb6Q5H+FvyGbH8mqk2z5FugIH8fWKi5eqCrPzVGuHaZ1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6337
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_030157_036662_EBD694AB 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This patchset is to move the clk_set_parent operation from driver
to dts, because assigned-clock-parents could do the job and we
could simplify the driver then.

Peng Fan (2):
  arm: dts: imx7s: ccm: add assigned-clocks
  clk: imx: imx7d: remove clk_set_parent

 arch/arm/boot/dts/imx7s.dtsi | 20 ++++++++++++++++++++
 drivers/clk/imx/clk-imx7d.c  | 12 ------------
 2 files changed, 20 insertions(+), 12 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
