Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA7818A020
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 17:02:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8rC+z35AJwLOwTwCM4+ZApOx8BxeWkAxW6s07pPmN0=; b=jjUkpuZbyKxrkX
	l6OOVJVPU9xGjo8kjLEpe9aAYepl4OiE7OvsZS8L7BAASpz/6juctBYKLijORVv8jm76hpZTb42gB
	g+bcn5+II8BNzXb4W2IGxUZzDo/t9SCaiyyp4yIM4zHCon1BdZDXwl3aJlpkFl5ziAL8wfnukp6bn
	O+NNLP5UzL5aWO0dxIst3pG4/mhRctYJAqQ88vATM7xKTwyZMWgpyaZgILuybp1xEE6klRFZ4XL3A
	88BEpY+VtRDppJkNLx1LfIxSpT8Oi1QrYAbsS5xlP29pIj7bf/x7NYUTPKmW7sKKayjy+raN0Mwm0
	rVHCJYFcV6OMFA/2wu1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEb9Q-0000fD-NE; Wed, 18 Mar 2020 16:02:36 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEb9B-0000de-V4
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 16:02:25 +0000
Received: from lhreml707-cah.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 9BE3C736434364949372;
 Wed, 18 Mar 2020 16:02:08 +0000 (GMT)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 lhreml707-cah.china.huawei.com (10.201.108.48) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 18 Mar 2020 16:02:08 +0000
Received: from localhost (10.47.89.143) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 18 Mar
 2020 16:02:07 +0000
Date: Wed, 18 Mar 2020 16:02:02 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Tuan Phan <tuanphan@os.amperecomputing.com>
Subject: Re: [PATCH] driver/perf: Add PMU driver for the ARM DMC-620 memory
 controller.
