Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2334E17B218
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 00:12:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ApJFjVjlH4Trc38wtoNmGOo4FsNFLVGL2HJpahT9qtE=; b=VFc9ZzI5nK/x9p
	pv7mrNI7KrNFMLb4c3icTCi1NRfTzRtTgHMte0UEDvAwJq0NEG1S8e1QaKdQWAFWfaqAe9kL189ql
	8b/ZO0RnBZBVElDIMb9W2kOSNj/4T7wlY3kA5RfCmUshTWr792ye7S9pt7eo7gtPERutIK7uDNGg8
	hqqHK1+ISpvxaRJ81EkvSHsAeHf0UtONMn6nN2QF7eGgYBlpTcBGCx59q/ceaKL8HieGvCJ1Vl4Qi
	A1UHG/1XAnr6c7qMea58cyzeQIxAigkOBG4lEzSeSRlMgofUPzzCuX2MNySP5Ih7ykLcHDzCZ9rWT
	pk4/wIv9aiEapcCF6u6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9zfZ-0001Xv-9G; Thu, 05 Mar 2020 23:12:45 +0000
Received: from mx0b-00010702.pphosted.com ([148.163.158.57])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9zfN-0001Wo-MD
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 23:12:36 +0000
Received: from pps.filterd (m0098779.ppops.net [127.0.0.1])
 by mx0b-00010702.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 025NBuEV021517; Thu, 5 Mar 2020 17:12:26 -0600
Received: from nam04-bn3-obe.outbound.protection.outlook.com
 (mail-bn3nam04lp2059.outbound.protection.outlook.com [104.47.46.59])
 by mx0b-00010702.pphosted.com with ESMTP id 2yfpnare03-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 05 Mar 2020 17:12:26 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y7b2UqHrv7U5fckp8YQfVtYYjd8BLyY6zrLNFh81+8kb/7QRbixjqKiLMdW45iVvrWkZm3Wtf4Pag7VmAVBs9o+XvgPNbcZHkFsRn7bPcVvNE62fbh9dLKB+45CM+gGWnLca5jUcFhz6WnWWcuxVrBB5fCohW/PSU45rhhCNMDKwDEH6tkvqCp+GzQ4oz20m2yzjDDHPPt+d5bqwq2r2sNj9J0DGcnqfgQ/2h9xoEop4WN7srtiztjyODSxqLbeKvvT3g9DrQ6yS8j4NFLlNBOWMF6cl2dWk9X3tZJSrrt0u9hCuUoYmQvmQT31/W8Mnu8g9429lINrOC2Ci4ZAFFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bO8BTFrVsILbEcREt1gxpVPCuiTTDbvDnxOzUwZ0i8g=;
 b=c7OqrKNL0ewxdaw7yEQ5WX4zgU+BwHzUDoCJwkNnhwAG8GBcx6eciyajmmqF9Bi0NBWh+80jr75PJ9L2bGcOIpwyoRBXtS0Hw+gN9VLJel4sDdVzFQCv8q+BgxLM+BUkBxZqS3EwCV/LCjzsh9+GsdD4fO/L9c1HYt2kfqk8bi7+GkeR5kMuagP+9khiWzDqfb380BE41MUL4FHeOAisbuOGCmDZam3M3IYtgykxk3bZRxLr0foz+Zf/N1WCMQPGRIiwx+aqPO1ns4FLRZB4eThUr1giyiYV7pMhJWbMrwirl8E/gESMndyJqyW4a4n4a3vKGpPpwat1oZ+729Pfng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bO8BTFrVsILbEcREt1gxpVPCuiTTDbvDnxOzUwZ0i8g=;
 b=MqnHC5kAWqYuZiObKb1OxkabZ4osnUlgUZoT3JxA0vrLQveYUC0M9O04yyetPpmvO1ecGLMtnwzcHSx6sEq/CUk86AxVl9RHo3TVyPyA41PStEMa7zGAzoD471crZcHH7E5rcOZHcHTjv2U7rDDEJqrqbIYAKZolK4gXJKOE1vM=
