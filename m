Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C95D11B4EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35wAzsJLrBQEdwAU0e48WwS/aKZdcRcs2HxsPVCPS5Y=; b=NjzbefJKswUwI2
	essIQUGblYth8tU8t0KlEsw8jA14JgaNgvT0tIDa+1ZyeWuZpzIIKDoBTDQzNH+TT7hbzbuJh+23a
	HtHMrJzwvpvMezXpGzinBPW1GZtt0FEldAxudS0pKG+eQV3ZXHJ2RCGrGb7lAFoPxo52s8EuyadPx
	S9HFOYAUBZiG+w3LhHqhYAQbwQoMQMbLqllKSQaYlLI3qh2uMxO/a594x9Ika0ff/oVkIggpm+JeJ
	oazTe6uP3f+lJWot/kBF9wntB0cZfowmFSDtDaBUzaaH/G4MZAPFBLq1LAJzQWWH9ejgJPe7qDMSN
	eOMICtMWtqx4Sk0TY2wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ9BJ-0001hS-Vm; Mon, 13 May 2019 11:31:45 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ9BC-0001gW-JH
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:31:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7EEAA374;
 Mon, 13 May 2019 04:31:36 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EDCB63F703;
 Mon, 13 May 2019 04:31:33 -0700 (PDT)
Date: Mon, 13 May 2019 12:31:27 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH v3 0/5] arm64: SPE ACPI enablement
Message-ID: <20190513113127.GA10384@e107155-lin>
References: <20190503232407.37195-1-jeremy.linton@arm.com>
 <5eaa1607-4bf0-a320-e9cf-2d51eca912c6@huawei.com>
 <82032e5b-0cb5-e48f-ab51-ba5d5f9dceec@arm.com>
 <819de863-92ff-51c5-9c35-880db4f6a922@huawei.com>
 <20190508165149.GB21553@e107155-lin>
 <20190509092810.GC2667@brain-police>
 <20190509103559.GB8239@e107155-lin>
 <20190509141350.GF8239@e107155-lin>
 <20190513105631.GB6711@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513105631.GB6711@fuggles.cambridge.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_043138_648240_551E1D7C 
X-CRM114-Status: GOOD (  25.01  )
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

On Mon, May 13, 2019 at 11:56:31AM +0100, Will Deacon wrote:
> Hi Sudeep,
> 
> On Thu, May 09, 2019 at 03:13:50PM +0100, Sudeep Holla wrote:
> > On Thu, May 09, 2019 at 11:35:59AM +0100, Sudeep Holla wrote:
> > > On Thu, May 09, 2019 at 10:28:11AM +0100, Will Deacon wrote:
> > 
> > [...]
> > 
> > > >
> > > > Since SPE uses virtual addressing, we don't really care about the underlying
> > > > page layout so there's no need to use higher-order allocations. I suppose we
> > > > could theoretically map them at the pmd level in some cases, but ignoring
> > > > them should also be harmless and I suspect you can delete the check.
> > > >
> > >
> > > Yes, I did a quick look to see if we can do that, but couldn't find a clue.
> > > Not sure if that's any optimisation, we can use order from page_private
> > > and set the values accordingly ?
> > >
> > And I forgot to add the diff that I mentioned above, something like the
> > patch below.
> > 
> > Regards,
> > Sudeep
> > 
> > -->8
> > 
> > diff --git i/drivers/perf/arm_spe_pmu.c w/drivers/perf/arm_spe_pmu.c
> > index 7cb766dafe85..45cd62517080 100644
> > --- i/drivers/perf/arm_spe_pmu.c
> > +++ w/drivers/perf/arm_spe_pmu.c
> > @@ -827,7 +827,7 @@ static void arm_spe_pmu_read(struct perf_event *event)
> >  static void *arm_spe_pmu_setup_aux(struct perf_event *event, void **pages,
> >  				   int nr_pages, bool snapshot)
> >  {
> > -	int i, cpu = event->cpu;
> > +	int i, j, cpu = event->cpu;
> >  	struct page **pglist;
> >  	struct arm_spe_pmu_buf *buf;
> >  
> > @@ -859,11 +859,12 @@ static void *arm_spe_pmu_setup_aux(struct perf_event *event, void **pages,
> >  		struct page *page = virt_to_page(pages[i]);
> >  
> >  		if (PagePrivate(page)) {
> > -			pr_warn("unexpected high-order page for auxbuf!");
> > -			goto out_free_pglist;
> > +			for (j = 0; j < 1 << page_private(page); j++)
> > +				pglist[i + j] = page++;
> > +			i += j - 1;
> > +		} else {
> > +			pglist[i] = page;
> 
> Hmm. Given that vmap() doesn't do anything special for high-order pages
> and rb_alloc_aux()/rb_alloc_aux_page() already split the allocation up
> for the page array, what does your change accomplish on top of that?
> 

Not much, instead of computing page ptr for each page using virt_to_page,
we jump pointers automatically for all the pages that are private.

page_private(page) holds the order. i.e. for 2MB high order allocation
we can skip calling virt_to_page for 511 pages that are contiguous.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
