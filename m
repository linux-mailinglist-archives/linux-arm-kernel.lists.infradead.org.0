Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9E986090
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 13:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m7an2TCAhkikHkOqCPmMUf5yOtw2QPMHqR63N9zb2hw=; b=PIaoJFRARLNrfYx3GQ1SM44Gi
	4IKn0fj/Fq7dZnAE5xVt4AAxLJ4IdzQdAKEJFt5RHQbBqVuzJ8jYG2tQBw5VnnsaxQ+JqPy/CNaIT
	K/7LD4MxGo3Wet6rnI035gHQ9fCzf1oWQWk3/Qpri4Zn8nmIKjegYdhpJJ4HOPR1jTFZLyMQ2qgId
	C7Fx7dbVNmyCldZEshYiWoilcvHywNqPyfZ1aclle3cBiQw8MxdfCzTbhaDCBxuY+pQgNmz3zfw6S
	bT0yPxxDMUjeoI1FHJM+nghNkDueEaz68QnBHM8zMFEYmMI0fecY9LlKJqTWobe390w2d8yWYdaPO
	eSWvKLdgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvgET-0007Kh-H1; Thu, 08 Aug 2019 11:05:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvgEG-0006wS-Hh
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 11:05:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B233B28;
 Thu,  8 Aug 2019 04:05:04 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 24C713F694;
 Thu,  8 Aug 2019 04:05:04 -0700 (PDT)
Subject: Re: [PATCH] arm64: Clarify when cpu_enable() is called
To: broonie@kernel.org, will@kernel.org
References: <20190806170043.35588-1-broonie@kernel.org>
 <20190807160107.fpanxo4iimhg743c@willie-the-truck>
 <20190807165143.GI4048@sirena.co.uk>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <0508fc5a-ab61-f507-507f-3002e49f2d27@arm.com>
Date: Thu, 8 Aug 2019 12:05:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190807165143.GI4048@sirena.co.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_040508_680336_87A9B990 
X-CRM114-Status: GOOD (  28.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/08/2019 17:51, Mark Brown wrote:
> On Wed, Aug 07, 2019 at 05:01:08PM +0100, Will Deacon wrote:
>> On Tue, Aug 06, 2019 at 06:00:43PM +0100, Mark Brown wrote:
> 
>>> -	 * Take the appropriate actions to enable this capability for this CPU.
>>> -	 * For each successfully booted CPU, this method is called for each
>>> -	 * globally detected capability.
>>> +	 * Take the appropriate actions to configure this capability for this
>>> +	 * CPU.  This will be called on all CPUs in the system if the
>>> +	 * capability is detected anywhere in the system.
> 
>> That's not quite right though either, is it? We need to take into account
>> the scope of the capability/erratum as well, since we don't /always/ call
>> this function for everybody.
> 
> I guess you're thinking of the ARM64_CPUCAP_SYSTEM_FEATURE case where we
> match the feature on all CPUs so we could see the feature on some CPUs
> but not detect it as we're requiring a match on all? 

We don't run the "match" check (i.e, detect) on all CPUs for SYSTEM scoped
features. Instead, we use sanitised feature set to detect the system features.

> Possibly the above
> should be "detected and enabled" rather than just "detected"?  I can see
> how that might not be 100% clear, I was thinking of detection as passing
> all the match requirements including cross-CPU requirements but that
> could be more explicit.  Perhaps something like:
> 
> 	If this is called for any CPU in the system then it will be
> 	called for all of them.
> 
> might cover it?

	* Take the appropriate actions to configure this capability for the
	* current CPU. If this capability is detected by the kernel, this will
	* called on all the CPUs in the system, including the hotplugged
	* CPUs.
	*/
	

> 
>> Suzuki, are there any cases where ->cpu_enable() may be called on a CPU
>> without the feature outside of ARM64_CPUCAP_LOCAL_CPU_ERRATUM or
>> ARM64_CPUCAP_BOOT_RESTRICTED_CPU_LOCAL_FEATURE?
> 
> There's at least ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE, that was what
> caused me to notice what was happening (and get confused about why
> cpu_enable() was being called on non-matching CPUs).

Well, this is true for the ERRATUM too. In a nutshell, any LOCAL_CPU scoped
capability can trigger this on the CPUs.

> 
> I don't see where we limit where cpu_enable() is called after we start
> calling it.  When we're looping through in cpu_enable_non_boot_scope()
> we skip SCOPE_BOOT_CPU but those get cpu_enable() called in
> enable_cpu_capabilites() or verify_local_cpu_capabilities() depending on
> if it's the boot CPU or not.  It's possible I'm missing something
> though.

There are two phases for any capability:

1) Detection - The kernel runs the matches() for the capability and marks
    the cap available when it returns true. Depending on the scope of the
    capability this could be done :

    a) BOOT_CPU scope - Only on boot CPU. This must be only used for
       features that are enabled very early in the kernel and get used
       right away by the boot CPU. The checks use the raw CPU registers.
       e.g, VHE - kernel runs in EL2, GIC NMI via Priority masking.

    b) LOCAL_SCOPE - On boot CPU and all the secondary CPUs booted by the
       kernel during smp bring up (before  smp_cpus_done()) and before the
       userspace gets control. The checks use the raw CPU registers.
       e.g, CPU erratums

    c) SYSTEM_SCOPE - After all the smp CPUs are booted by the kernel,
       (i.e, from smp_cpus_done()). The checks are usually run with
        sanitised feature register set, and gives you the system wide
        state of the features.

The kernel finalizes the capabilities at this point and cannot be changed.
Thus, the hotplugged CPUs cannot affect the feature state and must comply
to the now advertised set of capabilities/features.

2) Enabling a capability - Once the kernel has detected the capability and has
been advertised (via cpu_hwcaps), each capability can take some action using
the cpu_enable() callback. This could include changing system/control register
configurations (e.g, trapping access to registers). The cpu_enable() is called
on all online CPUs in the system. Depending on the SCOPE of the capabilities,
the "cpu_enable" operation is triggered. For all CPUs that are brought online 
after the capability was enabled (e.g hotplugged CPUs), this gets called via 
check_local_cpu_capabilities()->verify_local_cpu_capabilities().

a) BOOT_CPU - The BOOT scope capabilities are enabled after the
    boot CPU detects the features.
    i.e, from setup_boot_cpu_capabilities() and is applied directly
    on the boot CPU (because there are no other online CPUs). Thus, all
    other CPUs (including the secondaries brought up by the kernel) trigger
    the cpu_enable() for BOOT scope CPUs via check_local_cpu_capabilities().

b) All the other capabilities trigger the "cpu_enable" on all the online CPUs
    after the system establishes the feature set in setup_system_capabilities().
    And the cpu_enable() operations are batched via stop_machine() with
    cpu_enable_non_boot_scope_capabilities() [ The boot CPU scope capabilities
    are already enabled by now on all online CPUs].
    Any new CPU that the kernel brings up must be triggered by the userspace and
    they trigger the cpu_enable() operation as they are brought up individually
    via check_local_cpu_capabilities()->verify_local_cpu_capabilities().


Does this help ?

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
