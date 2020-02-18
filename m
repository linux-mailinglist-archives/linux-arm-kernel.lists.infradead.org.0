Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93753162B8D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:08:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QwJD7gCIDh/NS+5I61NrgdOBUZpunTfrY2BlfUACQX8=; b=ANtgXMLqRPQuz3
	JeDb9MpHTAZhDwfEA15l4GB0VBC716QExHdYQkes5UJIuq7tbpJTKp5CiF0pdYT0OnLY3t20nQ9os
	f4osXPUNxEdizx4avcfAvkg0G2dVym/266X/Fi02Kav0q2HTSy8mXD0FJzKZ1Yxls2EgS1OFu5gYP
	two9bWNgqYtqbGli+KMYLDER+qCFjmlIs2j3jmBoVA972kjdrX6bYC5sQqVs9ij6m709SiRSic2Xz
	gBCHBSqj/Fv1ck09fB75bmYYLIm8JQcpp4JcFbGxnG0S5YDAWFsfKmQ6Xgk92sWqRl6vt28GpMhMO
	QulDudDGkJIghYdFztng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46MA-00087M-4G; Tue, 18 Feb 2020 17:08:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46M1-00086T-5v
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:08:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AFF7731B;
 Tue, 18 Feb 2020 09:08:10 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9A9DF3F703;
 Tue, 18 Feb 2020 09:08:08 -0800 (PST)
Date: Tue, 18 Feb 2020 17:08:03 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH RFC 0/7] perf pmu-events: Support event aliasing for
 system PMUs
Message-ID: <20200218170803.GA9968@lakrids.cambridge.arm.com>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <20200218125707.GB20212@willie-the-truck>
 <a40903fe-d52f-96c6-a06a-fe834d71d625@huawei.com>
 <20200218133943.GF20212@willie-the-truck>
 <627cbc50-4b36-7f7f-179d-3d27d9e0215a@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <627cbc50-4b36-7f7f-179d-3d27d9e0215a@huawei.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_090813_309827_0872B6E3 
X-CRM114-Status: GOOD (  27.97  )
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
Cc: ak@linux.intel.com, Joakim Zhang <qiangqing.zhang@nxp.com>,
 suzuki.poulose@arm.com, peterz@infradead.org, Will Deacon <will@kernel.org>,
 linuxarm@huawei.com, acme@kernel.org, linux-kernel@vger.kernel.org,
 zhangshaokun@hisilicon.com, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, james.clark@arm.com, namhyung@kernel.org, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 04:19:32PM +0000, John Garry wrote:
> > > 
> > > > Why don't we just expose SMMU_IIDR in the SMMUv3 PMU directory, so that
> > > > you can key off that?
> > > 
> > > That does not sound like a standard sysfs interface.
> > 
> > It's standard in the sense that PMUs already have their own directory under
> > sysfs where you can put things.
> 
> Sure, but then the perf tool will need to be able to interpret all these
> custom PMU files, which has scalability issues.
> 
> Maybe this would work and I did consider it, but another concern is that the
> PMU drivers will have problems making available some implementation-specific
> identifier at all.
> 
> For example, the "caps" directory is a
> > dumping ground for all sorts of PMU-specific information.
> > 
> > On the other hand, saying "please go figure out which SoC you're on"
> > certainly isn't standard and is likely to lead to unreliable, spaghetti
> > code.
> 
> I'm not sure how. The perf tool PMU event aliasing already takes a few
> certain steps to figure out which cpuid to use:
> 
> static char *perf_pmu__getcpuid(struct perf_pmu *pmu)
> {
> 	char *cpuid;
> 	static bool printed;
> 
> 	cpuid = getenv("PERF_CPUID");
> 	if (cpuid)
> 		cpuid = strdup(cpuid);
> 	if (!cpuid)
> 		cpuid = get_cpuid_str(pmu);
> 	if (!cpuid)
> 		return NULL;
> 
> 	if (!printed) {
> 		pr_debug("Using CPUID %s\n", cpuid);
> 		printed = true;
> 	}
> 	return cpuid;
> }
> 
> And this would be something similar - just read some sysfs file.
> 
> > 
> > > Anyway, I don't think that works for every case, quoting from
> > > https://lkml.org/lkml/2019/10/16/465:
> > > 
> > > "> Note: I do acknowledge that an overall issue is that we assume all PMCG
> > > IMP DEF events are same for a given SMMU model.
> > > 
> > > That assumption does technically fail already - I know MMU-600 has
> > > different IMP-DEF events for its TCU and TBUs, however as long as we can
> > > get as far as "this is some part of an MMU-600" the driver should be
> > > able to figure out the rest ..."
> > 
> > Perhaps I'm misreading this, but it sounds like if you knew it was an
> > MMU-600 then you'd be ok. I also don't understand how a SoC ID makes things
> > any easier in this regard.
> 
> It's doesn't necessarily make things easier in this regard. But using a SoC
> ID is an alternative to checking the SMMU_ID or the kernel driver having to
> know that it was a MMU-600 at all.

Using SOC_ID means that going forward, userspace needs to learn about
the integration details of each SoC in order to identify a component. As
you said:

| As constantly checking what the SoC ID means throughout system components
| does not scale.

... and I think that equally applies to userspace in this case. Who knows how
many SoCs are going to have MMU-600?

I also know that SOC_ID is going to be optional, and I think it's near-certain
that someone will end up producing two SoCs exposing the same ID.

For system PMUs, I'd rather the system PMU driver exposed some sort of
implementation ID. e.g. the SMMU_ID for SMMU. We can give that a generic name,
and mandate that where a driver exposes it, the format/meaning is defined in
the documentation for the driver.

That can be namespace by driver, so e.g. keys would be smmu_sysfs_name/<id> and
ddrc_sysfs_name/<id>.

> > > So even if it is solvable here, the kernel driver(s) will need to be
> > > reworked. And that is just solving one case in many.
> > 
> > PMU drivers will need to expose more information to userspace so that they
> > can be identified more precisely, yes. I wouldn't say they would need to be
> > "reworked".
> 
> OK, so some combination of changes would still be required for the SMMU
> PMCG, IORT, and SMMUv3 drivers.

To expose the SMMU ID, surely that's just the driver? Or are there
implementations where the ID register is bogus and have to be overridden?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
