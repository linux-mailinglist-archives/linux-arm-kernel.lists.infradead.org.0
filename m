Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EE3B4757
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 08:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vWG4zEphqg8NsQbr6/AeY2a+l7rjPduKh67QuxGF9B4=; b=KX4/fUub5z8yDI
	6PKTzWN7x/czRJFwTiYl/JolnLTwJSPXRScSwV8nL71QWHjnk7NhkbqS8Gl1PeIOMFyJ7M/JsvD9D
	pjUkV0nxc/3nUg4kfGvAT3Nu4whTl54zUG1GogVgZEFjqTHYI9dNKahm/Cjjs13pwrxHcqqt4nY1A
	zxSMLRI47bW1W/G8unhKt89XC1uO8bvabIvdn0ULxySZLXwL+u61A2QGViEAKBjJ7DIflyzzHEs0i
	pnINlDHV1g9o/ysMEF5MdihtAT4O8X1Y02A1sePHmmgTIlr8Id2c+tyjzzp8T0GUWgu23PnalG+Qy
	C59jIQ66YpQT/zPCc+Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA6qv-0007aW-SJ; Tue, 17 Sep 2019 06:20:42 +0000
Received: from mail-eopbgr10063.outbound.protection.outlook.com ([40.107.1.63]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA6qZ-0007Zt-R6
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 06:20:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QFlKk6zPYrRXhd6BBsWPXpSkgn1S0Yp3OKVaRjmJbCS/T+ka86Abr3hcN/uYRSq7yLsVPC6kRbeCjK3dlo9pXQcD73mqnVraKN/Bo62dqEKDBFL2DrwgCiz5mxMsJsEDEvRmFbcla1bKOInGD4aZPCrc9FXA7z/eec2s4sIBNiuB53erWQmSPVPHiBTf+V3/p7Q7XtzfGq8nPWWG92uiwbY/kyO/AdMaeZqBDBI+aWrd3VbPLAubNYieeSd99EhTRinFmmntkNSpDvWLt+8IdngRiecqdSgspiaggaohRP0TMNRBwXXbPPneSfI8rXDAVXQd7HLZxH3/v26S/dA1Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xORgEn138aClpnkqf63ja5Qc6KTgERbYVZWyXxe/xcc=;
 b=Tqkb3MVEMtr47yGubd4rvStaegThN/3Gj95aHogZcJfIgDJxyuBEVRtcKbYLM4iw7wAbvDPSi/kZKrPiRx2Yz/xl3Ft53EbhhvHsDXBN3x2LL0UMv7xH7sWRSLFbvBc1roAzIQ9SAkdkhQZcPq9lMboITGKfDmm3qOfz2E274jTFmgYU7BaPQVgUakyZVyDBWik3DLWMiIpMW9wTxiruKHEa1jxg4/5mHS2Cnexb+z6JTOxUS6YhVvWj43v3LFKOus0KqIGXlWpToktvRw2sTRWchyQt+8znHSVKVrN4Xw4powyttnkvqJSmNQ2i6fMGMpLyGdu3JQnN9KDFgccgOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xORgEn138aClpnkqf63ja5Qc6KTgERbYVZWyXxe/xcc=;
 b=XcwM0eu06/g1gTRWfrlDU3AR+lQXE87Q2fR0Wo00pUAEubNtYApnTQHIhbx1l7eWTr1vq6ECHNxVQOWy+YFrMSQ2a3F/FQaf00u+EC7JdP1n5fAyN6uoZV20D7qVcQK08os8qbcOIy244ciIoLATwAD/RZPkHkS3QJFrbC5qaNs=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6370.eurprd04.prod.outlook.com (20.179.252.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.26; Tue, 17 Sep 2019 06:20:15 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2263.023; Tue, 17 Sep 2019
 06:20:15 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: RE: [PATCH V3 0/4] clk: imx8m: fix glitch/mux
Thread-Topic: [PATCH V3 0/4] clk: imx8m: fix glitch/mux
Thread-Index: AQHVZsAvxNHrETdja06leIJqZC3kHacvcZcw
Date: Tue, 17 Sep 2019 06:20:15 +0000
Message-ID: <AM0PR04MB4481A31DD68C3C3409E95339888F0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1568043491-20680-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1568043491-20680-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63dcc41c-1861-4a0a-95bd-08d73b371abe
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR04MB6370; 
x-ms-traffictypediagnostic: AM0PR04MB6370:|AM0PR04MB6370:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6370362DA2EBCD2AB9E1D188888F0@AM0PR04MB6370.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01630974C0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(346002)(376002)(39860400002)(396003)(199004)(189003)(26005)(52536014)(44832011)(54906003)(6436002)(110136005)(305945005)(2201001)(74316002)(66446008)(33656002)(66476007)(66556008)(55016002)(76116006)(229853002)(66946007)(6246003)(2906002)(7736002)(486006)(71200400001)(71190400001)(66066001)(2501003)(478600001)(25786009)(186003)(14454004)(102836004)(64756008)(316002)(9686003)(6506007)(5660300002)(446003)(476003)(99286004)(11346002)(6116002)(256004)(86362001)(81156014)(76176011)(81166006)(8676002)(3846002)(8936002)(7696005)(4326008)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6370;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YJ+ZAHlQpDlZXTD1/T/vguVQO9yzjXXxb3pGPNaX8FPQI96MxtWv81lU6S6TLY9f6wnTZGHsT4vpQn4uwka0VjaHA+zIrJ6/vUjF9vc5Q703OFE/RLb5S732ek2KN0A/gWoKTlfI+KFm/tHGG29ofDFHu6xycwMi2lagWl0dR9RviXDPtf47eZf/UIRsOOyRcFLs275tyI2fWSBTtRsL2Yc4UZiDPifpA1UluIjpyv5CimoOCxl5Lpmh/GqdcntJtyvOho6mYSIuBd44ryZ3/JJuYjgpJrKRRrGbHg8Ff8lJM0La0/TKoW1bAm6En60FABOZsBK6h+KPD9wC8a5TG48nL3+IL45fY2LYBRHhcpxxmXCnpBAMzG+v6yW+aLhtq5c5wy3HFta0kFY4hTCDBc7Wh/MOqCmMz4riP9zGDug=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63dcc41c-1861-4a0a-95bd-08d73b371abe
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 06:20:15.3132 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sa9KdMtqb46GsAqgFZhroEcPenh9Cxu9h0ZXFa7Hsfcp+8AgPygEC6wmr2OTikqjdeW1e60d6MoAaa3AL36qYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6370
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_232020_021762_5F1476B2 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.63 listed in list.dnswl.org]
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen, Shawn,

> Subject: [PATCH V3 0/4] clk: imx8m: fix glitch/mux

Sorry to ping early. Is there a chance to land this patchset in 5.3 release?

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> V3:
>  Add cover-letter
> 
> V2:
>  Added patch [2,3,4]/4 and avoid glitch when prepare
> 
> There is two bypass bit in the pll, BYPASS and EXT_BYPASS.
> There is also a restriction that to avoid glitch, need set BYPASS bit when
> RESETB changed from 0 to 1, otherwise there will be glitch.
> 
> However the BYPASS bit is also used as mux bit in imx8mm/imx8mn clk driver.
> 
> This means two paths touch the same bit which is wrong. So switch to use
> EXT_BYPASS bit as the mux.
> 
> Peng Fan (4):
>   clk: imx: pll14xx: avoid glitch when set rate
>   clk: imx: clk-pll14xx: unbypass PLL by default
>   clk: imx: imx8mm: fix pll mux bit
>   clk: imx: imx8mn: fix pll mux bit
> 
>  drivers/clk/imx/clk-imx8mm.c  | 32 ++++++++++----------------------
> drivers/clk/imx/clk-imx8mn.c  | 32 ++++++++++----------------------
> drivers/clk/imx/clk-pll14xx.c | 27 ++++++++++++++++++++++++++-
>  3 files changed, 46 insertions(+), 45 deletions(-)
> 
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
