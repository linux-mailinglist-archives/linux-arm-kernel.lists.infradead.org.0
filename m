Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B0610004
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 20:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jSugQ2GUP3XmBfSgXnNE5WokX+29LPMKZ3wFj201m7Q=; b=gyqYhOcxy/D5f2
	NwqUh1cjAn97S5qnefNeNGwApOCnjBSNv2wYS0lxyrOyVjWmQ7a5+OFgo1D8OanrGaxdlb345ngcg
	y2wx3fDmcGDyzGrfcdLN5ku2JgwNFKxLIqLr7g2f1VSBK3rZas/8LQXOw3fyZxInF8UQ7TSUeOC9P
	7t0pcMxH44wv40Q4W28zBEM0rlL38J+Tl7KPxEJkr9VmdUqcod//uSZlG9rUYxc7meM3fQ05luxu1
	0YVTP+0+0i4AwohBuOmAL1LKAZlEyEI2uRPIz1zldLsZS4PFP0XLq3HYWAyQNQiEUIRDKosH3Rsf8
	RHcq4lEvG2a5OXfpY7kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLXyb-0005TX-QP; Tue, 30 Apr 2019 18:59:37 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLXyT-0005SW-CB
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 18:59:31 +0000
Received: by mail-pg1-x542.google.com with SMTP id t22so4256151pgi.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 11:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bJLgaQ5g1L7d7GVhCOI4OATEmiK54Ep5uFhWikI6sps=;
 b=JMubHhvY2ceqiJsITNf1OWWs3NepxctZcOTpUdr5TfeofRF62U3OA50E5LQ2cI//hq
 igByA47j8OxrQyHI7yxpI+L3g9ztH4wR5JxIDLRyy9JhrRddphUK4JTUm4ZF3/eSjTjK
 KgSOYzsfOAJkvWojthuDp13EIW4WWwfqq+g6fOMzk1MEurGzkBv/MaWiQ8cUhNsUpSoq
 w5eqvy0Nok8WArlQwPsjdFAJ4uwcyUImOZMsRDUsmHhC8nJshyNjdNi8rYed0K1AZExe
 93+I21gEgqi5XkU0FCSD/K7bHBj2r6FvKMzj3/cdRxDrcJWnFQ8iJFO5411q2UuFfLtY
 VJgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bJLgaQ5g1L7d7GVhCOI4OATEmiK54Ep5uFhWikI6sps=;
 b=mKa63ANbTbzlv5JvLkUp7p4mktXz/E/srpHvkD+N/BKPeWozEcBpWx1roHwE9iIje3
 yhft2nlMWRlNqtsLslSkVPW4ifzuta/d70XoVRCXrwfMkgGQce/0s6Bmvk1yMDVEITXW
 1GzNxAQ3IWZo2SmlchfguWQu/zQpURJxrGzDYkjFx/hRRENVC3S/MGanUUFBQ/10/Fzs
 1hGlrvdkb5qLFd4srIP2Hl7zomuuTMQDGT+witjCsqAz+UuaKDeZ7rJ7C8UFy5faP0qT
 0r8j5wMO6efyf4+uIedem0tywIgTNi9tgoN7AxL51cImz3aN6m5D1a6OENWYG8kkYXhB
 npeQ==
X-Gm-Message-State: APjAAAWtccH+FDvu88GIXBXivhFdu12ym7powVT5YvLyq7PxKniTpgFm
 1Rmr//Ixbj9ELSr3saKsWhk=
X-Google-Smtp-Source: APXvYqwtuO4Sd5ZOMeG88NabdsjhGqMuHzspbmsdeB5u+6oU8boLa5xf7L4F/Gtv7aQSzpQWXPwTuA==
X-Received: by 2002:a63:40c2:: with SMTP id
 n185mr34325945pga.364.1556650767199; 
 Tue, 30 Apr 2019 11:59:27 -0700 (PDT)
