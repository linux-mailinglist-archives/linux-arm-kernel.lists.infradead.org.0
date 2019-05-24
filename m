Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF40929096
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 07:53:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTcwZ3fYxLZD1lCjM4qP574x6ErdOwi+4P7yhFyLSfU=; b=gO7ziq/MQABPjD
	YvREjSvtv7JGws+xxKuNiXHy62QI+nUS2/HwdmY75Q3CVFkFmr+QKKG4BW7pgrXFcHPZ0Bg20pAEd
	XYvBMdf9+YOH00zJ274cT0ONNbdv7EoGziQR4K+UeSEks4IeyO4q7qGHn4BEZzvahOVdfD7DfRr9H
	hH5AmB6m55LFhUzFBUOCPPkdxXKvU6+HmZKiACzgSeRN34vlmSvaD10oFktypnPOIUqypfRxPkvoV
	h3zT5lrRbnMoPBNz0SsgxQfJpI5CNdsyMA+jbAW33x8qtrUZdUwLCS5oijpH+y4v28Fl2Kk53hUY0
	2yFuVx257C2DlO61Rnrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU39E-0005HH-Gt; Fri, 24 May 2019 05:53:44 +0000
Received: from mail-eopbgr80053.outbound.protection.outlook.com ([40.107.8.53]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU397-0005Gt-NU
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 05:53:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R3jNrJbSE+OLLbjY/ZhGMPVrdaaXS8U8WtMRqD0FeTw=;
 b=L3QA65NQL00ZRideaw6x8NbkSNUuobOwvN7BX7JcXPG2MLaVdPMYUzQfgpgf2uqB0Zh0Y2/SN7fOPiJ/5Eji5eog/nkifTXXHd3u0FhpKjVb23xS2rErQWm6yoMUwqVEgyl9sfCWpGvSFtw1769wdAWdHjG+RwLOVcEtN1zPMzg=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3882.eurprd04.prod.outlook.com (52.134.72.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Fri, 24 May 2019 05:53:33 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1922.017; Fri, 24 May 2019
 05:53:33 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 1/2] soc: imx: soc-imx8: Avoid unnecessary of_node_put()
 in error handling
Thread-Topic: [PATCH 1/2] soc: imx: soc-imx8: Avoid unnecessary of_node_put()
 in error handling
Thread-Index: AQHVD7YvdNtmZ2uz6UeyYdwfC+FzEKZ4qg6AgAEgPbA=
Date: Fri, 24 May 2019 05:53:33 +0000
Message-ID: <DB3PR0402MB3916A92814AC8B5E66DA2C3CF5020@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1558430013-18346-1-git-send-email-Anson.Huang@nxp.com>
 <20190523124044.GT9261@dragon>
In-Reply-To: <20190523124044.GT9261@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5214ef71-8460-48f9-321c-08d6e00c2812
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3882; 
x-ms-traffictypediagnostic: DB3PR0402MB3882:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <DB3PR0402MB388207AF674DF4ACAE9D22D6F5020@DB3PR0402MB3882.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0047BC5ADE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(39860400002)(136003)(346002)(376002)(13464003)(189003)(199004)(6306002)(4326008)(102836004)(6506007)(316002)(6246003)(9686003)(7736002)(53546011)(8936002)(6916009)(229853002)(478600001)(76116006)(33656002)(55016002)(64756008)(25786009)(66066001)(66946007)(73956011)(8676002)(66556008)(66446008)(66476007)(81166006)(476003)(446003)(81156014)(6436002)(11346002)(14454004)(5660300002)(74316002)(2906002)(44832011)(54906003)(68736007)(486006)(86362001)(3846002)(76176011)(7696005)(256004)(26005)(52536014)(6116002)(186003)(966005)(99286004)(71190400001)(71200400001)(53936002)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3882;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6w3ZCUflHoT3YNMuO7+Y4xHTWhSb/MWLl81gBV0awS/AknieNqI7zYToksg1a5SW01Ont+rhrwLU0BQ8dOKPTg9/JolA3XqfGGkKyjVf4JKwf0gW9t12JWfwCrHZtzEO//5Nme+z4PkoPDOxM08zyFx07t0YIbqOxJLe0hV5LLvIzkMRaC1kUh54O2ne/m1d8xH3jFMn6sCmzamaUidwEBgPcuxXxZ4RNhp3Up52iq553wmOknJUE9Cz8AFf0ZGrTLVLEXKiGwg0I/te2Inip0Ncn11jVB1dtXULH4MRnms4NxOCQVYYIJJiP9OGRv2SD50I/yFwZ+D0ELXUEQwaz8LrrU1ahtNLElmejJq8IBmAVNSrIeK+xs06PUid/tm0BeLEXPZHOPbo1++mvqdXB8GNn238Phz/6BUxPnCI8UI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5214ef71-8460-48f9-321c-08d6e00c2812
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2019 05:53:33.4075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3882
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_225337_765842_A5D1015E 
X-CRM114-Status: GOOD (  20.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
> From: Shawn Guo [mailto:shawnguo@kernel.org]
> Sent: Thursday, May 23, 2019 8:41 PM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> Leonard Crestez <leonard.crestez@nxp.com>; Abel Vesa
> <abel.vesa@nxp.com>; viresh.kumar@linaro.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; dl-linux-imx
> <linux-imx@nxp.com>
> Subject: Re: [PATCH 1/2] soc: imx: soc-imx8: Avoid unnecessary
> of_node_put() in error handling
> 
> On Tue, May 21, 2019 at 09:18:43AM +0000, Anson Huang wrote:
> > of_node_put() is called after of_match_node() successfully called,
> > then in the following error handling, of_node_put() is called again
> > which is unnecessary, this patch adjusts the location of of_node_put()
> > to avoid such scenario.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> Again, there are '=20' in the patch content and I cannot apply it.

I resent the patch set, please pick them up, thanks.

https://patchwork.kernel.org/patch/10959101/
https://patchwork.kernel.org/patch/10959099/

Anson.

> 
> Shawn
> 
> > ---
> >  drivers/soc/imx/soc-imx8.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
> > index b1bd8e2..944add2 100644
> > --- a/drivers/soc/imx/soc-imx8.c
> > +++ b/drivers/soc/imx/soc-imx8.c
> > @@ -86,8 +86,6 @@ static int __init imx8_soc_init(void)
> >  	if (!id)
> >  		goto free_soc;
> >
> > -	of_node_put(root);
> > -
> >  	data = id->data;
> >  	if (data) {
> >  		soc_dev_attr->soc_id = data->name;
> > @@ -106,6 +104,8 @@ static int __init imx8_soc_init(void)
> >  	if (IS_ENABLED(CONFIG_ARM_IMX_CPUFREQ_DT))
> >  		platform_device_register_simple("imx-cpufreq-dt", -1, NULL,
> 0);
> >
> > +	of_node_put(root);
> > +
> >  	return 0;
> >
> >  free_rev:
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
