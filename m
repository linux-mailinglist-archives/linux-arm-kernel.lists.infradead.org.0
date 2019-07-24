Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3C77253A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 05:17:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HYa/cOiexiT49orf4jFR3Wx5LnSbRIABMYdQyVuxelM=; b=P1nbZdvOiznxtM
	tasijWncOmJCsfP+f1WhzmOVxYzCUAWryhU2lWrvRWDzE1rqctF4HWLURLeGcS2tvhxSTC+57D7AW
	xCF/n24oL3fn/173YeWOtvJTB+eOEh3QsJsUv9LdYUpLKP89CZ1Ya8DEN3L9hviaMy3J+7bIcXReB
	uBgjErnZlpwdu9aaJTDBKaRC3L4aC0Ln6KJb4Ebj8f1x0aZ9+M2y3bMwVe4pLhgSPDpncil7KPofd
	0QtIgXVIFISQ3Jti9Q95eP45XZEWCu9Qram7IT0iTFHYG7IKaEqCu2d0EQZPEvjjevLbz0dyeIJNQ
	qi1783FkNuXSW35pz13A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq7mM-0006nT-O2; Wed, 24 Jul 2019 03:17:22 +0000
Received: from mail-eopbgr40058.outbound.protection.outlook.com ([40.107.4.58]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq7m8-0006mo-GO
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 03:17:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n8qcp6rPfc7/zvm5FT4pwVD+0AtEG4mpGkDmJ7Bp871psDAMZ1o4rsuTedG/2Dnu9WNa1UTbmqBjfNvs5f+xnnAYdgkBvFMJTX0xgHdfQ4+osW0dTfurlbIgxqNm2HTQrgzpPN0860UoqGdLTPFjWEVO/DgOgBwOI7m9oYmc1R2FjAJuDcDBt1b1vP0crK+4E523i3nJyawMfgFHb2HJHH5UKTkAC20reazgRjQ23pVoroz5MPNfmUnIoa/mDdGFseQ68800qs3++cU0ERvF5JTTt/KPg+PUxQ2TTiWgN/GgXWWzKWGzq2uJF2kB42HXGP5jVwdlEswpuosQ+Gaquw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F4s6gOeuodSoyUOPUAU23lLZHe+QbUK8IOOoLOZxYCk=;
 b=PK4zgwDWETOoyVN6+OySX+PTmUEoKOTjTYMXXEI/NFm5tyHwDcfUvYj2fXvGi1lu/UPCOwasmJ+Hw86QLGI2PzjxpZCgyd7Zm1SkU+LoJ/nA/5ApnRd17N/ka3oFYBqzYTPkB12fFq8gGOvcr0MJnyjtixnIXQN4cDQ3oUvVF47FUyl7stK6X63Q6+bM71QXFXkUYEfqaiItcsp/Ai/RnRih1YYd5azcsjsiZ3gH3KamRoi2XUqdcqYHoj76uwYvm9vLmoLdhkYJ2ayCQy3JSSpw9/CkEdY3sT8HMCh9cqxv+LegfY1EMSFFgGZJP0U/fKNddhSupcymBUm7VTgfDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F4s6gOeuodSoyUOPUAU23lLZHe+QbUK8IOOoLOZxYCk=;
 b=N/ryaTxl7yn6LUEGEJM+VvHdpKO94DT6NuUf1JN3OBFWxUUona36WunMS7Sc+9kUZsvUiNurEa8s9IwtmtJUAMUUMUYn44rKyvkHQ/1Qu8gO6/G9PXy3R7OqTt90+44E+jlukKfW7VHT2W9joYI32EQIObxN1yDF8xNTlvG9PuM=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3769.eurprd04.prod.outlook.com (52.134.71.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Wed, 24 Jul 2019 03:17:00 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2094.017; Wed, 24 Jul 2019
 03:16:59 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "corbet@lwn.net" <corbet@lwn.net>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>, "rui.zhang@intel.com"
 <rui.zhang@intel.com>, "edubezval@gmail.com" <edubezval@gmail.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>, Aisheng Dong
 <aisheng.dong@nxp.com>, "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Peng Fan <peng.fan@nxp.com>, "mchehab+samsung@kernel.org"
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
Thread-Index: AQHVJXvnLQPj9qjL2U2LZTWuyBDONqaqeq9ggC7WvJA=
Date: Wed, 24 Jul 2019 03:16:59 +0000
Message-ID: <DB3PR0402MB39162EB555CD7AE75D58C582F5C60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190618021820.14885-1-Anson.Huang@nxp.com>
 <DB3PR0402MB39162C5B5AF828B127DD871EF5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB39162C5B5AF828B127DD871EF5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 31936f57-d2e2-4326-9e48-08d70fe5643a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3769; 
x-ms-traffictypediagnostic: DB3PR0402MB3769:
x-microsoft-antispam-prvs: <DB3PR0402MB37696D24A8E05080CFCC8D18F5C60@DB3PR0402MB3769.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0108A997B2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(346002)(136003)(39860400002)(366004)(199004)(189003)(9686003)(14454004)(55016002)(53936002)(6436002)(33656002)(7416002)(478600001)(305945005)(7736002)(74316002)(2501003)(256004)(44832011)(446003)(2906002)(11346002)(486006)(476003)(66066001)(3846002)(6116002)(186003)(26005)(6506007)(102836004)(68736007)(81166006)(8676002)(81156014)(76176011)(8936002)(229853002)(316002)(71190400001)(71200400001)(110136005)(99286004)(7696005)(2201001)(6246003)(25786009)(4326008)(66446008)(76116006)(52536014)(66946007)(5660300002)(66476007)(66556008)(86362001)(64756008)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3769;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Bj1vxS/qyAckNIUkEfG27smZ76qHrrvIwsf02G4wQrsroiaKC48WWpYmJdQYatEf5WDSXzFN1nxXEE/ag86VSGE+//6P1BkNRP1NxJJN9dMW/fKXByXNbEW7Ty0uyYcX3nhg4OQjCD+1Z2fhN2JVKqgDJQTSTO1yoFq69GwIfq/d5U7Yao4nEeN0eYAREEXDXVOX4ZJQk1naWtDePXOsbgHUQ4MbxlhO1ZLqMiCHeyCdgBd3AmGRoMmvaFRi8ydwVlJRpX0vwmDek5hULQQc6Seeefan+PLMOsgTH/eFEDnI0ikNuR7U0hbMNnxnuQ3CCePai6hmSXhWZRe6j0mjZegEtjOUzGzU7DaHI2iRFt6zEBvOsGvOz+BtbvhfQvqVbCpUD9PoXqe1RiOQGy4nEiRAaZp8YcDw8V7yrWVAhNM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31936f57-d2e2-4326-9e48-08d70fe5643a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2019 03:16:59.9045 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3769
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_201708_553221_83912EF5 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Ping...

> Hi, Daniel/Rui/Eduardo
> 	Could you please take a look at this patch series?
> 
> Anson
> 
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as system
> > controller, the system controller is in charge of system power, clock
> > and thermal sensors etc. management, Linux kernel has to communicate
> > with system controller via MU (message unit) IPC to get temperature
> > from thermal sensors, this patch adds binding doc for i.MX system
> > controller thermal driver.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> > ---
> > No change.
> > ---
> >  .../devicetree/bindings/arm/freescale/fsl,scu.txt        | 16
> ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> >
> > diff --git
> > a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > index a575e42..fc3844e 100644
> > --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > @@ -155,6 +155,17 @@ Required properties:
> >  Optional properties:
> >  - timeout-sec: contains the watchdog timeout in seconds.
> >
> > +Thermal bindings based on SCU Message Protocol
> > +------------------------------------------------------------
> > +
> > +Required properties:
> > +- compatible:			Should be :
> > +				  "fsl,imx8qxp-sc-thermal"
> > +				followed by "fsl,imx-sc-thermal";
> > +
> > +- #thermal-sensor-cells:	See
> > Documentation/devicetree/bindings/thermal/thermal.txt
> > +				for a description.
> > +
> >  Example (imx8qxp):
> >  -------------
> >  aliases {
> > @@ -222,6 +233,11 @@ firmware {
> >  			compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
> >  			timeout-sec = <60>;
> >  		};
> > +
> > +		tsens: thermal-sensor {
> > +			compatible = "fsl,imx8qxp-sc-thermal", "fsl,imx-sc-
> > thermal";
> > +			#thermal-sensor-cells = <1>;
> > +		};
> >  	};
> >  };
> >
> > --
> > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
