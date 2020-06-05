Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3325B1EF704
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 14:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jSRov2zJBv+v43KuhGlpQp/9/FvUxcpt1QjdWq5tidk=; b=n7e/f0QH8aVApT5xZ8yBl/cbjE
	KKSFBB9kS8rDp9WSGC6TQ8VQQXwUmDQzM1PorYD8jA7u15MmWuNGsxguc2zQfXUTdz/4S8xOTmftM
	ra71E4I3vZUzF0p+whQHhN6sP9sj2Cyg/m2hwrGYx8IsjjsVCV3u/xL0t6STs5Vy0TNpPIffzTWpO
	FOeysRZCpGsNkHgHMEEXz3ietWE9fyI1dtvw5ZijMRyT6Du5u3S6Rwts8BqZpfz5UI3nG+H9rtK2x
	HomAYqwVmG6GFwbp/Y1mhO/lNF3NNkWB1Bw+9Kb9Gu3D0hwfbQTHhAKH6TXHXLq8Lc2h6x2e3xaFz
	RzFoa+jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhB75-00026z-MA; Fri, 05 Jun 2020 12:06:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhB6w-00026M-2x
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 12:06:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB6C12B;
 Fri,  5 Jun 2020 05:06:06 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 235B53F305;
 Fri,  5 Jun 2020 05:06:05 -0700 (PDT)
References: <20200604123932.20512-1-benjamin.gaignard@st.com>
 <20200604123932.20512-3-benjamin.gaignard@st.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v3 2/3] media: stm32-dcmi: Set minimum cpufreq requirement
