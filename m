Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F199C32DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 13:44:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pObFtYobOrQGX9tomKEYHcq9RZmp1FfnuR7tSg0MCm8=; b=hBUe2aLhsgPYWn
	I5rf+O+iWrMeaJ3E2PbtxihA0CbO4jrcr8f055156jZUDUqb4G1sic4ghnKJ1m2xYStKqxgpdBGqR
	LH56rIPp4MwVMgI47mRj9hfv3eIeEFeb6YOxMW0LXXjsR6XvLG9iPoh9Lu+xiajqcgbv42Wnb5Jfk
	vQ1ZDfTy0v6gTorCIcD7Tp9HbA0JZZQk0Pmgo2Vsy5y8XFgUpnv9dlenwju0gJcfDa4IxPe9YdVu3
	DmT47DMSWdIQC80swpn5bO0QfnS5UAjsTZ9W2YFNEBgAGDI7vjwFJqVDj/IkfdL6n6pI4X/ShGm84
	Oh8jumglWaK+jaD1/h9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFGZS-0001at-J1; Tue, 01 Oct 2019 11:43:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFGX8-0007rG-47
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 11:41:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5CAAC337;
 Tue,  1 Oct 2019 04:41:32 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C85B53F706;
 Tue,  1 Oct 2019 04:41:31 -0700 (PDT)
Date: Tue, 1 Oct 2019 12:41:30 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] Partially revert "compiler: enable
 CONFIG_OPTIMIZE_INLINING forcibly"
Message-ID: <20191001114129.GL42880@e119886-lin.cambridge.arm.com>
References: <20190930114540.27498-1-will@kernel.org>
 <CAK7LNARWkQ-z02RYv3XQ69KkWdmEVaZge07qiYC8_kyMrFzCTg@mail.gmail.com>
 <20191001104253.fci7s3sn5ov3h56d@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001104253.fci7s3sn5ov3h56d@willie-the-truck>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_044134_275090_72C15C9A 
X-CRM114-Status: GOOD (  25.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 11:42:54AM +0100, Will Deacon wrote:
> On Tue, Oct 01, 2019 at 06:40:26PM +0900, Masahiro Yamada wrote:
> > On Mon, Sep 30, 2019 at 8:45 PM Will Deacon <will@kernel.org> wrote:
> > > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > > index 93d97f9b0157..c37c72adaeff 100644
> > > --- a/lib/Kconfig.debug
> > > +++ b/lib/Kconfig.debug
> > > @@ -312,6 +312,7 @@ config HEADERS_CHECK
> > >
> > >  config OPTIMIZE_INLINING
> > >         def_bool y
> > > +       depends on !(ARM || ARM64) # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91111
> > 
> > 
> > This is a too big hammer.
> 
> It matches the previous default behaviour!
> 
> > For ARM, it is not a compiler bug, so I am trying to fix the kernel code.
> > 
> > For ARM64, even if it is a compiler bug, you can add __always_inline
> > to the functions in question.
> > (arch_atomic64_dec_if_positive in this case).
> > 
> > You do not need to force __always_inline globally.
> 
> So you'd prefer I do something like the diff below? I mean, it's a start,
> but I do worry that we're hanging arch/arm/ out to dry.

If I've understood one part of this issue correctly - and using the
c2p_unsupported build failure as an example [1], there are instances in
the kernel where it is assumed that the compiler will optimise out a call
to an undefined function, and also assumed that the compiler will know
at compile time that the function will never get called. It's common to
satisfy this assumption when the calling function is inlined.

But I suspect there may be other cases similar to c2p_unsupported which
are still lurking.

For example the following functions are called but non-existent, and thus
may be an area worth investigating:

__buggy_use_of_MTHCA_PUT, __put_dbe_unknown, __cmpxchg_wrong_size,
__bad_percpu_size, __put_user_bad, __get_user_unknown,
__bad_unaligned_access_size, __bad_xchg

But more generally, as this is a common pattern - isn't there a benefit
here for changing all of these to BUILD_BUG? (So they can be found easily).

Or to avoid this class of issues, change them to BUG or unreachable - but
lose the benefit of compile time detection?

Thanks,

Andrew Murray

[1] https://lore.kernel.org/patchwork/patch/1122097/
> 
> Will
> 
> --->8
> 
> diff --git a/arch/arm64/include/asm/atomic_lse.h b/arch/arm64/include/asm/atomic_lse.h
> index c6bd87d2915b..574808b9df4c 100644
> --- a/arch/arm64/include/asm/atomic_lse.h
> +++ b/arch/arm64/include/asm/atomic_lse.h
> @@ -321,7 +321,8 @@ static inline s64 __lse_atomic64_dec_if_positive(atomic64_t *v)
>  }
>  
>  #define __CMPXCHG_CASE(w, sfx, name, sz, mb, cl...)                    \
> -static inline u##sz __lse__cmpxchg_case_##name##sz(volatile void *ptr, \
> +static __always_inline u##sz                                           \
> +__lse__cmpxchg_case_##name##sz(volatile void *ptr,                     \
>                                               u##sz old,                \
>                                               u##sz new)                \
>  {                                                                      \
> @@ -362,7 +363,8 @@ __CMPXCHG_CASE(x,  ,  mb_, 64, al, "memory")
>  #undef __CMPXCHG_CASE
>  
>  #define __CMPXCHG_DBL(name, mb, cl...)                                 \
> -static inline long __lse__cmpxchg_double##name(unsigned long old1,     \
> +static __always_inline long                                            \
> +__lse__cmpxchg_double##name(unsigned long old1,                                \
>                                          unsigned long old2,            \
>                                          unsigned long new1,            \
>                                          unsigned long new2,            \
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
