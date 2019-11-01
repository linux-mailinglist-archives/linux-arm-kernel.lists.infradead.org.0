Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2431BEC14D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 11:36:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQDWqaDrcdergqQtQiLV/i4jmfLxhIxoE66NS22/LBk=; b=GdXrZS+WDhnXpz
	syKwS5jBGEVvQxDNy4NPTHSymcTi2cRwQBKkCIfycHG6DfUaOxX+dYeeKft0/h2GmngsNvP9gZPmQ
	MtOiPCWSjUx6IK0XegcbLdOuL9k4BzAp9avUsHjeNdJjTGDur0XoAAW6C1/tY5+yG49owZC2lCHnU
	qLdCViwDzkFH6VBBIKhnVZY99pBZYIE9zMUFIXmdwixWOciMNa63tolRFECAQP9z9PTesqwdq53HW
	jLkYT/DABacbamXXAyotG5WVHMy3iwzUIglBA8K9GecrtLnItKcS+eUSA4f6qdKClr+2U0XpJ9D+3
	LhniQy86Vjyrk4dKtM7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQUI9-0003vy-Uv; Fri, 01 Nov 2019 10:36:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQUI2-0003vY-G6
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 10:36:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1DD6021734;
 Fri,  1 Nov 2019 10:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572604581;
 bh=vCuqtWKgjpBICfNZhWoB48Iuo1vJLUTpnIroNeEiDAc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LEjUJa6yar0zvZ0srfc4h8H2nYJkU7iHFNCt7sfP6u1i1+24lHHteUa1NYLn88TlM
 DYEj+x6Ob3irDqhyigT2anmxgyCYTjDeH9WnUkt6K0fShZr/gB5QZMqbTm5mcretDZ
 6nozXnCuvymg3bXsfRR00Yzj9wu1WnN+47O9BS84=
Date: Fri, 1 Nov 2019 10:36:17 +0000
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: perf: Simplify the ARMv8 PMUv3 event attributes
Message-ID: <20191101103616.GA2392@willie-the-truck>
References: <1572407177-48229-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191031160804.GA28325@willie-the-truck>
 <20191101085319.GA3508@blommer>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101085319.GA3508@blommer>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_033622_555110_9D2BBA10 
X-CRM114-Status: GOOD (  17.17  )
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
Cc: Shaokun Zhang <zhangshaokun@hisilicon.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 08:53:19AM +0000, Mark Rutland wrote:
> On Thu, Oct 31, 2019 at 04:08:04PM +0000, Will Deacon wrote:
> > On Wed, Oct 30, 2019 at 11:46:17AM +0800, Shaokun Zhang wrote:
> > > For each PMU event, there is a ARMV8_EVENT_ATTR(xx, XX) and
> > > &armv8_event_attr_xx.attr.attr. Let's redefine the ARMV8_EVENT_ATTR
> > > to simplify the armv8_pmuv3_event_attrs.
> > > 
> > > Cc: Will Deacon <will@kernel.org>
> > > Cc: Mark Rutland <mark.rutland@arm.com>
> > > Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
> > > ---
> > >  arch/arm64/kernel/perf_event.c | 189 ++++++++++++++---------------------------
> > >  1 file changed, 65 insertions(+), 124 deletions(-)
> > > 
> > > diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> > > index a0b4f1bca491..d0f084939bcf 100644
> > > --- a/arch/arm64/kernel/perf_event.c
> > > +++ b/arch/arm64/kernel/perf_event.c
> > > @@ -159,132 +159,73 @@ armv8pmu_events_sysfs_show(struct device *dev,
> > >  }
> > 
> > [...]
> > 
> > > +	(&((struct perf_pmu_events_attr[]) { \
> > > +		{ .attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
> > > +		  .id = config, } \
> > > +	})[0].attr.attr)
> > 
> > I don't get the need for the array here. Why can't you do:
> > 
> > 	(&((struct perf_pmu_events_attr) {
> > 		.attr = ...,
> > 		.id = ...,
> > 	}).attr.attr)
> 
> You need want &(obj.attr.attr) rather than &(obj).attr.attr, i.e.
> 
> #define ARMV8_EVENT_ATTR(name, config) \
> 	(&((struct perf_pmu_events_attr) { \
> 		.attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
> 		.id = config, \
> 	}.attr.attr))
>  
> ... which compiles for me.

Weird, the following compiles fine for me with both GCC and clang:

#define ARMV8_EVENT_ATTR(name, config)						\
	(&((struct perf_pmu_events_attr) {					\
		.attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL),	\
		.id = config,							\
	}).attr.attr)

> It'd be worth checking that yields a working data structure at runtime.

...and perf list works as expected.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
