Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EBC1786FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 01:24:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t7iBIE6Gye46yQ5dAwKXvM5MaRr2ixB91lbirr51RZg=; b=SDgMd1IZDKxiDv
	KGiBwC+J0RfRbTC6qjUJB1Un5XHpxn9csalT68ewOxQRFWuq/aHMYQtwDceH5KfKggFk6OKG70ahj
	wNnGfY2u5Yvv/09JU9dwcL8ZWqUhCLzcLg4Lf+VR6fSCs20FwHrSqx09kRsVihOxk8O8ULgBCavOG
	sbFVCYSjD+/00TBokMwL//F4Y6l8nYSPGcEKMlJYh6xdqJvASKYpzNi0eciCh1Xjg7iUwPqwWPTuL
	vTFlQ4fTQilBFPgsNcrEMza61O/LWi2DTWFBDjvxdFQobpvJ6TsN15jjxwBS+p8A34boaDhN8A6nU
	7qdgopu/reNpxMLl5C8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Hpj-0008Sx-Ja; Wed, 04 Mar 2020 00:24:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Hpc-0008HN-5J
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 00:24:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DBBF530E;
 Tue,  3 Mar 2020 16:24:06 -0800 (PST)
Received: from localhost (e108754-lin.cambridge.arm.com [10.1.198.53])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7D0443F6C4;
 Tue,  3 Mar 2020 16:24:06 -0800 (PST)
Date: Wed, 4 Mar 2020 00:24:04 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v5 1/7] arm64: add support for the AMU extension v1
Message-ID: <20200304002404.GA29652@arm.com>
References: <20200226132947.29738-1-ionela.voinescu@arm.com>
 <20200226132947.29738-2-ionela.voinescu@arm.com>
 <20200228103234.GA3904776@arrakis.emea.arm.com>
 <20200302142326.GA15709@arm.com>
 <20200303165845.GF823373@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303165845.GF823373@arrakis.emea.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_162412_296077_0F67ABA5 
X-CRM114-Status: GOOD (  35.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, sudeep.holla@arm.com, will@kernel.org,
 linux-pm@vger.kernel.org, peterz@infradead.org, maz@kernel.org,
 linux-doc@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 valentin.schneider@arm.com, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org, lukasz.luba@arm.com,
 viresh.kumar@linaro.org, pkondeti@codeaurora.org, dietmar.eggemann@arm.com,
 suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On Tuesday 03 Mar 2020 at 16:58:45 (+0000), Catalin Marinas wrote:
> On Mon, Mar 02, 2020 at 02:23:26PM +0000, Ionela Voinescu wrote:
> > On Friday 28 Feb 2020 at 10:32:34 (+0000), Catalin Marinas wrote:
> > > On Wed, Feb 26, 2020 at 01:29:41PM +0000, Ionela Voinescu wrote:
> > > > diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> > > > index dbc22d684627..49f0c436928f 100644
> > > > --- a/Documentation/admin-guide/kernel-parameters.txt
> > > > +++ b/Documentation/admin-guide/kernel-parameters.txt
> > > > @@ -318,6 +318,15 @@
> > > >  			Format: <a>,<b>
> > > >  			See also Documentation/input/joydev/joystick.rst
> > > >  
> > > > +	amu=		[ARM64]
> > > > +			Enables or disables detection, enablement and access to
> > > > +			counter registers of the Activity Monitors Unit (AMU).
> > > > +			Format: amu=[0/1/on/off/y/n]
> > > > +			amu=[0/off/n] ensures access to AMU's counter registers
> > > > +				      is not attempted.
> > > > +			amu=[1/on/y] (default) enables detection and access to
> > > > +				     AMU's counter registers.
> > > 
> > > Is the only reason for this parameter to be able to disable the feature
> > > if the firmware doesn't support it? According to the Kconfig entry, you
> > > may see weird behaviour, firmware lock-up. Is the user supposed to try
> > > again with amu=0?
> > > 
> > > I'm not particularly fond of adding kernel parameters to work around
> > > broken firmware. We have other architecture features (e.g. PtrAuth) that
> > > need enabling at EL3 but we don't have such parameters. If it's likely
> > > that we hit this issue in practice, I'd rather have the firmware
> > > describing the presence of AMU via some DT entry. But I'd rather not
> > > bother at all, just get the vendors to update their firmware.
> > 
> > The firmware is supposed to do three actions for the kernel to be able
> > to use the counters: enable access to EL2/EL1, enable the counters and
> > save/restore the counters before/after core-off.
> [...]
> > Therefore, the amu kernel parameter is not only there if the firmware
> > does not support AMU, but it's also there if the firmware support is
> > broken/improper. The kernel parameter was added at Suzuki's
> > recommendation to be able to bypass its use in single kernels that are
> > meant to run on multiple platforms.
> 
> Single kernel images are supposed to run on multiple platforms while
> using the same command line arguments.
> 
> There are many other ways firmware can screw up but I'm not keen on
> working on such assumption and preemptively adding options to ignore CPU
> features.
> 
> > I also believe this is nice to have even for platforms that properly
> > support AMU, but they might not want the use of the feature in the
> > kernel.
> 
> Are there any downsides to this feature? If you want it for testing
> purposes, i.e. different scheduler behaviour, fine by me but I'd change
> the text in the Kconfig to not even imply that firmware is allowed to be
> broken as we have a workaround in the kernel.
> 

This solution would not be appropriate to select different scheduler
behaviours. That would be the end result of "amu=0", but it would not be
a clean way to select the source of information for frequency
invariance. The scheduler and the frequency invariance engine is only
one of the potential users of activity monitors, while this kernel
parameter would disable detection for the full feature so it will affect
frequency invariance behaviour and other future users of the counters.

In no way I want to send the message that firmware is allowed to be
broken or that this is a good way to tune scheduler behaviour.

My flawed logic above was to suggest that a few small reasons (potential 
broken firmware, potential interest to turn off the feature at runtime)
would make a big one to justify the parameter, but none of these
fully stand on their own.

> > > If we drop this parameter, patch 1 would need to change. Otherwise the
> > > patches look fine.
> > 
> > This being said, I agree this was added as a 'just in case' and not as
> > support for a likely scenario, therefore, I don't fully disagree to drop
> > it for now.
> 
> If you need it for testing different scheduler behaviours, maybe
> big.LITTLE where AMU is only supported on some CPUs, than keep it. If
> it's only on the assumption that the firmware may be broken, please
> remove it.
> 

In regards to frequency invariance, there is no downside of using the
feature and, if available, it's preferred to use the counters independent
on whether all CPUs support them on not. But this would be a bad way to
switch between sources of information (cpufreq or counters) for
frequency invariance in any case, so I'll remove the parameter.

Thanks,
Ionela.

> Thanks.
> 
> -- 
> Catalin
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
