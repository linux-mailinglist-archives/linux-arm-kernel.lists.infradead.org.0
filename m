Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 229C7A3415
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:34:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BsQSnxZNzroftCs00g9pkfoagqqTmmwDn6RL7VUvEY0=; b=unAWETuhNoAFjL
	JeETj1CnW4TTQQ0Gh/0Jr5C7TwbHqC0PXoDh56KgY/r8Kr/9coSwfl+0NuaHVz0EmrTUYcQbGmaJL
	PXyslAUpspENaqkYWwD6lM1SKjlpMCk4oD6HIpzE50lYeBoEXmwyPhWo+jTEqxQPbBVXVEAuQ/PGt
	rKi4HMffkz8M5zV0jm+T71awt9DT9USn2qEeqQsCldhiGjZsbzDsO6lOrf4kBFkDqm29p8UUyTN1M
	tA6eVkymG+lIDCsQbC8nqxk7NFbQCVub/t5YoZAp3dtsxv3t2x9B6rQwzi9COeGW1JscImj289yOi
	HAYhQd2eJzc8YygihJpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dI8-0006YW-Gz; Fri, 30 Aug 2019 09:34:00 +0000
Received: from mail-eopbgr30066.outbound.protection.outlook.com ([40.107.3.66]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dHx-0006XO-6m
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:33:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D0wQxO9ZLfNyLzLo1Gck9MNvOBk7/i5oA2uqclCVJy22Ku3IpSsxJVv9vVhRMEAreyB9wExaa7Cv2J6NlyC1gvB0XZh2UcCYQABmatPDavuA5lxiBBz18A++XzMQbUFx8qOybtVxsT8YOB930+AliAmLmUuA0dhHKbg8LhrwCoKhADqlKZkZ+mKhm6gY8iiUOuayprPtn4vD/6aMXSCzprSO7oyZCdYbcRNN7Aa4GToYXQ0R8Rpe61X0wmAIDl6wQDdn3qtWoVKOJjItO08u3G43GMUDg0G9HoSz2CfnxAeWlYxr1PGzLPxHcqOvXgRK+4aQ874mvth9BnGrfjReJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R7NnlQXA73wLW73cOXhGeAa+W4vdiCFT2ff77LTTa14=;
 b=gEHLGZn1ZxjDlYaMRKzHt5y4Q1rI1XrzfWSa4yQaCOCZF1djdu0T3OkL0+i1wHopUsTp7/vlkuGXshEvcDRZC+a09116yfOpkIknvRqZlke6ek3mMk31ru0eJtPVGRFneP8x6+fefTWC/Geo5A2l3VzaSRLFNtai3LAXDoR6wIwXqEq1RalqyidAN9yZ7NHffMRqgQPHMIzO3Q/q310LtXkh/lTHgZ9u5kjC2KyAqMbK6WZR/CCN+ADE6Fs4vZAMYTKCyb8214ZkFIp5/lqZObIXgz+TjBDAAmxadHc5dBQGuenqEWqPQ0LDPZSPylwu68NgbRylf4NGCGz9SSLlHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R7NnlQXA73wLW73cOXhGeAa+W4vdiCFT2ff77LTTa14=;
 b=ox0iuS0aCJ6BBOWVIfOs+04+9K3W/YUQR+IIJmoI0L0fG0Yrx2ekBHVha1P5uINPurV/hc1ZtQ8jcOli6URql1R47gLhC3mP1ZYUMFJBPt+X/KAhAcmjXnhkOWB7tSlYS1xugQj1ZCYw1/KX6wO8w3N+ktJYTmDIFvAi4OLXKaU=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.52.16) by
 VI1PR04MB2958.eurprd04.prod.outlook.com (10.170.228.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.19; Fri, 30 Aug 2019 09:33:45 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::e039:172d:fe77:320a]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::e039:172d:fe77:320a%4]) with mapi id 15.20.2220.013; Fri, 30 Aug 2019
 09:33:45 +0000
