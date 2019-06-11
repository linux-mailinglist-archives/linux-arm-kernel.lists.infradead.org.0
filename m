Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 622F23C123
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 04:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJ4evzSF3m/GRw3w9P03zAsKowJvj/BI2GghVBS2o/E=; b=dXQea1roCDT4Mj
	BMpA2v6HLo+SBTB9VMwHIZ9ajavNuK+7z8lnHoK0CFoIMtqIVTd9UhFfRyTi0z4aPbnvOzYNTOPhu
	kpWHYYH1tvv/1PIDIPr2FidpsJfeMmpzYkWjE8z4r8iGgIz/I/v2XCwhOlHKG7/VW0yJeYitrzpL/
	3w5yuBh9Lgy8P9j6NcCiHi24OjfWrdlmv29UEA1FHRT4LfBAkdpnNDHCJkpaGSTkeYFYXvKiHj3ir
	1VGhweUdnG+TrZFUmoLObQmSzo23UNHXU6TI+kkEiHhmi8b3lUCbvr2Qh4UD6NqiGJL5cRE/3wToX
	1X8kMu6Gwu5PR3UO293A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haWBO-0007VF-Ep; Tue, 11 Jun 2019 02:06:42 +0000
Received: from mail-ve1eur03on0610.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::610]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haWB8-0007Uq-V9
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 02:06:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dl3ekszaQfZzI5NRoWgR3VZKIKIISkyZ6KSzujafmCg=;
 b=HYRuW4/gmPubF5K5ImMy5jNok1AQXcr8mmvR5H0KYBcdrpF/R5UdhHw4lOBRVTTHQ8btxSd8jnd9KU3KF2eftAYeJaXkl51+cHM0/2lypCzUoYv9mHY9azlRiA3ab+yjsA97ve0mK/Ntjv4iifxJdwwl0Ccvm1BwL/0ov24yo/E=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3785.eurprd04.prod.outlook.com (52.134.71.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.10; Tue, 11 Jun 2019 02:06:22 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1965.017; Tue, 11 Jun 2019
 02:06:22 +0000
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
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "s.hauer@pengutronix  .de"
 <s.hauer@pengutronix.de>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>, Abel Vesa <abel.vesa@nxp.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>, Leonard
 Crestez <leonard.crestez@nxp.com>
Subject: RE: [PATCH V3 3/4] clk: imx: Add support for i.MX8MN clock driver
Thread-Topic: [PATCH V3 3/4] clk: imx: Add support for i.MX8MN clock driver
Thread-Index: AQHVGnjztvJ1Vzt1002Z3uISz7VXoaaO1AeAgACJypCAASMQAIABCS1ggAN/YICAALOT4A==
Date: Tue, 11 Jun 2019 02:06:22 +0000
Message-ID: <DB3PR0402MB3916F7F7D7CA801F5C0D0610F5ED0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190604015928.23157-1-Anson.Huang@nxp.com>
 <20190604015928.23157-3-Anson.Huang@nxp.com>
 <20190606162543.EFFB820645@mail.kernel.org>
 <DB3PR0402MB391625A0B3D838CE88C53E33F5100@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190607180039.611C7208C0@mail.kernel.org>
 <DB3PR0402MB391678C245944942EA2A7F62F5110@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190610151425.D8139207E0@mail.kernel.org>
In-Reply-To: <20190610151425.D8139207E0@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b8d19663-d653-4edc-4b52-08d6ee116706
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3785; 
x-ms-traffictypediagnostic: DB3PR0402MB3785:
x-microsoft-antispam-prvs: <DB3PR0402MB37857DEE6789ED940D83EC38F5ED0@DB3PR0402MB3785.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 006546F32A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(376002)(396003)(39860400002)(346002)(189003)(199004)(13464003)(7736002)(44832011)(8676002)(305945005)(53936002)(81156014)(81166006)(7416002)(66066001)(486006)(476003)(8936002)(256004)(14444005)(33656002)(11346002)(446003)(2501003)(6246003)(74316002)(52536014)(186003)(76116006)(14454004)(73956011)(102836004)(26005)(55016002)(25786009)(68736007)(5660300002)(9686003)(316002)(478600001)(2906002)(229853002)(66446008)(64756008)(66556008)(66946007)(66476007)(6636002)(99286004)(71190400001)(71200400001)(110136005)(2201001)(86362001)(7696005)(53546011)(4326008)(6436002)(76176011)(6506007)(3846002)(6116002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3785;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eGWjbRIUEekwg2Vw0bO3G47VjXw86Rb2Sd4k/zMyBneLSQzwDTJFVEvAtguBhUbhZ+i5cjHwT8+58FXA8r72j82Ytq5ZCeWZ9TP/9RPD77fb/gIUnYY7k0VucQv2rcp22fyZ+9q7bpiLfzIyO2JQ7oZO3QTmhFvieK8hhwB1zkrqwdm105Wh9PwudDbcH8yqXqidJhQ2+xEL1jLOi0Ai8cQxAwFGeoPgetw/Yv7yxkC8yb8pxN2RmP9nVDMFBZjBGTdM4Fl30CTOcMekU9lnnjIUGV9h2Lg+Xxzb/Lv6Iq8Aq37dvId6fgaQUyGg9X2tbKz1S90elGy3yWHTsooQrjrWlPMm1Ima5FyAptFq04c+uAAIhZjmppDySwUJmlBNDcLb/r0yDy/IbLAyFbkL+5JNXrEW2kGyKXQCEuXdGK8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8d19663-d653-4edc-4b52-08d6ee116706
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2019 02:06:22.8894 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3785
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_190627_294218_16CC16DD 
X-CRM114-Status: GOOD (  21.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:610 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi, Stephen

> -----Original Message-----
> From: Stephen Boyd <sboyd@kernel.org>
> Sent: Monday, June 10, 2019 11:14 PM
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
> Quoting Anson Huang (2019-06-08 02:58:18)
> > Hi, Stephen
> >
> > > -----Original Message-----
> > > From: Stephen Boyd <sboyd@kernel.org>
> > > Sent: Saturday, June 8, 2019 2:01 AM
> > > To: bjorn.andersson@linaro.org; catalin.marinas@arm.com;
> > > devicetree@vger.kernel.org; dinguyen@kernel.org;
> > > enric.balletbo@collabora.com; festevam@gmail.com;
> > > horms+renesas@verge.net.au; jagan@amarulasolutions.com;
> > > kernel@pengutronix.de; l.stach@pengutronix.de; linux-arm-
> > > kernel@lists.infradead.org; linux-clk@vger.kernel.org; linux-
> > > kernel@vger.kernel.org; mark.rutland@arm.com;
> > > maxime.ripard@bootlin.com; mturquette@baylibre.com; olof@lixom.net;
> > > robh+dt@kernel.org; s.hauer@pengutronix .de
> > > robh+<s.hauer@pengutronix.de>;
> > > shawnguo@kernel.org; will.deacon@arm.com; Abel Vesa
> > > <abel.vesa@nxp.com>; Aisheng Dong <aisheng.dong@nxp.com>; Anson
> > > Huang <anson.huang@nxp.com>; Jacky Bai <ping.bai@nxp.com>;
> Leonard
> > > Crestez <leonard.crestez@nxp.com>
> > > Cc: dl-linux-imx <linux-imx@nxp.com>
> > > Subject: RE: [PATCH V3 3/4] clk: imx: Add support for i.MX8MN clock
> > > driver
> > >
> > > Quoting Anson Huang (2019-06-06 17:50:28)
> > > >
> > > > I will use devm_platform_ioremap_resource() instead of ioremap(),
> > > > and can you be more specific about devmified clk registration?
> > > >
> > >
> > > I mean using things like devm_clk_hw_register().
> >
> > Sorry, I am still a little confused, all the clock
> > register(clk_register()) are via each different clock types like
> > imx_clk_gate4/imx_clk_pll14xx, if using clk_hw_register, means we need
> > to re-write the clock driver using different clk register method, that
> > will make the driver completely different from i.mx8mq/i.mx8mm, they
> > are actually same series of SoC as i.mx8mn, it will introduce many
> confusion, is my understanding correct? And is it OK to just keep what it is
> and make them all aligned?
> >
> 
> Ok, the problem I'm trying to point out is that clk registrations need to be
> undone, i.e. clk_unregister() needs to be called, when the driver fails to
> probe. devm_*() is one way to do this, but if you have other ways of
> removing all the registered clks then that works too. Makes sense?

Yes, it makes sense. Do you think it is OK to add an imx_unregister_clocks() API, then
call it in every place of returning failure in .probe function? If yes, I will add it and also
fix it in i.MX8MQ driver which uses platform driver model but does NOT handle this case. 

        base = devm_platform_ioremap_resource(pdev, 0);
-       if (WARN_ON(IS_ERR(base)))
-               return PTR_ERR(base);
+       if (WARN_ON(IS_ERR(base))) {
+               ret = PTR_ERR(base);
+               goto unregister_clks;
+       }

                pr_err("failed to register clks for i.MX8MN\n");
-               return -EINVAL;
+               goto unregister_clks;
        }

        return 0;
+
+unregister_clks:
+       imx_unregister_clocks(clks, ARRAY_SIZE(clks));
+
+       return ret;

+void imx_unregister_clocks(struct clk *clks[], unsigned int count)
+{
+       unsigned i;
+
+       for (i = 0; i < count; i++)
+               clk_unregister(clks[i]);
+}
+

Thanks,
Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
