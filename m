Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6252A1FC80D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 09:58:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k6VoYtycFgtPMhdFLII70h1xoA80rbV2ODXY5LVgwH4=; b=U9XV0rT1KUODml
	GC9jG69C7nuxv6Xytjq/fnPSSW/q0T5tv65GWHJFI4GguwhkIflif4qxZQbQwajn1JR5c42w8eWMu
	vbVzyPG84pbwyaMlNkRbpQ0NICuTNO+KcR2eYjRQBECJg8HVYQue+g9wQsi3ZA0RuEUX4r/Kbi9Z9
	Bq8Gn4Ybbm8Tb1pGX3xJMTUvWFYt2e5EAR5Mis9fXRiw0agrV7wQp0v5ZQkjFO/MVb8/5LTjoUz2I
	WH2ojR46RbpVNuBHs38UOQzN6puEapZCsJyath7ninH1356cJWW/yhcYlGkslk8FmoP8eXkBq0t8y
	JwG2AyP0Xrhy+d/6PAkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlSxN-0006Oj-Qe; Wed, 17 Jun 2020 07:58:01 +0000
Received: from mail-db8eur05on2082.outbound.protection.outlook.com
 ([40.107.20.82] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlSxB-0006Jm-Cp
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 07:57:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N9d8mvTPorDFRlhF6Yla5YgZMQxYOSWEIYINLr0MzwlMM9TObpeSQ8SoRz/qlvKTr32J+TVr6v/ZE3EdY78qmug31dUcAlC33wLrqwORm6XQpzoprv4NjnEFHjSrfp4Co9mmbF/ubEYooc0tSLCmzRY714CQLDTWPt498NLPgAjhcXxbsrYkDRn88WLqw+5MjQhKhzypjFx7X2lxrqqNdTali4Vrgqf3XCUVulR+E+aKIZw+JF1HeasWQf1a179cGA0kOsSDspiqaiceu0siTnH7Vtc4Zen4NWeadtzp4AfnNB5PapgKSwLeFajz0hRlhHpfsjbmcImv7BsngAnnMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+j1aV5XZIsetXMs+sMI7LV3EIQnLaqm8ztF8l48uRrU=;
 b=hJKsEteITnq5RzutdDaXtpZ0LsUiDktvksTGNVD7CnBH/cC3Eem2RxtE8HsKkinwYVELXnYkt8A5T19o+egamdmsmnZ4arwYcuAQ+m6Z1dOvP5R9Faw2jyZwhwVwuizLx5oEQC6VpIoU0jzY2i/AydDjOWEK8iwoRM3+rMyK16R3OQOfpz8EHdiuMAtouxzfm/X2r4CP76gsnjrRWX4Obi7fmvCgs3ePe1+50QPAH09chMQO8SE6RyxRLc42Bj8DktpgGXN6VDRjIXfqjLiH/pEd3P/ICERkaJYVTWFlCwyfYG3o9E5Iq9D9LFVwBbpVrmrOa5tDJf1LaWa/9xUlzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+j1aV5XZIsetXMs+sMI7LV3EIQnLaqm8ztF8l48uRrU=;
 b=Z/y+L4gmzRZC9RVpboSBq86ldhhN+n5JcBcaGfHgCEZQxTrsg9UyIKNimUK0L/16J4PSOg19Dp5nO6ZSA6vxPxAJDiDZJvHUGXY3KozxqZ9pflb+0IQcjD/PhqEbFHfYs3rgmNiXcriYVJ97RNytnrDROqRAtnL+BqmppRAuOP4=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6503.eurprd04.prod.outlook.com (2603:10a6:20b:ff::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Wed, 17 Jun
 2020 07:57:46 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3088.028; Wed, 17 Jun 2020
 07:57:46 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, "arnd@arndb.de"
 <arnd@arndb.de>, Leonard Crestez <leonard.crestez@nxp.com>, "krzk@kernel.org"
 <krzk@kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] soc: imx-scu: Support module build
Thread-Topic: [PATCH] soc: imx-scu: Support module build
Thread-Index: AQHWRGTWXA/Y7jtl6U620nWhqctCc6jccHNQ
Date: Wed, 17 Jun 2020 07:57:46 +0000
Message-ID: <AM6PR04MB49667E1B41DC2A77B3E2FEBF809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1592369623-10723-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1592369623-10723-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a02c2915-f4cf-448c-6945-08d812941f78
x-ms-traffictypediagnostic: AM6PR04MB6503:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB6503DF3E0328A731F60E02B2809A0@AM6PR04MB6503.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4PBnVuIUPtORZ2VWaSGNyrb3yswDFN5MhjveLccw0tbO+wGt1U1J4VLNgmTCbZDhTMgtR/u9hGk7sLMvQ1OnQs7+PIqDdZu82TDLxudWxav0LLMJsZE61GLT09QOx4z9+ZNYFQ6RJjFeRXRu3uCuQLuMU5zElKj0wrtMEZ43igJjXWntMAfwCVaRmvcE73vJQABtaUu4545b6Su9xkMSiFFrvqEXQbzUBtgpjfyfW9tjs4nqIfQZJUSXjo9waEnz6efNeCJvMw0tg0+rcs58A+PpQ97ZWAHVC8OafqpVc4jwDHS6n645vMNqVLOVKu7Q7vAoXqsut5+Qo414TC7Saj8UQfdMXx7sXeOu5iC6Fp/2WOAWpkJnikLMuLRO4fL4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(346002)(136003)(396003)(376002)(8676002)(83380400001)(5660300002)(478600001)(110136005)(52536014)(8936002)(71200400001)(4326008)(66556008)(6506007)(2906002)(316002)(66446008)(64756008)(76116006)(26005)(66946007)(66476007)(186003)(33656002)(86362001)(44832011)(55016002)(7696005)(9686003)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: r9/S/GsmY/Tf8HR0F7lObIiWm5Q7wAKuttKfgeF2h1J/hNXkUVRS5AA9ad1+NZ79F8FfyxJhQmDEP6j6E5CzXd49QulMTLSvNG3g7daq+aSN/Z8TC0deJj4Qz5McL/tuV7L0Re/m9zEgo1lSSTGKU1Yfcx/Hy3ammo4kBvdPxCYcGCn+sfQ9XSCu7Pxn9T9Z3oXYptKWEpz1kDxlsc0sYC1F3n74FmkxVvFs1LZ5QMIeK2V9y2ILyC7s28xiXCL/oJQAFmQxk75taJKv82XoXszt5kUgClVqz5XFrJr0SdNqd4pMUT15zKbQ9eO9esoI/QZNqJ3mxbaa9cg83AiChGwQ0zFEWSPkcX6PAkHPQw3wW5OKzQf01xpF9//OFbOioazA/QpFFqRYl/RAT2YIKKKiko09rK9BcXLB+nZ7wB4R/meUkwbhWy3fFCLeTDsKrGUWeqRVrlBc6fP8GNSWklw2zR6OC23YODqWo5AWiT3t23+QHF+tUVh8fn9RT5Xe
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a02c2915-f4cf-448c-6945-08d812941f78
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 07:57:46.4370 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z4yCcoBEVR4OqUHMzYlCuyXw0klz8XaJdVeTeXVqHOZu5+s9LpzLHnP0n9x5rf2boB/9pog6cpSB5ULHGYbgKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6503
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_005749_502361_84C6452D 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.82 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Wednesday, June 17, 2020 12:54 PM
> 
> Change the configuration type to tristate, add module description, author and
> license to support module build.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/soc/imx/Kconfig       | 2 +-
>  drivers/soc/imx/soc-imx-scu.c | 5 +++++
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig index
> d515d2c..c255acb 100644
> --- a/drivers/soc/imx/Kconfig
> +++ b/drivers/soc/imx/Kconfig
> @@ -9,7 +9,7 @@ config IMX_GPCV2_PM_DOMAINS
>  	default y if SOC_IMX7D
> 
>  config IMX_SCU_SOC
> -	bool "i.MX System Controller Unit SoC info support"
> +	tristate "i.MX System Controller Unit SoC info support"
>  	depends on IMX_SCU
>  	select SOC_BUS
>  	help
> diff --git a/drivers/soc/imx/soc-imx-scu.c b/drivers/soc/imx/soc-imx-scu.c index
> 20d37ea..bdd43ed 100644
> --- a/drivers/soc/imx/soc-imx-scu.c
> +++ b/drivers/soc/imx/soc-imx-scu.c
> @@ -5,6 +5,7 @@
> 
>  #include <dt-bindings/firmware/imx/rsrc.h>  #include
> <linux/firmware/imx/sci.h>
> +#include <linux/module.h>
>  #include <linux/slab.h>
>  #include <linux/sys_soc.h>
>  #include <linux/platform_device.h>
> @@ -185,3 +186,7 @@ static int __init imx_scu_soc_init(void)
>  	return PTR_ERR_OR_ZERO(pdev);
>  }
>  device_initcall(imx_scu_soc_init);
> +
> +MODULE_AUTHOR("Anson Huang <anson.huang@nxp.com>");
> +MODULE_DESCRIPTION("NXP i.MX SCU SoC driver"); MODULE_LICENSE("GPL
> +v2");

I'm ok with the change. But I'm curious how can this module be autoloaded
without MODULE_DEVICE_TABLE.
Have you tested if it can work?

Regards
Aisheng

> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
