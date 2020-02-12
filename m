Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B027B15AFA2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 19:20:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJTNY492Mdo/TYKhfpDMa8n4ojGym9UaeL/rmTUhUOc=; b=P6bRT273X+3sc0
	ChCA4WvwyWMDJ+1k5wAJPEeqVxK3/pvSDpuZpnlKVHraRmGLurT6Y9O9M3ZbCEV0KaONs8aO1PW12
	psWCo+M1c/iM9pLmaMHuL+5vyl+NWXHNbZKq4MH6OcOpthM5yvR7JMlIVTMuQVQIz2aaVM2RXVEkH
	uf0wY2pupk2mIfzVqrdN1fW3hmSmK1FtfeBS10tahajbgCoYfWu863Ndw4do5fnCM7zX8IipQEVZL
	QD3Niz/t/kez40i3fh9WjY7QPterLAuw66TS4P+uxQgOBfuzH9XIo+W71hyNR+aLJNTdNTEwkNRj1
	4ZBwGkmNVC6reQjlRlYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1wcU-0005l0-R4; Wed, 12 Feb 2020 18:20:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1wcN-0005kA-L9
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 18:20:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5029930E;
 Wed, 12 Feb 2020 10:20:10 -0800 (PST)
Received: from localhost (unknown [10.1.198.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E5B563F68E;
 Wed, 12 Feb 2020 10:20:09 -0800 (PST)
Date: Wed, 12 Feb 2020 18:20:08 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v3 1/7] arm64: add support for the AMU extension v1
Message-ID: <20200212182008.GA25421@arm.com>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-2-ionela.voinescu@arm.com>
 <93472f17-6465-641d-ea82-3230b5697ffd@arm.com>
 <20200212161045.GA7475@arm.com>
 <133890f7-59bb-63b9-0ca8-2294e3596058@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <133890f7-59bb-63b9-0ca8-2294e3596058@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_102011_790508_424EFDE2 
X-CRM114-Status: GOOD (  25.03  )
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
Cc: mark.rutland@arm.com, maz@kernel.org, linux-doc@vger.kernel.org,
 peterz@infradead.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, mingo@redhat.com,
 viresh.kumar@linaro.org, linux-arm-kernel@lists.infradead.org,
 sudeep.holla@arm.com, will@kernel.org, valentin.schneider@arm.com,
 lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Wednesday 12 Feb 2020 at 16:20:56 (+0000), Suzuki Kuruppassery Poulose wrote:
> > > > +static bool has_amu(const struct arm64_cpu_capabilities *cap,
> > > > +		       int __unused)
> > > > +{
> > > > +	/*
> > > > +	 * The AMU extension is a non-conflicting feature: the kernel can
> > > > +	 * safely run a mix of CPUs with and without support for the
> > > > +	 * activity monitors extension. Therefore, if not disabled through
> > > > +	 * the kernel command line early parameter, enable the capability
> > > > +	 * to allow any late CPU to use the feature.
> > > > +	 *
> > > > +	 * With this feature enabled, the cpu_enable function will be called
> > > > +	 * for all CPUs that match the criteria, including secondary and
> > > > +	 * hotplugged, marking this feature as present on that respective CPU.
> > > > +	 * The enable function will also print a detection message.
> > > > +	 */
> > > > +
> > > > +	if (!disable_amu && !zalloc_cpumask_var(&amu_cpus, GFP_KERNEL)) {
> > > 
> > > This looks problematic. Don't we end up in allocating the memory during
> > > "each CPU" check and thus leaking memory ? Do we really need to allocate
> > > this dynamically ?
> > > 
> > 
> > Yes, it does make some assumptions. Given that the AMU capability is
> > a WEAK_LOCAL_CPU_FEATURE I relied on the match function being called
> > only once, when the return value is true. If the return value is false,
> 
> That is not correct. A WEAK_LOCAL_CPU_FEATURE is still SCOPE_LOCAL_CPU,
> implies it is run on all the booting CPUs (including the hotplugged
> ones). The WEAK is there to imply that its "permitted" or "optional"
> for a hotplugged CPU. So, eventually you will re-allocate this variable
> every single time a CPU turns up, where you could also loose the current
> state.
> 

> > which will result in it being called multiple times, it's either because
> > disable_amu == false, or it has become false due to a previous failed
> > allocation, in which case a new allocation will not be attempted.

First of all, I agree with you that this should be corrected.

But for completion (and my education) I retraced my steps in regards
to my assumption above. While cpu_enable is called for all CPUs - boot,
secondary, hotplugged, the matches function (in this case has_amu) is
not always called for all CPUs, and that's where the confusion came
from.

Looking over the update_cpu_capabilities function, that's called from
both setup_boot_cpu_capabilities and check_local_cpu_capabilities
(secondary CPUs) for SCOPE_LOCAL_CPU:

-----
static void update_cpu_capabilities(u16 scope_mask)
{
        int i;
        const struct arm64_cpu_capabilities *caps;

        scope_mask &= ARM64_CPUCAP_SCOPE_MASK;
        for (i = 0; i < ARM64_NCAPS; i++) {
                caps = cpu_hwcaps_ptrs[i];
                if (!caps || !(caps->type & scope_mask) ||
                    cpus_have_cap(caps->capability) ||
                    !caps->matches(caps, cpucap_default_scope(caps)))
                        continue;

--> The matches function is only called if !cpus_have_cap


                if (caps->desc)
                        pr_info("detected: %s\n", caps->desc);
                cpus_set_cap(caps->capability);

--> If matches returns true we mark it as present in cpu_hwcaps.

                if ((scope_mask & SCOPE_BOOT_CPU) && (caps->type & SCOPE_BOOT_CPU))
                        set_bit(caps->capability, boot_capabilities);
        }   
}
---

Therefore caps->matches (in this case has_amu) will only be called as
long as it returns false. This is where my assumption above came from.
Also, this is the reason it was working nicely in my testing, as I did
not test hotplug this time.

Where the has_amu code breaks is when we end up calling
verify_local_cpu_capabilities instead of update_cpu_capabilities after
sys_caps_initialised, which will happen for hotplugged CPUs.
In that case we call caps->matches for all CPUs. Also, if anyone in the
future ends up calling this_cpu_has_cap for the AMU capability.

I will fix this.

Thank you,
Ionela.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
