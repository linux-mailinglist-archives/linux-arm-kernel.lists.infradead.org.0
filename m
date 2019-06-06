Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E90E336911
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 03:14:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNlPPty38wKEK/9x/Wy49I73MwPgU44ArYcy+fES53c=; b=b0ku2KAe2i7YFm
	prm/TD5iuePoPYgS9sYxfzcomfWUMDb1o8nBh36elAttB1aaFUgwoHwuQQJRX9T3+ogGyMm52XJT9
	XOJx06MJzhqBSanp2XtadOM0no1P/RiezLGPqsEYm8a1X7WkleO7YvW+MqcloVhK5bdcFhDZlQiE7
	e0Q5kPtDt/3FJmYaDTTeS1agi8e8CaFil6w4onYkhvvpNTQTpqlPfie1OfXgDUAw3u/wNltSf67G2
	ZGgaq/p5Nb8LsKW1gZw7YRCt62zVZTBTpbrC+/O+SeR7H7HWi6UhlmSRh+aWgrSSoxxPyhfTO5wi3
	Vmdr01YqXIuUQCzF6Ntg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYgzT-000655-K0; Thu, 06 Jun 2019 01:14:51 +0000
Received: from mail-eopbgr50050.outbound.protection.outlook.com ([40.107.5.50]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYgzL-00064H-RI
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 01:14:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K7SEToEJJk2tohfv8HDvE6EhVhuGjgXvv5ERpyz5nAY=;
 b=KJVONeQVlSf24n6pHrvHIt1EAsRLzi0mJvKUEBRIHLzlHFljbmNpokh6XW8ShlQUnEWjMC/Ilcob19IGptF5Zq7bbc+sHc9l8sFjj7lz38hgLxU3/ES+vcyMhRuEHV1GINYFzuHXqkbTLcmhB+AP9XEuI6Uh59LQ7M/BSyMVHJ8=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3756.eurprd04.prod.outlook.com (52.134.73.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Thu, 6 Jun 2019 01:14:33 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1965.011; Thu, 6 Jun 2019
 01:14:33 +0000
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
Subject: RE: [PATCH V3 1/4] dt-bindings: imx: Add clock binding doc for i.MX8MN
Thread-Topic: [PATCH V3 1/4] dt-bindings: imx: Add clock binding doc for
 i.MX8MN
Thread-Index: AQHVGnjyIW8h9e1Tqk6HjR2Mb0HIlaaNuSkAgAAcJNA=
Date: Thu, 6 Jun 2019 01:14:33 +0000
Message-ID: <DB3PR0402MB39165AC38B4F45CE74F57EE7F5170@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190604015928.23157-1-Anson.Huang@nxp.com>
 <20190605233319.06CE62083E@mail.kernel.org>
In-Reply-To: <20190605233319.06CE62083E@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b76c38a-8ff6-4666-ffa8-08d6ea1c557e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3756; 
x-ms-traffictypediagnostic: DB3PR0402MB3756:
x-microsoft-antispam-prvs: <DB3PR0402MB375610293996416E4B0349BEF5170@DB3PR0402MB3756.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2000;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(136003)(376002)(39860400002)(346002)(189003)(199004)(13464003)(14454004)(2906002)(486006)(52536014)(316002)(2201001)(44832011)(478600001)(86362001)(229853002)(256004)(5660300002)(6116002)(3846002)(33656002)(66066001)(2501003)(476003)(8936002)(7416002)(25786009)(446003)(8676002)(81166006)(81156014)(68736007)(110136005)(6246003)(76176011)(11346002)(7696005)(102836004)(4326008)(53546011)(53936002)(99286004)(6506007)(305945005)(6436002)(55016002)(73956011)(66946007)(66476007)(66556008)(64756008)(66446008)(9686003)(76116006)(186003)(26005)(74316002)(7736002)(71200400001)(71190400001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3756;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Qed25KPv3TR+adJr8X1R6gAoYpR5Gk1/uwD12BW4+nQWaPqu55XKm2aVNG4Lfyo4brvWSl/7p9Y5pN6mxHxDzkcfmRqe5kL0/vWj8nUcKb67qAudx3yhGLQGL9Vl8s4SWpWGDocYBY/j660EJFrrUaSf5nMlgHkVLA2pGb4CnVmM5gCW4+8xYaqOXyvNGvFPz2dnud00crJsaEYpjlAgiQ44VhGzQwI2SvZwx36x5y8vG67SH2S/FykqugjKSQhL352IpMXj0WYX/FSde6/Ykai3hMCocNlSqgnDpuSJU+LeUnvwhkeHF8Taile2xx1YysMkcmTW7SlFhuYbXMCbAFY2vj295IwrFh/pBqzdfc1ZvaZfKBy1UAEMQk7tjQfzhuvlQ8YNZ+XBCKYCKVYY1MBiOVrCmtOF5jy9yI/unp8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b76c38a-8ff6-4666-ffa8-08d6ea1c557e
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 01:14:33.1805 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3756
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_181444_018351_CF70E795 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.50 listed in list.dnswl.org]
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

Hi, Stephen

> -----Original Message-----
> From: Stephen Boyd <sboyd@kernel.org>
> Sent: Thursday, June 6, 2019 7:33 AM
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
> Subject: Re: [PATCH V3 1/4] dt-bindings: imx: Add clock binding doc for
> i.MX8MN
> 
> Quoting Anson.Huang@nxp.com (2019-06-03 18:59:25)
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > Add the clock binding doc for i.MX8MN.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > No changes.
> > ---
> >  .../devicetree/bindings/clock/imx8mn-clock.txt     |  29 +++
> 
> Can this be yaml?

OK, I will try to use yaml in V4.

Thanks,
Anson.

> 
> >  include/dt-bindings/clock/imx8mn-clock.h           | 215
> +++++++++++++++++++++
> >  2 files changed, 244 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/clock/imx8mn-
> clock.txt
> >  create mode 100644 include/dt-bindings/clock/imx8mn-clock.h
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