Received: from DM6PR04MB4553.namprd04.prod.outlook.com (2603:10b6:5:21::29) by
 DM6PR04MB7034.namprd04.prod.outlook.com (2603:10b6:5:24e::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.14; Thu, 5 Mar 2020 23:12:24 +0000
Received: from DM6PR04MB4553.namprd04.prod.outlook.com
 ([fe80::bcf1:ec5e:65f8:8fbb]) by DM6PR04MB4553.namprd04.prod.outlook.com
 ([fe80::bcf1:ec5e:65f8:8fbb%7]) with mapi id 15.20.2772.019; Thu, 5 Mar 2020
 23:12:24 +0000
Date: Thu, 5 Mar 2020 17:12:23 -0600
From: Michael Auchter <michael.auchter@ni.com>
To: Ben Levinsky <ben.levinsky@xilinx.com>
Subject: Re: [PATCH 5/5] remoteproc: Add initial zynqmp R5 remoteproc driver
Message-ID: <20200305231223.GA197334@xaphan.ni.corp.natinst.com>
References: <1582566751-13118-1-git-send-email-ben.levinsky@xilinx.com>
 <1582566751-13118-6-git-send-email-ben.levinsky@xilinx.com>
Content-Disposition: inline
In-Reply-To: <1582566751-13118-6-git-send-email-ben.levinsky@xilinx.com>
X-ClientProxiedBy: SN6PR01CA0005.prod.exchangelabs.com (2603:10b6:805:b6::18)
 To DM6PR04MB4553.namprd04.prod.outlook.com
 (2603:10b6:5:21::29)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (130.164.62.185) by
 SN6PR01CA0005.prod.exchangelabs.com (2603:10b6:805:b6::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.11 via Frontend Transport; Thu, 5 Mar 2020 23:12:24 +0000
X-Originating-IP: [130.164.62.185]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 87154ef7-8332-4806-30b2-08d7c15aaa54
X-MS-TrafficTypeDiagnostic: DM6PR04MB7034:
X-Microsoft-Antispam-PRVS: <DM6PR04MB703437DB729DFFD3918342FA87E20@DM6PR04MB7034.namprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:873;
X-Forefront-PRVS: 03333C607F
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(366004)(376002)(39850400004)(396003)(346002)(136003)(199004)(189003)(4326008)(5660300002)(54906003)(81156014)(81166006)(6916009)(66556008)(66946007)(66476007)(8676002)(86362001)(2906002)(26005)(16526019)(186003)(478600001)(52116002)(7416002)(956004)(6486002)(6496006)(9686003)(44832011)(30864003)(8936002)(1076003)(33656002)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR04MB7034;
 H:DM6PR04MB4553.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: ni.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ihEsRLf0+xiWNLWr06iEIVYGC9YeEMfhnkFYul4iHvK4Vr1vbAR/mivCTj5buZjqeQ+Qz92PsZOLrEZrSGQUTD6Pt/sLbufNeo1MS1xWCW1YToMv9oR7rswjLM1WuDfl9CZL/Ai5q7nN0KDNBR5cLbVJbLRXO0hjVjc2AvqGeFf4zhBKNFPhyuJPkR0X2ur/1h/L74d3Ile3hsK9r8uZ7e4gBMwTfTIs5b520EBRo+G2K+YJeYSWTGDREH9jYTBdmxfyePQO2epSkP+D/g80AnhpBLZeQ7DWkwoURdY8RL0/+EqulKB9m9COBAWdMogv4GYifZU4vcKQ1vH/dIks0Rb1sdZegX8uk5JQ3yndhNTBBn+NPVOTVSnuh3OKMBNCuE1RezsOP0X4d211C0+Pg5sPHqpjlp+Jimwq4QJA5mRAFk3ssd5aBD0tsBHAZf+2
X-MS-Exchange-AntiSpam-MessageData: +4yns6Iw7MYPzAMfyoT0Tps0B5EtcXY2lIcuvO9afzNdxEG82DPipn2TkyuZW7l+7WoFrbBv5nRNO5ZNmbPJHkl3Int1Zct1bjJdbJI9ngbmPTMYhab7KRUPEYRHn1vs/o65Eg2rRd+6rNFzvjmFBQ==
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87154ef7-8332-4806-30b2-08d7c15aaa54
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2020 23:12:24.7884 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ARiIUuh3e1Vz/SdsR3zZjSb4xp2g+e+NAvT3Rg9f+6Y37dvNaLcn1U+PsympWDaIvniLxKcvgM3sgPxnp9ph7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB7034
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-05_08:2020-03-05,
 2020-03-05 signatures=0
X-Proofpoint-Spam-Details: rule=inbound_policy_notspam policy=inbound_policy
 score=30 mlxlogscore=999
 impostorscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 adultscore=0 bulkscore=0 suspectscore=7 spamscore=0 lowpriorityscore=0
 clxscore=1011 mlxscore=0 classifier=spam adjust=30 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003050129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_151233_944376_7B846BFA 
X-CRM114-Status: GOOD (  23.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.57 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: ohad@wizery.com, mark.rutland@arm.com, Wendy Liang <wendy.liang@xilinx.com>,
 rajan.vaja@xilinx.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ed Mooring <ed.mooring@xilinx.com>,
 linux-remoteproc@vger.kernel.org, michal.simek@xilinx.com,
 bjorn.andersson@linaro.org, jollys@xilinx.com, robh+dt@kernel.org,
 Jason Wu <j.wu@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Ben,

I hope to give this a try soon! I've added some comments inline.

On Mon, Feb 24, 2020 at 09:52:31AM -0800, Ben Levinsky wrote:
> From: Jason Wu <j.wu@xilinx.com>
> 
> R5 is included in Xilinx Zynq UltraScale MPSoC so by adding this
> remotproc driver, we can boot the R5 sub-system in different
> configurations.
> 
> Signed-off-by: Jason Wu <j.wu@xilinx.com>
> 
> Acked-by: Stefano Stabellini <stefano.stabellini@xilinx.com>
> Acked-by: Ben Levinsky <ben.levinsky@xilinx.com>
> Reviewed-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
> Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>
> Signed-off-by: Wendy Liang <wendy.liang@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Ed Mooring <ed.mooring@xilinx.com>
> Tested-by: Ben Levinsky <ben.levinsky@xilinx.com>
> ---
>  drivers/remoteproc/Kconfig                |  10 +
>  drivers/remoteproc/Makefile               |   1 +
>  drivers/remoteproc/zynqmp_r5_remoteproc.c | 913 ++++++++++++++++++++++++++++++
>  3 files changed, 924 insertions(+)
>  create mode 100644 drivers/remoteproc/zynqmp_r5_remoteproc.c
> 
> diff --git a/drivers/remoteproc/Kconfig b/drivers/remoteproc/Kconfig
> index de3862c..be14eba 100644
> --- a/drivers/remoteproc/Kconfig
> +++ b/drivers/remoteproc/Kconfig
> @@ -206,6 +206,16 @@ config ST_REMOTEPROC
>  	  processor framework.
>  	  This can be either built-in or a loadable module.
>  
> +config ZYNQMP_R5_REMOTEPROC
> +	tristate "ZynqMP_r5 remoteproc support"
> +	depends on ARM64 && PM && ARCH_ZYNQMP
> +	select RPMSG_VIRTIO
> +	select MAILBOX
> +	select ZYNQMP_IPI_MBOX
> +	help
> +	  Say y here to support ZynqMP R5 remote processors via the remote
> +	  processor framework.
> +
>  config ST_SLIM_REMOTEPROC
>  	tristate
>  
> diff --git a/drivers/remoteproc/Makefile b/drivers/remoteproc/Makefile
> index e30a1b1..ee18d26 100644
> --- a/drivers/remoteproc/Makefile
> +++ b/drivers/remoteproc/Makefile
> @@ -26,5 +26,6 @@ obj-$(CONFIG_QCOM_WCNSS_PIL)		+= qcom_wcnss_pil.o
>  qcom_wcnss_pil-y			+= qcom_wcnss.o
>  qcom_wcnss_pil-y			+= qcom_wcnss_iris.o
>  obj-$(CONFIG_ST_REMOTEPROC)		+= st_remoteproc.o
> +obj-$(CONFIG_ZYNQMP_R5_REMOTEPROC)	+= zynqmp_r5_remoteproc.o
>  obj-$(CONFIG_ST_SLIM_REMOTEPROC)	+= st_slim_rproc.o
>  obj-$(CONFIG_STM32_RPROC)		+= stm32_rproc.o
> diff --git a/drivers/remoteproc/zynqmp_r5_remoteproc.c b/drivers/remoteproc/zynqmp_r5_remoteproc.c
> new file mode 100644
> index 0000000..a84ee8e
> --- /dev/null
> +++ b/drivers/remoteproc/zynqmp_r5_remoteproc.c
> @@ -0,0 +1,913 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Zynq R5 Remote Processor driver
> + *
> + * Copyright (C) 2015 - 2018 Xilinx Inc.
> + * Copyright (C) 2015 Jason Wu <j.wu@xilinx.com>
> + *
> + * Based on origin OMAP and Zynq Remote Processor driver
> + *
> + * Copyright (C) 2012 Michal Simek <monstr@monstr.eu>
> + * Copyright (C) 2012 PetaLogix
> + * Copyright (C) 2011 Texas Instruments, Inc.
> + * Copyright (C) 2011 Google, Inc.
> + */
> +
> +#include <linux/atomic.h>
> +#include <linux/cpu.h>
> +#include <linux/dma-mapping.h>
> +#include <linux/delay.h>
> +#include <linux/err.h>
> +#include <linux/firmware/xlnx-zynqmp.h>
> +#include <linux/genalloc.h>
> +#include <linux/idr.h>
> +#include <linux/interrupt.h>
> +#include <linux/kernel.h>
> +#include <linux/list.h>
> +#include <linux/mailbox_client.h>
> +#include <linux/mailbox/zynqmp-ipi-message.h>
> +#include <linux/module.h>
> +#include <linux/of_address.h>
> +#include <linux/of_irq.h>
> +#include <linux/of_platform.h>
> +#include <linux/of_reserved_mem.h>
> +#include <linux/pfn.h>
> +#include <linux/platform_device.h>
> +#include <linux/remoteproc.h>
> +#include <linux/skbuff.h>
> +#include <linux/slab.h>
> +#include <linux/sysfs.h>
> +
> +#include "remoteproc_internal.h"
> +
> +#define MAX_RPROCS	2 /* Support up to 2 RPU */
> +#define MAX_MEM_PNODES	4 /* Max power nodes for one RPU memory instance */
> +
> +/* PM proc states */
> +#define PM_PROC_STATE_ACTIVE 1U
> +
> +/* IPI buffer MAX length */
> +#define IPI_BUF_LEN_MAX	32U
> +/* RX mailbox client buffer max length */
> +#define RX_MBOX_CLIENT_BUF_MAX	(IPI_BUF_LEN_MAX + \
> +				 sizeof(struct zynqmp_ipi_message))
> +
> +#define PM_HIVEC_MASK 0xF0000000
> +
> +#define TCM_BASE_ADDR  0xFFE00000
> +#define TCM_LOW_BITMASK 0x000FFFFF
> +#define TCM_BANK1_BITMASK 0x80000
> +#define TCM_BANK1_HIGHBIT_BITMASK 0x90000
> +
> +static bool autoboot __read_mostly;
> +
> +static const struct zynqmp_eemi_ops *eemi_ops;
> +
> +/**
> + * struct zynqmp_r5_mem - zynqmp rpu memory data
> + * @pnode_id: TCM power domain ids
> + * @res: memory resource
> + * @node: list node
> + */
> +struct zynqmp_r5_mem {
> +	u32 pnode_id[MAX_MEM_PNODES];
> +	struct resource res;
> +	struct list_head node;
> +};
> +
> +/**
> + * struct zynqmp_r5_pdata - zynqmp rpu remote processor private data
> + * @dev: device of RPU instance
> + * @rproc: rproc handle
> + * @parent: RPU slot platform data
> + * @pnode_id: RPU CPU power domain id
> + * @mems: memory resources
> + * @is_r5_mode_set: indicate if r5 operation mode is set
> + * @tx_mc: tx mailbox client
> + * @rx_mc: rx mailbox client
> + * @tx_chan: tx mailbox channel
> + * @rx_chan: rx mailbox channel
> + * @workqueue: workqueue for the RPU remoteproc
> + * @tx_mc_skbs: socket buffers for tx mailbox client
> + * @rx_mc_buf: rx mailbox client buffer to save the rx message
> + */
> +struct zynqmp_r5_pdata {
> +	struct device dev;
> +	struct rproc *rproc;
> +	struct zynqmp_rpu_domain_pdata *parent;
> +	u32 pnode_id;
> +	struct list_head mems;
> +	bool is_r5_mode_set;
> +	struct mbox_client tx_mc;
> +	struct mbox_client rx_mc;
> +	struct mbox_chan *tx_chan;
> +	struct mbox_chan *rx_chan;
> +	struct work_struct workqueue;
> +	struct sk_buff_head tx_mc_skbs;
> +	unsigned char rx_mc_buf[RX_MBOX_CLIENT_BUF_MAX];
> +};
> +
> +/**
> + * struct zynqmp_rpu_domain_pdata - zynqmp rpu platform data
> + * @rpus: table of RPUs
> + * @rpu_mode: RPU core configuration
> + */
> +struct zynqmp_rpu_domain_pdata {
> +	struct zynqmp_r5_pdata rpus[MAX_RPROCS];
> +	enum rpu_oper_mode rpu_mode;
> +};
> +
> +/*
> + * r5_set_mode - set RPU operation mode
> + * @pdata: Remote processor private data
> + *
> + * set RPU operation mode
> + *
> + * Return: 0 for success, negative value for failure
> + */
> +static int r5_set_mode(struct zynqmp_r5_pdata *pdata)
> +{
> +	u32 val[PAYLOAD_ARG_CNT] = {0}, expect;
> +	struct zynqmp_rpu_domain_pdata *parent;
> +	struct device *dev = &pdata->dev;
> +	int ret;
> +
> +	if (pdata->is_r5_mode_set)
> +		return 0;
> +	parent = pdata->parent;
> +	expect = (u32)parent->rpu_mode;
> +	ret = eemi_ops->ioctl(pdata->pnode_id, IOCTL_GET_RPU_OPER_MODE,
> +			  0, 0, val);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to get RPU oper mode.\n");
> +		return ret;
> +	}
> +	if (val[0] == expect) {
> +		dev_dbg(dev, "RPU mode matches: %x\n", val[0]);
> +	} else {
> +		ret = eemi_ops->ioctl(pdata->pnode_id,
> +				  IOCTL_SET_RPU_OPER_MODE,
> +				  expect, 0, val);
> +		if (ret < 0) {
> +			dev_err(dev,
> +				"failed to set RPU oper mode.\n");
> +			return ret;
> +		}
> +	}
> +	if (expect == (u32)PM_RPU_MODE_LOCKSTEP)
> +		expect = (u32)PM_RPU_TCM_COMB;
> +	else
> +		expect = (u32)PM_RPU_TCM_SPLIT;
> +	ret = eemi_ops->ioctl(pdata->pnode_id, IOCTL_TCM_COMB_CONFIG,
> +			  expect, 0, val);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to config TCM to %x.\n",
> +			expect);
> +		return ret;
> +	}
> +	pdata->is_r5_mode_set = true;
> +	return 0;
> +}
> +
> +/**
> + * r5_is_running - check if r5 is running
> + * @pdata: Remote processor private data
> + *
> + * check if R5 is running
> + *
> + * Return: true if r5 is running, false otherwise
> + */
> +static bool r5_is_running(struct zynqmp_r5_pdata *pdata)
> +{
> +	u32 status, requirements, usage;
> +	struct device *dev = &pdata->dev;
> +
> +	if (eemi_ops->get_node_status(pdata->pnode_id,
> +				      &status, &requirements, &usage)) {
> +		dev_err(dev, "Failed to get RPU node %d status.\n",
> +			pdata->pnode_id);
> +		return false;
> +	} else if (status != PM_PROC_STATE_ACTIVE) {
> +		dev_dbg(dev, "RPU is not running.\n");
> +		return false;
> +	}
> +
> +	dev_dbg(dev, "RPU is running.\n");
> +	return true;
> +}
> +
> +/*
> + * ZynqMP R5 remoteproc memory release function
> + */
> +static int zynqmp_r5_mem_release(struct rproc *rproc,
> +				 struct rproc_mem_entry *mem)
> +{
> +	struct zynqmp_r5_mem *priv;
> +	int i, ret;
> +	struct device *dev = &rproc->dev;
> +
> +	priv = mem->priv;
> +	if (!priv)
> +		return 0;
> +	for (i = 0; i < MAX_MEM_PNODES; i++) {
> +		if (priv->pnode_id[i]) {
> +			dev_dbg(dev, "%s, pnode %d\n",
> +				__func__, priv->pnode_id[i]);
> +			ret = eemi_ops->release_node(priv->pnode_id[i]);
> +			if (ret < 0) {
> +				dev_err(dev,
> +					"failed to release power node: %u\n",
> +					priv->pnode_id[i]);
> +				return ret;
> +			}
> +		} else {
> +			break;
> +		}
> +	}
> +	return 0;
> +}
> +
> +/*
> + * ZynqMP R5 remoteproc operations
> + */
> +static int zynqmp_r5_rproc_start(struct rproc *rproc)
> +{
> +	struct device *dev = rproc->dev.parent;
> +	struct zynqmp_r5_pdata *local = rproc->priv;
> +	enum rpu_boot_mem bootmem;
> +	int ret;
> +
> +	/* Set up R5 */
> +	ret = r5_set_mode(local);
> +	if (ret) {
> +		dev_err(dev, "failed to set R5 operation mode.\n");
> +		return ret;
> +	}
> +	if ((rproc->bootaddr & PM_HIVEC_MASK) == PM_HIVEC_MASK)
> +		bootmem = PM_RPU_BOOTMEM_HIVEC;
> +	else
> +		bootmem = PM_RPU_BOOTMEM_LOVEC;
> +	dev_info(dev, "RPU boot from %s.",
> +		 bootmem == PM_RPU_BOOTMEM_HIVEC ? "OCM" : "TCM");
> +
> +	ret = eemi_ops->request_wakeup(local->pnode_id, 1, bootmem,
> +				       ZYNQMP_PM_REQUEST_ACK_NO);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to boot R5.\n");
> +		return ret;
> +	}
> +	return 0;
> +}
> +
> +static int zynqmp_r5_rproc_stop(struct rproc *rproc)
> +{
> +	struct zynqmp_r5_pdata *local = rproc->priv;
> +	int ret;
> +
> +	ret = eemi_ops->force_powerdown(local->pnode_id,
> +					ZYNQMP_PM_REQUEST_ACK_BLOCKING);
> +	if (ret < 0) {
> +		dev_err(&local->dev, "failed to shutdown R5.\n");
> +		return ret;
> +	}
> +	local->is_r5_mode_set = false;
> +	return 0;
> +}
> +
> +
> +static int zynqmp_r5_parse_fw(struct rproc *rproc, const struct firmware *fw)
> +{
> +	struct zynqmp_r5_pdata *pdata = rproc->priv;
> +	struct zynqmp_r5_mem *zynqmp_mem;
> +	struct device *dev = &pdata->dev;
> +	struct device_node *np = dev->of_node;
> +	int num_mems;
> +	int ret, i, dma_pool_index = 0;
> +	struct reserved_mem *rmem;
> +	struct rproc_mem_entry *mem;
> +	struct device_node *child;
> +	struct resource rsc;
> +
> +	num_mems = of_count_phandle_with_args(np, "memory-region", NULL);
> +	if (num_mems <= 0)
> +		return 0;
> +	for (i = 0; i < num_mems; i++) {
> +		struct device_node *node;
> +		int ret;
> +
> +		node = of_parse_phandle(np, "memory-region", i);
> +		rmem = of_reserved_mem_lookup(node);
> +		if (!rmem) {
> +			dev_err(dev, "unable to acquire memory-region\n");
> +			return -EINVAL;
> +		}
> +		if (strstr(node->name, "vdev") &&
> +			strstr(node->name, "buffer")) {
> +			int id;
> +			char name[16];
> +
> +			id = node->name[8] - 48;

Hm, so the node name is significant? This doesn't look to be documented
in the binding, and seems a bit weird to me...

node->name[8] - '0' might also make the intent more obvious.

> +			snprintf(name, sizeof(name), "vdev%dbuffer", id);
> +			/* Register DMA region */
> +			mem = rproc_mem_entry_init(dev, NULL,
> +						   (dma_addr_t)rmem->base,
> +						   rmem->size, rmem->base,
> +						   NULL, NULL,
> +						   name);
> +			if (!mem) {
> +				dev_err(dev, "unable to initialize memory-region %s\n",
> +						name);
> +				return -EINVAL;
> +			}
> +
> +			rproc_add_carveout(rproc, mem);
> +			continue;

If the intent of the "continue" is to skip the "non-DMA" case below,
why not drop the "continue" and instead move the "non-DMA" case into the
body of the "else" below?

> +		} else {
> +			mem = rproc_of_resm_mem_entry_init(dev, i,
> +							rmem->size,
> +							rmem->base,
> +							node->name);
> +			if (!mem) {
> +				dev_err(dev, "unable to initialize memory-region %s\n",
> +						node->name);
> +				return -EINVAL;
> +			}
> +
> +			mem->va = devm_ioremap_wc(dev, rmem->base, rmem->size);
> +			if (!mem->va) {
> +				dev_err(dev, "unable to map va for %s\n",
> +						node->name);
> +				return -EINVAL;
> +			}
> +
> +			rproc_add_carveout(rproc, mem);
> +		}
> +		if (!mem)
> +			return -ENOMEM;

It doesn't seem like this is reachable.

> +
> +
> +		/*
> +		 * It is non-DMA memory, used for firmware loading.
> +		 * It will be added to the R5 remoteproc mappings later.
> +		 */
> +		zynqmp_mem = devm_kzalloc(dev, sizeof(*zynqmp_mem), GFP_KERNEL);
> +		if (!zynqmp_mem)
> +			return -ENOMEM;
> +		ret = of_address_to_resource(node, 0, &zynqmp_mem->res);
> +		if (ret) {
> +			dev_err(dev, "unable to resolve memory region.\n");
> +			return ret;
> +		}
> +		list_add_tail(&zynqmp_mem->node, &pdata->mems);
> +		dev_dbg(dev, "%s, non-dma mem %s\n",
> +			__func__, of_node_full_name(node));

Use %pOF instead?

> +	}
> +
> +	/* map TCM memories */
> +	for_each_available_child_of_node(np, child) {
> +		ret = of_address_to_resource(child, 0, &rsc);
> +		struct property *prop;
> +		const __be32 *cur;
> +		u32 pnode_id;
> +		void *va;
> +		dma_addr_t dma;
> +		resource_size_t size;
> +
> +		i = 0;
> +		of_property_for_each_u32(child, "pnode-id", prop, cur,
> +								pnode_id) {
> +			ret = eemi_ops->request_node(pnode_id,
> +						ZYNQMP_PM_CAPABILITY_ACCESS, 0,
> +						ZYNQMP_PM_REQUEST_ACK_BLOCKING);
> +			if (ret < 0) {
> +				dev_err(dev, "failed to request power node: %u\n",
> +						pnode_id);
> +				return ret;
> +			}
> +			ret = r5_set_mode(pdata);
> +			if (ret < 0) {
> +				dev_err(dev, "failed to set R5 operation mode.\n");
> +				return ret;
> +			}
> +		}
> +		size = resource_size(&rsc);
> +
> +		va = devm_ioremap_wc(dev, rsc.start, size);
> +		if (!va) {
> +			dev_err(dev, "unable to map va for TCM\n");
> +			return -EINVAL;
> +		}
> +
> +		/* zero out tcm base address */
> +		if (rsc.start & TCM_BASE_ADDR) {
> +			rsc.start &= TCM_LOW_BITMASK; /*wipe low bits */
> +		/* handle tcm banks 1 a and b (0xffe9000 and oxffeb0000) */
> +				if (rsc.start & TCM_BANK1_BITMASK)
> +	/* wipe high bits as RPU only sees relative addr from 0x0 to 0x20000 */
> +					rsc.start -= TCM_BANK1_HIGHBIT_BITMASK;
> +		}

Indentation above looks wrong...

> +
> +		dma = (dma_addr_t)rsc.start;
> +		mem = rproc_mem_entry_init(dev, va, dma, (int)size, rsc.start,
> +						 NULL, zynqmp_r5_mem_release,
> +						 rsc.name);
> +		if (!mem)
> +			return NULL;

return -ENOMEM?

> +		rproc_add_carveout(rproc, mem);
> +	}
> +
> +	ret = rproc_elf_load_rsc_table(rproc, fw);
> +	if (ret == -EINVAL)
> +		ret = 0;
> +	return ret;
> +}
> +
> +/* kick a firmware */
> +static void zynqmp_r5_rproc_kick(struct rproc *rproc, int vqid)
> +{
> +	struct device *dev = rproc->dev.parent;
> +	struct zynqmp_r5_pdata *local = rproc->priv;
> +
> +	dev_dbg(dev, "KICK Firmware to start send messages vqid %d\n", vqid);
> +
> +	if (vqid < 0) {
> +		/* If vqid is negative, does not pass the vqid to
> +		 * mailbox. As vqid is supposed to be 0 or possive.
> +		 * It also gives a way to just kick instead but
> +		 * not use the IPI buffer. It is better to provide
> +		 * a proper way to pass the short message, which will
> +		 * need to sync to upstream first, for now,
> +		 * use negative vqid to assume no message will be
> +		 * passed with IPI buffer, but just raise interrupt.
> +		 * This will be faster as it doesn't need to copy the
> +		 * message to the IPI buffer.
> +		 *
> +		 * It will ignore the return, as failure is due to
> +		 * there already kicks in the mailbox queue.
> +		 */
> +		(void)mbox_send_message(local->tx_chan, NULL);
> +	} else {
> +		struct sk_buff *skb;
> +		unsigned int skb_len;
> +		struct zynqmp_ipi_message *mb_msg;
> +		int ret;
> +
> +		skb_len = (unsigned int)(sizeof(vqid) + sizeof(mb_msg));
> +		skb = alloc_skb(skb_len, GFP_ATOMIC);
> +		if (!skb) {
> +			dev_err(dev,
> +				"Failed to allocate skb to kick remote.\n");
> +			return;
> +		}
> +		mb_msg = (struct zynqmp_ipi_message *)skb_put(skb, skb_len);
> +		mb_msg->len = sizeof(vqid);
> +		memcpy(mb_msg->data, &vqid, sizeof(vqid));
> +		skb_queue_tail(&local->tx_mc_skbs, skb);
> +		ret = mbox_send_message(local->tx_chan, mb_msg);
> +		if (ret < 0) {
> +			dev_warn(dev, "Failed to kick remote.\n");
> +			skb_dequeue_tail(&local->tx_mc_skbs);
> +			kfree_skb(skb);
> +		}
> +	}
> +}
> +
> +static struct rproc_ops zynqmp_r5_rproc_ops = {
> +	.start		= zynqmp_r5_rproc_start,
> +	.stop		= zynqmp_r5_rproc_stop,
> +	.load		= rproc_elf_load_segments,
> +	.parse_fw	= zynqmp_r5_parse_fw,
> +	.find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table,
> +	.sanity_check	= rproc_elf_sanity_check,
> +	.get_boot_addr	= rproc_elf_get_boot_addr,
> +	.kick		= zynqmp_r5_rproc_kick,
> +};
> +
> +/* zynqmp_r5_mem_probe() - probes RPU TCM memory device
> + * @pdata: pointer to the RPU remoteproc private data
> + * @node: pointer to the memory node
> + *
> + * Function to retrieve memories resources for RPU TCM memory device.
> + */
> +static int zynqmp_r5_mem_probe(struct zynqmp_r5_pdata *pdata,
> +			       struct device_node *node)
> +{
> +	struct device *dev;
> +	struct zynqmp_r5_mem *mem;
> +	int ret;
> +
> +	dev = &pdata->dev;
> +	mem = devm_kzalloc(dev, sizeof(*mem), GFP_KERNEL);
> +	if (!mem)
> +		return -ENOMEM;
> +	ret = of_address_to_resource(node, 0, &mem->res);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to get resource of memory %s",
> +			of_node_full_name(node));

