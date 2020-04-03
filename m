Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF85C19CEE7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 05:34:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tBnQ7mX6LyJOs8vr9wkXmRWLEKaFZYyW1v5uHDmi5Dc=; b=lxSLH+6OLrmj5u
	pADHcdCSjLaNhAYI5mICr+mjQbJXKnT5/ORrU7SNbhoUNOIpAXck72AdLUphlZXoIvHzStYojArh9
	qBBCSk4lERSJJ1ZS1TLCn9hGuBqkI1yp160pRix9nQs+JlOPFweGOCImzycO8MGfIRHb8lZwOF1Bf
	PcKIX3gdzd6/efcjnzJx3kcEgEYVa8bW6UWxoZnaNuBUcp/Ntud2v4RLyCO5+6UNwSK6QTeu5qP/p
	lt5xyg8Ul53v0UxWai6ucvYUFY1BWmHvX5p2+0woRzPOXCwAKVzi1NJul15OGF1iibSMBFCQgp52F
	83q8Q3pXFN4uzElNYchw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKD6Q-0002zl-Ru; Fri, 03 Apr 2020 03:34:42 +0000
Received: from mail-eopbgr50083.outbound.protection.outlook.com ([40.107.5.83]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKD6K-0002yf-LA
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 03:34:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dIjHUkZPfwHGJxrLlxStFvJecddaNI5sD1d9zMGQHcEHIXsVJF2db4vN/kHrZ0TaZ9+kxKCnHn2zFkxsHCRTJtahJDqhAhYvbQJNUR8eHdig1Ykua/Z5svYyI3g/lUyFUVscrXs7yW/ChFJedkTCajBrocEQHLm8vAOAvUAJAV69JTykKHz1PL7RLybTzLJQcmGSTca49lrmtLhZMNEPu/LQ2oGzkAkYUJALHzGUwkapIKFDRVKMjUl83YfQX0njZ3tx+xVd9WOXEBuCEnbZq+CAXjEwCDAz51bcMkFb7zNYRbkBf3s4NbX0qJF/jmd3ilwCxNvvH0r0+UFUVpLTCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pKzOl2f8irD5sTtsiW7yUAcKYVOq0ZG8/EK3jjBOY3o=;
 b=AYQhq1AtvDPS2/oH8Oys1wJZ/tjZptRXboeUmSigRoJ3FhaJ2/YKLCvVMFCKLO2/2lgWIRGuOa/S373/ISgxo96LO/wjv4Ka0OllZtTq41AzVZDe2TeqpFq+7FSkY9lva6xs5JRGFWIGePAh/DkYfKl/2JgNNEJ1mjCl3OqS6zrL6Zf/6qcvPS3r8n2XjZKtWvd8g6FbpZqeVRRJfA7mDW1pEVgFrCXUow8hQvgiVF1zGSvW++o2n4cjdlNgiImCdY/oXRnwrVcYxMyY1oxw5QsZrF7ZE+FHqfgt2IMh8uiqgvaa4WI/8tpyTzDtHFBrM8hPlgNTvsMmSiiO4yuymw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pKzOl2f8irD5sTtsiW7yUAcKYVOq0ZG8/EK3jjBOY3o=;
 b=kopBYJOOeZm/vGYByI15ik9uoYbrKpGnd1sCX06diJS3Oh+5uaHeko0lqkcWzvWG78zTZSLQDSZJyN9RQ2Qfdln4xpJrrlzGXDub1ypdSHWFhYCiFdjW3qOojKOzyXhPA+22Y3ZJbvtQBnHw5wH1xwYKefrOFnr/5VFnIm/W+OE=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3882.eurprd04.prod.outlook.com (2603:10a6:8:10::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.18; Fri, 3 Apr
 2020 03:34:28 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2878.017; Fri, 3 Apr 2020
 03:34:28 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Amit Kucheria <amit.kucheria@verdurent.com>
Subject: RE: [PATCH V3 3/3] arm64: dts: imx8mp: Add thermal zones support
Thread-Topic: [PATCH V3 3/3] arm64: dts: imx8mp: Add thermal zones support
Thread-Index: AQHWAQ+QtAia75yS0Eqy8vkWi4oyW6hltAKAgAEav0A=
Date: Fri, 3 Apr 2020 03:34:28 +0000
Message-ID: <DB3PR0402MB3916AF241DE20AB9CCE1A4C2F5C70@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1584966504-21719-1-git-send-email-Anson.Huang@nxp.com>
 <1584966504-21719-3-git-send-email-Anson.Huang@nxp.com>
 <CAHLCerNG3ZBbWrTwXxCbd1BOfyHxuvpAuo5tW_bNKgWcO5zESA@mail.gmail.com>
In-Reply-To: <CAHLCerNG3ZBbWrTwXxCbd1BOfyHxuvpAuo5tW_bNKgWcO5zESA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d30f8d7a-217c-47c8-894e-08d7d77fea5d
x-ms-traffictypediagnostic: DB3PR0402MB3882:|DB3PR0402MB3882:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3882E2F9F4838A6AF050C330F5C70@DB3PR0402MB3882.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0362BF9FDB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(376002)(396003)(346002)(7696005)(8936002)(86362001)(81166006)(8676002)(66946007)(2906002)(44832011)(64756008)(76116006)(66446008)(316002)(66476007)(7416002)(6916009)(71200400001)(66556008)(26005)(5660300002)(81156014)(4326008)(6506007)(186003)(9686003)(478600001)(33656002)(52536014)(54906003)(55016002)(53546011)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IP1DWrOs1sOQ/SV0ylMggRJl8EFoRn3claRycGNxDYECaCDsCa07pU5pMRRmQphVUFyLdXEev4YCr7odtQG+jyJFHm+ijp8vYNNXr8SEDXG5K/Hw+49SvjxEWdpWH7SLscnqc5R8d5dYtuYg34XpgUHMXc4mXyljVfYw8clCA9owMpOHScFMyFW1jXGSK5sifat9MsCRylNvPe0SYxEuxn8YhHy4vzMxfsDgaH/dWJRHOIZoDYx14zsMfOzWC0SuD6/IABvVzltOS+fxTOBvHw71Tpfv0L8Ep1QUMagC5DOd3jmpdrY7neDBhwb7BQcZAE4IFdR/NthBiJardjCqEEjQre1kKrMSvOUK7bxe74Jb40oqNUQe55GG2Uo5k8uhE6JddhTW47rHsKcJQV4V5SuwTDptsOTuvNtSlDP9JUbttyJpfQgZO9mv4i43xT8IH3XHo5pjPwd+sFe+6/Jn2Eq9kN99Pkm9IxdjqiDR/aEM+DyKsrlZtZk8szMvioYh
x-ms-exchange-antispam-messagedata: vAnCz/S5jbIETDFmqD4jQIVWflEbRpz46lHRWNM33SSH/TuWLe39/QGZ9EorN+dQcCsVc+N9Jaaaei4aWuHUtNkex+F4qgrJ7yxqPjfVFXVCiejQivJR2rnyFr73mFj9+YGwoXuvQWY3GXtV1aq+ZQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d30f8d7a-217c-47c8-894e-08d7d77fea5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2020 03:34:28.8401 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PQD/oo0W6t0lNTx5LMCUqCijbIqSqxBZPm8bnlu47QCUpl4shFXTB1UyO6J8kL/MEfyPseeI5NY8NpgNCkqviA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3882
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_203436_816615_789A290A 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Horia Geanta <horia.geanta@nxp.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Amit

> Subject: Re: [PATCH V3 3/3] arm64: dts: imx8mp: Add thermal zones support
> 
> On Mon, Mar 23, 2020 at 6:05 PM Anson Huang <Anson.Huang@nxp.com>
> wrote:
> >
> > i.MX8MP has a TMU inside which supports two thermal zones, add support
> > for them.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> 
> [snip]
> 
> >
> > +       thermal-zones {
> > +               cpu-thermal {
> > +                       polling-delay-passive = <250>;
> > +                       polling-delay = <2000>;
> > +                       thermal-sensors = <&tmu 0x0>;
> 
> No need for 0x0, just use 0

OK.

> 
> > +                       trips {
> > +                               cpu_alert0: trip0 {
> > +                                       temperature = <85000>;
> > +                                       hysteresis = <2000>;
> > +                                       type = "passive";
> > +                               };
> > +
> > +                               cpu_crit0: trip1 {
> > +                                       temperature = <95000>;
> > +                                       hysteresis = <2000>;
> > +                                       type = "critical";
> > +                               };
> > +                       };
> > +
> > +                       cooling-maps {
> > +                               map0 {
> > +                                       trip = <&cpu_alert0>;
> > +                                       cooling-device =
> > +                                               <&A53_0
> THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > +                                               <&A53_1
> THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > +                                               <&A53_2
> THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > +                                               <&A53_3
> THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> > +                               };
> > +                       };
> > +               };
> > +
> > +               soc-thermal {
> > +                       polling-delay-passive = <250>;
> > +                       polling-delay = <2000>;
> > +                       thermal-sensors = <&tmu 0x1>;
> 
> No need for 0x1, just use 1

OK.

> 
> > +                       trips {
> > +                               soc_alert0: trip0 {
> > +                                       temperature = <85000>;
> > +                                       hysteresis = <2000>;
> > +                                       type = "passive";
> > +                               };
> > +
> > +                               soc_crit0: trip1 {
> > +                                       temperature = <95000>;
> > +                                       hysteresis = <2000>;
> > +                                       type = "critical";
> > +                               };
> > +                       };
> 
> You need a cooling-map here since you have a passive trip point.

Currently, there is no cooling map defined for soc thermal zone, the cpufreq cooling
is mapped to cpu thermal zone already, so do you think it is OK to leave it as no cooling
map, or it is better to put cpufreq cooling for soc thermal zone as well?


Thanks,
Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
