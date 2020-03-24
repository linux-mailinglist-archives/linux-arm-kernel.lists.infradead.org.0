Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D5A190B4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 11:41:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hpSOY1xr0GX4tioeDFfcjd0iNUMoGEtn7ltE6iwwgJk=; b=YKRayQVHt71plv
	qLp5bc0KSSEuI719JnwVXHi7hMMcp2JtBHayrvybQau8lCEydakIomaCy+1rNpLzjRrq8fbK2ZzgC
	IAEfNGYxWzHQ4+t0qyYHuYMmKAlAw/qJFlhC+9fN7iM+1W5wLAEhwDkF6Wdmg03LOJx0g6lvqMdEe
	Dik7NLV6xs8IZ8vfQy0kCdpNfiOu6dyBlqHu/Csq1llT+2FJGuzbDtOJjfZpdXWc8I4DH5GyFhgxS
	W2EwcSt/JmbzScLCEvYOK8obenvB1Wct3nnf3Lx3L7pRMBzWvIPAVUPJJn1+Kb6r9jNyxcfLT4LVM
	uCYxfNZGTG6/vZjctoLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGh05-0006rt-KI; Tue, 24 Mar 2020 10:41:37 +0000
Received: from mail-eopbgr20074.outbound.protection.outlook.com ([40.107.2.74]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGgzv-0006rQ-A6
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 10:41:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OJc2oUBrr75Czcmj2o3Hl5fGUtVFiyQeJa90PtR8PgJkhPW310ogHarmFTH4K8oV/D8jZMkypgWFsHa+XCSCs1uGvTrVV/fJ2P9c5M+4WKT8+RxcdElgywx4rKonlaIh9OwPUj7vj+a/4o2/hstdVWAwpDcSYrxDbQGoI/Bd1w07s9aUWD+cXBBgNUSeWvPdh4/v5n2lz11/04OD/Mva+qiTrWlC4XD3LAQYGWA4DEEkSV5CF5eJSjF4Dd5Az4n0GMdhGkGbS0CjXb0YdRm14/2oXYINhlI2iHsim1P6JoS8Pt8YIEsUZ7zK8iSmcdSc+Pj1JXH9SEiH81ZFKTMeGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=APYAhm1+VJ2My/14/vl579MwcTGtW2UorebbtaELmBI=;
 b=NHQ1Q/1gi5nTB9e+RU47Ltp7RHIOEKkgWoQ11XsvwQqSm1LdI6c+88EHNwkZtg8Sx+EPwjfjJc84mYAJ3gz7yjbY8VQCENnb/sfp1IFto8/dItiIq7PH3DDJiHEPwK6QEPsGrGXRh/wsIgzEUGpgqwVVQpgNwhIVKl9xCw+ex9HdQ2+V7qukhfiOUr4e7ZplOM4UfALedCRUnUnXZthyIYTyBaAcZUTx+H1ng7/6IaQm+0E27XdqtXDu8Yuri8HAYIA45fSZkjMJsxYRVcamWAkL9PC0gHy5cwDzxonbbbdREgORe+vzBNJT3DePYhqh/ieILokC+Q7O3w5Y9x9cPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=APYAhm1+VJ2My/14/vl579MwcTGtW2UorebbtaELmBI=;
 b=M7vSiyVt49XbcyVF9m2dTKNeWIbVO6WV8baf4wn5LpQ7NB4aRHFZn9obbqS/bKeuQl4RkyXKrQITb3pGxoWvbCqRMI1pDhwExGNBVNlo/YfWPwAXdR54qu5tlFjZragJmEtXKde2WwfVZI7wWDz69XSp6KeamxlKvWucIg9s9uw=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com (20.179.2.147) by
 AM6PR04MB6504.eurprd04.prod.outlook.com (20.179.246.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.22; Tue, 24 Mar 2020 10:25:44 +0000
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e]) by AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e%5]) with mapi id 15.20.2835.023; Tue, 24 Mar 2020
 10:25:44 +0000
Subject: Re: [PATCH 7/9] vfio/fsl-mc: Add irq infrastructure for fsl-mc devices
To: Diana Craciun <diana.craciun@oss.nxp.com>, kvm@vger.kernel.org,
 alex.williamson@redhat.com, linux-arm-kernel@lists.infradead.org,
 bharatb.yadav@gmail.com
