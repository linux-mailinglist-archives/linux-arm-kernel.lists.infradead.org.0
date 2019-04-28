Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A73B55C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 08:27:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9IOpB7QBr9Mqt6/aVcTE6L+6yDTUZlpZjgXEhp2Xf7k=; b=Db0icF8+ldR0cE
	d4tanfWDGoxpxvGmd2fnBmmcKbuXE9zqAVoCW5fvso+digArIQXj5fth1AV7/vj++VUAoqUlfN8o3
	OlbEzvHhukcLXsyaKC7t4MpPj9gyiyA6ynQ6voup0Dkzo4fHDX+VawOa6gQOjGeiaSRBFFa84KWny
	z+oGaEV1JaDHG8BkB7iFw6MGtCalkOIHoVQ0U3aSW8yF9+7XM7Y9a0YDRrdXrRea7Pbb1yilzP4nN
	/TYSArgTBwcPJNZEZlzXTTjwEocsoNDyjktTjZIPL+voLA+m28ebBBHbX2+JI+UtBa8X4bUyIr/RB
	w+eByJLTFdnOL2L9QGrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKdHg-0007sR-QW; Sun, 28 Apr 2019 06:27:32 +0000
Received: from mail-eopbgr10044.outbound.protection.outlook.com ([40.107.1.44]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKdHY-0007r9-BI
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 06:27:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aSXfUGclX286F/FD9eW26ISMrEAeFDAVts1D/2i82GE=;
 b=cDZAlHipxzDyb4m6ppn1p+k+e7CZQH9Ye08aA7lC3zQt1d4dftHvZsVSArxNUuo2WY07kuK9xnfPxvDALz8E9rdTUmdBYhnhKYqjalTpHuS3dmMNxnZyIVQ15CFNYhu6x8knwf125i1BDSrWHun+PuWlHZbt0iplUFIHjE5agnE=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3898.eurprd04.prod.outlook.com (52.134.65.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Sun, 28 Apr 2019 06:27:17 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1835.016; Sun, 28 Apr 2019
 06:27:17 +0000
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
Thread-Index: AQHU6Enp8Rg1WsmI0EedzzVUaGgENqZRRjxg
Date: Sun, 28 Apr 2019 06:27:17 +0000
Message-ID: <DB3PR0402MB39164C6D8A02B53E1F224232F5380@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1554095441-15220-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1554095441-15220-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 436fc123-6230-40e1-8db6-08d6cba28f98
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3898; 
x-ms-traffictypediagnostic: DB3PR0402MB3898:
x-microsoft-antispam-prvs: <DB3PR0402MB38987931F71558CF6C0935F5F5380@DB3PR0402MB3898.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:644;
x-forefront-prvs: 0021920B5A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(396003)(346002)(136003)(376002)(189003)(13464003)(199004)(71190400001)(102836004)(6246003)(256004)(110136005)(2201001)(97736004)(2906002)(15650500001)(64756008)(66476007)(66556008)(476003)(5660300002)(71200400001)(478600001)(11346002)(86362001)(446003)(73956011)(76116006)(66066001)(66446008)(66946007)(186003)(7696005)(6436002)(26005)(76176011)(33656002)(55016002)(486006)(7736002)(14454004)(52536014)(8936002)(68736007)(74316002)(99286004)(305945005)(44832011)(6116002)(81156014)(229853002)(3846002)(8676002)(53546011)(53936002)(4326008)(81166006)(2501003)(9686003)(316002)(25786009)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3898;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cVK7SjVPc+73c5jtCA6Dgcuu0bDiXEJzE3hipTJBKYUSTdRbtLBgL/oKzKQ1aTtlF44/GT+tgLepC/C8lU4Wqeq/Mcgjq5aUPh2JTo8+kHl6e1QnExsOuT3NSwjPmkvI3WwmULyTPg/uore5JKa1ffQtoa88sQbt6tUJhhcWxwoFSTuYAasBucTDeffZwuasT84UWBi+x7lZbOcKM1SX4mHp36me6CSL+zcOSaUidWr15ZtZbUYN7Fe1Symq+Z1IilppF62BhTyiVjw1Up0KM6BDoQ3Phnj+hDY+YHvwq6MkdE042AzBOJfSPJ1QQycJzHl2nD8zeBb7+Dfp7sJaauL2OZBRo5PrkpU5XMEZN74kR7zZ3vPfjpGgPpu34UfQBZxrFYq2NNY7CB69rHYUvuzVYhD3MP+GYTox05azalE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 436fc123-6230-40e1-8db6-08d6cba28f98
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2019 06:27:17.2783 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3898
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_232724_460873_3C9E78F9 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.44 listed in list.dnswl.org]
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
> From: Anson Huang
> Sent: Monday, April 1, 2019 1:15 PM
> To: jassisinghbrar@gmail.com; shawnguo@kernel.org;
> s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: [PATCH] mailbox: imx: use devm_platform_ioremap_resource() to
> simplify code
> 
> Use the new helper devm_platform_ioremap_resource() which wraps the
> platform_get_resource() and devm_ioremap_resource() together, to simplify
> the code.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/mailbox/imx-mailbox.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
> index 85fc5b5..25be8bb 100644
> --- a/drivers/mailbox/imx-mailbox.c
> +++ b/drivers/mailbox/imx-mailbox.c
> @@ -264,7 +264,6 @@ static int imx_mu_probe(struct platform_device
> *pdev)  {
>  	struct device *dev = &pdev->dev;
>  	struct device_node *np = dev->of_node;
> -	struct resource *iomem;
>  	struct imx_mu_priv *priv;
>  	unsigned int i;
>  	int ret;
> @@ -275,8 +274,7 @@ static int imx_mu_probe(struct platform_device
> *pdev)
> 
>  	priv->dev = dev;
> 
> -	iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	priv->base = devm_ioremap_resource(&pdev->dev, iomem);
> +	priv->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(priv->base))
>  		return PTR_ERR(priv->base);
> 
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
