Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2B032B0A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 10:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=rs9MSO6WqbCxAl2yCh791o4MdkC6mpmUJPL3QyJVv2A=; b=RlgaozKbPpO498
	4Ors7gTFb29Mby1EP6FoWc+iIpUiEd1+bnKhIb5o96BZWFCM/COdTmvGkb4P+hYguSNzeDkZ4LWXi
	1LwS6T8k4O4IlIBxIRW+URMZLwip5Z4EY+H9/GlIWAZi2MVEhlxVn4bOgz4nXaLga2rTSVcTnxNDa
	Fff//dmCjZfN83OiJYUza7bjda0qV73bGZcn2EUhnTXeIZVYJl5iIZQXG2pvGWy/jx8hBudQnXghh
	ThW6eNZkolk6fHZ4tp3fZcceGuYh2mYFgnyUj7nh3gzfPqBBotXgRdD9YfNLbZZxaVSGzFCm9+/lq
	VzhRuVOfEERmVXHeaCpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXiau-0003eC-4W; Mon, 03 Jun 2019 08:45:28 +0000
Received: from mail-eopbgr60050.outbound.protection.outlook.com ([40.107.6.50]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXian-0003dh-02
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 08:45:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GsRZSm4Q5uwPKH6PCtg57Kl8pOILzAAs4yb0cXdQ9S4=;
 b=SVJsieYMD3RVfQG3XIh8/o8j3wdB7AJ0XWb/Z0KbqLFJPZZKF/GYRciIAtdlwKs1Nn3Bw0UVgRVccwyJoIbYdkvjeHrln82D9RQCEJsAqxHnj+Ec0G0pgdWP/rUo1BqJoiZZS/CvSeWFAn/iDRE1QaxNot8CxR6x3bGhKh6prkk=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB5405.eurprd04.prod.outlook.com (20.178.121.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.21; Mon, 3 Jun 2019 08:45:16 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1%7]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 08:45:16 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "maxime.ripard@bootlin.com"
 <maxime.ripard@bootlin.com>, "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>, "enric.balletbo@collabora.com"
 <enric.balletbo@collabora.com>, Aisheng Dong <aisheng.dong@nxp.com>, Jacky
 Bai <ping.bai@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH V2 2/3] clk: imx: Add support for i.MX8MN clock driver
Thread-Topic: [PATCH V2 2/3] clk: imx: Add support for i.MX8MN clock driver
Thread-Index: AQHVGaxdHZzNGD6lS0CX40Io7wcnXg==
Date: Mon, 3 Jun 2019 08:45:16 +0000
Message-ID: <VI1PR04MB5055D6EB38E84E370E881425EE140@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <20190603013503.40626-1-Anson.Huang@nxp.com>
 <20190603013503.40626-2-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [192.88.166.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20ad664a-a97c-4f7d-92bd-08d6e7ffcd1f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5405; 
x-ms-traffictypediagnostic: VI1PR04MB5405:
x-microsoft-antispam-prvs: <VI1PR04MB54057A5A759C2315741C96B9EE140@VI1PR04MB5405.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:85;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(39860400002)(366004)(136003)(199004)(189003)(73956011)(66946007)(5660300002)(8936002)(256004)(33656002)(53936002)(110136005)(81166006)(66476007)(64756008)(55016002)(66446008)(68736007)(4326008)(81156014)(66556008)(9686003)(229853002)(6246003)(316002)(186003)(76116006)(91956017)(6436002)(7416002)(26005)(8676002)(52536014)(99286004)(7736002)(53546011)(86362001)(486006)(305945005)(44832011)(14454004)(71200400001)(71190400001)(6506007)(4744005)(7696005)(102836004)(478600001)(2906002)(76176011)(74316002)(25786009)(3846002)(6116002)(446003)(2201001)(476003)(2501003)(66066001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5405;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: b+cMDmjrLCiyDc+HtJ7JzACpOq1FoEPFi/g54Ze0MIGQlkBJcTYmhEyksME2cMiIujn+WrYBBroLp/PINgmv36VeS7BobFHKkKyQzkuUZOW7SUnKtcHf7adiJwWBgE3LJSR8IyhMeEIu3Dr6QmJBBwGerjf/nCQXbevFbn992mtIPDaVg7IUXA07lXZDNiWjaZOFkwjyIgWh1c0BBzgoEY35OWC8MUMTzHEixPPw4SqKlENVXAxiHozFghGyvPg7ODHBMKPggXWnkonrx7+5mmz2OkebyHE4/NbU1VZthuYiTiGbpnumN1j1Dn74vt31FsZuKuD8l3biTRKmcv2sEmJhkIpAihJubEaXhe7pjEZuGeSXRXyHBq6X0mgQB7HZ7iIhjc+slQppb8iOkMWafm8zUSTra7xHNt/VI9hENdc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20ad664a-a97c-4f7d-92bd-08d6e7ffcd1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 08:45:16.2239 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5405
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_014521_172253_2A8216D0 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

On 6/3/2019 4:33 AM, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> This patch adds i.MX8MN clock driver support. 

> +#include "clk.h"
> +
> +#define PLL_1416X_RATE(_rate, _m, _p, _s)		\
> +	{						\
> +		.rate	=	(_rate),		\
> +		.mdiv	=	(_m),			\
> +		.pdiv	=	(_p),			\
> +		.sdiv	=	(_s),			\
> +	}
> +
> +#define PLL_1443X_RATE(_rate, _m, _p, _s, _k)		\
> +	{						\
> +		.rate	=	(_rate),		\
> +		.mdiv	=	(_m),			\
> +		.pdiv	=	(_p),			\
> +		.sdiv	=	(_s),			\
> +		.kdiv	=	(_k),			\
> +	}

These macros are shared with clk-imx8mm (and perhaps some future chips) 
so they should be moved to driver/clk/imx/clk.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