References: <20200323171911.27178-1-diana.craciun@oss.nxp.com>
 <20200323171911.27178-8-diana.craciun@oss.nxp.com>
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Message-ID: <733a0bed-5011-248d-73dc-94af2ffe7b78@nxp.com>
Date: Tue, 24 Mar 2020 12:25:42 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
In-Reply-To: <20200323171911.27178-8-diana.craciun@oss.nxp.com>
Content-Language: en-GB
X-ClientProxiedBy: AM4PR05CA0033.eurprd05.prod.outlook.com (2603:10a6:205::46)
 To AM6PR04MB5925.eurprd04.prod.outlook.com
 (2603:10a6:20b:ab::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.107] (86.121.54.4) by
 AM4PR05CA0033.eurprd05.prod.outlook.com (2603:10a6:205::46) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.20 via Frontend Transport; Tue, 24 Mar 2020 10:25:44 +0000
X-Originating-IP: [86.121.54.4]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: cb3863aa-73de-435b-ec73-08d7cfddb5fe
X-MS-TrafficTypeDiagnostic: AM6PR04MB6504:|AM6PR04MB6504:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB6504F155AF6A67DA74D33844ECF10@AM6PR04MB6504.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 03524FBD26
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(39860400002)(376002)(396003)(36756003)(956004)(81166006)(316002)(8936002)(81156014)(8676002)(4326008)(26005)(16576012)(16526019)(2906002)(186003)(2616005)(44832011)(86362001)(31696002)(478600001)(66556008)(53546011)(52116002)(5660300002)(6486002)(31686004)(66476007)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB6504;
 H:AM6PR04MB5925.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: c0q4t56qyb1hWmwM4uHQwrGp5H6GIWkbzx64zIt+T1K0VI1UVHlHSwe06t3eoj9wxivBbS0LpeTzwzO9swIBjyG1jjI55WCmGmftf7ae7wYfjiRx9/v3ZLOjtrHZeOP99OgvjbzZgIND8uxhsMzYDmqnOvXCrGbkKQa6A6MH7g19hqANs4DHClM9Qsw6y1yFsLFdMpbltj6a3bYGsSEFp5FFaf2CDWJjqf+/bJOsqVwUddpdmHSDYAuNCKTMSHAo0dbghBnoDokAq4CMhYWszusVmmyw/tIYwuD1pOlQmCrq2+/u8zNgBdR3IFBswKzranT8PsS1Z5gHGPfvfwh7oSgLK5/4LSspbzkpoWWXZQ9B8yY4jLey+zW4wjfXIVVYY79gwVaepyT0ELcfp3rBaSU+rvswWQx9SnlzGfH1N+/KsfurPRnJaZ6jt54fcWCx
