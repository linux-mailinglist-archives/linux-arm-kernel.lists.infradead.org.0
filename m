Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF841646CC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 15:22:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i31rS43Z5kEeqW4kLyxekdXzLzeQW3eRYaZH7g8LzSo=; b=HBtIfrl+gAyeUV
	teHmrEpT2lGQo9U0+0jfwCMafg6O2akidspY9ZhnwmfLfx2OV18X6Hk9ZesskLiOQqKzlFAgt9vMd
	jARGIEc8dIBAwrjAk7ixvRM0Z1sSh1Iyz1z47u0QCM0QSxbNTdo3i9LO/u9ict6ptV+W7WKf9+UcF
	tGCb1o4jlJHwks564N9cqc5IqaEmlGs0tJ6YVqFBB7VcQ0aBWkaJ/jzseTxGTjc122+gIdS2FeHuN
	VcbBwlDF1UwUPAQKbO24yTlQQsEorPwxS3RzYMXv3NKEsdq/ZFvb19HtzKpk5A3P62B0wAnNZ3I3v
	MIeLDg2IlHoX0ud/T9Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4QEk-0004Py-Vb; Wed, 19 Feb 2020 14:22:02 +0000
Received: from mail-db8eur05on2075.outbound.protection.outlook.com
 ([40.107.20.75] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4QEd-0004PK-NR
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 14:21:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RzVF/4AVgqk0Y40GpWdjMysmiD9mdhqIMiTjiUkWulBEctMB/l0FyMFJ1+bpRTzSxkgWIaJPJ22WyKnJVU9AKsucai3rVwFu5m3l9U3wvRJXcQLU7C9h8NvmsTyXp0kKCgbyisBUTleVSXkcHbKBwIbRo4BZchUKuB9Chw+IulmeyeHWsb42tda3nXh4Zf4LPSEXgQQiTHrwto7fdUub5YbR2WU5/af2NiS4ONIh0WupL/U8hKGffd3BqGssiDrt/1kT8/Tqqo5ceJQ5a2Lhi0aZyM4QA+f2Lec/q54qKJD215FBkBX8EVTvl+uTIQQCc+O+cIWgyxWnA9a74tmjwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/6E5kY/cRRiZ/WJseSy4RncNHQ5YNkzbZBWQQsEBfdY=;
 b=W4jKQmuGiFxg7gwYbBFCn9UZHG2nKxRePEGohe0QbGkxPiG8vY4TTF4JJlBIp+MZ99XgC9hBaW2lsowYLmWp4zbtwmG6v8Fn6sYbVNVyUxTLpi5ywWXGMU7+a5P8r0RgfWxDgxF2Fke1QH8GrtrGwuVIpYmBYNNSmzOozB4MldeTHOvSsV4iaiznGkwVRG/ne+TvVws2GooaMWZIwPTs+fSc8+cuUVrQ/i/jJmNfzfYedOU2VIwi3lc0zJPb7adSwdmYpCKrvfyRuGT/UhQxfQLzIKidNjl9F3W4kL62bBYVNwAmC4EiJyLjFtJoeqyZMK7mWtsQWnA6SkEd4AJeTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/6E5kY/cRRiZ/WJseSy4RncNHQ5YNkzbZBWQQsEBfdY=;
 b=mEu2UlJ2H2m8rUljJxY8q5MtLFY5uSN565o1aAwW1x1hTqrJ/8b1pSSK1HMq6bX4uDGfPHEwXIasswGchZ60NXkAGVDwzCkW8o5Rp8gbJ6x4iIh7KkXmRbjEECMAyzCSOJTTsWVPd/nBItFEiCrYU3cXeM3o2yrV7a9Z6neR7MI=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3689.eurprd04.prod.outlook.com (52.134.69.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18; Wed, 19 Feb 2020 14:21:50 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 14:21:50 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "'robh+dt@kernel.org'" <robh+dt@kernel.org>, "'mark.rutland@arm.com'"
 <mark.rutland@arm.com>, "'corbet@lwn.net'" <corbet@lwn.net>,
 "'shawnguo@kernel.org'" <shawnguo@kernel.org>, "'s.hauer@pengutronix.de'"
 <s.hauer@pengutronix.de>, "'kernel@pengutronix.de'" <kernel@pengutronix.de>,
 "'festevam@gmail.com'" <festevam@gmail.com>, "'catalin.marinas@arm.com'"
 <catalin.marinas@arm.com>, "'will.deacon@arm.com'" <will.deacon@arm.com>,
 "'rui.zhang@intel.com'" <rui.zhang@intel.com>, "'edubezval@gmail.com'"
 <edubezval@gmail.com>, "'daniel.lezcano@linaro.org'"
 <daniel.lezcano@linaro.org>, Aisheng Dong <aisheng.dong@nxp.com>,
 "'ulf.hansson@linaro.org'" <ulf.hansson@linaro.org>, Peng Fan
 <peng.fan@nxp.com>, "'mchehab+samsung@kernel.org'"
 <mchehab+samsung@kernel.org>, "'linux@roeck-us.net'" <linux@roeck-us.net>,
 Daniel Baluta <daniel.baluta@nxp.com>, "'maxime.ripard@bootlin.com'"
 <maxime.ripard@bootlin.com>, "'horms+renesas@verge.net.au'"
 <horms+renesas@verge.net.au>, "'olof@lixom.net'" <olof@lixom.net>,
 "'jagan@amarulasolutions.com'" <jagan@amarulasolutions.com>,
 "'bjorn.andersson@linaro.org'" <bjorn.andersson@linaro.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "'dinguyen@kernel.org'" <dinguyen@kernel.org>,
 "'enric.balletbo@collabora.com'" <enric.balletbo@collabora.com>,
 "'devicetree@vger.kernel.org'" <devicetree@vger.kernel.org>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 "'linux-doc@vger.kernel.org'" <linux-doc@vger.kernel.org>,
 "'linux-arm-kernel@lists.infradead.org'"
 <linux-arm-kernel@lists.infradead.org>, "'linux-pm@vger.kernel.org'"
 <linux-pm@vger.kernel.org>
Subject: RE: [PATCH V15 1/5] dt-bindings: fsl: scu: add thermal binding
Thread-Topic: [PATCH V15 1/5] dt-bindings: fsl: scu: add thermal binding
Thread-Index: AQHVJXvnLQPj9qjL2U2LZTWuyBDONqaqeq9ggC7WvJCAjvj14IC7yhIw
Date: Wed, 19 Feb 2020 14:21:50 +0000
Message-ID: <DB3PR0402MB391606A52B41299F63FC4837F5100@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190618021820.14885-1-Anson.Huang@nxp.com>
 <DB3PR0402MB39162C5B5AF828B127DD871EF5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <DB3PR0402MB39162EB555CD7AE75D58C582F5C60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <DB3PR0402MB391666ED47460B81E1C3FEC7F56B0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB391666ED47460B81E1C3FEC7F56B0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [220.161.57.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cae4e7eb-6c4c-42f2-666c-08d7b5470fd3
x-ms-traffictypediagnostic: DB3PR0402MB3689:|DB3PR0402MB3689:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3689D139616B3714A1DD8F1BF5100@DB3PR0402MB3689.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(136003)(396003)(366004)(199004)(189003)(6506007)(66446008)(4326008)(86362001)(5660300002)(110136005)(76116006)(66476007)(2906002)(66556008)(64756008)(66946007)(316002)(478600001)(33656002)(186003)(71200400001)(81156014)(7416002)(8676002)(81166006)(7696005)(8936002)(52536014)(26005)(55016002)(9686003)(44832011)(921003)(491001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3689;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HujuYedAYwg7pVrtdr8r8ZwVrJDGbbnFPd7iCbgnoD+kDKLoQKjPRZ4yUFh/2ZJ5g0Di4xjPujFjDHWMOatXsJ+cRP3rIMsSY6Wivhav37tikgulc/wO7q5ZT8QHccyBJVtU7nrvDLVC4dUuWwBaoMeJ9CNE+vllGiz0SVD8dQV+F8ren+rk75WeW+25OaxgMhHGUIIiXH8KUEsOL5Z0n3bD8/0F2UygBLLObOAcs3gOiyBZYN4M5jqwV5Sk/crk4ko+3shTC3lOSF5n0i/pANrDmV+pd3rMiG0GDHTXTGgOLY+QtUP+xCSIp7ZgB70/+eSH/itOvi2Gr5Zq/nuFVZmGLzYzPhBXS1FQQ1evlWj/dC7pmz/jUrBg/YdtaCwttcQX8JOFBtjnFLewSrNUfXkY5CY3tkjn9vty1/EhgVZ0WFFBrIu13rHhxTYmYhJvne3vfG/kR5mRrww5ldfjVJzgQqk4edpzN1vUtaDGqOI8y5V3C1Tiy5L0bY0UxbL/qIOQtkPVTp9kpgHIO6YZ5A==
x-ms-exchange-antispam-messagedata: 0DpsVhyx/yty0KF8X2I0IlO0FQSa8DWGI1hHU07s3OrAxbQqpHXzFbVZC9VNwhMmBTiOd3Pcmwz/0+GSavG/G/J9N/pN/P5ydhe7N2wgML5lI8YNh5Bx/2wJQ9VkAQWOKuwbio0K2arhrY6AJvYjIQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cae4e7eb-6c4c-42f2-666c-08d7b5470fd3
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 14:21:50.6284 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4FWmTGSYB23IPSzMpJldARKq+3R0q2E1XlFRRGkl/OddgR1LFUZzif4tgPl/zuUgS6Vhz00/UPQkIJjtbTW3rg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3689
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_062155_762050_1E71B07E 
X-CRM114-Status: GOOD (  20.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ping....
It has been more than half year, is there anyone can help on thermal sub-system? 

Anson

> Subject: RE: [PATCH V15 1/5] dt-bindings: fsl: scu: add thermal binding
> 
> Ping again, it has been 3 months passed.
> 
> > Subject: RE: [PATCH V15 1/5] dt-bindings: fsl: scu: add thermal
> > binding
> >
> > Ping...
> >
> > > Hi, Daniel/Rui/Eduardo
> > > 	Could you please take a look at this patch series?
> > >
> > > Anson
> > >
> > > > From: Anson Huang <Anson.Huang@nxp.com>
> > > >
> > > > NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as
> > > > system controller, the system controller is in charge of system
> > > > power, clock and thermal sensors etc. management, Linux kernel has
> > > > to communicate with system controller via MU (message unit) IPC to
> > > > get temperature from thermal sensors, this patch adds binding doc
> > > > for i.MX system controller thermal driver.
> > > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> > > > ---
> > > > No change.
> > > > ---
> > > >  .../devicetree/bindings/arm/freescale/fsl,scu.txt        | 16
> > > ++++++++++++++++
> > > >  1 file changed, 16 insertions(+)
> > > >
> > > > diff --git
> > > > a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > > b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > > index a575e42..fc3844e 100644
> > > > --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > > +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > > @@ -155,6 +155,17 @@ Required properties:
> > > >  Optional properties:
> > > >  - timeout-sec: contains the watchdog timeout in seconds.
> > > >
> > > > +Thermal bindings based on SCU Message Protocol
> > > > +------------------------------------------------------------
> > > > +
> > > > +Required properties:
> > > > +- compatible:			Should be :
> > > > +				  "fsl,imx8qxp-sc-thermal"
> > > > +				followed by "fsl,imx-sc-thermal";
> > > > +
> > > > +- #thermal-sensor-cells:	See
> > > > Documentation/devicetree/bindings/thermal/thermal.txt
> > > > +				for a description.
> > > > +
> > > >  Example (imx8qxp):
> > > >  -------------
> > > >  aliases {
> > > > @@ -222,6 +233,11 @@ firmware {
> > > >  			compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
> > > >  			timeout-sec = <60>;
> > > >  		};
> > > > +
> > > > +		tsens: thermal-sensor {
> > > > +			compatible = "fsl,imx8qxp-sc-thermal", "fsl,imx-sc-
> > > > thermal";
> > > > +			#thermal-sensor-cells = <1>;
> > > > +		};
> > > >  	};
> > > >  };
> > > >
> > > > --
> > > > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
