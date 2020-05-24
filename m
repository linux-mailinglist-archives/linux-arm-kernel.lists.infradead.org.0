Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 524E91DFC27
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 02:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xSrC/5NR4EV+cIGPg9lIxlEZ2msFKOAclhYU4vk/1mM=; b=GhnMDs83jpHp+w
	S4DoKY+AG+MFsiQzWkePw93r6cgjyKcOPr/Pc1NJhF5RJ6Ycf3H103mk7lsyXrLZaOkR7Ht/nCNuG
	81caas6Bq86eiFItYSAScbDOsiVRO2SFidqkskUus/sXFWNmJ8Kv2qw1Ssxumv2RH7CBi9KM1ohs5
	KqHVpWKHo++mo0S1eFs/pC7XRJwsh/PNzJ1aVKDE5XUzLqIAL4Vmb97Vs8Kwn/MhmBoH9s9hyEl88
	OJiFRJ+Twib5wbJfduGPzUcmwKoe+H0W70xtM4b4s1femyC4rNftmfQiG8CzgbDdWjBDBfICozwmQ
	QKO2ZPRsxTCKtbP82WIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jceqc-00084G-NZ; Sun, 24 May 2020 00:50:38 +0000
Received: from mail-vi1eur05on2076.outbound.protection.outlook.com
 ([40.107.21.76] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jceqQ-00083e-Fe
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 00:50:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ggK61/lUqX0Z25uAIeWyl8VS852e1TdwrYANYBZs077x/vtgpRYECt8jkwJ4P1FvWDMOkvKZfsTZtTNSCCnSkXqCdU/5HsCwKznBnYCKEgX83c83vKcSbZvu//lAV9TTnifuOCuImwWN0Da6HhKVwpmf3vAA6y3odMLUR9/w8CVldT16lqh4+NsHD9VuH929Hh+63fA2ymepT+KOXOFSkcnE3VAImuvzKls2UoO0BlkMgtffCtoLpZh7J1X3yYF6d7VjHzhtcMHGr1BIMCkgL1qu92I1yxyxl8mF/5ybDwUkLAHUZh4YimK4hjZ8T/mJ+3O7wDcb3fHcIkr3veGhzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qPL44lVymTyWLhw9zXFHJU2EZePqi1ZW+3lUvlfGpW8=;
 b=BS7uibF0xu+yIT2awCsZzOwyg2j8uEH0QDMXIFXrPq2vhnagJ/7JvccDd1v0XUEa+3wO2+HxIFE0E0g3lyhK5pJiGt4o2UzSfY6Y0JJJiTvGOeUxQPNTlZry0OOZCjRAF4yJSipADx/DdhpEX7h66u0YhkZjdHpl0V8PjMXLce6sl8jexISzLA8ohSKuR6JCRi0EOGuZJ8U3NL++7EB3WAJw+KEUFpuFNTzM6DHawworPcEUjrqrvAbxnfmMBMLuVraYj+0CNarfNfzyKExNV8sxDwQL4WmrJxMVdL0QS2o/ZisO9MlFQB9NctWNt2evbX0SedsK1aTDxignOyMztg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qPL44lVymTyWLhw9zXFHJU2EZePqi1ZW+3lUvlfGpW8=;
 b=GUaE0KGVQWxGfCjOm0/PTX/ezKMNvN2KGRTb1x7t6pp+SB7n75z3jLFWanKXyHGk56B137WR37EI55QjhWUcKfHn7cCimjoDHGU1Y4K+al94BdnyLtuh3fvrJu+NNcE68SEpEHi+Eo+nzCa3ihYR6BHkEU5zcwOqQovDr2Vy55Y=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3835.eurprd04.prod.outlook.com (2603:10a6:8:3::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Sun, 24 May
 2020 00:50:18 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3021.027; Sun, 24 May 2020
 00:50:18 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "rui.zhang@intel.com"
 <rui.zhang@intel.com>, "amit.kucheria@verdurent.com"
 <amit.kucheria@verdurent.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] thermal: imx8mm: Add get_trend ops
Thread-Topic: [PATCH] thermal: imx8mm: Add get_trend ops
Thread-Index: AQHWKNOp8EPkl0qqRkG+GoQWiQOYA6i0bHgAgABvx3CAAM7gAIAAy+Lw
Date: Sun, 24 May 2020 00:50:18 +0000
Message-ID: <DB3PR0402MB39167D71ED6979FC33D3747DF5B20@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1589338689-15700-1-git-send-email-Anson.Huang@nxp.com>
 <fccf4197-d0ca-f313-8f70-000ef4731033@linaro.org>
 <DB3PR0402MB3916B6D11328A036BD479D39F5B50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <6a4d31e4-8a24-2e9f-aa49-bec8258ead4c@linaro.org>
In-Reply-To: <6a4d31e4-8a24-2e9f-aa49-bec8258ead4c@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7949d8a6-e582-459a-511d-08d7ff7c6e14
x-ms-traffictypediagnostic: DB3PR0402MB3835:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38356832CC0F0B910FCEAA03F5B20@DB3PR0402MB3835.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0413C9F1ED
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Sl89vu6/G9XVgjvW1Cq0FROUSCHAIbcr4wOBRkGx+zoxEifk5NpTkCL7TeItiNfqdaQkDu57tp7E7cTmEL7vTCoYh27QpP0KkuG1UW1snL57Gp+TCl+kFSwAElcRDBKPuK7tCXHi4R1FnZhYxjPTyxWD8rYn1nOTYPl3LMVlqdULXbZGgO3XoLmxUEUsMcXxvewIonuakMgffuOCB3dDAUFPyOrmmyJ6eSjovceQxBO682OKAmlbKa/EVnNKIyLq/cxeeRWF91XujsVsExQc0MudOJ5VXd5I4uwaJ25REmPwsbyBtHyb5fOURolLNXhSnAbPRL9AFZs+jwXmS1mA5ahC7hIyCR4IZiAUGvejjhh6w9DHOHZ6xfO4t2nzhEJz/mgTxx21pgHu0lOxIUxYBg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(376002)(366004)(396003)(346002)(26005)(33656002)(186003)(71200400001)(64756008)(5660300002)(66946007)(76116006)(66446008)(66476007)(44832011)(66556008)(52536014)(478600001)(86362001)(8676002)(4326008)(2906002)(9686003)(7416002)(55016002)(110136005)(6506007)(8936002)(7696005)(53546011)(316002)(32563001)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: IoGjZ3w63PqJMbDZx5ygZu2IKqmKVzxg/bqbvTRta+vt73MLhURm86zO9wha1ekQOaoNa5VWuSCHfL3YRIsHX287gHVcYhgAJwIfPKf6RGVxTNqlYv/wr8gXmKsL54QDVXFLjfrj7Z2gIG0Bqa4K1geZuLEfRNqzlMtvN823kN7w4seWmnPDekzPV0tuQkqKqC2YFs3QrxdXcIeVDKorwd7t1Wn5QKLHuvyItEtzgPXyINXqkxETeB2vPg/SH6yhZ0Kn4hVjGLx2o7X8lX+4xHYZSO/CL6lqcX4z39H/fXW7RIRIqDgAK1c1xLG4zmMxeQjWvuQVCS1ULkDmeMxwkPnVSNDHwm/d6MP8lGShk7cJ0tlOFjJj2rOG5p5rwnKO5uZgIl5dUn/qjBL847EGpaZg6rRzM4I5Jbn/scYMa+w58lG6DjiAR3VGBXt53q2kODvYC3tD+kuejab3NuBL6o1c3avMd+KnB7iA1GULZ40=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7949d8a6-e582-459a-511d-08d7ff7c6e14
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2020 00:50:18.2498 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HFHgszfVlpGhWKJab4DhElTJVcD6W3HDGrieUZWGagjsp1gbHmAJqidw44hLh7EQWS+JNhwoH4kMUryLrcoIJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3835
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_175026_573344_D7EB88BB 
X-CRM114-Status: GOOD (  20.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.76 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.76 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi, Daniel

> Subject: Re: [PATCH] thermal: imx8mm: Add get_trend ops
> 
> On 23/05/2020 02:35, Anson Huang wrote:
> > Hi, Daniel
> >
> >
> >> Subject: Re: [PATCH] thermal: imx8mm: Add get_trend ops
> >>
> >> On 13/05/2020 04:58, Anson Huang wrote:
> >>> Add get_trend ops for i.MX8MM thermal to apply fast cooling
> >>> mechanism, when temperature exceeds passive trip point, the highest
> >>> cooling action will be applied, and when temperature drops to lower
> >>> than the margin below passive trip point, the lowest cooling action
> >>> will be applied.
> >>
> >> You are not describing what is the goal of this change.
> >
> > The goal of this change is to make sure whenever temperature exceeds
> > passive trip point, the highest cooling action will be applied
> > immediately, e.g., if there are many cpufreq OPP, the default cooling
> > will be step by step, it will take some more rounds to make cpufreq drop to
> lowest OPP, while on i.MX, we expect the cpufreq drop to lowest OPP
> immediately.
> 
> Whatever the slope of the temperature increase?

Yes.

> 
> >> IIUC, the resulting change will be an on/off action. The thermal zone
> >> is mitigated with the highest cooling effect, so the lowest OPP, then
> >> the temperature trend is stable until it goes below the trip - margin
> >> where the mitigation is stopped.
> >
> > Yes, your understanding is correctly, once the temperature exceeds
> > passive trip point, the highest cooling action will be applied
> > immediately and then it will be stable there until temperature drop to
> > trip - margin, then the cooling action will be cancelled, the margin is to avoid
> the back and forth near the passive trip point.
> >
> >>
> >> Except, I'm missing something, setting a trip point with a 10000
> >> hysteresis and a cooling map min/max set to the highest opp will result on
> the same.
> >
> > Yes setting cooling map min/max cooling state to highest OPP will make
> > the highest cooling action applied immediately, and to have the
> > function of cooling action being cancelled when temperature drops to
> > trip - margin, I have to define another trip point, say passive trip
> > point is 85000, and cooling map min/max set to highest OPP in passive
> > trip point then add another trip point named "active" with 75000, and
> without any cooling map in it, right?
> 
> May be I misunderstood but only the change as below is needed. No need to
> add a trip point, especially an 'active' trip which is a for an active cooling
> device like a fan.
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index cc7152ecedd9..bea263bd06b4 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -231,10 +231,10 @@ cooling-maps {
>  				map0 {
>  					trip = <&cpu_alert0>;
>  					cooling-device =
> -						<&A53_0 THERMAL_NO_LIMIT
> THERMAL_NO_LIMIT>,
> -						<&A53_1 THERMAL_NO_LIMIT
> THERMAL_NO_LIMIT>,
> -						<&A53_2 THERMAL_NO_LIMIT
> THERMAL_NO_LIMIT>,
> -						<&A53_3 THERMAL_NO_LIMIT
> THERMAL_NO_LIMIT>;
> +						<&A53_0 2 2>,
> +						<&A53_1 2 2>,
> +						<&A53_2 2 2>,
> +						<&A53_3 2 2>
>  				};
>  			};
>  		};
> 
> 

Thanks, I will have a try to see if it meets our expectation.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
