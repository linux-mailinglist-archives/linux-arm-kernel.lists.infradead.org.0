Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF6D38250
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 02:50:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgPEcGkQ0tOt/vCUyTCD9HIYmpj2om26jUQXvE/igmw=; b=SXwRwCpy4I6WHQ
	Fj61eyGwvTMCuIqsbSDiuj1BTusS+o8jomvcDr2RdDpa3KHRI/X5aE7fYklK/W+HFvm3bA1ywHpBR
	GQc5ma3dlApBnoWeh0EXPyu3/8Z6nZVvqjjlRdWilZAL3Q+wyRDDpQ7/8IeuzjLKeIXpULazzIwbV
	7fw06ONHb2zyCRokHoZyoSGCR2AT3/rzEIpuQ4kL+2sogAJiVogXD4IwJO620tb5vuqttUcOHjWva
	GiOMfiXuksx64SiTNaFvy23DRTc9GfYhNTeXz5UfVy78fudicAeHBfFtPde/MHzFy2oxDCZw2WO0a
	JZ+sQyV4nwJvbE+hlpPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ35l-0004rr-Di; Fri, 07 Jun 2019 00:50:49 +0000
Received: from mail-ve1eur01on0628.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::628]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ35V-0004qt-41
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 00:50:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=omlK5zp6dte7Oei0z9VufJ8JyT98rq2g0ReYCmbi7lk=;
 b=KWjBTHo0WahuAJC3VyuE6q4sk1KWwc0SyjOPE1POlXzgpoUKHu/cbMQ2+V651NJNXAyy+gPe+GMjoYf+cKDwV+L3+Qiss9wqH97iQM3dEpnmJt1tWrPhDpcvJ/aOXc69t/IBU17t9qkBV+BSml0xoG5Uo8DmotZ7XebXte+KPEY=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3945.eurprd04.prod.outlook.com (52.134.65.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Fri, 7 Jun 2019 00:50:28 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1965.011; Fri, 7 Jun 2019
 00:50:28 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Abel Vesa <abel.vesa@nxp.com>, Aisheng
 Dong <aisheng.dong@nxp.com>, "bjorn.andersson@linaro.org"
 <bjorn.andersson@linaro.org>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "horms+renesas@verge.net.au"
 <horms+renesas@verge.net.au>, "jagan@amarulasolutions.com"
 <jagan@amarulasolutions.com>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "maxime.ripard@bootlin.com"
 <maxime.ripard@bootlin.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "olof@lixom.net" <olof@lixom.net>, Jacky Bai
 <ping.bai@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "will.deacon@arm.com" <will.deacon@arm.com>
Subject: RE: [PATCH V3 3/4] clk: imx: Add support for i.MX8MN clock driver
Thread-Topic: [PATCH V3 3/4] clk: imx: Add support for i.MX8MN clock driver
Thread-Index: AQHVGnjztvJ1Vzt1002Z3uISz7VXoaaO1AeAgACJypA=
Date: Fri, 7 Jun 2019 00:50:28 +0000
Message-ID: <DB3PR0402MB391625A0B3D838CE88C53E33F5100@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190604015928.23157-1-Anson.Huang@nxp.com>
 <20190604015928.23157-3-Anson.Huang@nxp.com>
 <20190606162543.EFFB820645@mail.kernel.org>
In-Reply-To: <20190606162543.EFFB820645@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9173b80e-6a46-4f9b-709d-08d6eae22291
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3945; 
x-ms-traffictypediagnostic: DB3PR0402MB3945:
x-microsoft-antispam-prvs: <DB3PR0402MB39454AB65C2C49A6B30E8039F5100@DB3PR0402MB3945.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:800;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(396003)(366004)(136003)(13464003)(199004)(189003)(8936002)(2906002)(5660300002)(229853002)(7696005)(86362001)(256004)(2201001)(11346002)(6116002)(3846002)(102836004)(76176011)(71200400001)(71190400001)(4326008)(53546011)(6506007)(486006)(53936002)(6246003)(44832011)(25786009)(81166006)(476003)(52536014)(186003)(99286004)(478600001)(26005)(7416002)(316002)(6436002)(2501003)(55016002)(446003)(110136005)(73956011)(76116006)(66446008)(66476007)(64756008)(66946007)(305945005)(68736007)(7736002)(9686003)(14454004)(66556008)(66066001)(74316002)(81156014)(8676002)(33656002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3945;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QO4bP6Iq/Njk+vWalW4qdQP6DFm2Qk6UNIvgqAcGhTuWcVHtL9rImRuS/Vg7ijwcXl8x0iWAZ3sZ6i4qKy3oJlR7aDhMxEdx8/+lj8dwOVQh6c7Y/O99MZt//rCBAH1bYQF9yOPP+IOMJC6gmreTJJ6J6v4DH+xzNOf119HPUUx9A7omu/gp+YiSvqLhEwsEi79/mI6TXDGj3bW7vl75WWTe+maYNjJ0uL3y30hE1iKj7KZQbQmPAE4234b6L3U/kjIuP34UO4qQLLF+jqHflS2ewjBy6YGsU95gdx4X4/cGM8y5NqA4GlehQCzx2Ks7fmgYT4YWgRGwcwpjmxf97rhkQvvurnrNl6LDZq5/FapHCFH60byOvJy9FDq8vPd85gImMdb8JmNDvw+HIwSD20noqcMWh7g7A0d87M6W6ec=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9173b80e-6a46-4f9b-709d-08d6eae22291
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 00:50:28.1210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3945
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_175033_269906_4CCBB458 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:628 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Stephen

> -----Original Message-----
> From: Stephen Boyd <sboyd@kernel.org>
> Sent: Friday, June 7, 2019 12:26 AM
> To: Anson Huang <anson.huang@nxp.com>; Abel Vesa
> <abel.vesa@nxp.com>; Aisheng Dong <aisheng.dong@nxp.com>;
> bjorn.andersson@linaro.org; catalin.marinas@arm.com;
> devicetree@vger.kernel.org; dinguyen@kernel.org;
> enric.balletbo@collabora.com; festevam@gmail.com;
> horms+renesas@verge.net.au; jagan@amarulasolutions.com;
> kernel@pengutronix.de; l.stach@pengutronix.de; Leonard Crestez
> <leonard.crestez@nxp.com>; linux-arm-kernel@lists.infradead.org; linux-
> clk@vger.kernel.org; linux-kernel@vger.kernel.org; mark.rutland@arm.com;
> maxime.ripard@bootlin.com; mturquette@baylibre.com; olof@lixom.net;
> Jacky Bai <ping.bai@nxp.com>; robh+dt@kernel.org;
> s.hauer@pengutronix.de; shawnguo@kernel.org; will.deacon@arm.com
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH V3 3/4] clk: imx: Add support for i.MX8MN clock driver
> 
> Quoting Anson.Huang@nxp.com (2019-06-03 18:59:27)
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > This patch adds i.MX8MN clock driver support.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V2:
> >         - use platform driver model for this clock driver;
> 
> Can you also use platform device APIs like platform_*(),
> devm_ioremap_resource() and devmified clk registration?

I will use devm_platform_ioremap_resource() instead of ioremap(),
and can you be more specific about devmified clk registration?

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
