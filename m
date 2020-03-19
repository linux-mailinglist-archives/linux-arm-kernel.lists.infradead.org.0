Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E52718BACA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:17:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/cwHosT1ee6V1tO3OCw5vNNbOi8pF/aL/FxmH6Lwzo=; b=O3IkAoM8Qxu42d
	TyETVFB71EKMiQclAL/bSGgWV6g3N3Nj6wn5Fxdy4T3j2AYPV7Ky1UDzdzTN+SdcKh9QlUXekHyTT
	3vFi8a6rGmrAdBGvAclcyH3iQfhiK2EfY0MoS1cSMApw2B1TGDEzRTOss9HNCV/VyOyvlpPM0cx+j
	KFQHb27vz2+VZz7cxBwOXnxHfjaKpM6kGxUuhJ6nkdwWl0CdTi/f98W7VX0VcbRfWdtybX1T5pAMm
	vOzDeZ4YjTC/T7Jz5bxCQxcyWxL0MfDtmDq4y/6yQB/JQzQkjKYubIz9dsOknrzJu4Vc9/eFjyCE2
	lJZhn6aDixzeYRGyswQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEwus-0006R3-A8; Thu, 19 Mar 2020 15:17:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEwug-0006QD-US
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 15:16:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D57BE30E;
 Thu, 19 Mar 2020 08:16:49 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 157663F52E;
 Thu, 19 Mar 2020 08:16:48 -0700 (PDT)
Date: Thu, 19 Mar 2020 15:16:47 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Tuan Phan <tuanphan@os.amperecomputing.com>
Subject: Re: [PATCH] driver/perf: Add PMU driver for the ARM DMC-620 memory
 controller.
Message-ID: <20200319151646.GC4876@lakrids.cambridge.arm.com>
References: <1584491381-31492-1-git-send-email-tuanphan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584491381-31492-1-git-send-email-tuanphan@os.amperecomputing.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_081651_071695_542694E0 
X-CRM114-Status: GOOD (  26.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: paches@amperecomputing.com, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tuan,

On Tue, Mar 17, 2020 at 05:29:38PM -0700, Tuan Phan wrote:
> DMC-620 PMU supports total 10 counters which each is
> independently programmable to different events and can
> be started and stopped individually.

Looking at the TRM for DMC-620, the PMU registers are not in a separate
frame from the other DMC control registers, and start at offset 0xA00
(AKA 2560). I would generally expect that access to the DMC control
registers was restricted to the secure world; is that not the case on
your platform?

I ask because if those are not restricted, the Normal world could
potentially undermine the Secure world through this (e.g. playing with
training settings, messing with the physical memory map, injecting RAS
errors). Have you considered this?

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

[...]

> +#define DMC620_CNT_MAX_PERIOD				0xffffffff
> +#define DMC620_PMU_CLKDIV2_MAX_COUNTERS			8
> +#define DMC620_PMU_CLK_MAX_COUNTERS			2
> +#define DMC620_PMU_MAX_COUNTERS				\
> +	(DMC620_PMU_CLKDIV2_MAX_COUNTERS + DMC620_PMU_CLK_MAX_COUNTERS)
> +
> +#define DMC620_PMU_OVERFLOW_STATUS_CLKDIV2_OFFSET	8

This appears to be relative to 0xA00. What exactly does your ACPI
description provide? The whole set of DMC registers, or just the PMU
registers?

[...]

> +struct arm_dmc620_pmu {
> +	struct pmu		pmu;
> +	struct platform_device	*pdev;
> +
> +	void __iomem		*pmu_csr;

Please call this `base` for consistency with other Arm Ltd PMU drivers.

[...]

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

This isn't right for event groups, which need to start/stop all
associated events atomically. Do we have PMU-wide start/stop controls
that we can wrap the entire loop with, instead?



> +
> +	if (overflow_clkdiv2)
> +		writel(0, dmc620_pmu->pmu_csr +
> +			DMC620_PMU_OVERFLOW_STATUS_CLKDIV2_OFFSET);
> +	if (overflow_clk)
> +		writel(0, dmc620_pmu->pmu_csr +
> +			DMC620_PMU_OVERFLOW_STATUS_CLK_OFFSET);

IIUC we can race and miss an overflow here. If we don't have separate
clear registers, we definitely need to stop all events in the handler,
then check/clear their overflow bits, then re-enable all events.

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

The IRQ handler doesn't respect group semantics at the moment. If we
don't have global start/stop controls, we must disallow groups.

[...]

> +static int arm_dmc620_pmu_add(struct perf_event *event, int flags)
> +{
> +	struct arm_dmc620_pmu *dmc620_pmu = to_dmc620_pmu(event->pmu);
> +	struct hw_perf_event *hwc = &event->hw;
> +	struct perf_event_attr *attr = &event->attr;
> +	unsigned long reg;
> +	int idx = 0;
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
> +	/* Write to mask 63-32 register */
> +	arm_dmc620_pmu_counter_write32(dmc620_pmu,
> +			  event->hw.idx, DMC620_PMU_COUNTER_MASK_63_32_OFFSET,
> +			  (unsigned int)(reg >> 32));

Please use the upper_32_bits() and lower_32_bits() helpers.

> +
> +	/* Write to match 31-00 register */
> +	reg = ATTR_CFG_GET_FLD(attr, match);
> +	arm_dmc620_pmu_counter_write32(dmc620_pmu,
> +			  event->hw.idx, DMC620_PMU_COUNTER_MATCH_31_00_OFFSET,
> +			  (unsigned int)(reg & 0xffffffff));
> +	/* Write to match 63-32 register */
> +	arm_dmc620_pmu_counter_write32(dmc620_pmu,
> +			  event->hw.idx, DMC620_PMU_COUNTER_MATCH_63_32_OFFSET,
> +			  (unsigned int)(reg >> 32));

Likewise.

[...]

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

Is there any guarantee `value` is unique?

> +
> +	return perf_pmu_register(&dmc620_pmu->pmu, name, -1);
> +}

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
> +	if (cpumask_empty(&dmc620_pmu->cpu))
> +		cpumask_set_cpu(cpu, &dmc620_pmu->cpu);
> +
> +	/* Overflow interrupt also should use the same CPU */
> +	WARN_ON(irq_set_affinity(dmc620_pmu->irq, &dmc620_pmu->cpu));

We should only have to set the affinity if that changes, so above we can
do:

	if (!cpumask_empty(&dmc620_pmu->cpu))
		return 0;

[...]

> +static int arm_dmc620_pmu_dev_init(struct arm_dmc620_pmu *dmc620_pmu)
> +{
> +	struct platform_device *pdev = dmc620_pmu->pdev;
> +	int ret;
> +
> +	ret = devm_request_irq(&pdev->dev, dmc620_pmu->irq,
> +				arm_dmc620_pmu_handle_irq,
> +				IRQF_SHARED,
> +				dev_name(&pdev->dev), dmc620_pmu);

This should have IRQF_NOBALANCING | IRQF_NO_THREAD. I don't think we
should have IRQF_SHARED.

[...]

> +static const struct acpi_device_id arm_dmc620_acpi_match[] = {
> +	{ "ARMHD620", 0},
> +	{},
> +};

Just to check, was this ID allocated by Arm, or have you allocated it?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
