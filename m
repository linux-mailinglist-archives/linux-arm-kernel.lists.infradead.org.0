Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8BF57DEF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 10:11:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jciBQvodh372LE9c8vysQlwWhlBFhW1Vz4PWzxfoMm0=; b=BTd+54bDOtHkaL
	/LcDMNlsRFcc6KS7eKFnaOQvig5E/nBnT/5V4mtH468UKcrpJwioZcvQxS3CZz1NLIzTjm4pOXi1O
	Vn2aU5FRM2dkg3Do23T2P7gT+aXmVkZpiZp4pSgNDoA1pY130E7D1NiaS6DF8DELKDK8FehXovdBS
	tuSqtmr2Gm1Y9cUqCp+0Y6d8NTCDYy9KVyieKZHT5NPC6ugN35+nm0p6LwO20OrcGomCPAuDKJpta
	AFBPomQtqSRGfoe3H2uBFi58/oKAzX7lVP3mQCz22c/pUV9yzMSlY6R5AejY887CWM3I13xytCpex
	PSzH6ogoZkmnca3QZOGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgPVa-0003aE-60; Thu, 27 Jun 2019 08:11:54 +0000
Received: from mail-eopbgr150072.outbound.protection.outlook.com
 ([40.107.15.72] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgPVL-0003ZV-Be
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 08:11:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=CboDPA0u2HWSVdaaP+Df+cMpOoYieQNAXDsqrVWsbEmrJFdR+vPLOcjN1WhRWjX6ZRpZQw0pbJV8qx1hACImCsyvr/qBT+sTInHRW8uvcKFqYcEj3VecBQMb6aK5wBo6Ae1AQNOH6P4flvxifzTUwoSJy6FwCh2LTbZqOD+xa7M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OpXPcYBeYABkvaVhRdYDFSI3NN1EBjnFr6WUFBzSEU4=;
 b=moOUuVR7VxY5xCrcNteUPis53VUQYGC7yqsxY2nT606dvaYC+Z718Sbq4spnWBiU72QRR/L98RmuGjx+SFV3s7Jthd7WhcrNTKG9SlvKeGyCoNBk78s6nTh4w48aEmayjfuQnI2Tcy1TBI3pH5p6jtza1s7E5PmuNlpqwxmSQbU=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OpXPcYBeYABkvaVhRdYDFSI3NN1EBjnFr6WUFBzSEU4=;
 b=A8cp/EdwMFkNq+yO7cSXppt98E93ZjoLbDWOuNV/jfaHjSn144gxXfJi3olVrRkoJYIBD5dkBbd1+pfrQ4m65GifVrpX3707q5scA8LlIx707LOfiC4JSkYzseCH2X2owqXCBIglegX2twIyZwRYfDzBrMRzoyZOcu0FJqe3LjQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3739.eurprd04.prod.outlook.com (52.134.67.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Thu, 27 Jun 2019 08:11:35 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2008.014; Thu, 27 Jun 2019
 08:11:35 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Abel
 Vesa <abel.vesa@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "angus@akkea.ca" <angus@akkea.ca>, "andrew.smirnov@gmail.com"
 <andrew.smirnov@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH RESEND V2 1/3] clocksource/drivers/sysctr: Add optional
 clock-frequency property
Thread-Topic: [PATCH RESEND V2 1/3] clocksource/drivers/sysctr: Add optional
 clock-frequency property
Thread-Index: AQHVKcBeREE6S4ew/U+TyYIcUsyobqas4eqAgABJq2CAAJdTAIAA60fwgAB88QCAAACyYA==
Date: Thu, 27 Jun 2019 08:11:35 +0000
Message-ID: <DB3PR0402MB39162DB95FA958AC1425BFFDF5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190623123850.22584-1-Anson.Huang@nxp.com>
 <55abafbd-c010-32b5-6d76-26040830d5b0@linaro.org>
 <DB3PR0402MB3916AB9F2260B0E46CCDDEC0F5E20@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <9c017ba9-ac6b-480b-d1f3-120289343101@linaro.org>
 <DB3PR0402MB3916ED4AB17B6DDD2248DD44F5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <8f8aa6e0-5f31-8047-14b5-0e1f65316453@linaro.org>
In-Reply-To: <8f8aa6e0-5f31-8047-14b5-0e1f65316453@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3d5cc1ff-5e8d-492a-32de-08d6fad7128d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3739; 
x-ms-traffictypediagnostic: DB3PR0402MB3739:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <DB3PR0402MB3739B30A63C150BE33565C72F5FD0@DB3PR0402MB3739.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 008184426E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(346002)(39860400002)(376002)(136003)(189003)(199004)(6306002)(305945005)(6116002)(102836004)(486006)(256004)(3846002)(476003)(74316002)(81166006)(11346002)(81156014)(446003)(2201001)(229853002)(8936002)(76176011)(68736007)(44832011)(53546011)(66066001)(99286004)(316002)(2906002)(53936002)(6246003)(26005)(2501003)(110136005)(7696005)(186003)(7736002)(9686003)(6506007)(33656002)(55016002)(966005)(7416002)(8676002)(52536014)(45080400002)(66946007)(64756008)(66476007)(76116006)(14454004)(86362001)(71190400001)(478600001)(66556008)(66446008)(73956011)(71200400001)(4326008)(25786009)(6436002)(5660300002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3739;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AlD9QqCkGnSQYgMHKwikhLLn4MJ1YbFnxb/gupeuHgAwNlG+MKKBUxw89fAA1T7qrKtptinaCCa3l4v4rjAh9pcFAs2Ez+fvMAQcgRQwiyJEc6+nFL15kmkdUsTXdOYPuFDo1hBaXNcYzW6T6lrx2mpO+WCXWbHG/ru67DTnkxG1FArzBvxF1bMDCHlhJj37AYt38px7IF9eM7ucIC4hwW4Kdgx6ZMYRAwwYS5XIy68k5jprCr0y/HOxrVnEPRg/H4eMJectCcwIM/FvUc4JlmjxGqdr+wbrER80YG8fwXlrDE2CHHHetvOOCqzNMWbstx4fYQFkoXjFgbQlcVwUsQMsi3dp0wk73aLMwp4rpDl1XQlecyYEFSTx31gwPoC4degnX43bKHF6Vq7PIH6vYq1idMZ6kkwM8Y2NMSn8gww=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d5cc1ff-5e8d-492a-32de-08d6fad7128d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2019 08:11:35.5220 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3739
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_011139_502178_FA4340A1 
X-CRM114-Status: GOOD (  19.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi, Daniel

> On 27/06/2019 02:43, Anson Huang wrote:
> > Hi, Daniel
> >
> >> On 26/06/2019 03:42, Anson Huang wrote:
> >>> Hi, Daniel
> >>>
> >>>> On 23/06/2019 14:38, Anson.Huang@nxp.com wrote:
> >>>>> From: Anson Huang <Anson.Huang@nxp.com>
> >>>>>
> >>>>> Systems which use platform driver model for clock driver require
> >>>>> the clock frequency to be supplied via device tree when system
> >>>>> counter driver is enabled.
> >>>>>
> >>>>> This is necessary as in the platform driver model the of_clk
> >>>>> operations do not work correctly because system counter driver is
> >>>>> initialized in early phase of system boot up, and clock driver
> >>>>> using platform driver model is NOT ready at that time, it will
> >>>>> cause system counter driver initialization failed.
> >>>>>
> >>>>> Add the optinal clock-frequency to the device tree bindings of the
> >>>>> NXP system counter, so the frequency can be handed in and the
> >>>>> of_clk operations can be skipped.
> >>>>
> >>>> Isn't it possible to create a fixed-clock and refer to it? So no
> >>>> need to create a specific action before calling timer_of_init() ?
> >>>>
> >>>
> >>> As the clock must be ready before the TIMER_OF_DECLARE, so adding a
> >>> CLK_OF_DECLARE_DRIVER in clock driver to ONLY register a fixed-clock?
> >>> The system counter's frequency are different on different platforms,
> >>> so adding fixed clock in system counter driver is NOT a good idea,
> >>> ONLY the DT node or the clock driver can create this fixed clock
> >>> according to
> >> platforms, can you advise where to create this fixed clock is better?
> >>
> >> Can you point me to a DT with the "nxp,sysctr-timer" ?
> >
> > The DT node of system counter is new added in 3/3 of this patch
> > series, also can be found from below link:
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> >
> hwork.kernel.org%2Fpatch%2F11011703%2F&amp;data=02%7C01%7Canson.
> huang%
> >
> 40nxp.com%7C8b9519ecceb346712be808d6fad675e4%7C686ea1d3bc2b4c6f
> a92cd99
> >
> c5c301635%7C0%7C0%7C636972196338405582&amp;sdata=sOQQzDFxoCqe
> VuHFuYPHh
> > F8Bdj2Zu9WS7Go%2FV9lrWa8%3D&amp;reserved=0
> 
> Sorry, I was unclear. I meant a patch with the timer defined using a clock as
> defined currently in the binding (no clock-frequency).

OK, for i.MX8MM, we use clocks, check below patch series:

https://patchwork.kernel.org/patch/11008519/

code piece as below:

+			system_counter: timer@306a0000 {
+				compatible = "nxp,sysctr-timer";
+				reg = <0x306a0000 0x30000>;
+				interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_SYS_CTR>;
+				clock-names = "per";
+			};

Thanks,
Anson.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
