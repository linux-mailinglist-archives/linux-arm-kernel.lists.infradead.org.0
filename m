Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B11BEF1BE1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 17:59:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ntsM21SDlKlIwGBAaUMyI6yY1M2Zey6B8/ixCmaXE+Y=; b=dQYpUpUEwHn0j8
	uGaAfm5l71M0kiY8kv8VlkeoQiPqtN0o0GlaVTn13RGinZIIqqK2+lJf0eLCVhiX74dEp9j6AM48L
	+7hT3YmNWVfFNaK+qi3AJp9a1MZjMqKi96nS+yMsrPN43thkLghvMLkYBFRVFVg/3xdND50Ay7KCX
	Duja/0oeFlulETe2f1ifI4ZF0ut0Vh72N/yQlKgfEyByIfU8MojtallIsBjg0DQLPDUNOD6taH4ae
	HAqa4AmPt+0gojrGHg0qIGBNBdswqjgevGj9tia+on5wYpamqmyHrKDAfnabI1cqdLm9ga3RhM2Wv
	5+tmxWt1CP2xsqyE80QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSOes-0001ZU-Sg; Wed, 06 Nov 2019 16:59:50 +0000
Received: from mail-eopbgr800059.outbound.protection.outlook.com
 ([40.107.80.59] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSOem-0001YN-8w
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 16:59:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FoHaUcYaHkuCgW9Rp+TLtfcNjzWcZmkX6VanELnOA+djsXtoXYJkKkUiI6rHH0Tvn/xDj0LbryA6VZ3IHJzj3/E5RHBKF+4HkZxfIEWKQ6vwXSw4uhKQCOskN5XrUF97rIxysY2ZoIgZWSxCLqVTnS6cgagb2q6POF6pXg3eYvvNZH7n3S0cg7gn6Qpka5hlaYmJTLnqdHGvz3OwmiAKE2vQwKgAHEh1RwZ0rq1owxxNTwVo9X7Ex6r0499toIIl1kEMV7DuoRMIhlv8aGbd89N3+B9aFjCKgLNco1GCVNJ7iRiXjk+dB2lmPdDvINLnT3aL0rY1d9zXnoqnR0PoLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SZRWD9+IbAgYjBeRRtwEJzOrkgiDy3JyIMlKiZYfxFg=;
 b=nMLz42kWyZlHQ/SyBTzuAQnFcCQzKUu2Nn7/cq9LIcX7p4NdBodfC1h6I+99p+FymvEbRAr9b4mlzv8uuTSRYd8LiWlwkbzFnWoRTlx2p1lb6zm5k54GvkjMWlleev9b+VAcnyagSMEQcZtZJq0WZTeEiJA/iBjhzyXh2+Wy5RSreT+6+mZnVoWvu52P1N8RBlC83Osqo7BRrHagu9fAfr8UXjnHpC1AsUG7MT7VG0SWlM2S+GgdudgHHYD4RsXkKploPyI56FG9vm4yl2fxwtkQKqs2cs/2joAJAA75+pvYWn4M6mWXfz8iZv3W81802y+KM5Mxn22q8Gm/zPjUXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SZRWD9+IbAgYjBeRRtwEJzOrkgiDy3JyIMlKiZYfxFg=;
 b=JnzwpGJioGOrbstA76eDaa//51kVZdXgn6uOnxUV6pgDMMpFelXs579OVa8tcPIkJgqLvuBEl0sFCVeB3Iax32bwH93dVmXqKoq6+zM/4uJPJ0Uap3ApkjyW9GGMafhZr7ZASrm+sexvDFPf8qzmNITvg+iSp5+PHPARzl0ZTLM=
Received: from CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) by
 CH2PR02MB6728.namprd02.prod.outlook.com (10.141.156.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Wed, 6 Nov 2019 16:59:38 +0000
Received: from CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::701f:f4b3:5a98:dbf2]) by CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::701f:f4b3:5a98:dbf2%7]) with mapi id 15.20.2408.024; Wed, 6 Nov 2019
 16:59:38 +0000
From: Radhey Shyam Pandey <radheys@xilinx.com>
To: Wei Yongjun <weiyongjun1@huawei.com>, Michal Simek <michals@xilinx.com>,
 Russell King <linux@armlinux.org.uk>, Robert Hancock <hancock@sedsystems.ca>
Subject: RE: [PATCH net-next] net: axienet: Fix error return code in
 axienet_probe()
Thread-Topic: [PATCH net-next] net: axienet: Fix error return code in
 axienet_probe()
