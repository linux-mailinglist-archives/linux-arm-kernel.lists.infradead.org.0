Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 007D61B8C83
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 07:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2tDQEmAyO2O2R0MHIBafjHDsvMvXTfh6W08Hje7GSa8=; b=bWIeQshpSpvK12
	2VHk2mVFGMniBDFHPobZ7ib4VXrGOteXRLF7ZcZNohM97ZaezQi/pcZVrq0C+Tle/pPzq/IhiCZKG
	3TG9r2G4lUziHrJWu5kL1moMZECJaeQ8LAihK/KxWsSNhyrQdi7B0VW4XxbH6v9Rk6LMwaoxuoajw
	LUbphIv2fLGV0JQuukuXYBYQdGaul3yR8AEHsRtaoNjmb/ODKl3fWrzaM6cMMFkIQyUOKUEWKm7jt
	+uVUk04mC2upRIk5+OMBfsVJbpVzTvEBQ4d1w2llORpddJcqF4k7vIpwLTZbucwKc0BdFNlPUG4Ny
	1VGVGTAXgIwZQThbVlSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSZgQ-00060C-EP; Sun, 26 Apr 2020 05:18:28 +0000
Received: from mail-db8eur05on2076.outbound.protection.outlook.com
 ([40.107.20.76] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSZgG-0005z6-Qv
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 05:18:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gxr/E8mGf19FU0VVEC5nW5FX6pvkiNuJzgEeXy38JEIZlgJE7X3G5kLT20cJ8dPK9S3UepsPENgMxNfXe+kq1vGJzr9Hhx+QrRA0MxmsixvXCXmGcIActSKdjU34vEnKgzpAGN/q11T/eTWsdeSR9qMTaknnWgK9FaectEhJXWJloeJF4J+kQBzykJ1atXQ6Tgp2E9jBPXPeXAK08S5yHH1v++3hiXjCRUn+v2sOJW6oHeaCvIJE5Kz62ThBmoQdr+ZsjsNY3BTk2qsIe0ToNebNZ2lnAkKVmQ42TESuqoBRZbSbQZi/65Em7QhkfKWB9croR1V5zsQa3a9OcS852A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZDSGsPCluwiXZBSBRpiSfT1fC07XL/jHsyPKlDaeFVE=;
 b=TmWKRUgD/fJ4NUmK9DdGB7Jkx+KzlCr/SDAxuLwmhAewcF+oBK6NbRbA4+1T+0LpHRzWbAhGGXWS4Xt8xKBe0xe1uEp8uLVKAADivsOYuOfGL08h1LyvjZuAH5BiIo8TNTPBPVPe3JeEbf+P7jIFACdF4YKBe8JPjK9kBXL2+y1+ary+Pmy/Zwhb7VZAzq/xWtZVcACimhcEjHUUXSL4ujYmPgukYbuUPkDPn8Eccwg1JOgZLtfD1Xry1uSB7lamgriwheJbclN14ruhM1EMGdnQEhMbLYbiSB0Wxc/F5/FQiHUg5AIilSJXRPUDSyHworzlKNb7frpcCUraIgl00Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZDSGsPCluwiXZBSBRpiSfT1fC07XL/jHsyPKlDaeFVE=;
 b=L/FuaN4aiSH3U1vQNYH4pqTPvnz+dqAX8RIBaO8Xc6K+DOtPrL4kQOEppfUoPgDjxWV25zShEe+JxfmsMuXlTr/zTNV2Ae2vKy04nTmMAoJB4g46CCtnHKfFPAhoVYqcc1ECuvU/qSg9s0QIgZksvM22PXc0Bqt7M8WbWCOord4=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5048.eurprd04.prod.outlook.com (2603:10a6:20b:e::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Sun, 26 Apr
 2020 05:18:13 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 05:18:13 +0000
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
Subject: RE: [PATCH V4] dt-bindings: firmware: imx: Move system control into
 dt-binding headfile
Thread-Topic: [PATCH V4] dt-bindings: firmware: imx: Move system control into
 dt-binding headfile
Thread-Index: AQHWGeF/dDOm6RvnPEOsUzQGw8l0KqiK3l/w
Date: Sun, 26 Apr 2020 05:18:13 +0000
Message-ID: <AM6PR04MB49664F6FC7B692DDFAAEAB0980AE0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587695415-4441-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1587695415-4441-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ea163b83-79c4-479c-234d-08d7e9a13831
x-ms-traffictypediagnostic: AM6PR04MB5048:|AM6PR04MB5048:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5048574BE35FDBEFE3F0A25280AE0@AM6PR04MB5048.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:972;
x-forefront-prvs: 03853D523D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(136003)(396003)(346002)(376002)(39860400002)(5660300002)(478600001)(316002)(110136005)(33656002)(7696005)(4326008)(26005)(186003)(6506007)(7416002)(9686003)(55016002)(2906002)(8936002)(8676002)(81156014)(66556008)(76116006)(64756008)(66476007)(66946007)(66446008)(52536014)(86362001)(44832011)(71200400001)(921003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IA6t1zailcLXqahhjxfbPdzEDBKkJwiLdI6sd/spR7yAHEZyoejATbviGM9ZJeJxjuQ8qKoZO923LKyzqHth9R4sRBRduXSwS94Zk9o+X6jjv2MlCeJz2nbWLFb2Eq3v21arGD0LXYueb1bQmWKLVnHppjYxqHQp3AZC2PXJk2D+MIVkRqEuGstEMtzPVnllYF8rJyfHlGr7d/Or2XiubILEMushzUdFpk+l2vPGdQkDQ/s02URZ52voJRn27biKsWV1GdBnFijuXwdP9+yK9R3hmG7I6ll9SXq2SG8BI3M4VVos8vsw/8k87z3g9nCr43kZHTX6il57fa6g9EP4lw1V5eruBuwG8OUBjX5pSAvBVy9/hLfNDhgUsdtjma3e422oFCF0q0s9CA9pjAub98QqsZU20SXxsMIrBPFE6JAfQZXgy9cFOoChYvx4T2knxNUS/XH/8I7CLZW61yBt78HcmbuJY02CYgWCvkQmo/I=
x-ms-exchange-antispam-messagedata: kLnMD3Pk2YbZhmZMzGxeyzivFwxHOvqik3wmVYZ3Do5gk0yH6MxyoqMB0/j2mUa/uMPlsIWN4ZPcGSVtzVqFLgBwE9wpYzPnVaW5eZ0CCJVmzVIR6Ct1uYbvi21GCv8dKNj30UlCH0rfPr930yd6UkNpmsoEeXxS56eseXEY/kwwkE+2XU/vde37wZqOf43+ree8LwDUQRPJ5aJwDCwCmqEhO//4jk/irehzln+rGwdPMffRYuHFSaUYwhfmDtfhJz/EpElUlhlZhs8LAih4cnqmtLpmsEQhcacPyRad548oe85pJ0NSKWEa1XBeWkECJF6zI46hzbC8ac0+D1ptS3ULhNW9PuSQMESCpfbzXYS8L2M5lqMT30s+k2WmtwF+wksc9/0vQNY2OCW/BGnA3dDdFEI4Emav7I1QMFtFC4kM2XDrbuqZ8+9odVU9XEhbqCgZuDu4/bm4u9Am3m74i2355+tGas+cN+b9t0ne5wOO3Qc8bqxMQkIdWfXZft3v1331PUKQGqkoHjdzXnxwzHhQU8Ig7nFPsS7PfKpVoAJagjtc5ekWJpcbbOZTnm9+BcOppAFb8lWeKFjQHG1cl0ZYHOGff/4GkMbZGJIxJ9vAkT9EPKKi4xU8Rk7VuxnGZoqsjacIeXAQA8u7/kI7IqHc9msn9SmqVVKs3z+32iz6JBaTVYOeHZ9wsPUoWHWBvmah2xPyF+oQIsbWThYBTrz2hlaaewBKIANEYvKOE/UwnkjQcGbXwMn235rXLOD6KwOiufG1gA/rQ1Qb4K6Oahdhr6E8MBB2EtF5rIxtuAg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea163b83-79c4-479c-234d-08d7e9a13831
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2020 05:18:13.6916 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JMnG8xj8J1WROgXWMZeLM5lg9bGVp/OBSmHxxvnUlJHjFI5G4EDTxMAgGU+lf/0PulT82wgP2h1Q+1SrpFavdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_221817_007064_0A45A49C 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.76 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
> Sent: Friday, April 24, 2020 10:30 AM
> 
> i.MX8 SoCs DTS file needs system control macro definitions, so move them into
> dt-binding headfile, then include/linux/firmware/imx/types.h can be removed
> and those drivers using it should be changed accordingly.
> 
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V3:
> 	- no code change, ONLY add the missing author's signed-off.
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

Unfortunately this is the third time I repeat the same comments for one patch:
" This is newly added stuff and should be a separate patch."

Please do not arbitrarily ignore reviewer's comments and wastes
reviewer's effort.

Regards
Aisheng

> +
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
