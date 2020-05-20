Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 034201DBACB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 19:09:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84kTxqfnBi24PO46Di9x57jgJQ0wsMZKyVfOAiAzDOo=; b=Acc/Ey/8ERURj2
	TZSl1ci8LHc4ol1vSAsTjdsReecRJv1OQPluZ2Xg2zX5FYU7c/Xq63GcrGrfHE3yqMORb7+KQiJX8
	mhShF66YKW5ScmXtY1qgyd5c7qqPPaS/9IFUbCksMjaONkXl4vQnYx1PFJtMKw+LfWczWQjf34EPJ
	n7Gfk6ywo41ozOm0T78HlEZp6QT8c+Lx9Fhc3ENeShY6EOvavNlNkEKZY0/J90PbR7FpWEoimcs+a
	qIdN3gX4yevI9aYEXd68rAQWQyJkuk+Xyb2q6C5Hj2Mh5voYKkGiE5AEFQqAQrrwO2qNmcEcN2XGd
	moNgUfD7Ln4ITwfJBWcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSDx-0004Jb-QE; Wed, 20 May 2020 17:09:45 +0000
Received: from brightrain.aerifal.cx ([216.12.86.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSDo-0004Ii-4S
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 17:09:38 +0000
Date: Wed, 20 May 2020 13:09:34 -0400
From: Rich Felker <dalias@libc.org>
To: Szabolcs Nagy <szabolcs.nagy@arm.com>
Subject: Re: clock_gettime64 vdso bug on 32-bit arm, rpi-4
Message-ID: <20200520170932.GO1079@brightrain.aerifal.cx>
References: <CAK8P3a2Tw2w73ZkK-W6AA9veMK4-miLUx-TL1EuOdP7EdW-AmQ@mail.gmail.com>
 <0c2abcd1-7da8-2559-1e93-4c3bdd38dec1@linaro.org>
 <CAK8P3a3fxs+14ZdCRmt_GwJGv3Aipm1r9sAHH6aVj2UrWBNuQQ@mail.gmail.com>
 <20200520154128.GA24483@arm.com>
 <20200520160810.GM1079@brightrain.aerifal.cx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520160810.GM1079@brightrain.aerifal.cx>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_100936_409752_99524E1B 
X-CRM114-Status: GOOD (  39.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: nd@arm.com, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Will Deacon <will@kernel.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Adhemerval Zanella <adhemerval.zanella@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jack Schmidt <jack.schmidt@uky.edu>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 12:08:10PM -0400, Rich Felker wrote:
> On Wed, May 20, 2020 at 04:41:29PM +0100, Szabolcs Nagy wrote:
> > The 05/19/2020 22:31, Arnd Bergmann wrote:
> > > On Tue, May 19, 2020 at 10:24 PM Adhemerval Zanella
> > > <adhemerval.zanella@linaro.org> wrote:
> > > > On 19/05/2020 16:54, Arnd Bergmann wrote:
> > > > > Jack Schmidt reported a bug for the arm32 clock_gettimeofday64 vdso call last
> > > > > month: https://github.com/richfelker/musl-cross-make/issues/96 and
> > > > > https://github.com/raspberrypi/linux/issues/3579
> > > > >
> > > > > As Will Deacon pointed out, this was never reported on the mailing list,
> > > > > so I'll try to summarize what we know, so this can hopefully be resolved soon.
> > > > >
> > > > > - This happened reproducibly on Linux-5.6 on a 32-bit Raspberry Pi patched
> > > > >    kernel running on a 64-bit Raspberry Pi 4b (bcm2711) when calling
> > > > >    clock_gettime64(CLOCK_REALTIME)
> > > >
> > > > Does it happen with other clocks as well?
> > > 
> > > Unclear.
> > > 
> > > > > - The kernel tree is at https://github.com/raspberrypi/linux/, but I could
> > > > >   see no relevant changes compared to a mainline kernel.
> > > >
> > > > Is this bug reproducible with mainline kernel or mainline kernel can't be
> > > > booted on bcm2711?
> > > 
> > > Mainline linux-5.6 should boot on that machine but might not have
> > > all the other features, so I think users tend to use the raspberry pi
> > > kernel sources for now.
> > > 
> > > > > - From the report, I see that the returned time value is larger than the
> > > > >   expected time, by 3.4 to 14.5 million seconds in four samples, my
> > > > >   guess is that a random number gets added in at some point.
> > > >
> > > > What kind code are you using to reproduce it? It is threaded or issue
> > > > clock_gettime from signal handlers?
> > > 
> > > The reproducer is very simple without threads or signals,
> > > see the start of https://github.com/richfelker/musl-cross-make/issues/96
> > > 
> > > It does rely on calling into the musl wrapper, not the direct vdso
> > > call.
> > > 
> > > > > - From other sources, I found that the Raspberry Pi clocksource runs
> > > > >   at 54 MHz, with a mask value of 0xffffffffffffff. From these numbers
> > > > >   I would expect that reading a completely random hardware register
> > > > >   value would result in an offset up to 1.33 billion seconds, which is
> > > > >   around factor 100 more than the error we see, though similar.
> > > > >
> > > > > - The test case calls the musl clock_gettime() function, which falls back to
> > > > >   the clock_gettime64() syscall on kernels prior to 5.5, or to the 32-bit
> > > > >   clock_gettime() prior to Linux-5.1. As reported in the bug, Linux-4.19 does
> > > > >   not show the bug.
> > > > >
> > > > > - The behavior was not reproduced on the same user space in qemu,
> > > > >   though I cannot tell whether the exact same kernel binary was used.
> > > > >
> > > > > - glibc-2.31 calls the same clock_gettime64() vdso function on arm to
> > > > >   implement clock_gettime(), but earlier versions did not. I have not
> > > > >   seen any reports of this bug, which could be explained by users
> > > > >   generally being on older versions.
> > > > >
> > > > > - As far as I can tell, there are no reports of this bug from other users,
> > > > >   and so far nobody could reproduce it.
> > 
> > note: i could not reproduce it in qemu-system with these configs:
> > 
> > qemu-system-aarch64 + arm64 kernel + compat vdso
> > qemu-system-aarch64 + kvm accel (on cortex-a72) + 32bit arm kernel
> > qemu-system-arm + cpu max + 32bit arm kernel
> > 
> > so i think it's something specific to that user's setup
> > (maybe rpi hw bug or gcc miscompiled the vdso or something
> > with that particular linux, i built my own linux 5.6 because
> > i did not know the exact kernel version where the bug was seen)
> > 
> > i don't have access to rpi (or other cortex-a53 where i
> > can install my own kernel) so this is as far as i got.
> 
> If we have a binary of the kernel that's known to be failing on the
> hardware, it would be useful to dump its vdso and examine the
> disassembly to see if it was miscompiled.

OK, OP posted it and I think we've solved this. See
https://github.com/richfelker/musl-cross-make/issues/96#issuecomment-631604410

And my analysis:

<@dalias> see what i just found on the tracker
<@dalias> patch_vdso/vdso_nullpatch_one in arch/arm/kernel/vdso.c patches out the time32 functions in this case
<@dalias> but not the time64 one
<@dalias> this looks like a real kernel bug that's not hw-specific except breaking on all hardware where the patching-out is needed
<@dalias> we could possibly work around it by refusing to use the time64 vdso unless the time32 one is also present
<@dalias> yep
<@dalias> so i think we've solved this. the kernel thought it wasnt using vdso anymore because it patched it out
<@dalias> but it forgot to patch out the time64 one
<@dalias> so it stopped updating the data needed for vdso to work


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
