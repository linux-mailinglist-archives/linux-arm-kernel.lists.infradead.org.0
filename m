Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5116162E05
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 19:14:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V4je5GYY7qxzImwEfSF534hkHFvs5KWXambUWPBVsEw=; b=fd3LKBhbZBw4u8
	Ms4EGWEDjgqOprkOLwKkU8EiH4gcZ/SUr4bVwf0p+xdWTzcMOPaarzPB7i7c2Is/HXPzUIETItmGW
	N0vIofIipwVZZ4CpBMPKrCbDD6ayJHyGr6c3UxyhApLGki+h41Ety8hr9FQGAyX+EjRJxXXJSpZHX
	ZZvrTWYUyizGEE/k1w1fda17rPWuK3saDkyIyVblCaGDcuaNqYLSuS710mQGuOBPO5jFKpYVTPEBw
	D9aPgGt88cMcpjv0Xw/ONBEYb0uKKUB7His3AmTRf/dyfEhb1gc1HOg8O4U2zpcqDjQAWhEex2rN1
	cKLEZ7y2yVJ2/aCLlTOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j47Nh-0007Vi-CE; Tue, 18 Feb 2020 18:14:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j47NI-0007FN-NB
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 18:13:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD76831B;
 Tue, 18 Feb 2020 10:13:35 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 76EBD3F68F;
 Tue, 18 Feb 2020 10:13:33 -0800 (PST)
Date: Tue, 18 Feb 2020 18:13:31 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH RFC 0/7] perf pmu-events: Support event aliasing for
 system PMUs
Message-ID: <20200218181331.GB9968@lakrids.cambridge.arm.com>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <20200218125707.GB20212@willie-the-truck>
 <a40903fe-d52f-96c6-a06a-fe834d71d625@huawei.com>
 <20200218133943.GF20212@willie-the-truck>
 <627cbc50-4b36-7f7f-179d-3d27d9e0215a@huawei.com>
 <20200218170803.GA9968@lakrids.cambridge.arm.com>
 <cb004f43-b2a4-ae23-9fd3-0f70bd69701b@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb004f43-b2a4-ae23-9fd3-0f70bd69701b@huawei.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_101336_837602_EA8A4ABD 
X-CRM114-Status: GOOD (  32.25  )
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
Cc: "ak@linux.intel.com" <ak@linux.intel.com>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jolsa@redhat.com" <jolsa@redhat.com>, Linuxarm <linuxarm@huawei.com>,
 "acme@kernel.org" <acme@kernel.org>, Joakim Zhang <qiangqing.zhang@nxp.com>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 "alexander.shishkin@linux.intel.com" <alexander.shishkin@linux.intel.com>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "james.clark@arm.com" <james.clark@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 05:58:46PM +0000, John Garry wrote:
> On 18/02/2020 17:08, Mark Rutland wrote:
> > > > I also don't understand how a SoC ID makes things
> > > > any easier in this regard.
> > > It's doesn't necessarily make things easier in this regard. But using a SoC
> > > ID is an alternative to checking the SMMU_ID or the kernel driver having to
> > > know that it was a MMU-600 at all.
> > Using SOC_ID means that going forward, userspace needs to learn about
> > the integration details of each SoC in order to identify a component. As
> > you said:
> > 
> > | As constantly checking what the SoC ID means throughout system components
> > | does not scale.
> > 
> > ... and I think that equally applies to userspace in this case. Who knows how
> > many SoCs are going to have MMU-600?
> > 
> > I also know that SOC_ID is going to be optional, and I think it's near-certain
> > that someone will end up producing two SoCs exposing the same ID.
> 
> Wouldn't different SoCs having same SMC SOC_ID and revision be a (fixable)
> mistake in the SMC FW?
> 
> And if it's not implemented, then no PMU events aliasing in perf tool for
> those uncore PMUs - nothing gets broken though and no regression. But I do
> understand your concern here.
> 
> > For system PMUs, I'd rather the system PMU driver exposed some sort of
> > implementation ID. e.g. the SMMU_ID for SMMU. We can give that a generic name,
> > and mandate that where a driver exposes it, the format/meaning is defined in
> > the documentation for the driver.
> 
> Then doesn't that per-PMU ID qualify as brittle and non-standard also?

Not in my mind; any instances of the same IP can have the same ID,
regardless of which SoC they're in. Once userspace learns about
device-foo-4000, it knows about it on all SoCs. That also means you can
support heterogeneous instances in the same SoC.

If a device varies so much on a SoC-by-SoC basis and or the driver has
no idea what to expose, it could be legitimate for the PMU driver to
expose the SoC ID as its PMU-specific ID, but I don't think we should
make that the common/only case.

> At least the SMC SoC ID is according to some standard.
> 
> And typically most PMU HW would have no ID reg, so where to even get this
> identification info? Joakim Zhang seems to have this problem for the imx8
> DDRC PMU driver.

For imx8, the DT compat string or additional properties on the DDRC node
could be used to imply the id.

> > That can be namespace by driver, so e.g. keys would be smmu_sysfs_name/<id> and
> > ddrc_sysfs_name/<id>.
> > 
> > > > > So even if it is solvable here, the kernel driver(s) will need to be
> > > > > reworked. And that is just solving one case in many.
> > > > PMU drivers will need to expose more information to userspace so that they
> > > > can be identified more precisely, yes. I wouldn't say they would need to be
> > > > "reworked".
> > > OK, so some combination of changes would still be required for the SMMU
> > > PMCG, IORT, and SMMUv3 drivers.
> > To expose the SMMU ID, surely that's just the driver?
> 
> This case is complicated, like others I anticipate.
> 
> So the SMMU PMCG HW has no ID register itself, and this idea relies on using
> the associated SMMUv3 IIDR in lieu. For that, we need to involve the IORT,
> SMMUv3, and SMMU PMCG drivers to create this linkage, and even then I still
> have my doubts on whether this is even proper.

Ok, I hadn't appreciated that the PMCG did not have an ID register
itself.

I think that the relationship between the SMMU and PMCG is a stronger
argument against using the SOC_ID. If the PMCGs in a system are
heterogeneous, then you must know the type of the specific instance.

> Please see https://lore.kernel.org/linux-iommu/1569854031-237636-1-git-send-email-john.garry@huawei.com/
> for reference.
> 
> Or are there
> > implementations where the ID register is bogus and have to be overridden?
> > 
> 
> I will also note that perf tool PMU events framework relies today on
> generating a table of events aliases per CPU and matching based on that. If
> you want to totally disassociate a CPU or any SoC ID mapping, then this will
> require big perf tool rework.

I think that might be necessary, as otherwise we're going to back
ourselves into a corner by building what's simple now.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
