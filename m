Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC63BEAB28
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 08:55:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/3AtEc8g6SUne3RdmjBaGNLnlGnxl7S4MTp1oh1uYW0=; b=j9z8RsIDHRinHS
	5Bz63KBu4G7B1PsHNkWGI4KY0HTVQAKpTNyphj1ILjnoTVEGJBsLfBOb70UBrpVnOC6SG8jp9oi6d
	kpOjiePt/FV8bbKgroB9/LoyXjlXQmX4K9fgYdybOFb2zVUC+5LsRsgYJ56DtiaqbEWLd+pdLm5ER
	SgGGd1zUQkZc4YvHyPnhPQ7d685CZydypJj4H3ThUnbv/rK4BAr8GXaBr2f9l16k+MPRQhJYwTA0L
	45kOucduKmgkkStIBLWnLHxVsv2Y917bY5GZNMKNNDTlDZy7FpkOTYd4+nVOWy2pDz7svygKD1ovb
	PJJCwt169hoHSZZRLWyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ5Iq-000280-Rj; Thu, 31 Oct 2019 07:55:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ5Ie-00027K-6u
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 07:55:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1BF3A1FB;
 Thu, 31 Oct 2019 00:55:14 -0700 (PDT)
Received: from blommer (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CDE643F71E;
 Thu, 31 Oct 2019 00:55:12 -0700 (PDT)
Date: Thu, 31 Oct 2019 07:55:06 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Richard Henderson <richard.henderson@linaro.org>
Subject: Re: [PATCH] arm64: perf: Simplify the ARMv8 PMUv3 event attributes
Message-ID: <20191031075505.GA3412@blommer>
References: <1572407177-48229-1-git-send-email-zhangshaokun@hisilicon.com>
 <b603fc49-01f5-b5b4-7c2c-5f0bc53b6fc1@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b603fc49-01f5-b5b4-7c2c-5f0bc53b6fc1@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_005520_302690_0221D108 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Shaokun Zhang <zhangshaokun@hisilicon.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 02:34:37PM +0100, Richard Henderson wrote:
> On 10/30/19 4:46 AM, Shaokun Zhang wrote:
> > For each PMU event, there is a ARMV8_EVENT_ATTR(xx, XX) and
> > &armv8_event_attr_xx.attr.attr. Let's redefine the ARMV8_EVENT_ATTR
> > to simplify the armv8_pmuv3_event_attrs.
> ...
> >  #define ARMV8_EVENT_ATTR(name, config) \
> > +	(&((struct perf_pmu_events_attr[]) { \
> > +		{ .attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
> > +		  .id = config, } \
> > +	})[0].attr.attr)
> >  
> >  static struct attribute *armv8_pmuv3_event_attrs[] = {
> > +	ARMV8_EVENT_ATTR(sw_incr, ARMV8_PMUV3_PERFCTR_SW_INCR),
> 
> You do realize this creates complete perf_pmu_events_attr structures, most of
> which is unused and unreachable, right?

In armv8pmu_events_sysfs_show() we use container_of() to access the
perf_pmu_events_attr, and extracts the id field:

| static ssize_t
| armv8pmu_events_sysfs_show(struct device *dev,
|                            struct device_attribute *attr, char *page)
| {
|         struct perf_pmu_events_attr *pmu_attr;
| 
|         pmu_attr = container_of(attr, struct perf_pmu_events_attr, attr);
| 
|         return sprintf(page, "event=0x%03llx\n", pmu_attr->id);
| }

> Also, why not take the opportunity to assert that the armv8_pmuv3_event_attrs
> array cannot get out of sync with the ARMV8_PMUV3_* defines?
> 
> Slightly better would seem to be
> 
> #define ARMV8_EVENT_ATTR(name, config) \
> 	[config] = &((struct device_attribute) \
> 		__ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL)).attr

I'm not sure I follow. This is not equivalent, and you're using the config
field in a very different way -- that's not an index in the parent array in the
current code. How do you expect armv8pmu_events_sysfs_show to get the config
value in this case?

> 
> though I'm not sure why __ATTR is particularly desired above
> 
> #define ARMV8_EVENT_ATTR(name, config)      \
> 	[config] = &(struct attribute){     \
> 		.name = __stringify(name),  \
> 		.mode = 0444,               \
> 	}

Using __ATTR is consistent with other drivers, so I don't see a reason to
change that unless there's a significant simplification, or a functional
improvement

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
