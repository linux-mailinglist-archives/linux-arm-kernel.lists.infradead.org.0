Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FBA2DCBF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:26:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PNzZkzyxotkTFvvd3LEC1P8EcrJBgn+VBAU0/kolVMk=; b=sqz3dloQtl+3FG
	BF7SGYtHd6WBhHMNoc5aImMa9454v+T3ggAFaPT+ITCNyujJxxBPWRUFFWuvbOFIXlJVLhgcqnoG1
	Xnm3eX5wp/ZcBS+FqtSWQ5KUuTf+oywcFVjDvvMMD6n1BKyPl96P754N9GGgA/38/J2SUzp2IljMS
	fpArsgjF+sSf20AOVmvPx5HRxcXNjMYSTH8h+QXLd9HvFvjgq9pLgzaFzL2vtmX62qAp5SbAsRVhj
	zR0HyNFkyYPcnndeiZ+MUmeUUQong2XovcmVueKVDGCRG8XOvVHA3la/fryB6/I0weq0YEK3CQzsw
	KxjYxu8nLJDt/M6yp5tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVxfQ-0004M2-Ow; Wed, 29 May 2019 12:26:52 +0000
Received: from mail-am5eur03on0604.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::604]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxfJ-0004JY-0O
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 12:26:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DEm8vd9qbgi3G+kfZFeysPFqBpQPa5ugi6q1nbqYcc8=;
 b=T6C7rqkB0r7z4I2fJkPFxvcQUwCplk3W2DY2lmv91LnWb3vE1E8wFS91PK4edczSrHYJb0WeAHHlXMMtsjMSQq7ev5Kqhg9a70SGODJWzNBB83ZmVxbq1qkEmaVFLI/li+JS5o5Blj/viz36EKDfUcgLt5nxtgdU+cd9fP6V/UU=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB6049.eurprd04.prod.outlook.com (20.179.32.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.17; Wed, 29 May 2019 12:26:39 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8%7]) with mapi id 15.20.1922.021; Wed, 29 May 2019
 12:26:39 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>
Subject: [RESEND v2 00/18] clk: imx: Switch the imx6 and imx7 to clk_hw based
 API
Thread-Topic: [RESEND v2 00/18] clk: imx: Switch the imx6 and imx7 to clk_hw
 based API
Thread-Index: AQHVFhnD3RH0i/2Cgk+sGoC+IpMb+g==
Date: Wed, 29 May 2019 12:26:38 +0000
Message-ID: <1559132773-12884-1-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a3b61161-3443-419e-d6a9-08d6e430e62c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6049; 
x-ms-traffictypediagnostic: AM0PR04MB6049:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB6049D7ADC92066999155BD4EF61F0@AM0PR04MB6049.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0052308DC6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(199004)(189003)(6436002)(476003)(73956011)(53936002)(486006)(76116006)(186003)(5660300002)(102836004)(66446008)(66476007)(66946007)(26005)(44832011)(64756008)(36756003)(91956017)(66556008)(8936002)(966005)(2616005)(66066001)(99286004)(256004)(6116002)(6512007)(498600001)(3846002)(6306002)(68736007)(305945005)(81156014)(81166006)(6486002)(6506007)(54906003)(110136005)(2906002)(7736002)(8676002)(14454004)(86362001)(71190400001)(71200400001)(25786009)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6049;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: C5P12dYUaQXQkWvxkwqWYLRx8Hpg/f5tHM1t8iKtU2yz2pmY+ly08AiIca7D582oOPOlSrZXgeGvGdMJL1qTTj8OjSDllVIzBmnk5wZETrYfo5WzDma6RevvHWSsAX3VodNHYmRBO87VetsuGd2V0nuuL1sax5k2E39vR8AKt1p0i3u4YiNmdQtBU8NzeTiQ9VxRXUqZUtPhwYtA3/tWq8NSRXV2KQLqgFOPtodLPZyTm7abr6JnTjJap41mU04Qs/URXLiHO9yzIgSKsB0/TDlIoN1yswT4o5WlHOsuyi6tCNmjyUFiSdvU/lre3Eh/Y67+XQgcVFP+5oYq1SGVls+whslqgq8pNMtOtc1NKLEVqytQGdRnBG7mNbyI7s+P8CeleqXJwwplsDH8CLOAuOdZZI2EeOZWiJKlG5L9Ebk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3b61161-3443-419e-d6a9-08d6e430e62c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2019 12:26:38.9925 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abel.vesa@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_052645_071828_C8C94BB3 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:604 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Resend for the following:

https://lkml.org/lkml/2019/5/2/170

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
