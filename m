Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9250115BBFB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 10:47:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVomCVU931w6xiAdZP+r13WIgTQS8YwuPHyFiobcKpw=; b=X/mQ9rO2fer3ni
	fmAqLi4rTmx0P8YMDNWVMi3uK2iuIzJj/YzAafZ5fuQKKSDp5JWbB7Di83F27Ly+44L8lMcM5fOvy
	j3fFwjWIraMjwkl96I3J8y40eFxxUiazIHdv3aAnm1CIYZ97YaYo1CNGWlPRKTfaiXYA+wP3EkLqK
	vjOUlARixEugkB/XZ6ZhbNgBYqzBRLT6RXvGcvBcr/BZ6iJAyxHJPcTvVYUwKQh2aWuD3odL1oRSt
	RwK6lHx6krrsR4BDmoZhs50N87tZbZyM+iakulZcw5/aIJtzR76i9W0e3XuuAt/bCNtXsL8Xx8oFm
	AtB853LmgblQmjD63l1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2B5a-0001vP-Hg; Thu, 13 Feb 2020 09:47:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2B5P-0001uV-Lk
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 09:47:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0132A1FB;
 Thu, 13 Feb 2020 01:47:05 -0800 (PST)
Received: from localhost (unknown [10.1.198.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 959CF3F6CF;
 Thu, 13 Feb 2020 01:47:05 -0800 (PST)
Date: Thu, 13 Feb 2020 09:47:04 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v3 6/7] arm64: use activity monitors for frequency
 invariance
Message-ID: <20200213094704.GA30335@arm.com>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-7-ionela.voinescu@arm.com>
 <a63fd15f-f02d-6afe-6e1f-817b9eb452d1@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a63fd15f-f02d-6afe-6e1f-817b9eb452d1@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_014707_967267_8C596AC5 
X-CRM114-Status: GOOD (  16.53  )
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
 mingo@redhat.com, viresh.kumar@linaro.org, sudeep.holla@arm.com,
 will@kernel.org, valentin.schneider@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lukasz,

[..]
> > +
> > +/* Obtain max frequency (in KHz) as reported by hardware */
> > +__weak unsigned int cpu_get_max_freq(unsigned int cpu)
> > +{
> > +	return 0;
> > +}
> > +
> > +#ifdef CONFIG_CPU_FREQ
> > +/* Replace max frequency getter with cpufreq based function */
> > +#define cpu_get_max_freq cpufreq_get_hw_max_freq
> > +#endif
> 
> Can we just use cpufreq_get_hw_max_freq()?
> We have cpufreq_get_hw_max_freq returning 0 in such case, so it should
> be OK.
> 

The reasoning for the implementation is the following:
 - For CONFIG_CPU_FREQ we use cpufreq_get_hw_max_freq (weak default or
   strong alternative)
 - For !CONFIG_CPU_FREQ cpufreq_get_hw_max_freq returns 0 - it signals
   that cpufreq cannot return the hardware max frequency. In this case
   cpu_get_max_freq is used (weak default or strong alternative
   implementation).

> Is there a possibility that some platform which has !CONFIG_CPU_FREQ
> would define its own cpu_get_max_freq() overwriting the weak function
> above?
> Based on the code which checks 'if (unlikely(!max_freq_hz))' it should,
> otherwise 'valid_cpus' is not set.
> 
> I would assume that we won't see such platform, interested
> in AMU freq invariance without CONFIG_CPU_FREQ.
> 
> We already have a lot of these defines or __weak functions, which is
> hard to follow.

There is no dependency between CONFIG_CPU_FREQ and frequency invariance.
Therefore, I did not see a reason to potentially bypass the use of AMU
for frequency invariance for !CONFIG_CPU_FREQ.

But I agree it makes the code harder to read so I can remove
cpu_get_max_freq and keep cpufreq_get_hw_max_freq only until there is a
provable need for this. 

Thank you for the review,
Ionela.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
