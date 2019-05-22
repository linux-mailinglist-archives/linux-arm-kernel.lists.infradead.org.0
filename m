Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E926267AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 18:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kq6NHfaovutTRQ6bjioi3KgBfCW73F2faE828Lr/wHs=; b=OSUJ5HUUgr0xGI
	Jq/hhngg9goMZYt0pA3XG+0PzTDTZotPPG3p9Fb7Rw6mao5q9sQQdqZW0XghxUakct3yXZYV+KbY5
	LbdEtqQ3VAXvTcjJj00d56eGUp7JXIC90KGZxt9kGgzmrx2ytIp4QdtaUE4qijfDiwYw/J6b2Cp9W
	WvzPktcoemNrH8EmFyMD+OdNvjPBF/rJFeLftzqX9tChjSxWunqbslyN5J0mGkX9GX1CB5CLKVvaB
	exz8nKYwNFeqL5AmbYHDDpFiuGIMOME18uFf2a5+luiL8UuScz0+qBN1fHhyGAAmIPzq+NdFIw61u
	wIC2eTT2xM1yIeHlVfag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTTjB-0002HP-8T; Wed, 22 May 2019 16:04:29 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTTj4-0002Fy-AC
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 16:04:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5E97B341;
 Wed, 22 May 2019 09:04:21 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 035BE3F718;
 Wed, 22 May 2019 09:04:19 -0700 (PDT)
Date: Wed, 22 May 2019 17:04:17 +0100
From: Will Deacon <will.deacon@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [RFC] Disable lockref on arm64
Message-ID: <20190522160417.GF7876@fuggles.cambridge.arm.com>
References: <20190429145159.GA29076@hc>
 <CAHk-=wjPqcPYkiWKFc=R3+18DXqEhV+Nfbo=JWa32Xp8Nze67g@mail.gmail.com>
 <20190502082741.GE13955@hc>
 <CAHk-=wjmtMrxC1nSEHarBn8bW+hNXGv=2YeAWmTw1o54V8GKWA@mail.gmail.com>
 <20190502231858.GB13168@dc5-eodlnx05.marvell.com>
 <CAHk-=wiEahkwDXpoy=-SzJHNMRXKVSjPa870+eKKenufhO_Hgw@mail.gmail.com>
 <20190506061100.GA8465@dc5-eodlnx05.marvell.com>
 <20190506181039.GA2875@brain-police>
 <20190518042424.GA28517@dc5-eodlnx05.marvell.com>
 <CAKv+Gu9U9z3iAuz4V1c5zTHuz1As8FSNGY-TJon4OLErB8ts8Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu9U9z3iAuz4V1c5zTHuz1As8FSNGY-TJon4OLErB8ts8Q@mail.gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_090422_362541_30100B06 
X-CRM114-Status: GOOD (  24.61  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 18, 2019 at 12:00:34PM +0200, Ard Biesheuvel wrote:
> On Sat, 18 May 2019 at 06:25, Jayachandran Chandrasekharan Nair
> <jnair@marvell.com> wrote:
> >
> > On Mon, May 06, 2019 at 07:10:40PM +0100, Will Deacon wrote:
> > > On Mon, May 06, 2019 at 06:13:12AM +0000, Jayachandran Chandrasekharan Nair wrote:
> > > > Perhaps someone from ARM can chime in here how the cas/yield combo
> > > > is expected to work when there is contention. ThunderX2 does not
> > > > do much with the yield, but I don't expect any ARM implementation
> > > > to treat YIELD as a hint not to yield, but to get/keep exclusive
> > > > access to the last failed CAS location.
> > >
> > > Just picking up on this as "someone from ARM".
> > >
> > > The yield instruction in our implementation of cpu_relax() is *only* there
> > > as a scheduling hint to QEMU so that it can treat it as an internal
> > > scheduling hint and run some other thread; see 1baa82f48030 ("arm64:
> > > Implement cpu_relax as yield"). We can't use WFE or WFI blindly here, as it
> > > could be a long time before we see a wake-up event such as an interrupt. Our
> > > implementation of smp_cond_load_acquire() is much better for that kind of
> > > thing, but doesn't help at all for a contended CAS loop where the variable
> > > is actually changing constantly.
> >
> > Looking thru the perf output of this case (open/close of a file from
> > multiple CPUs), I see that refcount is a significant factor in most
> > kernel configurations - and that too uses cmpxchg (without yield).
> > x86 has an optimized inline version of refcount that helps
> > significantly. Do you think this is worth looking at for arm64?
> >
> 
> I looked into this a while ago [0], but at the time, we decided to
> stick with the generic implementation until we encountered a use case
> that benefits from it. Worth a try, I suppose ...
> 
> [0] https://lore.kernel.org/linux-arm-kernel/20170903101622.12093-1-ard.biesheuvel@linaro.org/

If JC can show that we benefit from this, it would be interesting to see if
we can implement the refcount-full saturating arithmetic using the
LDMIN/LDMAX instructions instead of the current cmpxchg() loops.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
