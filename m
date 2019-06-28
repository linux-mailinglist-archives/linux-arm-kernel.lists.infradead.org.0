Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBDF59686
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 10:54:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jxwusqfkW0R+iuM27CarbFt9wWMZltA8zhktFLdypho=; b=geIKsr1TSIH9M1
	HknK7KSAZBXEuREkb/Xi139QgdnQyiYGggJXncxOnoV2a31ZYM9CEO9o83xTz/b/KFpZIrYr7xqd2
	d9/TiqLWwB+Kx6cvigdT0u2QWJGAQRpNMUP9Wm+K0DAjSDfV+v/HTNOOfueC/aA0SWKCCIyjdor6+
	dWLMr9CsYntxX8CURAJnnm3l+qEDP8BG6HBdrLjFLZ06s6dVZNJbm8ufZiRWpJ/a0LFkEJnbOfv0I
	koGF3Dy7LKp77hAdbo3XghLxoejB7cvq6p7uDp6YTmz12rr3kN/XukwgZsH+1dsREBPXC/CoqirUO
	MlwC1SVwCZvvRinrpYag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgmee-00019f-Mk; Fri, 28 Jun 2019 08:54:48 +0000
Received: from mail-eopbgr150051.outbound.protection.outlook.com
 ([40.107.15.51] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgmeE-00015t-5s
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 08:54:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=j8KJHSgclwFdRTJKUyyvFtDwYD8MtF093L6zANnfxDJ82aaXIbUNFoP6KgzDv0FmCYySZCDbgdN9WKDm8BlE8xrc8Nx2Rtz4Y2VDiZBKhDXd7rFxzFzi5eEP2ADjbAuWvAAQgfTBoOcMATRkW5go3GPYyJhxoHxZllpLckvC/Xg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u+nzyl4zUiJgq2+bT9fuohbdG8XIoMf5/qIeiHjPpzo=;
 b=uoMHusDyyvDzjDJpOx1PMxewF+LaKJkMxqmmlKYFPjcLu7WlwwvU4xQ0DMNkF2dJTNexFtqcKol/EGM5XXKPUrbeld3MoP7R1Jrb/ekJyXzkzKmDOxLu213g0YoNCs0oc2s/nG+UPWJ5jUhUootsuXhIaXZVFXCaJ5vbjJ4+uO0=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u+nzyl4zUiJgq2+bT9fuohbdG8XIoMf5/qIeiHjPpzo=;
 b=ptixmngYCB1kaQsOPMcF9pRSO0/qTfOnRxck1KdFsWDPFcVPzzx5clO2gbPbT8FZ13+Y0iQO1J1JQYWVRfiUwpxxuIUolVLIwzCBRESGuqnwPdyzfpBcis8p4lgB30IxofoFdU273Yy3G2fMlOR7esWc/GQ3pVct8Qou3BWdh5E=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB5043.eurprd04.prod.outlook.com (20.177.40.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Fri, 28 Jun 2019 08:54:17 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367%7]) with mapi id 15.20.2008.014; Fri, 28 Jun 2019
 08:54:17 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Martin Kepplinger <martink@posteo.de>
Subject: Re: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Thread-Topic: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Thread-Index: AQHVH4Y/3naZJOmQTkOgrNdQmlNuA6apM84AgAerR4A=
Date: Fri, 28 Jun 2019 08:54:17 +0000
Message-ID: <20190628085417.vezkoizip75yjjpl@fsr-ub1664-175>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
 <d217a9d2-fc60-e057-6775-116542e39e8d@posteo.de>
