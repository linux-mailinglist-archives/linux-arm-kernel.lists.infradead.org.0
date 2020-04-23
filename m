Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 762DF1B58C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 12:04:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLheCDgpF/TvpghcSlZZ7Q/3hVK5F/AshsuMjcxMMA4=; b=DJkUPSen4jZ9pg
	mPiccjPjxAbtajMH3XPXugkbty9XDCGbhXyVZ8u2TilPzKfhZVAy2rNLbu3hm9pANYAp5adUiuNKS
	JfudETJ2WUCI1oW1wLwpg7XSwPBAlKqvsB4aVPsJCtFxKRk6fSTWr5g01FTVWw02Z7WsLMD82bPmf
	0c4os2DFFjXBMuf+nPZDZorGURnuYYp+CRsj72FF7G8vqtq7z0pWAQZpaq5VTrLD1KMGRnpsa97m/
	DozkJW3oObACi890igl4UaN4+VA/aGQcAFlXT7ws9yEBTWQ/J0BqQWoQP+h95vRQeUXoYBLCmJUMm
	OavpHCuznVzxkRJTp30w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRYiu-0003uU-01; Thu, 23 Apr 2020 10:04:48 +0000
Received: from mail-eopbgr150080.outbound.protection.outlook.com
 ([40.107.15.80] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRYii-0003sV-P6
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 10:04:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g5PTAGdaWHpDhAY/j/i0mhI+WqvcUrY4SeobfTwUQMw4QNQ2cgCzP8+Et4HURTNvef8DonJEYFtwen59h0f5FyeRhQ+Yym1cZ9OcpE1WMBj/B2Knae/DqRTfGjogy5HkB2zP5eXd3ux6I37/S/2rsElwZJS2xPO5nbfxtpBor9xrtlfTiJAbB6DCNWBI43AxrGEp9j/dpmQmJzeLyYMXTVwUXNGFpvfmos2uZzH/lcF3ZDUVnS/9vNWMpgJtIvQQTqsW5Zso6wzx/c883Ul211/hWt1Agw/j4azium46wffWoA/J9HAojw0LgnFfVwYMdm785dUHa1CjwJpMOzBAlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FSwV2Ap9HlsZ1NkPdvnNFWFdQ1+ohpxWu3UM03Gfg1s=;
 b=cuyimntaPO62xOn9xZeb+ROlfucr32Mr6cM9kglitw+TcuwZRgo6Y6LPdD2yWe86RcSqnsyHrPdwwilH6oUr2+OP6sDAq+KlRwJhVXtzZ2Sxvg9niLKtXonkD0jpP0FhV72KDsCX5SNFuco4upf4pYJ4RkPgv1xK/MQKkwu6iGDIvW/Ytk/nLJEqagu7N50g8enuncH2O5I2Xp+4Q/lEyQK57ef7pHlPLoB/OXr3ycLWuzZLG+yQ6LczxNRQp/usjk+IfoxeK4cI21cEZCfgyBbegDonST31l9ekIND8+6bBSbVeQyYWoj4HfrjxJgbyDa1Zga/UfYS44RG+bdEtUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FSwV2Ap9HlsZ1NkPdvnNFWFdQ1+ohpxWu3UM03Gfg1s=;
 b=fU5u47uh+lSki/V8nCEqxjmduBGH2Y6y8s68kMAcK62H3ka6XICAtAvOvnrQpNa4OLLYZ0DVWb4Xz2CE7iDDGEGoUs0S5P+9AR3FCSrnM3n+f8UJf8QONDJyFHmCjtECdsbpB/tdtZIk2C21ZIat+xTr9PFbr7T36k39v2hA7Yw=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4853.eurprd04.prod.outlook.com (2603:10a6:20b:8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Thu, 23 Apr
 2020 10:04:34 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.032; Thu, 23 Apr 2020
 10:04:33 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH 2/4] firmware: imx: add resource management api
Thread-Topic: [PATCH 2/4] firmware: imx: add resource management api
Thread-Index: AQHWGT38Z8g88FkqQ0uX8uLlRjqzhqiGeivA
Date: Thu, 23 Apr 2020 10:04:33 +0000
Message-ID: <AM6PR04MB49665455AE49EB1B500BEB4080D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
 <1587625174-32668-3-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1587625174-32668-3-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7a80f697-9d4e-4252-c379-08d7e76db912
x-ms-traffictypediagnostic: AM6PR04MB4853:|AM6PR04MB4853:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB485364D16DD38F8386BE38A580D30@AM6PR04MB4853.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(136003)(39860400002)(396003)(366004)(346002)(55016002)(110136005)(33656002)(2906002)(8676002)(8936002)(81156014)(54906003)(9686003)(5660300002)(478600001)(4326008)(71200400001)(316002)(86362001)(26005)(6506007)(44832011)(66946007)(52536014)(7696005)(186003)(66446008)(64756008)(66556008)(66476007)(76116006);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Jr02sGcuR/LCSmG3Vz8eMALgQUjPyxLKP0qXhCOEr4POi3v7olUcujnVFpvUmJ9btLOS8XzmMPOy5Ia9jHF74hVc975w0ssR9de8yexOaTct+BP81a/Me/noQWyy78MXvjcw15uK9eyvnGa28Z3qckWQVLo3JK4KGcLBXf2VOXGzYJ62x46e1op4N9sV16vb1HhCF28iw1oq5ohosdIlfAVkTbKKDamj59NgBnPlqyemym7OFpKDs+ElHHuMvPwX7lciPD//ecVOS6xfxYL8R2aVuCycpns+v5zP9gR7VayOgTP5BmNuVDNI1YvPd5x5jiR9bMa2w3yEZqCH68rzpyt7oiuX4l6buOOTMFYOo4VbQ+dT1oqs4L3N4JPUBkRxcZqo/z8UhEBDua2+cxuzMqr9WcJgpj5J1n6uloAMzVbpt7unYXRPTh9XwFZLIOYG
x-ms-exchange-antispam-messagedata: bghWANjP4F5DrDR2Pn91YFmx0OJ3Tbx0n9bWTGO91VK3aRiWV8u9qfrG+fEISeCteUuxkY9ZaoOfRtN67OCXL1NU3Ge3JD73e//RXflX0bIlo05SF30kx7zz+gCnvbKv6tMb/c0hKJvdzUcEnxwitw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a80f697-9d4e-4252-c379-08d7e76db912
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 10:04:33.7293 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rANNpRxQIv1GZvqwx8fuYl8HU9XhqMElw4LFU80jwmsNUMBzOtOELeZZMNMFe6k4OeApe+DvkpEele+QFZJIfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4853
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_030436_817738_D96788BB 
X-CRM114-Status: GOOD (  22.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.80 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.15.80 listed in wl.mailspike.net]
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
Cc: "festevam@gmail.com" <festevam@gmail.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan <peng.fan@nxp.com>
> Sent: Thursday, April 23, 2020 3:00 PM
> 
> Add resource management API, when we have multiple partition running
> together, resources not owned to current partition should not be used.
> 
> Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Right now I'm still not quite understand if we really need this.
As current resource is bound to power domains, if it's not owned by one specific
SW execution environment, power on will also fail.
Can you clarify if any exceptions?

Regards
Aisheng

> ---
>  drivers/firmware/imx/Makefile       |  2 +-
>  drivers/firmware/imx/rm.c           | 40 +++++++++++++++++++++
>  include/linux/firmware/imx/sci.h    |  1 +
>  include/linux/firmware/imx/svc/rm.h | 69
> +++++++++++++++++++++++++++++++++++++
>  4 files changed, 111 insertions(+), 1 deletion(-)  create mode 100644
> drivers/firmware/imx/rm.c  create mode 100644
> include/linux/firmware/imx/svc/rm.h
> 
> diff --git a/drivers/firmware/imx/Makefile b/drivers/firmware/imx/Makefile
> index 08bc9ddfbdfb..17ea3613e142 100644
> --- a/drivers/firmware/imx/Makefile
> +++ b/drivers/firmware/imx/Makefile
> @@ -1,4 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0
>  obj-$(CONFIG_IMX_DSP)		+= imx-dsp.o
> -obj-$(CONFIG_IMX_SCU)		+= imx-scu.o misc.o imx-scu-irq.o
> +obj-$(CONFIG_IMX_SCU)		+= imx-scu.o misc.o imx-scu-irq.o rm.o
>  obj-$(CONFIG_IMX_SCU_PD)	+= scu-pd.o
> diff --git a/drivers/firmware/imx/rm.c b/drivers/firmware/imx/rm.c new file
> mode 100644 index 000000000000..7b0334de5486
> --- /dev/null
> +++ b/drivers/firmware/imx/rm.c
> @@ -0,0 +1,40 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2020 NXP
> + *
> + * File containing client-side RPC functions for the RM service. These
> + * function are ported to clients that communicate to the SC.
> + */
> +
> +#include <linux/firmware/imx/svc/rm.h>
> +
> +struct imx_sc_msg_rm_rsrc_owned {
> +	struct imx_sc_rpc_msg hdr;
> +	u16 resource;
> +} __packed __aligned(4);
> +
> +/*
> + * This function check @resource is owned by current partition or not
> + *
> + * @param[in]     ipc         IPC handle
> + * @param[in]     resource    resource the control is associated with
> + *
> + * @return Returns 0 for success and < 0 for errors.
> + */
> +bool imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc, u16 resource)
> +{
> +	struct imx_sc_msg_rm_rsrc_owned msg;
> +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> +
> +	hdr->ver = IMX_SC_RPC_VERSION;
> +	hdr->svc = IMX_SC_RPC_SVC_RM;
> +	hdr->func = IMX_SC_RM_FUNC_IS_RESOURCE_OWNED;
> +	hdr->size = 2;
> +
> +	msg.resource = resource;
> +
> +	imx_scu_call_rpc(ipc, &msg, true);
> +
> +	return hdr->func;
> +}
> +EXPORT_SYMBOL(imx_sc_rm_is_resource_owned);
> diff --git a/include/linux/firmware/imx/sci.h b/include/linux/firmware/imx/sci.h
> index 17ba4e405129..b5c5a56f29be 100644
> --- a/include/linux/firmware/imx/sci.h
> +++ b/include/linux/firmware/imx/sci.h
> @@ -15,6 +15,7 @@
> 
>  #include <linux/firmware/imx/svc/misc.h>  #include
> <linux/firmware/imx/svc/pm.h>
> +#include <linux/firmware/imx/svc/rm.h>
> 
>  int imx_scu_enable_general_irq_channel(struct device *dev);  int
> imx_scu_irq_register_notifier(struct notifier_block *nb); diff --git
> a/include/linux/firmware/imx/svc/rm.h b/include/linux/firmware/imx/svc/rm.h
> new file mode 100644
> index 000000000000..fc6ea62d9d0e
> --- /dev/null
> +++ b/include/linux/firmware/imx/svc/rm.h
> @@ -0,0 +1,69 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Copyright (C) 2016 Freescale Semiconductor, Inc.
> + * Copyright 2017-2019 NXP
> + *
> + * Header file containing the public API for the System Controller (SC)
> + * Power Management (PM) function. This includes functions for power
> +state
> + * control, clock control, reset control, and wake-up event control.
> + *
> + * RM_SVC (SVC) Resource Management Service
> + *
> + * Module for the Resource Management (RM) service.
> + */
> +
> +#ifndef _SC_RM_API_H
> +#define _SC_RM_API_H
> +
> +#include <linux/firmware/imx/sci.h>
> +
> +/*
> + * This type is used to indicate RPC RM function calls.
> + */
> +enum imx_sc_rm_func {
> +	IMX_SC_RM_FUNC_UNKNOWN = 0,
> +	IMX_SC_RM_FUNC_PARTITION_ALLOC = 1,
> +	IMX_SC_RM_FUNC_SET_CONFIDENTIAL = 31,
> +	IMX_SC_RM_FUNC_PARTITION_FREE = 2,
> +	IMX_SC_RM_FUNC_GET_DID = 26,
> +	IMX_SC_RM_FUNC_PARTITION_STATIC = 3,
> +	IMX_SC_RM_FUNC_PARTITION_LOCK = 4,
> +	IMX_SC_RM_FUNC_GET_PARTITION = 5,
> +	IMX_SC_RM_FUNC_SET_PARENT = 6,
> +	IMX_SC_RM_FUNC_MOVE_ALL = 7,
> +	IMX_SC_RM_FUNC_ASSIGN_RESOURCE = 8,
> +	IMX_SC_RM_FUNC_SET_RESOURCE_MOVABLE = 9,
> +	IMX_SC_RM_FUNC_SET_SUBSYS_RSRC_MOVABLE = 28,
> +	IMX_SC_RM_FUNC_SET_MASTER_ATTRIBUTES = 10,
> +	IMX_SC_RM_FUNC_SET_MASTER_SID = 11,
> +	IMX_SC_RM_FUNC_SET_PERIPHERAL_PERMISSIONS = 12,
> +	IMX_SC_RM_FUNC_IS_RESOURCE_OWNED = 13,
> +	IMX_SC_RM_FUNC_GET_RESOURCE_OWNER = 33,
> +	IMX_SC_RM_FUNC_IS_RESOURCE_MASTER = 14,
> +	IMX_SC_RM_FUNC_IS_RESOURCE_PERIPHERAL = 15,
> +	IMX_SC_RM_FUNC_GET_RESOURCE_INFO = 16,
> +	IMX_SC_RM_FUNC_MEMREG_ALLOC = 17,
> +	IMX_SC_RM_FUNC_MEMREG_SPLIT = 29,
> +	IMX_SC_RM_FUNC_MEMREG_FRAG = 32,
> +	IMX_SC_RM_FUNC_MEMREG_FREE = 18,
> +	IMX_SC_RM_FUNC_FIND_MEMREG = 30,
> +	IMX_SC_RM_FUNC_ASSIGN_MEMREG = 19,
> +	IMX_SC_RM_FUNC_SET_MEMREG_PERMISSIONS = 20,
> +	IMX_SC_RM_FUNC_IS_MEMREG_OWNED = 21,
> +	IMX_SC_RM_FUNC_GET_MEMREG_INFO = 22,
> +	IMX_SC_RM_FUNC_ASSIGN_PAD = 23,
> +	IMX_SC_RM_FUNC_SET_PAD_MOVABLE = 24,
> +	IMX_SC_RM_FUNC_IS_PAD_OWNED = 25,
> +	IMX_SC_RM_FUNC_DUMP = 27,
> +};
> +
> +#if IS_ENABLED(CONFIG_IMX_SCU)
> +bool imx_sc_rm_is_resource_owned(struct imx_sc_ipc *ipc, u16 resource);
> +#else static inline bool imx_sc_rm_is_resource_owned(struct imx_sc_ipc
> +*ipc, u16 resource) {
> +	return true;
> +}
> +#endif
> +#endif
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
