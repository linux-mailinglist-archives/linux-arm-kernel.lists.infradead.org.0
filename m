Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C839AEC00E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 09:53:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZMMYUNgczefc90YgPYmdSjCD7FAFPYiFNrmqmGU+1lM=; b=cTQyLHp2KqpgGC
	qPI1P+D8BHOBV8CwL6SVV9onODkRueTnLa9vnmAK3WbjfcL6Mx7q+tvq5x1cFBGcddc/UtUEByH/W
	aIUMGEYbbeGy9uMPf6ZC65/5+Dx9Dtxj8krEOFB/EeajNz/PFKyNlgaYpWUt/zoT0lXoXpEgXg9H3
	UoC0nebPZhTkZExH55AvpI8KynDA1G239TBiUo7FIeu9FwrhCCYSsP98QFCGXkFsVhskqHd2HRFTY
	MtKHDBXQ9PCEt8rq2ekUVroVqkLKxHSCgdAZYU+cUMYhX/N6GCrA0K+RZsmQK+99qD9nQxlRvE5Kb
	5FxFi9JRLAcwPcZN1Enw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSga-0003Dj-3V; Fri, 01 Nov 2019 08:53:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSgU-0003DD-3A
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 08:53:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE8351F1;
 Fri,  1 Nov 2019 01:53:25 -0700 (PDT)
Received: from blommer (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D13B43F719;
 Fri,  1 Nov 2019 01:53:24 -0700 (PDT)
Date: Fri, 1 Nov 2019 08:53:19 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: perf: Simplify the ARMv8 PMUv3 event attributes
Message-ID: <20191101085319.GA3508@blommer>
References: <1572407177-48229-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191031160804.GA28325@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031160804.GA28325@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_015330_178689_2DAE845E 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Shaokun Zhang <zhangshaokun@hisilicon.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 04:08:04PM +0000, Will Deacon wrote:
> On Wed, Oct 30, 2019 at 11:46:17AM +0800, Shaokun Zhang wrote:
> > For each PMU event, there is a ARMV8_EVENT_ATTR(xx, XX) and
> > &armv8_event_attr_xx.attr.attr. Let's redefine the ARMV8_EVENT_ATTR
> > to simplify the armv8_pmuv3_event_attrs.
> > 
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
> > ---
> >  arch/arm64/kernel/perf_event.c | 189 ++++++++++++++---------------------------
> >  1 file changed, 65 insertions(+), 124 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> > index a0b4f1bca491..d0f084939bcf 100644
> > --- a/arch/arm64/kernel/perf_event.c
> > +++ b/arch/arm64/kernel/perf_event.c
> > @@ -159,132 +159,73 @@ armv8pmu_events_sysfs_show(struct device *dev,
> >  }
> 
> [...]
> 
> > +	(&((struct perf_pmu_events_attr[]) { \
> > +		{ .attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
> > +		  .id = config, } \
> > +	})[0].attr.attr)
> 
> I don't get the need for the array here. Why can't you do:
> 
> 	(&((struct perf_pmu_events_attr) {
> 		.attr = ...,
> 		.id = ...,
> 	}).attr.attr)

You need want &(obj.attr.attr) rather than &(obj).attr.attr, i.e.

#define ARMV8_EVENT_ATTR(name, config) \
	(&((struct perf_pmu_events_attr) { \
		.attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
		.id = config, \
	}.attr.attr))
 
... which compiles for me.

It'd be worth checking that yields a working data structure at runtime.

I'm not sure why I did the array hack in the other PMU drivers -- looks like we
can simplify those assuming this works. :)

THanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
