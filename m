Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A7F162741
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 14:40:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4VZ1eii75zZDXNfV5Svuky7PY4tGHjJRHklifM7nyD8=; b=jrdUkkTNuVbWO8
	TYB+UFPiYOasNHJV4Fgg+d4GlcikhaPi5MM1IT01BsM9y+wfaQ9cZ4fE7ZRmpNeKE7HGhtlvHD3P1
	+YB+Rd2Ky+oVMHbt7OefXVbJpiwEYJFGqwI5h8xyhECN2tDEoIG6ZcbQp+bwEO2Sgj4GRtAzWG/ku
	drixfhJfzWHBN3sWXMa52Uo1C1yOQbKNJfm2wXOZUM7zNvSpg+8FVnPabkmq8jeYpvyEQIhVFQPt4
	gGS3yptqHbGBY3BrC5s2E6OKeOD8rUbzOCsbWJqHQ/xqNUbF81oW102zr3UBVgEU4snrGJ4228oaI
	Dc+6/jzMhWDUV0GKRLvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j436m-0000E8-I1; Tue, 18 Feb 2020 13:40:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j436M-00006K-CB
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 13:39:52 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8578A2173E;
 Tue, 18 Feb 2020 13:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582033190;
 bh=8MIgSUVG1vBHF+xjowMLhULulLb4CVftpGAFG9luE9o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z1cpeQqTDA28ONjB3IwZuJRuSQO+JuDzB6ePSCf9UaBMYkSo8LemaZzTO6EYjRAYy
 aCOR+yemsiYGuUoOukhNG5eMAvDQhIV1KKEkrRkzk6G+j3XXPUOECc+d6DzxgFVIll
 t2LOdnA4KLsCFXarF8XMG87Hsw74ViNntaIUYWGo=
Date: Tue, 18 Feb 2020 13:39:43 +0000
From: Will Deacon <will@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH RFC 0/7] perf pmu-events: Support event aliasing for
 system PMUs
Message-ID: <20200218133943.GF20212@willie-the-truck>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <20200218125707.GB20212@willie-the-truck>
 <a40903fe-d52f-96c6-a06a-fe834d71d625@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a40903fe-d52f-96c6-a06a-fe834d71d625@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_053950_451669_A5CC6E8A 
X-CRM114-Status: GOOD (  30.64  )
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

On Tue, Feb 18, 2020 at 01:24:38PM +0000, John Garry wrote:
> On 18/02/2020 12:57, Will Deacon wrote:
> > On Fri, Jan 24, 2020 at 10:34:58PM +0800, John Garry wrote:
> > > Currently event aliasing for only CPU and uncore PMUs is supported. In
> > > fact, only uncore PMUs aliasing for when the uncore PMUs are fixed for a
> > > CPU is supported, which may not always be the case for certain
> > > architectures.
> > > 
> > > This series adds support for PMU event aliasing for system and other
> > > uncore PMUs which are not fixed to a specific CPU.
> > > 
> > > For this, we introduce support for another per-arch mapfile, which maps a
> > > particular system identifier to a set of system PMU events for that
> > > system. This is much the same as what we do for CPU event aliasing.
> > > 
> > > To support this, we need to change how we match a PMU to a mapfile,
> > > whether it should use a CPU or system mapfile. For this we do the
> > > following:
> > > 
> > > - For CPU PMU, we always match for the event mapfile based on the CPUID.
> > >    This has not changed.
> > > 
> > > - For an uncore or system PMU, we match first based on the SYSID (if set).
> > >    If this fails, then we match on the CPUID.
> > > 
> > >    This works for x86, as x86 would not have any system mapfiles for uncore
> > >    PMUs (and match on the CPUID).
> > > 
> > > Initial reference support is also added for ARM SMMUv3 PMCG (Performance
> > > Monitor Event Group) PMU for HiSilicon hip08 platform with only a single
> > > event so far - see driver in drivers/perf/arm_smmuv3_pmu.c for that driver.
> > 
> > Why don't we just expose SMMU_IIDR in the SMMUv3 PMU directory, so that
> > you can key off that?
> 
> That does not sound like a standard sysfs interface.

It's standard in the sense that PMUs already have their own directory under
sysfs where you can put things. For example, the "caps" directory is a
dumping ground for all sorts of PMU-specific information.

On the other hand, saying "please go figure out which SoC you're on"
certainly isn't standard and is likely to lead to unreliable, spaghetti
code.

> Anyway, I don't think that works for every case, quoting from
> https://lkml.org/lkml/2019/10/16/465:
> 
> "> Note: I do acknowledge that an overall issue is that we assume all PMCG
> IMP DEF events are same for a given SMMU model.
> 
> That assumption does technically fail already - I know MMU-600 has
> different IMP-DEF events for its TCU and TBUs, however as long as we can
> get as far as "this is some part of an MMU-600" the driver should be
> able to figure out the rest ..."

Perhaps I'm misreading this, but it sounds like if you knew it was an
MMU-600 then you'd be ok. I also don't understand how a SoC ID makes things
any easier in this regard.

> So even if it is solvable here, the kernel driver(s) will need to be
> reworked. And that is just solving one case in many.

PMU drivers will need to expose more information to userspace so that they
can be identified more precisely, yes. I wouldn't say they would need to be
"reworked".

> I'm nervous about coming up with a global "SYSID"
> > when we don't have the ability to standardise anything in that space.
> 
> I understand totally, especially if any sysid is based on DT bindings.

Well if this is going to be ACPI-only then it's a non-starter.

> But this is some sort of standardization:
> https://developer.arm.com/docs/den0028/c, see SMCCC_ARCH_SOC_ID

Yay, firmware :/

Even if this was widely implemented (it's not), I still think that it's
the wrong level of abstraction. Why not do away with ACPI/DT entirely
and predicate everything off the SoC ID?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
