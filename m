Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC41B3C947
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:46:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mGo/+FJh6kuVp26W+KBYV5wbA2zLmS1fLvzgarbykRs=; b=SYqAapaOXCDLsF
	6y/PTIMc0Zylc/sdNkglnAbZilh1a9WwNjLTUvJ9jxLdodNh+jqA/rlZ9KIxPbN06Gx0GN12B1EH3
	8CE6B7ekXnNyGVfsX1uuQLMlL3Nzx/XaveIysGllk7wxOT9W6TzW26GJl/ryuf76ZFxvcMMf8KK7S
	PiDmIrUWfO6+q0QKbM5eibHacro67iPMVr2L5VI3qBEUsRtO6dXW1RbHfeP9b5qOv1R+TAH6ldvPs
	R6W/ZOc3SPIoslY7cc8JIlDQDB+Vmo4Ib76Wk4WnUuGXQg0ETSPXRxRMnv9gLlD+i7aZj18JAW0wy
	lvsp5aka9zqD89cGfcSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haeI3-00061S-Fe; Tue, 11 Jun 2019 10:46:07 +0000
Received: from mail-eopbgr60073.outbound.protection.outlook.com ([40.107.6.73]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haeHs-0005ok-WE
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:45:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YsjhyV17m37CgponAPUyhi72H4hVlc4WCE9sH9b1IOA=;
 b=iNSXtZpNMGTNx67n8GhnviFmVFIKolHJNo5swaDejHDWQ9uxZUMyio5RwMIvt7A0NcsOHumWncSWOGe3b6iI1mZB528zmB3MR5BHNXt04f6d2Eer9AUupJczuzLK9o2XL7nMRqYWFGisXZL5yfxuURSrYEwGT2rqh5FYyAoPTt8=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4722.eurprd04.prod.outlook.com (20.176.214.219) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Tue, 11 Jun 2019 10:45:52 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::11e1:3bb9:156b:a3e4]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::11e1:3bb9:156b:a3e4%3]) with mapi id 15.20.1965.017; Tue, 11 Jun 2019
 10:45:52 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "festevam@gmail.com"
 <festevam@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "linus.walleij@linaro.org"
 <linus.walleij@linaro.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>, "olof@lixom.net"
 <olof@lixom.net>, "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, "bjorn.andersson@linaro.org"
 <bjorn.andersson@linaro.org>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 2/3] pinctrl: freescale: Add i.MX8MN pinctrl driver support
Thread-Topic: [PATCH 2/3] pinctrl: freescale: Add i.MX8MN pinctrl driver
 support
Thread-Index: AQHVFpRuRAcdccdgb0qyMoE7LDL/16aWS/3A
Date: Tue, 11 Jun 2019 10:45:51 +0000
Message-ID: <AM0PR04MB4211964EA3993A99465D861980ED0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190530030546.9224-1-Anson.Huang@nxp.com>
 <20190530030546.9224-2-Anson.Huang@nxp.com>
