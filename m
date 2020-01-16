Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA4E13FB11
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 22:08:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uhmoK3HD+2SeLSAAP07213w91MTI8/O+tCoGRr+FaK0=; b=gerFHTBwScQ/wI
	eA5zvc4KYW2HLN14qORke+ZufSYhehxhEm1bK665Jimts8em0JBfagq+XUIVgBhm0FtRkywglYA+A
	kCHLDvnJFKQPYjpJXxeG3n4MptLc0bKLjn/rZIEFRw8ZMbpYsR2BQy2/K1mT9rwWqhs+JLgwxdWqz
	247DKA2/vhFa6bQzE29e4GkrHJ3MAgXE2CLuLw2nr1JkoZMKStZUBQpQAr3zpZIKgou9P8ridWo+D
	wNdI7ZbkvnZT0M1ZTqLcxxoiQiKg9lAUFvjemKCSPA7Bo8H021z/GBV5CFVyoyVbE5ArmgvaXWgKQ
	bBRwHa3egs+qUAHDu57g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isCNA-0004hf-5K; Thu, 16 Jan 2020 21:08:12 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isCMz-0004hC-Jo
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 21:08:03 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1isCMp-0001BF-Vb; Thu, 16 Jan 2020 22:07:52 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 0F3B5101226; Thu, 16 Jan 2020 22:07:51 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Andy Lutomirski <luto@kernel.org>
Subject: Re: [RFC PATCH v4 08/11] lib: vdso: allow fixed clock mode
In-Reply-To: <CALCETrX9+PZ1h6xex2WZcSqNT7W-6R-E95jv9hLhSdAzhMCrTA@mail.gmail.com>
References: <cover.1579196675.git.christophe.leroy@c-s.fr>
 <1b278bc1f6859d4df734fb2cde61cf298e6e07fd.1579196675.git.christophe.leroy@c-s.fr>
 <874kwvf9by.fsf@nanos.tec.linutronix.de>
 <CALCETrX9+PZ1h6xex2WZcSqNT7W-6R-E95jv9hLhSdAzhMCrTA@mail.gmail.com>
Date: Thu, 16 Jan 2020 22:07:51 +0100
Message-ID: <871rrzf6u0.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_130801_794334_2F8654B3 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, nathanl@linux.ibm.com,
 Arnd Bergmann <arnd@arndb.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, X86 ML <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andrew Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Andy Lutomirski <luto@kernel.org> writes:
> On Thu, Jan 16, 2020 at 12:14 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>> Some architectures have a fixed clocksource which is known at compile
>> time and cannot be replaced or disabled at runtime, e.g. timebase on
>> PowerPC. For such cases the clock mode check in the VDSO code is
>> pointless.
>>
> I wonder if we should use this on x86 bare-metal if we have
> sufficiently invariant TSC.  (Via static_cpu_has(), not compiled in.)
>
> Maybe there is no such x86 machine.

There might be some, but every time I started to trust the TSC a bit
more someone reported the next variant of brokenness.

Admittedly it has become better at least up to two sockets.

For a start we could do that when the TSC is considered reliable, which
is the case when:

  - The TSC is the only available clocksource

  - tsc=reliable is on the kernel command line

> I really really want Intel or AMD to introduce machines where the TSC
> pinky-swears to count in actual nanoseconds.

and is guaranteed to be synchronized across any number of sockets/cpus
and has an enforcable protection against BIOS writers.

Ideally it'd have a writeable MSR attached which allows us to tweak the
frequency in the PPM range via NTP/PTP.

Guess how long quite some people including Linus and myself are asking
for this?

I know that Linus started bitching about the TSC before me, but it's
already a bit over 20 years on my side when I first talked to Intel and
AMD about the requirements for a reliable clocksource.

Just to set the time lines straight.

Constant frequency TSC surfaced on Intel in 2006 with the Core brand and
on AMD in 2007 with Barcelona (Fam 10h).

In 2008 the first TSC surfaced which was not affected by C-States and 5
years later in 2013 some Atoms came out where TSC even worked accross
S3.

The > 2 socket issue is still not resolved AFAICT, but we got at least
the TSC ADJUST MSR around 2012 which allowed us for the first time to
reliably detect and mitigate BIOS wreckage.

All the years I was envy on architectures which had simple designed and
just reliably working timers forever.

So now you can extrapolate how long it will take until you get your
pinky-swearing pony :)

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
