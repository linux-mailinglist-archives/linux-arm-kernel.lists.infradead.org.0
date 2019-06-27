Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 394A8582DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 14:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHxHzZYFhfG86GePxaySyF4usygpgLhwRRNQimA4YJA=; b=Qd6Bb+HqgRlDqu
	x6G9Pys2ShwLWNmCFlCxNrWM8glCpPlOB4kAM05EsF9mN9RdWqZoDmPs7gAXyOwTObuBLhSheJRF3
	ul+FwgxJ+bfqGk8L6zrqpvoHfuvS18V4reQfX/ERybr0ZoE/+2HGAN5MrhWDM0FwpcwFQw75UMFHF
	p6qb6OPYPE/v/Aleo6QH43QEf2f1Q7PbaYA/FMVtqzcuyRrMNyp6sjWiahdwkZ0QtK4bKQMztTeZH
	AW7pAHPcz8/T5q+53jXr1XRWlTNqACn/gMM+0CFQ7Dwus+b7VWvyvPXMkQhAtTiYelW0DCOr80/ti
	tfxqouAbeFzXZk/rxiWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgTqg-0002HI-36; Thu, 27 Jun 2019 12:49:58 +0000
Received: from mail-eopbgr40073.outbound.protection.outlook.com ([40.107.4.73]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgTq7-0001zq-AZ
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 12:49:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=Exo7p75qBv4ys+sln9+HpecfJv3lb5Am9Ejkp2PnVFHoHvlW+oPqbq87mKRUFtCynkr+GtwH9h1LfuRZ7k1I7E/AgbSHMDQ0lfaDKMCYwGo73OMR3XcD3gXtQgeW4y9e6nwYEQrbeI/6GeO9830pKRn9Y2/uJg/P+rpVrFnix5Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KdQAiHw4DTMgueWWA1ISjWDioAUejDLkYqwz+33bSeU=;
 b=qTmGpr7+rW9pjE9co+usvodYkE0kqPxKVBBOxXvRsk6EtrcAaVNDak9DIveFZQKPwCd0M0R3FjnaxbLjQUwtap1CWoSxL2qxHOuBBBOI0FiUS1ukFn42qfCp7xomVDBBjLVHqk7WTckcHaJjGCz/8k4TDii+Vt/b5GQadYngJfc=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KdQAiHw4DTMgueWWA1ISjWDioAUejDLkYqwz+33bSeU=;
 b=Va9BmBj3BV9HKRFsWZvHveqxGnb+eh0pGoGZbpwaC+Fpplf8HvF4xnsPzanVDIg7hlTfJalcWRDQ6lAaZMUpbsvV2QtgiFBX77UDr0toa/l1ekq+7NTf4a8Rg+tPrzlcoSQ2pHIoCwcGw5EsLl/eM9HeS9A4+vTXo2Sm9WfnR9w=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3882.eurprd04.prod.outlook.com (52.134.72.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Thu, 27 Jun 2019 12:49:17 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2008.014; Thu, 27 Jun 2019
 12:49:17 +0000
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
Subject: RE: [PATCH RESEND V2 2/3] clocksource: imx-sysctr: Make timer work
 with clock driver using platform driver model
Thread-Topic: [PATCH RESEND V2 2/3] clocksource: imx-sysctr: Make timer work
 with clock driver using platform driver model
Thread-Index: AQHVKcBfH+xku/H7o0WEN8jGd5k+rqavdl+AgAACEDA=
Date: Thu, 27 Jun 2019 12:49:17 +0000
Message-ID: <DB3PR0402MB3916A7348E71A33E4746D5FAF5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190623123850.22584-1-Anson.Huang@nxp.com>
 <20190623123850.22584-2-Anson.Huang@nxp.com>
 <41ab1a50-f431-ec73-8444-11ecca1412d8@linaro.org>
In-Reply-To: <41ab1a50-f431-ec73-8444-11ecca1412d8@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.20.60]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 359d47d4-2820-476c-5483-08d6fafdddda
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3882; 
x-ms-traffictypediagnostic: DB3PR0402MB3882:
x-microsoft-antispam-prvs: <DB3PR0402MB38826742ED76716FA26B896CF5FD0@DB3PR0402MB3882.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 008184426E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(346002)(376002)(396003)(189003)(199004)(44832011)(446003)(6436002)(4326008)(53936002)(25786009)(66066001)(7416002)(33656002)(305945005)(9686003)(478600001)(486006)(229853002)(68736007)(55016002)(110136005)(6116002)(3846002)(71190400001)(2501003)(476003)(71200400001)(256004)(7736002)(66556008)(64756008)(99286004)(66946007)(76176011)(2201001)(5660300002)(73956011)(6506007)(53546011)(66476007)(81156014)(7696005)(8676002)(316002)(76116006)(86362001)(186003)(74316002)(14454004)(8936002)(26005)(2906002)(6246003)(52536014)(102836004)(11346002)(81166006)(66446008)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3882;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3oGtjZddYP9OfKQ7fZxqf2FIp3cWavQRP2PFrmYzHXKwjyXn8LBGnJ2vk0yqZ3wPzwByYrH4Gih79Mx69s0MtNMUNkj9dZvlLlmTSrpaySA6OtpL/8E5aPVzTNuwoyhDsiVU/80PsTpzmuvXfbZtRFcqw7xhwHtIBdexKKKtLY+PJRxtE0TvkCtDsyFCDPyw8/Y0RTEN3Fb2DhzzXvS2xuFXRNBiz4qY//ahFQqPCAZFD1AHh/+8124XiUr+acl8iQzdJhEC1+/eIZWkP9IhX7nJygwu3Z0rmo5tFae8JnXKd7yR9QlLFx6aho+CA/d752QJW81Kmrug33mr54TzaDRgKDVtje7OjRj1zaPor8lbPO16YYcRpnb9zXm9JO++4PUdm4BncIAy4m8BZewBPUPxgGWGNWuePYHwzYaR+iQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 359d47d4-2820-476c-5483-08d6fafdddda
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2019 12:49:17.4067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3882
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_054923_602407_DA9CCF15 
X-CRM114-Status: GOOD (  21.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.73 listed in list.dnswl.org]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Daniel

> On 23/06/2019 14:38, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > On some i.MX8M platforms, clock driver uses platform driver model and
> > it is NOT ready during timer initialization phase, the clock
> > operations will fail and system counter driver will fail too. As all
> > the i.MX8M platforms' system counter clock are from OSC which is
> > always enabled, so it is no need to enable clock for system counter
> > driver, the ONLY thing is to pass clock frequence to driver.
> >
> > To make system counter driver work for upper scenario, add an option
> > of skipping of_clk operation for system counter driver, an optional
> > property "clock-frequency" is introduced to pass the frequency value
> > to system counter driver and indicate driver to skip of_clk
> > operations.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V1:
> > 	- improve commit log, no content change.
> > ---
> >  drivers/clocksource/timer-imx-sysctr.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/clocksource/timer-imx-sysctr.c
> > b/drivers/clocksource/timer-imx-sysctr.c
> > index fd7d680..8ff3d7e 100644
> > --- a/drivers/clocksource/timer-imx-sysctr.c
> > +++ b/drivers/clocksource/timer-imx-sysctr.c
> > @@ -129,6 +129,14 @@ static void __init sysctr_clockevent_init(void)
> > static int __init sysctr_timer_init(struct device_node *np)  {
> >  	int ret = 0;
> > +	u32 rate;
> > +
> > +	if (!of_property_read_u32(np, "clock-frequency",
> > +				  &rate)) {
> > +		to_sysctr.of_clk.rate = rate;
> > +		to_sysctr.of_clk.period = DIV_ROUND_UP(rate, HZ);
> > +		to_sysctr.flags &= ~TIMER_OF_CLOCK;
> > +	}
> 
> Please take the opportunity to add the TIMER_OF_CLOCK_FREQUENCY flag in
> timer-of and the corresponding code above.

OK, so another patch for timer-of is necessary, if TIMER_OF_CLOCK_FREQUENCY flag
is present, just read the "clock-frequency" from DT instead of getting clock rate from
clock tree, right? I think this becomes a common case for timer driver, as more and more
platforms will use platform driver model for clock driver, it would be good if timer-of can
provide solution.

> 
> Then check the clock-frequency presence and add TIMER_OF_CLOCK or
> TIMER_OF_CLOCK_FREQUENCY flag to the timer-of structure.
> 
> eg:
> 
>     to_sysctr.flags |= of_find_property(np, "clock-frequency", NULL) ?
> 		TIMER_OF_CLOCK_FREQUENCY : TIMER_OF_CLOCK;
> 

OK.

Thanks,
Anson.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
