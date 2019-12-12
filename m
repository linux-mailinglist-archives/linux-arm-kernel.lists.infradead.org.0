Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD7011C3A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 03:59:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o3/BClbtJs0PenpvvRgsNi9G9i5J8lVfqfktk0DoAUQ=; b=ad1LT2wlUdMEGS
	b7K6JmBqLGM/qG5vEgxTS+6anSPztLtiOeFekxJMbLSb1u7edmZxTO0/WgNOTPwLA2EPHdxCTyBG+
	tFfnTZlzKY6Yd0uhFN6xEViAm7sINybhtU1GkB9ad1ajF7ZwdD7QM3pST5MOiOnorfFNhkJTdTIDK
	g1d0msg1mhdS2bqWK8Ram0BCqFCS4x+Yv5sP/CqVnFpkBzf5vfVV93B/aOMPP44k5ZaF8SwR+D8ht
	arhjxfeEPihyARH173fDzjRSbxSzepYS3589KetWbprxqISfi65uq0KoZuqcWtt5pVdpkh+CISVu0
	XCbJ1D8qmF0OPG7uVENA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifEgv-0001AF-Ur; Thu, 12 Dec 2019 02:59:01 +0000
Received: from mail-eopbgr30083.outbound.protection.outlook.com ([40.107.3.83]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifEgg-00018W-F6
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 02:58:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cUMMHYMKuk6H++TE2++I66yJ9yuYzDe8LYQzqGWG/JRkHTsbif9IEHP/2RNzu+P/C3Z8Bz/2Nx33/XQt2q3lrieMfDhWXtLbTe9awjTmATANvXpYjXobC7Pi5jVfDWKoM5hv+vhjhjEcCVbEQ22VkkP900km5TrMdzwZ5uUPZ2zl7bOUt+KnfHLLscPpmIvBNpKEiX1memU8z1IoX2NISDhYA0m9uKa9yga9/Hnzv5Oj8HsYO2yJMZIyexwbymbLJEmRVR518rtW89kW7SBnjjtSrGlHauDTs4Rger2RY2+mDGWQTpXy2YVdeKXWmiKCP2ls3ASmoi4E2j9ohN+1eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7H80ueDAI1BZaVY7PtEth1+meRWE6eRsxYMoFkbRFGk=;
 b=Q/6oG4qohYvFhNioJ0YuyxH+fQOgJ+P4o9ORgJKpGYqzoEnGou2l50gdsDCrC4OQXgSOFfiRA6oiZ1gEji1ICDTOG6Pgy/2AHfelgiM3dBpw6iuyAVJ+fn8wyH/jU2P8b38+kpGmSYh1un6yLkuV1Ldf0G0TmodwI7RSuCD89VdHLHS6jpZNjv3/uJO3+1dzQg0JbFVZFEPA3+OIYiObZCgwPAYDv1jwdpRWITOMaFXKOtd/ulUcyq3fV4ZNbPR2AvTokVpHvlFhnH+oCsp8zY4tVVE2t/oAPYpXewNrkACjobtBoypkSvVJY/9GBhxJL1nGeBB4A7E+B5uPHwPzYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7H80ueDAI1BZaVY7PtEth1+meRWE6eRsxYMoFkbRFGk=;
 b=exAsROwNX/NesGwjaO6VCJc2V+PtrnPglurNKXQcz8e9aVCDa1w6OTifZIxJechIQ+oo4574RRxqRVO0AO6zANqZGIZm+uCq7q6oJjYfXnAb+KC+BLRTo7colRMW4Pc4wMgR7VWe7Hs/na+blzoDs6KVpNR/ylCjAY4AwHLNEf8=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6369.eurprd04.prod.outlook.com (20.179.252.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.14; Thu, 12 Dec 2019 02:58:38 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29%7]) with mapi id 15.20.2538.017; Thu, 12 Dec 2019
 02:58:38 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH V2 0/9] clk: imx8m: switch to clk_hw based API
