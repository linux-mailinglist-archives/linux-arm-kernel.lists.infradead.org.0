Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BD11DC6D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 08:05:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CXcU65PpjDv5a9OyDcaFqTuJTbHuUQVdymal1R48GZA=; b=FN0SI9Bw+0kp2U
	oht7YokXKK4t2si6HrBk0e0xgRwU5oPZNnpaNEKk3qmNMv9+mPwcRnnKUcH5FurUlbRmyET3F9YE1
	BvFauLXh3DHMoTati52YagNUbHvIwsDyM4reo4PThExnTR0Aped7xyPJf/ZU9+TilFlBmuVzf8SMy
	daBbxCs0JbpX7LE+bxX/0Gniq07+hPdtlYRXNKpvrEMR2ngXIFdRzuN2W+upbNBla4w4twSAO3i+t
	Zzb0wHog8t5NS0c6iavicGNYFqXYWaSD3rnrc6rkkI9czkTW10ItQu7B0QElHLEYqg230fV8LWupJ
	gDdQlRbRNetrOcVsnwoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbeKd-0001CU-JI; Thu, 21 May 2020 06:05:27 +0000
Received: from mail-eopbgr140041.outbound.protection.outlook.com
 ([40.107.14.41] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbeKU-0001By-6N
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 06:05:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M7THmxLeSToxqUflwwigA7x0nITNzhnETE/THP2E4nHjkM2HfrJQyjCxbD4YpmRnrvGExs4NvAEqYGeXopU5Z9X+ua3U5f9ZOniNTTPpfvyR8sZVeUYIC2x+bCvOXZXIRA3lJfzN9sCqH6x13P35WWmlM1H51jRFaTnjpiDx8SfLQS6NmUJFDQBm4HsLPmTgFZv9KhBPCweippypC9lwMs3fdAe9j44GEAoQvXcfmk/flfU5QA5HXjwCvGxo4UN4X6Uy7af3a2wQosHWOOUlY79XcaXrPhXkiEfhqSenjyvHGSXiQ8TkqVKTyhgtrw/AH2LckbHTu04FVpNeuNFKcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rt0bYkqArHOat4epzHl3QBbnf5JyzoI57EDOAw8wK9o=;
 b=iy9n2LZPev6FT+0GoR6wQWXjiyJYGPZ+k0IH5FpuL52c9iEaGPJCPj9MnzcSlVLNuAimkE0Y/wUf1Sus9GYUuQjnT7Yk8949Wgngx/27s0aQv14o1ZoDc1o3/iNfWBjWVDae7GVXexEQzePfWCZbzx+gBKAulnoMps0u+CmjiiCTg3/SR4rvC22pmLfTiGhYXemPs5LR6g9zz2f9EHNJ0j7SfC5W0dzcUw8/5GFuXy6L8HRRbHlNt4sE3z1meJ11AmMbySOLhMOaLYcjaU4nS7oBsxNPgjWRtn+NXeRYZI2005U299IFou7QAxJM9F+X/Pw8NlQXlQXWoCpq44Vm4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rt0bYkqArHOat4epzHl3QBbnf5JyzoI57EDOAw8wK9o=;
 b=eVUSjKof/Rir1Tbtmz8iaI8t9Le+n6M2AuHAGq4ONPZj28588v4qNqx6/m7qrqtTkpwfnupMn8QAsE56HkZeigBOoZjvW2XHHdZzoz2RGsiOmvd/Nc5bD6iwc78NbKF0Ur2ZN65T6s8yYR0nreiue6iTku8fGSxDUrdQ0djUv9E=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6702.eurprd04.prod.outlook.com (2603:10a6:803:123::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Thu, 21 May
 2020 06:05:14 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3021.020; Thu, 21 May 2020
 06:05:14 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, Anson
 Huang <anson.huang@nxp.com>
Subject: RE: [PATCH v1 2/2] arm64: dts: imx8mn-ddr4-evk: correct ldo1/ldo2
 voltage range
Thread-Topic: [PATCH v1 2/2] arm64: dts: imx8mn-ddr4-evk: correct ldo1/ldo2
 voltage range
Thread-Index: AQHWLx+OOjBI45o49kK5ywpfqow5U6iyDIwAgAAAQSA=
Date: Thu, 21 May 2020 06:05:14 +0000
Message-ID: <VE1PR04MB66382DE5A0FAB91CD702408D89B70@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1590060368-2282-1-git-send-email-yibin.gong@nxp.com>
 <1590060368-2282-2-git-send-email-yibin.gong@nxp.com>
 <DB6PR0402MB2760907E5DE55EBA3BE38D9B88B70@DB6PR0402MB2760.eurprd04.prod.outlook.com>
In-Reply-To: <DB6PR0402MB2760907E5DE55EBA3BE38D9B88B70@DB6PR0402MB2760.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b4bcea7c-16f4-442f-ca9f-08d7fd4cedb7
x-ms-traffictypediagnostic: VE1PR04MB6702:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB670246F7B7C1B1AFAA5A46B189B70@VE1PR04MB6702.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 041032FF37
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5W6zLY/cUfXyoc2e0AnsLAOuaxPNzIFbXj8bf6FhVr7MXrFJ6oi99nMLrDZqxPdpgJVsj1qKbGeIZjfWlJTeFg7Ob7xL/IHndD7Np5z6VZf/sjws15noX5R1ghmqITWxo9TIHVzBUkQhbLGtY3Fm/TvBLmgJhMUDu0j4Oo6frF3lSnzCOO7spAlBHvsvUeYw0qnkjW7tF50SUeyUN4eul0u1O0ZjTwcKE9B0d9qffmGAY/KMJYfyJLxp5PV+I+6NMgjit5FmFHNmWCRt6ndQVaObJNbrFbn8SJZWTp6Kf60qB7gREr59ySekhKJySXstCG9JGBo2xMEaEKtjbn3x7LKajzO9lIPg213WnX4O6bk+uAWMkqwsey0cZ2lcG75E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(346002)(366004)(39860400002)(136003)(6506007)(52536014)(5660300002)(186003)(316002)(4326008)(2906002)(26005)(33656002)(8936002)(478600001)(71200400001)(55016002)(66446008)(9686003)(66556008)(64756008)(110136005)(66946007)(66476007)(6636002)(76116006)(86362001)(54906003)(7696005)(8676002)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: N6sHiRdSrFG1H7y+tasMmUkQ/HG4Yd/t/8aOwlNmI/YfFT7e4yi9yxQxcwvySoVrv2J/uLIYNt057mH8NXgq0kHTfK+9pYYPTwCRs3z1RdQh7t4iYN4ZYJhGgIqTPlwg7Acyle6S+eqyl6Yp6cvrp6LyoAZ0LNz3Cbm8OJbQeGGwKZukY6LzE7yg3e16zbH+XCEyJD8Ase77Nwm+92P6MhQHIi+tJkqMl3bp3pQ/PFZYGIYFRx57C7A6y7lrynCyA0+CqmsFkQWtDyQAiz5IiUuJnH4ON3/TD62xdOb+LvNhgpzlfT9meqxzk4CHY3hyWRCug7IXWOb4ZK5K1jojBXmq5tPWq9kFRyN2WrQ/eKY4AnolYEkzcSc37sBOVdolLxf1DiyADztuMhg1BxCE5862PIM4GYMLW8o6fkwRF+3XNgJrV7ju276/Ac7dylZKDK/+R6M1xd6I2W4IF4KM5pA0TYiKk5zs49MZUHrcmL8eMDTZUQXrFGJwUmNiJGAU
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4bcea7c-16f4-442f-ca9f-08d7fd4cedb7
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2020 06:05:14.2702 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: grDviiXfr0x2PLp5q3t42powe7YU29FcyKyh5i3nQW2gEUU7D2jFPFO1alPw98CVJg/E3sXeFnuhJgnLUmtZDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_230518_241347_54AB4517 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.41 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

2020/05/21 14:02 Peng Fan <peng.fan@nxp.com> wrote:
> > Subject: [PATCH v1 2/2] arm64: dts: imx8mn-ddr4-evk: correct ldo1/ldo2
> > voltage range
> >
> > Correct ldo1 voltage range from wrong high group(3.0v~3.3v) to low
> > group
> > (1.6v~1.9v) because the ldo1 should be 1.8v. Actually, two voltage
> > groups have been supported at bd718x7-regulator driver, hence, just
> > corrrect the voltage range to 1.6v~3.3v. For ldo2@0.8v, correct voltage range
> too.
> > Otherwise, ldo1 would be kept @3.0v and ldo2@0.9v which violate
> > i.mx8mm datasheet as the below warning log in kernel:
> >
> > [    0.995524] LDO1: Bringing 1800000uV into 3000000-3000000uV
> > [    0.999196] LDO2: Bringing 800000uV into 900000-900000uV
> >
> > Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts | 4 ++--
> >  arch/arm64/boot/dts/freescale/imx8mn-evk.dts      | 9 +++++++++
> >  2 files changed, 11 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> > b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> > index d07e0e6..a1e5483 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> > @@ -113,7 +113,7 @@
> >
> >  			ldo1_reg: LDO1 {
> >  				regulator-name = "LDO1";
> > -				regulator-min-microvolt = <3000000>;
> > +				regulator-min-microvolt = <1600000>;
> >  				regulator-max-microvolt = <3300000>;
> >  				regulator-boot-on;
> >  				regulator-always-on;
> > @@ -121,7 +121,7 @@
> >
> >  			ldo2_reg: LDO2 {
> >  				regulator-name = "LDO2";
> > -				regulator-min-microvolt = <900000>;
> > +				regulator-min-microvolt = <800000>;
> >  				regulator-max-microvolt = <900000>;
> >  				regulator-boot-on;
> >  				regulator-always-on;
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mn-evk.dts
> > b/arch/arm64/boot/dts/freescale/imx8mn-evk.dts
> > index 61f3519..117ff4b 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mn-evk.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mn-evk.dts
> > @@ -13,6 +13,15 @@
> >  	compatible = "fsl,imx8mn-evk", "fsl,imx8mn";  };
> >
> > +&ecspi1 {
> > +	status = "okay";
> > +spidev0: spi@0 {
> > +	compatible = "ge,achc";
> > +	reg = <0>;
> > +	spi-max-frequency = <1000000>;
> > +	};
> > +};
> > +
> 
> This was added by mistake?
Sorry, will send out v2.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