In-reply-to: <20200604123932.20512-3-benjamin.gaignard@st.com>
Date: Fri, 05 Jun 2020 13:05:59 +0100
Message-ID: <jhj5zc5iuoo.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_050610_216998_9CE1B2AA 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.torgue@st.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, hugues.fruchet@st.com, mchehab@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 04/06/20 13:39, Benjamin Gaignard wrote:
> Before start streaming set cpufreq minimum frequency requirement.
> The cpufreq governor will adapt the frequencies and we will have
> no latency for handling interrupts.
> The frequency requirement is retrieved from the device-tree node.
>
> While streaming be notified if the IRQ affinity change thanks to
> irq_affinity_notify callback.
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> version 3:
> - add a cpumask field to track boosted CPUs
> - add irq_affinity_notify callback
> - protect cpumask field with a mutex
>
>  drivers/media/platform/stm32/stm32-dcmi.c | 187 ++++++++++++++++++++++++++++--
>  1 file changed, 179 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
> index b8931490b83b..fb6ab09eaff0 100644
> --- a/drivers/media/platform/stm32/stm32-dcmi.c
> +++ b/drivers/media/platform/stm32/stm32-dcmi.c
> +static void dcmi_irq_notifier_notify(struct irq_affinity_notify *notify,
> +				     const cpumask_t *mask)
> +{
> +	struct stm32_dcmi *dcmi = container_of(notify,
> +					       struct stm32_dcmi,
> +					       notify);
> +	struct cpufreq_policy *p;
> +	int cpu;
> +
> +	mutex_lock(&dcmi->freq_lock);
> +	/*
> +	 * For all boosted CPUs check if it is still the case
> +	 * if not remove the request
> +	 */
> +	for_each_cpu(cpu, dcmi->boosted) {
> +		if (cpumask_test_cpu(cpu, mask))
> +			continue;
> +
> +		p = cpufreq_cpu_get(cpu);
> +		if (!p)
> +			continue;
> +
> +		freq_qos_remove_request(&per_cpu(qos_req, cpu));
> +		cpumask_andnot(dcmi->boosted, dcmi->boosted, p->cpus);
> +
> +		cpufreq_cpu_put(p);
> +	}
> +
> +	/*
> +	 * For CPUs in the mask check if they are boosted if not add
> +	 * a request
> +	 */
> +	for_each_cpu(cpu, mask) {
> +		if (cpumask_test_cpu(cpu, dcmi->boosted))
> +			continue;
> +
> +		p = cpufreq_cpu_get(cpu);
> +		if (!p)
> +			continue;
> +
> +		freq_qos_add_request(&p->constraints, &per_cpu(qos_req, cpu),
> +				     FREQ_QOS_MIN, dcmi->min_frequency);
> +		cpumask_or(dcmi->boosted, dcmi->boosted, p->cpus);
> +		cpufreq_cpu_put(p);
> +	}
> +
> +	mutex_unlock(&dcmi->freq_lock);

That looks about right.

> +}
> +
> +static void dcmi_irq_notifier_release(struct kref *ref)
> +{
> +	/*
> +	 * This is required by affinity notifier. We don't have anything to
> +	 * free here.
> +	 */
> +}
> +
> +static void dcmi_get_cpu_policy(struct stm32_dcmi *dcmi)
> +{
> +	struct cpufreq_policy *p;
> +	int cpu;
> +
> +	if (!alloc_cpumask_var(&dcmi->boosted, GFP_KERNEL))
> +		return;

I think you want to actually return i.e. -ENOMEM and do cleanups in the
probe; otherwise you'll silently continue.

> +
> +	mutex_lock(&dcmi->freq_lock);
> +
> +	for_each_cpu(cpu, irq_get_affinity_mask(dcmi->irq)) {

When I suggested serialization, I was thinking we may want to use the irq's
desc lock to prevent the affinity from moving under our feet. Something
like:

  CPU A                                          CPU B

  for_each_cpu(cpu, mask)
    cpu = cpumask_next(cpu, mask)

    // ...                                       cpumask_copy(desc->irq_common_data.affinity, mask)

    cpu = cpumask_next(cpu, mask)

Now, should that happen, we would still queue the notifier and run it
shortly after - and since you track which CPUs are boosted, I don't think
we have any loss of information here.

We may have yet another affinity change while the notifier is still queued;
but the notifier boilerplate does grab the desc lock, so I think it's all
good - it wasn't all super obvious so I figured I'd still point it out.

> +		if (cpumask_test_cpu(cpu, dcmi->boosted))
> +			continue;
> +
> +		p = cpufreq_cpu_get(cpu);
> +		if (!p)
> +			continue;
> +
> +		freq_qos_add_request(&p->constraints, &per_cpu(qos_req, cpu),
> +				     FREQ_QOS_MIN, FREQ_QOS_MIN_DEFAULT_VALUE);
> +
> +		cpumask_or(dcmi->boosted, dcmi->boosted, p->cpus);
> +
> +		cpufreq_cpu_put(p);
> +	}
> +
> +	mutex_unlock(&dcmi->freq_lock);
> +}
> +
> +static void dcmi_put_cpu_policy(struct stm32_dcmi *dcmi)
> +{
> +	struct cpufreq_policy *p;
> +	int cpu;
> +
> +	mutex_lock(&dcmi->freq_lock);
> +
> +	for_each_cpu(cpu, irq_get_affinity_mask(dcmi->irq)) {
> +		if (!cpumask_test_cpu(cpu, dcmi->boosted))
> +			continue;
> +
> +		p = cpufreq_cpu_get(cpu);
> +		if (!p)
> +			continue;
> +
> +		freq_qos_remove_request(&per_cpu(qos_req, cpu));
> +		cpumask_andnot(dcmi->boosted, dcmi->boosted, p->cpus);
> +
> +		cpufreq_cpu_put(p);
> +	}
> +
> +	free_cpumask_var(dcmi->boosted);
> +
> +	mutex_unlock(&dcmi->freq_lock);
> +}
> +
> +static void dcmi_set_min_frequency(struct stm32_dcmi *dcmi, s32 freq)
> +{
> +	struct irq_affinity_notify *notify = &dcmi->notify;
> +	int cpu;
> +
> +	mutex_lock(&dcmi->freq_lock);
> +
> +	for_each_cpu(cpu, irq_get_affinity_mask(dcmi->irq)) {
> +		if (!cpumask_test_cpu(cpu, dcmi->boosted))
> +			continue;
> +

If the affinity changed between say .probe() and .start_streaming(), IIUC
you may skip CPUs here - and even if you initialize the notifier earlier in
the function (see below), that won't help you.

I think dcmi_irq_notifier_notify() does almost all you want, if it also did
the QoS update for CPUs that weren't affected by the affinity change, you
may be able to just do:

   dcmi_irq_notifier_notify(irq_get_affinity_mask(dcmi->irq));

Or something along those lines.

> +		if (!freq_qos_request_active(&per_cpu(qos_req, cpu)))
> +			continue;
> +
> +		freq_qos_update_request(&per_cpu(qos_req, cpu), freq);
> +	}
> +
> +	mutex_unlock(&dcmi->freq_lock);
> +
> +	if (freq != FREQ_QOS_MIN_DEFAULT_VALUE) {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
