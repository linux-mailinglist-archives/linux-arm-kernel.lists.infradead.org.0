Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D88FE420D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 11:32:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g90JLcG3vqM6Pk+7EHUraYoqXum96JqL0NmtSBjfA9w=; b=ME3szar7mFAs2i
	pcJTqc/tt/gb2PlF1BhDkWtIRZDlzRVYxreK+b/9JDfzSrkV65G3kt3+EtbUQpPJSFerwBsbyI/8Q
	8WwMdStIUITnwHMbo6UKwUVskK/Zxosg7l6cWXAuF/mELBZ/5OhiaP9uNCdBmKGEndi6vFN8o0JAH
	jEUNb00hg1xNw7F+FGPkjB4FGeV+5zm++MDiwCd3l20pLZfFbpWwI1jk14PELGPuEpS9FhqZk3pvZ
	moxEGHc54H1aXb9lV0QUa7G6gBMm2ZZkan0rJlIG3k83Z6ttqilVZwvdZVXYxVun1Bso36uvdfvLX
	FTNfDxWJ5YL84TAtItAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hazc9-00033D-KA; Wed, 12 Jun 2019 09:32:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hazbu-00032H-8g
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 09:32:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A427028;
 Wed, 12 Jun 2019 02:32:01 -0700 (PDT)
Received: from brain-police (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C6C563F246;
 Wed, 12 Jun 2019 02:31:59 -0700 (PDT)
Date: Wed, 12 Jun 2019 10:31:53 +0100
From: Will Deacon <will.deacon@arm.com>
To: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
Subject: Re: [RFC] Disable lockref on arm64
Message-ID: <20190612093151.GA11554@brain-police>
References: <20190502082741.GE13955@hc>
 <CAHk-=wjmtMrxC1nSEHarBn8bW+hNXGv=2YeAWmTw1o54V8GKWA@mail.gmail.com>
 <20190502231858.GB13168@dc5-eodlnx05.marvell.com>
 <CAHk-=wiEahkwDXpoy=-SzJHNMRXKVSjPa870+eKKenufhO_Hgw@mail.gmail.com>
 <20190506061100.GA8465@dc5-eodlnx05.marvell.com>
 <20190506181039.GA2875@brain-police>
 <20190518042424.GA28517@dc5-eodlnx05.marvell.com>
 <CAKv+Gu9U9z3iAuz4V1c5zTHuz1As8FSNGY-TJon4OLErB8ts8Q@mail.gmail.com>
 <20190522160417.GF7876@fuggles.cambridge.arm.com>
 <20190612040933.GA18848@dc5-eodlnx05.marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612040933.GA18848@dc5-eodlnx05.marvell.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_023205_598355_DD929E0D 
X-CRM114-Status: GOOD (  21.20  )
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi JC,

On Wed, Jun 12, 2019 at 04:10:20AM +0000, Jayachandran Chandrasekharan Nair wrote:
> On Wed, May 22, 2019 at 05:04:17PM +0100, Will Deacon wrote:
> > On Sat, May 18, 2019 at 12:00:34PM +0200, Ard Biesheuvel wrote:
> > > On Sat, 18 May 2019 at 06:25, Jayachandran Chandrasekharan Nair
> > > <jnair@marvell.com> wrote:
> > > > Looking thru the perf output of this case (open/close of a file from
> > > > multiple CPUs), I see that refcount is a significant factor in most
> > > > kernel configurations - and that too uses cmpxchg (without yield).
> > > > x86 has an optimized inline version of refcount that helps
> > > > significantly. Do you think this is worth looking at for arm64?
> > > >
> > > 
> > > I looked into this a while ago [0], but at the time, we decided to
> > > stick with the generic implementation until we encountered a use case
> > > that benefits from it. Worth a try, I suppose ...
> > > 
> > > [0] https://lore.kernel.org/linux-arm-kernel/20170903101622.12093-1-ard.biesheuvel@linaro.org/
> > 
> > If JC can show that we benefit from this, it would be interesting to see if
> > we can implement the refcount-full saturating arithmetic using the
> > LDMIN/LDMAX instructions instead of the current cmpxchg() loops.
> 
> Now that the lockref change is mainline, I think we need to take another
> look at this patch.

Before we get too involved with this, I really don't want to start a trend of
"let's try to rewrite all code using cmpxchg() in Linux because of TX2". At
some point, the hardware needs to play ball. However...

Ard's refcount patch was about moving the overflow check out-of-line. A
side-effect of this, is that we avoid the cmpxchg() operation from many of
the operations (atomic_add_unless() disappears), and it's /this/ which helps
you. So there may well be a middle ground where we avoid the complexity of
the out-of-line {over,under}flow handling but do the saturation post-atomic
inline.

I was hoping we could use LDMIN/LDMAX to maintain the semantics of
REFCOUNT_FULL, but now that I think about it I can't see how we could keep
the arithmetic atomic in that case. Hmm.

Whatever we do, I prefer to keep REFCOUNT_FULL the default option for arm64,
so if we can't keep the semantics when we remove the cmpxchg, you'll need to
opt into this at config time.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
