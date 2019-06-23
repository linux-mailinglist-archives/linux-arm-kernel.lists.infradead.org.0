Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7204FB49
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 13:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GS1zozhTBmFV4CgtAnlHJw0BYv2zLsExrxifpzzCFis=; b=ZfMfFl1RQ0cB+r
	uLcBFKZd2U0TwylOb4r34wdUMc/tjOjOqfqOpGwm8TLvIAT8yx9EKVV7vb/As877ciIE4r7h/U+4R
	KkLhPI8UBiRoCtB3T+Ho/IZ0es58bohehTShWFfylio2xBQEaR5XoOyFHxKCZAUP1GJ2RwVGGmWEI
	Lfr75NilMK2ACFnrYkieMAXDwee05onYVgjYs8+IEmYtQwAPEWGk6QTLeS2cfEMULjfrgVRXJ2VDw
	QV2WaxAd+5HNUaO8l26L6oJpsCHVZ7bSlYEm8qgtnG6vkjeYB+nw0Cm9wTDTU2b9AB9RVAg1d0rv+
	6w1ipLOPmgDA7E9CaMNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf0hR-0001A6-Nu; Sun, 23 Jun 2019 11:30:21 +0000
Received: from mail-eopbgr140087.outbound.protection.outlook.com
 ([40.107.14.87] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf0hF-00019V-Vj
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 11:30:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2RVCvfy+Hm5NCOLI8l4YvVF000LKUlGCMnroEDwY9+c=;
 b=F0kfZLB2ZaIaXIOON5sYATJxgvmvJ45QuE6fHijI+n8FV9avQoP3rx/laHp/eQW3jICQlfitvnydXztzWIrFfLlY698AM56A/Kyy9sj9QOspGRTRztd7u/RKmGoSFE4RH1N4iK+MxK7V4V89Ryx4X1v7cDxLZKQvV8aeAduR96M=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3787.eurprd04.prod.outlook.com (52.134.73.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.15; Sun, 23 Jun 2019 11:30:06 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2008.014; Sun, 23 Jun 2019
 11:30:06 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Martin Kepplinger <martink@posteo.de>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Abel Vesa
 <abel.vesa@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "angus@akkea.ca" <angus@akkea.ca>, "andrew.smirnov@gmail.com"
 <andrew.smirnov@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 3/3] arm64: dts: imx8mq: Add system counter node
Thread-Topic: [PATCH 3/3] arm64: dts: imx8mq: Add system counter node
Thread-Index: AQHVKAsXvjXZswp9YUaGUA/T/OvzKqanug2AgAFhPQCAAAFk8A==
Date: Sun, 23 Jun 2019 11:30:06 +0000
Message-ID: <DB3PR0402MB3916E2E26F96AED711182C64F5E10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190621082838.12630-1-Anson.Huang@nxp.com>
 <20190621082838.12630-3-Anson.Huang@nxp.com>
 <6c632476-9ecd-d6cc-b543-a28576c06a0c@posteo.de>
 <8a887fee-54e7-16ac-6373-a693ec7ad944@posteo.de>
In-Reply-To: <8a887fee-54e7-16ac-6373-a693ec7ad944@posteo.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a0f5198a-9e52-4f78-1ed6-08d6f7ce2469
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3787; 
x-ms-traffictypediagnostic: DB3PR0402MB3787:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB3PR0402MB37871B6C26E691B844F6D638F5E10@DB3PR0402MB3787.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-forefront-prvs: 00770C4423
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(136003)(366004)(376002)(396003)(13464003)(189003)(199004)(8936002)(3846002)(55016002)(102836004)(53936002)(7696005)(8676002)(966005)(6506007)(81166006)(81156014)(316002)(99286004)(6246003)(26005)(33656002)(110136005)(476003)(2501003)(44832011)(11346002)(446003)(486006)(7416002)(2906002)(186003)(256004)(9686003)(305945005)(7736002)(66946007)(229853002)(45080400002)(74316002)(86362001)(53546011)(14454004)(76176011)(6116002)(478600001)(71200400001)(5660300002)(2201001)(66066001)(25786009)(52536014)(68736007)(6306002)(66556008)(71190400001)(4326008)(64756008)(66476007)(76116006)(73956011)(66446008)(6436002)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3787;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: g0FaKivABOVGBhwr1h+KBauQlEc/LoZbw1cuGSzTc7v5C9Z0pMkB8GV1LFxql+BDJGeGw57PblpAqkcOjdMEzMDxf+QsysAY68TfiYNyNcq6ot5Aumdx6TXHSffBy2l32gt4gYCCSpk4lrkOHJKtLhvzjHxUUk7S6fseUOyH2OxvJsQt1UlBv+RnUOxFVGowrs7D23kDnjUFEJSdg1bPxF5FvkbAw2Yf8gSght6za+XZYzbceenL6zf9PlL09t30SG4KKVOqNAcdtTQjJZgdxb4m4dwb95OY8Hs0hbtpFNNgzWA1aBHPljaddcvBuV9hjM8nOwqdMj4d3f38E4D5fMkUXchCLRycqVSCaxMCJE7Ohys08+zdAlfHHhjS0HYsv4VgYvW3wlIvhleO5oZ/Dle1rHOE1cZimhxS21oWFs4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0f5198a-9e52-4f78-1ed6-08d6f7ce2469
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2019 11:30:06.5096 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3787
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_043010_036601_E00800AD 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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



> -----Original Message-----
> From: Martin Kepplinger <martink@posteo.de>
> Sent: Sunday, June 23, 2019 7:21 PM
> To: Anson Huang <anson.huang@nxp.com>; daniel.lezcano@linaro.org;
> tglx@linutronix.de; robh+dt@kernel.org; mark.rutland@arm.com;
> shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de;
> festevam@gmail.com; l.stach@pengutronix.de; Abel Vesa
> <abel.vesa@nxp.com>; ccaione@baylibre.com; angus@akkea.ca;
> andrew.smirnov@gmail.com; agx@sigxcpu.org; linux-
> kernel@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH 3/3] arm64: dts: imx8mq: Add system counter node
> 
> On 22.06.19 16:16, Martin Kepplinger wrote:
> > On 21.06.19 10:28, Anson.Huang@nxp.com wrote:
> >> From: Anson Huang <Anson.Huang@nxp.com>
> >>
> >> Add i.MX8MQ system counter node to enable timer-imx-sysctr broadcast
> >> timer driver.
> >
> > with these changes and TIMER_IMX_SYS_CTR selected, I don't see cpuidle
> > working yet (which is what I want to achieve on imx8mq). Might there
> > be a system counter clock definition or anything else missing?
> >
> 
> To be clear about what I tried running: Abel's wakeup-workaround (with the
> corresponding ATF changes):
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.o
> rg%2Flkml%2F2019%2F6%2F10%2F350&amp;data=02%7C01%7CAnson.Huan
> g%40nxp.com%7C445690743187422a2d2b08d6f7ccd665%7C686ea1d3bc2b4
> c6fa92cd99c5c301635%7C0%7C0%7C636968856477185012&amp;sdata=k1Aj
> CJ5SGUYQE7VnzciihRTKgf1yi4bDaBqCCv9DzpU%3D&amp;reserved=0 plus
> your patches here (although you don't define a system counter clock, like you
> do in your imx8mm patches).
> 
> In any case, I might try to enable cpuidle totally wrong still :) and I'd be happy
> for hints and test your changes (no matter how fit they are to be merged
> right now).

Could be something else than this patch series, i.MX8MQ uses platform driver model
for clock driver, to enable system counter driver, something needs to be changed in
system counter driver, and no need to have system counter clock definition in i.MX8MQ
clock tree, while i.MX8MM uses OF_CLK as clock driver initialization, so we need system
counter clock definition.

My understanding is, even without this patch series, cpu-idle should be able to work, but
The last CPU could be always powered ON to ack as broadcast timer, if with system counter
enabled, all CPUs can be powered OFF when entering state #1 idle independently, as system
counter can be broadcast timer. Correct me if anything wrong, maybe latest upstream kernel
has something different about this part. 

Thanks,
Anson.

> 
> thanks,
>                                      martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
