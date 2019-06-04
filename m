Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA93E34655
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:12:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGHN62iKsgz0DWJ9/hlWaFsWABP2V69Qh+rBJ0f206A=; b=YB4PmzRa160LNe
	O3ZEkhypxQIhy3WCL8isw7avy3CrDvOtI2KeXn39GPTVtFdCP3VPAdWSzpd0r5K++G2Wk9dh9ru0s
	f0lD8YJCyNf47sEU1x1Y4nkvYZ0u8cab/f0figmKMWQGacOii++BlaYbu5yEPUCoVTA//rvbU8AZB
	fLjj+kf5n78aaY1Xv5yZPKHA5Nzl691XaXtEqYy8pPehlvWOSpP4Hz9nKyMZ22hhDk0Qz7IEZtIUC
	YF92vT+qK8hq6c+/MxaMChlFft9RYz4DdnGcSGhNAp0ir/5qcYyXp1K5UTMTqPHXeWZetV0eqx9r7
	dSesr+7w+OFOu8VTIh2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8J0-0003OS-FY; Tue, 04 Jun 2019 12:12:42 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8Is-0003NX-I5
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 12:12:36 +0000
Received: by mail-qt1-f193.google.com with SMTP id z24so6231011qtj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 05:12:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L+e5fjRWyUfLgL9OYMwlIZ20PAP5dcbx1HkuQ94d/d4=;
 b=FBMlh2oNPLL8U9juigzISCW3BYyWtp1DVhRf3eQDnE2i34v7kUyyNsFavLlAu65SR2
 O1gX+mU76gVG3p07gMVhbW4GA7O1QwDWtTpZ3EOjpT5jnlBo51FpNfXSrJui3K4FdxgW
 ERH9ZhupPY0wkBdbMulX7Psf5yO4y6JlEAaSqoLm6tzWyRGsPTwWVbed6P4rAX2E4MY9
 K4lxYdnsJVCAHMHz8iyPoDxYkYIx854F7dvkmBVGC/836gN/trvNXs+QcOKljsQVe5oL
 R83LCkFznml08dfwJJuWH54Skdu7sawRx50RVBkYgR+ZngQjVg86bH0/PL33pvAiJihE
 jrfw==
X-Gm-Message-State: APjAAAWkK8eQ4BW3zdy3gCNEPfWaEJVrZx0VKUBb4r9i6MLbdQ2p/3E9
 oz0aGlcBqvvXqYD5VuM9XUTclB4vtzT7grcn+sU=
X-Google-Smtp-Source: APXvYqwSfz7cbuyCa6Bus+YKHBZiY4Bkrj2BkzX6U2Y1NapOb+JxqSpgu6ZjrsyPagQKMEJ9lTV9O3R1/mJPh6++Fnw=
X-Received: by 2002:aed:2bc1:: with SMTP id e59mr7929200qtd.7.1559650352510;
 Tue, 04 Jun 2019 05:12:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <CAK8P3a11DE0sXteZoaP_N=mDhx3tXitGKddn1ogtFqJBYO-SCA@mail.gmail.com>
 <d96667d5-e43b-d33a-fbd0-5acfb4904316@arm.com>
In-Reply-To: <d96667d5-e43b-d33a-fbd0-5acfb4904316@arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 4 Jun 2019 14:12:16 +0200
Message-ID: <CAK8P3a3nxd7F5zLyD1SVarKjjKC0qvMEN8wP6R7zHY9HKdoe0w@mail.gmail.com>
Subject: Re: [PATCH v6 00/19] Unify vDSOs across more architectures
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_051234_598780_4D5FB308 
X-CRM114-Status: GOOD (  21.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, linux-mips@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 2:05 PM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
> On 31/05/2019 09:46, Arnd Bergmann wrote:
> > On Thu, May 30, 2019 at 4:15 PM Vincenzo Frascino
> > <vincenzo.frascino@arm.com> wrote:
> > One open question I touched in my review is whether we want to
> > have a vdso version of clock_getres() in all architectures or not.
> > I'd prefer to leave it out because there is very little advantage to
> > it over the system call (the results don't change at runtime and
> > can easily be cached by libc if performance ever matters), and
> > it takes up a small amount of memory for the implementation.
> >
>
> I thought about it and I ended up with what proposed in this patchset mainly for
> symmetry across all the architectures since in the end they use the same common
> code.
>
> It seems also that there is some performance impact (i.e.):
>
> clock-getres-monotonic:    libc(system call): 296 nsec/call
> clock-getres-monotonic:    libc(vdso): 5 nsec/call
>
>
> I agree with you though when you say that caching it in the libc is a
> possibility to overcome the performance impact.

It's clear that the vdso version is much faster, my point was that
I could not think of any use case that cared about it being fast.

If there is a good reason for it, I also don't mind adding a
clock_getres_time64() vdso version everywhere.

> > We shouldn't just need it for consistency because all callers
> > would require implementing a fallback to the system call
> > anyway, to deal with old kernels.
> >
>
> A way to address this issue would be to use versioning, which seems supported in
> the vdso library (i.e. arch/x86/entry/vdso/vdso32/vdso32.lds.S).
>
> For example for x86 (vdso32) we would have something like:
>
> VERSION
> {
>         LINUX_5.3 (being optimistic here :) ) {
>         global:
>                 __vdso_clock_getres;
>                 __vdso_clock_gettime64;
>         };
>         LINUX_2.6 {
>         global:
>                 __vdso_clock_gettime;
>                 __vdso_gettimeofday;
>                 __vdso_time;
>         };
>
>         LINUX_2.5 {
>         global:
>                 __kernel_vsyscall;
>                 __kernel_sigreturn;
>                 __kernel_rt_sigreturn;
>         local: *;
>         };
> }
>
> What do you think? Would this be a viable solution?

I actually never understood the point of symbol versioning
in the vdso. What does that gain us? Note that there are
no conflicting symbol names between the versions, and
that nothing enforces the kernel headers to match the
symbol version used when linking.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
