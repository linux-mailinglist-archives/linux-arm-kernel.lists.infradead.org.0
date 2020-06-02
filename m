Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF061EB3A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 05:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pWOBPSbHoDatWi9LQ7OsV6X03cvxODTn7rF5/4vcb4E=; b=dCqxsLTOWCMwhx
	tiZknYFA3Z/M/v1hXvW3gvV86lnqtDrs0YhhfA4nnph4r87caRa4i5Xx86mz4U2goBg23Pe2aSdZ8
	5ghw6tK+HekN5M6SgvZ4puozf/gErkgkEk4TKv6/ywiwzOIQstRhQfaWM2jggXnYWO05j6Joqt1QC
	j5XBs4YvIdpQL0uX5dFkXoAxFyi6diQiSn8n0yjH0Ti+Pl7C36HWQY8ZtXOouNarwL7S+gpLHNbQP
	CCHHOhP7m7UFloL5FusU59LD+Y+Tb/9xp+VN6d+WY4DnkiCUSyiBkGRfIMmBgjt25MgSqXNaKLDmB
	cWP6qmJVfC1dHXWpC9OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfxHS-0003Np-IH; Tue, 02 Jun 2020 03:07:58 +0000
Received: from mail-db8eur05on2067.outbound.protection.outlook.com
 ([40.107.20.67] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfxHK-0003NL-RJ
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 03:07:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FHB8lB+2ein6oGe+MwWAjDJExmELOqk4/ZZdfMXoeXy1Rn0GcEo4y5oCqV/Boykz5M1CixesNVnMfazP+DJYYbKIHqgNP95VZSFU2VPkwP/A+EoA2OzMtQQvHIs/HBR1bGhu7DhRlkIBpn+2/71yKfanEVRdD5LsGgAw1ic7wxAb0igSe6gi9hPrc6SryJ/MShZL9tvJl2fBiVLpqb4A/Wq9HMO+1etwXMdwSXnXVJp4Xm9mMp1WSU9w50qgyT6KcKcZiiNUNVC2E051ghbvBOvtDmnWRSF3h/1KE4vlJCzzQAUAUIsghfrxlMW5+fBASciTXbg5bk5TBf21lal04w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GqY5ko8V9grjIDzG6nssN5vJUeB9aJb0cBX65tiRakw=;
 b=GlTo2AN+iPz9rWzMdQAKWModqm+cXeuAqLDfHRFX9P9lhq4p115SLZoy/ERg5+0ziXTR0cZWQDoW9IajU/vVHONjaIpc6YTxUMcG0ZnKVUAFI4ut4ZDwyWj/o/uvRDIpchxptvPLI+Q1LPe+9oed1J9x+0TemuOPNOtj3be/A7Yf+ed05lUQOuznRZrEXngYmB203WMeoaN7nvxaAabEVfgSbEaYkMvDHSgN/MijmT17ro3uX1We3MPQB4K45XhALAyXtxyYez/R6foGLkkm3Cq72X4uvyM/+7L0y2L6kc1ZQZoOZFPPYn8fGXBUFZ0UZ75EfTY+Ee9fF3I4beTGag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GqY5ko8V9grjIDzG6nssN5vJUeB9aJb0cBX65tiRakw=;
 b=CSfth0hO9mhRtU1OiNkd7ILtVEXp1PEsWzwpWNzbgRKHlPezeUrdjJI1Kd3dBL4VBQMbvZfhnD3WQgazH02rfUJd8XdAeb6c2ASAo8IJv2Cnsuohw8PM9k9bRj//tomuYNd+MsWlgNmtkB7gP1nz1xvPT7N26jpTLnDhO2YQfj4=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5783.eurprd04.prod.outlook.com (2603:10a6:20b:a2::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Tue, 2 Jun
 2020 03:07:47 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3045.024; Tue, 2 Jun 2020
 03:07:47 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH 2/4] firmware: imx: add resource management api