Thread-Topic: [PATCH V2 0/9] clk: imx8m: switch to clk_hw based API
Thread-Index: AQHVsJgNGbvwO6VVu0SKbjsMmkP7iw==
Date: Thu, 12 Dec 2019 02:58:38 +0000
Message-ID: <1576119353-26679-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0022.apcprd04.prod.outlook.com
 (2603:1096:202:2::32) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: aae20718-2039-48d5-26b8-08d77eaf2f71
x-ms-traffictypediagnostic: AM0PR04MB6369:|AM0PR04MB6369:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6369EA324F1B4BBAEE57663D88550@AM0PR04MB6369.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(396003)(366004)(136003)(199004)(189003)(6512007)(71200400001)(44832011)(4326008)(2906002)(6636002)(26005)(186003)(478600001)(6486002)(966005)(5660300002)(2616005)(86362001)(8936002)(36756003)(110136005)(316002)(8676002)(6506007)(66476007)(66556008)(64756008)(66946007)(66446008)(81156014)(54906003)(52116002)(81166006)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6369;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KvnnWTtXq+eRCabnFgCLVrAWyFlIrkKma1aqy98fwC2AMVfUjmU41Fvt6thaRaMO6WzWEO/5H7heDEE4lkHJOaeMJ3GJKf/aA3zFzt3iruYId9UNP5GtQxrYLqr+OCzXLnCIsvKlRR/6ruHva1xyZ06E4ZZ12juDBAiArim2qia67YHvnTqGVV1s9WFNcIA9KVWjJvsUZe3obFik/BS2NslHweoQi4kSlf7ekVaDkCaDh5CSsMzp/YM88XkPtELPN5aHeMqF52FEA4KiBcz8BV4DVE1ujICBadoMbRgeBtivW+xVFfZaHz9gwkhk7tBtLb1pbLBluq7aezK6wvWCAOqnuhMe+KfFFE3TB9tLwTylZ5EDWMNMG4uCTN3qTgLDyS1N6uAypeFs1L6pU0cBL1qninmooiidSrCim4KzehXVD0KXqeTc8dU+s+BB2r+7E6DEKnjGvIsk2ZIefv50xNIpwTrQSsHYMkfMY0I5nuv9vZRjtZLS9yh9Fy/zooKpx6vgfu033R3MHjeOXB8aVw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aae20718-2039-48d5-26b8-08d77eaf2f71
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 02:58:38.0773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K0jyZjvJg4qRqlw/llt6Xy/oO24ohPrvez2HeR6DbzHSsnqJw6kou0qppVO9KGwdRb4hh5fqvb6IAcK79Oqe4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6369
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_185846_508707_3D9918A5 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

This covers v1 https://patchwork.kernel.org/cover/11217881/ and
v3 https://patchwork.kernel.org/cover/11251585/

V2:
Per Leonard's comments, use to_clk helpers
Add Abel's R-b tag
Rebased on Shawn's next branch

This patchset is to convert i.MX8M clk driver to clk_hw based API,
and add clk_hw helpers that will be used by i.MX8M clk driver.

Peng Fan (9):
  clk: imx: clk-pll14xx: Switch to clk_hw based API
  clk: imx: clk-composite-8m: Switch to clk_hw based API
  clk: imx: add imx_unregister_hw_clocks
  clk: imx: add hw API imx_clk_hw_mux2_flags
  clk: imx: gate3: Switch to clk_hw based API
  clk: imx: Remove __init for imx_obtain_fixed_clk_hw() API
  clk: imx: imx8mn: Switch to clk_hw based API
  clk: imx: imx8mm: Switch to clk_hw based API
  clk: imx: imx8mq: Switch to clk_hw based API

 drivers/clk/imx/clk-composite-8m.c |   4 +-
 drivers/clk/imx/clk-imx8mm.c       | 555 +++++++++++++++++------------------
 drivers/clk/imx/clk-imx8mn.c       | 489 ++++++++++++++++---------------
 drivers/clk/imx/clk-imx8mq.c       | 573 +++++++++++++++++++------------------
 drivers/clk/imx/clk-pll14xx.c      |  22 +-
 drivers/clk/imx/clk.c              |  12 +-
 drivers/clk/imx/clk.h              |  52 +++-
 7 files changed, 896 insertions(+), 811 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