From: Peter Chen <peter.chen@nxp.com>
To: =?iso-8859-1?Q?Thomas_Sch=E4fer?= <thomas.schaefer@kontron.com>
Subject: Re: [PATCH] ARM: dts: imx7: fix USB controller 'size' parameter
Thread-Topic: [PATCH] ARM: dts: imx7: fix USB controller 'size' parameter
Thread-Index: AQHVXoFWvyl/j3PqHU+yZINpJASVyqcS92qAgABP7ACAACewgA==
Date: Fri, 30 Aug 2019 09:33:45 +0000
Message-ID: <20190830093345.GA25865@b29397-desktop>
References: <20190829154913.2049-1-thomas.schaefer@kontron.com>
 <20190830022539.GA1146@b29397-desktop>
 <b227eb4da9214b33b44f33b2a84f4205@kontron.com>
In-Reply-To: <b227eb4da9214b33b44f33b2a84f4205@kontron.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8c948e1c-0dab-46c7-441f-08d72d2d27ba
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB2958; 
x-ms-traffictypediagnostic: VI1PR04MB2958:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB2958646169C14C0987CA224A8BBD0@VI1PR04MB2958.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 0145758B1D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(136003)(396003)(366004)(376002)(346002)(39860400002)(189003)(199004)(9686003)(6512007)(53936002)(86362001)(476003)(44832011)(486006)(25786009)(6506007)(3846002)(81166006)(8676002)(53546011)(14454004)(81156014)(102836004)(76176011)(71190400001)(71200400001)(26005)(2906002)(229853002)(8936002)(6916009)(186003)(11346002)(4326008)(6116002)(33656002)(6246003)(33716001)(66574012)(1076003)(446003)(66476007)(66946007)(66446008)(64756008)(76116006)(91956017)(66066001)(5660300002)(66556008)(7736002)(6436002)(305945005)(256004)(54906003)(99286004)(478600001)(316002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB2958;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0gnOT9COWsD5vEl2BcZFyZB/3YzMx03T7VmSfaYQQbi8wTzZFvUqS521E7QkyK64DrVVupqIqo8zS/H+89E6twUZrJpIIYlVr29Jk0FnfoBw+AbZg8/JjLknvUFMMXRiq9fVPsyWjxdaYNHDFK+2fABeOEJKtE99vRP7p5fsZO3p33hpxCcf6XASzU+EyrKBFqs6hC2fbPHzO/BAmY8yIhEF5IvTrzKT4Km9vM1OYgV3vP2x1aA5DJMxx1oj+z4wJ0BNxapwPCViOznZ7tLPqA2aJPl8vxcb1h3/QNCi+gCYjeueT5PShp8gHqqI9zAY7eH7gATLWEtvXJ3I32c3XLMv5CMJ/bCH9XWRF4uqFwZ7z4OVDTSVL/TzxSuv08Mrss8K2Jusu+Ie/qpuj5qX1yiqF2kviSGmCcjOlsGh0JI=
Content-ID: <E6DD6026C9FFAC47B6CBDD23092CA896@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c948e1c-0dab-46c7-441f-08d72d2d27ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2019 09:33:45.7989 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8l1c4zzxj0bMB1ntYbSmuHx+IaIrysVzvS0EyvQMuYTcyHpxitRbKP79U7wycsd/QB28HtDK7I0G6lvBo8Z8mQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB2958
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_023349_259991_83B06CD9 
X-CRM114-Status: GOOD (  22.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.66 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "marex@denx.de" <marex@denx.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-08-30 07:11:42, Thomas Schaefer wrote:
> -----Urspr=FCngliche Nachricht-----
> Von: Peter Chen <peter.chen@nxp.com> =

> Gesendet: Freitag, 30. August 2019 04:26
> > On 19-08-29 17:49:13, Thomas Schaefer wrote:
> > > Currently the size parameter in the reg property of usbotg and usbh =

> > > nodes in imx7s and imx7d dts includes is set to 0x200 which is wrong =

> > > for the i.MX7 CPU. According to reference manual, spacing of USB =

> > > controller registers is 0x10000 instead.
> > > =

> > > This patch will fix this and set the 'size' to 0x10000.
> > > =

> > > Signed-off-by: Thomas Schaefer <thomas.schaefer@kontron.com>
> > > ---
> > >  arch/arm/boot/dts/imx7d.dtsi | 2 +-
> > >  arch/arm/boot/dts/imx7s.dtsi | 4 ++--
> > >  2 files changed, 3 insertions(+), 3 deletions(-)
> > > =

> > > diff --git a/arch/arm/boot/dts/imx7d.dtsi =

> > > b/arch/arm/boot/dts/imx7d.dtsi index 42528d2812a2..f1b098d28b6e 100644
> > > --- a/arch/arm/boot/dts/imx7d.dtsi
> > > +++ b/arch/arm/boot/dts/imx7d.dtsi
> > > @@ -117,7 +117,7 @@
> > >  &aips3 {
> > >  	usbotg2: usb@30b20000 {
> > >  		compatible =3D "fsl,imx7d-usb", "fsl,imx27-usb";
> > > -		reg =3D <0x30b20000 0x200>;
> > > +		reg =3D <0x30b20000 0x10000>;
> > >  		interrupts =3D <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> > >  		clocks =3D <&clks IMX7D_USB_CTRL_CLK>;
> > >  		fsl,usbphy =3D <&usbphynop2>;
> > > diff --git a/arch/arm/boot/dts/imx7s.dtsi =

> > > b/arch/arm/boot/dts/imx7s.dtsi index c1a4fff5ceda..9e25fccf33f0 100644
> > > --- a/arch/arm/boot/dts/imx7s.dtsi
> > > +++ b/arch/arm/boot/dts/imx7s.dtsi
> > > @@ -1088,7 +1088,7 @@
> > >  =

> > >  			usbotg1: usb@30b10000 {
> > >  				compatible =3D "fsl,imx7d-usb", "fsl,imx27-usb";
> > > -				reg =3D <0x30b10000 0x200>;
> > > +				reg =3D <0x30b10000 0x10000>;
> > >  				interrupts =3D <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
> > >  				clocks =3D <&clks IMX7D_USB_CTRL_CLK>;
> > >  				fsl,usbphy =3D <&usbphynop1>;
> > > @@ -1099,7 +1099,7 @@
> > >  =

> > >  			usbh: usb@30b30000 {
> > >  				compatible =3D "fsl,imx7d-usb", "fsl,imx27-usb";
> > > -				reg =3D <0x30b30000 0x200>;
> > > +				reg =3D <0x30b30000 0x10000>;
> > >  				interrupts =3D <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> > >  				clocks =3D <&clks IMX7D_USB_CTRL_CLK>;
> > >  				fsl,usbphy =3D <&usbphynop3>;
> > =

> > Hi Thomos,
> > =

> > The core controller range is 0x200, from offset 0x200, it is non-core r=
egister, which is used by usbmisc. Fabio said you met problem at u-boot for=
 this size, what's the problem about it?
> > =

> > Thanks,
> > Peter
> =

> Hi Peter,
> =

> When porting one of our i.MX7 based modules to u-boot v2019.07, I found t=
hat scanning USB with 'usb start' crashes when trying to scan the _second_ =
controller enabled in the device tree (the first controller was detected pr=
operly). After some investigation I found that the problem was introduced w=
ith Marek Vasuts 'usb: ehci-mx6: Fix bus enumeration for DM case' (u-boot c=
ommit 501547cec1f7f0438cae388a104ff60f18576c01). This patch uses the 'reg' =
property in the usbotg and usbh nodes to calculate the device index number =
for the driver.
> =

> Actually, controller range on i.MX6 is 0x200, thus the calculation is cor=
rect for i.MX6, but on i.MX7 the base addresses of the controller registers=
 differ by 0x10000 and calculation will fail if more than one USB controlle=
r is enabled in the device tree. This is why I suggested to fix this proble=
m in the imx7s and imx7d device tree include files.
> =


At dts, each USB controller has its reg property to describe its base
address, we do not need additional calculation.

For controller index, it is only needed for imx6 since we share non-core
register from 0x800 among controllers. From imx7, we have dedicate
non-core region for each controller, it can be described at dts well.

At dts, we use usbmisc to describe the non core part, and the related
Linux code is at drivers/usb/chipidea/usbmisc_imx.c

-- =


Thanks,
Peter Chen
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
