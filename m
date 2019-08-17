Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF2191376
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 00:22:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bcTOojrzvVRaCgEfHi1WU4sYw0iUS2SrN/bt76OuP3E=; b=p1Hyk1dSol1NWP
	yZGTaFffloh6B/sJ8KyecBTFZpjfH3P96ntZ/riKnPxN9gy+5PYr8uBfEntNZJFPQh5s8qs14SPKI
	N1GmrtsJ1GmBGNGzSQ8ZCN3Nq0I6FpSSOLe3d0209zfmyaZ0/e6wB5fuvTKyrTWk8/omCqda3DyIz
	Lq6W7KbEVKZol/R6hPC3v1D0cPLp8QFke1xPNEvS89weAfTy+QLlbssjUYy/vp3D3Yhfx3WkfC4ae
	jz1geq1WCkr+oApBhHa+o7pVwd/lwPXahs8/dN92vaF561oFssi9/sjerAdz2dumXcGGZPKBw1rtq
	d/P4j3k9QyoHBO8lp3kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz75Z-0000hB-Np; Sat, 17 Aug 2019 22:22:21 +0000
Received: from mail-eopbgr80070.outbound.protection.outlook.com ([40.107.8.70]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz75M-0000gE-6C
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 22:22:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JHgQoNR6jvOO3CL7cDxmMH8V7BSZWsYMH4CWJXzgEF+NSxuiXjjoiBvgMXzKdVeDqmIjaZ15Y/Xj0MWRFJoc8QOIN9JFqo+4PReWmQ4sTYClny9txks0F/zQ7a/XxSxW076xaD0AEgUi1hsU8ZedPkIM83OE5a2ZxywmI0piUss/DLwoOSzxzR47oBujRAW8zlwDA36q+YpTmwtwZsbcUmRur6SVdGV7SGKhnVWKePDWzVTbOtUxz49UTa5IY5uZVSgQZKDn5hxPn7ZyW/ZvXBAUSOx7jAoLJRjv4Fgsz9noo4e5HP+DJDykzYGOpcDYwAMKAxiJoFl2LWq48sIE7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wFWhBSdl0k4E5SqA5OwufSooxx30zIoHOYUawBpTwl0=;
 b=Nr6rH86voZ6pSOok5qCuVSuernC9dlf8TUz9jgO4JMaQJ1BZT+EIYIhtGCQS09csU6oywSW1iX4436CBnqxPd0yfqI6OK3fs4P2r9tuWAF4/GMWLYCYRGqNNLhqABC61EMuG75V/LzEfj9Hr8tgVqvBzLzBK3YvdjL0U+E0k79i6njd01YXOL02JiTYO0/oeTi5QMF6RdiCMMC9upE3fX6CWT1g1wFRYoIqkp/mp/4GTAsMHqxlAzUOpT81ufr80QeSH7EMWAPQABBhQhdGt8ZFrScH6YYLZ/ywR1p7j8JSkZaHC8OCTMlt+lOCrW0ov6z0FKbtWbo2XYm45nH1neA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wFWhBSdl0k4E5SqA5OwufSooxx30zIoHOYUawBpTwl0=;
 b=s+4WXnz5UJ2xI41r46/DjqyjgXhblOzQJWwVfjDxJ5rMagltP+v+zZFoHXaKAt+3cCOEGv9ZO4oe2uwEznVw6a53oh01zH0uqMMtE9nD4niV+pQ8lIj+NcO+LTtpy/OOAaDDCR0VyeOEqL2wghQFLAuLuNGKca58xlI8+a5pujA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3865.eurprd04.prod.outlook.com (52.134.73.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Sat, 17 Aug 2019 22:22:01 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2178.018; Sat, 17 Aug 2019
 22:22:01 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Abel Vesa <abel.vesa@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "rjw@rjwysocki.net"
 <rjw@rjwysocki.net>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>
Subject: RE: [PATCH 5/6] clk: imx8mn: Add necessary frequency support for ARM
 PLL table
Thread-Topic: [PATCH 5/6] clk: imx8mn: Add necessary frequency support for ARM
 PLL table
Thread-Index: AQHVU1smspIlsoJa7UagSycBskV9A6b+t5+AgAE1uXA=
Date: Sat, 17 Aug 2019 22:22:01 +0000
Message-ID: <DB3PR0402MB3916D320EB51B2D9E28D55E1F5AE0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1565866783-19672-1-git-send-email-Anson.Huang@nxp.com>
 <1565866783-19672-5-git-send-email-Anson.Huang@nxp.com>
 <20190817035220.268F32173B@mail.kernel.org>
In-Reply-To: <20190817035220.268F32173B@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.23.231]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea346ea0-08ab-4a90-2c92-08d723615346
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3865; 
x-ms-traffictypediagnostic: DB3PR0402MB3865:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38658A3ACC2FA6FA7A04B804F5AE0@DB3PR0402MB3865.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:758;
x-forefront-prvs: 0132C558ED
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(366004)(346002)(136003)(396003)(376002)(39860400002)(189003)(199004)(53936002)(76116006)(66066001)(6246003)(6436002)(66476007)(64756008)(7416002)(66446008)(102836004)(66556008)(66946007)(3846002)(6116002)(25786009)(4326008)(256004)(52536014)(2501003)(7736002)(478600001)(74316002)(86362001)(5660300002)(14454004)(446003)(11346002)(55016002)(486006)(33656002)(305945005)(2201001)(7696005)(76176011)(26005)(6506007)(186003)(99286004)(71190400001)(71200400001)(4744005)(110136005)(8936002)(44832011)(229853002)(9686003)(2906002)(316002)(8676002)(476003)(81166006)(81156014)(32563001)(921003)(1121003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3865;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1x9ESFekx8XTRA3HCxLENEooPkH4IzcZ7ekmqV8MRXNX5nsVHHbUaUvYZn/ieXmjcvoYXxsWU3GYXBGWWa/vR/qFf5OOLw5ReMB+hS1xKiySohRt12YNX3CWrYrfV08wdrZPnPx1+Io3huUf95OMYuf1BaZWFUFdaDhbxNXjLumfxG3orhpSlF+jR8HuOVeY1JKc4u2Qj1tUeDpxHPea5wvS0n/+xoqzneLppj4C7rTDBuYfNWslVdaaaI8rXNoezUxh/nMwqxqNobx6WKFlRETrPTTUWwzcnzWFD7XfDRk22cLX8iYGgZayb9OMYWuJC1BXBLaRjSLMDLtv5Co9QRb310OIgp9FX8wEkL431gLbHtMdPJvX7eZxmEsbBcTcahncqzajfq0LWtV48Af2ArAaAHe2AqoCWcOst5+dI5M=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea346ea0-08ab-4a90-2c92-08d723615346
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2019 22:22:01.1712 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2ilHk5nN34KfNTGmrJCKlxtT1u9mdJPyBixcmm64KrNAJii0ofWvXl7t3cX3k18+LgubwGcUjer9no6MBunLgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3865
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_152208_337227_D8FABBE4 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> Quoting Anson.Huang@nxp.com (2019-08-15 03:59:42)
> > diff --git a/drivers/clk/imx/clk-imx8mn.c
> > b/drivers/clk/imx/clk-imx8mn.c index ecd1062..3f1239a 100644
> > --- a/drivers/clk/imx/clk-imx8mn.c
> > +++ b/drivers/clk/imx/clk-imx8mn.c
> > @@ -82,6 +84,7 @@ static struct imx_pll14xx_clk imx8mn_dram_pll = {
> > static struct imx_pll14xx_clk imx8mn_arm_pll = {
> >                 .type = PLL_1416X,
> >                 .rate_table = imx8mn_pll1416x_tbl,
> > +               .rate_count = ARRAY_SIZE(imx8mn_pll1416x_tbl),
> 
> Why is rate_count added? That's not described in the commit text.

rate_count is necessary for table search during set_rate, it was missed previously,
I will add it into commit text in V2.

Thanks,
Anson.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
