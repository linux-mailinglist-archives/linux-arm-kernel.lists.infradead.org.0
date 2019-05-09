Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFBD1886C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 12:36:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qx5+HlRtR1fMZFa1cWHHLMh1nlCOdtpwnxFKWYn41+Y=; b=ubui9ytBKdeAPv
	zE16S2A7R/TxjWQydTFhAdPZsqrQv6buTc3IEbO6k/Vtub820RwsNJ7iK0VzgKlEkHNG34BmmId4W
	tDYAriob651Le1mfo5rfhRKYnwNr3HwzEdMkfu3aWpQac2Hz/ICS9c+OrLXPqWxXbhdK94iu9jyJ1
	44CKTyVkU7CpvzjjuG+o9feHX1SNw8ulRGN4uP3uhthrOu32d4ND04vOUgoXedm3eI8LFJfor9gCq
	59o2ISw2wk94NB6snRm/74ZSJIf8wcZXGw3zJw30y/xdgN2zeFY115D5dI6PF3CAVHCjDx5i8pEQp
	qR+x/UVo4KsOG6EUBqYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOgPM-0004cZ-EZ; Thu, 09 May 2019 10:36:12 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOgPF-0004cB-VK
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 10:36:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7715DA78;
 Thu,  9 May 2019 03:36:04 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EBFAE3F238;
 Thu,  9 May 2019 03:36:01 -0700 (PDT)
Date: Thu, 9 May 2019 11:35:59 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH v3 0/5] arm64: SPE ACPI enablement
Message-ID: <20190509103559.GB8239@e107155-lin>
References: <20190503232407.37195-1-jeremy.linton@arm.com>
 <5eaa1607-4bf0-a320-e9cf-2d51eca912c6@huawei.com>
 <82032e5b-0cb5-e48f-ab51-ba5d5f9dceec@arm.com>
 <819de863-92ff-51c5-9c35-880db4f6a922@huawei.com>
 <20190508165149.GB21553@e107155-lin>
 <20190509092810.GC2667@brain-police>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509092810.GC2667@brain-police>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_033606_021221_6EFE7DEF 
X-CRM114-Status: GOOD (  31.44  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 catalin.marinas@arm.com, john.garry@huawei.com, rjw@rjwysocki.net,
 linuxarm@huawei.com, Jeremy Linton <jeremy.linton@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-acpi@vger.kernel.org,
 Hongbo Yao <yaohongbo@huawei.com>, Hanjun Guo <guohanjun@huawei.com>,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 10:28:11AM +0100, Will Deacon wrote:
> On Wed, May 08, 2019 at 05:51:49PM +0100, Sudeep Holla wrote:
> > On Wed, May 08, 2019 at 05:35:51PM +0800, Hanjun Guo wrote:
> > > +Cc Alexander.
> > >
> > > On 2019/5/8 1:58, Jeremy Linton wrote:
> > > > Hi,
> > > >
> > > > On 5/4/19 6:06 AM, Hanjun Guo wrote:
> > > >> Hi Jeremy, Mark,
> > > >>
> > > >> On 2019/5/4 7:24, Jeremy Linton wrote:
> > > >>> This patch series enables the Arm Statistical Profiling
> > > >>> Extension (SPE) on ACPI platforms.
> > > >>>
> > > >>> This is possible because ACPI 6.3 uses a previously
> > > >>> reserved field in the MADT to store the SPE interrupt
> > > >>> number, similarly to how the normal PMU is described.
> > > >>> If a consistent valid interrupt exists across all the
> > > >>> cores in the system, a platform device is registered.
> > > >>> That then triggers the SPE module, which runs as normal.
> > > >>>
> > > >>> We also add the ability to parse the PPTT for IDENTICAL
> > > >>> cores. We then use this to sanity check the single SPE
> > > >>> device we create. This creates a bit of a problem with
> > > >>> respect to the specification though. The specification
> > > >>> says that its legal for multiple tree's to exist in the
> > > >>> PPTT. We handle this fine, but what happens in the
> > > >>> case of multiple tree's is that the lack of a common
> > > >>> node with IDENTICAL set forces us to assume that there
> > > >>> are multiple non-IDENTICAL cores in the machine.
> > > >>
> > > >> Adding this patch set on top of latest mainline kernel,
> > > >> and tested on D06 which has the SPE feature, in boot message
> > > >> shows it was probed successfully:
> > > >>
> > > >> arm_spe_pmu arm,spe-v1: probed for CPUs 0-95 [max_record_sz 128, align 4, features 0x7]
> > > >>
> > > >> but when I test it with spe events such as
> > > >>
> > > >> perf record -c 1024 -e arm_spe_0/branch_filter=0/ -o spe ls
> > > >>
> > > >> it fails with:
> > > >> failed to mmap with 12 (Cannot allocate memory),
> > > >>
> > > >> Confirmed that patch [0] is merged and other perf events are working
> > > >> fine.
> > > >
> > > > Its pretty easy to get into the weeds with this driver, does it work with examples like:
> > > >
> > > > https://lkml.org/lkml/2018/1/14/122
> > >
> > > No, not work at all.
> > >
> > > SPE works on 5.0, but not work after 5.1-rc1, bisected to this commit:
> > >
> > > 5768402fd9c6 perf/ring_buffer: Use high order allocations for AUX buffers optimistically
> > >
> > 
> > Indeed this patch breaks SPE. As mentioned in the patch, it uses high
> > order allocations for AUX buffers and SPE PMU setup_aux explicitly
> > fails with the warning "unexpected high-order page for auxbuf!" if
> > it encounters one.
> > 
> > I don't know the intention of that check in SPE. Will ?
> 
> Since SPE uses virtual addressing, we don't really care about the underlying
> page layout so there's no need to use higher-order allocations. I suppose we
> could theoretically map them at the pmd level in some cases, but ignoring
> them should also be harmless and I suspect you can delete the check.
>

Yes, I did a quick look to see if we can do that, but couldn't find a clue.
Not sure if that's any optimisation, we can use order from page_private
and set the values accordingly ?

> Does the patch below fix the problem?
>

Yes it should help, I tried exactly the same thing yesterday and it does
fix the issue.

Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
