Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4374839C4C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 11:58:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HMwjp0bWlelbE/fAEeA0eb6eOGVQjLJhlKzkBQSs9Fg=; b=D9zB/oplLSTvTK
	nurYR4QniPLmT/EjINsjnDqrP0XRSW9lJxtCg3u8XIU2alpIuP3ewp+8MFIqQvi2gjy+DPS/VJoDS
	RPg3QxZnLjK2F8dXlXQIV68G3JZoyJlV7rZGO18ZobDMPOWf4qT9/63ECjsUOqG+ID/Y5bEfd/qEQ
	5u0vq7Gl2PuXVBfrg0f991oTpF791umPn2Q1YPlsefiqMyQzDU08FLsypbVdDhYF3Gs6B7+pCWSZ9
	rs49E8k/5UTeyL6NkBq7yUI9J6XRIQPpjMztoXdFZ9ye4NgyJ2bVlZqcHhXkVh2zfUbkbAtyC84+/
	oyHIIsOXowdr1sgzH23A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZY7S-0006xc-1v; Sat, 08 Jun 2019 09:58:38 +0000
Received: from mail-eopbgr20074.outbound.protection.outlook.com ([40.107.2.74]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZY7E-0006wm-G9
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 09:58:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LmgkqwBruHtNALP9L1EvNSNz6ctunYWDqlNYRr314ZM=;
 b=VSWH1xCqTpCOs5HnhOBplFq6Vnq4nUi/asxgqFS7uDThfWPEObqlXT+4aaEsEm2/AeM4Oc9Hd5oDC6rjYvTOzmzHdcjhnhyHXedrhCqfKV/EV93issJruU6kr9UUlikcUy8hLyL8jdSocdjQfmbBCVOES2i8vAkG10ghbqOOAjM=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3708.eurprd04.prod.outlook.com (52.134.70.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Sat, 8 Jun 2019 09:58:19 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1965.017; Sat, 8 Jun 2019
 09:58:19 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, "bjorn.andersson@linaro.org"
 <bjorn.andersson@linaro.org>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "horms+renesas@verge.net.au"
 <horms+renesas@verge.net.au>, "jagan@amarulasolutions.com"
 <jagan@amarulasolutions.com>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "maxime.ripard@bootlin.com"
 <maxime.ripard@bootlin.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "olof@lixom.net" <olof@lixom.net>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "s.hauer@pengutronix .de"
 <s.hauer@pengutronix.de>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>, Abel Vesa <abel.vesa@nxp.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>, Leonard
 Crestez <leonard.crestez@nxp.com>
Subject: RE: [PATCH V3 3/4] clk: imx: Add support for i.MX8MN clock driver
Thread-Topic: [PATCH V3 3/4] clk: imx: Add support for i.MX8MN clock driver
Thread-Index: AQHVGnjztvJ1Vzt1002Z3uISz7VXoaaO1AeAgACJypCAASMQAIABCS1g
Date: Sat, 8 Jun 2019 09:58:18 +0000
Message-ID: <DB3PR0402MB391678C245944942EA2A7F62F5110@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190604015928.23157-1-Anson.Huang@nxp.com>
 <20190604015928.23157-3-Anson.Huang@nxp.com>
 <20190606162543.EFFB820645@mail.kernel.org>
 <DB3PR0402MB391625A0B3D838CE88C53E33F5100@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190607180039.611C7208C0@mail.kernel.org>
In-Reply-To: <20190607180039.611C7208C0@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 79a98e75-9af9-4ef6-4430-08d6ebf7d577
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3708; 
x-ms-traffictypediagnostic: DB3PR0402MB3708:
x-microsoft-antispam-prvs: <DB3PR0402MB37080EB83064F4DFAC8CE37AF5110@DB3PR0402MB3708.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:883;
x-forefront-prvs: 0062BDD52C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(136003)(366004)(396003)(376002)(189003)(199004)(13464003)(68736007)(229853002)(74316002)(110136005)(33656002)(446003)(11346002)(476003)(486006)(316002)(44832011)(99286004)(7696005)(256004)(7416002)(76176011)(53546011)(6506007)(2201001)(2501003)(102836004)(66066001)(86362001)(71200400001)(6436002)(305945005)(7736002)(71190400001)(3846002)(6116002)(9686003)(2906002)(478600001)(8936002)(8676002)(81166006)(81156014)(14454004)(55016002)(66946007)(64756008)(66556008)(66476007)(76116006)(52536014)(4326008)(66446008)(26005)(5660300002)(6246003)(186003)(25786009)(53936002)(73956011)(6636002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3708;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bp8T1gfyDCQDOFymjsDJFPyUKIebr8ABmSChSnri2AYuILa8LgYJVfvGnYylwqDq+ilxNXD2gQQ44ijg160L4o3Rx+Bxn6H7xXfdQSsYm4a3+mMeigDEzvOCfw1/fkPAXyZJHQDIXoeathtUcgzLzgFBxkI0yfcxu7rurFMTIOgS2NiC8+vHjC3M+kEf/8OeiF4W1z3FjVHiS/Eyy46JROszZeVh6PY7tbjUXCaWBuYLa5s6k0lwQuW5w9gF8Xgz0JIlztL3weKM09KQh9jLL/CpvDzeeS/8VIGqMYexS9rSW50/zQZlIwkxsgTFmWLnK7D3D0OooQ+0zO3RMlWBB/sVe2SAe9xVB8rOrCgujLWcpKCakQYmuhrngQqksp/saeDop+0W52E56m8yhP5CNOI9gT1wl74SLUtK3VB7lbk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79a98e75-9af9-4ef6-4430-08d6ebf7d577
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2019 09:58:18.7658 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3708
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_025824_543232_1291A11F 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Stephen

> -----Original Message-----
> From: Stephen Boyd <sboyd@kernel.org>
> Sent: Saturday, June 8, 2019 2:01 AM
> To: bjorn.andersson@linaro.org; catalin.marinas@arm.com;
> devicetree@vger.kernel.org; dinguyen@kernel.org;
> enric.balletbo@collabora.com; festevam@gmail.com;
> horms+renesas@verge.net.au; jagan@amarulasolutions.com;
> kernel@pengutronix.de; l.stach@pengutronix.de; linux-arm-
> kernel@lists.infradead.org; linux-clk@vger.kernel.org; linux-
> kernel@vger.kernel.org; mark.rutland@arm.com;
> maxime.ripard@bootlin.com; mturquette@baylibre.com; olof@lixom.net;
> robh+dt@kernel.org; s.hauer@pengutronix .de <s.hauer@pengutronix.de>;
> shawnguo@kernel.org; will.deacon@arm.com; Abel Vesa
> <abel.vesa@nxp.com>; Aisheng Dong <aisheng.dong@nxp.com>; Anson
> Huang <anson.huang@nxp.com>; Jacky Bai <ping.bai@nxp.com>; Leonard
> Crestez <leonard.crestez@nxp.com>
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: RE: [PATCH V3 3/4] clk: imx: Add support for i.MX8MN clock driver
> 
> Quoting Anson Huang (2019-06-06 17:50:28)
> >
> > I will use devm_platform_ioremap_resource() instead of ioremap(), and
> > can you be more specific about devmified clk registration?
> >
> 
> I mean using things like devm_clk_hw_register().

Sorry, I am still a little confused, all the clock register(clk_register()) are via each different
clock types like imx_clk_gate4/imx_clk_pll14xx, if using clk_hw_register, means we need
to re-write the clock driver using different clk register method, that will make the driver
completely different from i.mx8mq/i.mx8mm, they are actually same series of SoC as i.mx8mn,
it will introduce many confusion, is my understanding correct? And is it OK to just keep what
it is and make them all aligned?

Thanks,
Anson.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