Use %pOF instead?

> +		return -EINVAL;
> +	}
> +
> +	/* Get the power domain id */
> +	if (of_find_property(node, "pnode-id", NULL)) {
> +		struct property *prop;
> +		const __be32 *cur;
> +		u32 val;
> +		int i = 0;
> +
> +		of_property_for_each_u32(node, "pnode-id", prop, cur, val)
> +			mem->pnode_id[i++] = val;
> +	}
> +	list_add_tail(&mem->node, &pdata->mems);
> +	return 0;
> +}
> +
> +/**
> + * zynqmp_r5_release() - ZynqMP R5 device release function
> + * @dev: pointer to the device struct of ZynqMP R5
> + *
> + * Function to release ZynqMP R5 device.
> + */
> +static void zynqmp_r5_release(struct device *dev)
> +{
> +	struct zynqmp_r5_pdata *pdata;
> +	struct rproc *rproc;
> +	struct sk_buff *skb;
> +
> +	pdata = dev_get_drvdata(dev);
> +	rproc = pdata->rproc;
> +	if (rproc) {
> +		rproc_del(rproc);
> +		rproc_free(rproc);
> +	}
> +	if (pdata->tx_chan)
> +		mbox_free_channel(pdata->tx_chan);
> +	if (pdata->rx_chan)
> +		mbox_free_channel(pdata->rx_chan);
> +	/* Discard all SKBs */
> +	while (!skb_queue_empty(&pdata->tx_mc_skbs)) {
> +		skb = skb_dequeue(&pdata->tx_mc_skbs);
> +		kfree_skb(skb);
> +	}
> +
> +	put_device(dev->parent);
> +}
> +
> +/**
> + * event_notified_idr_cb() - event notified idr callback
> + * @id: idr id
> + * @ptr: pointer to idr private data
> + * @data: data passed to idr_for_each callback
> + *
> + * Pass notification to remtoeproc virtio
> + *
> + * Return: 0. having return is to satisfy the idr_for_each() function
> + *          pointer input argument requirement.
> + **/
> +static int event_notified_idr_cb(int id, void *ptr, void *data)
> +{
> +	struct rproc *rproc = data;
> +
> +	(void)rproc_vq_interrupt(rproc, id);
> +	return 0;
> +}
> +
> +/**
> + * handle_event_notified() - remoteproc notification work funciton
> + * @work: pointer to the work structure
> + *
> + * It checks each registered remoteproc notify IDs.
> + */
> +static void handle_event_notified(struct work_struct *work)
> +{
> +	struct rproc *rproc;
> +	struct zynqmp_r5_pdata *local;
> +
> +	local = container_of(work, struct zynqmp_r5_pdata, workqueue);
> +
> +	(void)mbox_send_message(local->rx_chan, NULL);
> +	rproc = local->rproc;
> +
> +	/*
> +	 * We only use IPI for interrupt. The firmware side may or may
> +	 * not write the notifyid when it trigger IPI.
> +	 * And thus, we scan through all the registered notifyids.
> +	 */
> +	idr_for_each(&rproc->notifyids, event_notified_idr_cb, rproc);
> +}
> +
> +/**
> + * zynqmp_r5_mb_rx_cb() - Receive channel mailbox callback
> + * @cl: mailbox client
> + * @mssg: message pointer
> + *
> + * It will schedule the R5 notification work.
> + */
> +static void zynqmp_r5_mb_rx_cb(struct mbox_client *cl, void *mssg)
> +{
> +	struct zynqmp_r5_pdata *local;
> +
> +	local = container_of(cl, struct zynqmp_r5_pdata, rx_mc);
> +	if (mssg) {
> +		struct zynqmp_ipi_message *ipi_msg, *buf_msg;
> +		size_t len;
> +
> +		ipi_msg = (struct zynqmp_ipi_message *)mssg;
> +		buf_msg = (struct zynqmp_ipi_message *)local->rx_mc_buf;
> +		len = (ipi_msg->len >= IPI_BUF_LEN_MAX) ?
> +		      IPI_BUF_LEN_MAX : ipi_msg->len;
> +		buf_msg->len = len;
> +		memcpy(buf_msg->data, ipi_msg->data, len);
> +	}
> +	schedule_work(&local->workqueue);
> +}
> +
> +/**
> + * zynqmp_r5_mb_tx_done() - Request has been sent to the remote
> + * @cl: mailbox client
> + * @mssg: pointer to the message which has been sent
> + * @r: status of last TX - OK or error
> + *
> + * It will be called by the mailbox framework when the last TX has done.
> + */
> +static void zynqmp_r5_mb_tx_done(struct mbox_client *cl, void *mssg, int r)
> +{
> +	struct zynqmp_r5_pdata *local;
> +	struct sk_buff *skb;
> +
> +	if (!mssg)
> +		return;
> +	local = container_of(cl, struct zynqmp_r5_pdata, tx_mc);
> +	skb = skb_dequeue(&local->tx_mc_skbs);
> +	kfree_skb(skb);
> +}
> +
> +/**
> + * zynqmp_r5_setup_mbox() - Setup mailboxes
> + *
> + * @pdata: pointer to the ZynqMP R5 processor platform data
> + * @node: pointer of the device node
> + *
> + * Function to setup mailboxes to talk to RPU.
> + *
> + * Return: 0 for success, negative value for failure.
> + */
> +static int zynqmp_r5_setup_mbox(struct zynqmp_r5_pdata *pdata)
> +{
> +	struct device *dev = &pdata->dev;
> +	struct mbox_client *mclient;
> +
> +	/* Setup TX mailbox channel client */
> +	mclient = &pdata->tx_mc;
> +	mclient->dev = dev;
> +	mclient->rx_callback = NULL;
> +	mclient->tx_block = false;
> +	mclient->knows_txdone = false;
> +	mclient->tx_done = zynqmp_r5_mb_tx_done;
> +
> +	/* Setup TX mailbox channel client */
> +	mclient = &pdata->rx_mc;
> +	mclient->dev = dev;
> +	mclient->rx_callback = zynqmp_r5_mb_rx_cb;
> +	mclient->tx_block = false;
> +	mclient->knows_txdone = false;
> +
> +	INIT_WORK(&pdata->workqueue, handle_event_notified);
> +
> +	/* Request TX and RX channels */
> +	pdata->tx_chan = mbox_request_channel_byname(&pdata->tx_mc, "tx");
> +	if (IS_ERR(pdata->tx_chan)) {
> +		dev_err(dev, "failed to request mbox tx channel.\n");
> +		pdata->tx_chan = NULL;
> +		return -EINVAL;
> +	}
> +	pdata->rx_chan = mbox_request_channel_byname(&pdata->rx_mc, "rx");
> +	if (IS_ERR(pdata->rx_chan)) {
> +		dev_err(dev, "failed to request mbox rx channel.\n");
> +		pdata->rx_chan = NULL;
> +		return -EINVAL;
> +	}
> +	skb_queue_head_init(&pdata->tx_mc_skbs);
> +	return 0;
> +}
> +
> +/**
> + * zynqmp_r5_probe() - Probes ZynqMP R5 processor device node
> + * @pdata: pointer to the ZynqMP R5 processor platform data
> + * @pdev: parent RPU domain platform device
> + * @node: pointer of the device node
> + *
> + * Function to retrieve the information of the ZynqMP R5 device node.
> + *
> + * Return: 0 for success, negative value for failure.
> + */
> +static int zynqmp_r5_probe(struct zynqmp_r5_pdata *pdata,
> +			   struct platform_device *pdev,
> +			   struct device_node *node)
> +{
> +	struct device *dev = &pdata->dev;
> +	struct rproc *rproc;
> +	struct device_node *nc;
> +	int ret;
> +
> +	/* Create device for ZynqMP R5 device */
> +	dev->parent = &pdev->dev;
> +	dev->release = zynqmp_r5_release;
> +	dev->of_node = node;
> +	dev_set_name(dev, "%s", of_node_full_name(node));
> +	dev_set_drvdata(dev, pdata);
> +	ret = device_register(dev);
> +	if (ret) {
> +		dev_err(dev, "failed to register device.\n");
> +		return ret;
> +	}
> +	get_device(&pdev->dev);
> +
> +	/* Allocate remoteproc instance */
> +	rproc = rproc_alloc(dev, dev_name(dev), &zynqmp_r5_rproc_ops, NULL, 0);
> +	if (!rproc) {.
> +		dev_err(dev, "rproc allocation failed.\n");
> +		ret = -ENOMEM;
> +		goto error;
> +	}
> +	rproc->auto_boot = autoboot;
> +	pdata->rproc = rproc;
> +	rproc->priv = pdata;
> +
> +	/*
> +	 * The device has not been spawned from a device tree, so
> +	 * arch_setup_dma_ops has not been not called, thus leaving
> +	 * the device with dummy DMA ops.
> +	 * Fix this by inheriting the parent's DMA ops and mask.
> +	 */
> +	rproc->dev.dma_mask = pdev->dev.dma_mask;
> +	set_dma_ops(&rproc->dev, get_dma_ops(&pdev->dev));
> +
> +	/* Probe R5 memory devices */
> +	INIT_LIST_HEAD(&pdata->mems);
> +	for_each_available_child_of_node(node, nc) {
> +		ret = zynqmp_r5_mem_probe(pdata, nc);
> +		if (ret) {
> +			dev_err(dev, "failed to probe memory %s.\n",
> +				of_node_full_name(nc));

Use %pOF instead?

> +			goto error;
> +		}
> +	}
> +
> +	/* Set up DMA mask */
> +	ret = dma_set_coherent_mask(dev, DMA_BIT_MASK(32));
> +	if (ret) {
> +		dev_warn(dev, "dma_set_coherent_mask failed: %d\n", ret);
> +		/* If DMA is not configured yet, try to configure it. */
> +		ret = of_dma_configure(dev, node, true);
> +		if (ret) {
> +			dev_err(dev, "failed to configure DMA.\n");
> +			goto error;
> +		}
> +	}
> +
> +	/* Get R5 power domain node */
> +	ret = of_property_read_u32(node, "pnode-id", &pdata->pnode_id);
> +	if (ret) {
> +		dev_err(dev, "failed to get power node id.\n");
> +		goto error;
> +	}
> +
> +	/* Check if R5 is running */
> +	if (r5_is_running(pdata)) {
> +		atomic_inc(&rproc->power);
> +		rproc->state = RPROC_RUNNING;
> +	}
> +
> +	if (!of_get_property(dev->of_node, "mboxes", NULL)) {
> +		dev_info(dev, "no mailboxes.\n");
> +	} else {
> +		ret = zynqmp_r5_setup_mbox(pdata);
> +		if (ret < 0)
> +			goto error;
> +	}
> +
> +	/* Add R5 remoteproc */
> +	ret = rproc_add(rproc);
> +	if (ret) {
> +		dev_err(dev, "rproc registration failed\n");
> +		goto error;
> +	}
> +
> +	return 0;
> +error:
> +	if (pdata->rproc)
> +		rproc_free(pdata->rproc);
> +	pdata->rproc = NULL;
> +	device_unregister(dev);
> +	put_device(&pdev->dev);
> +	return ret;
> +}
> +
> +static int zynqmp_r5_remoteproc_probe(struct platform_device *pdev)
> +{
> +	const unsigned char *prop;
> +	int ret = 0, i;
> +	struct zynqmp_rpu_domain_pdata *local;
> +	struct device *dev = &pdev->dev;
> +	struct device_node *nc;
> +
> +	eemi_ops = zynqmp_pm_get_eemi_ops();
> +	if (IS_ERR(eemi_ops))
> +		return PTR_ERR(eemi_ops);
> +
> +	local = devm_kzalloc(dev, sizeof(*local), GFP_KERNEL);
> +	if (!local)
> +		return -ENOMEM;
> +	platform_set_drvdata(pdev, local);
> +
> +	prop = of_get_property(dev->of_node, "core_conf", NULL);
> +	if (!prop) {
> +		dev_err(&pdev->dev, "core_conf is not used.\n");
> +		return -EINVAL;
> +	}
> +
> +	dev_info(dev, "RPU core_conf: %s\n", prop);
> +	if (!strcmp(prop, "split")) {
> +		local->rpu_mode = PM_RPU_MODE_SPLIT;
> +	} else if (!strcmp(prop, "lockstep")) {
> +		local->rpu_mode = PM_RPU_MODE_LOCKSTEP;
> +	} else {
> +		dev_err(dev,
> +			"Invalid core_conf mode provided - %s , %d\n",
> +			prop, (int)local->rpu_mode);

local->rpu_mode will always be 0 here, so it doesn't seem worthwhile to
trace it.

> +		return -EINVAL;
> +	}
> +
> +	i = 0;
> +	for_each_available_child_of_node(dev->of_node, nc) {
> +		if (i > 1) {
> +			dev_err(dev, "Max number allowed RPUs described is 2.\n");
> +			return -EINVAL;
> +		}
> +		local->rpus[i].parent = local;
> +		ret = zynqmp_r5_probe(&local->rpus[i], pdev, nc);
> +		if (ret) {
> +			dev_err(dev, "failed to probe rpu %s.\n",
> +				of_node_full_name(nc));

Use %pOF instead?

> +			return ret;
> +		}
> +		i++;
> +	}
> +
> +	return 0;
> +}
> +
> +static int zynqmp_r5_remoteproc_remove(struct platform_device *pdev)
> +{
> +	struct zynqmp_rpu_domain_pdata *local = platform_get_drvdata(pdev);
> +	int i;
> +
> +	for (i = 0; i < MAX_RPROCS; i++) {
> +		struct zynqmp_r5_pdata *rpu = &local->rpus[i];
> +		struct rproc *rproc;
> +
> +		rproc = rpu->rproc;
> +		if (rproc) {
> +			rproc_del(rproc);
> +			rproc_free(rproc);
> +			rpu->rproc = NULL;
> +		}
> +		if (rpu->tx_chan) {
> +			mbox_free_channel(rpu->tx_chan);
> +			rpu->tx_chan = NULL;
> +		}
> +		if (rpu->rx_chan) {
> +			mbox_free_channel(rpu->rx_chan);
> +			rpu->rx_chan = NULL;
> +		}
> +
> +		device_unregister(&rpu->dev);
> +	}
> +
> +	return 0;
> +}
> +
> +/* Match table for OF platform binding */
> +static const struct of_device_id zynqmp_r5_remoteproc_match[] = {
> +	{ .compatible = "xlnx,zynqmp-r5-remoteproc-1.0", },
> +	{ /* end of list */ },
> +};
> +MODULE_DEVICE_TABLE(of, zynqmp_r5_remoteproc_match);
> +
> +static struct platform_driver zynqmp_r5_remoteproc_driver = {
> +	.probe = zynqmp_r5_remoteproc_probe,
> +	.remove = zynqmp_r5_remoteproc_remove,
> +	.driver = {
> +		.name = "zynqmp_r5_remoteproc",
> +		.of_match_table = zynqmp_r5_remoteproc_match,
> +	},
> +};
> +module_platform_driver(zynqmp_r5_remoteproc_driver);
> +
> +module_param_named(autoboot,  autoboot, bool, 0444);
> +MODULE_PARM_DESC(autoboot,
> +		 "enable | disable autoboot. (default: true)");
> +
> +MODULE_AUTHOR("Jason Wu <j.wu@xilinx.com>");
> +MODULE_LICENSE("GPL v2");
> +MODULE_DESCRIPTION("ZynqMP R5 remote processor control driver");
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
