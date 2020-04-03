Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D0D19D005
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 08:04:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNpcIY4n1zi9Kmzfj7im04SH4Tnk0DDTQa9R7kd50Uk=; b=MBkx63z9HGJuOC
	yVHK0FPFC/LycxLpPiqtpkRGnfQUTefM0Vha9ziFwRRH0Au1lm0EpjcUqtLEs38WOZgThrFu23L6p
	yFjdPAk/vdnx4ZAk4VwIF5WHU96W0xiDAaApBhzOLyrc4cY1axsJ28PF81Joj+ziv6eYvk5d2X0/L
	AfK1gLyA4LmajkR0uu8fHPfhgLisICbhmxXjdZ2/cU8UsFNNmHMx0XPucX/RBfWZkBS4SW4g/f7PP
	SjD2AmamMSx7ZtEQufjxhvQav+g9CEFRTI7jqdfr1quDY4qRMCbAgf/TfpTydHNOKhYepr9onKLjZ
	q+rycsSCvHlZ62SB7HLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKFRb-0000ye-5m; Fri, 03 Apr 2020 06:04:43 +0000
Received: from mail-vi1eur05on2087.outbound.protection.outlook.com
 ([40.107.21.87] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKFRQ-0000xc-UC
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 06:04:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QGk1S7tmKARpMBEfEUUZaIKKwilLVKwzLSGGr4CXAXT2FujaSuv397AKcccPsV4wZAc0iXpVAxrocR0AlvTgJ2OZnYEmvkkbUXfPyHmV+PhTu8Z4FinyARUnFwIybLodW/6LkSwd9lObR+TG8lYlQXMXDS2e33o9hd3doxzvyjWCDaMun8LinaFifRze9w1F3leIIfrjPyW0w8Qz/dOxwsNX0zbpV6ne/ekdIVhNvLBz7CNn7TTBasQKQtFGSbgs/NVd0jUMGpATKPfHlV8rohiX9iunjA0+ZOJ4kVJ4ZYnTbJLvuzPc6EtApsj7HU0S9A6ldGAJgCBACrGu5JiS4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tIN5dNIlvs69Rn4pahqWgK0da1Wui7pgdYrlq1liUGc=;
 b=R7w55taEmbK4bsaBg27xqKuZ0ffiYSZCemhK+Fy1Ifmi+CPeIsEO7qMLoHOpxgb4/c/iFXa2bbxTBFJsv2ZH9wszGa6+9uD93/qFGddfGeV1X2IhMbdpxKOx4W6IBmBxjcYXp0bDd4srCpvSGxjm4DmY+0yzy2aV5/eHwEC23LsurTh9Sko+GejLRa/xqqflhyFUYjVV76W0Z7JER9kN8/uCPCT64l0VZnd3MUK7aUhE3olIW7rOKrjfwqhUjxkVizrqsu6iC7+d7H3lZVKj1F8WMuKgo+SnHkH1PEMtm0aecv8oEzHDg3r/bb80G+Neft6CmTNPXKO6mYB8mBZcUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tIN5dNIlvs69Rn4pahqWgK0da1Wui7pgdYrlq1liUGc=;
 b=nB5lwJTrkKWttP5Fu+ALI2BRith7v1zypWc3BrmCcWauOzhikgY2geWmeQQT5ccutX5h47oL775xAugEAGOchYW9kuqXLY2POMPypGdnnqnV0WWrwDQKF5V31U5hrdrlaa9aRXSr4kvMBlIDnNMqVzC3hQn8z23C+Uxc3wIKSrA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3739.eurprd04.prod.outlook.com (2603:10a6:8:6::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Fri, 3 Apr
 2020 06:04:28 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2878.017; Fri, 3 Apr 2020
 06:04:28 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Amit Kucheria <amit.kucheria@verdurent.com>
Subject: RE: [PATCH V3 3/3] arm64: dts: imx8mp: Add thermal zones support
Thread-Topic: [PATCH V3 3/3] arm64: dts: imx8mp: Add thermal zones support
Thread-Index: AQHWAQ+QtAia75yS0Eqy8vkWi4oyW6hltAKAgAEav0CAACVmgIAABLNA
Date: Fri, 3 Apr 2020 06:04:28 +0000
Message-ID: <DB3PR0402MB391651B42ABEBCF29F8AB4E3F5C70@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1584966504-21719-1-git-send-email-Anson.Huang@nxp.com>
 <1584966504-21719-3-git-send-email-Anson.Huang@nxp.com>
 <CAHLCerNG3ZBbWrTwXxCbd1BOfyHxuvpAuo5tW_bNKgWcO5zESA@mail.gmail.com>
 <DB3PR0402MB3916AF241DE20AB9CCE1A4C2F5C70@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAHLCerMEn7g3a-MG9xiiLKMUCLXjKRiuZ_wMjRjPJCXvDMzDdA@mail.gmail.com>
In-Reply-To: <CAHLCerMEn7g3a-MG9xiiLKMUCLXjKRiuZ_wMjRjPJCXvDMzDdA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 28dad147-79b2-4fe6-c4e7-08d7d794de97
x-ms-traffictypediagnostic: DB3PR0402MB3739:|DB3PR0402MB3739:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB37394ADA379FFE5832254055F5C70@DB3PR0402MB3739.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 0362BF9FDB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(366004)(396003)(39860400002)(136003)(376002)(6916009)(6506007)(33656002)(81166006)(2906002)(8936002)(71200400001)(86362001)(5660300002)(316002)(8676002)(53546011)(4326008)(54906003)(44832011)(64756008)(76116006)(26005)(7696005)(66446008)(66556008)(66476007)(9686003)(81156014)(7416002)(478600001)(55016002)(186003)(52536014)(66946007)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S4JN3Tni2GBOpXp/ZsFVkX21FtOHGwRW9EEGLB2JJtPOLtibHmHhvMe79LsOeABKK8mHnJVmB5nLHXP0SKPavvLu4OSB07eNvKkmBSVH2E/OgeIXcSYFQep0b1RkP1aAL4rbhAXZ+jQu3gisAFvFy7Dqz7gLxGy8oPGki92FQ65l2snJKUDQE5NFHtjn1aHnyHLsCYKqY6/Wn/DGks+v6QEcsV6CgPPgRREhz8pnALkjHdKbF0LPEjw9ZMLsqwd+uWXGGwe8HOhW4TjSf67EtWgjQnlVsSonMHk+ty5Wf0JF/430QIbNCREsWR5kpNGvmzS5/aLJn9ReIHK+l0Tkh9kQ4nj/8Jbj50xUXl3/xJvl0IxSdPq99gP1OJQGhOFfgCEvt34KRXGEPjtKoLV91f9azeaK3s/PuLJe9QG3cOML8bskjE+ceKtQLjD+BfFBds6807jyyqQ8wmgj2btR3mBehPCkFfvJKpK7ryTUhzzNSbM2ZclGfdZWRxW0Tlsp
x-ms-exchange-antispam-messagedata: CkDzBa6NA7Y3fIW3i3asETPWFqcxhppjedHR0frSt9cyeDOMxFS+02ZtQB14eQtKWEVOzYUkm5uPMBmg3JDQjbhET0PkuS2mQ0s8tetz8tiHmoihbCWNTH8yUobSYFNZcDA0pF42pMHF4xZ9023H6A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28dad147-79b2-4fe6-c4e7-08d7d794de97
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2020 06:04:28.4125 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kn5ABukaC/UZh5yRXPouxzdzbfIJk/XCl9Tb8ZImB3Y0wGe9LC4dw5IeyzA1W4/qzoYe7CQfICmMW/fD7OpBgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3739
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_230433_078108_12FF8312 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.87 listed in list.dnswl.org]
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
> On Fri, Apr 3, 2020 at 9:04 AM Anson Huang <anson.huang@nxp.com> wrote:
> >
> > Hi, Amit
> >
> > > Subject: Re: [PATCH V3 3/3] arm64: dts: imx8mp: Add thermal zones
> > > support
> > >
> > > On Mon, Mar 23, 2020 at 6:05 PM Anson Huang
> <Anson.Huang@nxp.com>
> > > wrote:
> > > >
> > > > i.MX8MP has a TMU inside which supports two thermal zones, add
> > > > support for them.
> > > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > >
> > >
> > > [snip]
> > >
> > > >
> > > > +       thermal-zones {
> > > > +               cpu-thermal {
> > > > +                       polling-delay-passive = <250>;
> > > > +                       polling-delay = <2000>;
> > > > +                       thermal-sensors = <&tmu 0x0>;
> > >
> > > No need for 0x0, just use 0
> >
> > OK.
> >
> > >
> > > > +                       trips {
> > > > +                               cpu_alert0: trip0 {
> > > > +                                       temperature = <85000>;
> > > > +                                       hysteresis = <2000>;
> > > > +                                       type = "passive";
> > > > +                               };
> > > > +
> > > > +                               cpu_crit0: trip1 {
> > > > +                                       temperature = <95000>;
> > > > +                                       hysteresis = <2000>;
> > > > +                                       type = "critical";
> > > > +                               };
> > > > +                       };
> > > > +
> > > > +                       cooling-maps {
> > > > +                               map0 {
> > > > +                                       trip = <&cpu_alert0>;
> > > > +                                       cooling-device =
> > > > +                                               <&A53_0
> > > THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > > > +                                               <&A53_1
> > > THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > > > +                                               <&A53_2
> > > THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > > > +                                               <&A53_3
> > > THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> > > > +                               };
> > > > +                       };
> > > > +               };
> > > > +
> > > > +               soc-thermal {
> > > > +                       polling-delay-passive = <250>;
> > > > +                       polling-delay = <2000>;
> > > > +                       thermal-sensors = <&tmu 0x1>;
> > >
> > > No need for 0x1, just use 1
> >
> > OK.
> >
> > >
> > > > +                       trips {
> > > > +                               soc_alert0: trip0 {
> > > > +                                       temperature = <85000>;
> > > > +                                       hysteresis = <2000>;
> > > > +                                       type = "passive";
> > > > +                               };
> > > > +
> > > > +                               soc_crit0: trip1 {
> > > > +                                       temperature = <95000>;
> > > > +                                       hysteresis = <2000>;
> > > > +                                       type = "critical";
> > > > +                               };
> > > > +                       };
> > >
> > > You need a cooling-map here since you have a passive trip point.
> >
> > Currently, there is no cooling map defined for soc thermal zone, the
> > cpufreq cooling is mapped to cpu thermal zone already, so do you think
> > it is OK to leave it as no cooling map, or it is better to put cpufreq cooling for
> soc thermal zone as well?
> >
> 
> If there is no cooling, why do you need a passive trip point? Just make it a hot
> trip that will send you a nofication (if .notify callback registered).

OK, understood, I prefer to keep the passive trip point same as cpu thermal zone,
so I will also put the cpufreq cooling map for soc thermal zone.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
