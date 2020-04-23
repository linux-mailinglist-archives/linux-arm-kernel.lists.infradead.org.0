Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3341B6000
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:56:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xm/R743RrGF+24vkKFZUItITZn+pnvho0uFvyiRTYiA=; b=TwvY5sBvpLUibN
	qEpkqHiiVQKsenstd7+ZtDdtXtZzlh/8j9mwF5YB72ttF/n4kzOPWmgK21Fw/B/6b4m8V5tV8Zdkn
	IxRXoK55ZxVr+HWt4jzNqWrBvy8/usVpOs4c0aXrjkycSigjmNZ33V0bKYTDQbqFkOosdIYX+Z5uF
	3KDTWF1VG7t5d670NGXNVLMci5UsNOr7t0yDq2F6CNdSRUCyIXFJClIH9cPZohMjGBorFpYMsvWhi
	QtlCX5aWJepOs941G9rqgAJZ5RnsdZj5LJtNzB8HayvX24H75+/hXhfZCbVktA78GZO5tFiH95Kcl
	S7vyE08/AfVNGBRCyCEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jReDZ-00040m-ON; Thu, 23 Apr 2020 15:56:49 +0000
Received: from mail-eopbgr60072.outbound.protection.outlook.com ([40.107.6.72]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jReDL-0003zi-GD
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:56:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PFupi8/2eknYCl9WkQgcTuB9WOAFP8PB5Wt64d0it3aKDa25mm3VbLjt0ki2qkUJpbkj1xIqx6E44JazLFUyfoH+CAmRBICzfNjjkRbPzc/WxUFJEhWcjt9HsQ5cb+jIz7kCmdcJ7fcNdJn9gkAXSGySuz9ncu0jLnvWACFj08Ma+fn0Lm5OuBGWSjXRgY8hXZ2c0jRUpH1Xn4et3sSbDT7FOeIax/qALjHipCGom4prCiHVg/ma9srlkg+eTpKIV/tOO+e5viKyKMw7FLlTCOtai6DyX5BAHhj1wcus5Qviucy2t5njyqyEKG32FS/XpAo+SWQSeYQbD5T+nL/VrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W1+0Pf5E4shTQwH/zCCa+5tMmiozw8uLq1JKhAP2AoE=;
 b=edfkqNS+WdjBx6QIqI7OvJGCAbTwmsdMq5kj5dzsCtuTMOc7TnhAN8cz+UowwiYTi1NQCDln3jnXkKq7BQdTlsgWxQmaIb25ma1l5ZeN87CCdVcc0xMANrz/gbH6AhYNZt37e1XR+gaVdJt5D6/EH2cHJplbIMMm8tBh4q3a8MunZaLKK4Ba/I3Tq3iB8NI8rv5Lp9v7bX+F62FqXHbPWgTKPOycmgxG6M2rWMunXiuSndvQmvZ8XtIYV+Y6Z0wdQ27+chARNWsTip/ACc0subM5iZDfuZyHWxMWIDkmp8zWOjO3r9Ltc0xKO6j8hLJXExgxXonpL27n/9WELQKVQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W1+0Pf5E4shTQwH/zCCa+5tMmiozw8uLq1JKhAP2AoE=;
 b=pdy6eSjJ/E01PsYzAYxRl7c5PUqR/B6eLsGDjX/5IjX2avQcxqo9oEhuhOxyDHsS3DcXMXXKp9vb3BD/XCdxYZ4zepJlliEmW7IY5LKdCUa5N2aga3La8jR3qyXzT2yrcTSTjl/QtVJi3os+SFUcKVZ4E/0sc2cxEYmWP6ZTcBQ=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6327.eurprd04.prod.outlook.com (2603:10a6:20b:73::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Thu, 23 Apr
 2020 15:56:31 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.032; Thu, 23 Apr 2020
 15:56:31 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "linux@rempel-privat.de" <linux@rempel-privat.de>, 
 Peng Fan <peng.fan@nxp.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>
Subject: RE: [PATCH V2] dt-bindings: firmware: imx: Move system control into
 dt-binding headfile
Thread-Topic: [PATCH V2] dt-bindings: firmware: imx: Move system control into
 dt-binding headfile
Thread-Index: AQHWGYYRe2oEYWZQzkWEzy9+aCACI6iG28Yw
Date: Thu, 23 Apr 2020 15:56:31 +0000
Message-ID: <AM6PR04MB4966AF54A95ACF4F33634AD080D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587656148-24581-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1587656148-24581-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 16b8ff5f-819f-41c2-979f-08d7e79ee434
x-ms-traffictypediagnostic: AM6PR04MB6327:|AM6PR04MB6327:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB6327F1B5FD825CDF89743C9A80D30@AM6PR04MB6327.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:107;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(396003)(346002)(376002)(7416002)(44832011)(9686003)(86362001)(71200400001)(66556008)(66446008)(76116006)(64756008)(66946007)(8936002)(81156014)(66476007)(8676002)(316002)(110136005)(6506007)(2906002)(52536014)(478600001)(26005)(33656002)(5660300002)(55016002)(7696005)(186003)(4326008)(921003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z3+x72+mrKTtNd5zCrUszvMz1vl2A/Js/jzCsZ8FdqkrCQqJ/I0kiYC4q2NMSPMKIZ9T4F8DME0++maBqymYSpUgwUCFtz/ixDFg6ug7/EufnzsdFxPafVSppp56bBmXx+sa+sD7yJWdqp+26sSGgvvC/ezm0n4l6UyUTNGmBefT9i4xgRdtIy6qCxH6FrwkiRO4SzPlTMFKFSwpRHGZKEeylfAC3gzax1q4HCAi3puAqVPADyJJCY/dFAtUGfQLdzQW4ggP6DucakgbVLbfzG6jeiujgEsypNMxh2u4pr2bSucbvTUrV9dunu4lA8gVL1b1Dhy/WBx5m5EFDBoKvIgDePrf1KY/DxbH4dARIRNezXI6e6maxe41V+W+6qwYSPjaTfi4JXrLUB2/WUieuLVU4kLaaIHSfRAiSHh+n5mS0ryblecSuuCaBzpzOO5dE+9x9twlmQSaIpMO5In6GmGoV/tBlsZnVjUiITZ05aE=
x-ms-exchange-antispam-messagedata: L79ib3iBKPVp9D8+upyzSh7fxtINq5BjuHgIkm2qKfQLx5DBMk6d0j8SVX+0RaBp7Iobuw51cAoTgZiVXGnxDFvRRr5x1lDR+91/wDZEMT3RTz01QppgL1CZ31aSzv7YMKorsoCeBk6ugeK6sS4iTw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16b8ff5f-819f-41c2-979f-08d7e79ee434
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 15:56:31.5236 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SqcxZLHU8WnQ0QBeddghOsYa3rirTqsbVLJhk+UuzxT0Cnpxnw3qO5SXq1FtKRo5sfiZzZqYybOcKelXUOFjoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6327
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_085635_675955_6A6D7FC9 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
> Sent: Thursday, April 23, 2020 11:36 PM
> 
> i.MX8 SoCs DTS file needs system control macro definitions, so move them into
> dt-binding headfile, then include/linux/firmware/imx/types.h can be removed
> and those drivers using it should be changed accordingly.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

You seems ignored my comments in V1.
Usually we'd better to keep original author when sending patches if no fundamental changes.

> ---
> Changes since V1:
> 	- squash all patches in previous series to one to avoid build break
> 	  with bisect.
> ---
>  drivers/firmware/imx/imx-scu.c          |  1 -
>  drivers/thermal/imx_sc_thermal.c        |  2 +-
>  include/dt-bindings/firmware/imx/rsrc.h | 84
> +++++++++++++++++++++++++++++++++
>  include/linux/firmware/imx/sci.h        |  1 -
>  include/linux/firmware/imx/types.h      | 65 -------------------------
>  5 files changed, 85 insertions(+), 68 deletions(-)  delete mode 100644
> include/linux/firmware/imx/types.h
> 
> diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
> index f71eaa5..f3340fa 100644
> --- a/drivers/firmware/imx/imx-scu.c
> +++ b/drivers/firmware/imx/imx-scu.c
> @@ -8,7 +8,6 @@
>   */
> 
>  #include <linux/err.h>
> -#include <linux/firmware/imx/types.h>
>  #include <linux/firmware/imx/ipc.h>
>  #include <linux/firmware/imx/sci.h>
>  #include <linux/interrupt.h>
> diff --git a/drivers/thermal/imx_sc_thermal.c
> b/drivers/thermal/imx_sc_thermal.c
> index b2b68c9..b01d28e 100644
> --- a/drivers/thermal/imx_sc_thermal.c
> +++ b/drivers/thermal/imx_sc_thermal.c
> @@ -3,9 +3,9 @@
>   * Copyright 2018-2020 NXP.
>   */
> 
> +#include <dt-bindings/firmware/imx/rsrc.h>
>  #include <linux/err.h>
>  #include <linux/firmware/imx/sci.h>
> -#include <linux/firmware/imx/types.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
> diff --git a/include/dt-bindings/firmware/imx/rsrc.h
> b/include/dt-bindings/firmware/imx/rsrc.h
> index 4e61f64..51906b9 100644
> --- a/include/dt-bindings/firmware/imx/rsrc.h
> +++ b/include/dt-bindings/firmware/imx/rsrc.h
> @@ -547,4 +547,88 @@
>  #define IMX_SC_R_ATTESTATION		545
>  #define IMX_SC_R_LAST			546
> 
> +/*
> + * Defines for SC PM CLK
> + */
> +#define IMX_SC_PM_CLK_SLV_BUS		0	/* Slave bus clock */
> +#define IMX_SC_PM_CLK_MST_BUS		1	/* Master bus clock */
> +#define IMX_SC_PM_CLK_PER		2	/* Peripheral clock */
> +#define IMX_SC_PM_CLK_PHY		3	/* Phy clock */
> +#define IMX_SC_PM_CLK_MISC		4	/* Misc clock */
> +#define IMX_SC_PM_CLK_MISC0		0	/* Misc 0 clock */
> +#define IMX_SC_PM_CLK_MISC1		1	/* Misc 1 clock */
> +#define IMX_SC_PM_CLK_MISC2		2	/* Misc 2 clock */
> +#define IMX_SC_PM_CLK_MISC3		3	/* Misc 3 clock */
> +#define IMX_SC_PM_CLK_MISC4		4	/* Misc 4 clock */
> +#define IMX_SC_PM_CLK_CPU		2	/* CPU clock */
> +#define IMX_SC_PM_CLK_PLL		4	/* PLL */
> +#define IMX_SC_PM_CLK_BYPASS		4	/* Bypass clock */
> +

This is newly added stuff and should be a separate patches.

Regards
Aisheng

> +/*
> + * Defines for SC CONTROL
> + */
> +#define IMX_SC_C_TEMP                       0U
> +#define IMX_SC_C_TEMP_HI                    1U
> +#define IMX_SC_C_TEMP_LOW                   2U
> +#define IMX_SC_C_PXL_LINK_MST1_ADDR         3U
> +#define IMX_SC_C_PXL_LINK_MST2_ADDR         4U
> +#define IMX_SC_C_PXL_LINK_MST_ENB           5U
> +#define IMX_SC_C_PXL_LINK_MST1_ENB          6U
> +#define IMX_SC_C_PXL_LINK_MST2_ENB          7U
> +#define IMX_SC_C_PXL_LINK_SLV1_ADDR         8U
> +#define IMX_SC_C_PXL_LINK_SLV2_ADDR         9U
> +#define IMX_SC_C_PXL_LINK_MST_VLD           10U
> +#define IMX_SC_C_PXL_LINK_MST1_VLD          11U
> +#define IMX_SC_C_PXL_LINK_MST2_VLD          12U
> +#define IMX_SC_C_SINGLE_MODE                13U
> +#define IMX_SC_C_ID                         14U
> +#define IMX_SC_C_PXL_CLK_POLARITY           15U
> +#define IMX_SC_C_LINESTATE                  16U
> +#define IMX_SC_C_PCIE_G_RST                 17U
> +#define IMX_SC_C_PCIE_BUTTON_RST            18U
> +#define IMX_SC_C_PCIE_PERST                 19U
> +#define IMX_SC_C_PHY_RESET                  20U
> +#define IMX_SC_C_PXL_LINK_RATE_CORRECTION   21U
> +#define IMX_SC_C_PANIC                      22U
> +#define IMX_SC_C_PRIORITY_GROUP             23U
> +#define IMX_SC_C_TXCLK                      24U
> +#define IMX_SC_C_CLKDIV                     25U
> +#define IMX_SC_C_DISABLE_50                 26U
> +#define IMX_SC_C_DISABLE_125                27U
> +#define IMX_SC_C_SEL_125                    28U
> +#define IMX_SC_C_MODE                       29U
> +#define IMX_SC_C_SYNC_CTRL0                 30U
> +#define IMX_SC_C_KACHUNK_CNT                31U
> +#define IMX_SC_C_KACHUNK_SEL                32U
> +#define IMX_SC_C_SYNC_CTRL1                 33U
> +#define IMX_SC_C_DPI_RESET                  34U
> +#define IMX_SC_C_MIPI_RESET                 35U
> +#define IMX_SC_C_DUAL_MODE                  36U
> +#define IMX_SC_C_VOLTAGE                    37U
> +#define IMX_SC_C_PXL_LINK_SEL               38U
> +#define IMX_SC_C_OFS_SEL                    39U
> +#define IMX_SC_C_OFS_AUDIO                  40U
> +#define IMX_SC_C_OFS_PERIPH                 41U
> +#define IMX_SC_C_OFS_IRQ                    42U
> +#define IMX_SC_C_RST0                       43U
> +#define IMX_SC_C_RST1                       44U
> +#define IMX_SC_C_SEL0                       45U
> +#define IMX_SC_C_CALIB0                     46U
> +#define IMX_SC_C_CALIB1                     47U
> +#define IMX_SC_C_CALIB2                     48U
> +#define IMX_SC_C_IPG_DEBUG                  49U
> +#define IMX_SC_C_IPG_DOZE                   50U
> +#define IMX_SC_C_IPG_WAIT                   51U
> +#define IMX_SC_C_IPG_STOP                   52U
> +#define IMX_SC_C_IPG_STOP_MODE              53U
> +#define IMX_SC_C_IPG_STOP_ACK               54U
> +#define IMX_SC_C_SYNC_CTRL                  55U
> +#define IMX_SC_C_OFS_AUDIO_ALT              56U
> +#define IMX_SC_C_DSP_BYP                    57U
> +#define IMX_SC_C_CLK_GEN_EN                 58U
> +#define IMX_SC_C_INTF_SEL                   59U
> +#define IMX_SC_C_RXC_DLY                    60U
> +#define IMX_SC_C_TIMER_SEL                  61U
> +#define IMX_SC_C_LAST                       62U
> +
>  #endif /* __DT_BINDINGS_RSCRC_IMX_H */
> diff --git a/include/linux/firmware/imx/sci.h b/include/linux/firmware/imx/sci.h
> index 17ba4e4..3fa418a 100644
> --- a/include/linux/firmware/imx/sci.h
> +++ b/include/linux/firmware/imx/sci.h
> @@ -11,7 +11,6 @@
>  #define _SC_SCI_H
> 
>  #include <linux/firmware/imx/ipc.h>
> -#include <linux/firmware/imx/types.h>
> 
>  #include <linux/firmware/imx/svc/misc.h>  #include
> <linux/firmware/imx/svc/pm.h> diff --git a/include/linux/firmware/imx/types.h
> b/include/linux/firmware/imx/types.h
> deleted file mode 100644
> index 8082110..0000000
> --- a/include/linux/firmware/imx/types.h
> +++ /dev/null
> @@ -1,65 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0+ */
> -/*
> - * Copyright (C) 2016 Freescale Semiconductor, Inc.
> - * Copyright 2017~2018 NXP
> - *
> - * Header file containing types used across multiple service APIs.
> - */
> -
> -#ifndef _SC_TYPES_H
> -#define _SC_TYPES_H
> -
> -/*
> - * This type is used to indicate a control.
> - */
> -enum imx_sc_ctrl {
> -	IMX_SC_C_TEMP = 0,
> -	IMX_SC_C_TEMP_HI = 1,
> -	IMX_SC_C_TEMP_LOW = 2,
> -	IMX_SC_C_PXL_LINK_MST1_ADDR = 3,
> -	IMX_SC_C_PXL_LINK_MST2_ADDR = 4,
> -	IMX_SC_C_PXL_LINK_MST_ENB = 5,
> -	IMX_SC_C_PXL_LINK_MST1_ENB = 6,
> -	IMX_SC_C_PXL_LINK_MST2_ENB = 7,
> -	IMX_SC_C_PXL_LINK_SLV1_ADDR = 8,
> -	IMX_SC_C_PXL_LINK_SLV2_ADDR = 9,
> -	IMX_SC_C_PXL_LINK_MST_VLD = 10,
> -	IMX_SC_C_PXL_LINK_MST1_VLD = 11,
> -	IMX_SC_C_PXL_LINK_MST2_VLD = 12,
> -	IMX_SC_C_SINGLE_MODE = 13,
> -	IMX_SC_C_ID = 14,
> -	IMX_SC_C_PXL_CLK_POLARITY = 15,
> -	IMX_SC_C_LINESTATE = 16,
> -	IMX_SC_C_PCIE_G_RST = 17,
> -	IMX_SC_C_PCIE_BUTTON_RST = 18,
> -	IMX_SC_C_PCIE_PERST = 19,
> -	IMX_SC_C_PHY_RESET = 20,
> -	IMX_SC_C_PXL_LINK_RATE_CORRECTION = 21,
> -	IMX_SC_C_PANIC = 22,
> -	IMX_SC_C_PRIORITY_GROUP = 23,
> -	IMX_SC_C_TXCLK = 24,
> -	IMX_SC_C_CLKDIV = 25,
> -	IMX_SC_C_DISABLE_50 = 26,
> -	IMX_SC_C_DISABLE_125 = 27,
> -	IMX_SC_C_SEL_125 = 28,
> -	IMX_SC_C_MODE = 29,
> -	IMX_SC_C_SYNC_CTRL0 = 30,
> -	IMX_SC_C_KACHUNK_CNT = 31,
> -	IMX_SC_C_KACHUNK_SEL = 32,
> -	IMX_SC_C_SYNC_CTRL1 = 33,
> -	IMX_SC_C_DPI_RESET = 34,
> -	IMX_SC_C_MIPI_RESET = 35,
> -	IMX_SC_C_DUAL_MODE = 36,
> -	IMX_SC_C_VOLTAGE = 37,
> -	IMX_SC_C_PXL_LINK_SEL = 38,
> -	IMX_SC_C_OFS_SEL = 39,
> -	IMX_SC_C_OFS_AUDIO = 40,
> -	IMX_SC_C_OFS_PERIPH = 41,
> -	IMX_SC_C_OFS_IRQ = 42,
> -	IMX_SC_C_RST0 = 43,
> -	IMX_SC_C_RST1 = 44,
> -	IMX_SC_C_SEL0 = 45,
> -	IMX_SC_C_LAST
> -};
> -
> -#endif /* _SC_TYPES_H */
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
