Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 230A918BB98
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:50:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bX4PAwhvyzB+19pwIUGAVq70HpNAitPws5fLLSsCOKY=; b=AECWqYFNzmYxTU
	SrgvJWW5l5rG9XhdtsfcWEovpIiOZ26lFhuGAHSb2K35dlXa0hQ8KddM/AmDMZX0rqkpu0JgxnSLv
	//RTtccr9pIb1tO7+f6cZA/Q89PrJMfGBXWhL+zDfn7W/JzeVhSpEOR7hTVa1P+eHUZBZ6aQEsXmU
	IEf5/LPw7x+CfE03aLqmdIHpFVxK/2HXHiIFs2UYLuRekl8nbxTtUi/0KOHrzV4ss2UTWeT6ztu+o
	oaKeuq4907cPP6S/dz9W7+G8MnnB46PQKrhpG8Q2+5+QpwImReCz6HiFTxifErVDteQJsBRhHsutc
	0iuqIbNEasaiGP2F+8BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jExR2-0006JK-44; Thu, 19 Mar 2020 15:50:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jExQk-0006IU-MR
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 15:49:59 +0000
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BF8E121973
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 15:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584632998;
 bh=Rkh1vXkhW9rmZk8EPxDBYiPb1mQUKR3iI0zKH1Fg7V0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WZUFhydFW+Cby4n4jF5wJlr3MQjDUpTFw2i9V1LHv+NPUTRvg4c5vXR+39NvQ36hV
 LV2qdarSCIR9wOQ6JSNEy9hrK7Cx7AstvxQJmgf67dj2IdXfO9Yyr1uyLhJbSZ+zZD
 pTmckZRZnqhY2vCuCiqv/Zba/M1uKnMFKJ5yAAq8=
Received: by mail-wr1-f52.google.com with SMTP id h4so3699706wru.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 08:49:57 -0700 (PDT)
X-Gm-Message-State: ANhLgQ11PNpdaT5w1icwHYd/+sI7gQLrDehvhfn+0udXeWtgkIPZ5vbk
 9o0L7wwuFgDtspxunTYDSeRgEK/VYIMnTDt/K8iqew==
X-Google-Smtp-Source: ADFU+vsxkngrkFV8I9T5oK6bcpr4TwgtNHg0eR2cNw6mloMNXkw0k55Rziijc9a+w3nNSCb9M7gTmTIBkLDmnkww4I4=
X-Received: by 2002:adf:9dc6:: with SMTP id q6mr4999539wre.70.1584632996131;
 Thu, 19 Mar 2020 08:49:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-19-vincenzo.frascino@arm.com>
 <20200317143834.GC632169@arrakis.emea.arm.com>
In-Reply-To: <20200317143834.GC632169@arrakis.emea.arm.com>
From: Andy Lutomirski <luto@kernel.org>
Date: Thu, 19 Mar 2020 08:49:44 -0700
X-Gmail-Original-Message-ID: <CALCETrVWPNaJMbYoXbnWsALXKrhHMaePOUvY0DmXpvte8Zz9Zw@mail.gmail.com>
Message-ID: <CALCETrVWPNaJMbYoXbnWsALXKrhHMaePOUvY0DmXpvte8Zz9Zw@mail.gmail.com>
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_084958_774284_D9D1D0BA 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>, Marc Zyngier <maz@kernel.org>,
 X86 ML <x86@kernel.org>, Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ingo Molnar <mingo@redhat.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Andrei Vagin <avagin@openvz.org>, Stephen Boyd <sboyd@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 7:38 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Tue, Mar 17, 2020 at 12:22:12PM +0000, Vincenzo Frascino wrote:
> > diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
> > index 54fc1c2ce93f..91138077b073 100644
> > --- a/arch/arm64/kernel/vdso32/vgettimeofday.c
> > +++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
> > @@ -8,11 +8,14 @@
> >  #include <linux/time.h>
> >  #include <linux/types.h>
> >
> > +#define VALID_CLOCK_ID(x) \
> > +     ((x >= 0) && (x < VDSO_BASES))
> > +
> >  int __vdso_clock_gettime(clockid_t clock,
> >                        struct old_timespec32 *ts)
> >  {
> >       /* The checks below are required for ABI consistency with arm */
> > -     if ((u32)ts >= TASK_SIZE_32)
> > +     if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
> >               return -EFAULT;
> >
> >       return __cvdso_clock_gettime32(clock, ts);
>
> I probably miss something but I can't find the TASK_SIZE check in the
> arch/arm/vdso/vgettimeofday.c code. Is this done elsewhere?
>

Can you not just remove the TASK_SIZE_32 check entirely?  If you pass
a garbage address to the vDSO, you are quite likely to get SIGSEGV.
Why does this particular type of error need special handling?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
