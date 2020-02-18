Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFF7162693
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 13:57:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgyX0akJ94a4p826BDOUGJtjRMF2p/CohWikIy3PlSs=; b=VlQF1bOYyudsvn
	ediTvVbgYTa4opgqxj1i7oClEBlhzul+9EudSZbxssJ4k9RMJkG9+huba2IMn2nwV6WUfcRtpZSCT
	QAnZGtNvnE788zmC8wToktCswu/y5tPw7A/ffUwokP7urSpRqINcmFgHwvEJsVil3uhhgTWuux7bO
	oZMQooMUsjkf2wV8POC+rHk8T+qcwD7VgIWXeMkGQMzc/4FRL7NtBcndeDTLI28gcb9p5wx4+Xf7o
	CraGEuzcE1YNCMLRrR3d2/QpKdhWmKZM51RgEj8xZe0KpgVkI+w7kgHNkKgbAdfOsg3Qju6+3SybZ
	TmVSHc2kPwdSpuyOgAww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j42RH-0006kI-0c; Tue, 18 Feb 2020 12:57:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j42R7-0006jq-MI
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 12:57:14 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF01F2067D;
 Tue, 18 Feb 2020 12:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582030633;
 bh=xgj7HIUuh3c9j2fXgc0CIDFvIhaZn0e3I9sVaisiphY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ab7WgANOKYiRaiLca2c/NpH1Jn1FxJy0jOeUR57DeFvcJRjcmRtQW/8iUtRItoK68
 pK2oWvvivsrKOGBDEn9uV/8mYLZNwKS52+0BuGg5Ln0Vai67tF42IWJKgv+FCfHa9b
 rcWajllOO7jY+xk4A+vEfgATRjOqn+Ym6/B+rHE4=
Date: Tue, 18 Feb 2020 12:57:07 +0000
From: Will Deacon <will@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH RFC 0/7] perf pmu-events: Support event aliasing for
 system PMUs
Message-ID: <20200218125707.GB20212@willie-the-truck>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_045713_744284_16029C74 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, ak@linux.intel.com, suzuki.poulose@arm.com,
 peterz@infradead.org, robin.murphy@arm.com, linuxarm@huawei.com,
 acme@kernel.org, linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, james.clark@arm.com,
 namhyung@kernel.org, jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 10:34:58PM +0800, John Garry wrote:
> Currently event aliasing for only CPU and uncore PMUs is supported. In
> fact, only uncore PMUs aliasing for when the uncore PMUs are fixed for a
> CPU is supported, which may not always be the case for certain
> architectures.
> 
> This series adds support for PMU event aliasing for system and other
> uncore PMUs which are not fixed to a specific CPU.
> 
> For this, we introduce support for another per-arch mapfile, which maps a
> particular system identifier to a set of system PMU events for that
> system. This is much the same as what we do for CPU event aliasing.
> 
> To support this, we need to change how we match a PMU to a mapfile,
> whether it should use a CPU or system mapfile. For this we do the
> following:
> 
> - For CPU PMU, we always match for the event mapfile based on the CPUID.
>   This has not changed.
> 
> - For an uncore or system PMU, we match first based on the SYSID (if set).
>   If this fails, then we match on the CPUID.
> 
>   This works for x86, as x86 would not have any system mapfiles for uncore
>   PMUs (and match on the CPUID).
> 
> Initial reference support is also added for ARM SMMUv3 PMCG (Performance
> Monitor Event Group) PMU for HiSilicon hip08 platform with only a single
> event so far - see driver in drivers/perf/arm_smmuv3_pmu.c for that driver.

Why don't we just expose SMMU_IIDR in the SMMUv3 PMU directory, so that
you can key off that? I'm nervous about coming up with a global "SYSID"
when we don't have the ability to standardise anything in that space.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
