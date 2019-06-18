Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E8949BFA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 10:25:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8aAzYd2/xrOt3K0lJGGGueGyp+YoQ36GpAPDQxCD6w=; b=fYCp7zBLS8S6By
	RusfqQRGmkdwO0gue0i4aXOA5AvICOYruG6tljaUFItRzn2MCLe5vjfDnu6MDS0BGpeNC9RtxWmXT
	AvHZT6JGF+HD/vvfY0xU9V6DY5ogqDdepxfSD838Bi00wgbs5erGQ7cJDZRt+hPgpIIboiSYreVcJ
	rIzpmtgvoiFzhZsGMf/z/nYQdJCw8GtSpRdboRlMVcfkxsvvdzShhLhm7/ozQgwBvbOOKV8mmR4yF
	MXHsd+Z0ErX8dOzG5cTtaaY7D6ldN39rbnJjEo+8y+rW3hE5UR/RxV8YEvYOgxMFgh6JgJjD3nDyi
	Aw8i9iHUogD9pBxLhxlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd9Qd-0001vz-Em; Tue, 18 Jun 2019 08:25:19 +0000
Received: from mail-he1eur01on0605.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::605]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd9QP-0000rU-Lb
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 08:25:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U3A4FRdUf2IVNqKozwOhlR1B8Z8XBaM4LLFZtI8VkSw=;
 b=ckFrTQGVg4zrxzml3+Ua4Rcuv4MvPRE+eGGka2c6Bm4VHOCOyvS+OE19utPmLv5NIPncyqybhRN0uIiIDXWl7fACrkGHaidL+SQV6yXf4JQOltNdp4uhTGT2/fmgHt0h8KWi+NPLtgNDC7DvhyV4bGKGy1+NvaiYtEutpiYjIrw=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3788.eurprd04.prod.outlook.com (52.134.72.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Tue, 18 Jun 2019 08:24:59 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1987.014; Tue, 18 Jun 2019
 08:24:59 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] soc: imx: Add i.MX8MN SoC driver support
Thread-Topic: [PATCH] soc: imx: Add i.MX8MN SoC driver support
Thread-Index: AQHVH/Up3NdnX/doMEq9SuarUx0FjqahB/qAgAABlMA=
Date: Tue, 18 Jun 2019 08:24:59 +0000
Message-ID: <DB3PR0402MB391691EEF083BA6BEF445235F5EA0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190611013125.3434-1-Anson.Huang@nxp.com>
 <20190618070334.GD29881@dragon>
