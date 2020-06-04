Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 220F41EDF99
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 10:16:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B0cPr4ZkWU8/oF8qTscHueK17Ia+M6xa2MISGiln8Dg=; b=ksvlQh+XrBmTiP
	Bu6dk9WIs7k2XCCvUC0oRWcbYGlHs4YI3OrhWQ8sGEZnTmqE9YMC+HVfu0GFgtIrTl150j8bVa0Jk
	lF5MNbo8DIXv9+wzZMxaNdY6uRBa8jzfMjJYaJgkVLI3SSGesR7hdE+T9HNMHxdX01AgNpzpZtF7a
	yXJeGooFR8NpvaoOKAZA+ixSizR3nPGAw5ssgRg+1xdc5570b9IW1oVEH1+JYMoTX66hnSrTZE6xO
	TmpeyKaZRKXUY6cbP80U63fjMfdhgaYzAiDQvDR12KGMPGLiw/gCpjFh6Ja5zlid4HKdPEwuzGjlq
	QHkFM0pHWOiZkvmueJcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgl2w-0007Xk-1Y; Thu, 04 Jun 2020 08:16:18 +0000
Received: from mail-vi1eur05on2066.outbound.protection.outlook.com
 ([40.107.21.66] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgl2o-0007Wf-56
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 08:16:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=llnjRBVMOHLAP9o+Wft6pqv5RTyeQemuASYlyZo96Dd2pass3TlYlg5nD2daKReK0FNvO/ZHwtGBz3xWcISBzMFX678KP8F6fyqTeqaK1/N6docsCIO00zLdNFdm51AefxmYvP7xVkZhKUJCO1XvP48bnAADT/PSB1ye7vmQV5RYjaTBmRFoFjuhqM1oGZbmT5K2HN6hPVQEA1+N0pVqgALCsU0c1Hjlx8WbHKkIy4BxGK1LJdrfJK2/rQSKEz9uFUzB2LMUZbFl2HR9NYl+oJTDTgdTvAg4nAeZOJCSkqCPF5ZUw9fEg11G2eQ10qbqUa5aELAcZ5bQzTuwNw3r9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eKV6UOSeCltR07cN3fJgIH1zb1+WBvUTYlyMMWgkNck=;
 b=XF5E+tXpX5xc+2yMD+QaLQsyrIGZBeK7dn3gf5mcOxhQC7tKLK1LSoYYR4ar8Kz4IUhbBVc3ijV1yfGkhXSgNQpVlokqtCuXKaquZ3XfKOGkc6qdLxCEvhGQq+P6yCOrsuLGFG7mqh+H1FXuUKUkl+LDty9X3o50M6iIEKdr3eNJL9rdSrI64ZvZ5+zObrfMhbTF2z55W86OnEL5v73NyuBXt5hplnvLgTl3v75g+6aOcbW1lVljW3g6EKiTQ3IUG+uxWO3yzy5y16P6Es313xPeseNTNQlTfqiIWben1h8Y1QH8jy4u5pygevYGnZaqt5iwxPw6ESWZdXKIwmV2fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eKV6UOSeCltR07cN3fJgIH1zb1+WBvUTYlyMMWgkNck=;
 b=SlvlZTbdTesUrfQB/HyLEkN5SPEBSjxNXAHTQ8BeNrvv6O2ih2DpJgaYg7fyzT4cQdZ/sYu8P9emnqDjBfwrywp1IH9hlB3U4uOUmBrS/FkVpQDoio9oRPVIQLGUxIy+nGVmac13ah+mAJrMUxsRPmi8H27+WgrEEuNvoJGAau8=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4694.eurprd04.prod.outlook.com (2603:10a6:20b:a::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.19; Thu, 4 Jun
 2020 08:16:05 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3066.018; Thu, 4 Jun 2020
 08:16:05 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH V2 2/3] firmware: imx: add resource management api
Thread-Topic: [PATCH V2 2/3] firmware: imx: add resource management api
Thread-Index: AQHWOVkVyZOOG/6+fkys2OkB94SqeqjIHeCA
Date: Thu, 4 Jun 2020 08:16:05 +0000
Message-ID: <AM6PR04MB4966B2E779E2B7718A1D99A580890@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1591155143-25972-1-git-send-email-peng.fan@nxp.com>
 <1591155143-25972-3-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1591155143-25972-3-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a397c76b-3e74-45fa-fa71-08d8085f8717
x-ms-traffictypediagnostic: AM6PR04MB4694:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4694DEF3CADB33D32675629280890@AM6PR04MB4694.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 04244E0DC5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: C4saQ2WnhrdPtcDwZRsCHYfyBbfCYC6yMtddQUlLP3vtIMXfeVuMXl14o7jHr6vdNs+W6Lfdvh7lMMbucw/rkF/SEYyEreGCXQ6fjg3KtDuIKC/Z0bUyzMdevz1WZXAlc5zaSQqBAmrR+3robxRXNgmdM3L4XaOnVb/ECsEBwWjSoaj5qqmyKVOXCV9FGrD9uWkmq4RtVHD8Gv48QYPRRTZ1/VC4gb2xmxLymWtkfZFzCsQMr4fMWpIpnr99VUlcnJ49Yq3RY2B68dhPbs+DHwPTyUFRxsIYKeG+4YVtWCaMVglORz0bnE/wQiwxuE9D7APh9hwwTRK9GkYsTE9x+A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(396003)(39860400002)(366004)(376002)(346002)(6506007)(7696005)(26005)(44832011)(186003)(86362001)(71200400001)(9686003)(55016002)(8676002)(83380400001)(76116006)(66476007)(64756008)(66946007)(66556008)(66446008)(54906003)(52536014)(478600001)(5660300002)(4326008)(316002)(2906002)(33656002)(8936002)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: mIgcIN4g5xQaz7bkj3TRc/O34mqvg4272RS1O4Ncou2SVTlCfx0UHM0xhYzXBI3V3F2k5nf3yeaGfjNoxNnjRxQ8psW/IcuahdoMWdNgnd85P4stMxNNbN2e9TEmvXhwe7Tt64NcZSPwPT5pem1kDSjwbVCmqQMSKGUtdP856TtWPs6g4LdTvTWoaGvYeSdoqfnbTd3eiDxJed9b0+KRWXSM0ocWGM0D9wr4hguc6QK0fzDthpj6GdGP5NJpjYfeak4NwU0lJyYxcRI+8w0sT+DVQStjskg0wXGv4afyq5UiCNL8Iu1FAyKIgW/20HaXWxfRtk4suPx1M5u58/6e/d0OIDQ3hqaErHncloSjuW1qJgq3EpWeOelDMZkzD1diCgqiRt+Z6TA9Ts1iizJJKrVUD41D43Q/z2VHQ0JfQH70EAKUYWeFBU0MlaR7NUAKy7PAWugJqEIGTjnGojFbpZQuNyUVRNGRU1cDwAhJ4/e3nYfm6fKFDMhBHYWAvIgd
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a397c76b-3e74-45fa-fa71-08d8085f8717
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2020 08:16:05.3096 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wTCgC7NzCLmp2MSSlPt2Vo/4wOsrWUGGUiPTQPqt8kXifRxPrnkZghZRfbDzXOdPVwSdQ9Oqbs8yce8RvHCVGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4694
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_011610_284062_288B69CC 
X-CRM114-Status: GOOD (  19.67  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.66 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
> Sent: Wednesday, June 3, 2020 11:32 AM
> 
> Add resource management API, when we have multiple partition running
> together, resources not owned to current partition should not be used.
> 
> Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/firmware/imx/Makefile       |  2 +-
>  drivers/firmware/imx/rm.c           | 45 ++++++++++++++++++++++++
>  include/linux/firmware/imx/sci.h    |  1 +
>  include/linux/firmware/imx/svc/rm.h | 69
> +++++++++++++++++++++++++++++++++++++
>  4 files changed, 116 insertions(+), 1 deletion(-)  create mode 100644
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
> mode 100644 index 000000000000..a12db6ff323b
> --- /dev/null
> +++ b/drivers/firmware/imx/rm.c
> @@ -0,0 +1,45 @@
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
> + * @return Returns 0 for not owned and 1 for owned.
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
> +	/*
> +	 * SCU firmware only returns value 0 or 1
> +	 * for resource owned check which means not owned or owned.
> +	 * So it is always successful.
> +	 */
> +	imx_scu_call_rpc(ipc, &msg, true);
> +
> +	return hdr->func;
> +}
> +EXPORT_SYMBOL(imx_sc_rm_is_resource_owned);
> diff --git a/include/linux/firmware/imx/sci.h b/include/linux/firmware/imx/sci.h
> index 3fa418a4ca67..3c459f54a88f 100644
> --- a/include/linux/firmware/imx/sci.h
> +++ b/include/linux/firmware/imx/sci.h
> @@ -14,6 +14,7 @@
> 
>  #include <linux/firmware/imx/svc/misc.h>  #include
> <linux/firmware/imx/svc/pm.h>
> +#include <linux/firmware/imx/svc/rm.h>
> 
>  int imx_scu_enable_general_irq_channel(struct device *dev);  int
> imx_scu_irq_register_notifier(struct notifier_block *nb); diff --git
> a/include/linux/firmware/imx/svc/rm.h b/include/linux/firmware/imx/svc/rm.h
> new file mode 100644
> index 000000000000..9924216f3e45
> --- /dev/null
> +++ b/include/linux/firmware/imx/svc/rm.h
> @@ -0,0 +1,69 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Copyright (C) 2016 Freescale Semiconductor, Inc.
> + * Copyright 2017-2020 NXP
> + *
> + * Header file containing the public API for the System Controller (SC)
> + * Power Management (PM) function. This includes functions for power
> +state
> + * control, clock control, reset control, and wake-up event control.

Fix the code comments.
Otherwise:
Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
