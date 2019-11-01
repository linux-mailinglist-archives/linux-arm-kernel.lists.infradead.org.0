Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18829EC4C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 15:32:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZYDUWEHZTh3SbDHcPSHkPpNcdRRLl80oMOLG7gzEkmY=; b=DB0jDpnS9Mluub
	qWHPm5/n1qMGimVDn60HqEhtjGOStBcpwZ+WAkKBIryY/KOyZUk2cMy/OLOJ/Qo85RD+ill6IqufR
	VQUNJyhj16BEPJWGupqCpvaiXCfzcjty1tH3WONafa8AmNsTn7y0AvYsIehdI3Az6cPmLxyKJjqW/
	iLf3/1p3KMH04flJk+TqBSpYSYqiz7N+fV1N+inhQQAXUr269ZCcTRP5PaAn1kvhUjSYPszbATbyd
	99q8P2IgZ3y1J0z/Xo9HZyvkCV+RuSrUWV0yrVHR9+JIKWSAvSQMNs4lkuK8V2Ez/DXB0HNPMHOP4
	6i+YyLjpv/FBMBf9/S6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQXyq-0006Ri-68; Fri, 01 Nov 2019 14:32:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQXyh-0006RK-Tx
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 14:32:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E65431F;
 Fri,  1 Nov 2019 07:32:39 -0700 (PDT)
Received: from blommer (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 64A1B3F718;
 Fri,  1 Nov 2019 07:32:38 -0700 (PDT)
Date: Fri, 1 Nov 2019 14:32:32 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: perf: Simplify the ARMv8 PMUv3 event attributes
Message-ID: <20191101143231.GA13020@blommer>
References: <1572407177-48229-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191031160804.GA28325@willie-the-truck>
 <20191101085319.GA3508@blommer>
 <20191101103616.GA2392@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101103616.GA2392@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_073240_014547_CEA7A24E 
X-CRM114-Status: GOOD (  19.32  )
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

On Fri, Nov 01, 2019 at 10:36:17AM +0000, Will Deacon wrote:
> On Fri, Nov 01, 2019 at 08:53:19AM +0000, Mark Rutland wrote:
> > On Thu, Oct 31, 2019 at 04:08:04PM +0000, Will Deacon wrote:
> > > On Wed, Oct 30, 2019 at 11:46:17AM +0800, Shaokun Zhang wrote:
> > > > For each PMU event, there is a ARMV8_EVENT_ATTR(xx, XX) and
> > > > &armv8_event_attr_xx.attr.attr. Let's redefine the ARMV8_EVENT_ATTR
> > > > to simplify the armv8_pmuv3_event_attrs.
> > > > 
> > > > Cc: Will Deacon <will@kernel.org>
> > > > Cc: Mark Rutland <mark.rutland@arm.com>
> > > > Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
> > > > ---
> > > >  arch/arm64/kernel/perf_event.c | 189 ++++++++++++++---------------------------
> > > >  1 file changed, 65 insertions(+), 124 deletions(-)
> > > > 
> > > > diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> > > > index a0b4f1bca491..d0f084939bcf 100644
> > > > --- a/arch/arm64/kernel/perf_event.c
> > > > +++ b/arch/arm64/kernel/perf_event.c
> > > > @@ -159,132 +159,73 @@ armv8pmu_events_sysfs_show(struct device *dev,
> > > >  }
> > > 
> > > [...]
> > > 
> > > > +	(&((struct perf_pmu_events_attr[]) { \
> > > > +		{ .attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
> > > > +		  .id = config, } \
> > > > +	})[0].attr.attr)
> > > 
> > > I don't get the need for the array here. Why can't you do:
> > > 
> > > 	(&((struct perf_pmu_events_attr) {
> > > 		.attr = ...,
> > > 		.id = ...,
> > > 	}).attr.attr)
> > 
> > You need want &(obj.attr.attr) rather than &(obj).attr.attr, i.e.
> > 
> > #define ARMV8_EVENT_ATTR(name, config) \
> > 	(&((struct perf_pmu_events_attr) { \
> > 		.attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
> > 		.id = config, \
> > 	}.attr.attr))
> >  
> > ... which compiles for me.
> 
> Weird, the following compiles fine for me with both GCC and clang:
> 
> #define ARMV8_EVENT_ATTR(name, config)						\
> 	(&((struct perf_pmu_events_attr) {					\
> 		.attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL),	\
> 		.id = config,							\
> 	}).attr.attr)

Works for me, too (I'm using the kernel.org crosstool GCC 8.1.0).

I must've messed up locally such that I had (&obj).attr.attr.

> > It'd be worth checking that yields a working data structure at runtime.
> 
> ...and perf list works as expected.

Perfect.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
