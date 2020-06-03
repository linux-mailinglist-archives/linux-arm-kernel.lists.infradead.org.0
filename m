Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6911ECCC3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 11:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JETbl2OM9kCY/gj1gIpEE5cooXncUURDhkg8kGn/vB4=; b=kQQyPBkIgDKgGn2oMjsJztzUqm
	GCwuR8gDaHBAEHm8yB/SlkJlbhr+wDfrCe/ECYYqFxBExhct57U3hkz/YIdWk8fr/RBhlghrbVF9Y
	F5FOfpX232MJZTuB6cMQEZpT1hj4wuxM8KIKso8hD+vYPbRv4gUydJ+EnO0euqWOmddMpFgN5ing9
	5mNDZ4bvCATolDbufuGAi4wwc05Ed5QscJrM68BMVw8OckenfIvwA+L3hKxFqN7I1qKWKY3VHz9S4
	Ti/0okwyoJ9AoAHlChq0t257+sBMAgcqR3lD9jtOyY10lVfojglIzeJruHb0eeDBIJzuygyYABVdn
	fRQn1Qdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgPuO-0000rR-Tr; Wed, 03 Jun 2020 09:42:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgPuF-0000jR-Ep
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 09:41:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9DFD431B;
 Wed,  3 Jun 2020 02:41:52 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A3F93F305;
 Wed,  3 Jun 2020 02:41:50 -0700 (PDT)
References: <20200527151613.16083-1-benjamin.gaignard@st.com>
 <jhjpnahizkm.mognet@arm.com> <f95ce45f-7a1c-0feb-afa8-203ddb500f2f@st.com>
 <jhjo8q1io9o.mognet@arm.com> <1b0ace18-e7f8-0b75-f6fe-968a269626b0@st.com>
 <CAKfTPtCbM-w_0VrTB5tsSM5PKRtC44f3sSmAR=U=P3e3KQ+cMw@mail.gmail.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Vincent Guittot <vincent.guittot@linaro.org>
Subject: Re: [PATCH] media: stm32-dcmi: Set minimum cpufreq requirement
In-reply-to: <CAKfTPtCbM-w_0VrTB5tsSM5PKRtC44f3sSmAR=U=P3e3KQ+cMw@mail.gmail.com>
Date: Wed, 03 Jun 2020 10:41:41 +0100
Message-ID: <jhjmu5kiizu.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_024155_539883_E4C59CF2 
X-CRM114-Status: GOOD (  16.25  )
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
Cc: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
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


On 03/06/20 08:50, Vincent Guittot wrote:
> On Wed, 3 Jun 2020 at 09:34, Benjamin GAIGNARD <benjamin.gaignard@st.com> wrote:
>> On 6/2/20 3:35 PM, Valentin Schneider wrote:
>> > AFAIA streaming_start() is not necessarily executing on the same CPU as the
>> > one that will handle the interrupt. I was thinking you could use the IRQ's
>> > effective affinity as a hint of which CPU(s) to boost, i.e. something like:
>> >
>> > ---
>> >      struct cpumask_var_t visited;
>> >      struct irq_data *d = irq_get_irq_data(irq);
>> >
>> >      err = alloc_cpumask_var(visited, GFP_KERNEL);
>> >      /* ... */
>> >      for_each_cpu(cpu, irq_data_get_effective_affinity_mask(d)) {
>> >              /* check if not already spanned */
>> >              if (cpumask_test_cpu(cpu, visited))
>> >                      continue;
>> >
>> >              policy = cpufreq_cpu_get(cpu);
>> >              cpumask_or(visited, visited, policy->cpus);
>> >              /* do the boost for that policy here */
>> >              /* ... */
>> >              cpufreq_cpu_put(policy);
>> >      }
>> > ---
>> >
>> > That of course falls apart when hotplug gets involved, and the effective
>> > affinity changes... There's irq_set_affinity_notifier() out there, but it
>> > seems it's only about the affinity, not the effective_affinity, I'm not
>> > sure how valid it would be to query the effective_affinity in that
>> > notifier.

>> If I wait to be in the irq it will be too late so I think I will do a
>> loop over all possible CPUs
>> before start the streaming to change the policies.
>

Yes, that's what I was thinking as well.

> Can't you use irq_get_affinity_mask  and loop over it ?
>

In the end that's the only usable option, I think.

I was looking at alternatives because on arm64 (and AFAICT that applies
to arm too; see irq-gic.c::gic_set_affinity()) the affinity mask spans
all CPUs by default, while the effective affinity mask spans only the
CPU that will actually handle the IRQ (+ where its thread should run).

That said, using the effective mask that way does feel like an
implementation leak. Sadly I couldn't find any better way to minimize
the number of boosted frequency domains.

> Also You should better use freq_qos_add/remove_request during probe
> and remove of the driver and use freq_qos_update_request in
> dcmi_start/stop_streaming to set/unset your constraint.
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