X-MS-Exchange-AntiSpam-MessageData: iNvGrIXZrYFn6c9R4aQNzrJzkRFDEbdcLm5S2U52KV8jHJUxfdZ8qmN82e5U/mLQ/C+0FBS4Spoq90ULpnMXc4NteLJn8WQqCkxpMJbOkiENGEBfSnq5k6YsFxmILU1tVinSDN7DCU+rNMRx8vllFg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb3863aa-73de-435b-ec73-08d7cfddb5fe
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2020 10:25:44.7637 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2BI1TMphgc0L0pKMp/HpN3rnL+cbK5zZ72CwjZlzTtYJ7O3rMb36FeqrnnIUWu5x3VXiVpQ4cnKHrsOSDGAgXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6504
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_034127_350255_696760AC 
X-CRM114-Status: GOOD (  22.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bharat Bhushan <Bharat.Bhushan@nxp.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/23/2020 7:19 PM, Diana Craciun wrote:
> This patch adds the skeleton for interrupt support
> for fsl-mc devices. The interrupts are not yet functional,
> the functionality will be added by subsequent patches.
> 
> Signed-off-by: Bharat Bhushan <Bharat.Bhushan@nxp.com>
> Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
> ---
>  drivers/vfio/fsl-mc/Makefile              |  6 +-
>  drivers/vfio/fsl-mc/vfio_fsl_mc.c         | 71 ++++++++++++++++++++++-
>  drivers/vfio/fsl-mc/vfio_fsl_mc_intr.c    | 63 ++++++++++++++++++++
>  drivers/vfio/fsl-mc/vfio_fsl_mc_private.h |  5 ++
>  4 files changed, 141 insertions(+), 4 deletions(-)
>  create mode 100644 drivers/vfio/fsl-mc/vfio_fsl_mc_intr.c
> 
> diff --git a/drivers/vfio/fsl-mc/Makefile b/drivers/vfio/fsl-mc/Makefile
> index 6f2b80645d5b..cad6dbf0b735 100644
> --- a/drivers/vfio/fsl-mc/Makefile
> +++ b/drivers/vfio/fsl-mc/Makefile
> @@ -1,2 +1,4 @@
> -vfio-fsl_mc-y := vfio_fsl_mc.o
> -obj-$(CONFIG_VFIO_FSL_MC) += vfio_fsl_mc.o
> +# SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)

nit: maybe the license should go in the first patch where the Makefile
gets created?

---
Best Regards, Laurentiu

> +
> +vfio-fsl-mc-y := vfio_fsl_mc.o vfio_fsl_mc_intr.o
> +obj-$(CONFIG_VFIO_FSL_MC) += vfio-fsl-mc.o
> diff --git a/drivers/vfio/fsl-mc/vfio_fsl_mc.c b/drivers/vfio/fsl-mc/vfio_fsl_mc.c
> index ea5e81e7791c..4d7baee2e474 100644
> --- a/drivers/vfio/fsl-mc/vfio_fsl_mc.c
> +++ b/drivers/vfio/fsl-mc/vfio_fsl_mc.c
> @@ -210,11 +210,75 @@ static long vfio_fsl_mc_ioctl(void *device_data, unsigned int cmd,
>  	}
>  	case VFIO_DEVICE_GET_IRQ_INFO:
>  	{
> -		return -EINVAL;
> +		struct vfio_irq_info info;
> +
> +		minsz = offsetofend(struct vfio_irq_info, count);
> +		if (copy_from_user(&info, (void __user *)arg, minsz))
> +			return -EFAULT;
> +
> +		if (info.argsz < minsz)
> +			return -EINVAL;
> +
> +		if (info.index >= mc_dev->obj_desc.irq_count)
> +			return -EINVAL;
> +
> +		info.flags = VFIO_IRQ_INFO_EVENTFD;
> +		info.count = 1;
> +
> +		return copy_to_user((void __user *)arg, &info, minsz);
>  	}
>  	case VFIO_DEVICE_SET_IRQS:
>  	{
> -		return -EINVAL;
> +		struct vfio_irq_set hdr;
> +		u8 *data = NULL;
> +		int ret = 0;
> +
> +		minsz = offsetofend(struct vfio_irq_set, count);
> +
> +		if (copy_from_user(&hdr, (void __user *)arg, minsz))
> +			return -EFAULT;
> +
> +		if (hdr.argsz < minsz)
> +			return -EINVAL;
> +
> +		if (hdr.index >= mc_dev->obj_desc.irq_count)
> +			return -EINVAL;
> +
> +		if (hdr.start != 0 || hdr.count > 1)
> +			return -EINVAL;
> +
> +		if (hdr.count == 0 &&
> +		    (!(hdr.flags & VFIO_IRQ_SET_DATA_NONE) ||
> +		    !(hdr.flags & VFIO_IRQ_SET_ACTION_TRIGGER)))
> +			return -EINVAL;
> +
> +		if (hdr.flags & ~(VFIO_IRQ_SET_DATA_TYPE_MASK |
> +				  VFIO_IRQ_SET_ACTION_TYPE_MASK))
> +			return -EINVAL;
> +
> +		if (!(hdr.flags & VFIO_IRQ_SET_DATA_NONE)) {
> +			size_t size;
> +
> +			if (hdr.flags & VFIO_IRQ_SET_DATA_BOOL)
> +				size = sizeof(uint8_t);
> +			else if (hdr.flags & VFIO_IRQ_SET_DATA_EVENTFD)
> +				size = sizeof(int32_t);
> +			else
> +				return -EINVAL;
> +
> +			if (hdr.argsz - minsz < hdr.count * size)
> +				return -EINVAL;
> +
> +			data = memdup_user((void __user *)(arg + minsz),
> +					   hdr.count * size);
> +			if (IS_ERR(data))
> +				return PTR_ERR(data);
> +		}
> +
> +		ret = vfio_fsl_mc_set_irqs_ioctl(vdev, hdr.flags,
> +						 hdr.index, hdr.start,
> +						 hdr.count, data);
> +		return ret;
>  	}
>  	case VFIO_DEVICE_RESET:
>  	{
> @@ -303,6 +367,9 @@ static int vfio_fsl_mc_init_device(struct vfio_fsl_mc_device *vdev)
>  	struct fsl_mc_device *mc_dev = vdev->mc_dev;
>  	int ret = 0;
>  
> +	/* innherit the msi domain from parent */
> +	dev_set_msi_domain(&mc_dev->dev, dev_get_msi_domain(mc_dev->dev.parent));
> +
>  	/* Non-dprc devices share mc_io from parent */
>  	if (!is_fsl_mc_bus_dprc(mc_dev)) {
>  		struct fsl_mc_device *mc_cont = to_fsl_mc_device(mc_dev->dev.parent);
> diff --git a/drivers/vfio/fsl-mc/vfio_fsl_mc_intr.c b/drivers/vfio/fsl-mc/vfio_fsl_mc_intr.c
> new file mode 100644
> index 000000000000..058aa97aa54a
> --- /dev/null
> +++ b/drivers/vfio/fsl-mc/vfio_fsl_mc_intr.c
> @@ -0,0 +1,63 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright 2013-2016 Freescale Semiconductor Inc.
> + * Copyright 2019 NXP
> + */
> +
> +#include <linux/vfio.h>
> +#include <linux/slab.h>
> +#include <linux/types.h>
> +#include <linux/eventfd.h>
> +#include <linux/msi.h>
> +
> +#include "linux/fsl/mc.h"
> +#include "vfio_fsl_mc_private.h"
> +
> +static int vfio_fsl_mc_irq_mask(struct vfio_fsl_mc_device *vdev,
> +				unsigned int index, unsigned int start,
> +				unsigned int count, u32 flags,
> +				void *data)
> +{
> +	return -EINVAL;
> +}
> +
> +static int vfio_fsl_mc_irq_unmask(struct vfio_fsl_mc_device *vdev,
> +				unsigned int index, unsigned int start,
> +				unsigned int count, u32 flags,
> +				void *data)
> +{
> +	return -EINVAL;
> +}
> +
> +static int vfio_fsl_mc_set_irq_trigger(struct vfio_fsl_mc_device *vdev,
> +				       unsigned int index, unsigned int start,
> +				       unsigned int count, u32 flags,
> +				       void *data)
> +{
> +	return -EINVAL;
> +}
> +
> +int vfio_fsl_mc_set_irqs_ioctl(struct vfio_fsl_mc_device *vdev,
> +			       u32 flags, unsigned int index,
> +			       unsigned int start, unsigned int count,
> +			       void *data)
> +{
> +	int ret = -ENOTTY;
> +
> +	switch (flags & VFIO_IRQ_SET_ACTION_TYPE_MASK) {
> +	case VFIO_IRQ_SET_ACTION_MASK:
> +		ret = vfio_fsl_mc_irq_mask(vdev, index, start, count,
> +					   flags, data);
> +		break;
> +	case VFIO_IRQ_SET_ACTION_UNMASK:
> +		ret = vfio_fsl_mc_irq_unmask(vdev, index, start, count,
> +					     flags, data);
> +		break;
> +	case VFIO_IRQ_SET_ACTION_TRIGGER:
> +		ret = vfio_fsl_mc_set_irq_trigger(vdev, index, start,
> +						  count, flags, data);
> +		break;
> +	}
> +
> +	return ret;
> +}
> diff --git a/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h b/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
> index d072cccd93e0..0c7506e43880 100644
> --- a/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
> +++ b/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
> @@ -37,4 +37,9 @@ struct vfio_fsl_mc_device {
>  	struct vfio_fsl_mc_reflck   *reflck;
>  };
>  
> +extern int vfio_fsl_mc_set_irqs_ioctl(struct vfio_fsl_mc_device *vdev,
> +			       u32 flags, unsigned int index,
> +			       unsigned int start, unsigned int count,
> +			       void *data);
> +
>  #endif /* VFIO_PCI_PRIVATE_H */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
