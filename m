Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A56218345
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 03:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MyQKrOZ9ijfLrfQnK+JdRa916HgcBq9cVxH8xUliM7E=; b=T5Tmq0jc847Uie
	bShgyZ3k9qJsKNoicfPdlQhWbbIgHNCm+Infc8UYv9UxtmgkC2wK2iakTaF1Py0upEWEV+1mHoBbs
	nlUXIJ2hG6ldFc6vuprJtbKtl5Th9SCbV+k50LfpBPhMeyMRliRCuwxPi8lE4gTDH/T/d9sFztmWN
	eHYa7F/5QEs2RlxjU/uI7AeNeZ5EV1XRJgKP6mKzi3+tNivoq5NJU+YOwTqP6d4sHmeCR8wNWU5Ae
	V2D20rtJbJsHyyU6HELuFKjb/fn5hnJ+23UN71iDUk3eDTxZBFvAdQothaqy+4crpJpg6bnw1dU8t
	ojstvpZpGdsCjsmVjU9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOY42-0007US-BR; Thu, 09 May 2019 01:41:38 +0000
Received: from mail-eopbgr50050.outbound.protection.outlook.com ([40.107.5.50]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOY3l-0007HP-L9
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 01:41:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NGDMMqRrFSAcqeoaTTTOzfrwN0ThO1W7PeepRk2N/Xk=;
 b=NUFY6WfotNz2+dNBiPK+cSXTh0OnY+r452UsFLypDQ1aJxFedAPmBaZf6iUdVnIXci7kcWa77u/5Wh9GynGLfN8XZb8DzPhRtTLKZWBaRKKk1VgOwQt3JVHOKI1jYiZchjUlgyKkDILQg++FL0W9K58RHgaJnRmALW6AUg1Nz1Y=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3929.eurprd04.prod.outlook.com (52.134.70.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Thu, 9 May 2019 01:41:17 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Thu, 9 May 2019
 01:41:17 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Mukesh Ojha <mojha@codeaurora.org>, "dmitry.torokhov@gmail.com"
 <dmitry.torokhov@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] input: imx6ul_tsc: use devm_platform_ioremap_resource()
 to simplify code
Thread-Topic: [PATCH] input: imx6ul_tsc: use devm_platform_ioremap_resource()
 to simplify code
Thread-Index: AQHU6EqK7YCFSFAUiEmCAJSqda9wGaYm8dcAgCpVLOCAEPj3EA==
Date: Thu, 9 May 2019 01:41:17 +0000
Message-ID: <DB3PR0402MB3916918EA010BEC627F41563F5330@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1554095712-15413-1-git-send-email-Anson.Huang@nxp.com>
 <d3b8cf17-36bb-d79d-7d60-76ae2416075d@codeaurora.org>
 <DB3PR0402MB3916D9B009F5187D52A8A7D3F5380@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916D9B009F5187D52A8A7D3F5380@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3c8f97ab-e539-4db7-fc0f-08d6d41f6e3e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3929; 
x-ms-traffictypediagnostic: DB3PR0402MB3929:
x-microsoft-antispam-prvs: <DB3PR0402MB392933B19B0E74990503220BF5330@DB3PR0402MB3929.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:207;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(39860400002)(376002)(346002)(396003)(189003)(199004)(13464003)(5660300002)(316002)(52536014)(7696005)(99286004)(229853002)(478600001)(76176011)(68736007)(8936002)(102836004)(11346002)(53546011)(476003)(446003)(9686003)(81156014)(44832011)(55016002)(81166006)(33656002)(53936002)(73956011)(8676002)(2501003)(486006)(26005)(6436002)(76116006)(66946007)(64756008)(66446008)(66476007)(66556008)(110136005)(14454004)(86362001)(4326008)(66066001)(6246003)(25786009)(186003)(2201001)(6506007)(2906002)(7736002)(305945005)(256004)(71200400001)(71190400001)(3846002)(6116002)(74316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3929;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wwn3fFg2JbhlGM8/OOZ08syG4vTKEpl18eTHOI9IktnW+9sALIVZq+YkKOWWUDdtsig4Sts9ZnmTccQyAgsN2lguIRnvCTdO2S8JD1E5axeVXx0yPSkbRSC2OWSlVZIooincNn9JKTSmYh08R1Z/LzeoLxtQ4O0asIlRlo6Fr5GbSXtPXEcy+oe3LYxONacb5Wt6zVs+XAPsb0NYFgGriYFYjJBgJLSEimedZF9+DqwQORetulb7486z758QMkgXU49mDX8cdtnzXDFjBng1DYeZ25/X8zDeVgAzMZHSQAUkMeRFv8CSOWLmobBFeACLR61r5fLQ5I6Vy33utJiljI9w5bYpXtYWzkHnCnLlwakJ71gXD57WA/W8DbgmqAVFRmEUdS/YGVYBc3NT6cdrpp0Q67ETtBlLoKcBTQVbzNA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c8f97ab-e539-4db7-fc0f-08d6d41f6e3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 01:41:17.7239 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3929
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_184122_275412_3794CC9B 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Ping...

> -----Original Message-----
> From: Anson Huang
> Sent: Sunday, April 28, 2019 2:30 PM
> To: Mukesh Ojha <mojha@codeaurora.org>; dmitry.torokhov@gmail.com;
> shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de;
> festevam@gmail.com; linux-input@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: RE: [PATCH] input: imx6ul_tsc: use
> devm_platform_ioremap_resource() to simplify code
> 
> Ping...
> 
> > -----Original Message-----
> > From: Mukesh Ojha [mailto:mojha@codeaurora.org]
> > Sent: Monday, April 1, 2019 4:02 PM
> > To: Anson Huang <anson.huang@nxp.com>; dmitry.torokhov@gmail.com;
> > shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de;
> > festevam@gmail.com; linux-input@vger.kernel.org; linux-arm-
> > kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> > Cc: dl-linux-imx <linux-imx@nxp.com>
> > Subject: Re: [PATCH] input: imx6ul_tsc: use
> > devm_platform_ioremap_resource() to simplify code
> >
> >
> > On 4/1/2019 10:49 AM, Anson Huang wrote:
> > > Use the new helper devm_platform_ioremap_resource() which wraps the
> > > platform_get_resource() and devm_ioremap_resource() together, to
> > > simplify the code.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> >
> >
> > Reviewed-by: Mukesh Ojha <mojha@codeaurora.org>
> >
> > Cheers,
> > -Mukesh
> >
> > > ---
> > >   drivers/input/touchscreen/imx6ul_tsc.c | 8 ++------
> > >   1 file changed, 2 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/input/touchscreen/imx6ul_tsc.c
> > > b/drivers/input/touchscreen/imx6ul_tsc.c
> > > index c10fc59..e04eecd 100644
> > > --- a/drivers/input/touchscreen/imx6ul_tsc.c
> > > +++ b/drivers/input/touchscreen/imx6ul_tsc.c
> > > @@ -364,8 +364,6 @@ static int imx6ul_tsc_probe(struct
> > > platform_device
> > *pdev)
> > >   	struct device_node *np = pdev->dev.of_node;
> > >   	struct imx6ul_tsc *tsc;
> > >   	struct input_dev *input_dev;
> > > -	struct resource *tsc_mem;
> > > -	struct resource *adc_mem;
> > >   	int err;
> > >   	int tsc_irq;
> > >   	int adc_irq;
> > > @@ -403,16 +401,14 @@ static int imx6ul_tsc_probe(struct
> > platform_device *pdev)
> > >   		return err;
> > >   	}
> > >
> > > -	tsc_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > > -	tsc->tsc_regs = devm_ioremap_resource(&pdev->dev, tsc_mem);
> > > +	tsc->tsc_regs = devm_platform_ioremap_resource(pdev, 0);
> > >   	if (IS_ERR(tsc->tsc_regs)) {
> > >   		err = PTR_ERR(tsc->tsc_regs);
> > >   		dev_err(&pdev->dev, "failed to remap tsc memory: %d\n",
> > err);
> > >   		return err;
> > >   	}
> > >
> > > -	adc_mem = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> > > -	tsc->adc_regs = devm_ioremap_resource(&pdev->dev, adc_mem);
> > > +	tsc->adc_regs = devm_platform_ioremap_resource(pdev, 1);
> > >   	if (IS_ERR(tsc->adc_regs)) {
> > >   		err = PTR_ERR(tsc->adc_regs);
> > >   		dev_err(&pdev->dev, "failed to remap adc memory: %d\n",
> > err);
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
