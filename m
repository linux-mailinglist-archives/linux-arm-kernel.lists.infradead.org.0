Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DEB1DA2F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 22:42:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I1hZsfagNCXozCeuaH0eKjsfTj8lpPtiF01O1i3b2Ro=; b=h03NvJo137QAVG
	NfD2/ery1XFWkyLG4iiN+b3fyDJknmP0dvdwo8wh12LiLUs/ovH/WC4D6dAJfdUWlXl1svoEaleNp
	6/srJJVnyspMuiosaZiMy1USQnxVbiF5Wmu5MADBnZlenv+7iu8yXGVdgla/E+5lvZFFWRT4/pfIu
	Wqn2oUtknArgY44agWs1oTtiXVecx+OyZspRNNpWQsd8PvUZgecnR2zgEhY6FvwTzveq0VJIXrXrX
	ule/HDner+RQ73r4OwBwNvCa/OENlTBtsWojiWuvgnoGl3aEer0CS1lz/xaKqsakwQuQI1o++ZipI
	7be7xuLdmabAkRXZPYZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb944-0008Ru-RS; Tue, 19 May 2020 20:42:16 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb93w-0008RW-78
 for linux-arm-kernel@bombadil.infradead.org; Tue, 19 May 2020 20:42:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=8vXABvG11zmJXZu8TGbHZpzwWNurCc7kUYEDOv40sps=; b=ZIKQTgW5+NNfOBTlgBhybBcN2j
 7w6RXcShFghfYlK5taphFPqJY0GAMebf/HVIbqiE5cheB4F0QisSCAYqKiYGRKkpvc9T8Pbea+j/g
 uQxJIGGBLUHXWfP9aTjestifMKm4GOoAW8KA67uFC1zgWcvF+q4gfDFHAcat4YL2ra0+VorhxoRSU
 mnYt56HQdrHVJUCIMhpt6XBXoRiE0GmPWl0BIQu4Ak263sLXm5vy3oX+SAH58Eq6jLji6M4+5gnDB
 clmXMFImQZWLwnSqcf9xDByskESzbVC8YUwofuYJIl3Gbh/u5ytPBENTJLqqiRrkUUuXQIuQoBCiE
 HKRxtPZw==;
Received: from brightrain.aerifal.cx ([216.12.86.13])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb93r-00073Z-49
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 20:42:06 +0000
Date: Tue, 19 May 2020 16:41:44 -0400
From: Rich Felker <dalias@libc.org>
To: Adhemerval Zanella <adhemerval.zanella@linaro.org>
Subject: Re: clock_gettime64 vdso bug on 32-bit arm, rpi-4
Message-ID: <20200519204143.GG1079@brightrain.aerifal.cx>
References: <CAK8P3a2Tw2w73ZkK-W6AA9veMK4-miLUx-TL1EuOdP7EdW-AmQ@mail.gmail.com>
 <0c2abcd1-7da8-2559-1e93-4c3bdd38dec1@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0c2abcd1-7da8-2559-1e93-4c3bdd38dec1@linaro.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_214203_688874_11DFA879 
X-CRM114-Status: GOOD (  34.41  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Will Deacon <will@kernel.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jack Schmidt <jack.schmidt@uky.edu>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 05:24:18PM -0300, Adhemerval Zanella wrote:
> 
> 
> On 19/05/2020 16:54, Arnd Bergmann wrote:
> > Jack Schmidt reported a bug for the arm32 clock_gettimeofday64 vdso call last
> > month: https://github.com/richfelker/musl-cross-make/issues/96 and
> > https://github.com/raspberrypi/linux/issues/3579
> > 
> > As Will Deacon pointed out, this was never reported on the mailing list,
> > so I'll try to summarize what we know, so this can hopefully be resolved soon.
> > 
> > - This happened reproducibly on Linux-5.6 on a 32-bit Raspberry Pi patched
> >    kernel running on a 64-bit Raspberry Pi 4b (bcm2711) when calling
> >    clock_gettime64(CLOCK_REALTIME)
> 
> Does it happen with other clocks as well?
> 
> > 
> > - The kernel tree is at https://github.com/raspberrypi/linux/, but I could
> >   see no relevant changes compared to a mainline kernel.
> 
> Is this bug reproducible with mainline kernel or mainline kernel can't be
> booted on bcm2711?
> 
> > 
> > - From the report, I see that the returned time value is larger than the
> >   expected time, by 3.4 to 14.5 million seconds in four samples, my
> >   guess is that a random number gets added in at some point.
> 
> What kind code are you using to reproduce it? It is threaded or issue
> clock_gettime from signal handlers?

Original report thread is here:

https://github.com/richfelker/musl-cross-make/issues/96

The reporter originally misunderstood the issue and wrongly attributed
it to difference between gettimeofday and clock_gettime but it was
just big jumps between successive vdso clock_gettime64 calls.

No transformation was being done on the output of the vdso function;
as long as it succeeds musl just returns directly with the value it
stored in the timespec. No threads or anything fancy were involved.

Current musl will no longer call it but you should be able to
dlopen("linux-gate.so.1", RTLD_NOW|RTLD_LOCAL) then use dlsym to get
its address and call it (not tested; I've never used it this way).

> > - The current musl git tree has been patched to not call clock_gettime64
> >    on ARM because of this problem, so it cannot be used for reproducing it.
> 
> So should glibc follow musl and remove arm clock_gettime6y4 vDSO support
> or this bug is localized to an specific kernel version running on an
> specific hardware?

For musl it was important to disable it asap pending a fix, because
users are expected to generate static binaries, and these could make
it into the wild without anyone realizing they're broken until much
later when run on an affected kernel (especially since pre-5.6 kernels
would hide the issue entirely due to lacking vdso). Ideally a fix will
be something we can detect (e.g. new symbol version) so as not to risk
calling the broken one, but whether that's necessary may depend on
what's affected.

I'm not sure if glibc should do the same; it's not often used in
static linking, and replacing libc (shared lib, or re-static-linking
which LGPL requires you to facilitate to distribute static binaries)
could solve the issue on affected systems.

Rich

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
