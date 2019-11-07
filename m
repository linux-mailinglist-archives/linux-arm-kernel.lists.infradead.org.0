Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E838F31C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 15:52:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zcx+n3WgX8QN+P3GOqK0PukxHoxGmCf1T2zzltPtw4s=; b=SjTSrZsA9HcQYi
	b59LDuXBMRJH2fcdawPBNHjIx4cMLnT2JTb01pbxGG/erK13Pc61kmxpA24Gr+eoYDWmNqwWjIVWB
	MbjBKgWGbQ7DDNNaTYJKfylH4Uk3psS75Q5C1LZZdqdK1p4eJffTFhziM826Sqesj2RphVHsm53XU
	7vuXiVSPmxs646io1SBVjRmbwboeoYrBNYJtwVNZCZCnqj50ZT4Xy0fYTd1+iE74wi91/bN8a2TtF
	78N6bc0e5CMc20a/7NGfs/dwyb4pbKsUHPT3smIdSYntg1Qbmq0qbl1H+p0Uu/pr3jZEI5rflJA7i
	5+M4lNaesel5UwX7UY3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSj9B-000141-7g; Thu, 07 Nov 2019 14:52:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSj92-000131-58
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 14:52:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7742731B;
 Thu,  7 Nov 2019 06:52:17 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3DD573F71A;
 Thu,  7 Nov 2019 06:52:16 -0800 (PST)
Date: Thu, 7 Nov 2019 14:52:14 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Ganapatrao Kulkarni <gklkml16@gmail.com>
Subject: Re: [PATCH 1/2] perf/core: Adding capability to disable PMUs event
 multiplexing
Message-ID: <20191107145213.GB6888@lakrids.cambridge.arm.com>
References: <1573002091-9744-1-git-send-email-gkulkarni@marvell.com>
 <1573002091-9744-2-git-send-email-gkulkarni@marvell.com>
 <20191106112810.GA50610@lakrids.cambridge.arm.com>
 <CAKTKpr6U8gUp4C9muN2cL4wn33o2LAa5QnTO2MSmfnBz8oUc=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKTKpr6U8gUp4C9muN2cL4wn33o2LAa5QnTO2MSmfnBz8oUc=Q@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_065220_284210_0F804D4B 
X-CRM114-Status: GOOD (  20.88  )
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
Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mingo@redhat.com" <mingo@redhat.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 03:28:46PM -0800, Ganapatrao Kulkarni wrote:
> Hi Peter, Mark,
> 
> On Wed, Nov 6, 2019 at 3:28 AM Mark Rutland <mark.rutland@arm.com> wrote:
> >
> > On Wed, Nov 06, 2019 at 01:01:40AM +0000, Ganapatrao Prabhakerrao Kulkarni wrote:
> > > When PMUs are registered, perf core enables event multiplexing
> > > support by default. There is no provision for PMUs to disable
> > > event multiplexing, if PMUs want to disable due to unavoidable
> > > circumstances like hardware errata etc.
> > >
> > > Adding PMU capability flag PERF_PMU_CAP_NO_MUX_EVENTS and support
> > > to allow PMUs to explicitly disable event multiplexing.
> >
> > Even without multiplexing, this PMU activity can happen when switching
> > tasks, or when creating/destroying events, so as-is I don't think this
> > makes much sense.
> >
> > If there's an erratum whereby heavy access to the PMU can lockup the
> > core, and it's possible to workaround that by minimzing accesses, that
> > should be done in the back-end PMU driver.
> 
> As said in errata,  If there are heavy access to memory like stream
> application running and along with that if PMU control registers are
> also accessed frequently, then CPU lockup is seen.

Ok. So the issue is the frequency of access to those registers.

Which registers does that apply to?

Is this the case for only reads, only writes, or both?

Does the frequency of access actually matter, or is is just more likely
that we see the issue with a greater number of accesses? i.e the
increased frequency increases the probability of hitting the issue.

I'd really like a better description of the HW issue here.

> I ran perf stat with 4 events of thuderx2 PMU as well as with 6 events
> for stream application.
> For 4 events run, there is no event multiplexing, where as for 6
> events run the events are multiplexed.
> 
> For 4 event run:
> No of times pmu->add is called: 10
> No of times pmu->del is called: 10
> No of times pmu->read is called: 310
> 
> For 6 events run:
> No of times pmu->add is called: 5216
> No of times pmu->del is called: 5216
> No of times pmu->read is called: 5216
> 
> Issue happens when the add and del are called too many times as seen
> with 6 event case.

Sure, but I can achieve similar by creating/destroying events in a loop.
Multiplexing is _one_ way to cause this behaviour, but it's not the
_only_ way.

> The PMU hardware control registers are programmed when add and del
> functions are called.
> For pmu->read no issues since no h/w issue with the data path.

As above, can you please describe the hardware conditions more
thoroughly?

> This is UNCORE driver, not sure context switch has any influence on this?

I believe that today it's possible for this to happen for cgroup events,
as non-sensical as it may be to have a cgroup-bound uncore PMU event.

> Please suggest me, how can we fix this in back-end PMU driver without
> any perf core help?

In order to do so, I need a better explanation of the underlying
hardware issue.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
