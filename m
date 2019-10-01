Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F255FC31AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 12:43:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HIZouuhtyv3O5OUvIngcnQP0VXfV/TnMMC9lT4VKb2E=; b=L9Qh7ogj4+OD7J
	A0okVv2j2RwXCBseoBCW7a/Az+tfxJV11lBDZUF39KjekAUroMu6bRWWAKbtOq7zjMHfBIyQ/3vMZ
	Tf+4BdKMe7o/pKMYvBRYBWsHCfEuF5fEuOBkZPYticeL8dSIQ94XzkvcOdT1FpEocs5d7fSreXJWo
	GxCRRaT389EFM8tOPUkpgCGbnVVWEiNYrKrVX/fLNRCwqrGL6zaeB7YsLjbHIJkWApkxaWheqQef4
	PFeCciYIJuyAYWBG0HV6vJ3Wvxw6yFfKBRXXtheTy0uw/MyLIBIe1q66dBJITz3ccZgB5PJeQpx3D
	+hwm4dgACZsOOdnP+s1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFFcY-0001kM-P3; Tue, 01 Oct 2019 10:43:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFFcS-0001jb-25
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 10:43:01 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EAC6221906;
 Tue,  1 Oct 2019 10:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569926578;
 bh=fLlcwekdrGSCzJboirhCdZb2pRq7XYqkATwD0/s6rn8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PRf2kKjUQf04+gaCdNG46D5w6U0piINzln1PR2OvjWhQXDAlD/RkxgHyAojkua2nz
 tq/4o9XqfWbnpabpQep2kx3FXyKQzNDFI7iTKDHAJn8QNaUG8OfOL1tlrbNEC1ejgW
 RF5s1iWFOxLXHv36ZMje4zqPQUovVagB/ZgUvNJI=
Date: Tue, 1 Oct 2019 11:42:54 +0100
From: Will Deacon <will@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] Partially revert "compiler: enable
 CONFIG_OPTIMIZE_INLINING forcibly"
Message-ID: <20191001104253.fci7s3sn5ov3h56d@willie-the-truck>
References: <20190930114540.27498-1-will@kernel.org>
 <CAK7LNARWkQ-z02RYv3XQ69KkWdmEVaZge07qiYC8_kyMrFzCTg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNARWkQ-z02RYv3XQ69KkWdmEVaZge07qiYC8_kyMrFzCTg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_034300_141767_5BC04454 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 06:40:26PM +0900, Masahiro Yamada wrote:
> On Mon, Sep 30, 2019 at 8:45 PM Will Deacon <will@kernel.org> wrote:
> > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > index 93d97f9b0157..c37c72adaeff 100644
> > --- a/lib/Kconfig.debug
> > +++ b/lib/Kconfig.debug
> > @@ -312,6 +312,7 @@ config HEADERS_CHECK
> >
> >  config OPTIMIZE_INLINING
> >         def_bool y
> > +       depends on !(ARM || ARM64) # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91111
> 
> 
> This is a too big hammer.

It matches the previous default behaviour!

> For ARM, it is not a compiler bug, so I am trying to fix the kernel code.
> 
> For ARM64, even if it is a compiler bug, you can add __always_inline
> to the functions in question.
> (arch_atomic64_dec_if_positive in this case).
> 
> You do not need to force __always_inline globally.

So you'd prefer I do something like the diff below? I mean, it's a start,
but I do worry that we're hanging arch/arm/ out to dry.

Will

--->8

diff --git a/arch/arm64/include/asm/atomic_lse.h b/arch/arm64/include/asm/atomic_lse.h
index c6bd87d2915b..574808b9df4c 100644
--- a/arch/arm64/include/asm/atomic_lse.h
+++ b/arch/arm64/include/asm/atomic_lse.h
@@ -321,7 +321,8 @@ static inline s64 __lse_atomic64_dec_if_positive(atomic64_t *v)
 }
 
 #define __CMPXCHG_CASE(w, sfx, name, sz, mb, cl...)                    \
-static inline u##sz __lse__cmpxchg_case_##name##sz(volatile void *ptr, \
+static __always_inline u##sz                                           \
+__lse__cmpxchg_case_##name##sz(volatile void *ptr,                     \
                                              u##sz old,                \
                                              u##sz new)                \
 {                                                                      \
@@ -362,7 +363,8 @@ __CMPXCHG_CASE(x,  ,  mb_, 64, al, "memory")
 #undef __CMPXCHG_CASE
 
 #define __CMPXCHG_DBL(name, mb, cl...)                                 \
-static inline long __lse__cmpxchg_double##name(unsigned long old1,     \
+static __always_inline long                                            \
+__lse__cmpxchg_double##name(unsigned long old1,                                \
                                         unsigned long old2,            \
                                         unsigned long new1,            \
                                         unsigned long new2,            \

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
