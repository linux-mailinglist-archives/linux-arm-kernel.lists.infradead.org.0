Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8EDD42E5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5mmeykcATPgLdA5O4AwDAbT4z4012eoUt5z2LeHx2M=; b=RhXUcoMAJ/eP51
	4p9Tsq1IYnszNlqhfRgoDdlPFIXIQsKHII/j5pbRWgxLF2y64xUg0ujAu/OKk3dSl2eYpfRTx4Hev
	EC6YVsh6D7ke7Op54aVAdQGJftrmjxaTN8keSNryoKyNI322EUJxav3kWOq4RxYQR4z1iGR3ebgAh
	YZX53vdrnRsORyyAhV9hCCfHHq/x9PmK2+JUtElvOwwy1VhDDzJx1auwwNLevc6RJ5Dy2y814O/3O
	tdhAKUo5A9gpwYeotqtZJ4v8FlJYBdcHfSKxZ4++Hji/mdxA6ZB8OUPqpGMz6W1LzJQVtydi2ARNy
	DLeWPNwDlihIvwIZnOrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvx2-0001z6-7A; Fri, 11 Oct 2019 14:31:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvwq-0001yc-L0
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:31:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 32979142F;
 Fri, 11 Oct 2019 07:31:16 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 EDA823F68E; Fri, 11 Oct 2019 07:31:14 -0700 (PDT)
Date: Fri, 11 Oct 2019 15:31:12 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Ionela Voinescu <ionela.voinescu@arm.com>
Subject: Re: [PATCH 1/4] arm64: add support for the AMU extension v1
Message-ID: <20191011143112.GB3607@arrakis.emea.arm.com>
References: <20190917134228.5369-1-ionela.voinescu@arm.com>
 <20190917134228.5369-2-ionela.voinescu@arm.com>
 <20191010172058.GD40923@arrakis.emea.arm.com>
 <4e82e891-1d47-7a4f-abc9-e6bf2cce7f91@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e82e891-1d47-7a4f-abc9-e6bf2cce7f91@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_073116_776326_2976BEE2 
X-CRM114-Status: GOOD (  21.87  )
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

On Fri, Oct 11, 2019 at 11:31:40AM +0100, Ionela Voinescu wrote:
> On 10/10/2019 18:20, Catalin Marinas wrote:
> > On Tue, Sep 17, 2019 at 02:42:25PM +0100, Ionela Voinescu wrote:
> >> +#ifdef CONFIG_ARM64_AMU_EXTN
> >> +
> >> +/*
> >> + * This per cpu variable only signals that the CPU implementation supports the
> >> + * AMU but does not provide information regarding all the events that it
> >> + * supports.
> >> + * When this amu_feat per CPU variable is true, the user of this feature can
> >> + * only rely on the presence of the 4 fixed counters. But this does not
> >> + * guarantee that the counters are enabled or access to these counters is
> >> + * provided by code executed at higher exception levels.
> >> + */
> >> +DEFINE_PER_CPU(bool, amu_feat) = false;
> >> +
> >> +static void cpu_amu_enable(struct arm64_cpu_capabilities const *cap)
> >> +{
> >> +	if (has_cpuid_feature(cap, SCOPE_LOCAL_CPU)) {
> >> +		pr_info("detected CPU%d: Activity Monitors extension\n",
> >> +			smp_processor_id());
> >> +		this_cpu_write(amu_feat, true);
> >> +	}
> >> +}
> > 
> > Sorry if I missed anything as I just skimmed through this series. I
> > can't see the amu_feat used anywhere in these patches, so on its own it
> > doesn't make much sense.
> 
> No worries, you are correct, at the moment the per-cpu amu_feat is not
> yet used anywhere. But the intention is to use it to discover the
> feature at CPU level as some CPUs might implement AMU and some might
> not.
> 
> I'll soon submit some patches using the counters for the scheduler's
> frequency invariance - to discover the frequency the CPUs are actually
> running at in case there is power or thermal mitigation happening
> outside of the OS.

Thanks for the explanation. I guess I'll wait for the other patches to
see how all fits together. In general I'm not keen on per-CPU variables
exposed to the rest of the kernel. For example, is it always read in a
non-preemptible context? I'd rather have an accessor function with the
corresponding WARN_ON_ONCE(preemptible()). This may come with the rest
of the patches.

> More practically, it's possible that we'll see big.LITTLE platforms
> where the big CPUs only will implement activity monitors and for those
> CPUs it will be useful to get more accurate information on the current
> frequency, for example, as power and thermal mitigation is more
> probable to happen in the power domain of the big CPUs.

As long as that's a realistic possibility (not just a theoretical one)
and the in-kernel code can handle such asymmetry, it's fine by me. This
could be another reason to never expose the AMU counters to user-space
or guests. You can control preemption in the kernel but can't run
user-space in a non-preemptible context.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
