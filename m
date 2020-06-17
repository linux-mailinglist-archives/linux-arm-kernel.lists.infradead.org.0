Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDF51FCB28
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:44:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XFqDxwD3ThxwBD3pBxULrGLdjDV5tenWdb6heQvDjWM=; b=XWnSQ29cv4YRQm
	4wBMjD9SErDXssbKiEm5zjaMaJXR0lG9kUheC6+U7PG/xrGJQeZvM82W7OvrxsQsq4YHsXAPPd61R
	LgscGOl6WcoDu95OpdmT0YELPUhQdfpe6I0OuCCeyIYwpNlfVEusZU4ZVdnlMJmodJAe9W9GkMQj0
	FJQx8npG1tmKkdL0Y91WPlLYH0KMpKO3qi+21HWkQNznuwLkXhkozcoc2nGS/kPMeC3gNHfMhy/mj
	dB5k71d8i5nmzrVcYSte7o9iE+Uls/f+L4y7F/JnmSKugW2hKMojWOLpY/nDIIAdzvYezfT/KuGyT
	t2p9FoK77IpfaLuk1d1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlVYW-0006up-Pf; Wed, 17 Jun 2020 10:44:32 +0000
Received: from mail-am6eur05on2069.outbound.protection.outlook.com
 ([40.107.22.69] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlVYF-0006ol-OM
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 10:44:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EhbjZf08GVxQSgbBFhll3euWtF0BM3Rof6lq80FWjOemqUV9Z3I717dMgX428kOqNf8tMcZRbRw3b/T73pqhBe37e8gzRQBmhL+MO4+KE04OQvnGPhcSEMKkG3o2LzJmVn3E+s/aj7YzW0sm6EhGnOBugkzr0oaL1i/MRJC7DUP+tj2QRjlKW3uVzruxRGF+Ri33n4h7y4Lod3me3HT11Fz7VIuxoEUk+CBPn5xTsDizaZuv8GPjw0VsHTYLhCbHfIWSD5ESaVY035Izt++ByRbdxGR+wuWCCx8J3Yo8mOYlaRIskJFcNaONa7pSQJdQFLF2xiNsHvQ3tqJUEedrGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1hj3cuyTV5MBkzhjZampMaqACKV9cL5YasgewBL6onc=;
 b=nKMecTDGCk5XJS5DqrQic3gc5Oke8JbVd8bXKTRq4pp0s9g04VGMG4yR4DnzlSAqR2PV6wsx+kaexqq5ppW7CSVqIt5crUk1leMp9TgP9Vt92Tu1jB1Tl0+r7xLpAaCcqock20jANpbXAhQYrfOO9+QDZPBX1dP8087uU3PaKEPVz3lnB2qj4XoRGyEnWBNT5cvB5Uf/1xBgNWiXow+PEB/XxOOf72j8yJVvDzjqjJjfksB2tVZZ2TItMN50/qSW7tXbZpe7ghFnsaUanj8P4ECXLbBBe1zRXKfS2JuL/O2pbs7Js6+wmFq0VXTbrHCAv6WhkxGN0GwOTTXewyTM9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1hj3cuyTV5MBkzhjZampMaqACKV9cL5YasgewBL6onc=;
 b=bkb+/t6R1iPJ6zZj7hrF8xn8ewIxfTP6wBcvauL8y2MeLOrYE+DZiiZlR1whjsqYraNn9ZnAY++5jwova+gRkh7/dgRaIy+qJc0kQpaS8MccC68rBlhg2Tg4cJctaTxU7wf/GIL4ZYEJQ2sZjB5M72iN3ZDZZpxfr5O/2WuZa0I=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4024.eurprd04.prod.outlook.com (2603:10a6:209:50::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Wed, 17 Jun
 2020 10:44:11 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3088.028; Wed, 17 Jun 2020
 10:44:11 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "linux@armlinux.org.uk"
 <linux@armlinux.org.uk>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "oleksandr.suvorov@toradex.com"
 <oleksandr.suvorov@toradex.com>, Stefan Agner <stefan.agner@toradex.com>,
 "arnd@arndb.de" <arnd@arndb.de>, Abel Vesa <abel.vesa@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "info@metux.net" <info@metux.net>, Leonard
 Crestez <leonard.crestez@nxp.com>, Andy Duan <fugang.duan@nxp.com>, Daniel
 Baluta <daniel.baluta@nxp.com>, "yuehaibing@huawei.com"
 <yuehaibing@huawei.com>, "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: RE: [PATCH V2 3/9] clk: imx: Support building SCU clock driver as
 module
Thread-Topic: [PATCH V2 3/9] clk: imx: Support building SCU clock driver as
 module
Thread-Index: AQHWPjGl8KdpudYoFUWSs6/zaZS5vqjcqcVQ
Date: Wed, 17 Jun 2020 10:44:11 +0000
Message-ID: <AM6PR04MB49660A10856A3746C7103394809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1591687933-19495-1-git-send-email-Anson.Huang@nxp.com>
 <1591687933-19495-4-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1591687933-19495-4-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dbdfcbb6-ef9d-49a9-00c2-08d812ab5f1e
x-ms-traffictypediagnostic: AM6PR04MB4024:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4024B8F1D8F5832A0787AA67809A0@AM6PR04MB4024.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e+RB3mR6AptGQaNf6Bs5jKF5/MpIY0dhF+JaINcPZe0XxH7HF5X0KO36vpM4pFsZIb7WVgjtymOJ2q91B9JEPVjoKZpFsIFMkSyZTwvb59XALs055TWLPwjiWeupDOOWanu1yf/clUXBhZBqtaUIlcjmtuPnWbgvBaZLamJKZl92GeLtBxt5tsD/NsAMEoveHT1VIvTCSl04gQysFPNgPnjkk1RgNYsYxEZrwacWtiypbz274NIyoAxFVLDP5YGO011UM+2fhHMf9Woe2IV/1BBazB9/XcmeSuVqitHjvsik0vzDFS9Hlcdu28vD0j4gscg5XgaPmnSLQB/4a3/C4CENVOdYELmHWauIXYo+qunqR8+7ek0+aNuBBfu/r1Q5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(396003)(366004)(136003)(39860400002)(346002)(66446008)(76116006)(66946007)(66476007)(66556008)(64756008)(86362001)(7416002)(5660300002)(52536014)(4326008)(44832011)(33656002)(55016002)(7696005)(83380400001)(478600001)(9686003)(2906002)(186003)(316002)(8936002)(26005)(6506007)(110136005)(71200400001)(8676002)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: NQXvhplBvUss9fLMoB3Dqz392Bgh0nCu/p+9sfEx2oEW7HVEO8r5txi9QgG83Ct4VhIrySbLQf+rsgD0Kmi7SO63SX+P9UxAfG79vllkXwhwG20DHXIubGuy7TUKfCZfrWvoUFsdm68cVFOzNwmfR5KdzVV6YZQqv6RX2IJKJ+UoltGzResYc9SzAYqTBLl/6ThchlFCnM3b+7sfmbpdHvBM4NdjuLtGlyGbcJVHoYJDxbWUxdHKUtXDUyFqpEi/jxLUmktZOu4k/7gSnGa6HSaac/sYbtLQFZ/sbO2vCDJKN/VWRy4gA6TTFkLJebQZ0af6bu8d5hRvvrpLh+xqUjeEungMaClPqMzI+a084LTZiaIXi8NmDaOAqj4cG8S9/HBrVI+3D8Vfrtc8v76NfFuCK6o9kKOVLw8vnbvjFig2h/JTPZ3Kqg1rGysQHiEqlMAiSmf9CmdW8xltmUpThH7UYzxLA6W8CGYPuQv+BXV3zR+VU0sRN4t6mWJYkOGP
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbdfcbb6-ef9d-49a9-00c2-08d812ab5f1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 10:44:11.6954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NYgtebLVRgM1T1zsdXckoo/XYrvfW2DWOh6D+735clslBXpNUvxjNpDy3d2/D6T6TpZ3Z27ngLgrEhsPdb7RxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_034415_886091_6EAD352C 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.69 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.69 listed in wl.mailspike.net]
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
> Sent: Tuesday, June 9, 2020 3:32 PM
> 
> There are more and more requirements of building SoC specific drivers as
> modules, add support for building SCU clock driver as module to meet the
> requirement.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- add ARCH_MXC to build dependency to avoid build fail on x86 arch;
> 	- move clk-lpcg-scu.c change in to this patch.
> ---
>  drivers/clk/imx/Kconfig        | 4 ++--
>  drivers/clk/imx/Makefile       | 5 ++---
>  drivers/clk/imx/clk-lpcg-scu.c | 1 +
>  drivers/clk/imx/clk-scu.c      | 5 +++++
>  4 files changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/clk/imx/Kconfig b/drivers/clk/imx/Kconfig index
> db0253f..ded0643 100644
> --- a/drivers/clk/imx/Kconfig
> +++ b/drivers/clk/imx/Kconfig
> @@ -5,8 +5,8 @@ config MXC_CLK
>  	def_bool ARCH_MXC
> 
>  config MXC_CLK_SCU
> -	bool
> -	depends on IMX_SCU

Keep this line as it is

> +	tristate "IMX SCU clock"

i.MX SCU Clock core driver

> +	depends on ARCH_MXC && IMX_SCU
> 
>  config CLK_IMX8MM
>  	bool "IMX8MM CCM Clock Driver"
> diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile index
> 928f874..1af8cff 100644
> --- a/drivers/clk/imx/Makefile
> +++ b/drivers/clk/imx/Makefile
> @@ -21,9 +21,8 @@ obj-$(CONFIG_MXC_CLK) += \
>  	clk-sscg-pll.o \
>  	clk-pll14xx.o
> 
> -obj-$(CONFIG_MXC_CLK_SCU) += \
> -	clk-scu.o \
> -	clk-lpcg-scu.o
> +mxc-clk-scu-objs += clk-scu.o clk-lpcg-scu.o
> +obj-$(CONFIG_MXC_CLK_SCU) += mxc-clk-scu.o

Like i.MX pinctrl, I'm not sure if it's really necessary to build core libraries
as modules. Probably the simplest way is only building platform drivers part
as module. And leave those core libraries built in kernel.
This may make the code a bit cleaner.

Regards
Aisheng

> 
>  obj-$(CONFIG_CLK_IMX8MM) += clk-imx8mm.o
>  obj-$(CONFIG_CLK_IMX8MN) += clk-imx8mn.o diff --git
> a/drivers/clk/imx/clk-lpcg-scu.c b/drivers/clk/imx/clk-lpcg-scu.c index
> a73a799..8177f0e 100644
> --- a/drivers/clk/imx/clk-lpcg-scu.c
> +++ b/drivers/clk/imx/clk-lpcg-scu.c
> @@ -114,3 +114,4 @@ struct clk_hw *imx_clk_lpcg_scu(const char *name,
> const char *parent_name,
> 
>  	return hw;
>  }
> +EXPORT_SYMBOL_GPL(imx_clk_lpcg_scu);
> diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c index
> b8b2072..9688981 100644
> --- a/drivers/clk/imx/clk-scu.c
> +++ b/drivers/clk/imx/clk-scu.c
> @@ -8,6 +8,7 @@
>  #include <linux/arm-smccc.h>
>  #include <linux/clk-provider.h>
>  #include <linux/err.h>
> +#include <linux/module.h>
>  #include <linux/slab.h>
> 
>  #include "clk-scu.h"
> @@ -132,6 +133,7 @@ int imx_clk_scu_init(void)  {
>  	return imx_scu_get_handle(&ccm_ipc_handle);
>  }
> +EXPORT_SYMBOL_GPL(imx_clk_scu_init);
> 
>  /*
>   * clk_scu_recalc_rate - Get clock rate for a SCU clock @@ -387,3 +389,6 @@
> struct clk_hw *__imx_clk_scu(const char *name, const char * const *parents,
> 
>  	return hw;
>  }
> +EXPORT_SYMBOL_GPL(__imx_clk_scu);
> +
> +MODULE_LICENSE("GPL v2");
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
