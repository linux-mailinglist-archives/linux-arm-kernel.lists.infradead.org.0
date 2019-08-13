Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B0B8B62C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:04:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=01zJQtCt5ZM8/tjBxVGi4uvRwKBRm+3oCbW/Eeko+ho=; b=ZQPdhfR2h/UqNi
	26yvVaqxMk3nwMb6Sy5bF5EteSJWVUxUXBmNKGqJB8CDVt2YW8iUIkZJhKJd/bmAD/SEg8SLG/MAK
	Y3AfW8716PeJt+xlVj9pJlArIzS7CDG5DzFAR93exxxfN0zK3dO0JvIsFUNdDBzC8G5YKQ3K3o5nS
	PL65MjLR5txmBB2g++fupJZZjy/PctS6wtua1/Mkm2/mOAawnFgk/rqB9dqllEp61HDccxQvLOjYC
	a87BT/C5lI5djJFQ9+/YVyIOrnxSZYYhRsSQYAxN7LhdcGFO596ONeEnmOgQtq8t6HtK1tcP4DrrK
	j7cQohVIZtpckb5H9xIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUaz-0005TI-Cq; Tue, 13 Aug 2019 11:04:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUaj-0005Lw-Tm
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 11:03:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4CAEB344;
 Tue, 13 Aug 2019 04:03:49 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E76203F694;
 Tue, 13 Aug 2019 04:03:47 -0700 (PDT)
Date: Tue, 13 Aug 2019 12:03:45 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Ganapatrao Kulkarni <gklkml16@gmail.com>
Subject: Re: [PATCH v3 2/2] drivers/perf: Add CCPI2 PMU support in ThunderX2
 UNCORE driver.
Message-ID: <20190813110345.GD866@lakrids.cambridge.arm.com>
References: <1563873380-2003-1-git-send-email-gkulkarni@marvell.com>
 <1563873380-2003-3-git-send-email-gkulkarni@marvell.com>
 <20190812120125.GA50712@lakrids.cambridge.arm.com>
 <CAKTKpr7juHd9Bgam28LESadihFadEAevRAhc-7w3PTMYY7HLNw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKTKpr7juHd9Bgam28LESadihFadEAevRAhc-7w3PTMYY7HLNw@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_040350_006416_7D60A8D8 
X-CRM114-Status: GOOD (  21.54  )
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
Cc: Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 "corbet@lwn.net" <corbet@lwn.net>, Jan Glauber <jglauber@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 04:25:15PM +0530, Ganapatrao Kulkarni wrote:
> Hi Mark,
> 
> On Mon, Aug 12, 2019 at 5:31 PM Mark Rutland <mark.rutland@arm.com> wrote:
> >
> > On Tue, Jul 23, 2019 at 09:16:28AM +0000, Ganapatrao Kulkarni wrote:
> > > CCPI2 is a low-latency high-bandwidth serial interface for connecting
> > > ThunderX2 processors. This patch adds support to capture CCPI2 perf events.
> >
> > It would be worth pointing out in the commit message how the CCPI2
> > counters differ from the others. I realise you have that in the body of
> > patch 1, but it's critical information when reviewing this patch...
> 
> Ok, I will add in next version.
> >
> > >
> > > Signed-off-by: Ganapatrao Kulkarni <gkulkarni@marvell.com>
> > > ---
> > >  drivers/perf/thunderx2_pmu.c | 248 ++++++++++++++++++++++++++++++-----
> > >  1 file changed, 214 insertions(+), 34 deletions(-)
> > >
> > > diff --git a/drivers/perf/thunderx2_pmu.c b/drivers/perf/thunderx2_pmu.c
> > > index 43d76c85da56..a4e1273eafa3 100644
> > > --- a/drivers/perf/thunderx2_pmu.c
> > > +++ b/drivers/perf/thunderx2_pmu.c
> > > @@ -17,22 +17,31 @@
> > >   */
> > >
> > >  #define TX2_PMU_MAX_COUNTERS         4
> >
> > Shouldn't this be 8 now?
> 
> It is kept unchanged to 4(as suggested by Will), which is same for
> both L3 and DMC.
> For CCPI2 this macro is not used.

Hmmm....

I disagree with that suggestion given that this also affects the
active_counters bitmap size (and thus it is not correctly sized as of
this patch), and it doesn't really save us much.

I think it would be better to bump this to 8 and always update the
events array, even though it will be unused for CCPI2. That's less
surprising, needs fewer special-cases, and we can use the hrtimer
function pointer alone to determine if we need to do any hrtimer work.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
