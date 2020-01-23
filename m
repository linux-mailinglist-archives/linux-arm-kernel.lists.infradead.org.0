Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0E0146F2D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 18:07:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ga4W/6i8tvLtwfVNJAMUJrjRImLI77nZyaGH9YAL6Yk=; b=fjhEDMHsA1qq6U
	yz6iP/VMMnKIeTidZitpDMmdD0btnc8uLXpl9WBpAfivarKvO3gU7nOHYkQSekjfgsGuQx0/tRt7F
	NQE9S+Pl0T7a220VDYwgzbZR7Y9dlRycQVN0dyxiHPjVEbxXrlh3mXbjVunJajlXOg3pX94qkywCq
	i98dz1k4ekfEjFk0q3m/aoOQCp/pJcKhFJyeNXjxb8MhneTsEsKEd5Y3xshrhdUGYWvpaWRxE32y/
	If1MttzFFyTYcRwVzhMF7ye2Bq76tM0M3LQ5XMdw3UR+fxLHtZychQsL9JB9CBEpujW9f4x8EUthS
	NLo6eG9G9wKswGglCYDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iufx3-0005RI-C8; Thu, 23 Jan 2020 17:07:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iufwu-0005QJ-VQ
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 17:07:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6C8961FB;
 Thu, 23 Jan 2020 09:07:18 -0800 (PST)
Received: from localhost (e108754-lin.cambridge.arm.com [10.1.199.79])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0C39F3F6C4;
 Thu, 23 Jan 2020 09:07:17 -0800 (PST)
Date: Thu, 23 Jan 2020 17:07:16 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v2 6/6] arm64: use activity monitors for frequency
 invariance
Message-ID: <20200123170716.GA28719@arm.com>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-7-ionela.voinescu@arm.com>
 <0ca05a2d-918b-0c70-6dc6-ef1f5f58f388@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ca05a2d-918b-0c70-6dc6-ef1f5f58f388@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_090721_101543_DA470AAA 
X-CRM114-Status: GOOD (  38.44  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, ggherdovich@suse.cz,
 sudeep.holla@arm.com, will@kernel.org, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lukasz,

Thank you for taking a look over the patches.

On Thursday 23 Jan 2020 at 11:49:29 (+0000), Lukasz Luba wrote:
> Hi Ionela,
> 
> Please find my few comments below.
> 
> On 12/18/19 6:26 PM, Ionela Voinescu wrote:
> > The Frequency Invariance Engine (FIE) is providing a frequency
> > scaling correction factor that helps achieve more accurate
> > load-tracking.
> > 
> > So far, for arm and arm64 platforms, this scale factor has been
> > obtained based on the ratio between the current frequency and the
> > maximum supported frequency recorded by the cpufreq policy. The
> > setting of this scale factor is triggered from cpufreq drivers by
> > calling arch_set_freq_scale. The current frequency used in computation
> > is the frequency requested by a governor, but it may not be the
> > frequency that was implemented by the platform.
> > 
> > This correction factor can also be obtained using a core counter and a
> > constant counter to get information on the performance (frequency based
> > only) obtained in a period of time. This will more accurately reflect
> > the actual current frequency of the CPU, compared with the alternative
> > implementation that reflects the request of a performance level from
> > the OS.
> > 
> > Therefore, implement arch_scale_freq_tick to use activity monitors, if
> > present, for the computation of the frequency scale factor.
> > 
> > The use of AMU counters depends on:
> >   - CONFIG_ARM64_AMU_EXTN - depents on the AMU extension being present
> >   - CONFIG_CPU_FREQ - the current frequency obtained using counter
> >     information is divided by the maximum frequency obtained from the
> >     cpufreq policy.
> > 
> > While it is possible to have a combination of CPUs in the system with
> > and without support for activity monitors, the use of counters for
> > frequency invariance is only enabled for a CPU, if all related CPUs
> > (CPUs in the same frequency domain) support and have enabled the core
> 
> This looks like an edge case scenario, for which we are designing the
> whole machinery with workqueues. AFAIU we cannot run the code in
> arch_set_freq_scale() and you want to be check all CPUs upfront.
> 

Unfortunately, I don't believe it to be be an edge-case. Given that this
is an optional feature, I do believe that people might skip on
implementing it on some CPUs(LITTLEs) while keeping it for CPUs(bigs)
where power and thermal mitigation is more probable to happen in firmware.
This is the main reason to be conservative in the validation of CPUs and
cpufreq policies.

In regards to arch_set_freq_scale, I want to be able to tell, when that
function is called, if I should return a scale factor based on cpufreq
for the current policy. If activity monitors are useable for the CPUs in
the full policy, than I'm bailing out and leave the AMU FIE machinery
set the scale factor. Unfortunately this works at policy granularity.

This could  be done in a nicer way by setting the scale factor per cpu
and not for all CPUs in a policy in this arch_set_freq_scale function.
But this would require some rewriting for the full frequency invariance
support in drivers which we've talked about for a while but it was not
the purpose of this patch set. But it would eliminate the policy
verification I do with the second workqueue.

> Maybe you can just wait till all CPUs boot and then set the proper
> flags and finish initialization. Something like:
> per_cpu(s8, amu_feat) /* form the patch 1/6 */
> OR
> per_cpu(u8, amu_scale_freq) /* from this patch */
> with maybe some values:
> 0 - not checked yet
> 1 - checked and present
> -1 - checked and not available
> -2 - checked but in conflict with others in the freq domain
> -3..-k - other odd configurations
> 
> could potentially eliminate the need of workqueues.
> 
> Then, if we could trigger this from i.e. late_initcall, the CPUs
> should be online and you can validate them.
> 

I did initially give such a state machine a try but it proved to be
quite messy. A big reason for this is that the activity monitors unit
has multiple counters that can be used for different purposes.

The amu_feat per_cpu variable only flags that you have the AMU present
for potential users (in this case FIE) to validate the counters they
need for their respective usecase. For this reason I don't want to
overload the meaning of amu_feat. For the same reason I'm not doing the
validation of the counters in a generic way, but I'm tying it to the
usecase for particular counters. For example, it would not matter if
the instructions retired counter is not enabled from firmware for the
usecase of FIE. For frequency invariance we only need the core and
constant cycle counters and I'm making it the job of the user (arm64
topology code) to do the checking.

Secondly, for amu_scale_freq I could have added such a state machine,
but I did not think it was useful. The only thing it would change is
that I would not have to use the cpu_amu_fie variable in the data
structure that gets passed to the work functions. The only way I would
eliminate the second workqueue was if I did not do a check of all CPUs
in a policy, as described above, and rewrite frequency invariance to
work at CPU granularity and not policy granularity. This would eliminate
the dependency on cpufreq policy all-together, so it would be worth
doing if only for this reason alone :).

But even in that case, it's probably not needed to have more than two
states for amu_freq_scale.

What do you think?

Thank you,
Ionela.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
