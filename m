Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86385B55F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 08:28:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vl6aD1IP0thI0/p+GIJ4FJNPkNVB9pcpbO3D4CJsk2A=; b=nmoiA35QSC5zgs
	APi4MAxaaK68top9rE61RTGuFD0YZ634H5LAFPxrQqGJ3ihjLPIzOU9+VQxTyC/qP3xjKBeoRydsT
	wZQOk5YwZ4jnKRVKnT04fKS2LX/06K7GWqzB626IoKp8cDlQgaz2a9zTdlZRBCCcPgYeG56003zbm
	qatd056BWZeh+qTvkSdmuDjfL5JzxDmCKx3av9nu5y97xvfQJl4f9gN7JxnpIB7iX24VOs0iLaAgk
	Z35Y1xRDTE/DuQFlIgQDrF6miECC4XJTBR7I57yRTZDfIXkfZMGVUS26iB0iBzy4ZF8xpoXWkLYhW
	6i9fL1KIGtbhU8OvE+Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKdIf-0008NR-2u; Sun, 28 Apr 2019 06:28:33 +0000
Received: from mail-eopbgr10080.outbound.protection.outlook.com ([40.107.1.80]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKdIW-0008N3-UU
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 06:28:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SfiyVtjfIW2gJk7cswGVPgsY0qVl9cvmx9dmZ0BGK3I=;
 b=FzqNaq1gQO8A6YpYtFZL2M8uzMVcMs1TCgtDCx3raheeKbcy8SeQHOeGVH5OSa524QX9LAzmxP+IsOLQTGgVu01HB1FaagpekeeKzbBOfN/sT6UYmt9HMyOSB4/WqwfwTtZdTrHegd4yaL2VeM1bQNCXYne1g6T0Z++VBwZxnoo=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3898.eurprd04.prod.outlook.com (52.134.65.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Sun, 28 Apr 2019 06:28:21 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1835.016; Sun, 28 Apr 2019
 06:28:20 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Mukesh Ojha <mojha@codeaurora.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "marc.zyngier@arm.com" <marc.zyngier@arm.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] irqchip/imx-irqsteer: use
 devm_platform_ioremap_resource() to simplify code
Thread-Topic: [PATCH] irqchip/imx-irqsteer: use
 devm_platform_ioremap_resource() to simplify code
Thread-Index: AQHU6FMxMyoSmAudakaHd9hk5kAdZqYm7Z+AgCpY2EA=
Date: Sun, 28 Apr 2019 06:28:20 +0000
Message-ID: <DB3PR0402MB39165CB08BB94150215DE197F5380@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1554099427-5240-1-git-send-email-Anson.Huang@nxp.com>
 <e7f06738-6732-dc08-670d-ab78c985231f@codeaurora.org>
In-Reply-To: <e7f06738-6732-dc08-670d-ab78c985231f@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b22a5dd5-2a5d-41f1-73ca-08d6cba2b583
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3898; 
x-ms-traffictypediagnostic: DB3PR0402MB3898:
x-microsoft-antispam-prvs: <DB3PR0402MB38987F29840703E0BA49E21CF5380@DB3PR0402MB3898.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1060;
x-forefront-prvs: 0021920B5A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(396003)(346002)(136003)(376002)(189003)(13464003)(199004)(71190400001)(102836004)(7416002)(6246003)(256004)(110136005)(2201001)(97736004)(2906002)(64756008)(66476007)(66556008)(476003)(5660300002)(71200400001)(478600001)(11346002)(86362001)(446003)(73956011)(76116006)(66066001)(66446008)(66946007)(186003)(7696005)(6436002)(26005)(76176011)(33656002)(55016002)(486006)(7736002)(14454004)(52536014)(8936002)(68736007)(74316002)(99286004)(305945005)(44832011)(6116002)(81156014)(229853002)(3846002)(8676002)(53546011)(53936002)(4326008)(81166006)(2501003)(9686003)(316002)(25786009)(6506007)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3898;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tgc+SoAgaoIWGsCE47Xso9JnUp63uODd2543SXLbRDks5uRUmEJEQsZUyC+SwhKWv5wavTq58NpnpcRbZ1A1fpfIVMtXCN3614qk31IZGE7n1oRWxxG2sCHOtPAhdnwM0UvNUydWTQH8FIunFKlCpqE+ifF3Q4lUa8DoL3EqcjxikVjfnghUpFLPXsim350kFmii7zdFt1I0ZlyABPFUINeAPfZTq9Bo4yUqwHTKg3FBiR+PChPtVdXPXwpqewJERmR7NdBxzzNj46COk8DxX+/mWjOXB888vd/kpUQPyD+h2+P7urMGgxs/KcNg6pbf2Nvb2ZL4nansm7k0VI7bY/i7Pop0wjhWIJdi7BFG8F3xf7JtEr5OG7zlmFBmg9ELvoK/UE5LcQjSynthY1o1ZDpmCHqaMSQxAPVRKy/sc8w=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b22a5dd5-2a5d-41f1-73ca-08d6cba2b583
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2019 06:28:20.9164 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3898
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_232825_766216_F2FCFAD4 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.80 listed in list.dnswl.org]
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
> Sent: Monday, April 1, 2019 3:47 PM
> To: Anson Huang <anson.huang@nxp.com>; tglx@linutronix.de;
> jason@lakedaemon.net; marc.zyngier@arm.com; shawnguo@kernel.org;
> s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH] irqchip/imx-irqsteer: use
> devm_platform_ioremap_resource() to simplify code
> 
> 
> On 4/1/2019 11:51 AM, Anson Huang wrote:
> > Use the new helper devm_platform_ioremap_resource() which wraps the
> > platform_get_resource() and devm_ioremap_resource() together, to
> > simplify the code.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Mukesh Ojha <mojha@codeaurora.org>
> 
> Cheers,
> -Mukesh
> > ---
> >   drivers/irqchip/irq-imx-irqsteer.c | 4 +---
> >   1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/drivers/irqchip/irq-imx-irqsteer.c
> > b/drivers/irqchip/irq-imx-irqsteer.c
> > index 88df3d00..290531e 100644
> > --- a/drivers/irqchip/irq-imx-irqsteer.c
> > +++ b/drivers/irqchip/irq-imx-irqsteer.c
> > @@ -144,7 +144,6 @@ static int imx_irqsteer_probe(struct
> platform_device *pdev)
> >   {
> >   	struct device_node *np = pdev->dev.of_node;
> >   	struct irqsteer_data *data;
> > -	struct resource *res;
> >   	u32 irqs_num;
> >   	int i, ret;
> >
> > @@ -152,8 +151,7 @@ static int imx_irqsteer_probe(struct
> platform_device *pdev)
> >   	if (!data)
> >   		return -ENOMEM;
> >
> > -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > -	data->regs = devm_ioremap_resource(&pdev->dev, res);
> > +	data->regs = devm_platform_ioremap_resource(pdev, 0);
> >   	if (IS_ERR(data->regs)) {
> >   		dev_err(&pdev->dev, "failed to initialize reg\n");
> >   		return PTR_ERR(data->regs);
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