In-Reply-To: <20190530030546.9224-2-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8869f2b7-1dc2-4722-9f2d-08d6ee59f93e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4722; 
x-ms-traffictypediagnostic: AM0PR04MB4722:
x-microsoft-antispam-prvs: <AM0PR04MB472223DDEFFB52335A1CC2FE80ED0@AM0PR04MB4722.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 006546F32A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(346002)(376002)(136003)(396003)(189003)(199004)(7736002)(2501003)(73956011)(8676002)(8936002)(25786009)(6246003)(33656002)(81156014)(76176011)(86362001)(81166006)(2201001)(26005)(446003)(316002)(99286004)(53936002)(76116006)(66066001)(11346002)(305945005)(6436002)(102836004)(66476007)(476003)(44832011)(5660300002)(486006)(4326008)(74316002)(7696005)(14454004)(66556008)(64756008)(2906002)(256004)(68736007)(66446008)(478600001)(66946007)(186003)(71190400001)(71200400001)(55016002)(229853002)(9686003)(7416002)(3846002)(14444005)(110136005)(52536014)(6116002)(6506007)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4722;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: M34l5IPyv7j4LHrBL6//VA29xQ/Si83dIr9BdsZzJGrWMgbvSiQRVC9YQz/Bhg/6JZ9FvPFWGxmwF3n95lzQ4EPtgeKJFZWXNnVyJBVeyBs3Yt3EThqHJTYp/Zl/N0w+wAp9FXo0TZIOpervdl+eM652r7xp+rZgcHiE4ER6lUNpqw6S6ngehe4idHTC7g7rExM5HL0lZiBaMyybLfnoGUn8oBa6whZkmJD52xEN7nARAiTXhGL6q1OqDujJ+1SQN0RaC+Eq4cCZjYYskdR2itBzqEk+pxdSVXBYyqJZVr48vqq5ADZo/MbuOEhuUZQbhQGROkdap+NZB30NiZcMiLdAbGYG8EQXt7AvA/mncActa80IwZ/h4BjPW2tNz18YijCKec1XpJqDXM0e06LZMornPLXsYOqRjdivh6tP2ZU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8869f2b7-1dc2-4722-9f2d-08d6ee59f93e
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2019 10:45:51.9905 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4722
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_034557_083290_6228F62E 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.73 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> From: Anson.Huang@nxp.com [mailto:Anson.Huang@nxp.com]
> Sent: Thursday, May 30, 2019 11:06 AM
> 
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Add the pinctrl driver support for i.MX8MN.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/pinctrl/freescale/Kconfig          |   7 +
>  drivers/pinctrl/freescale/Makefile         |   1 +
>  drivers/pinctrl/freescale/pinctrl-imx8mn.c | 348
> +++++++++++++++++++++++++++++
>  3 files changed, 356 insertions(+)
>  create mode 100644 drivers/pinctrl/freescale/pinctrl-imx8mn.c
> 
> diff --git a/drivers/pinctrl/freescale/Kconfig b/drivers/pinctrl/freescale/Kconfig
> index aeab0d9..4ff52fa 100644
> --- a/drivers/pinctrl/freescale/Kconfig
> +++ b/drivers/pinctrl/freescale/Kconfig
> @@ -123,6 +123,13 @@ config PINCTRL_IMX7ULP
>  	help
>  	  Say Y here to enable the imx7ulp pinctrl driver
> 
> +config PINCTRL_IMX8MN

Nitpick: this seems should be under imx8mm if in alphabetical order

> +	bool "IMX8MN pinctrl driver"
> +	depends on ARCH_MXC && ARM64
> +	select PINCTRL_IMX
> +	help
> +	  Say Y here to enable the imx8mn pinctrl driver
> +
>  config PINCTRL_IMX8MM
>  	bool "IMX8MM pinctrl driver"
>  	depends on ARCH_MXC && ARM64
> diff --git a/drivers/pinctrl/freescale/Makefile
> b/drivers/pinctrl/freescale/Makefile
> index 02020a7..18225da 100644
> --- a/drivers/pinctrl/freescale/Makefile
> +++ b/drivers/pinctrl/freescale/Makefile
> @@ -18,6 +18,7 @@ obj-$(CONFIG_PINCTRL_IMX6SX)	+= pinctrl-imx6sx.o
>  obj-$(CONFIG_PINCTRL_IMX6UL)	+= pinctrl-imx6ul.o
>  obj-$(CONFIG_PINCTRL_IMX7D)	+= pinctrl-imx7d.o
>  obj-$(CONFIG_PINCTRL_IMX7ULP)	+= pinctrl-imx7ulp.o
> +obj-$(CONFIG_PINCTRL_IMX8MN)	+= pinctrl-imx8mn.o

ditto

>  obj-$(CONFIG_PINCTRL_IMX8MM)	+= pinctrl-imx8mm.o
>  obj-$(CONFIG_PINCTRL_IMX8MQ)	+= pinctrl-imx8mq.o
>  obj-$(CONFIG_PINCTRL_IMX8QM)	+= pinctrl-imx8qm.o
> diff --git a/drivers/pinctrl/freescale/pinctrl-imx8mn.c
> b/drivers/pinctrl/freescale/pinctrl-imx8mn.c
> new file mode 100644
> index 0000000..67161df
> --- /dev/null
> +++ b/drivers/pinctrl/freescale/pinctrl-imx8mn.c
> @@ -0,0 +1,348 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2018-2019 NXP
> + */
> +
> +#include <linux/err.h>
> +#include <linux/init.h>
> +#include <linux/of_device.h>

This could be of.h

Otherwise:
Acked-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
