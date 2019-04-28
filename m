Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B854B560
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 08:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5+6LK7d/e0tgNsfjkF8OoCnBoIgrq/WleqDDgHwOQ78=; b=TtD5Ic4bomhSbZ
	1g2gQrnGATVVmHYXETI6BdscKY6R866VEtbsxbM1/n/ToHFnHGVtIyK0N+gDwk6Q3/h4TrUYjv/cX
	qIhwEaqKU7J4GEJ6fy0FHPFAOMBpebYIh3XyJ5mvg1KYe2nPvylKOOGEmljBFUQFX36VkRqdiN/Np
	PkW2XeHNi5daN0Vfi4UUCvC1tUYTN39h1fClm3QimanREM7UPsa+XK/sbP1oz8CcgqMgPvjNUVxRi
	TfVe8xmw0h71dMArj9BF/IZGYdLl6ezeP+Alonzclm9HZ5qvhIWqE9mA7+6M/ZCYBFOPmXYyIdKJ2
	TleuY7FMBwdfnIKp/a8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKdJl-0000Bn-MR; Sun, 28 Apr 2019 06:29:41 +0000
Received: from mail-eopbgr10059.outbound.protection.outlook.com ([40.107.1.59]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKdJd-0000BN-FU
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 06:29:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ft9kqFhY1Tg9u325Sg406S7Z3IgNDptvO4eCCoJDfmI=;
 b=cd6Wjzxz+Ddz1F1gC9SgIj6GoY3wPGVh1+aqXECzhlUg2OisnwXFPjD6tuiRFX55g69ildFRg1P+2NOBNI9XDnoNS3LRGjG1zMoKqUDD1cdei1vdqWghbZZWBAMzDeJwuUpJsKCeMDGWVgVKlCgqGM7ztNLvba/ZpBIaRBo6myU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3898.eurprd04.prod.outlook.com (52.134.65.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Sun, 28 Apr 2019 06:29:26 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1835.016; Sun, 28 Apr 2019
 06:29:26 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Mukesh Ojha <mojha@codeaurora.org>, "thierry.reding@gmail.com"
 <thierry.reding@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] pwm: imx27: use devm_platform_ioremap_resource() to
 simplify code
Thread-Topic: [PATCH] pwm: imx27: use devm_platform_ioremap_resource() to
 simplify code
Thread-Index: AQHU6Eses7WpkEQM7UuKKaAl029asaYm8YaAgCpVTRA=
Date: Sun, 28 Apr 2019 06:29:26 +0000
Message-ID: <DB3PR0402MB391651B480F380A067FC827CF5380@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1554095960-15638-1-git-send-email-Anson.Huang@nxp.com>
 <1fae9beb-1dbc-5e62-a39e-57ae5d8e7671@codeaurora.org>
In-Reply-To: <1fae9beb-1dbc-5e62-a39e-57ae5d8e7671@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4f5f4618-db01-4270-2efa-08d6cba2dcc1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3898; 
x-ms-traffictypediagnostic: DB3PR0402MB3898:
x-microsoft-antispam-prvs: <DB3PR0402MB389861C2C7A13A1EAE957624F5380@DB3PR0402MB3898.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 0021920B5A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(396003)(346002)(136003)(376002)(189003)(13464003)(199004)(71190400001)(102836004)(6246003)(256004)(110136005)(2201001)(97736004)(2906002)(64756008)(66476007)(66556008)(476003)(5660300002)(71200400001)(478600001)(11346002)(86362001)(446003)(73956011)(76116006)(66066001)(66446008)(66946007)(186003)(7696005)(6436002)(26005)(76176011)(33656002)(55016002)(486006)(7736002)(14454004)(52536014)(8936002)(68736007)(74316002)(99286004)(305945005)(44832011)(6116002)(81156014)(229853002)(3846002)(8676002)(53546011)(53936002)(4326008)(81166006)(2501003)(9686003)(316002)(25786009)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3898;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: EWfeD8ilykJcLMY1p4GWe8cxwvWKYHl1rpT8ylll0WyBsHvlvHaqd5+TRQ5CkuO77u3006mGVp7u5l3d0uqAH0DQYXPe/rpsoAHBx7SzfEV6qeZyGCruyt8bQ8DS9NK6LSO0mEeR6R+dUnOpKMLnD3KK6R+n4nJtk4lmYklKBVVZuUM+NM1ps0ZsMF01TRTvDLrPsdnHp74TJ8PGr7pD/eWyBfOBqkdMOaAFqE1xlTh7aw2nSsmqVHO3zAofDReWa4ZMCZ28lntUwOu83zPeViFv/VEN+L/Htrtf9O95V5eriVsHFrv1LkRilYS7Kb0pFtmbl/5hFET4GBYq4jKpb7x/qFr4mgnXbfx+QRYwl6/Nhv/uPdQsVYhkPZPS/AWnTzqpdGckdtK/VEUJhnh84sSEc8+Iugl87AFwFlbDxOQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f5f4618-db01-4270-2efa-08d6cba2dcc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2019 06:29:26.6901 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3898
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_232933_528562_F578D21A 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
> From: Mukesh Ojha [mailto:mojha@codeaurora.org]
> Sent: Monday, April 1, 2019 4:01 PM
> To: Anson Huang <anson.huang@nxp.com>; thierry.reding@gmail.com;
> shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de;
> festevam@gmail.com; linux-pwm@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH] pwm: imx27: use devm_platform_ioremap_resource()
> to simplify code
> 
> 
> On 4/1/2019 10:54 AM, Anson Huang wrote:
> > Use the new helper devm_platform_ioremap_resource() which wraps the
> > platform_get_resource() and devm_ioremap_resource() together, to
> > simplify the code.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> 
> Reviewed-by: Mukesh Ojha <mojha@codeaurora.org>
> 
> Cheers,
> -Mukesh
> 
> > ---
> >   drivers/pwm/pwm-imx27.c | 4 +---
> >   1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/drivers/pwm/pwm-imx27.c b/drivers/pwm/pwm-imx27.c index
> > 8061306..434a351 100644
> > --- a/drivers/pwm/pwm-imx27.c
> > +++ b/drivers/pwm/pwm-imx27.c
> > @@ -291,7 +291,6 @@ MODULE_DEVICE_TABLE(of, pwm_imx27_dt_ids);
> >   static int pwm_imx27_probe(struct platform_device *pdev)
> >   {
> >   	struct pwm_imx27_chip *imx;
> > -	struct resource *r;
> >
> >   	imx = devm_kzalloc(&pdev->dev, sizeof(*imx), GFP_KERNEL);
> >   	if (imx == NULL)
> > @@ -326,8 +325,7 @@ static int pwm_imx27_probe(struct
> platform_device *pdev)
> >   	imx->chip.of_xlate = of_pwm_xlate_with_flags;
> >   	imx->chip.of_pwm_n_cells = 3;
> >
> > -	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > -	imx->mmio_base = devm_ioremap_resource(&pdev->dev, r);
> > +	imx->mmio_base = devm_platform_ioremap_resource(pdev, 0);
> >   	if (IS_ERR(imx->mmio_base))
> >   		return PTR_ERR(imx->mmio_base);
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
