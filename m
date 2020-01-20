Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A337D142ECF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 16:34:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dg7B3C8aY2lw724qWycie4+kEjTYtxvOFqbMS6tmKMs=; b=gh3ZeEeqiOs8fQ
	mtMNcVQ1sgwz8bTRF4s9dvRnPbeD4/LrYS6L4/ZzFWmuR/fp1awN+FBoGtxN/ThoW6YnX8kvW2HK5
	jZK/THB/vUfEBdd52VkpQcVlImd2kKSHQbcHV2zhnGOVlwDLYZuSMmOCfZAujRoQ+9jzUDLgtjOXd
	ZemLMz/l2E49YwPLKBoj4fGaIBZwB64m4abbigiBuay+YZfIyClM7YViCz5TqyGEM2AtiEFUWo/hh
	OGLf83t19TKjcy+/kEST0Y6Um8NS32G9MyDxRM41yMkeEv4idEjgynISUN+0arUWINuUMN9U0iYq3
	y8h6g3TPyZ+klzwqCdYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itZ4D-00070Z-11; Mon, 20 Jan 2020 15:34:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itZ3y-0006z5-CQ
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 15:34:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1D06630E;
 Mon, 20 Jan 2020 07:34:00 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5DBB83F52E;
 Mon, 20 Jan 2020 07:33:58 -0800 (PST)
Date: Mon, 20 Jan 2020 15:33:56 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH 1/1] Return EINVAL when precise_ip perf events are
 requested on Arm
Message-ID: <20200120153355.GC43842@lakrids.cambridge.arm.com>
References: <20200115105855.13395-1-james.clark@arm.com>
 <20200115105855.13395-2-james.clark@arm.com>
 <20200117123920.GB8199@willie-the-truck>
 <20200117140143.GD14879@hirez.programming.kicks-ass.net>
 <1231fd60-79cd-fcdf-8b99-a3be746bf2d1@arm.com>
 <20200117151658.GH14879@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117151658.GH14879@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_073402_469211_131BDF16 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Al Grant <Al.Grant@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Tan Xiaojun <tanxiaojun@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 James Clark <James.Clark@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 nd <nd@arm.com>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 04:16:58PM +0100, Peter Zijlstra wrote:
> On Fri, Jan 17, 2020 at 03:00:37PM +0000, James Clark wrote:
> > Hi Peter,
> > 
> > Do you mean something like this?
> 
> Yes.
> 
> > diff --git a/kernel/events/core.c b/kernel/events/core.c
> > index 43d1d4945433..f74acd085bea 100644
> > --- a/kernel/events/core.c
> > +++ b/kernel/events/core.c
> > @@ -10812,6 +10812,12 @@ perf_event_alloc(struct perf_event_attr *attr, int cpu,
> >                 goto err_pmu;
> >         }
> >  
> > +       if (event->attr.precise_ip &&
> > +               !(pmu->capabilities & PERF_PMU_CAP_PRECISE_IP)) {
> > +               err = -EOPNOTSUPP;
> > +               goto err_pmu;
> > +       }
> > +
> >         err = exclusive_event_init(event);
> >         if (err)
> >                 goto err_pmu;
> > 
> > 
> > Or should it only be done via sysfs to not break userspace?
> 
> So we've added checks like this in the past and gotten away with it. Do
> you already know of some userspace that will break due to it?
> 
> An alternative approach is adding a sysctl like kernel.perf_nostrict
> which would disable this or something, that way 'old' userspace has a
> chicken bit.

Could we allocate a "strict" bit from perf_event_attr::__reserved_1, and
update drivers to expose a whitelist of fields they support?

Then the core could do something like:

	if (attr->strict && !pmu_check_whitelist(pmu, attr))
		return -EOPNOTSUPP;

... and we could also expose the whitelist somewhere in sysfs.

Thanks,
Mark,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