Thread-Topic: [PATCH 2/4] firmware: imx: add resource management api
Thread-Index: AQHWGT38Z8g88FkqQ0uX8uLlRjqzhqjE34aA
Date: Tue, 2 Jun 2020 03:07:47 +0000
Message-ID: <AM6PR04MB4966DA95F44FA63CDEF7E4F5808B0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
 <1587625174-32668-3-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1587625174-32668-3-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a5052df4-acad-4a58-eb11-08d806a2207f
x-ms-traffictypediagnostic: AM6PR04MB5783:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB578302D88CCE142B9320F514808B0@AM6PR04MB5783.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0422860ED4
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AHANmImsijAb/e9uBN9/hzXun1o15yQMAJ0Uf28aH5YSjrU6MQRjxIhrT+FTWU8OYaORH2naGeYm7s6NcUhaRdm0rzAd/kT6IRsZsBvbCcs08LTld3+0YC+hkzahfEgdt6fOdi9i6mSD3DV+v3b/Mwcw+kKsFw7uBushRbbgl5vt5fjZXZQMF7ubRXdKahozfdek2WvmYlFgOaSf+zlVslGHi+ypM9qTCp3PfSCbHc+F9pfVk1J0nWjTtSNpjdkNwvdmHfGvRz8VcRMMCTytDubb/RJ4T7mxu6pet1LZpH2NuvO8EM3cwT/gJpk2AD8ReOfy8tHOJ/Ok6fcX8Ayxfw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(366004)(396003)(136003)(376002)(39860400002)(5660300002)(66556008)(76116006)(7696005)(8936002)(6506007)(86362001)(66946007)(66476007)(186003)(26005)(64756008)(33656002)(8676002)(66446008)(44832011)(52536014)(4326008)(478600001)(71200400001)(2906002)(83380400001)(316002)(9686003)(55016002)(110136005)(54906003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: W3KHyhypOO4cpwh8wrcsRmlIsCstD97vadwEtkUDCuNO+4kgg13vSo+1IRe9ZYqxXrhm00a2FBoptbjGUeKuhAfBehZw2t+Qi6fFr/xC/c0HTKnNGrUGcgHCdxw3ttjBanyWzJ1BpMck5E3M2Wtx67pFwFVLVfgtxoFOwtYhyhiiSwH8BaJg5Tnnl5hXXLnxSxqo7faxy01x5HkZtmpHWSXRs+PaWc6uUx1VDPnJsZODw9ezxpvUUfqf9CEiRK/nh4oefhXGfplHnziyQYMpJEVSLBoH6VDT9PV4tzVeWzAoNI3dS3+X4YDMYRGTyg0PtX1oqBgimceKekVq+9v59OgWiBJ6PtUsBVMKVdIgPJJ+k3bYhuJU7zjMorsXCFnXIIKKy6xI3uYsSEKqsgG1bbvaK0zLOo9uEYEV+Mxd2pCX3YH4a04F+5ilzwCQWPpTjQa6ZKZK0OUhFuPNvDLE+c/UFL0joUgM+m7QprOH8v8paFkWvpgJaZD59fZNpG09
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5052df4-acad-4a58-eb11-08d806a2207f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2020 03:07:47.1618 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3+aNPa67J+Lu0vCNI+fLs2+pKOqba8sr5JIK2LCBix7hdffSWkdy2aP3eiQ+/4mbapMtSCe8e2V7PLz7eQ1u9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5783
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_200750_886557_FE49E28B 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.67 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
> Sent: Thursday, April 23, 2020 3:00 PM
> 
> Add resource management API, when we have multiple partition running
> together, resources not owned to current partition should not be used.
> 
> Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
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

No need check err return?

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

Update copyright

> + *
> + * Header file containing the public API for the System Controller (SC)
> + * Power Management (PM) function. This includes functions for power
> +state
> + * control, clock control, reset control, and wake-up event control.

Fix the code comments

Otherwise, I'm fine with this patch.

Regards
Aisheng

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
