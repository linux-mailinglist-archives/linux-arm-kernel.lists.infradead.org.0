Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 526CD329C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 09:39:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3AdWajzVWYzC809JoP+GBJc0Q0LKeqMF/oK0f3UCFvQ=; b=si3BJuzzuccpag
	j0yHYwkVyl/KYGBFWAlTH5Z+FmWE4EuqKGsqYREY+A6LRpXM9XPPF+KrfEX4wYYw7cE8LU+UG21Vg
	5I6ysgmlYTGh8t1lr6Op03OwzNu2uxjJ+MPfGK5IhjcFi6QqCJbQI3ceXPwp4ek6VJBqWSy0h9S/Z
	TpaOEh2exyQ40ALKytndYfjj+Pg/84wPNy740ATNUXCUBUEhSzr51h8F5I9PLeRBIVgnCLdK3izsz
	6v5H370EGOnNt+dWn3UhYKQiZhEntPDyJT7N5kq7Cr+T6GbhEfHnSVdbSf9hKBG9TYhdDvhVy97e1
	7T3VytH/ZvvI3L/RTECA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXhZ2-0005vV-Qe; Mon, 03 Jun 2019 07:39:28 +0000
Received: from mail-ve1eur01on0618.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::618]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhYv-0005v1-EK
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 07:39:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a59xJXFODoYoZ2OQ859HEp6YnMugEzWXFGbkK/dNPGI=;
 b=Gqw/Q3LG3H+9ZIsxmmgfhrD5W9yuVq76AJe0ciR4FX5Xxhe+vModpF4/g6ygQfDbsO8oXMr2YLMeRMCUxPiOE5fHyMmj02wlIpVQoPKLXSxdm7HPs0VcZPhTIcwkJtiIAja9mKUZzgveTmvpKnklZjVkQMSUsb/VKiTFetRxQxM=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3929.eurprd04.prod.outlook.com (52.134.70.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.18; Mon, 3 Jun 2019 07:39:16 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 07:39:16 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: RE: [PATCH V2 2/3] clk: imx: Add support for i.MX8MN clock driver
Thread-Topic: [PATCH V2 2/3] clk: imx: Add support for i.MX8MN clock driver
Thread-Index: AQHVGaxeLRS7zF6kSEqSfwNQzT+zYKaJiQwAgAAB34A=
Date: Mon, 3 Jun 2019 07:39:16 +0000
Message-ID: <DB3PR0402MB3916D2B09BACABB79E8989A2F5140@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190603013503.40626-1-Anson.Huang@nxp.com>
 <20190603013503.40626-2-Anson.Huang@nxp.com>
 <20190603073018.j236j57ooc7t5hp6@fsr-ub1664-175>
In-Reply-To: <20190603073018.j236j57ooc7t5hp6@fsr-ub1664-175>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d2606a84-a578-4357-dc30-08d6e7f694f2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3929; 
x-ms-traffictypediagnostic: DB3PR0402MB3929:
x-microsoft-antispam-prvs: <DB3PR0402MB39297A64556810077704F318F5140@DB3PR0402MB3929.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(39860400002)(366004)(376002)(136003)(13464003)(199004)(189003)(43544003)(2906002)(66946007)(53936002)(66066001)(99286004)(6246003)(7736002)(305945005)(76116006)(74316002)(6436002)(6862004)(68736007)(256004)(6116002)(3846002)(73956011)(86362001)(7416002)(229853002)(71200400001)(66476007)(55016002)(71190400001)(476003)(11346002)(446003)(486006)(52536014)(66446008)(8936002)(186003)(44832011)(478600001)(26005)(64756008)(66556008)(6636002)(316002)(14454004)(6506007)(8676002)(54906003)(25786009)(53546011)(102836004)(81156014)(76176011)(4326008)(9686003)(5660300002)(7696005)(33656002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3929;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: f/bekEb9A8jyb63/ZEG43qDhtDT5HnUjEML7lxQRO7rGmOiT6ypdR9KmtFFdNvcKyE9ppZO6jkyTI9VFRXbqXEpfIZ/Bs/SMmBi2DNtluC0r4UC3UTdS+RMsr9qgGWQwjYj5FjMGw7TbucHUasHVhlI3PgrODlDXBhxfaAujrUodix8l4bCrjaskAnl5rKdluW/ga1iRHMZw60231J9xqdpVPV6STXaJWpfQd+xYWm53cu6630DIPA8wXgZw7mBVAksqf8mUstW/LYNvB2C1u9YZYgOpYRnoi3I8o5vj7E3ifhCJUY7AhlGQR/fxaMsYwC/Af4xjoHbknlJDNlHM4EQMfEVuinN8POch3QgOKAG3+rn6ElhC/oQ7OK9maoZ4qNs7w6U4VPrsqj0RpVnoyBtCCUKF4pL3Pr75TAIWD2I=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2606a84-a578-4357-dc30-08d6e7f694f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 07:39:16.5609 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3929
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_003921_481746_C42C389A 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:618 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Abel

> -----Original Message-----
> From: Abel Vesa
> Sent: Monday, June 3, 2019 3:30 PM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: mturquette@baylibre.com; sboyd@kernel.org; robh+dt@kernel.org;
> mark.rutland@arm.com; shawnguo@kernel.org; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; catalin.marinas@arm.com;
> will.deacon@arm.com; maxime.ripard@bootlin.com; olof@lixom.net;
> horms+renesas@verge.net.au; jagan@amarulasolutions.com;
> bjorn.andersson@linaro.org; Leonard Crestez <leonard.crestez@nxp.com>;
> dinguyen@kernel.org; enric.balletbo@collabora.com; Aisheng Dong
> <aisheng.dong@nxp.com>; Jacky Bai <ping.bai@nxp.com>;
> l.stach@pengutronix.de; linux-clk@vger.kernel.org;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH V2 2/3] clk: imx: Add support for i.MX8MN clock driver
> 
> On 19-06-03 09:35:02, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > This patch adds i.MX8MN clock driver support.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V1:
> > 	- add GPIOx clocks.
> 
> ...
> 
> > +static struct imx_pll14xx_clk imx8mn_sys_pll __initdata = {
> > +		.type = PLL_1416X,
> > +		.rate_table = imx8mn_pll1416x_tbl,
> > +};
> > +
> > +static const char *pll_ref_sels[] = { "osc_24m", "dummy", "dummy",
> > +"dummy", };
> 
> All of these should be "static const char * const ".

OK.

> 
> > +static const char *audio_pll1_bypass_sels[] = {"audio_pll1",
> > +"audio_pll1_ref_sel", }; static const char *audio_pll2_bypass_sels[]
> > += {"audio_pll2", "audio_pll2_ref_sel", };
> 
> ...
> 
> > +	clk_data.clks = clks;
> > +	clk_data.clk_num = ARRAY_SIZE(clks);
> > +	ret = of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
> > +	if (ret < 0) {
> > +		pr_err("failed to register clks for i.MX8MN\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	imx_register_uart_clocks(uart_clks);
> > +
> > +	return 0;
> > +}
> > +CLK_OF_DECLARE_DRIVER(imx8mn, "fsl,imx8mn-ccm",
> imx8mn_clocks_init);
> 
> Any reason why this cannot be a platform driver ?

It should can be, I just did NOT take care of it, 8MQ uses platform driver model, while
8MM does NOT, I will modify both of them to use platform driver model.

Thanks,
Anson.

> 
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
