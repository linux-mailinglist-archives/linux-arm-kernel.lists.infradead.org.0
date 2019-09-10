Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA49AE721
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 11:39:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVDe+HKLIsOMeECfR1lP/l9Elj9DhnsPDEckNMLR6eE=; b=GjedEXur42AJnM
	h/337BY7j+Ehfo6EO2qthSWKtecGcHd46M3hoUsWfYDeX6oeH+j7i74icGjxsL1OHKAf0Qg3RcYRW
	U3adKuCxElYmCjA7LALU/wnkv9wDTsObMwwjx7LF9TR8e/ILi4vyF9RCxsxYd2U4phe2xqAGWg9M3
	ewLxJZUKxZOI4PhmJL0UoW/ckhp+U6byVzjRz0MSg59PG98z5SvVagboxDNePvIro64IxjY0BaDL/
	DCei+5hBoRjNjZJDSfXcFuI74nOp4k2HK2ZM8oLPA8DlOK7PB5YMzZ0oqk03pa/mzNbxX5c4m6DAD
	7cSM1c+OF/TYAuE5pl+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7cc9-00081U-97; Tue, 10 Sep 2019 09:39:09 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7cbv-00080p-Fo
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 09:38:57 +0000
Received: by mail-qk1-f196.google.com with SMTP id x134so16317689qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 02:38:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7BZdQMWt/4gR8KdMEOxeANPATM7+OW7WAKZb9Cg8SzQ=;
 b=hyYEIljN0tfjtrjl00vbUaGcOd0xDwKg4Agn4wrN1E5/YVgsNTh45F/bP7oPtpB0Ob
 ORP/x/XeV+X7uCennw8vwrRTgp8hNLPSxqfLn1igd3Did6pju0n4BygxA7R5Ds2S/LxD
 XIwwlTAg1mEy3puwehJCj8uTOLDLfAhqPr3FzxGmM0R72tHweloec+9NZNQmksMGSW35
 3VZeIi97nPdDN7yDCrjYXQPyeTmDVTHjCU/JMsYovGmFZdzDUjsMh5DRvAtoos/88q3f
 7gsOYJSYoqlRET5ITRqOkAWkhCHFTSerticbd2LzScoViB4zlhogQ5in0mKVXBHBr5Po
 ZVgQ==
X-Gm-Message-State: APjAAAXrRuTV4016FbnbqHXl0jIzAOgPpbnNMMEwGEhxkTF9tWKKSMtx
 mqYJD3d2ugKNaDnEktDFe7xmFm3yGWVmyG9sulSv5Bf7+ok=
X-Google-Smtp-Source: APXvYqygubpVqiS/wSXVGWFNayc7m09LJvYEQNsdOSnjyL1XZ4yHTZgAN89jOwGLzB/ZJAVK3JgfKGVy21wh0HHzwvc=
X-Received: by 2002:ae9:ee06:: with SMTP id i6mr7667748qkg.3.1568108334116;
 Tue, 10 Sep 2019 02:38:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190909202153.144970-1-arnd@arndb.de>
 <20190910092324.GI9720@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190910092324.GI9720@e119886-lin.cambridge.arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 10 Sep 2019 11:38:37 +0200
Message-ID: <CAK8P3a2Vk+KSUGJyPTRuLPD=KPEAR43SZ1ofB6k+KeQi3fSERw@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_023855_528379_E4B7A3BB 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 11:23 AM Andrew Murray <andrew.murray@arm.com> wrote:

>
> >  arch/arm64/include/asm/cmpxchg.h | 15 ++++++++-------
> >  1 file changed, 8 insertions(+), 7 deletions(-)
> >
> > diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
> > index a1398f2f9994..fd64dc8a235f 100644
> > --- a/arch/arm64/include/asm/cmpxchg.h
> > +++ b/arch/arm64/include/asm/cmpxchg.h
> > @@ -19,7 +19,7 @@
> >   * acquire+release for the latter.
> >   */
> >  #define __XCHG_CASE(w, sfx, name, sz, mb, nop_lse, acq, acq_lse, rel, cl)    \
> > -static inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)              \
> > +static __always_inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)\
>
> This hunk isn't needed, there is no BUILD_BUG here.

Right, I noticed this, but it seemed like a good idea regardless given the small
size of the function compared with the overhead of a function call.  We clearly
want these to be inlined all the time.

Same for the others.

> Alternatively is it possible to replace the BUILD_BUG's with something else?
>
> I think because we use BUILD_BUG at the end of a switch statement, we make
> the assumption that size is known at compile time, for this reason we should
> ensure the function containing the BUILD_BUG is __always_inline.
>
> Looking across the kernel where BUILD_BUG is used as a default in a switch
> statment ($ git grep -B 3 BUILD_BUG\( | grep default), most instances are
> within macros, but many are found in an __always_inline function:
>
> arch/x86/kvm/cpuid.h
> mm/kasan/generic.c
>
> Though some are not:
>
> include/linux/signal.h
> arch/arm64/include/asm/arm_dsu/pmu.h
>
> I wonder if there may be a latent mole ready to whack with pmu.h?

Right, it can't hurt to annotate those as well. I actually have another
fixup for linux/signal.h that I would have to revisit at some point.
See https://bugs.llvm.org/show_bug.cgi?id=38789, I think this is
fixed with clang-9 now, but maybe not with clang-8.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
