Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE624AF50
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 03:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lrtUD54G9cdnZ+lqvVGkvEvMxyfYGj4tHD68SV1kdK0=; b=RareDkxPmr4xpt
	zRMuvOxpRWyZgWQdz37EvQYS1MhwKUF04+ZJU+KQnWYgsAlFaeGNBvUUJZd3U7Qso1ClmSFAmDJlc
	nUFMHOd3QpLgJoJpfwpohaLC1NYxSF6hWcPHJ0nANOlu/VgOdxGEMFJfORru40xS2so1mq6/p5j9O
	QW27YQgEXUlx9xxklP1XSSkSVf7lTLgOW5kQ63YTBUqCwcONUswXEU/4H104MmfujDd+fP2j7e0EN
	lTR2PHA1cR4uz4WdlIRPglzx9bLq2kW+qYkGihwsMGv1dscsHBLniKM8JqgY728QhfIQKWTY9RsSi
	gokk8FiRSbzuLKE2H4lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdP3s-0001Bm-72; Wed, 19 Jun 2019 01:06:52 +0000
Received: from mail-eopbgr00055.outbound.protection.outlook.com ([40.107.0.55]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdP3f-0001B0-GL
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 01:06:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H9U4xhMMU3VSy50HjKqiiRKI9a4qqLovMcSnrh45ZjU=;
 b=acv9vMYDYtSBC+4r1albGfumoNDqk0Zxe6vHMCo/7xfTjeOxenu7z7FjPQkbA5ZDac2kWL6eEpYUs5GEzDOkHDSEbh/XNBnEmOmnYkDVz4UgOnOsALljgtfp9wzlRiuHKbbGhQB++Om+ycHS0ENSJTEpCb2G8XyE1BALsciebUs=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3659.eurprd04.prod.outlook.com (52.134.66.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.15; Wed, 19 Jun 2019 01:06:36 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1987.014; Wed, 19 Jun 2019
 01:06:36 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] soc: imx: Add i.MX8MN SoC driver support
Thread-Topic: [PATCH] soc: imx: Add i.MX8MN SoC driver support
Thread-Index: AQHVH/Up3NdnX/doMEq9SuarUx0FjqahB/qAgAABlMCAAGHEgIAAytew
Date: Wed, 19 Jun 2019 01:06:35 +0000
Message-ID: <DB3PR0402MB3916C448D65BE66950B16FABF5E50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190611013125.3434-1-Anson.Huang@nxp.com>
 <20190618070334.GD29881@dragon>
 <DB3PR0402MB391691EEF083BA6BEF445235F5EA0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190618125902.GN29881@dragon>
In-Reply-To: <20190618125902.GN29881@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b9e14f1-6d3d-4c98-da2c-08d6f452607e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3659; 
x-ms-traffictypediagnostic: DB3PR0402MB3659:
x-microsoft-antispam-prvs: <DB3PR0402MB3659F63A5B3D0E6080E4C823F5E50@DB3PR0402MB3659.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:519;
x-forefront-prvs: 0073BFEF03
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(136003)(366004)(376002)(13464003)(199004)(189003)(476003)(74316002)(4326008)(256004)(25786009)(26005)(44832011)(11346002)(33656002)(305945005)(186003)(446003)(71200400001)(6116002)(2906002)(486006)(9686003)(53936002)(7736002)(68736007)(3846002)(6436002)(229853002)(55016002)(71190400001)(99286004)(102836004)(53546011)(8936002)(14454004)(81156014)(7696005)(76176011)(6246003)(8676002)(81166006)(6506007)(73956011)(316002)(478600001)(54906003)(6916009)(52536014)(86362001)(5660300002)(64756008)(76116006)(66446008)(66476007)(14444005)(66066001)(66946007)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3659;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fv97dHADr6roZFPNEmQ8W+WqIRKCvHzjst7iWJldTBHxKP8TR6iiQ9eRv8x+ty5AgOalyaDfSVb33H+YtS/xmjZUv2Y9SMFrVvHk+xXaNtEsM0ZKHJ5BR7LXY57i3FB9akKTUS1x83HBt8AceM7T81p6Iyo4wIe8BCl7d/V3p5cGBC0vLgJPOqoF055gCUbb6hWHYEyv2dkeQDCEpciWCJVb5D7AY2onR+X/tYeOvC8XaGbmP1srbhY6GcT2P2cCOgH5MEv7/xGUAx7tISZWSUB0qbQ9kiYr5ink4vnXLphXA95GNtxLforzPl3OUzeIson++dLtGp7Fnq1A9mXXwM9Won3Op5kGx0KEVQnhcdfCfyX6TxAoYxliY/K/f7CMbcerT8kXV2qupthpWNW467IwmMwDNY56eHHAd72kov0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b9e14f1-6d3d-4c98-da2c-08d6f452607e
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2019 01:06:35.9397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3659
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_180639_614721_64F028B6 
X-CRM114-Status: GOOD (  24.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
> Sent: Tuesday, June 18, 2019 8:59 PM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> Leonard Crestez <leonard.crestez@nxp.com>; viresh.kumar@linaro.org;
> Abel Vesa <abel.vesa@nxp.com>; linux-arm-kernel@lists.infradead.org;
> linux-kernel@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH] soc: imx: Add i.MX8MN SoC driver support
> 
> On Tue, Jun 18, 2019 at 08:24:59AM +0000, Anson Huang wrote:
> > Hi, Shawn
> >
> > > -----Original Message-----
> > > From: Shawn Guo <shawnguo@kernel.org>
> > > Sent: Tuesday, June 18, 2019 3:04 PM
> > > To: Anson Huang <anson.huang@nxp.com>
> > > Cc: s.hauer@pengutronix.de; kernel@pengutronix.de;
> > > festevam@gmail.com; Leonard Crestez <leonard.crestez@nxp.com>;
> > > viresh.kumar@linaro.org; Abel Vesa <abel.vesa@nxp.com>;
> > > linux-arm-kernel@lists.infradead.org;
> > > linux-kernel@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> > > Subject: Re: [PATCH] soc: imx: Add i.MX8MN SoC driver support
> > >
> > > On Tue, Jun 11, 2019 at 09:31:25AM +0800, Anson.Huang@nxp.com
> wrote:
> > > > From: Anson Huang <Anson.Huang@nxp.com>
> > > >
> > > > This patch adds i.MX8MN SoC driver support:
> > > >
> > > > root@imx8mnevk:~# cat /sys/devices/soc0/family Freescale i.MX
> > > >
> > > > root@imx8mnevk:~# cat /sys/devices/soc0/machine NXP i.MX8MNano
> > > DDR4
> > > > EVK board
> > > >
> > > > root@imx8mnevk:~# cat /sys/devices/soc0/soc_id i.MX8MN
> > > >
> > > > root@imx8mnevk:~# cat /sys/devices/soc0/revision
> > > > 1.0
> > > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > ---
> > > >  drivers/soc/imx/soc-imx8.c | 13 ++++++++++++-
> > > >  1 file changed, 12 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/soc/imx/soc-imx8.c
> > > > b/drivers/soc/imx/soc-imx8.c index 3842d09..02309a2 100644
> > > > --- a/drivers/soc/imx/soc-imx8.c
> > > > +++ b/drivers/soc/imx/soc-imx8.c
> > > > @@ -55,7 +55,12 @@ static u32 __init imx8mm_soc_revision(void)
> > > >  	void __iomem *anatop_base;
> > > >  	u32 rev;
> > > >
> > > > -	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-anatop");
> > > > +	if (of_machine_is_compatible("fsl,imx8mm"))
> > > > +		np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-
> > > anatop");
> > > > +	else if (of_machine_is_compatible("fsl,imx8mn"))
> > > > +		np = of_find_compatible_node(NULL, NULL, "fsl,imx8mn-
> > > anatop");
> > >
> > > Can we have this anatop compatible in imx8_soc_data, so that we may
> > > save the call to of_machine_is_compatible()?
> >
> > Do you mean adding a variable like " const char *anatop_compat " in
> > imx8_soc_date structure, then initialize it according to SoC type, and
> > in imx8mm_soc_revision(), get to soc_data's anatio_compat to find the
> > anatop node? If yes, we have to add some code to get the soc_data in this
> function, or maybe we can pass anatop compatible name as .soc_revision's
> parameter?
> >
> > static const struct imx8_soc_data imx8mn_soc_data = {
> >          .name = "i.MX8MN",
> >          .soc_revision = imx8mm_soc_revision,
> >          .anatop_compat = "fsl,imx8mn-anatop", };
> 
> Okay, just realized that we only want to handle imx8mn with imx8mm
> function.  It makes less sense to add anatop compatible into imx8_soc_data
> just for that.
> 
> So it looks like that imx8mn is highly compatible with imx8mm, including
> anatop block?  If that's the case, maybe we can have compatible of imx8mn
> anatop like below, so that we can save above changes?
> 
> 	compatible = "fsl,imx8mn-anatop", "fsl,imx8mm-anatop";

Make sense, I just sent out V2 with this approach, and will add the "fsl,imx8mm-anatop"
as i.MX8MN ANATOP fallback compatible when I need to resend the i.MX8MN DT patch series.

Thanks,
Anson

> 
> Shawn
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
