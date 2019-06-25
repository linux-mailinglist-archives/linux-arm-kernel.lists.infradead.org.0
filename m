Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0CC55B0C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 00:25:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e+lzNSGNhQVmZkYLZ+NMoO5ga0erMTEX4hP3+HBq8Y8=; b=O2LQC1fdogzbfO
	xT+I0kkiVtMe2zF7HRa52AQmJU6UNgGhuURxFbJPpZOSYmLU/3wJuOcyMpQuuCy80DOUALGECv9hz
	1bCeBlTdMb+MKXsl0CtDSk9vCyafb9zDTddcu2fzECLQdFwRkVdo1zNJQWU11jyL1L3qTwMYwFrO7
	X+vc8OIStLch1scjNfp/+sasplBRYCYKYxD6853PeuDaDfZOIUGUxoqOF89y/zvh4ibGa2QQK0qjU
	RD7hzXUwblpz4SGOwlOdS+aSiUWDAp6wc59vVYugTPoTC7r2OhcrzU7Mzf/Ze02iZ08F8Lxw0JQHk
	+xw3x58dEWUVjciKg4OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hftsH-0004aY-ET; Tue, 25 Jun 2019 22:25:13 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hftrw-0004Zy-UM
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 22:24:54 +0000
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hftrr-00020M-H0; Wed, 26 Jun 2019 00:24:47 +0200
Date: Wed, 26 Jun 2019 00:24:46 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Andy Lutomirski <luto@kernel.org>
Subject: Re: [PATCH 1/3] lib/vdso: Delay mask application in do_hres()
In-Reply-To: <CALCETrWE3zYN-6h0RkMV9j5kSkSWbJ-nQnjhH=md=ybSR0eZ9Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1906260009260.32342@nanos.tec.linutronix.de>
References: <20190624133607.GI29497@fuggles.cambridge.arm.com>
 <20190625161804.38713-1-vincenzo.frascino@arm.com>
 <alpine.DEB.2.21.1906251851350.32342@nanos.tec.linutronix.de>
 <alpine.DEB.2.21.1906252024350.32342@nanos.tec.linutronix.de>
 <CALCETrWE3zYN-6h0RkMV9j5kSkSWbJ-nQnjhH=md=ybSR0eZ9Q@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_152453_127598_C3D78594 
X-CRM114-Status: GOOD (  23.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Shuah Khan <shuah@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Andre Przywara <andre.przywara@arm.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Peter Collingbourne <pcc@google.com>,
 LAK <linux-arm-kernel@lists.infradead.org>, Huw Davies <huw@codeweavers.com>,
 LKML <linux-kernel@vger.kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
 Mark Salyzyn <salyzyn@android.com>, Paul Burton <paul.burton@mips.com>,
 Shijith Thotton <sthotton@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 25 Jun 2019, Andy Lutomirski wrote:
> On Tue, Jun 25, 2019 at 11:27 AM Thomas Gleixner <tglx@linutronix.de> wrote:
> >
> > On Tue, 25 Jun 2019, Thomas Gleixner wrote:
> >
> > > On Tue, 25 Jun 2019, Vincenzo Frascino wrote:
> > >
> > > CC+ Andy
> > >
> > > > do_hres() in the vDSO generic library masks the hw counter value
> > > > immediately after reading it.
> > > >
> > > > Postpone the mask application after checking if the syscall fallback is
> > > > enabled, in order to be able to detect a possible fallback for the
> > > > architectures that have masks smaller than ULLONG_MAX.
> > >
> > > Right. This only worked on x86 because the mask is there ULLONG_MAX for all
> > > VDSO capable clocksources, i.e. that ever worked just by chance.
> > >
> > > As we talked about that already yesterday, I tested this on a couple of
> > > machines and as expected the outcome is uarch dependent. Minimal deviations
> > > to both sides and some machines do not show any change at all. I doubt it's
> > > possible to come up with a solution which makes all uarchs go faster
> > > magically.
> > >
> > > Though, thinking about it, we could remove the mask operation completely on
> > > X86. /me runs tests
> >
> > Unsurprisingly the results vary. Two uarchs do not care, but they did not
> > care about moving the mask either. The other two gain performance and the
> > last one falls back to the state before moving the mask. So in general it
> > looks like a worthwhile optimization.
> >
> 
> At one point, I contemplated a different approach: have the "get the
> counter" routine return 0 and then do if (unlikely(cycles <= last))
> goto fallback.  This will remove one branch from the hot path.  I got
> dubious results when I tried benchmarking it, probably because the
> branch in question was always correctly predicted.

Just tried and it's the same thing. One drops, one does not care and one
gains. Did not test the other two as they are asleep already. There is no
universal cure for this I fear. I even tried a uarch optimized build a few
days ago which came out worse than the generic one...

The issue in that code path is the fencing of the TSC read. That seems to
screw up every uarch in a different way.

If you have no objections I'll queue this change (moving the mask) along
with the other two ARM64 ones to unbreak the fallback path for these errata
inflicted machines.

Thanks,

	tglx


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
