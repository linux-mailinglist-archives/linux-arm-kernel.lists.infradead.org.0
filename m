Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0753232B4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 11:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5x72XzrPI4Om4DTuGSWXe/+g4vE5fcAxX+Su0EkcKQ=; b=LfyzmcBI9sKVJb
	RGvA/Co6bCDkbfN+Vn/atS3PlzqGwWj5A+7Ecp7S1swMxXRyfGk+HpfHhKnEVR+QrksFSJruwWozJ
	SQyZyMZKTbAzGUYKb2z8ZkPak4WJeGdWEItbWlpWP36T6cmcrLrJL4+PfcAlYBKR3fkKGIf/mpikP
	bxu6wuJBTZI95iK1XDhuXwK44kp4FCc39g+9m3nfrGO25ecAASAqfI9ObkUo4pXrDcnNfCIfnUq2h
	WY33nEkMVA+nbFRvXXa9xZNQ0mQ+qGAlAjXQM91zmZY0T4c/vQZvtWyPZVW8uCh3KR/wb5EnbU8N4
	Vi9+qP5U+k6TgkiVdPzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXiqf-0003gy-AE; Mon, 03 Jun 2019 09:01:45 +0000
Received: from mail-eopbgr70058.outbound.protection.outlook.com ([40.107.7.58]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXiqY-0003gI-AN
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 09:01:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b4lMmQ5IOK3yFjAuwD9kRjqaVsV4ogoUCOJJcal1oQs=;
 b=BftrIDswrGVoc03wgZKhzpNukQuzzcua6n/36RfuRee6n/o3Cd94dsM2spDoEu9DlWESHyx5Npw/iTP6gL/+YsFERNAVDdY0uaxlgVXOw3WMU/811I8ZUGaZZQuCISngUbjMlv/ltzhftbK9nJ8IM6VMEvuwLQ9oLTKjCD2gKec=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3818.eurprd04.prod.outlook.com (52.134.71.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Mon, 3 Jun 2019 09:01:33 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 09:01:33 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "maxime.ripard@bootlin.com"
 <maxime.ripard@bootlin.com>, "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>, "enric.balletbo@collabora.com"
 <enric.balletbo@collabora.com>, Aisheng Dong <aisheng.dong@nxp.com>, Jacky
 Bai <ping.bai@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V2 2/3] clk: imx: Add support for i.MX8MN clock driver
Thread-Topic: [PATCH V2 2/3] clk: imx: Add support for i.MX8MN clock driver
Thread-Index: AQHVGaxeLRS7zF6kSEqSfwNQzT+zYKaJonPw
Date: Mon, 3 Jun 2019 09:01:33 +0000
Message-ID: <DB3PR0402MB39162498C890AB92D9722595F5140@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190603013503.40626-1-Anson.Huang@nxp.com>
 <20190603013503.40626-2-Anson.Huang@nxp.com>
 <VI1PR04MB5055D6EB38E84E370E881425EE140@VI1PR04MB5055.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB5055D6EB38E84E370E881425EE140@VI1PR04MB5055.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2e689b54-883d-4a3d-7660-08d6e8021383
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3818; 
x-ms-traffictypediagnostic: DB3PR0402MB3818:
x-microsoft-antispam-prvs: <DB3PR0402MB3818825C7C401FA173C5A1E3F5140@DB3PR0402MB3818.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:113;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(346002)(366004)(396003)(39860400002)(189003)(199004)(13464003)(53546011)(478600001)(8936002)(76176011)(316002)(229853002)(8676002)(25786009)(6506007)(7736002)(81166006)(71190400001)(81156014)(305945005)(256004)(11346002)(44832011)(102836004)(86362001)(74316002)(71200400001)(6436002)(476003)(2201001)(446003)(7416002)(33656002)(486006)(68736007)(53936002)(6246003)(55016002)(2501003)(5660300002)(9686003)(52536014)(14454004)(2906002)(66066001)(110136005)(26005)(7696005)(6116002)(99286004)(73956011)(64756008)(3846002)(66946007)(186003)(76116006)(66446008)(4326008)(66556008)(66476007)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3818;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5EhKgCqbkxVJFWFHUW+do0fx6ehLjMR/AbhN23eUHbXTy84CLYqgVUjxoJNQsSq2RldPHN2YUuRN/1o99abBS8fn++Dq4uBR9PiUhOFG8rUNNFNtdID0SxQbKeZQed23gG6SvxT1ZSaTBSXy9W3asUo7AtM4MoKUCLUGeAjkQ94WpLlnNknsdU0fz+cgeJZ80s1f/nM/P2VCyKHGzCCt5fHwSsEYocIN6ch8hWdjN7mgwNVZukwmE5oKSbscTgbQm+ZoDhiIj6R3cVSzYgot7DO54z5hMwy0JDU8nwgp6G6isJ0wzn5EojnGh+Vj9+83gfSO5d9qsRk0xPbxcumGevUB7wKjHVSBprhjHuWG9QmH7kNJ417LpVwAIygXEg5Mo6/t423TlLuJcvABXaVz6BiI/no3KMK2MIc2emrDoSc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e689b54-883d-4a3d-7660-08d6e8021383
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 09:01:33.3075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3818
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_020138_361312_BCB03840 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.58 listed in list.dnswl.org]
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



> -----Original Message-----
> From: Leonard Crestez
> Sent: Monday, June 3, 2019 4:45 PM
> To: Anson Huang <anson.huang@nxp.com>; mturquette@baylibre.com;
> sboyd@kernel.org; robh+dt@kernel.org; mark.rutland@arm.com;
> shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de;
> festevam@gmail.com; catalin.marinas@arm.com; will.deacon@arm.com;
> maxime.ripard@bootlin.com; olof@lixom.net; horms+renesas@verge.net.au;
> jagan@amarulasolutions.com; bjorn.andersson@linaro.org;
> dinguyen@kernel.org; enric.balletbo@collabora.com; Aisheng Dong
> <aisheng.dong@nxp.com>; Jacky Bai <ping.bai@nxp.com>; Abel Vesa
> <abel.vesa@nxp.com>; l.stach@pengutronix.de; linux-clk@vger.kernel.org;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH V2 2/3] clk: imx: Add support for i.MX8MN clock driver
> 
> On 6/3/2019 4:33 AM, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > This patch adds i.MX8MN clock driver support.
> 
> > +#include "clk.h"
> > +
> > +#define PLL_1416X_RATE(_rate, _m, _p, _s)		\
> > +	{						\
> > +		.rate	=	(_rate),		\
> > +		.mdiv	=	(_m),			\
> > +		.pdiv	=	(_p),			\
> > +		.sdiv	=	(_s),			\
> > +	}
> > +
> > +#define PLL_1443X_RATE(_rate, _m, _p, _s, _k)		\
> > +	{						\
> > +		.rate	=	(_rate),		\
> > +		.mdiv	=	(_m),			\
> > +		.pdiv	=	(_p),			\
> > +		.sdiv	=	(_s),			\
> > +		.kdiv	=	(_k),			\
> > +	}
> 
> These macros are shared with clk-imx8mm (and perhaps some future chips)
> so they should be moved to driver/clk/imx/clk.h

OK, will move them into clk.h in V3.

Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