In-Reply-To: <20190618070334.GD29881@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9b11e7e0-2ae4-4dd5-83f9-08d6f3c673e1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3788; 
x-ms-traffictypediagnostic: DB3PR0402MB3788:
x-microsoft-antispam-prvs: <DB3PR0402MB37880749E35B59107F8D4D2BF5EA0@DB3PR0402MB3788.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 007271867D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(39860400002)(376002)(396003)(136003)(13464003)(199004)(189003)(2906002)(14444005)(54906003)(8936002)(186003)(3846002)(33656002)(6916009)(102836004)(99286004)(6116002)(256004)(11346002)(66446008)(66476007)(6246003)(73956011)(5660300002)(53546011)(66946007)(305945005)(66066001)(25786009)(478600001)(81166006)(76116006)(71190400001)(71200400001)(486006)(476003)(26005)(316002)(66556008)(64756008)(53936002)(8676002)(9686003)(7696005)(44832011)(74316002)(6506007)(7736002)(55016002)(14454004)(86362001)(6436002)(68736007)(4326008)(52536014)(76176011)(446003)(81156014)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3788;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 702YO6AwSzQI6FuJR39eN8dpP44Mub3MZNkUyqnkqOs1bjeAbPbAQspsugAMzvcCXePJAK2TLWIsFTZ1taH3weyAiwex3i0a7K1+S9Dc6tDr6le9yAGQxpGALlX3D9dKpXKDFa1zgVDGSqCMi23T0goa/6x6MY8nA2Rgp7h3wkHSIH5k7SL2jRgU0YasXkPLwkc0TqzG5BboUovX5xkkqZt/AdwYF/qJ92RodqS4NLmwsyTjiNxfRQpoIoh/Swc7PghYPDKm/tqj9+VpT7jdQgx+KKDHOxe3QRN8kle0hA2shcc92ZY72RPtBlH5hLY2fPQxhV2Y4mL0CNFYk4A/NuQMeXKoU9Xt7jbjckyy1Ef5618OaEgidiB+8jawspyjHoMFE7CTybYCWrfCwLCc0WpCd6dKOPpOhBn55PfJgBA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b11e7e0-2ae4-4dd5-83f9-08d6f3c673e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2019 08:24:59.1398 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3788
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_012505_793167_CD8A5FE7 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1e:0:0:0:605 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Tuesday, June 18, 2019 3:04 PM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> Leonard Crestez <leonard.crestez@nxp.com>; viresh.kumar@linaro.org;
> Abel Vesa <abel.vesa@nxp.com>; linux-arm-kernel@lists.infradead.org;
> linux-kernel@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH] soc: imx: Add i.MX8MN SoC driver support
> 
> On Tue, Jun 11, 2019 at 09:31:25AM +0800, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > This patch adds i.MX8MN SoC driver support:
> >
> > root@imx8mnevk:~# cat /sys/devices/soc0/family Freescale i.MX
> >
> > root@imx8mnevk:~# cat /sys/devices/soc0/machine NXP i.MX8MNano
> DDR4
> > EVK board
> >
> > root@imx8mnevk:~# cat /sys/devices/soc0/soc_id i.MX8MN
> >
> > root@imx8mnevk:~# cat /sys/devices/soc0/revision
> > 1.0
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/soc/imx/soc-imx8.c | 13 ++++++++++++-
> >  1 file changed, 12 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
> > index 3842d09..02309a2 100644
> > --- a/drivers/soc/imx/soc-imx8.c
> > +++ b/drivers/soc/imx/soc-imx8.c
> > @@ -55,7 +55,12 @@ static u32 __init imx8mm_soc_revision(void)
> >  	void __iomem *anatop_base;
> >  	u32 rev;
> >
> > -	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-anatop");
> > +	if (of_machine_is_compatible("fsl,imx8mm"))
> > +		np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-
> anatop");
> > +	else if (of_machine_is_compatible("fsl,imx8mn"))
> > +		np = of_find_compatible_node(NULL, NULL, "fsl,imx8mn-
> anatop");
> 
> Can we have this anatop compatible in imx8_soc_data, so that we may save
> the call to of_machine_is_compatible()?

Do you mean adding a variable like " const char *anatop_compat " in imx8_soc_date structure,
then initialize it according to SoC type, and in imx8mm_soc_revision(), get to soc_data's anatio_compat to
find the anatop node? If yes, we have to add some code to get the soc_data in this function, or maybe
we can pass anatop compatible name as .soc_revision's parameter?

static const struct imx8_soc_data imx8mn_soc_data = {
         .name = "i.MX8MN",
         .soc_revision = imx8mm_soc_revision,
         .anatop_compat = "fsl,imx8mn-anatop",
};

Anson.
> 
> Shawn
> 
> > +	else
> > +		np = NULL;
> >  	if (!np)
> >  		return 0;
> >
> > @@ -79,9 +84,15 @@ static const struct imx8_soc_data imx8mm_soc_data
> = {
> >  	.soc_revision = imx8mm_soc_revision,  };
> >
> > +static const struct imx8_soc_data imx8mn_soc_data = {
> > +	.name = "i.MX8MN",
> > +	.soc_revision = imx8mm_soc_revision, };
> > +
> >  static const struct of_device_id imx8_soc_match[] = {
> >  	{ .compatible = "fsl,imx8mq", .data = &imx8mq_soc_data, },
> >  	{ .compatible = "fsl,imx8mm", .data = &imx8mm_soc_data, },
> > +	{ .compatible = "fsl,imx8mn", .data = &imx8mn_soc_data, },
> >  	{ }
> >  };
> >
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