Received: from squirtle.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id s7sm21993902pfb.38.2019.04.30.11.59.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Apr 2019 11:59:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: frank.li@nxp.com
Subject: Re: [PATCH V9 2/4] drivers/perf: imx_ddr: Add ddr performance counter
Date: Tue, 30 Apr 2019 11:59:03 -0700
Message-Id: <20190430185903.30661-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1556556252-22868-2-git-send-email-Frank.Li@nxp.com>
References: <1556556252-22868-2-git-send-email-Frank.Li@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_115929_449815_76902E1A 
X-CRM114-Status: GOOD (  26.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org,
 Andrey Smirnov <andrew.smirnov@gmail.com>, shawnguo@kernel.org,
 s.hauer@pengutronix.de, will.deacon@arm.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, lznuaa@gmail.com,
 mark.rutland@arm.com, festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Add ddr performance monitor support for iMX8QXP

> There are 4 counters for ddr perfomance events.
> counter 0 is dedicated for cycles.
> you choose any up to 3 no cycles events.

> for example:

> perf stat -a -e ddr0/read-cycles/,ddr0/write-cycles/,ddr0/precharge/ ls
> perf stat -a -e ddr0/cycles/,ddr0/read-access/,ddr0/write-access/ ls

> Support below events.

>   ddr0/activate/                                     [Kernel PMU event]
>   ddr0/axid-read/                                    [Kernel PMU event]
>   ddr0/axid-write/                                   [Kernel PMU event]
>   ddr0/cycles/                                       [Kernel PMU event]
>   ddr0/hp-read-credit-cnt/                           [Kernel PMU event]
>   ddr0/hp-read/                                      [Kernel PMU event]
>   ddr0/hp-req-nodcredit/                             [Kernel PMU event]
>   ddr0/hp-xact-credit/                               [Kernel PMU event]
>   ddr0/load-mode/                                    [Kernel PMU event]
>   ddr0/lp-read-credit-cnt/                           [Kernel PMU event]
>   ddr0/lp-req-nocredit/                              [Kernel PMU event]
>   ddr0/lp-xact-credit/                               [Kernel PMU event]
>   ddr0/mwr/                                          [Kernel PMU event]
>   ddr0/precharge/                                    [Kernel PMU event]
>   ddr0/raw-hazard/                                   [Kernel PMU event]
>   ddr0/read-access/                                  [Kernel PMU event]
>   ddr0/read-activate/                                [Kernel PMU event]
>   ddr0/read-command/                                 [Kernel PMU event]
>   ddr0/read-cycles/                                  [Kernel PMU event]
>   ddr0/read-modify-write-command/                    [Kernel PMU event]
>   ddr0/read-queue-depth/                             [Kernel PMU event]
>   ddr0/read-write-transition/                        [Kernel PMU event]
>   ddr0/read/                                         [Kernel PMU event]
>   ddr0/refresh/                                      [Kernel PMU event]
>   ddr0/selfresh/                                     [Kernel PMU event]
>   ddr0/wr-xact-credit/                               [Kernel PMU event]
>   ddr0/write-access/                                 [Kernel PMU event]
>   ddr0/write-command/                                [Kernel PMU event]
>   ddr0/write-credit-cnt/                             [Kernel PMU event]
>   ddr0/write-cycles/                                 [Kernel PMU event]
>   ddr0/write-queue-depth/                            [Kernel PMU event]
>   ddr0/write/

> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> No change from V8 to V9

> Change from v7 to v8
>  * remove unused define
>  * change total_events to active_events, change active_events to events
>  * remove flags, 
>  * fix multi line comments code sytle
>  * add pmu_enable\disable function
>  * disable event at irq handle
>  * remove counter check at ddr_perf_free_counter
>  * remove pmu->irq check
>  * add group check

> Change from v6 to v7
>  * added irq affinity handle, ref arm-ccn.c
>  * added IRQF_NOBALANCING | IRQF_NO_THREAD
>  * added ida_simple_remove at failure path

> Change from v5 to v6
>  * fix insmod\rmmod problem
>  * remove randunt register read at irq handle
>  * change u32 irq to int
>  * devm_request_irq use default flags.

> Change from v4 to v5
>  * Remove AXI ID filter function

> Change from v3 to v4
>  * Change FSL_IMX8_DDR_PERF to FSL_IMX8_DDR_PMU
>  * sort include
>  * remove struct fsl_ddr_devtype_data
>  * Added comment need disable control first
>  * Added comment about must enable cycle counter
>  * Added macro for EVENT_AXI_READ, remove hardcode 0x41 and 0x42
>  * Added comment about cycle counter is fastest one

> Change from v2 to v3
>  * remove kfree

> Change from V1 to V2
>  * update Kconfig by use i.MX8 instead of i.MX8 QXP
>  * remove gpl statememnt since SPDX tag
>  * use dev_kzalloc
>  * use dev_err
>  * commit message show axi_read 0x41\axi_write 0x42
>  * commit message show cycles must be enabled
>  * Irq only issue at cycles overflow
>  * use NUM_COUNTER
>  * use devm_request_irq
>  * add hotplug callback to handle context migration

Hey Frank,

I missed your effort to upstream this and ended up spening some time
working on the same thing in parallel, so I have some comments below.

> +PMU_EVENT_ATTR_STRING(cycles, ddr_perf_cycles, "event=0x00");
> +PMU_EVENT_ATTR_STRING(selfresh, ddr_perf_selfresh, "event=0x01");
> +PMU_EVENT_ATTR_STRING(read-access, ddr_perf_read_accesses, "event=0x04");
> +PMU_EVENT_ATTR_STRING(write-access, ddr_perf_write_accesses, "event=0x05");
> +PMU_EVENT_ATTR_STRING(read-queue-depth, ddr_perf_read_queue_depth,
> +			"event=0x08");
> +PMU_EVENT_ATTR_STRING(write-queue-depth, ddr_perf_write_queue_depth,
> +			"event=0x09");
> +PMU_EVENT_ATTR_STRING(lp-read-credit-cnt, ddr_perf_lp_read_credit_cnt,
> +			"event=0x10");
> +PMU_EVENT_ATTR_STRING(hp-read-credit-cnt, ddr_perf_hp_read_credit_cnt,
> +			"event=0x11");
> +PMU_EVENT_ATTR_STRING(write-credit-cnt, ddr_perf_write_credit_cnt,
> +			"event=0x12");
> +PMU_EVENT_ATTR_STRING(read-command, ddr_perf_read_command, "event=0x20");
> +PMU_EVENT_ATTR_STRING(write-command, ddr_perf_write_command, "event=0x21");
> +PMU_EVENT_ATTR_STRING(read-modify-write-command,
> +		ddr_perf_read_modify_write_command, "event=0x22");
> +PMU_EVENT_ATTR_STRING(hp-read, ddr_perf_hp_read, "event=0x23");
> +PMU_EVENT_ATTR_STRING(hp-req-nodcredit, ddr_perf_hp_req_nocredit, "event=0x24");
> +PMU_EVENT_ATTR_STRING(hp-xact-credit, ddr_perf_hp_xact_credit, "event=0x25");
> +PMU_EVENT_ATTR_STRING(lp-req-nocredit, ddr_perf_lp_req_nocredit, "event=0x26");
> +PMU_EVENT_ATTR_STRING(lp-xact-credit, ddr_perf_lp_xact_credit, "event=0x27");
> +PMU_EVENT_ATTR_STRING(wr-xact-credit, ddr_perf_wr_xact_credit, "event=0x29");
> +PMU_EVENT_ATTR_STRING(read-cycles, ddr_perf_read_cycles, "event=0x2a");
> +PMU_EVENT_ATTR_STRING(write-cycles, ddr_perf_write_cycles, "event=0x2b");
> +PMU_EVENT_ATTR_STRING(read-write-transition, ddr_perf_read_write_transition,
> +			"event=0x30");
> +PMU_EVENT_ATTR_STRING(precharge, ddr_perf_precharge, "event=0x31");
> +PMU_EVENT_ATTR_STRING(activate, ddr_perf_activate, "event=0x32");
> +PMU_EVENT_ATTR_STRING(load-mode, ddr_perf_load_mode, "event=0x33");
> +PMU_EVENT_ATTR_STRING(mwr, ddr_perf_mwr, "event=0x34");
> +PMU_EVENT_ATTR_STRING(read, ddr_perf_read, "event=0x35");
> +PMU_EVENT_ATTR_STRING(read-activate, ddr_perf_read_activate, "event=0x36");
> +PMU_EVENT_ATTR_STRING(refresh, ddr_perf_refresh, "event=0x37");
> +PMU_EVENT_ATTR_STRING(write, ddr_perf_write, "event=0x38");
> +PMU_EVENT_ATTR_STRING(raw-hazard, ddr_perf_raw_hazard, "event=0x39");

You can really save quite a bit of boilerplate if you define those
inplace with a custom macro and a custom show function:

static ssize_t
ddr_pmu_event_show(struct device *dev, struct device_attribute *attr,
		   char *page)
{
	struct perf_pmu_events_attr *pmu_attr;

	pmu_attr = container_of(attr, struct perf_pmu_events_attr, attr);
	return sprintf(page, "event=0x%02llx\n", pmu_attr->id);
}

#define IMX8_DDR_PMU_EVENT_ATTR(_name, _id)				\
	(&((struct perf_pmu_events_attr[]) {				\
		{ .attr = __ATTR(_name, 0444, ddr_pmu_event_show, NULL), \
		  .id = _id, }						\
	})[0].attr.attr)

static struct attribute *ddr_pmu_events_attrs[] = {
	IMX8_DDR_PMU_EVENT_ATTR(cycles,		     CYCLES_EVENT_ID),
	IMX8_DDR_PMU_EVENT_ATTR(selfresh,			0x01),
	IMX8_DDR_PMU_EVENT_ATTR(read-access,			0x04),
	IMX8_DDR_PMU_EVENT_ATTR(write-access,			0x05),
	IMX8_DDR_PMU_EVENT_ATTR(read-queue-depth,		0x08),

...

> +
> +struct ddr_pmu {
> +	struct pmu pmu;
> +	void __iomem *base;
> +	unsigned int cpu;
> +	struct	hlist_node node;
> +	struct	device *dev;

This device pointer is used only once in ddr_perf_event_init() and
even in that function not all error cases get a dedicated kernel
message. I'd consider just dropping it and the message it is used in.

> +	struct perf_event *events[NUM_COUNTERS];
> +	int active_events;

I'd very strongly encourage you to convert the driver to use a proper
bitmask instead of this counter. E.g:

DECLARE_BITMAP(active_mask, NUM_COUNTERS);

I'll comment more on that below.

> +	enum cpuhp_state cpuhp_state;
> +	int irq;
> +	int id;
> +};

> +static struct attribute_group ddr_perf_events_attr_group = {
> +	.name = "events",
> +	.attrs = ddr_perf_events_attrs,
> +};
> +
> +PMU_FORMAT_ATTR(event, "config:0-63");
> +

Event ID is really only 8-bits wide, AFAIK. Is there any reason to
reserve all 64 for it in config?

> +static struct attribute *ddr_perf_format_attrs[] = {
> +	&format_attr_event.attr,
> +	NULL,
> +};
> +
> +static struct attribute_group ddr_perf_format_attr_group = {
> +	.name = "format",
> +	.attrs = ddr_perf_format_attrs,
> +};
> +
> +static const struct attribute_group *attr_groups[] = {
> +	&ddr_perf_events_attr_group,
> +	&ddr_perf_format_attr_group,
> +	&ddr_perf_cpumask_attr_group,
> +	NULL,
> +};
> +
> +static u32 ddr_perf_alloc_counter(struct ddr_pmu *pmu, int event)
> +{
> +	int i;
> +
> +	/*
> +	 * Always map cycle event to counter 0
> +	 * Cycles counter is dedicated for cycle event
> +	 * can't used for the other events
> +	 */
> +	if (event == EVENT_CYCLES_ID) {
> +		if (pmu->events[EVENT_CYCLES_COUNTER] == NULL)
> +			return EVENT_CYCLES_COUNTER;
> +		else
> +			return -ENOENT;
> +	}
> +
> +	for (i = 1; i < NUM_COUNTERS; i++) {
> +		if (pmu->events[i] == NULL)
> +			return i;
> +	}

This is the first place where using a bitmap would simplify the
driver. Here all you'd need to do is:


if (event == CYCLES_EVENT_ID) {
   ...	   
} else {
  i =  find_next_zero_bit(pmu->active_mask, NUM_COUNTERS,
  		          EVENT_CYCLES_COUNTER + 1);
  if (i == NUM_COUNTERS)
	return -EAGAIN;

}

set_bit(i, pmu->active_mask);

...

> +
> +	return -ENOENT;
> +}
> +
> +static u32 ddr_perf_free_counter(struct ddr_pmu *pmu, int counter)
> +{
> +	pmu->events[counter] = NULL;
> +
> +	return 0;
> +}

Is this function even necessary? It is used only once in the code and
it's return value is ignored

> +
> +static u32 ddr_perf_read_counter(struct ddr_pmu *pmu, int counter)
> +{
> +	return readl(pmu->base + COUNTER_READ + counter * 4);
> +}

Would using readl_relaxed() be beneficial here?

> +
> +static int ddr_perf_event_init(struct perf_event *event)
> +{
> +	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
> +	struct hw_perf_event *hwc = &event->hw;
> +	struct perf_event *sibling;
> +
> +	if (event->attr.type != event->pmu->type)
> +		return -ENOENT;
> +
> +	if (is_sampling_event(event) || event->attach_state & PERF_ATTACH_TASK)
> +		return -EOPNOTSUPP;
> +
> +	if (event->cpu < 0) {
> +		dev_warn(pmu->dev, "Can't provide per-task data!\n");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	if (event->attr.exclude_user        ||
> +	    event->attr.exclude_kernel      ||
> +	    event->attr.exclude_hv          ||
> +	    event->attr.exclude_idle        ||
> +	    event->attr.exclude_host        ||
> +	    event->attr.exclude_guest       ||

You don't need any of the above if you pass:

.capabilities = PERF_PMU_CAP_NO_EXCLUDE

in your struct pmu initialization

> +	    event->attr.sample_period)
> +		return -EINVAL;
> +
> +	/*
> +	 * We must NOT create groups containing mixed PMUs, although software
> +	 * events are acceptable (for example to create a CCN group
> +	 * periodically read when a hrtimer aka cpu-clock leader triggers).
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
> +	event->cpu = pmu->cpu;
> +	hwc->idx = -1;
> +
> +	return 0;
> +}

> +
> +static void ddr_perf_event_enable(struct ddr_pmu *pmu, int config,
> +				  int counter, bool enable)
> +{

This function doesn't really have anything to do with events (unlike,
for example, ddr_perf_event_start() below). Maybe it would be better
to rename it to ddr_perf_counter_enable()?

> +	u8 reg = counter * 4 + COUNTER_CNTL;
> +	int val;
> +
> +	if (enable) {
> +		/*
> +		 * must disable first, then enable again
> +		 * otherwise, cycle counter will not work
> +		 * if previous state is enabled.
> +		 */
> +		writel(0, pmu->base + reg);
> +		val = CNTL_EN | CNTL_CLEAR;
> +		val |= (config << CNTL_CSV_SHIFT) & CNTL_CSV_MASK;

You can simplify the above with FIELD_PREP(CNTL_CSV_MASK, config)

> +	} else {
> +		/* Disable counter */
> +		val = readl(pmu->base + reg) & CNTL_EN_MASK;

This register will be blown away by the code in the other if branch
next time the counter is enabled. What's the point of doing
read-modify-write and trying to preserve all but EN bits as they were here?

Why not just do:

writel(CNTL_CLEAR, pmu->base + reg);

?

> +	}
> +
> +	writel(val, pmu->base + reg);
> +}
> +
> +static void ddr_perf_event_start(struct perf_event *event, int flags)
> +{
> +	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
> +	struct hw_perf_event *hwc = &event->hw;
> +	int counter = hwc->idx;
> +
> +	local64_set(&hwc->prev_count, 0);
> +
> +	ddr_perf_event_enable(pmu, event->attr.config, counter, true);
> +}
> +
> +static int ddr_perf_event_add(struct perf_event *event, int flags)
> +{
> +	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
> +	struct hw_perf_event *hwc = &event->hw;
> +	int counter;
> +	int cfg = event->attr.config;
> +
> +	counter = ddr_perf_alloc_counter(pmu, cfg);
> +	if (counter < 0) {
> +		dev_dbg(pmu->dev, "There are not enough counters\n");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	pmu->events[counter] = event;
> +	pmu->active_events++;
> +	hwc->idx = counter;

What about hw->state?

> +
> +	if (flags & PERF_EF_START)
> +		ddr_perf_event_start(event, flags);
> +
> +	local64_set(&hwc->prev_count, ddr_perf_read_counter(pmu, counter));

What's this local64_set() for? You already clear prev_counter and HW
counter when event is started. This just seems redundant.

> +
> +	return 0;
> +}
> +
> +static void ddr_perf_event_stop(struct perf_event *event, int flags)
> +{
> +	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
> +	struct hw_perf_event *hwc = &event->hw;
> +	int counter = hwc->idx;
> +
> +	ddr_perf_event_enable(pmu, event->attr.config, counter, false);
> +	ddr_perf_event_update(event);

hw->state isn't updated here either? I'm no expert on perf subsystem,
so maybe it's OK, but most of the other drivers in this category do

hw->state |= PERF_HES_STOPPED | PERF_HES_UPTODATE;

> +}
> +
> +static void ddr_perf_event_del(struct perf_event *event, int flags)
> +{
> +	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
> +	struct hw_perf_event *hwc = &event->hw;
> +	int counter = hwc->idx;
> +
> +	ddr_perf_event_stop(event, PERF_EF_UPDATE);
> +
> +	ddr_perf_free_counter(pmu, counter);
> +	pmu->active_events--;
> +	hwc->idx = -1;
> +}
> +
> +static void ddr_perf_pmu_enable(struct pmu *pmu)
> +{
> +	struct ddr_pmu *ddr_pmu = to_ddr_pmu(pmu);
> +
> +	/* enable cycle counter if cycle is not active event list */
> +	if (ddr_pmu->events[EVENT_CYCLES_COUNTER] == NULL)
> +		ddr_perf_event_enable(ddr_pmu,
> +				      EVENT_CYCLES_ID,
> +				      EVENT_CYCLES_COUNTER,
> +				      true);
> +}
> +
> +static void ddr_perf_pmu_disable(struct pmu *pmu)
> +{
> +	struct ddr_pmu *ddr_pmu = to_ddr_pmu(pmu);
> +
> +	if (ddr_pmu->events[EVENT_CYCLES_COUNTER] == NULL)
> +		ddr_perf_event_enable(ddr_pmu,
> +				      EVENT_CYCLES_ID,
> +				      EVENT_CYCLES_COUNTER,
> +				      false);
> +}

It seems that both of those functions will enable/disable cycles
counter multiple times if "perf" is called with a list specifying
multiple events but not cycles counter. Not sure if this is
intentional, in case it is not, using a bitmask would allow you to
avoid this by using bitmap_weight(), e.g:

if (bitmap_weight(pmu->active_mask, NUM_COUNTERS) == 1 &&
    ...

> +
> +static irqreturn_t ddr_perf_irq_handler(int irq, void *p)
> +{
> +	int i;
> +	struct ddr_pmu *pmu = (struct ddr_pmu *) p;
> +	struct perf_event *event, *cycle_event = NULL;
> +
> +	/* all counter will stop if cycle counter disabled */
> +	ddr_perf_event_enable(pmu,
> +			      EVENT_CYCLES_ID,
> +			      EVENT_CYCLES_COUNTER,
> +			      false);

The comment below says that IRQ is only raised when cycles counter
overflow and when that happens all of the counters are stopped. What's
the goal of the code disabling cycles counter above then?

> +	/*
> +	 * When the cycle counter overflows, all counters are stopped,
> +	 * and an IRQ is raised. If any other counter overflows, it
> +	 * continues counting, and no IRQ is raised.
> +	 *
> +	 * Cycles occur at least 4 times as often as other events, so we
> +	 * can update all events on a cycle counter overflow and not
> +	 * lose events.
> +	 *
> +	 */
> +	for (i = 0; i < NUM_COUNTERS; i++) {
> +
> +		if (!pmu->events[i])
> +			continue;
> +
> +		event = pmu->events[i];
> +
> +		ddr_perf_event_update(event);

If you already reading this counter out, why not clear its value to 0
to avoid having it overflow while at it?

> +
> +		if (event->hw.idx == EVENT_CYCLES_COUNTER)
> +			cycle_event = event;
> +	}
> +
> +	ddr_perf_event_enable(pmu,
> +			      EVENT_CYCLES_ID,
> +			      EVENT_CYCLES_COUNTER,
> +			      true);
> +	if (cycle_event)
> +		ddr_perf_event_update(cycle_event);

Using a bitmaks would allow you to simplify the above to:

i = EVENT_CYCLES_COUNTER + 1;
for_each_set_bit_from(i, pmu->active_mask, NUM_COUNTERS)
   ddr_perf_event_update(pmu->active_events[i]);

ddr_perf_event_enable(pmu,
		      EVENT_CYCLES_ID,
		      EVENT_CYCLES_COUNTER,
		      true);

if (test_bit(EVENT_CYCLES_COUNTER, pmu->active_mask))
    ddr_perf_event_update(pmu->active_events[EVENT_CYCLES_COUNTER]);

> +
> +	return IRQ_HANDLED;
> +}

> +
> +static int ddr_perf_probe(struct platform_device *pdev)
> +{
> +	struct ddr_pmu *pmu;
> +	struct device_node *np;
> +	void __iomem *base;
> +	struct resource *iomem;
> +	char *name;
> +	char *hpname;
> +	int num;
> +	int ret;
> +	int irq;
> +
> +	iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	base = devm_ioremap_resource(&pdev->dev, iomem);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	np = pdev->dev.of_node;
> +
> +	pmu = devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
> +	if (!pmu)
> +		return -ENOMEM;
> +
> +	num = ddr_perf_init(pmu, base, &pdev->dev);

There's already a unique ID availible - IP block's physical address
(iomem->start). Why not use that instead of setting up an IDA?

> +
> +	platform_set_drvdata(pdev, pmu);
> +
> +	name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "ddr%d", num);
> +	if (!name)
> +		return -ENOMEM;
> +
> +	hpname = devm_kasprintf(&pdev->dev, GFP_KERNEL,
> +				"perf/imx/ddr%d:online", num);
> +	if (!hpname)
> +		return -ENOMEM;
> +
> +	pmu->cpu = raw_smp_processor_id();
> +	ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN, hpname, NULL,
> +					 ddr_perf_offline_cpu);
> +
> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "cpuhp_setup_state_multi failed\n");
> +		goto ddr_perf_err;
> +	}
> +
> +	pmu->cpuhp_state = ret;
> +
> +	/* Register the pmu instance for cpu hotplug */
> +	cpuhp_state_add_instance_nocalls(pmu->cpuhp_state, &pmu->node);
> +
> +	ret = perf_pmu_register(&pmu->pmu, name, -1);
> +	if (ret)
> +		goto ddr_perf_err;

Can these two be done after IRQ registration to simplify error
handling?

> +
> +	/* Request irq */
> +	irq = of_irq_get(np, 0);
> +	if (irq < 0) {
> +		dev_err(&pdev->dev, "Failed to get irq: %d", irq);
> +		ret = irq;
> +		goto ddr_perf_irq_err;
> +	}
> +
> +	ret = devm_request_irq(&pdev->dev, irq,
> +					ddr_perf_irq_handler,
> +					IRQF_NOBALANCING | IRQF_NO_THREAD,
> +					DDR_PERF_DEV_NAME,
> +					pmu);
> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "Request irq failed: %d", ret);
> +		goto ddr_perf_irq_err;
> +	}
> +
> +	pmu->irq = irq;
> +	ret = irq_set_affinity_hint(pmu->irq, cpumask_of(pmu->cpu));
> +	if (ret) {
> +		dev_err(pmu->dev, "Failed to set interrupt affinity!\n");
> +		goto ddr_perf_irq_err;
> +	}
> +
> +	return 0;
> +
> +ddr_perf_irq_err:
> +	perf_pmu_unregister(&(pmu->pmu));
> +
> +ddr_perf_err:
> +	if (pmu->cpuhp_state)
> +		cpuhp_state_remove_instance_nocalls(pmu->cpuhp_state, &pmu->node);
> +
> +	ida_simple_remove(&ddr_ida, pmu->id);
> +	dev_warn(&pdev->dev, "i.MX8 DDR Perf PMU failed (%d), disabled\n", ret);
> +	return ret;
> +}


Thanks,
Andrey Smirnov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
