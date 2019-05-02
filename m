Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC271114B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:06:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T0FJ3DhkuIkPGkBnbSa8g88my0Y38GAWDF0SsPSgMj8=; b=heSx8jxkpc1HsS
	lmUoxIFXi13sukAToFjCWDAPo9PYwj1eSuBjRZgKaBq9rPxg86R0GqrrqZeabY9Gz6phgtYprRwHX
	vvmvw0BWZgN+JXlS/b9B8ZAxpgva+IsfyWK9/X65+2G4a0IluosXuvzUxa3wylq4jclDUSzVxfO3T
	Df/K51jfXU69EPPaqplcaYrIfOAYxZZQRVubtlXR7K2enQNlKYXLp4IJO8f6yIePONb+4Lc5GdB3Q
	ZC2q8k12z2o8bWyruRCPVIx/5YfcD+uu5rSo8ikb8In9gNLNo2mDHlNGAq4tby6AkT39VovySrpLT
	KqGMveFBzMViCoacMwww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6k2-0005LL-Iq; Thu, 02 May 2019 08:06:54 +0000
Received: from mail-eopbgr140089.outbound.protection.outlook.com
 ([40.107.14.89] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6jt-0005KE-Bk
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:06:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7+G2fFdlFEFiJ4IZnh1ZB+CjmaTHkWA3pQf3+2OBMxY=;
 b=pvs4DWpkaDt2w2VcgRni2Y1hNIyTnNZx+9xHjywoQvlmWa4GDBazGtoCT8/lQwv6EZX2frlQ/qorJYe8MMxSJShkDNDyEJ2xWDICJCjAAjxp2JoBWOJRpCcIjqENb7WrNXzIPDIl4NIZ+Wpb8+N6tpZ2bc8Kehzi3i+cRKfY2rM=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4563.eurprd04.prod.outlook.com (52.135.144.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Thu, 2 May 2019 08:06:39 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8%7]) with mapi id 15.20.1856.008; Thu, 2 May 2019
 08:06:39 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <fabio.estevam@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v2 00/18] clk: imx: Switch the imx6 and imx7 to clk_hw based
 API
Thread-Topic: [PATCH v2 00/18] clk: imx: Switch the imx6 and imx7 to clk_hw
 based API
Thread-Index: AQHVAL3494CVXW2TMka+Gnk5oj+AAw==
Date: Thu, 2 May 2019 08:06:39 +0000
Message-ID: <1556784376-7191-1-git-send-email-abel.vesa@nxp.com>
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
x-ms-office365-filtering-correlation-id: e4776059-c9b9-4aaa-3236-08d6ced51aca
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4563; 
x-ms-traffictypediagnostic: AM0PR04MB4563:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB4563576F0F9215BA31DB1BA2F6340@AM0PR04MB4563.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:619;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(376002)(346002)(366004)(199004)(189003)(53936002)(66476007)(66556008)(64756008)(66946007)(73956011)(66446008)(66066001)(6116002)(36756003)(3846002)(305945005)(86362001)(6486002)(81156014)(6512007)(81166006)(25786009)(8676002)(4326008)(6306002)(71200400001)(71190400001)(99286004)(8936002)(14454004)(966005)(50226002)(2616005)(68736007)(478600001)(386003)(2906002)(6506007)(52116002)(316002)(44832011)(54906003)(110136005)(26005)(7736002)(5660300002)(256004)(102836004)(186003)(486006)(476003)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4563;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +TPL3UHN7gJsI7USvMkPT4x17/WxXnsmInWgKz6r3y5GbdEd1qz+3BdL+wV8vLOscLcYlbPeDe6Mbrpa9jFeuqMbRKQ9BkV0NoM/6RN3nhIpe8YYuViitClo1OsynRko2/DLBjna9p44Yd6cvd3O6Yc82X9zZ0ykfuTou4tSBPMvW4Q+0moLvxoYpTiy6UXnCIP5D1sFRq7d++WG8SiJ79Llb8vOxtlExGy4g1PthgJ0EvffZs56Q78h8IU/tVRU3aFm8VVID69KVD3yhpiWNYY5Ft2Dhn1mf26WxOo9YMEpdRElh4OzZLRn1LNy0UTSwEMLKwuE/6+8T8GMVRmLpU8b8hqDPGdf1Nyl77qLjXMrA2X5b7L6OHoOwn/5xL1CU4rOuLlJ1SeRuFzRnAOGq77Q6vVJ/s2wSq3DBtP++ag=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4776059-c9b9-4aaa-3236-08d6ced51aca
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 08:06:39.5786 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4563
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_010645_470247_CA3E5F26 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
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

This is basically a 2nd version for this RFC:

https://lkml.org/lkml/2019/3/22/1772

Changes since v1:
 * Added the reason for this work in each commit message
 * Added clk_hw based initialization for uart_clks in imx6sll driver

Abel Vesa (18):
  clk: imx: Add imx_obtain_fixed_clock clk_hw based variant
  clk: imx6sx: Do not reparent to unregistered IMX6SX_CLK_AXI
  clk: imx6q: Do not reparent uninitialized IMX6QDL_CLK_PERIPH2 clock
  clk: imx: clk-busy: Switch to clk_hw based API
  clk: imx: clk-cpu: Switch to clk_hw based API
  clk: imx: clk-gate2: Switch to clk_hw based API
  clk: imx: clk-pllv3: Switch to clk_hw based API
  clk: imx: clk-pfd: Switch to clk_hw based API
  clk: imx: clk-gate-exclusive: Switch to clk_hw based API
  clk: imx: clk-fixup-div: Switch to clk_hw based API
  clk: imx: clk-fixup-mux: Switch to clk_hw based API
  clk: imx: Switch wrappers to clk_hw based API
  clk: imx6q: Switch to clk_hw based API
  clk: imx6sl: Switch to clk_hw based API
  clk: imx6sx: Switch to clk_hw based API
  clk: imx6ul: Switch to clk_hw based API
  clk: imx7d: Switch to clk_hw based API
  clk: imx6sll: Switch to clk_hw based API

 drivers/clk/imx/clk-busy.c           |  30 +-
 drivers/clk/imx/clk-cpu.c            |  14 +-
 drivers/clk/imx/clk-fixup-div.c      |  15 +-
 drivers/clk/imx/clk-fixup-mux.c      |  15 +-
 drivers/clk/imx/clk-gate-exclusive.c |  17 +-
 drivers/clk/imx/clk-gate2.c          |  14 +-
 drivers/clk/imx/clk-imx6q.c          | 767 ++++++++++++++-------------
 drivers/clk/imx/clk-imx6sl.c         | 404 +++++++-------
 drivers/clk/imx/clk-imx6sll.c        | 430 +++++++--------
 drivers/clk/imx/clk-imx6sx.c         | 656 +++++++++++------------
 drivers/clk/imx/clk-imx6ul.c         | 574 ++++++++++----------
 drivers/clk/imx/clk-imx7d.c          | 983 ++++++++++++++++++-----------------
 drivers/clk/imx/clk-pfd.c            |  14 +-
 drivers/clk/imx/clk-pllv3.c          |  14 +-
 drivers/clk/imx/clk.c                |  11 +
 drivers/clk/imx/clk.h                | 142 +++--
 16 files changed, 2151 insertions(+), 1949 deletions(-)

-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
