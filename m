Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D53C4EC16C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 11:56:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=snef0Hxh+OfEIb1EEhzXkv99g0xeNa1HKum5/LDIwA0=; b=gkywPYch0MaFbj
	lhqPzXw/0tpp0a5b59ySsxmAxaEFCqVJmsoh9hSBr0JfXR96nPUxHDc+lvDM/UTWMfiqQT6PM2Aw+
	2LJ8Tu1Jq3TmYvOLCOwpnFpWaN2F2JWuzBb1JIKlg00XrO7bkbfbC1m8qjCzYsnctI9015Gug5keJ
	s7A25hfGodsUFoIpObUD92IbCfo3n4GqS0mCn3LMat6RpozylCfmpgDUgVxolMuhSSwV6DjKmdykK
	uxSqPd4T2+dFwBRPeA6klwWia37bk+7no5XmqxECZB113kaDtSGASZ+8EGdA5zreTyj65wwVm8v/U
	zpPCSaSy02huHWgV6KAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQUbA-000381-PQ; Fri, 01 Nov 2019 10:56:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQUb3-00037d-Pp
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 10:56:03 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A1AFC2086D;
 Fri,  1 Nov 2019 10:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572605761;
 bh=fyq1ktqAKxBFtFQnv2nxIVssKLqrcn7vYXZ6kTyoUQI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HkbXKm2GpYU/KA8Ps3hyLitbDxgiN7z/Jrz5G2aDmvndx3HobdJwiQ6MQiuGekuDt
 ggsyRMk4LC1mIb0zQxCG4PzhZgoBlyF5h3Rmj8/Byox8gREjM+s+SW6I/sfz7oYDJM
 5OZYn1LSVuKCbPVQR2/wa1tNbHG3hx1fvIC8T1XQ=
Date: Fri, 1 Nov 2019 10:55:57 +0000
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: perf: Simplify the ARMv8 PMUv3 event attributes
Message-ID: <20191101105557.GC2392@willie-the-truck>
References: <1572407177-48229-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191031160804.GA28325@willie-the-truck>
 <20191101085319.GA3508@blommer>
 <20191101103616.GA2392@willie-the-truck>
 <ddb8d44c-d7cc-5080-1cbc-59f758b699ae@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ddb8d44c-d7cc-5080-1cbc-59f758b699ae@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_035601_858163_74FE73D1 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 10:54:21AM +0000, Robin Murphy wrote:
> On 2019-11-01 10:36 am, Will Deacon wrote:
> > On Fri, Nov 01, 2019 at 08:53:19AM +0000, Mark Rutland wrote:
> > > On Thu, Oct 31, 2019 at 04:08:04PM +0000, Will Deacon wrote:
> > > > On Wed, Oct 30, 2019 at 11:46:17AM +0800, Shaokun Zhang wrote:
> > > > > For each PMU event, there is a ARMV8_EVENT_ATTR(xx, XX) and
> > > > > &armv8_event_attr_xx.attr.attr. Let's redefine the ARMV8_EVENT_ATTR
> > > > > to simplify the armv8_pmuv3_event_attrs.
> > > > > 
> > > > > Cc: Will Deacon <will@kernel.org>
> > > > > Cc: Mark Rutland <mark.rutland@arm.com>
> > > > > Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
> > > > > ---
> > > > >   arch/arm64/kernel/perf_event.c | 189 ++++++++++++++---------------------------
> > > > >   1 file changed, 65 insertions(+), 124 deletions(-)
> > > > > 
> > > > > diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> > > > > index a0b4f1bca491..d0f084939bcf 100644
> > > > > --- a/arch/arm64/kernel/perf_event.c
> > > > > +++ b/arch/arm64/kernel/perf_event.c
> > > > > @@ -159,132 +159,73 @@ armv8pmu_events_sysfs_show(struct device *dev,
> > > > >   }
> > > > 
> > > > [...]
> > > > 
> > > > > +	(&((struct perf_pmu_events_attr[]) { \
> > > > > +		{ .attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
> > > > > +		  .id = config, } \
> > > > > +	})[0].attr.attr)
> > > > 
> > > > I don't get the need for the array here. Why can't you do:
> > > > 
> > > > 	(&((struct perf_pmu_events_attr) {
> > > > 		.attr = ...,
> > > > 		.id = ...,
> > > > 	}).attr.attr)
> > > 
> > > You need want &(obj.attr.attr) rather than &(obj).attr.attr, i.e.
> > > 
> > > #define ARMV8_EVENT_ATTR(name, config) \
> > > 	(&((struct perf_pmu_events_attr) { \
> > > 		.attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
> > > 		.id = config, \
> > > 	}.attr.attr))
> > > ... which compiles for me.
> > 
> > Weird, the following compiles fine for me with both GCC and clang:
> > 
> > #define ARMV8_EVENT_ATTR(name, config)						\
> > 	(&((struct perf_pmu_events_attr) {					\
> > 		.attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL),	\
> > 		.id = config,							\
> > 	}).attr.attr)
> 
> You know that the expressions are equivalent because unary "&" has lower
> precedence than ".", right? ;)

Right, which is why it's weird that Shaokun claims that the version I posted
doesn't compile. I assume it didn't build for Mark either, hence his extra
brackets.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
