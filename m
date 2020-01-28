Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCDF14BFF5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 19:36:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5hAlfJBbu+cftqI8FJaIfPthmQe9jjTSVYfNPIZZKqo=; b=B/XYNBxFKtgZkL
	692gcJDjW/KypyN0NsQL1vMEayos2ddFgzzgHCsRDvXDTlo2pUjQTdg/gzGZbUK6QJHE/WhepBMtZ
	lSvAbjf4HxHKWMNM+fdzFa/RPqx3MMSfSH5kpgNjg98i8vTaCK5EK/i5PvS+HDDbflCEnSSotV4ZL
	vvKjO0Or+j3FHoZ7Pwush70c9ILG1WIoHbLiHE1nuAJwcI1u6MN3Dzl2W64us3g8gGeTTxU8I+TK5
	L18E3Bl1q38FNqwUoU0Nbo5LnmL30pW+YxrxSjQn+UJd3tfi3FQt9uCbn+RD1Wq/V+VClec2DvG9I
	jY3srRRAQjmLHkgvxevA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwVj5-0003Rm-Qw; Tue, 28 Jan 2020 18:36:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwViv-0003Lg-Uj
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 18:36:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 082E3328;
 Tue, 28 Jan 2020 10:36:27 -0800 (PST)
Received: from [10.1.194.46] (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2538C3F52E;
 Tue, 28 Jan 2020 10:36:25 -0800 (PST)
Subject: Re: [PATCH v2 4/6] Documentation: arm64: document support for the AMU
 extension
To: Ionela Voinescu <ionela.voinescu@arm.com>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-5-ionela.voinescu@arm.com>
 <b63b6f10-22c8-79be-cc97-08484874bd62@arm.com>
 <20200128165325.GA16417@arm.com>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <487a8af1-a1b8-5a16-6487-968049bfc12f@arm.com>
Date: Tue, 28 Jan 2020 18:36:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200128165325.GA16417@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_103630_079565_8351A387 
X-CRM114-Status: GOOD (  25.68  )
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
 sudeep.holla@arm.com, Jonathan Corbet <corbet@lwn.net>, will@kernel.org,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/01/2020 16:53, Ionela Voinescu wrote:
> Or you won't be able to access them at all. Lacking firmware support
> accesses to AMU registers could be trapped in EL3. If access for EL1 and
> EL2 is enabled from EL3, it's still possible that the counters
> themselves are not enabled - that means they are not enabled to count
> the events they are designed to be counting. That's why in this case the
> event counter register could read 0.
> 
> But if we read 0, it does not necessarily mean that the counter is
> disabled. It could also mean that the events is meant to count did not
> happen yet.
> 

Right, which (as we discussed offline) is quite likely to happen if/when
we get stuff like SVE counters and we try to read them at boot time. Might
be worth adding a small note about that (0 != disabled).

>> I haven't seen something that would try to catch this on the kernel side.
>> Can we try to detect that (e.g. at least one counter returns > 0) in
>> cpu_amu_enable() and thus not write to the CPU-local 'amu_feat'?
>>
> 
> I'm reluctant to do this especially given that platforms might choose to
> keep some counters disabled while enabling some counters that might not
> have counted any events by the time we reach cpu_enable. We would end up
> mistakenly disabling the feature. I would rather leave the validation of
> the counters to be done at the location and for the purpose of their
> use: see patch 6/6 - the use of counters for frequency invariance.
> 

Hmph, I'm a bit torn on that one. It would be really nice to provide *some*
amount of sanity checking at core level - e.g. by checking that at least
one of the four architected counters reads non-zero. But as you say these
could be disabled, while some other arch/aux counter is enabled, and we
could then mistakenly disable the feature. So we can't really do much
unless we handle *each* individual counter. Oh well :/

>> While we're on the topic of detecting broken stuff, what if some CPUs
>> implement some auxiliary counters that some others don't?
>>
> 
> I think it should be up to the user of that counter to decide if the
> usecase is at CPU level or system level. My intention of this base
> support was to keep it simple and allow users of some counters to
> decide on their own how to validate and make use of either architected
> or auxiliary counters.
> 
> For example, in the case of frequency invariance, given a platform that
> does not support cpufreq based invariance, I would validate all CPUs for
> the use of AMU core and constant counters. If it happens that some CPUs
> do not support those counters or they are not enabled, we'd have to
> disable frequency invariance at system level.
> 
> For some other scenarios only partial support is needed - only a subset
> of CPUs need to support the counters for their use to be feasible.
> 
> But I believe only the user of the counters can decide, whether this is
> happening in architecture code, driver code, generic code.
> 

Right, the FIE support is actually a good example of that, I think.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
