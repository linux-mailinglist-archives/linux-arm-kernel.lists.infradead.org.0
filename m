Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9674A4FF53
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 04:26:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xsmiSNijIJr5aR8Axtutvwfy9+rmn8hH2aTR7YJrv2c=; b=KONqCZ96Aek4Iv
	JNVw94qqsbgTNZdKK1qkoki0E84nFNwn0p1SaP9QpD1rsXCnP2THFYnohKfrT606gt9tpmzdIfg+W
	TvHLP+2K+bL6NoXX3sDeBqlaOyDPH4/yRl2A1gjb8n+2n3v/0X5XhRZi7Nw69CdXIZWlm/WX2YLCs
	+qmW+3mps0ebetbxA3QEDVGxO+hTUeEOUKvSL8dxjT7OyHmWp18o8ndXZW5qkMgOzTaqErWMl+UvD
	wLr5W+afSmKq1jxRD81pg/UDUXAYRJjZ+ydtMLimJByi1Q4s69Iv8sE7Fs6v7iV7xljNW6h4MtUxt
	ExEsJvpTFaIrYGpgQb0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfEga-0003AJ-4R; Mon, 24 Jun 2019 02:26:24 +0000
Received: from mail-am5eur02on0624.outbound.protection.outlook.com
 ([2a01:111:f400:fe07::624]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfEgL-00039P-Cc
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 02:26:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fuwY5M+LhzNtMX2fFp8HUfde8HKxnfuq2nGJMebwqwU=;
 b=a4YAHAC0xcpOdCkgp9SYHAH6PhncGSGV1mXnGE0PKHmxGXFduoWQY9JIM4axmq8ZW8MP1IfTGQGbNEfR4/Q7Q+t3zvR9iU1VEzn+i2WHQeSxc8bjPBcJ1pnyLXuTcQRlUNf5hptuEyv2jkCg/IoGod+Ua6Ikjh5+z9zzMz0PN4o=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3739.eurprd04.prod.outlook.com (52.134.67.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Mon, 24 Jun 2019 02:26:05 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2008.014; Mon, 24 Jun 2019
 02:26:05 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 1/4] arm64: Enable TIMER_IMX_SYS_CTR for ARCH_MXC platforms
Thread-Topic: [PATCH 1/4] arm64: Enable TIMER_IMX_SYS_CTR for ARCH_MXC
 platforms
Thread-Index: AQHVJ/+7WzrDWTethU+K40MoFm49OKaqFzaAgAAA3XA=
Date: Mon, 24 Jun 2019 02:26:04 +0000
Message-ID: <DB3PR0402MB39160E3867ACE054098229B8F5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190621070720.12395-1-Anson.Huang@nxp.com>
 <20190624022200.GN3800@dragon>
In-Reply-To: <20190624022200.GN3800@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d46b71f9-bafe-4f40-67d5-08d6f84b4f05
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3739; 
x-ms-traffictypediagnostic: DB3PR0402MB3739:
x-microsoft-antispam-prvs: <DB3PR0402MB37393993549361114AB166C4F5E00@DB3PR0402MB3739.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 007814487B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(346002)(39860400002)(136003)(396003)(189003)(199004)(13464003)(102836004)(229853002)(256004)(6116002)(446003)(11346002)(305945005)(74316002)(7696005)(476003)(9686003)(6506007)(81166006)(81156014)(68736007)(486006)(44832011)(54906003)(66066001)(76176011)(55016002)(3846002)(7736002)(53546011)(6436002)(53936002)(2906002)(316002)(99286004)(6246003)(8936002)(4326008)(26005)(186003)(33656002)(8676002)(7416002)(25786009)(66556008)(66446008)(52536014)(73956011)(76116006)(66946007)(66476007)(64756008)(14454004)(5660300002)(86362001)(71200400001)(71190400001)(478600001)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3739;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: upGZ5zHy7wHyBNgNGSgusdrvfpokECAdTlBCyOGj3SDwOnG/HIzSkn46DZp6TPldXqiXxQU5oZDQYAIVeVZyEfhom1MK6PgwGj9/OTbnh6KXhgrO8rIvTpO73JG1W4m54V3Do+hvdqdKp9O2V7Oq4sjt8PKnwuZLJO3XDLrllndOL2WGQIX35hWk+B1mi/USsF8upM/9+xeAZqZcMo0RkSsRLF4Q+SKCBCn71XKTFT75PTOlCBShGsd6D714lnLeCIIESM+2yloIIvZMUIpHP6SZolCOJ95S8omL8yv7g0G9ty8BpHG6Oa8wSmOrWuLfCeIwOfV6STbkAIUxfe8Y9scH67ZpM+x6V0FU+gPtmWEMYukYFwy7uR72ETm+RQDCmwSXoTXZPGHTtociXVzC3UkNKD/Bzl0KvX3pQ9G0+w8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d46b71f9-bafe-4f40-67d5-08d6f84b4f05
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2019 02:26:04.9924 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3739
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_192609_440009_D4886AEC 
X-CRM114-Status: GOOD (  18.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, Jacky Bai <ping.bai@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Monday, June 24, 2019 10:22 AM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: catalin.marinas@arm.com; will@kernel.org; robh+dt@kernel.org;
> mark.rutland@arm.com; s.hauer@pengutronix.de; kernel@pengutronix.de;
> festevam@gmail.com; mturquette@baylibre.com; sboyd@kernel.org;
> Leonard Crestez <leonard.crestez@nxp.com>; Aisheng Dong
> <aisheng.dong@nxp.com>; Jacky Bai <ping.bai@nxp.com>; Daniel Baluta
> <daniel.baluta@nxp.com>; Peng Fan <peng.fan@nxp.com>; Abel Vesa
> <abel.vesa@nxp.com>; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; devicetree@vger.kernel.org; linux-
> clk@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH 1/4] arm64: Enable TIMER_IMX_SYS_CTR for ARCH_MXC
> platforms
> 
> On Fri, Jun 21, 2019 at 03:07:17PM +0800, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > ARCH_MXC platforms needs system counter as broadcast timer to support
> > cpuidle, enable it by default.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  arch/arm64/Kconfig.platforms | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm64/Kconfig.platforms
> > b/arch/arm64/Kconfig.platforms index 4778c77..f5e623f 100644
> > --- a/arch/arm64/Kconfig.platforms
> > +++ b/arch/arm64/Kconfig.platforms
> > @@ -173,6 +173,7 @@ config ARCH_MXC
> >  	select PM
> >  	select PM_GENERIC_DOMAINS
> >  	select SOC_BUS
> > +	select TIMER_IMX_SYS_CTR
> 
> Where is that driver?

The driver is drivers/clocksource/timer-imx-sysctr.c, similar function as GPT.

Thanks,
Anson

> 
> Shawn
> 
> >  	help
> >  	  This enables support for the ARMv8 based SoCs in the
> >  	  NXP i.MX family.
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
