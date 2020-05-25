Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4231E04D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 04:46:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qbwjyh1LPVZslZflUwalJyJvJjpgPSuCW3HsRkZnlu0=; b=sHKff8Vpk8zEIZ
	PjQDsLtSQCAaNVoHw5v2tttckHOreavhd5JgOGnNQ13xGtwh/4FD4n2+y0ricMXAlAqBH2qbkMbR0
	WFNeVqcSAXBTWwEM4KhpJtL4HtuEbfTMSKwvLLDxiGQDXaHaKIMfDgVkaig4APZPettiHa0/h0nUa
	8esJ+k47AiVyOv4bFkk76dIAeOq8ok6nXngRJn1BPc5VBrFfI0scpR2VzG1wCUWx1+oF9d+6GgGYF
	/CToJNecUoZQFqlKf4hnu24TUmEw990AabyW/Q3WJYlMxyDNsOgfeVIzR/XYCI/izSw5EksHw0lvY
	6di9Yj+eMsQsPPwqCM2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd38N-0002gc-GC; Mon, 25 May 2020 02:46:35 +0000
Received: from mail-am6eur05on2060.outbound.protection.outlook.com
 ([40.107.22.60] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd38D-0002fd-VN
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 02:46:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eZxQNwv/FitUtbldlCJe726dSCzA3oVy1p5dyr7BTUGDshhWF0CQJJ51YnFw9H6Ov2oenvua2Nyaln207CcpYIyd+m8Xmq9OgNLxkE6BkG1L+I5+KyuR1f1bxX2onqDwLgwZORnXVrJZTJSnVYY1cFmh96+/T7TkDRUn1YkT0BQPxIFaihwi8xFkzO1LAngu3Z+yLp1UPdBcMJaInoA8//fe70B30e9IavA8ekSn1HtsA4b7A/KK5hCizJwjjSXhcJdUWXthmfyhFh9lsOvilQliW9f0RauncjxMltV3daRTxXMPP/gB6bZcvOUtilPSprDLlyU9A8nhn2XHsA/r+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oYm7CIvomteqMtcpNlOG+TQbYo1aLT86RrilCIKq7Ys=;
 b=hasGO9eEJKMRvmm5UWyrCJS7+xyV+1hsiLvxeVwZSNxI+ijgOr1q6nm+KVRSKYhGkORosqyulH2o53mboyWmWiNIdOYb2ot0nHPNOIsIH4prRRYXtwdWqpYEAMxFsF3NO3fAapLswwKeCJRw2/4FrR1J+bXQpJvFb46/cMYzJVz7pbD5RfErPQH4ItMTudy/QapbWD4l01I7xuKMQhkwKttYV0dKyu6mfdSxLmxFTb4T7MPUAXqAi578Xn+zkkX2D0Wup3ROIu4H172xo5iZV/EIDHXqc0zH2WQgHLuNGi54BAC/2wnSYXR/u5VkvpVPqW81hh12sba/pgwQzBPwTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oYm7CIvomteqMtcpNlOG+TQbYo1aLT86RrilCIKq7Ys=;
 b=KDBhnJ62oehvqM0K7vhAutbAGLGqQBqcyrM7hzEy4LQ/BztUCXDwVJTRP6421UZ0t2/n797ZPQSwJE2nw11oAj1fEnx2Oamg//ixqw3bznlmZfCGjrtFjAacarLCyTGVh6+uWkHmwq7jakZs4k1E9EPqXxpIy1QGGcw/SDcPyxA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3690.eurprd04.prod.outlook.com (2603:10a6:8:c::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Mon, 25 May
 2020 02:46:19 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3021.029; Mon, 25 May 2020
 02:46:19 +0000
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
Thread-Index: AQHWKNOp8EPkl0qqRkG+GoQWiQOYA6i0bHgAgABvx3CAAM7gAIAAy+LwgAGwT5A=
Date: Mon, 25 May 2020 02:46:19 +0000
Message-ID: <DB3PR0402MB39162E6A876BA54A80B0DCE2F5B30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1589338689-15700-1-git-send-email-Anson.Huang@nxp.com>
 <fccf4197-d0ca-f313-8f70-000ef4731033@linaro.org>
 <DB3PR0402MB3916B6D11328A036BD479D39F5B50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <6a4d31e4-8a24-2e9f-aa49-bec8258ead4c@linaro.org>
 <DB3PR0402MB39167D71ED6979FC33D3747DF5B20@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB39167D71ED6979FC33D3747DF5B20@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 90d8048b-5da9-477b-053c-08d80055cd78
x-ms-traffictypediagnostic: DB3PR0402MB3690:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3690CC9CA84CBD2D52B122F8F5B30@DB3PR0402MB3690.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0414DF926F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vO+6HgBpSflHpxN6DAh1ISAjBxqms82raF6IuAROjX8xxGdZG4DQ0KGVKouhZnewMYOlw8IhDAyu0YaLMvBNTsbiHDjvjmbuHZsYg3ZkoSvWXsjc70iP/z81cwLeSVgGSL5qs9Gq0T00jlpgGTQt5qI+KnjsEzxtX7TWQqwPzULDFbgHHQ0+Mv8NlkNiZt1gymolg5rt6XRTeghd2TiQuCc4TKf4nlsLJF3fp1g6Skp6bTFDWoohKDOcHEoEiWBeWqmfv6MKE7QhH+BRAV+Y6chvUkHC/lruqhG/EjEf6pkrQ8yMqtXUBgGnWjh1B4r9Qhe0vTSdgBamjrBsbmm0TFZMLzL6cvXfW1HF8b+FkGlvXDQ1MDw05qe3E7h6eAxBcTZQpyaZGdp4YaBqd1Yj5Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(39860400002)(136003)(366004)(376002)(9686003)(55016002)(4326008)(110136005)(316002)(71200400001)(5660300002)(86362001)(2906002)(6506007)(7696005)(26005)(186003)(53546011)(8936002)(76116006)(66476007)(66946007)(52536014)(44832011)(478600001)(7416002)(8676002)(33656002)(66446008)(64756008)(66556008)(32563001)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: ilhPCSOBs3txcVm/GcOncPsvI0/XtQHv9QZGT1CUeiNDInARSXg715IGTbXM71VwE5cs8QTKdS+QQswGGsIt6NFUCTwJJUKDRRzbT5Vyi1dSidY4UveivkTuUgld0sZ1RiBYxLk/0CnQPX3C/7GYGAdB+/ryYHm2jH3Gv8zK2dfl3agmNRrVF8IRlNpyAiXLJUC1W/hEduy8IVJbFsNVCkBmGf/xOJMnZzLS+yHPrCI7vJXB/+LkkII9bGebxt5nS9pI6ss5Xy6jxHC/LMgBnUdE3wkr8H9KESJZhq5Gjp5H8GWnI3947LuUWdce6vmXz6kqqjiAf+rWCwpc681vGVsQJurDII4QO1seRkSPRdgZLGRs3jP//yweoovEhm0YslYdEYRyphuwnSLhN67tPXKVeMSS6DLVbQh7xGhZbcKqxLvFYuo/ryhq3S7KUiKQER9rmAcBCZY0p7xzQtdWCqq41T9YxGLpIApO7FbWKY8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90d8048b-5da9-477b-053c-08d80055cd78
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2020 02:46:19.1550 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fbH5oysJP1lxGOWRLf3x8MwfJHApd8hf6Q50hP0yQZ72QQwXEqtmHsQd5mLrgM2GovNlc97vmM00OEzNYWepZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3690
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_194626_012801_7D60C951 
X-CRM114-Status: GOOD (  27.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.60 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.60 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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


> Subject: RE: [PATCH] thermal: imx8mm: Add get_trend ops
> 
> Hi, Daniel
> 
> > Subject: Re: [PATCH] thermal: imx8mm: Add get_trend ops
> >
> > On 23/05/2020 02:35, Anson Huang wrote:
> > > Hi, Daniel
> > >
> > >
> > >> Subject: Re: [PATCH] thermal: imx8mm: Add get_trend ops
> > >>
> > >> On 13/05/2020 04:58, Anson Huang wrote:
> > >>> Add get_trend ops for i.MX8MM thermal to apply fast cooling
> > >>> mechanism, when temperature exceeds passive trip point, the
> > >>> highest cooling action will be applied, and when temperature drops
> > >>> to lower than the margin below passive trip point, the lowest
> > >>> cooling action will be applied.
> > >>
> > >> You are not describing what is the goal of this change.
> > >
> > > The goal of this change is to make sure whenever temperature exceeds
> > > passive trip point, the highest cooling action will be applied
> > > immediately, e.g., if there are many cpufreq OPP, the default
> > > cooling will be step by step, it will take some more rounds to make
> > > cpufreq drop to
> > lowest OPP, while on i.MX, we expect the cpufreq drop to lowest OPP
> > immediately.
> >
> > Whatever the slope of the temperature increase?
> 
> Yes.
> 
> >
> > >> IIUC, the resulting change will be an on/off action. The thermal
> > >> zone is mitigated with the highest cooling effect, so the lowest
> > >> OPP, then the temperature trend is stable until it goes below the
> > >> trip - margin where the mitigation is stopped.
> > >
> > > Yes, your understanding is correctly, once the temperature exceeds
> > > passive trip point, the highest cooling action will be applied
> > > immediately and then it will be stable there until temperature drop
> > > to trip - margin, then the cooling action will be cancelled, the
> > > margin is to avoid
> > the back and forth near the passive trip point.
> > >
> > >>
> > >> Except, I'm missing something, setting a trip point with a 10000
> > >> hysteresis and a cooling map min/max set to the highest opp will
> > >> result on
> > the same.
> > >
> > > Yes setting cooling map min/max cooling state to highest OPP will
> > > make the highest cooling action applied immediately, and to have the
> > > function of cooling action being cancelled when temperature drops to
> > > trip - margin, I have to define another trip point, say passive trip
> > > point is 85000, and cooling map min/max set to highest OPP in
> > > passive trip point then add another trip point named "active" with
> > > 75000, and
> > without any cooling map in it, right?
> >
> > May be I misunderstood but only the change as below is needed. No need
> > to add a trip point, especially an 'active' trip which is a for an
> > active cooling device like a fan.
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > index cc7152ecedd9..bea263bd06b4 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > @@ -231,10 +231,10 @@ cooling-maps {
> >  				map0 {
> >  					trip = <&cpu_alert0>;
> >  					cooling-device =
> > -						<&A53_0 THERMAL_NO_LIMIT
> > THERMAL_NO_LIMIT>,
> > -						<&A53_1 THERMAL_NO_LIMIT
> > THERMAL_NO_LIMIT>,
> > -						<&A53_2 THERMAL_NO_LIMIT
> > THERMAL_NO_LIMIT>,
> > -						<&A53_3 THERMAL_NO_LIMIT
> > THERMAL_NO_LIMIT>;
> > +						<&A53_0 2 2>,
> > +						<&A53_1 2 2>,
> > +						<&A53_2 2 2>,
> > +						<&A53_3 2 2>
> >  				};
> >  			};
> >  		};
> >
> >
> 
> Thanks, I will have a try to see if it meets our expectation.

I tried modifying the min/max to '2' in cooling map, it works that whenever cooling
action is needed, the max cooling action will be applied. But I also noticed some behaviors
which NOT as expected:

1. to easy the test, I enable the " CONFIG_THERMAL_WRITABLE_TRIPS", and just modify the
passive trip threshold to trigger the cooling action, this is much more easy then putting the board
into an oven to increase the SoC temperature or running many high loading test to increase the temperature,
but when I modify the passive trip threshold to be lower than current temperature, the cooling action is NOT
triggered immediately, it is because the default step_wise governor will NOT trigger the cooling action when
the trend is THERMAL_TREND_STABLE.
But what expected is, when the temperature is exceed the passive trip threshold, the cooling action can be
triggered immediately no matter the trend is stable or raising. That means we have to implement our own
.get_trend callback?

2. No margin for releasing the cooling action, for example, if cooling action is triggered, when the temperature
drops below the passive trip threshold, the cooling action will be cancelled immediately, if SoC keeps running
at full performance, the temperature will increase very soon, which may cause the SoC keep triggering/cancelling
the cooling action around the passive trip threshold. If there is a margin, the situation will be much better.

Do you have any idea/comment about them?

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
