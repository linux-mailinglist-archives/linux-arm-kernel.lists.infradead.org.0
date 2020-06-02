Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1351EBD28
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 15:35:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YRTJIAxv4A81IcuUTbS4a+8hIp3kiQu9S+2HZm8O1zA=; b=Ugu5m2+n1CTY0SFk3zyEzBP3Gm
	WA2WOvQHfGT2zIHVBafSt3PROqzm3JY5BQSC/O5FEU6yrQFycffiZ447Qwbnkr8EW4D9i/OaCyh3f
	bINjuS7otfFDJzAmAFvzjBW2E7iqNb7JFv/Tu10L8jLJogUzXyUElFtBUykJPr06A7SX6/ZqROJZt
	AybyTX08uFIG1p/LTmzoXtdYJp6CpU2B9gu1IKRhmcfM5XRvCYd7H3rHk4SlWSWXnidt2oPpUsoqC
	zwR9cg+GQX5dOdw4DuEh+9e+tDO9bt9zlvfDnCbIGR3feoORJ4SDbeFD8Z2Vvx8azcV6FDaXC3lYo
	2uwdp+dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg74z-0007iY-PB; Tue, 02 Jun 2020 13:35:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg74t-0007i8-GV
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 13:35:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B5F721FB;
 Tue,  2 Jun 2020 06:35:38 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1EA783F305;
 Tue,  2 Jun 2020 06:35:37 -0700 (PDT)
References: <20200527151613.16083-1-benjamin.gaignard@st.com>
 <jhjpnahizkm.mognet@arm.com> <f95ce45f-7a1c-0feb-afa8-203ddb500f2f@st.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
Subject: Re: [PATCH] media: stm32-dcmi: Set minimum cpufreq requirement
In-reply-to: <f95ce45f-7a1c-0feb-afa8-203ddb500f2f@st.com>
Date: Tue, 02 Jun 2020 14:35:31 +0100
Message-ID: <jhjo8q1io9o.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_063539_634349_315ECD70 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Hugues FRUCHET <hugues.fruchet@st.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 02/06/20 12:37, Benjamin GAIGNARD wrote:
> On 6/2/20 11:31 AM, Valentin Schneider wrote:
>>> @@ -99,6 +100,8 @@ enum state {
>>>
>>>   #define OVERRUN_ERROR_THRESHOLD	3
>>>
>>> +#define DCMI_MIN_FREQ	650000 /* in KHz */
>>> +
>> This assumes the handling part is guaranteed to always run on the same CPU
>> with the same performance profile (regardless of the platform). If that's
>> not guaranteed, it feels like you'd want this to be configurable in some
>> way.
> Yes I could add a st,stm32-dcmi-min-frequency (in KHz) parameter the
> device tree node.
>

Something like that - I'm not sure how well this fits with the DT
landscape, as you could argue it isn't really a description of the
hardware, more of a description of the performance expectations of the
software. I won't really argue here.

>>
>>>   struct dcmi_graph_entity {
>>>        struct v4l2_async_subdev asd;
>>>
>> [...]
>>> @@ -2020,6 +2042,8 @@ static int dcmi_probe(struct platform_device *pdev)
>>>                goto err_cleanup;
>>>        }
>>>
>>> +	dcmi->policy = cpufreq_cpu_get(0);
>>> +
>> Ideally you'd want to fetch the policy of the CPU your IRQ (and handling
>> thread) is affined to; The only compatible DTS I found describes a single
>> A7, which is somewhat limited in the affinity area...
> If I move this code just before start streaming and use get_cpu(), would
> it works ?
>

AFAIA streaming_start() is not necessarily executing on the same CPU as the
one that will handle the interrupt. I was thinking you could use the IRQ's
effective affinity as a hint of which CPU(s) to boost, i.e. something like:

---
    struct cpumask_var_t visited;
    struct irq_data *d = irq_get_irq_data(irq);

    err = alloc_cpumask_var(visited, GFP_KERNEL);
    /* ... */
    for_each_cpu(cpu, irq_data_get_effective_affinity_mask(d)) {
            /* check if not already spanned */
            if (cpumask_test_cpu(cpu, visited))
                    continue;

            policy = cpufreq_cpu_get(cpu);
            cpumask_or(visited, visited, policy->cpus);
            /* do the boost for that policy here */
            /* ... */
            cpufreq_cpu_put(policy);
    }
---

That of course falls apart when hotplug gets involved, and the effective
affinity changes... There's irq_set_affinity_notifier() out there, but it
seems it's only about the affinity, not the effective_affinity, I'm not
sure how valid it would be to query the effective_affinity in that
notifier.

> Benjamin
>>
>>>        dev_info(&pdev->dev, "Probe done\n");
>>>
>>>        platform_set_drvdata(pdev, dcmi);
>>> @@ -2049,6 +2073,9 @@ static int dcmi_remove(struct platform_device *pdev)
>>>
>>>        pm_runtime_disable(&pdev->dev);
>>>
>>> +	if (dcmi->policy)
>>> +		cpufreq_cpu_put(dcmi->policy);
>>> +
>>>        v4l2_async_notifier_unregister(&dcmi->notifier);
>>>        v4l2_async_notifier_cleanup(&dcmi->notifier);
>>>        media_entity_cleanup(&dcmi->vdev->entity);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