In-Reply-To: <d217a9d2-fc60-e057-6775-116542e39e8d@posteo.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f8338b45-768b-4efc-fdff-08d6fba63439
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5043; 
x-ms-traffictypediagnostic: AM0PR04MB5043:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR04MB5043F62F7252DA8694073F2CF6FC0@AM0PR04MB5043.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00826B6158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(346002)(396003)(39860400002)(376002)(366004)(136003)(199004)(189003)(43544003)(14454004)(81166006)(6246003)(6916009)(316002)(8676002)(6506007)(66476007)(5660300002)(9686003)(76176011)(11346002)(8936002)(73956011)(81156014)(6436002)(53936002)(91956017)(2906002)(6116002)(44832011)(229853002)(53546011)(561944003)(66556008)(66446008)(3846002)(6512007)(99286004)(64756008)(66946007)(54906003)(6306002)(7416002)(66066001)(446003)(68736007)(1076003)(25786009)(102836004)(71200400001)(86362001)(71190400001)(6486002)(33716001)(186003)(76116006)(966005)(305945005)(7736002)(4326008)(26005)(256004)(45080400002)(476003)(478600001)(486006)(7520500002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5043;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AKdqmSXD0EbCOW7BgjT5uOXWsjXDik2qgStOFbR6qgRz7bpsk+zaROHWc9LqgSnAz28BB6M0eHuiCeKzs81DsbtUtA9OqzLxkZWGJ6F4IbzT5S97Q9KdzfVzViMcDX2lpMCBSy69JEnlARO/q4wYQBc3daX1TUoLvctaZK353YvUmbCmmpH1IlyN1eyXPuScsFI8CN+BoQ2OCSJ6aPtuT26oHv6GXavycM6JgQKAZu1y1Gf4VwIOBIAvkI/xJbNw0IE8U7yUu5e+sj+2fouRmq/iprUxRrLmBWOyDt0TCFatSQgQbm8OxEH+Ym9OVdF8+m5X+dETMpmti8VeU7EGXKjvlFWn3bU+vqIfkuHEpDi5aHa/MIpp9SP5nFtiaB/0oCwYYQYgssi69K1BkTTZuBWOjCU8vYRjLO0+ErU5x+M=
Content-ID: <6BD94CD1034C6640B6DAF68681C673F5@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8338b45-768b-4efc-fdff-08d6fba63439
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2019 08:54:17.7863 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abel.vesa@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_015422_410753_BEE22CB1 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Abel Vesa <abelvesa@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-06-23 13:47:26, Martin Kepplinger wrote:
> On 10.06.19 14:13, Abel Vesa wrote:
> > This is another alternative for the RFC:
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.org%2Flkml%2F2019%2F3%2F27%2F545&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7C6c9d12c1017745750e3908d6f7d0935a%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636968872531886931&amp;sdata=DAN3TVPD%2FaQzseYUYAjsnfQM6odM1x8qzsVVslFXAnY%3D&amp;reserved=0
> > 
> > This new workaround proposal is a little bit more hacky but more contained
> > since everything is done within the irq-imx-gpcv2 driver.
> > 
> > Basically, it 'hijacks' the registered gic_raise_softirq __smp_cross_call
> > handler and registers instead a wrapper which calls in the 'hijacked' 
> > handler, after that calling into EL3 which will take care of the actual
> > wake up. This time, instead of expanding the PSCI ABI, we use a new vendor SIP.
> > 
> > I also have the patches ready for TF-A but I'll hold on to them until I see if
> > this has a chance of getting in.
> 
> Let's leave out of the picture for now, how generally applicable and
> mergable your changes are. I'd like to reproduce what you do and test
> cpuidle on imx8mq:
> 
> When applying your changes here and the corresponding ATF changes (
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2Fabelvesa%2Farm-trusted-firmware%2Ftree%2Fimx8mq-err11171&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7C6c9d12c1017745750e3908d6f7d0935a%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636968872531886931&amp;sdata=nB%2FYGkuRrJYwoBJ1afTjIhoadn9Pn3c2QqRFnShWS0c%3D&amp;reserved=0 if
> I got that right) I don't yet see any difference in the SoC heating up
> under zero load. __cpu_do_idle() is called about every 1ms (without your
> changes, that was even more often but I'm not yet sure if that means
> anything).

You will most probably not see any change in the SoC temp since the cpuidle
only touches the A53s. There are way many more IPs in the SoC that could
heat it up. If you want some real numbers you'll have to measure the power
consumtion on VDD_ARM rail. If you don't want to go through that much trouble
you can use the idlestat tool to measure the times each A53 speends in cpu-sleep
state.

> 
> What I also see is that I get about 10x more "arch_timer" (int.3, GICv3)
> interrupts than without your changes.
> 
> What am I doing wrong? I'd be happy to test, again, regardless of how
> acceptable the workaround is in the end.
> 
> thanks,
> 
>                                   martin
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