Message-ID: <20200318160202.0000032c@Huawei.com>
In-Reply-To: <1584491381-31492-1-git-send-email-tuanphan@os.amperecomputing.com>
References: <1584491381-31492-1-git-send-email-tuanphan@os.amperecomputing.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.47.89.143]
X-ClientProxiedBy: lhreml716-chm.china.huawei.com (10.201.108.67) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_090222_313345_D2711CAC 
X-CRM114-Status: GOOD (  23.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, paches@amperecomputing.com, Will
 Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 17 Mar 2020 17:29:38 -0700
Tuan Phan <tuanphan@os.amperecomputing.com> wrote:

> DMC-620 PMU supports total 10 counters which each is
> independently programmable to different events and can
> be started and stopped individually.
> 
> DMC-620 PMU devices are named as arm_dmc620_<uid> where
> <uid> is the UID of DMC-620 PMU ACPI node. Currently, it only
> supports ACPI. Other platforms feel free to test and add
> support for device tree.
> 
> Usage example:
>   #perf stat -e arm_dmc620_0/clk_cycle_count/ -C 0
>   Get perf event for clk_cycle_count counter.
> 
>   #perf stat -e arm_dmc620_0/clkdiv2_allocate,mask=0x1f,match=0x2f,
>   incr=2,invert=1/ -C 0
>   The above example shows how to specify mask, match, incr,
>   invert parameters for clkdiv2_allocate event.
> 
> Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>

Hi Tuan,

A few fairly superficial comments from me. I wrote a spiel against
the macro magic making this harder to read but then noticed it's
just cut and paste from SPE.  Oh well, I guess everyone to their
own taste.

Jonathan

> ---
>  drivers/perf/Kconfig          |   8 +
>  drivers/perf/Makefile         |   1 +
>  drivers/perf/arm_dmc620_pmu.c | 836 ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 845 insertions(+)
>  create mode 100644 drivers/perf/arm_dmc620_pmu.c
> 
> diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
> index 09ae8a9..8c5b5cf 100644
> --- a/drivers/perf/Kconfig
> +++ b/drivers/perf/Kconfig
> @@ -129,4 +129,12 @@ config ARM_SPE_PMU
>  	  Extension, which provides periodic sampling of operations in
>  	  the CPU pipeline and reports this via the perf AUX interface.
>  
> +config ARM_DMC620_PMU
> +	bool "Enable PMU support for the ARM DMC-620 memory controller"
> +	depends on ARM64 && ACPI
> +	default n
> +	help
> +	  Support for PMU events monitoring on the ARM DMC-620 memory
> +	  controller.
> +
>  endmenu
> diff --git a/drivers/perf/Makefile b/drivers/perf/Makefile
> index 2ebb4de..15a31ac 100644
> --- a/drivers/perf/Makefile
> +++ b/drivers/perf/Makefile
> @@ -12,3 +12,4 @@ obj-$(CONFIG_QCOM_L3_PMU) += qcom_l3_pmu.o
>  obj-$(CONFIG_THUNDERX2_PMU) += thunderx2_pmu.o
>  obj-$(CONFIG_XGENE_PMU) += xgene_pmu.o
>  obj-$(CONFIG_ARM_SPE_PMU) += arm_spe_pmu.o
> +obj-$(CONFIG_ARM_DMC_PMU) += arm_dmc_pmu.o
> \ No newline at end of file

fix that.

> diff --git a/drivers/perf/arm_dmc620_pmu.c b/drivers/perf/arm_dmc620_pmu.c
> new file mode 100644
> index 0000000..e222bdb
> --- /dev/null
> +++ b/drivers/perf/arm_dmc620_pmu.c
> @@ -0,0 +1,836 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * ARM DMC-620 memory controller PMU driver
> + *
> + * Copyright (C) 2020 Ampere Computing LLC.
> + */
> +
> +#define PMUNAME		"arm_dmc620"
> +#define DRVNAME		PMUNAME "_pmu"

These should have driver specific prefix.
DMC620_PMUNAME
DMC620_DRVNAME

> +#define pr_fmt(fmt)	DRVNAME ": " fmt
> +
> +#include <linux/acpi.h>
> +#include <linux/bitops.h>
> +#include <linux/cpuhotplug.h>
> +#include <linux/cpumask.h>
> +#include <linux/device.h>
> +#include <linux/errno.h>
> +#include <linux/interrupt.h>
> +#include <linux/irq.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/perf_event.h>
> +#include <linux/perf/arm_pmu.h>
> +#include <linux/platform_device.h>
> +#include <linux/printk.h>
> +
> +#define DMC620_CNT_MAX_PERIOD				0xffffffff
> +#define DMC620_PMU_CLKDIV2_MAX_COUNTERS			8
> +#define DMC620_PMU_CLK_MAX_COUNTERS			2
> +#define DMC620_PMU_MAX_COUNTERS				\
> +	(DMC620_PMU_CLKDIV2_MAX_COUNTERS + DMC620_PMU_CLK_MAX_COUNTERS)
> +
> +#define DMC620_PMU_OVERFLOW_STATUS_CLKDIV2_OFFSET	8
> +#define  DMC620_PMU_OVERFLOW_STATUS_CLKDIV2_MASK	\
> +		(DMC620_PMU_CLKDIV2_MAX_COUNTERS - 1)
> +#define DMC620_PMU_OVERFLOW_STATUS_CLK_OFFSET		12
> +#define  DMC620_PMU_OVERFLOW_STATUS_CLK_MASK		\
> +		(DMC620_PMU_CLK_MAX_COUNTERS - 1)
> +#define DMC620_PMU_COUNTERS_BASE_OFFSET			16
> +#define DMC620_PMU_COUNTER_MASK_31_00_OFFSET		0
> +#define DMC620_PMU_COUNTER_MASK_63_32_OFFSET		4
> +#define DMC620_PMU_COUNTER_MATCH_31_00_OFFSET		8
> +#define DMC620_PMU_COUNTER_MATCH_63_32_OFFSET		12
> +#define DMC620_PMU_COUNTER_CONTROL_OFFSET		16
> +#define  DMC620_PMU_COUNTER_CONTROL_ENABLE_MASK		BIT(0)
> +#define  DMC620_PMU_COUNTER_CONTROL_INVERT_SHIFT	1
> +#define  DMC620_PMU_COUNTER_CONTROL_EVENT_MUX		(((x)&0x1f)>>2)
> +#define  DMC620_PMU_COUNTER_CONTROL_EVENT_MUX_SHIFT	2
> +#define  DMC620_PMU_COUNTER_CONTROL_INCR		(((x)&0x1ff)>>7)
> +#define  DMC620_PMU_COUNTER_CONTROL_INCR_SHIFT		7
> +#define DMC620_PMU_COUNTER_SNAPSHOT_OFFSET		24
> +#define DMC620_PMU_COUNTER_VALUE_OFFSET			32
> +#define DMC620_PMU_COUNTER_REG_BYTE_LENGTH		40
> +
> +#define DMC620_PMU_CLKDIV2_CYCLE_COUNT			0x0
> +#define DMC620_PMU_CLKDIV2_ALLOCATE			0x1
> +#define DMC620_PMU_CLKDIV2_QUEUE_DEPTH			0x2
> +#define DMC620_PMU_CLKDIV2_WAITING_FOR_WR_DATA		0x3
> +#define DMC620_PMU_CLKDIV2_READ_BACKLOG			0x4
> +#define DMC620_PMU_CLKDIV2_WAITING_FOR_MI		0x5
> +#define DMC620_PMU_CLKDIV2_HAZARD_RESOLUTION		0x6
> +#define DMC620_PMU_CLKDIV2_ENQUEUE			0x7
> +#define DMC620_PMU_CLKDIV2_ARBITRATE			0x8
> +#define DMC620_PMU_CLKDIV2_LRANK_TURNAROUND_ACTIVATE	0x9
> +#define DMC620_PMU_CLKDIV2_PRANK_TURNAROUND_ACTIVATE	0xA
> +#define DMC620_PMU_CLKDIV2_READ_DEPTH			0xB
> +#define DMC620_PMU_CLKDIV2_WRITE_DEPTH			0xC
> +#define DMC620_PMU_CLKDIV2_HIGHHIGH_QOS_DEPTH		0xD
> +#define DMC620_PMU_CLKDIV2_HIGH_QOS_DEPTH		0xE
> +#define DMC620_PMU_CLKDIV2_MEDIUM_QOS_DEPTH		0xF
> +#define DMC620_PMU_CLKDIV2_LOW_QOS_DEPTH		0x10
> +#define DMC620_PMU_CLKDIV2_ACTIVATE			0x11
> +#define DMC620_PMU_CLKDIV2_RDWR				0x12
> +#define DMC620_PMU_CLKDIV2_REFRESH			0x13
> +#define DMC620_PMU_CLKDIV2_TRAINING_REQUEST		0x14
> +#define DMC620_PMU_CLKDIV2_T_MAC_TRACKER		0x15
> +#define DMC620_PMU_CLKDIV2_BK_FSM_TRACKER		0x16
> +#define DMC620_PMU_CLKDIV2_BK_OPEN_TRACKER		0x17
> +#define DMC620_PMU_CLKDIV2_RANKS_IN_PWR_DOWN		0x18
> +#define DMC620_PMU_CLKDIV2_RANKS_IN_SREF		0x19
> +
> +#define DMC620_PMU_CLK_CYCLE_COUNTER			0x20
> +#define DMC620_PMU_CLK_REQUEST				0x21
> +#define DMC620_PMU_CLK_UPLOAD_STALL			0x22
> +#define DMC620_PMU_CLK_INDICATE_MASK			0x20
> +
> +struct arm_dmc620_pmu {

Given we think dmc620 is enough of a prefix for all the defines,
why add arm here?  Quite a few of the functions have really long
names and dropping arm seems like a good start to me!

> +	struct pmu		pmu;
> +	struct platform_device	*pdev;
> +
> +	void __iomem		*pmu_csr;
> +	int			irq;
> +	cpumask_t		cpu;
> +	struct hlist_node	hotplug_node;
> +
> +	/*
> +	 * We put all clkdiv2 and clk counters to a same array.
> +	 * The first DMC620_PMU_CLKDIV2_MAX_COUNTERS bits belong to
> +	 * clkdiv2 counters, the last DMC620_PMU_CLK_MAX_COUNTERS
> +	 * belong to clk counters.
> +	 */
> +	DECLARE_BITMAP(used_mask, DMC620_PMU_MAX_COUNTERS);
> +	struct perf_event	*act_counter[DMC620_PMU_MAX_COUNTERS];
> +};
> +
> +#define to_dmc620_pmu(p) (container_of(p, struct arm_dmc620_pmu, pmu))
> +
> +/* Keep track of our dynamic hotplug state */
> +static enum cpuhp_state arm_dmc620_pmu_online;
> +
> +static ssize_t
> +dmc620_pmu_events_sysfs_show(struct device *dev,
> +			   struct device_attribute *attr, char *page)
> +{
> +	struct perf_pmu_events_attr *pmu_attr;
> +
> +	pmu_attr = container_of(attr, struct perf_pmu_events_attr, attr);
> +
> +	return sprintf(page, "event=0x%03llx\n", pmu_attr->id);
> +}
> +
> +#define DMC620_PMU_EVENT_ATTR(name, config)			\
> +	PMU_EVENT_ATTR(name, dmc620_pmu_event_attr_##name,	\
> +		       config, dmc620_pmu_events_sysfs_show)
> +
> +/* clkdiv2 events list */
> +DMC620_PMU_EVENT_ATTR(clkdiv2_cycle_count,
> +		DMC620_PMU_CLKDIV2_CYCLE_COUNT);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_allocate,
> +		DMC620_PMU_CLKDIV2_ALLOCATE);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_queue_depth,
> +		DMC620_PMU_CLKDIV2_QUEUE_DEPTH);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_waiting_for_wr_data,
> +		DMC620_PMU_CLKDIV2_WAITING_FOR_WR_DATA);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_read_backlog,
> +		DMC620_PMU_CLKDIV2_READ_BACKLOG);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_waiting_for_mi,
> +		DMC620_PMU_CLKDIV2_WAITING_FOR_MI);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_hazard_resolution,
> +		DMC620_PMU_CLKDIV2_HAZARD_RESOLUTION);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_enqueue,
> +		DMC620_PMU_CLKDIV2_ENQUEUE);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_arbitrate,
> +		DMC620_PMU_CLKDIV2_ARBITRATE);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_lrank_turnaround_activate,
> +		DMC620_PMU_CLKDIV2_LRANK_TURNAROUND_ACTIVATE);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_prank_turnaround_activate,
> +		DMC620_PMU_CLKDIV2_PRANK_TURNAROUND_ACTIVATE);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_read_depth,
> +		DMC620_PMU_CLKDIV2_READ_DEPTH);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_write_depth,
> +		DMC620_PMU_CLKDIV2_WRITE_DEPTH);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_highigh_qos_depth,
> +		DMC620_PMU_CLKDIV2_HIGHHIGH_QOS_DEPTH);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_high_qos_depth,
> +		DMC620_PMU_CLKDIV2_HIGH_QOS_DEPTH);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_medium_qos_depth,
> +		DMC620_PMU_CLKDIV2_MEDIUM_QOS_DEPTH);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_low_qos_depth,
> +		DMC620_PMU_CLKDIV2_LOW_QOS_DEPTH);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_activate,
> +		DMC620_PMU_CLKDIV2_ACTIVATE);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_rdwr,
> +		DMC620_PMU_CLKDIV2_RDWR);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_refresh,
> +		DMC620_PMU_CLKDIV2_REFRESH);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_training_request,
> +		DMC620_PMU_CLKDIV2_TRAINING_REQUEST);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_t_mac_tracker,
> +		DMC620_PMU_CLKDIV2_T_MAC_TRACKER);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_bk_fsm_tracker,
> +		DMC620_PMU_CLKDIV2_BK_FSM_TRACKER);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_bk_open_tracker,
> +		DMC620_PMU_CLKDIV2_BK_OPEN_TRACKER);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_ranks_in_pwr_down,
> +		DMC620_PMU_CLKDIV2_RANKS_IN_PWR_DOWN);
> +DMC620_PMU_EVENT_ATTR(clkdiv2_ranks_in_sref,
> +		DMC620_PMU_CLKDIV2_RANKS_IN_SREF);
> +
> +/* clk events list */
> +DMC620_PMU_EVENT_ATTR(clk_cycle_count,
> +		DMC620_PMU_CLK_CYCLE_COUNTER);
> +DMC620_PMU_EVENT_ATTR(clk_request,
> +		DMC620_PMU_CLK_REQUEST);
> +DMC620_PMU_EVENT_ATTR(clk_upload_stall,
> +		DMC620_PMU_CLK_UPLOAD_STALL);
> +
> +static struct attribute *arm_dmc620_pmu_events_attrs[] = {
> +	&dmc620_pmu_event_attr_clkdiv2_cycle_count.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_allocate.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_queue_depth.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_waiting_for_wr_data.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_read_backlog.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_waiting_for_mi.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_hazard_resolution.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_enqueue.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_arbitrate.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_lrank_turnaround_activate.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_prank_turnaround_activate.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_read_depth.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_write_depth.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_highigh_qos_depth.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_high_qos_depth.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_medium_qos_depth.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_low_qos_depth.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_activate.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_rdwr.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_refresh.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_training_request.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_t_mac_tracker.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_bk_fsm_tracker.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_bk_open_tracker.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_ranks_in_pwr_down.attr.attr,
> +	&dmc620_pmu_event_attr_clkdiv2_ranks_in_sref.attr.attr,
> +	&dmc620_pmu_event_attr_clk_cycle_count.attr.attr,
> +	&dmc620_pmu_event_attr_clk_request.attr.attr,
> +	&dmc620_pmu_event_attr_clk_upload_stall.attr.attr,
> +	NULL,
> +};
> +
> +static struct attribute_group arm_dmc620_pmu_events_attr_group = {
> +	.name = "events",
> +	.attrs = arm_dmc620_pmu_events_attrs,
> +};
> +
> +/* User ABI */
> +#define ATTR_CFG_FLD_mask_CFG		config
> +#define ATTR_CFG_FLD_mask_LO		0
> +#define ATTR_CFG_FLD_mask_HI		44
> +#define ATTR_CFG_FLD_match_CFG		config1
> +#define ATTR_CFG_FLD_match_LO		0
> +#define ATTR_CFG_FLD_match_HI		44
> +#define ATTR_CFG_FLD_invert_CFG		config2
> +#define ATTR_CFG_FLD_invert_LO		0
> +#define ATTR_CFG_FLD_invert_HI		0
> +#define ATTR_CFG_FLD_incr_CFG		config2
> +#define ATTR_CFG_FLD_incr_LO		1
> +#define ATTR_CFG_FLD_incr_HI		2
> +#define ATTR_CFG_FLD_event_CFG		config2
> +#define ATTR_CFG_FLD_event_LO		3
> +#define ATTR_CFG_FLD_event_HI		8
> +
> +#define __GEN_PMU_FORMAT_ATTR(cfg, lo, hi)			\
> +	(lo) == (hi) ? #cfg ":" #lo "\n" : #cfg ":" #lo "-" #hi
> +
> +#define _GEN_PMU_FORMAT_ATTR(cfg, lo, hi)			\
> +	__GEN_PMU_FORMAT_ATTR(cfg, lo, hi)
> +
> +#define GEN_PMU_FORMAT_ATTR(name)				\
> +	PMU_FORMAT_ATTR(name,					\
> +	_GEN_PMU_FORMAT_ATTR(ATTR_CFG_FLD_##name##_CFG,		\
> +			     ATTR_CFG_FLD_##name##_LO,		\
> +			     ATTR_CFG_FLD_##name##_HI))
> +
> +#define _ATTR_CFG_GET_FLD(attr, cfg, lo, hi)			\
> +	((((attr)->cfg) >> lo) & GENMASK(hi - lo, 0))

Hmm. I see this came form SPE pmu.

Personally I'd argue this makes the code harder to read than doing
most of it long hand.  Ah well.

> +
> +#define ATTR_CFG_GET_FLD(attr, name)				\
> +	_ATTR_CFG_GET_FLD(attr,					\
> +			  ATTR_CFG_FLD_##name##_CFG,		\
> +			  ATTR_CFG_FLD_##name##_LO,		\
> +			  ATTR_CFG_FLD_##name##_HI)
> +
> +GEN_PMU_FORMAT_ATTR(mask);
> +GEN_PMU_FORMAT_ATTR(match);
> +GEN_PMU_FORMAT_ATTR(invert);
> +GEN_PMU_FORMAT_ATTR(incr);
> +GEN_PMU_FORMAT_ATTR(event);
> +
> +static struct attribute *arm_dmc620_pmu_formats_attrs[] = {
> +	&format_attr_mask.attr,
> +	&format_attr_match.attr,
> +	&format_attr_invert.attr,
> +	&format_attr_incr.attr,
> +	&format_attr_event.attr,
> +	NULL,
> +};
> +
> +static struct attribute_group arm_dmc620_pmu_format_attr_group = {
> +	.name	= "format",
> +	.attrs	= arm_dmc620_pmu_formats_attrs,
> +};
> +
> +static const struct attribute_group *arm_dmc620_pmu_attr_groups[] = {
> +	&arm_dmc620_pmu_events_attr_group,
> +	&arm_dmc620_pmu_format_attr_group,
> +	NULL,
> +};
> +
> +static inline
> +unsigned int arm_dmc620_pmu_counter_read32(struct arm_dmc620_pmu *dmc620_pmu,
> +					  unsigned int idx,
> +					  unsigned int offset)
> +{
> +	return readl(dmc620_pmu->pmu_csr + DMC620_PMU_COUNTERS_BASE_OFFSET +
> +		(idx * DMC620_PMU_COUNTER_REG_BYTE_LENGTH + offset));
> +}
> +
> +static inline
> +void arm_dmc620_pmu_counter_write32(struct arm_dmc620_pmu *dmc620_pmu,
given we only have 32 bit read / write, could we drop that?

   void dmc620_pmu_counter_write

though that kind of sounds like we are just writing the counter.

   void dmc620_pmu_creg_write maybe?

> +					  unsigned int idx,
> +					  unsigned int offset,
> +					  unsigned int val)
> +{
> +	writel(val, dmc620_pmu->pmu_csr + DMC620_PMU_COUNTERS_BASE_OFFSET +
> +		(idx * DMC620_PMU_COUNTER_REG_BYTE_LENGTH + offset));
> +}
> +
> +static
> +unsigned int arm_dmc620_event_to_counter_control(struct perf_event *event)
> +{
> +	struct perf_event_attr *attr = &event->attr;
> +	unsigned int reg = 0;
> +
> +	reg |= ATTR_CFG_GET_FLD(attr, invert) <<
> +		DMC620_PMU_COUNTER_CONTROL_INVERT_SHIFT;
> +	reg |= ATTR_CFG_GET_FLD(attr, incr) <<
> +		DMC620_PMU_COUNTER_CONTROL_INCR_SHIFT;
> +	reg |= (ATTR_CFG_GET_FLD(attr, event) &
> +		~DMC620_PMU_CLK_INDICATE_MASK) <<
> +		DMC620_PMU_COUNTER_CONTROL_EVENT_MUX_SHIFT;
> +
> +	return reg;
> +}
> +
> +static int arm_dmc620_get_event_idx(struct perf_event *event)
> +{
> +	struct arm_dmc620_pmu *dmc620_pmu = to_dmc620_pmu(event->pmu);
> +	struct perf_event_attr *attr = &event->attr;
> +	int start_idx, end_idx;
> +	int idx;
> +
> +	if (ATTR_CFG_GET_FLD(attr, event) & DMC620_PMU_CLK_INDICATE_MASK) {
> +		/* clk events are selected */
> +		start_idx = DMC620_PMU_CLKDIV2_MAX_COUNTERS;
> +		end_idx = DMC620_PMU_MAX_COUNTERS;
> +	} else {
> +		start_idx = 0;
> +		end_idx = DMC620_PMU_CLKDIV2_MAX_COUNTERS;
> +	}
> +
> +	for (idx = start_idx; idx < end_idx; ++idx) {
> +		if (!test_and_set_bit(idx, dmc620_pmu->used_mask))
> +			return idx;
> +	}
> +
> +	/* The counters are all in use. */
> +	return -EAGAIN;
> +}
> +
> +static u64 arm_dmc620_pmu_read_counter(struct perf_event *event)
> +{
> +	struct arm_dmc620_pmu *dmc620_pmu = to_dmc620_pmu(event->pmu);
> +
> +	return (u64)arm_dmc620_pmu_counter_read32(dmc620_pmu,
> +			  event->hw.idx,
> +			  DMC620_PMU_COUNTER_VALUE_OFFSET);
> +}
> +
> +static void arm_dmc620_pmu_event_update(struct perf_event *event)
> +{
> +	struct hw_perf_event *hwc = &event->hw;
> +	u64 delta, prev_count, new_count;
> +
> +	do {
> +		/* We may also be called from the irq handler */
> +		prev_count = local64_read(&hwc->prev_count);
> +		new_count = arm_dmc620_pmu_read_counter(event);
> +	} while (local64_cmpxchg(&hwc->prev_count,
> +			prev_count, new_count) != prev_count);
> +	delta = (new_count - prev_count) & DMC620_CNT_MAX_PERIOD;
> +	local64_add(delta, &event->count);
> +}
> +
> +static void arm_dmc620_pmu_event_set_period(struct perf_event *event)
> +{
> +	struct arm_dmc620_pmu *dmc620_pmu = to_dmc620_pmu(event->pmu);
> +
> +	/*
> +	 * All DMC-620 PMU event counters are 32bit counters.
> +	 * To handle cases of extreme interrupt latency, we program
> +	 * the counter with half of the max count for the counters.
> +	 */
> +	u64 val = DMC620_CNT_MAX_PERIOD >> 1;
> +
> +	local64_set(&event->hw.prev_count, val);
> +	arm_dmc620_pmu_counter_write32(dmc620_pmu,
> +			  event->hw.idx, DMC620_PMU_COUNTER_VALUE_OFFSET,
> +			  val);
> +}
> +
> +static void arm_dmc620_pmu_enable_counter(struct perf_event *event)
> +{
> +	struct arm_dmc620_pmu *dmc620_pmu = to_dmc620_pmu(event->pmu);
> +	unsigned int reg;
> +
> +	reg = arm_dmc620_pmu_counter_read32(dmc620_pmu,
> +			  event->hw.idx, DMC620_PMU_COUNTER_CONTROL_OFFSET);
> +	reg |= DMC620_PMU_COUNTER_CONTROL_ENABLE_MASK;
> +	arm_dmc620_pmu_counter_write32(dmc620_pmu,
> +			  event->hw.idx, DMC620_PMU_COUNTER_CONTROL_OFFSET,
> +			  reg);
> +}
> +
> +static void arm_dmc620_pmu_disable_counter(struct perf_event *event)
> +{
> +	struct arm_dmc620_pmu *dmc620_pmu = to_dmc620_pmu(event->pmu);
> +	unsigned int reg;
> +
> +	reg = arm_dmc620_pmu_counter_read32(dmc620_pmu,
> +			  event->hw.idx, DMC620_PMU_COUNTER_CONTROL_OFFSET);
> +	reg &= ~DMC620_PMU_COUNTER_CONTROL_ENABLE_MASK;
> +	arm_dmc620_pmu_counter_write32(dmc620_pmu,
> +			  event->hw.idx, DMC620_PMU_COUNTER_CONTROL_OFFSET,
> +			  reg);
> +}
> +
> +static irqreturn_t arm_dmc620_pmu_handle_irq(int irq_num, void *dev)
> +{
> +	struct arm_dmc620_pmu *dmc620_pmu = dev;
> +	struct perf_event *event;
> +	bool handled = false;
> +	unsigned long overflow_clkdiv2, overflow_clk;
> +	int i;
> +
> +	overflow_clkdiv2 = readl(dmc620_pmu->pmu_csr +
> +				DMC620_PMU_OVERFLOW_STATUS_CLKDIV2_OFFSET);
> +	overflow_clk = readl(dmc620_pmu->pmu_csr +
> +				DMC620_PMU_OVERFLOW_STATUS_CLK_OFFSET);
> +	if (!overflow_clkdiv2 && !overflow_clk)
> +		return IRQ_NONE;
> +
> +	for_each_set_bit(i, &overflow_clkdiv2,
> +				DMC620_PMU_CLKDIV2_MAX_COUNTERS) {
> +		/* clkdiv2 event overflow */
> +		event = dmc620_pmu->act_counter[i];
> +		if (!event)
> +			continue;
> +		arm_dmc620_pmu_disable_counter(event);
> +		arm_dmc620_pmu_event_update(event);
> +		arm_dmc620_pmu_event_set_period(event);
> +		arm_dmc620_pmu_enable_counter(event);
> +		handled = true;
> +	}
> +
> +	for_each_set_bit(i, &overflow_clk,
> +				DMC620_PMU_CLK_MAX_COUNTERS) {
> +		/* clk event overflow */
> +		event = dmc620_pmu->act_counter[i +
> +			DMC620_PMU_CLKDIV2_MAX_COUNTERS];
> +		if (!event)
> +			continue;
> +		arm_dmc620_pmu_disable_counter(event);
> +		arm_dmc620_pmu_event_update(event);
> +		arm_dmc620_pmu_event_set_period(event);
> +		arm_dmc620_pmu_enable_counter(event);
> +		handled = true;
> +	}
> +
> +	if (overflow_clkdiv2)
> +		writel(0, dmc620_pmu->pmu_csr +
> +			DMC620_PMU_OVERFLOW_STATUS_CLKDIV2_OFFSET);
> +	if (overflow_clk)
> +		writel(0, dmc620_pmu->pmu_csr +
> +			DMC620_PMU_OVERFLOW_STATUS_CLK_OFFSET);
> +
> +	return IRQ_RETVAL(handled);
> +}
> +
> +static int arm_dmc620_pmu_event_init(struct perf_event *event)
> +{
> +	struct arm_dmc620_pmu *dmc620_pmu = to_dmc620_pmu(event->pmu);
> +	struct hw_perf_event *hwc = &event->hw;
> +	struct perf_event *sibling;
> +
> +	if (event->attr.type != event->pmu->type)
> +		return -ENOENT;
> +
> +	/*
> +	 * DMC 620 PMUs are shared across all cpus and cannot
> +	 * support task bound and sampling events.
> +	 */
> +	if (is_sampling_event(event) ||
> +		event->attach_state & PERF_ATTACH_TASK) {
> +		dev_dbg(dmc620_pmu->pmu.dev,
> +			"Can't support per-task counters\n");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	if (event->cpu < 0) {
> +		dev_dbg(dmc620_pmu->pmu.dev,
> +			"Per-task mode not supported\n");
> +		return -EOPNOTSUPP;
> +	}
> +	/*
> +	 * Many perf core operations (eg. events rotation) operate on a
> +	 * single CPU context. This is obvious for CPU PMUs, where one
> +	 * expects the same sets of events being observed on all CPUs,
> +	 * but can lead to issues for off-core PMUs, where each
> +	 * event could be theoretically assigned to a different CPU. To
> +	 * mitigate this, we enforce CPU assignment to one, selected
> +	 * processor.
> +	 */
> +	event->cpu = cpumask_first(&dmc620_pmu->cpu);
> +
> +	/*
> +	 * We must NOT create groups containing mixed PMUs, although software
> +	 * events are acceptable
> +	 */
> +	if (event->group_leader->pmu != event->pmu &&
> +			!is_software_event(event->group_leader))
> +		return -EINVAL;
> +
> +	for_each_sibling_event(sibling, event->group_leader) {
> +		if (sibling->pmu != event->pmu &&
> +				!is_software_event(sibling))
> +			return -EINVAL;
> +	}
> +
> +	hwc->idx = -1;
> +	return 0;
> +}
> +
> +static void arm_dmc620_pmu_read(struct perf_event *event)
> +{
> +	arm_dmc620_pmu_event_update(event);
> +}
> +
> +static void arm_dmc620_pmu_start(struct perf_event *event, int flags)
> +{
> +	struct arm_dmc620_pmu *dmc620_pmu = to_dmc620_pmu(event->pmu);
> +
> +	event->hw.state = 0;
> +	arm_dmc620_pmu_event_set_period(event);
> +
> +	if (flags & PERF_EF_RELOAD) {
> +		unsigned long prev_raw_count =
> +			local64_read(&event->hw.prev_count);
> +
> +		arm_dmc620_pmu_counter_write32(dmc620_pmu,
> +			  event->hw.idx, DMC620_PMU_COUNTER_VALUE_OFFSET,
> +			  (unsigned int)prev_raw_count);
> +	}
> +	arm_dmc620_pmu_enable_counter(event);
> +}
> +
> +static void arm_dmc620_pmu_stop(struct perf_event *event, int flags)
> +{
> +	if (event->hw.state & PERF_HES_STOPPED)
> +		return;
> +
> +	arm_dmc620_pmu_disable_counter(event);
> +	arm_dmc620_pmu_event_update(event);
> +	event->hw.state |= PERF_HES_STOPPED | PERF_HES_UPTODATE;
> +}
> +
> +static int arm_dmc620_pmu_add(struct perf_event *event, int flags)
> +{
> +	struct arm_dmc620_pmu *dmc620_pmu = to_dmc620_pmu(event->pmu);
> +	struct hw_perf_event *hwc = &event->hw;
> +	struct perf_event_attr *attr = &event->attr;
> +	unsigned long reg;
> +	int idx = 0;

No point in assigning to 0.

> +
> +	idx = arm_dmc620_get_event_idx(event);
> +	if (idx < 0)
> +		return idx;
> +
> +	hwc->idx = idx;
> +	dmc620_pmu->act_counter[idx] = event;
> +	hwc->state = PERF_HES_STOPPED | PERF_HES_UPTODATE;
> +
> +	/* Write to mask 31-00 register */
> +	reg = ATTR_CFG_GET_FLD(attr, mask);
> +	arm_dmc620_pmu_counter_write32(dmc620_pmu,
> +			  event->hw.idx, DMC620_PMU_COUNTER_MASK_31_00_OFFSET,
> +			  (unsigned int)(reg & 0xffffffff));

lower_32_bits makes it explicit what is going on.

> +	/* Write to mask 63-32 register */
> +	arm_dmc620_pmu_counter_write32(dmc620_pmu,
> +			  event->hw.idx, DMC620_PMU_COUNTER_MASK_63_32_OFFSET,
> +			  (unsigned int)(reg >> 32));

upper_32_bits

> +
> +	/* Write to match 31-00 register */

The code for all these makes it clear what is being written.
I wouldn't leave comments around that might get out of sync if
they don't add information.

> +	reg = ATTR_CFG_GET_FLD(attr, match);
> +	arm_dmc620_pmu_counter_write32(dmc620_pmu,
> +			  event->hw.idx, DMC620_PMU_COUNTER_MATCH_31_00_OFFSET,
> +			  (unsigned int)(reg & 0xffffffff));
> +	/* Write to match 63-32 register */
> +	arm_dmc620_pmu_counter_write32(dmc620_pmu,
> +			  event->hw.idx, DMC620_PMU_COUNTER_MATCH_63_32_OFFSET,
> +			  (unsigned int)(reg >> 32));
> +
> +	/* Write to control register */
> +	reg = arm_dmc620_event_to_counter_control(event);
> +	arm_dmc620_pmu_counter_write32(dmc620_pmu,
> +			  event->hw.idx, DMC620_PMU_COUNTER_CONTROL_OFFSET,
> +			  (unsigned int)reg);
> +
> +	if (flags & PERF_EF_START)
> +		arm_dmc620_pmu_start(event, PERF_EF_RELOAD);
> +
> +	perf_event_update_userpage(event);
> +	return 0;
> +}
> +
> +static void arm_dmc620_pmu_del(struct perf_event *event, int flags)
> +{
> +	struct arm_dmc620_pmu *dmc620_pmu = to_dmc620_pmu(event->pmu);
> +	struct hw_perf_event *hwc = &event->hw;
> +	int idx = hwc->idx;
> +
> +	arm_dmc620_pmu_stop(event, PERF_EF_UPDATE);
> +	dmc620_pmu->act_counter[idx] = NULL;
> +	clear_bit(idx, dmc620_pmu->used_mask);
> +	perf_event_update_userpage(event);
> +}
> +
> +static int arm_dmc620_pmu_perf_init(struct arm_dmc620_pmu *dmc620_pmu)
> +{
> +	struct device *dev = &dmc620_pmu->pdev->dev;
> +	unsigned long long value;
> +	char *name;
> +	acpi_handle handle;
> +	acpi_status status;
> +
> +	dmc620_pmu->pmu = (struct pmu) {
> +		.capabilities	= PERF_PMU_CAP_NO_EXCLUDE,
> +		.task_ctx_nr	= perf_invalid_context,
> +		.event_init	= arm_dmc620_pmu_event_init,
> +		.add		= arm_dmc620_pmu_add,
> +		.del		= arm_dmc620_pmu_del,
> +		.start		= arm_dmc620_pmu_start,
> +		.stop		= arm_dmc620_pmu_stop,
> +		.read		= arm_dmc620_pmu_read,
> +		.attr_groups	= arm_dmc620_pmu_attr_groups,
> +	};
> +
> +	handle = ACPI_HANDLE(dev);
> +	if (!handle)
> +		return -ENODEV;
> +
> +	status = acpi_evaluate_integer(handle, METHOD_NAME__UID, NULL,
> +					&value);
> +	if (ACPI_FAILURE(status)) {
> +		dev_err(dev, "Failed to evaluate _UID (0x%x)\n", status);
> +		return -ENODEV;
> +	}
> +
> +	name = devm_kasprintf(dev, GFP_KERNEL, "%s_%d", PMUNAME,
> +				(unsigned int)value);

The cast implies something odd is going on.  what do you loose by just making
the format string "%s_%llu"?

Hmm. This is resulting in mixture of devm and hand unwound elements.  Perhaps
consider devm_add_action_or_reset to tidy that up by making everything managed.

Obviously it's fine here, but I had to check and I'm lazy (as are most
reviewers :)

> +
> +	return perf_pmu_register(&dmc620_pmu->pmu, name, -1);
> +}
> +
> +static void arm_dmc620_pmu_perf_destroy(struct arm_dmc620_pmu *dmc620_pmu)
> +{
> +	perf_pmu_unregister(&dmc620_pmu->pmu);
> +}
> +
> +static int arm_dmc620_pmu_cpu_startup(unsigned int cpu,
> +				   struct hlist_node *node)
> +{
> +	struct arm_dmc620_pmu *dmc620_pmu = hlist_entry_safe(node,
> +						struct arm_dmc620_pmu,
> +						hotplug_node);
> +
> +	dmc620_pmu = hlist_entry_safe(node, struct arm_dmc620_pmu,
> +					hotplug_node);

?  What is the point in the two lines above?

> +	if (cpumask_empty(&dmc620_pmu->cpu))
> +		cpumask_set_cpu(cpu, &dmc620_pmu->cpu);
> +
> +	/* Overflow interrupt also should use the same CPU */
> +	WARN_ON(irq_set_affinity(dmc620_pmu->irq, &dmc620_pmu->cpu));
> +
> +	return 0;
> +}
> +
> +static int arm_dmc620_pmu_cpu_teardown(unsigned int cpu,
> +				   struct hlist_node *node)
> +{
> +	struct arm_dmc620_pmu *dmc620_pmu = hlist_entry_safe(node,
> +						struct arm_dmc620_pmu,
> +						hotplug_node);
> +	unsigned int target;
> +
> +	if (!cpumask_test_and_clear_cpu(cpu, &dmc620_pmu->cpu))
> +		return 0;
> +
> +	target = cpumask_any_but(cpu_online_mask, cpu);
> +	if (target >= nr_cpu_ids)
> +		return 0;
> +
> +	cpumask_set_cpu(target, &dmc620_pmu->cpu);
> +
> +	/* Overflow interrupt also should use the same CPU */
> +	WARN_ON(irq_set_affinity(dmc620_pmu->irq, &dmc620_pmu->cpu));
> +
> +	return 0;
> +}
> +
> +static int arm_dmc620_pmu_dev_init(struct arm_dmc620_pmu *dmc620_pmu)
> +{
> +	struct platform_device *pdev = dmc620_pmu->pdev;
> +	int ret;

This feels like a wrapper function that doesn't really bring much to the
table.  I'd just call the functions directly in the probe.

> +
> +	ret = devm_request_irq(&pdev->dev, dmc620_pmu->irq,
> +				arm_dmc620_pmu_handle_irq,
> +				IRQF_SHARED,
> +				dev_name(&pdev->dev), dmc620_pmu);
> +	if (ret)
> +		dev_err(&pdev->dev,
> +			"Could not request IRQ %d\n", dmc620_pmu->irq);
> +
> +	/*
> +	 * Register our hotplug notifier now so we don't miss any events.
> +	 */
> +	return cpuhp_state_add_instance(arm_dmc620_pmu_online,
> +				       &dmc620_pmu->hotplug_node);
> +}
> +
> +static void arm_dmc620_pmu_dev_teardown(struct arm_dmc620_pmu *dmc620_pmu)
> +{
> +	cpuhp_state_remove_instance(arm_dmc620_pmu_online,
> +					&dmc620_pmu->hotplug_node);
> +}
> +
> +static int arm_dmc620_pmu_resource_probe(struct arm_dmc620_pmu *dmc620_pmu)
> +{
> +	struct platform_device *pdev = dmc620_pmu->pdev;
> +	struct resource *res;
> +	int irq;
> +
> +	irq = platform_get_irq(pdev, 0);
> +	if (irq < 0) {
> +		dev_err(&pdev->dev, "failed to get IRQ (%d)\n", irq);
> +		return -ENXIO;

Given platform_get_irq returns an error code if negative, should report
that on directly rather than ENXIO.

> +	}
> +	dmc620_pmu->irq = irq;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	dmc620_pmu->pmu_csr = devm_ioremap_resource(&pdev->dev, res);

devm_platform_ioremap_resource (combines the above 2 in to one call)

> +	if (IS_ERR(dmc620_pmu->pmu_csr)) {
> +		dev_err(&pdev->dev,
> +			"ioremap failed for DMC-620 PMU resource\n");
> +		return -ENXIO;

return PTR_ERR(dcm620_pmu->pmu_csr);

> +	}
> +
> +	return 0;
> +}
> +
> +static int arm_dmc620_pmu_device_probe(struct platform_device *pdev)
> +{
> +	struct arm_dmc620_pmu *dmc620_pmu;
> +	struct device *dev = &pdev->dev;
> +	int ret;
> +
> +	dmc620_pmu = devm_kzalloc(dev, sizeof(*dmc620_pmu), GFP_KERNEL);
> +	if (!dmc620_pmu)
> +		return -ENOMEM;
> +
> +	dmc620_pmu->pdev = pdev;
> +	platform_set_drvdata(pdev, dmc620_pmu);
> +
> +	ret = arm_dmc620_pmu_resource_probe(dmc620_pmu);
> +	if (ret)
> +		return ret;
> +
> +	ret = arm_dmc620_pmu_dev_init(dmc620_pmu);
> +	if (ret)
> +		return ret;
> +
> +	ret = arm_dmc620_pmu_perf_init(dmc620_pmu);

> +	if (ret)
> +		goto out_teardown_dev;
> +
> +	return 0;
> +
> +out_teardown_dev:
> +	arm_dmc620_pmu_dev_teardown(dmc620_pmu);
> +	return ret;
> +}
> +
> +static int arm_dmc620_pmu_device_remove(struct platform_device *pdev)
> +{
> +	struct arm_dmc620_pmu *dmc620_pmu = platform_get_drvdata(pdev);
> +
> +	arm_dmc620_pmu_perf_destroy(dmc620_pmu);
> +	arm_dmc620_pmu_dev_teardown(dmc620_pmu);
> +	return 0;
> +}
> +
> +static const struct acpi_device_id arm_dmc620_acpi_match[] = {
> +	{ "ARMHD620", 0},
> +	{},
> +};
> +MODULE_DEVICE_TABLE(acpi, arm_dmc620_acpi_match);
> +static struct platform_driver arm_dmc620_pmu_driver = {
> +	.driver	= {
> +		.name		= DRVNAME,
> +		.acpi_match_table = ACPI_PTR(arm_dmc620_acpi_match),
> +	},
> +	.probe	= arm_dmc620_pmu_device_probe,
> +	.remove	= arm_dmc620_pmu_device_remove,
> +};
> +
> +static int __init arm_dmc620_pmu_init(void)
> +{
> +	int ret;
> +
> +	ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN, DRVNAME,
> +				      arm_dmc620_pmu_cpu_startup,
> +				      arm_dmc620_pmu_cpu_teardown);
> +	if (ret < 0)
> +		return ret;
> +
> +	arm_dmc620_pmu_online = ret;
> +
> +	ret = platform_driver_register(&arm_dmc620_pmu_driver);
> +	if (ret)
> +		cpuhp_remove_multi_state(arm_dmc620_pmu_online);
> +
> +	return ret;
> +}
> +
> +static void __exit arm_dmc620_pmu_exit(void)
> +{
> +	platform_driver_unregister(&arm_dmc620_pmu_driver);
> +	cpuhp_remove_multi_state(arm_dmc620_pmu_online);
> +}
> +
> +module_init(arm_dmc620_pmu_init);
> +module_exit(arm_dmc620_pmu_exit);
> +
> +MODULE_DESCRIPTION("Perf driver for the ARM DMC-620 memory controller");
> +MODULE_AUTHOR("Tuan Phan <tuanphan@os.amperecomputing.com");
> +MODULE_LICENSE("GPL v2");



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
