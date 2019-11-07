Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85988F33E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 16:55:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Dd/Kiim4fD0a8aW11CC0VqMbG5m6avmlC7RPOORkVE=; b=Ydhsxy0XMGjReL
	EQnVLmK/LXgjUssI7Zv2C1leXRyggQSMC/VpB9WOAmgJdJmN0JEd0OspXnekFup6NYjCnKie8c4Tv
	d59d1QbOznV1mS7uqZv1sCT3IPY28D1bq2gCDioACGadmRw5YvV0c4ONKWNfbH+44Ey21ndtlC3bd
	SAKv/rvJX18uTecEgh2REYchlRM05uJ59BYmgRfkLwXMG9P+UBsJDJm1bgtlc8nOxcGzdwTnd57tH
	hnhJeMv6mbKB/1Roi0L+ZGY2vo8R4hwRktsrRKT8fU+LBifb9MTGVeYHrmx+huHkPbgkSwvRFQNgd
	Pf5tAsn+4Oj6VQr2jR0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSk7u-00020L-5R; Thu, 07 Nov 2019 15:55:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSk7b-0001zg-E5
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 15:54:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4CF4130E;
 Thu,  7 Nov 2019 07:54:54 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 14A353F71A;
 Thu,  7 Nov 2019 07:54:52 -0800 (PST)
Date: Thu, 7 Nov 2019 15:54:46 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Ganapatrao Kulkarni <gklkml16@gmail.com>
Subject: Re: [PATCH 1/2] perf/core: Adding capability to disable PMUs event
 multiplexing
Message-ID: <20191107155445.GA7259@lakrids.cambridge.arm.com>
References: <1573002091-9744-1-git-send-email-gkulkarni@marvell.com>
 <1573002091-9744-2-git-send-email-gkulkarni@marvell.com>
 <20191106112810.GA50610@lakrids.cambridge.arm.com>
 <CAKTKpr6U8gUp4C9muN2cL4wn33o2LAa5QnTO2MSmfnBz8oUc=Q@mail.gmail.com>
 <20191107145213.GB6888@lakrids.cambridge.arm.com>
 <CAKTKpr70=hFdwq43SBM-1jmbNxc1suyn3XouQhsj2m4tM+jeUg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKTKpr70=hFdwq43SBM-1jmbNxc1suyn3XouQhsj2m4tM+jeUg@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_075455_562590_B59EDEBB 
X-CRM114-Status: GOOD (  27.76  )
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

On Thu, Nov 07, 2019 at 07:45:07AM -0800, Ganapatrao Kulkarni wrote:
> On Thu, Nov 7, 2019 at 6:52 AM Mark Rutland <mark.rutland@arm.com> wrote:
> >
> > On Wed, Nov 06, 2019 at 03:28:46PM -0800, Ganapatrao Kulkarni wrote:
> > > Hi Peter, Mark,
> > >
> > > On Wed, Nov 6, 2019 at 3:28 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > > >
> > > > On Wed, Nov 06, 2019 at 01:01:40AM +0000, Ganapatrao Prabhakerrao Kulkarni wrote:
> > > > > When PMUs are registered, perf core enables event multiplexing
> > > > > support by default. There is no provision for PMUs to disable
> > > > > event multiplexing, if PMUs want to disable due to unavoidable
> > > > > circumstances like hardware errata etc.
> > > > >
> > > > > Adding PMU capability flag PERF_PMU_CAP_NO_MUX_EVENTS and support
> > > > > to allow PMUs to explicitly disable event multiplexing.
> > > >
> > > > Even without multiplexing, this PMU activity can happen when switching
> > > > tasks, or when creating/destroying events, so as-is I don't think this
> > > > makes much sense.
> > > >
> > > > If there's an erratum whereby heavy access to the PMU can lockup the
> > > > core, and it's possible to workaround that by minimzing accesses, that
> > > > should be done in the back-end PMU driver.
> > >
> > > As said in errata,  If there are heavy access to memory like stream
> > > application running and along with that if PMU control registers are
> > > also accessed frequently, then CPU lockup is seen.
> >
> > Ok. So the issue is the frequency of access to those registers.
> >
> > Which registers does that apply to?
> 
> The control register which are used to start, stop the counter and the
> register which is used to set the event type.

Ok. Thanks for confirming those details.

> > Is this the case for only reads, only writes, or both?
> 
> It is write  issue, the h/w block has limited write buffers and
> overflow getting hardware in weird state, when memory transactions are
> high.

Just to confirm -- is that writes to the control registers that are
buffered, or is it that buffering of normal memory accesses goes wrong
when the control registers are under heavy load?

> > Does the frequency of access actually matter, or is is just more likely
> > that we see the issue with a greater number of accesses? i.e the
> > increased frequency increases the probability of hitting the issue.
> 
> This is one scenario.
> Any higher access to PMU register, when memory is busy needs to be controlled.

Could you explain what you mean by "higher access to PMU register"?

Is there some threshold under which this is guaranteed to be ok? Or is
it probablistic, and we need to minimize accesses at all times?

> > I'd really like a better description of the HW issue here.
> >
> > > I ran perf stat with 4 events of thuderx2 PMU as well as with 6 events
> > > for stream application.
> > > For 4 events run, there is no event multiplexing, where as for 6
> > > events run the events are multiplexed.
> > >
> > > For 4 event run:
> > > No of times pmu->add is called: 10
> > > No of times pmu->del is called: 10
> > > No of times pmu->read is called: 310
> > >
> > > For 6 events run:
> > > No of times pmu->add is called: 5216
> > > No of times pmu->del is called: 5216
> > > No of times pmu->read is called: 5216
> > >
> > > Issue happens when the add and del are called too many times as seen
> > > with 6 event case.
> >
> > Sure, but I can achieve similar by creating/destroying events in a loop.
> > Multiplexing is _one_ way to cause this behaviour, but it's not the
> > _only_ way.
> 
> I agree, there may be other use cases also, however i am trying to fix
> the common use case.

I appreciate what you're trying to do, but I think it's the wrong
approach.

Depending on the precise conditions under which this happens, I think
that we may be able to solve this entirely within the TX2 PMU driver,
handling all cases and also not breaking multiplexing.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
