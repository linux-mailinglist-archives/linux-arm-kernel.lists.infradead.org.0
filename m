Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEB0E1019
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 04:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ThrrrOtxcgAq6X/oGRDjNwoAHWMTuotOsQOjD6MAKBE=; b=e9l0ioWQf8wKK7
	OvScsI/a3kN6Edhk7ES3uROox+TOSdB5BLr2mit3RvReT6zZkmmPZxWCj4KAPDBG/sA5BKpjEo24O
	mIsJ9/efXBNSANqX8FiKoGaEhzfrB8dvbeOg2MmhhQcO1tCAOQ058faY3/ucB8USgdNHUPL9mwabV
	deWAPtfmlZ7+RbEVM5kKPC6fW/QYJ5wz6KpyxGAXOqiHiSzhBZzzwmb56Z6Pzvxf2ZsXN324Twf4K
	iNURCx/UbbcfzK5vfSMeKQPPCTu5obAo4XeyU8Lz6wVdeq1wl1SCBaZ+C4AJOQ1D2G62sZoiJI8Ij
	rkTiJn3dWgxsmuXkbtiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN6Wk-0004QD-9j; Wed, 23 Oct 2019 02:37:34 +0000
Received: from mail-eopbgr20041.outbound.protection.outlook.com ([40.107.2.41]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN6WY-0004PK-RN
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 02:37:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eQ2bttHNbzcCx5L3NRReJr3i2ELPwvkw9TwBv8LwjVIdMVqDGuC7v3hMv6eCwjJYv9lIXXTEQOcDhMlh4P63qmVFheaAkphjECqTVViClEApcs1RZ/B+UO5F8cHUIc+ptOj9nA+MaFNFD/o8PLmKjaw/nqdNIgsgdC02Tbbwb9bPovF0lIYGtpcXxFCyN02FAbSKUxfuRm7wa5UVBJMFuSEzJypsNvjEZ/f9UOZPk1eE3CeGEOUh2kEvmVSHFFeQzs5vQaJqjmgdO72uUyr9z9ko8U9iCYIEMb1BwYvRCu6YikhJpL/FQ/UjLgd54sXkZbqpyOtuh9vYsIubmEIzqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dh2biVIVfhA03zkXP8icbrosSEithgWaWh6JGKPFRtw=;
 b=gWApdZzDlviFXy+PMBTYTQP92BMOBr0pMbXrcr7xvAjCtUu+YvLqeK8nJDu5zHP4e3k/j56zg5+WAQFGISQb4ADg5f5zWbVI9BtY/7jr6QnzRcYf+5N/Dk2BpbPWVqNB7dBeF+5rG8dqgz5caXA8VEOHYCZgBI+tt+IQ4oBzr2dP5+d4diM9hqhrBKtnclvBDBHcd9xMHT22AYM3dfmr4WkdmdQQSwRA5UwLLh+/q3kAKOJO3o/trWnrdW8QBDgdiIog/wQqUj1ATrIa1LKVekFYFKU9R3Jsexw1stNRg7a0R8X6MpaxI3AodzNGrbigvvhGA6kPbhCT5NVr1xhIbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dh2biVIVfhA03zkXP8icbrosSEithgWaWh6JGKPFRtw=;
 b=d5Lmir6vgOvDH7T7mUqmnGujxKaSjpiyk7yu+gcWv5r631Xjfj529UveuGl1K3qFOaihP2wtuV6Tsg9CqFneG6cH5gvkKWBPe9P9+yudQ23fqXdh2MvYTjY9Sbh4An9cSoE7F51Ri5d1l/Q17ITUINRs6s1W4eUZBx4fYLUaV7o=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3899.eurprd04.prod.outlook.com (52.134.71.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.24; Wed, 23 Oct 2019 02:37:18 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2367.025; Wed, 23 Oct 2019
 02:37:18 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "corbet@lwn.net" <corbet@lwn.net>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>, "edubezval@gmail.com"
 <edubezval@gmail.com>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>, Peng Fan
 <peng.fan@nxp.com>, "mchehab+samsung@kernel.org"
 <mchehab+samsung@kernel.org>, "linux@roeck-us.net" <linux@roeck-us.net>,
 Daniel Baluta <daniel.baluta@nxp.com>, "maxime.ripard@bootlin.com"
 <maxime.ripard@bootlin.com>, "horms+renesas@verge.net.au"
 <horms+renesas@verge.net.au>, "olof@lixom.net" <olof@lixom.net>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>
Subject: RE: [PATCH V15 1/5] dt-bindings: fsl: scu: add thermal binding
Thread-Topic: [PATCH V15 1/5] dt-bindings: fsl: scu: add thermal binding
Thread-Index: AQHVJXvnLQPj9qjL2U2LZTWuyBDONqaqeq9ggC7WvJCAjvj14A==
Date: Wed, 23 Oct 2019 02:37:18 +0000
Message-ID: <DB3PR0402MB391666ED47460B81E1C3FEC7F56B0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190618021820.14885-1-Anson.Huang@nxp.com>
 <DB3PR0402MB39162C5B5AF828B127DD871EF5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <DB3PR0402MB39162EB555CD7AE75D58C582F5C60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB39162EB555CD7AE75D58C582F5C60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4c98c0b6-bb53-45eb-acbc-08d75761ec43
x-ms-traffictypediagnostic: DB3PR0402MB3899:|DB3PR0402MB3899:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB389977405500819AD06631DAF56B0@DB3PR0402MB3899.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(136003)(396003)(376002)(39860400002)(199004)(189003)(305945005)(7736002)(6436002)(14454004)(6506007)(3846002)(55016002)(186003)(446003)(26005)(9686003)(6116002)(99286004)(102836004)(4326008)(66476007)(81166006)(76116006)(64756008)(478600001)(229853002)(52536014)(86362001)(66556008)(8676002)(81156014)(5660300002)(476003)(74316002)(486006)(8936002)(2201001)(66946007)(66446008)(11346002)(256004)(316002)(44832011)(25786009)(2906002)(7416002)(110136005)(71190400001)(71200400001)(7696005)(6246003)(2501003)(76176011)(33656002)(66066001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3899;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Sam8MXfDIk2xbu9RlsSvRuVlDoZzysCbFs5Ej3dIS/FADIgPwyvg8JKNLvMUgnu1oJiCIWADm01fSll/Oa/lTXUoh2ct2jHkessGAnDRvkUkI20/5VVWJ3eUu7jrYy4YdWptanrDhYYRKhqltA49eDF3d8eXpIV9VS8tfpDEivXzr9recDWrEEbVVdj9PolBk6O4UvbJNc6k1jeu6Foqv0vJ6myWscow3WZPz6TXQvnyJVjh9dmiq1wN7+GH+mEAKl706ebdqCgjb1duGUaVafoGQa3LjsqtP/qyTy1Y5dH5ABUhKRlQxdvpTXIu+g49m3b9sVmrNzn26m9+JNRTYv+viY4nZvOhN6G4bY6DoNdWIIteV4a9x3EiQLcUfoYaMQaJMSVzULN5DcMLiFmuOs0yCzxxPNPViZZ2UTWIiIJ9AQihndfMb3gs8e3wk4bZ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c98c0b6-bb53-45eb-acbc-08d75761ec43
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 02:37:18.1857 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UMuLBW6G/PU57RrzReqMrwSH8LI/fVPwhgyv15wYjD7dyZ9nZmJIT7roFaf9pXJsbo3Zr5hwR35vZmgqSQHaaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3899
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_193722_947277_682366E6 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Ping again, it has been 3 months passed.

> Subject: RE: [PATCH V15 1/5] dt-bindings: fsl: scu: add thermal binding
> 
> Ping...
> 
> > Hi, Daniel/Rui/Eduardo
> > 	Could you please take a look at this patch series?
> >
> > Anson
> >
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > >
> > > NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as system
> > > controller, the system controller is in charge of system power,
> > > clock and thermal sensors etc. management, Linux kernel has to
> > > communicate with system controller via MU (message unit) IPC to get
> > > temperature from thermal sensors, this patch adds binding doc for
> > > i.MX system controller thermal driver.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> > > ---
> > > No change.
> > > ---
> > >  .../devicetree/bindings/arm/freescale/fsl,scu.txt        | 16
> > ++++++++++++++++
> > >  1 file changed, 16 insertions(+)
> > >
> > > diff --git
> > > a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > index a575e42..fc3844e 100644
> > > --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > @@ -155,6 +155,17 @@ Required properties:
> > >  Optional properties:
> > >  - timeout-sec: contains the watchdog timeout in seconds.
> > >
> > > +Thermal bindings based on SCU Message Protocol
> > > +------------------------------------------------------------
> > > +
> > > +Required properties:
> > > +- compatible:			Should be :
> > > +				  "fsl,imx8qxp-sc-thermal"
> > > +				followed by "fsl,imx-sc-thermal";
> > > +
> > > +- #thermal-sensor-cells:	See
> > > Documentation/devicetree/bindings/thermal/thermal.txt
> > > +				for a description.
> > > +
> > >  Example (imx8qxp):
> > >  -------------
> > >  aliases {
> > > @@ -222,6 +233,11 @@ firmware {
> > >  			compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
> > >  			timeout-sec = <60>;
> > >  		};
> > > +
> > > +		tsens: thermal-sensor {
> > > +			compatible = "fsl,imx8qxp-sc-thermal", "fsl,imx-sc-
> > > thermal";
> > > +			#thermal-sensor-cells = <1>;
> > > +		};
> > >  	};
> > >  };
> > >
> > > --
> > > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
