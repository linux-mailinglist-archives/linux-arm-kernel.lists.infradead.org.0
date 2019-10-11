Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DB5D3D69
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 12:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SjQormBNq+MGJoLj0+qls/BO+AJNqH1HdulBGsc22Hg=; b=n1gZDKkjibh+yd
	uvflqQ685pYC4631E7/UdL/PI1NQzmNmC7s8p5mUKqTZD11fItPXR6z0LAgAIlkO7jlYKArwFD+/g
	v6TzmYR2BbU2c1hfpdJFNheyYo9dRpSJxOZHLh3TW1MBn7KhMo/d8GsmlMglCpP0Pg6clw7cma8vP
	dMulL2KhPnnVlk9AxZeYWt3YI9s/kk4F8dCoJVzoTxq/uAphLpemEnEMiB+fNsBUMMjuhB+tB97x1
	ra0C5LXgeyLaozMGANAz020yCGCTMT8Xgkq9t9AlwZ+WWrBwm7XkOJs0uUgSj3XiKC5H/8ht2/Qk1
	bzbg/mcCPR7fOj13VVtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsDM-0000jm-KU; Fri, 11 Oct 2019 10:32:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIsD4-0000Y7-Hc
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 10:31:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA01528;
 Fri, 11 Oct 2019 03:31:41 -0700 (PDT)
Received: from [10.1.199.68] (e108754-lin.cambridge.arm.com [10.1.199.68])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B9C773F703;
 Fri, 11 Oct 2019 03:31:40 -0700 (PDT)
Subject: Re: [PATCH 1/4] arm64: add support for the AMU extension v1
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20190917134228.5369-1-ionela.voinescu@arm.com>
 <20190917134228.5369-2-ionela.voinescu@arm.com>
 <20191010172058.GD40923@arrakis.emea.arm.com>
From: Ionela Voinescu <ionela.voinescu@arm.com>
Message-ID: <4e82e891-1d47-7a4f-abc9-e6bf2cce7f91@arm.com>
Date: Fri, 11 Oct 2019 11:31:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191010172058.GD40923@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_033146_682626_0816D846 
X-CRM114-Status: GOOD (  22.03  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-doc@vger.kernel.org,
 maz@kernel.org, corbet@lwn.net, linux-kernel@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On 10/10/2019 18:20, Catalin Marinas wrote:
> Hi Ionela,
> 
> On Tue, Sep 17, 2019 at 02:42:25PM +0100, Ionela Voinescu wrote:
>> +#ifdef CONFIG_ARM64_AMU_EXTN
>> +
>> +/*
>> + * This per cpu variable only signals that the CPU implementation supports the
>> + * AMU but does not provide information regarding all the events that it
>> + * supports.
>> + * When this amu_feat per CPU variable is true, the user of this feature can
>> + * only rely on the presence of the 4 fixed counters. But this does not
>> + * guarantee that the counters are enabled or access to these counters is
>> + * provided by code executed at higher exception levels.
>> + */
>> +DEFINE_PER_CPU(bool, amu_feat) = false;
>> +
>> +static void cpu_amu_enable(struct arm64_cpu_capabilities const *cap)
>> +{
>> +	if (has_cpuid_feature(cap, SCOPE_LOCAL_CPU)) {
>> +		pr_info("detected CPU%d: Activity Monitors extension\n",
>> +			smp_processor_id());
>> +		this_cpu_write(amu_feat, true);
>> +	}
>> +}
> 
> Sorry if I missed anything as I just skimmed through this series. I
> can't see the amu_feat used anywhere in these patches, so on its own it
> doesn't make much sense.
> 

No worries, you are correct, at the moment the per-cpu amu_feat is not
yet used anywhere. But the intention is to use it to discover the
feature at CPU level as some CPUs might implement AMU and some might
not.

I'll soon submit some patches using the counters for the scheduler's
frequency invariance - to discover the frequency the CPUs are actually
running at in case there is power or thermal mitigation happening
outside of the OS.

> I also can't see the advantage of allowing mismatched CPU
> implementations for this feature. What's the intended use-case?
> 

Just to clarify things, the intention is to allow a mix of CPUs where
some of them implement AMU (v8.4 - V1) and some don't. The current
implementation does not currently support a mix of CPUs with different
implementations of AMU. Although that would be easy to add when we have
a new version of AMU.

The reason to allow a mix of CPUs with and without support for activity
monitor counters is due to the fact that these counters are intended to
reflect activity on a CPU, independent of other CPUs. Some of the
counters might show common information to all CPUs (for example the
constant counter that ticks at the frequency of the system timer),
some of information might be common to a subset of CPUs (cycle counter
will tick at the same rate for CPUs in the same frequency domain -
except when WFI), and some will be fully specific to the CPU
(instructions retired and memory stalls). This per-cpu information is
useful whether or not all CPUs can provide this information.

More practically, it's possible that we'll see big.LITTLE platforms
where the big CPUs only will implement activity monitors and for those
CPUs it will be useful to get more accurate information on the current
frequency, for example, as power and thermal mitigation is more
probable to happen in the power domain of the big CPUs.

For this usecase and for others, it will be good for generic support to
allow detection of the feature at a per-cpu level (this is where the
usefulness of the per-cpu amu_feat comes in) while further checks and
aggregation will be done when the counters are used, depending on the
usecase.

Thanks,
Ionela.

> Thanks.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
