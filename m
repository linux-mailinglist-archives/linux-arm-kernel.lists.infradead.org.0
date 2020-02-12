Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B60FE15B1B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 21:19:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XetYKbOLMrGf9lQjWCz9vVSUHDMA1S1pitnJSSrqZsE=; b=hSL17hxRXCWDhI
	71WdrNW2ItxJMu8UduHlosQ24Pm6AZw/sDm7IXjuqI5IKLyYujsEWNwuXl7oT9/RJgDmV5lqXLxwc
	ttlwUMeiF13dlNhtDmB+3jZAtgfTyWZwq7aJDVk2u2kiEaPzXBHp2jmuvZt5raxWeAB90gs9u+uTE
	8nniJrC0tOB6K5QIUXziIkmQTmmvv0bKsShm/GWfmT+VmJuI7rFCpQJIZ5TSZti1x8gYmqrt+d993
	E6H99AkrAyYYxEKU5wb2U4pR6WrCPejjTx+8MRY6vDh0mEmfcTTvrPpmW2nFT6gF3HsaN9ORjATVp
	IreFBb52vLH4ppmPVbXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1yUH-00052s-8U; Wed, 12 Feb 2020 20:19:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1yU9-00051k-UN
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 20:19:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2F4AB328;
 Wed, 12 Feb 2020 12:19:44 -0800 (PST)
Received: from localhost (unknown [10.1.198.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C2DB03F68E;
 Wed, 12 Feb 2020 12:19:43 -0800 (PST)
Date: Wed, 12 Feb 2020 20:19:42 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v3 1/7] arm64: add support for the AMU extension v1
Message-ID: <20200212201942.GA12970@arm.com>
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
X-CRM114-CacheID: sfid-20200212_121950_023474_3EC45989 
X-CRM114-Status: GOOD (  19.42  )
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

Hi guys,

On Wednesday 12 Feb 2020 at 16:20:56 (+0000), Suzuki Kuruppassery Poulose wrote:
> > For better handling I could have a cpumask_available check before the
> > allocation just in case the capability type changes in the future, or to
> > at least not rely on assumptions based on the type of the capability.
> > 
> > The reason this is dynamic is that I wanted to avoid the memory being
> > allocated when disable_amu is true - as Valentin mentioned in a comment
> > in the meantime "the static allocation is done against NR_CPUS whereas
> > the dynamic one is done against nr_cpu_ids".
> > 
> > Would this be alright?
> > 
> > diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> > index 182e05ca3410..4cee6b147ddd 100644
> > --- a/arch/arm64/kernel/cpufeature.c
> > +++ b/arch/arm64/kernel/cpufeature.c
> > @@ -1222,7 +1222,11 @@ static bool has_amu(const struct arm64_cpu_capabilities *cap,
> >           * The enable function will also print a detection message.
> >           */
> > -       if (!disable_amu && !zalloc_cpumask_var(&amu_cpus, GFP_KERNEL)) {
> > +       if (disable_amu)
> > +               return false;
> > +
> > +       if (!cpumask_available(amu_cpus) &&
> > +           !zalloc_cpumask_var(&amu_cpus, GFP_KERNEL)) {
> >                  pr_err("Activity Monitors Unit (AMU): fail to allocate memory");
> >                  disable_amu = true;
> >          }

Going down the rabbit hole in regards to this section, it seems it's
actually not fine. When CONFIG_CPUMASK_OFFSTACK==y it fails to
allocate memory because zalloc_cpumask_var cannot be used before
initializing the slub allocator (mm_init) to allocate a cpumask.

The alternative alloc_bootmem_cpumask_var is an __init function that
can be used only during the initialization phase, which is not the case
for has_amu that can be called later (for hotplugged CPUs). Therefore,
dynamic allocation is not an option here.

Thanks,
Ionela.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
