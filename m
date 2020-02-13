Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D45715BED9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 13:59:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bHJRFy4QO5Q545RYgyOP1u0w4pBMdCxgjhfWdVg2guI=; b=PHUjpq114deMJK
	ng8JVKCpDmlcBDsGxCA0o/CePKhwPQO8njw8x/lbeTknh5kEPVX2KFG8JJ1cuGEMpvc459LyoGHUw
	NPvD5HmWzh4nMOFUT/EZS72eZo8l7YMDhSOiMy3lMshGKA0mqjNTIeaxlXZO4/BGguRQPf9VFRl/e
	QoeRM88Zz2maiJvM7tYkjA+NfqyVa7LKokCmx3aq3yAktime3bm5twkS+NB90ZBHcUSkdgYP6VENP
	yaikLbvAYUEslHHNRHN3OAJYPyvcBE+8A5wCmPTaIjU4RP2p9kb4gSAX0WlMzFdbYH6KXPXQB9t7/
	rMVgAXSccX5IIKaP9hUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2E5a-0008WL-6a; Thu, 13 Feb 2020 12:59:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2E5R-0008V2-9g
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 12:59:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B69091FB;
 Thu, 13 Feb 2020 04:59:20 -0800 (PST)
Received: from localhost (unknown [10.1.198.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 580063F6CF;
 Thu, 13 Feb 2020 04:59:20 -0800 (PST)
Date: Thu, 13 Feb 2020 12:59:18 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH v3 5/7] cpufreq: add function to get the hardware max
 frequency
Message-ID: <20200213125918.GA2397@arm.com>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-6-ionela.voinescu@arm.com>
 <b63a4a47-99e5-9c71-73be-740aedde4714@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b63a4a47-99e5-9c71-73be-740aedde4714@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_045921_378048_E3DDADDD 
X-CRM114-Status: GOOD (  15.13  )
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mingo@redhat.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com, will@kernel.org,
 lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thursday 13 Feb 2020 at 11:59:56 (+0000), Valentin Schneider wrote:
> On 2/11/20 6:45 PM, Ionela Voinescu wrote:
> > +/**
> > + * cpufreq_get_hw_max_freq - get the max hardware frequency of the CPU
> > + * @cpu: CPU number
> > + *
> > + * The default return value is the max_freq field of cpuinfo.
> > + */
> > +__weak unsigned int cpufreq_get_hw_max_freq(unsigned int cpu)
> > +{
> > +	struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
> > +	unsigned int ret_freq = 0;
> > +
> > +	if (policy) {
> > +		ret_freq = policy->cpuinfo.max_freq;
> > +		cpufreq_cpu_put(policy);
> 
> What about intel_pstate / turbo stuff? IIRC one of Giovanni's issues was that
> turbo freq is not always reported as the max freq. Dunno if we can do
> anything about it; at the very least maybe document the caveat?
>

Okay, I can add details in the description in regards to potential
reasons to overwrite this function. But basically this is one of the
reasons for making this a weak function. The best information we can
generically get for maximum hardware frequency is cpuinfo.max_freq.
But if platforms have the possibility to obtain this differently from
either hardware or firmware they can overwrite this.

Thanks,
Ionela.

> > +	}
> > +
> > +	return ret_freq;
> > +}
> > +EXPORT_SYMBOL(cpufreq_get_hw_max_freq);
> > +
> >  static unsigned int __cpufreq_get(struct cpufreq_policy *policy)
> >  {
> >  	if (unlikely(policy_is_inactive(policy)))
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
