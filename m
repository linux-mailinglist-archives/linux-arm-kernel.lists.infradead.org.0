Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B3C16FBDE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 11:19:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t6I3M117PDtm0EuXpVdI+xHWhNIRQDg50NzeCMukJjs=; b=ZEeqzZJw/OLSB4
	rqGp3iBxMtHr1z6flTtOufOA0e+MHm7o/YiuerypX+syYCmZT0fQh0OlcpSawz7kobaz87Z0Fr41E
	Sr7Wj4wnFoW1D8ZkrySYiZ0Ah96vmZdfFisWQo2ppNCWMw7IcYnYoihQ6S52ydI9TXoxeXcDQuG5H
	9Z0JVBITugHD+TpwRqBXAzTEwO8Q1sVk+nDTwijVo57+yoS1GsvzUiEws44mD0iZhfDOVKQkfOfLF
	n9B9yuwvKraLma+4+9g1ouKj6sY+8FTbLbMfg0aCJewO6NYn1OA0HBwhKt3UpGr0cDz4UWZ8C9AUU
	I6f8TzbrVa6JwHUvDtKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6tmS-0002m1-PH; Wed, 26 Feb 2020 10:19:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6tmK-0002ku-Kp
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 10:18:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9AEA21FB;
 Wed, 26 Feb 2020 02:18:49 -0800 (PST)
Received: from localhost (unknown [10.1.198.53])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3B1DC3F9E6;
 Wed, 26 Feb 2020 02:18:49 -0800 (PST)
Date: Wed, 26 Feb 2020 10:18:47 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v4 6/7] arm64: use activity monitors for frequency
 invariance
Message-ID: <20200226101847.GA19513@arm.com>
References: <20200224141142.25445-1-ionela.voinescu@arm.com>
 <20200224141142.25445-7-ionela.voinescu@arm.com>
 <jhjmu97ygk9.fsf@arm.com>
 <18604cef-1e26-96a6-38b3-ab03b1b53b48@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <18604cef-1e26-96a6-38b3-ab03b1b53b48@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_021856_726209_3ED92A93 
X-CRM114-Status: GOOD (  15.04  )
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
Cc: mark.rutland@arm.com, linux-doc@vger.kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 dietmar.eggemann@arm.com, mingo@redhat.com, viresh.kumar@linaro.org,
 maz@kernel.org, will@kernel.org,
 Valentin Schneider <valentin.schneider@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Valentin, Lukasz,

On Tuesday 25 Feb 2020 at 09:59:20 (+0000), Lukasz Luba wrote:
[..]
> On 2/24/20 6:40 PM, Valentin Schneider wrote:
> > 
> > Ionela Voinescu writes:
> > > +static inline int
> > 
> > That should be bool, seeing what it returns.
> > 

Will do!

[..]
> > > 
> > > +#ifndef arch_cpu_freq_counters
> > > +static __always_inline
> > > +bool arch_cpu_freq_counters(struct cpumask *cpus)
> > > +{
> > > +	return false;
> > > +}
> > > +#endif
> > > 
> > 
> > Apologies for commenting on this only now, I had missed it in my earlier
> > round of review.
> > 
> > I would've liked to keep this contained within arm64 stuff until we agreed
> > on a more generic counter-driven FIE interface, but seems like we can't evade
> > it due to the arch_topology situation.
> > 
> > Would it make sense to relocate this stub to arch_topology.h instead, at
> > least for the time being? That way the only non-arm64 changes are condensed
> > in arch_topology (even if it doesn't change much in terms of header files,
> > since topology.h imports arch_topology.h)
> 
> Or make it as a 'weak' and place it just above the arch_set_freq_scale()
> in arch_topology.c, not touching headers?

Yes, you guys are right, this works better nicely confined to
arch_topology.c/h. As Lukasz suggested, I'll make
arch_cpu_freq_counters (while here, it probably works better renamed to
arch_freq_counters_available) a weak function in arch_topology.c with
its strong definition in arm64/kernel/topology.c.

The diff is large(ish) so I'll push v5 directly with this change.

Thank you both for the review,
Ionela.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