Thread-Index: AQHVlLqn5FzAWnixa0CNU2pyYHx21Kd+W8Pg
Date: Wed, 6 Nov 2019 16:59:38 +0000
Message-ID: <CH2PR02MB700031904CC37C8D5EE3435EC7790@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <20191106155449.107672-1-weiyongjun1@huawei.com>
In-Reply-To: <20191106155449.107672-1-weiyongjun1@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=radheys@xilinx.com; 
x-originating-ip: [183.83.136.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f4f8170c-b582-4666-c9bc-08d762dab57a
x-ms-traffictypediagnostic: CH2PR02MB6728:|CH2PR02MB6728:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB672817D4EC2119245ED34551C7790@CH2PR02MB6728.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(39860400002)(376002)(366004)(189003)(199004)(13464003)(186003)(99286004)(26005)(256004)(33656002)(5660300002)(66066001)(52536014)(7696005)(53546011)(76176011)(9686003)(229853002)(66446008)(66556008)(66946007)(66476007)(64756008)(102836004)(55016002)(6116002)(3846002)(2906002)(4326008)(76116006)(6246003)(14454004)(478600001)(54906003)(110136005)(316002)(6436002)(6506007)(305945005)(74316002)(8676002)(7736002)(476003)(486006)(8936002)(25786009)(446003)(81156014)(81166006)(71190400001)(86362001)(71200400001)(11346002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6728;
 H:CH2PR02MB7000.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hEdnIpSMA50J+1+i9d3Q0ju7/rLTv0CQnXHeSeN/jxyYezcF7DZdpPSnITVRodnzs83ZBzm5w2i6xdee21yErJo1hRdgvA7UvDUUC4DShioPAc9FYa/Ab6hv5ZbtWWxAzpCekTwgjyYMMlSMDk1EA2Tb8AIT3J9E1mJWeSeLms2xCpXpW86sfGFm7MUriFm2XUP5TBubKQRp9Iu/dgRqZHoD9EvaGjhkhmIfxSxXUJCcsFgsS3FweyBp0XNgABNA/v8c5vPQn1mGsztN6PVBTYVbrNmhzGPsVyYLGVk0xFiH6dnDn+JDr5hejNlgob6ly8mQm9Id2/k44euCt/IUSX1rI0C7xn6s23F1HdeyUbhyyBposAwuT9afo/TBd+C8giSq2m1yfh1jPtGS8UBpwCceXwMcVIe2L970L7KYKmXew5Y3Smzzgal/FHPyf3e1
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4f8170c-b582-4666-c9bc-08d762dab57a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 16:59:38.2015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mzrwWh2Ab9ebPbwLvQ04dgraz44Fi2SH65jZ1+kxFJ3YJQVNtV3qGB5qI/0+ck+vp0c7q5IjJeYg7lXyeQcX9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6728
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_085944_316568_A2EFF364 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.80.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Wei Yongjun <weiyongjun1@huawei.com>
> Sent: Wednesday, November 6, 2019 9:25 PM
> To: Radhey Shyam Pandey <radheys@xilinx.com>; Michal Simek
> <michals@xilinx.com>; Russell King <linux@armlinux.org.uk>; Robert Hancock
> <hancock@sedsystems.ca>
> Cc: Wei Yongjun <weiyongjun1@huawei.com>; netdev@vger.kernel.org; linux-
> arm-kernel@lists.infradead.org; kernel-janitors@vger.kernel.org
> Subject: [PATCH net-next] net: axienet: Fix error return code in axienet_probe()
> 
> In the DMA memory resource get failed case, the error is not
> set and 0 will be returned. Fix it by reove redundant check
:s/reove/removing

> since devm_ioremap_resource() will handle it.
> 
> Fixes: 28ef9ebdb64c ("net: axienet: make use of axistream-connected attribute
> optional")
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>

The rest looks fine.
Reviewed-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>

> ---
>  drivers/net/ethernet/xilinx/xilinx_axienet_main.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> index 867726d696e2..8f32db6d2c45 100644
> --- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> +++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> @@ -1788,10 +1788,6 @@ static int axienet_probe(struct platform_device
> *pdev)
>  		/* Check for these resources directly on the Ethernet node. */
>  		struct resource *res = platform_get_resource(pdev,
> 
> IORESOURCE_MEM, 1);
> -		if (!res) {
> -			dev_err(&pdev->dev, "unable to get DMA memory
> resource\n");
> -			goto free_netdev;
> -		}
>  		lp->dma_regs = devm_ioremap_resource(&pdev->dev, res);
>  		lp->rx_irq = platform_get_irq(pdev, 1);
>  		lp->tx_irq = platform_get_irq(pdev, 0);
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
