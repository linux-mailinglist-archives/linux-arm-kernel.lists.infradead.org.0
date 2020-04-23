Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF891B5ED2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:13:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kLkfDA0N06T/dl+pwW/rLAERVH6wDJUDT0EEFcNLsT8=; b=obEyypo0OvTWob
	viLur4l59kR4nJe8VCsLw7Ytsy49Jps3aSN/HHTegnBzeVQBgvRhO3Nl0cD3LV6xcDvrsfEIPoctK
	Z60ErQ5J9s+HCI6QhZjicD2AvJv4XpS5vqDQfoEmfo9FQsAH7rx84K7Wa1upvqTD3CEb0yXlHztXh
	x1FfJpIFsdDrA5qVhE7THbtezgcrYW9MEPANzSs5HXWIlWtWUUFGxDUbdkyjWxTCt2jQoSuDuRlrH
	sXXdC90yLN2w/J+bTDjd4zXo7SbRtCuhfBw0mUvy5rt3z+JJITEdzYQPCZMSFV5yApDr0hZCkKpgA
	VRG25ro4jah/Qpnr1a1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdXi-0006yQ-Mv; Thu, 23 Apr 2020 15:13:34 +0000
Received: from mail-eopbgr10083.outbound.protection.outlook.com ([40.107.1.83]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdXN-0006nl-Ma
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:13:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iPn6VZdzjnc3RPDbI3LxlG/rbU/tdwGswzNAK/eReUZQSPcaTd3Mbmt7huawSmcN7OMaCGjtmzA64zxG7S6JfFY/UN5ozCgs0xHEz9LYmFLumRVOj7RwSWk1qMC8e97818sVUXOvdMQWpaw/XMsjjCNu4eqjcLi+xNs2Lpb1BzO9nZVRaDR3C53XejhHmzk8dVYjHCVGMQHXKiCvBr/V/0RmuPGTC0xvSU1mqBolQBfqEESOF3u1rcjdJB1TF55qANfAbJtA6ldmaD5fBDn2lUWvQhgZdQQ2slA+w5iVGY6mSaPqL9giT//59n7xSI2gI+ybfFVCEkLp6fjxE3zGyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H/uzQ5Vv+rXk12nQvo+haF2Xb6A6zBZUdibwb01Ay+4=;
 b=YW+pzOMRbBW/KEHwRY5AJrWBMvsfLE57hZ5rSs6PvIbzdTjaBCsgSNvXrY75aOqmNHMjuzbyslAd5NQMPTbnsUlpz7f3FatOZxwc323W3R2Gjoj1U0CfaZer+qazGRbjuTxdXwgp53pz6tjx7Tm7dOmrm9hz55GxD1RTfHfAtTjWj8A9PgJJ5fdymf+TuSkvmwpJvjpJRY5JY+3XJjMvqE+XwcQW8EbGBOdt0i1ahUZbAVfDEkPLawA/OZWZBTdH2kEwTn63BYkBSPWzHUgfskuKf5siTBYsMeYtcezG34Mx1HCbTiQqtmvvtUBo7VjEW3KKkfIImFXErQR2hpPsnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H/uzQ5Vv+rXk12nQvo+haF2Xb6A6zBZUdibwb01Ay+4=;
 b=AO9HQ/MBX9v9ogbkUIRQS0/G6okCuTKAKZSx3hTrAf2iLhIDoM9AehzY3v6sTpw8WZcCv4bco//aVrfwJ4FiV8vUSvkFe2OKZOEbA5HP2Aj2n3Cy2fyQMK/rq7pHBeVDfhfOac7C65RgaL9ZQr0WdFKlu/ucLD/oRXkMrj2DB3g=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6295.eurprd04.prod.outlook.com (2603:10a6:20b:72::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Thu, 23 Apr
 2020 15:13:08 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.032; Thu, 23 Apr 2020
 15:13:08 +0000
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
Subject: RE: [PATCH 1/3] dt-bindings: firmware: imx: Move system control into
 dt-binding headfile
Thread-Topic: [PATCH 1/3] dt-bindings: firmware: imx: Move system control into
 dt-binding headfile
Thread-Index: AQHWGXizqGP98XTaREm8fL2h4rbuMaiG0BTg
Date: Thu, 23 Apr 2020 15:13:08 +0000
Message-ID: <AM6PR04MB496632D4E04A75B74C7E831380D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587650406-20050-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1587650406-20050-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7f299a73-7110-4f02-7b7e-08d7e798d495
x-ms-traffictypediagnostic: AM6PR04MB6295:|AM6PR04MB6295:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB62952771526C59116DB2666380D30@AM6PR04MB6295.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(346002)(39860400002)(396003)(136003)(376002)(4326008)(7696005)(478600001)(6506007)(7416002)(44832011)(110136005)(55016002)(316002)(26005)(9686003)(186003)(5660300002)(52536014)(66476007)(76116006)(33656002)(8676002)(66446008)(64756008)(66556008)(86362001)(81156014)(71200400001)(66946007)(2906002)(8936002)(921003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zSlZdLUETpPz9nOmgPTLIBsn4X1XPPD6z9va4LSJbXjM3mZuH+fwLiDethecObnr56KDlo7Xz1YEL9RGgxnuxxJDECP7c83qdQDqsxs6zrTaQvWWA/rxs11MhSJLyvUk9FBiwQkzdYcvr6o7R/05pMoNjr41CtO4/LIXenSUgWyBjXXiowaeIt65exXCRbMZe6mWzE73KD3rM7sYRTP2GvueiebS0ajYUDoc1if57ko7mZjohjwOQl1Megx4vGmMW5TUwmc7SiMErZCETCgfo15fvHRCQvOlzm3y+sXv3pIv/2vGCrOnazOBSiyhXK1fRgrImAGaGSyv8tuHBIHPmf586o4pVNdQJJ/K5lF/AOOTEyyIs2R24us0un7zrB9sVe0kUCph+wRbDz2+kYcBaZgGJjVJjPtml0W94UXNd9wGCAcTjC3B/I2tvDzownhvR+7++e+Sq/MJHIpcp7QqDlQ3NyFUh8PRo7lsSCXMCo0=
x-ms-exchange-antispam-messagedata: HmltztSSGjHMz9/mTLHczCPSySZYMu+YB7E8GvANiWILDZqxuaA1O+U3nUaMnrrGMEwwl6sM6HmFh3bAJhgbA/aBplu/rIVvUgPFceNwNQG/+q9iExP/Ytq57PkxVTITWCUoO7q7x8HqbPLzZKGrZw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f299a73-7110-4f02-7b7e-08d7e798d495
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 15:13:08.3012 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lLwFZ+FAlzJxVJXbk6bdqawGCdwnEOsuudm38PK1ztVduBdOkpqAGZy/lVyTzAOqW7Sh6WuHbDmV21JunkNGpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6295
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_081314_050177_552D1105 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.83 listed in list.dnswl.org]
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
> Sent: Thursday, April 23, 2020 10:00 PM
> 
> i.MX8 SoCs DTS file needs system control macro definitions, so move them into
> dt-binding headfile.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Please keep the original author when you sending patches if no fundamental changes.

> ---
>  include/dt-bindings/firmware/imx/rsrc.h | 84
> +++++++++++++++++++++++++++++++++
>  include/linux/firmware/imx/sci.h        |  1 -
>  include/linux/firmware/imx/types.h      | 65 -------------------------
>  3 files changed, 84 insertions(+), 66 deletions(-)  delete mode 100644
> include/linux/firmware/imx/types.h
> 
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

This belongs to a separate one.

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
