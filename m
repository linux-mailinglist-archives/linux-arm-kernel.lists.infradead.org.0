Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9775E18347
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 03:42:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RN6vU6MqnpoTrPK54NU9owpXsxy9AXINXou+BiZAIpM=; b=R5mAD6QR06gqMZ
	fl1uTUwspn+ll5kFHqzXNnWzUHw3wAIHOYtlROz5hFiggKA2zIF4RZkowIxjn8Mt1Cgc6ycmS9s6a
	s6UaWxGJhLLkwL1gBjOlwD90ajb/GQGWrKGobHLVsT+E6Wluwuuq6iSrtSld1Bn8p60r4rAJD0ign
	XI6junK2bNuXghJaN2/sKXXNgb5oxuFii7iZDMi5aGimG7RlOi59BBVUU1qM3bEEuPSdmpZOudGSd
	YlcS7A9i/Zg1RtapOUOfqEQ2WfkoE9DlryhriCShnDqOFjlC6YVOwdw3heqWZFJ0l1hyQzjAsN8PD
	GRN281iZZC/5kQME8nYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOY4Z-0007pF-Lv; Thu, 09 May 2019 01:42:11 +0000
Received: from mail-ve1eur03on062f.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::62f]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOY4S-0007od-G1
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 01:42:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zZeLBwNjvGRH/C3I3l+tYMqUQ1q5JLVVxlvcrVrqyzI=;
 b=Xb6HkBWky18jbtE7rKO9LEEH2v/bv5i4c1b6RLNnYfXT2qa4BWZvUl3en/I9IIZ46/Q/b0p36lGy+TC6ZDAqBV5x1TQCjISbODc/T09tgdqa8fi/NUK46lhj9Qz/zlKoros/aptkWJkx75d418Ct1El7Da9woH1euAXWKYug2rI=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3929.eurprd04.prod.outlook.com (52.134.70.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Thu, 9 May 2019 01:42:00 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Thu, 9 May 2019
 01:42:00 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] mailbox: imx: use devm_platform_ioremap_resource() to
 simplify code
Thread-Topic: [PATCH] mailbox: imx: use devm_platform_ioremap_resource() to
 simplify code
Thread-Index: AQHU6Enp8Rg1WsmI0EedzzVUaGgENqZRRjxggBD578A=
Date: Thu, 9 May 2019 01:41:59 +0000
Message-ID: <DB3PR0402MB3916C6AD77304030A3CA5074F5330@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1554095441-15220-1-git-send-email-Anson.Huang@nxp.com>
 <DB3PR0402MB39164C6D8A02B53E1F224232F5380@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB39164C6D8A02B53E1F224232F5380@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aeb056bd-2dcd-469c-cd85-08d6d41f8770
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3929; 
x-ms-traffictypediagnostic: DB3PR0402MB3929:
x-microsoft-antispam-prvs: <DB3PR0402MB39295BFB7BC5EF3B22E86582F5330@DB3PR0402MB3929.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:125;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(39860400002)(376002)(346002)(396003)(189003)(199004)(13464003)(5660300002)(316002)(52536014)(7696005)(99286004)(229853002)(478600001)(76176011)(68736007)(8936002)(102836004)(11346002)(53546011)(476003)(446003)(9686003)(81156014)(44832011)(55016002)(81166006)(33656002)(53936002)(73956011)(8676002)(2501003)(486006)(26005)(6436002)(76116006)(66946007)(64756008)(66446008)(66476007)(66556008)(110136005)(14454004)(86362001)(4326008)(66066001)(6246003)(25786009)(186003)(2201001)(6506007)(2906002)(7736002)(305945005)(256004)(71200400001)(15650500001)(71190400001)(3846002)(6116002)(74316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3929;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kPPQLQkjO5DCy3MKIS1rbnAtqCdNpXO586sKTfYsRHlokppW35a8GKmnb2puWayYnstHQUv1kOdHJsP+bFzZ17A3FQgXlOenp520QxoedeGzff0cmXD0HbXR5u88FoJW6ZME3Tn2hMdR3+4X9VY7pe2ElQJi5/F3SoZ49Ks9NOUpVjD9160RsVqjz/epJFScmNfToYL9op5StzvTmqXkGNx4dAan/zBGmotbHj6ODhWjNJuEtzSlxtP9NKv+asPQy/6a+jlXk8f47xMveGaaiPBC2DC5r7NSb+mKpOQtohd7nYCweWXYPNAdh9o2VabYPh+Rp++6B6k9iCooiddCqkfnfrR8en8pn1tVbW1XYIprXS9IS46p3pI8j4LcYk0KsiBgzSyemlN5L1Cfs8ww3j9cNWcQytfkuS5f0ojKKF8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aeb056bd-2dcd-469c-cd85-08d6d41f8770
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 01:41:59.9904 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3929
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_184204_533117_1EE08DDC 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:62f listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
> Sent: Sunday, April 28, 2019 2:27 PM
> To: jassisinghbrar@gmail.com; shawnguo@kernel.org;
> s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: RE: [PATCH] mailbox: imx: use devm_platform_ioremap_resource()
> to simplify code
> 
> Ping...
> 
> > -----Original Message-----
> > From: Anson Huang
> > Sent: Monday, April 1, 2019 1:15 PM
> > To: jassisinghbrar@gmail.com; shawnguo@kernel.org;
> > s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> > linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> > Cc: dl-linux-imx <linux-imx@nxp.com>
> > Subject: [PATCH] mailbox: imx: use devm_platform_ioremap_resource() to
> > simplify code
> >
> > Use the new helper devm_platform_ioremap_resource() which wraps the
> > platform_get_resource() and devm_ioremap_resource() together, to
> > simplify the code.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/mailbox/imx-mailbox.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/drivers/mailbox/imx-mailbox.c
> > b/drivers/mailbox/imx-mailbox.c index 85fc5b5..25be8bb 100644
> > --- a/drivers/mailbox/imx-mailbox.c
> > +++ b/drivers/mailbox/imx-mailbox.c
> > @@ -264,7 +264,6 @@ static int imx_mu_probe(struct platform_device
> > *pdev)  {
> >  	struct device *dev = &pdev->dev;
> >  	struct device_node *np = dev->of_node;
> > -	struct resource *iomem;
> >  	struct imx_mu_priv *priv;
> >  	unsigned int i;
> >  	int ret;
> > @@ -275,8 +274,7 @@ static int imx_mu_probe(struct platform_device
> > *pdev)
> >
> >  	priv->dev = dev;
> >
> > -	iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > -	priv->base = devm_ioremap_resource(&pdev->dev, iomem);
> > +	priv->base = devm_platform_ioremap_resource(pdev, 0);
> >  	if (IS_ERR(priv->base))
> >  		return PTR_ERR(priv->base);
> >
> > --
> > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
