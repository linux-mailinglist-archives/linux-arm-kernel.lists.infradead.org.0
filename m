Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 372D96438B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 10:28:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4x24FyZbfphW7oAkyE+iUXy5XpHxVYtABLqgJtH1mb8=; b=fxRYqDfwDne3UK
	tvZ9wO6fPsw3Z0xzkGDLswvOm1yhDgw76mNryiwKgFavec1+Aog250OkewxKnU56cBWPMdu4Pwm15
	5tqfiCJasfQNM6Z5gxh3Zu2Vna1pQp/oX+CcRSk+ngrlzLsy7tytoFd7RjlXYyhVyMLyetz5BnatT
	2PeMxUfhj/bn62iMc3OZp5ae5g1HSoZnOjCzm4I8eDHqFT1Gwf9E9Z9Sa4CLnMBJwW96jL4pVMqBR
	HLnxxdIetBLCfSA+c3iCZDTqFHZWT+o4ZSEr4bX6kFNQFq87Sqs2RGapk8yebzBVIB0OCAEt24XZ1
	4l/eauBGncw8iatmW3xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl7xR-0001PB-KF; Wed, 10 Jul 2019 08:28:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl7xG-0001Oo-5I
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 08:27:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D0AF220651;
 Wed, 10 Jul 2019 08:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562747277;
 bh=KtzVii5P4LP//T6JpRtFhPSLRcL9TdMNzIFDUtImHus=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qR49111kqThrC5A5mX+wugORt3GbwDStFhBcJX2gaNEdewA1aeZQ1JHwfhfJRyEZK
 tP50l2WhV6CKmi0jDYoZDp03A/a2GGDPZ0TDqPIHnG8nKkh0cxtTkyqwBgSc5M6Stb
 HRi5PNHjkG0VLqCovtd7C3IHEy0mjXsQq4BaXhOU=
Date: Wed, 10 Jul 2019 09:27:50 +0100
From: Will Deacon <will@kernel.org>
To: John Stultz <john.stultz@linaro.org>
Subject: Re: [PATCH v7 10/25] arm64: compat: Add vDSO
Message-ID: <20190710082750.mvm3e6myzpqsurga@willie-the-truck>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-11-vincenzo.frascino@arm.com>
 <CALAqxLXxE5B+vVLj7NcW8S05nhDQ+XSKVn=_MNDci667JDFEhA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALAqxLXxE5B+vVLj7NcW8S05nhDQ+XSKVn=_MNDci667JDFEhA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_012758_237569_E6A1B653 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, linux-kselftest@vger.kernel.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Shuah Khan <shuah@kernel.org>,
 linux-arch@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Andre Przywara <andre.przywara@arm.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Huw Davies <huw@codeweavers.com>, lkml <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Shijith Thotton <sthotton@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi John,

On Tue, Jul 09, 2019 at 09:02:54PM -0700, John Stultz wrote:
> On Fri, Jun 21, 2019 at 3:18 AM Vincenzo Frascino
> <vincenzo.frascino@arm.com> wrote:
> >
> > Provide the arm64 compat (AArch32) vDSO in kernel/vdso32 in a similar
> > way to what happens in kernel/vdso.
> >
> > The compat vDSO leverages on an adaptation of the arm architecture code
> > with few changes:
> >  - Use of lib/vdso for gettimeofday
> >  - Implementation of syscall based fallback
> >  - Introduction of clock_getres for the compat library
> >  - Implementation of trampolines
> >  - Implementation of elf note
> >
> > To build the compat vDSO a 32 bit compiler is required and needs to be
> > specified via CONFIG_CROSS_COMPILE_COMPAT_VDSO.
> >
> 
> Hey Vincenzo!
>   Congrats on getting this work merged, I know its been a long effort
> over a number of years!
> 
> Though unfortunately, it seems the arm64 vdso code that just landed is
> breaking AOSP for me.
> 
> I see a lot of the following errors:
> 01-01 01:22:14.097   755   755 F libc    : Fatal signal 11 (SIGSEGV),
> code 1 (SEGV_MAPERR), fault addr 0x3cf2c96c in tid 755 (cameraserver),
> pid 755 (cameraserver)
> 01-01 01:22:14.112   759   759 F libc    : Fatal signal 11 (SIGSEGV),
> code 1 (SEGV_MAPERR), fault addr 0x3cf2c96c in tid 759
> (android.hardwar), pid 759 (android.hardwar)
> 01-01 01:22:14.120   756   756 F libc    : Fatal signal 11 (SIGSEGV),
> code 1 (SEGV_MAPERR), fault addr 0x3cf2c96c in tid 756 (drmserver),
> pid 756 (drmserver)
> 
> Which go away if I revert the vdso merge that went in via tip/timers.
> 
> I tried to bisect things down a bit, but as some later fixes are
> required (at one point, date was returning the start epoch and never
> increasing), this hasn't worked too well. But I'm guessing since I
> see: "CROSS_COMPILE_COMPAT not defined or empty, the compat vDSO will
> not be built", and the system is half working, I'm guessing this is an
> issue with just the 32bit code failing.  While I can try to sort out
> the proper CROSS_COMPILE_COMPAT in my build environment, I assume
> userland shouldn't be crashing if that value isn't set.
> 
> Any chance this issue has already been raised?

First I've seen of it, although Vincenzo is likely to know better than me.
In the meantime, please can you share your .config?

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
