Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABDCB67A4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 18:02:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fK8HsniPQ7t38+cGm9qfBeSMkC8AHYF3AQ1/+B8ScN8=; b=HA1ys0FhcqGqyr
	7KDKzYmHxWLyEca8v9OwM6fXH0sQOVEby/OxUKPbn4eO9IL+a4THM1z9LwwYPLj1QIdoklZXq8xeG
	u8GJY+AdWtpxvn+J4htKZSINlxyDPfDVMnQQl2X9kdVdfy5Lz/DBJ8Ps3XYt8h+pdTttsUL5gb0Zg
	+XDy6+AoOg9HaNXjIar10mJ9b3GJtvP3cF7+Q6yuldrFs07LViUo3vSGw5xzVDcEQ2rtNbFfsTh0y
	lax2Pgm5c39zBt2kSbqcMSg4xDyPJ4fK7Fa71jLgVd6NARibFxsM1njjwM1UzcAXhC9JuVN5RuhJa
	8RX4YiXgkFTgWrGbajuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAcPQ-000722-77; Wed, 18 Sep 2019 16:02:24 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAcPD-00071e-RR
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 16:02:13 +0000
Received: by mail-wm1-x341.google.com with SMTP id r17so5121615wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 09:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Yl3CO9TXK6n/CjIj2w2hV4glH8vSZmkVoir/AzZov4I=;
 b=U351S7T4SCivIrzesyKLpL9AreTpmBJQhbqLAJnNmsEnw3rIpnrKGwF6Fpc8D+2Al8
 RqkuS2WoofCu1MGiD8ec7/xQ+yXsK5YTpc6GpBZw5j3J98mR8h4i4Hs4BYV9MI7luQ5q
 5EyN3XIz2ayV3ApV1JeG+ZfIrtE2kfun6KmQX6jUkQcHOqqiWE9tNFLaT5elWSCMea/1
 Gw4y7+j+Ni8oInM8XSD/Ozoc+LzZ8yaB26Hks3ndYqa7HKJrLR8RPU7mu7HINAAGeT5u
 mrz4c+Zs6gr1oYnuVLVi1HpeAdPReQkg8IaV9Y0CfW9oyG3zNKDzVgwGkW257Mnr8nqM
 xtVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Yl3CO9TXK6n/CjIj2w2hV4glH8vSZmkVoir/AzZov4I=;
 b=mPD+ZPl+vV9frHf+xPiv1DYS+Bhqj/eGYdWjvRUIUHhIydxnhFXv7t4WYNKhREYTHe
 KtHjDJC1ZXw5VVo2wpoWMzQwnUvC5w/HICBcvrhh/YnL/2pClUzLXL1nvh44GQR4nSCd
 PxSuVOTvbOnJSKofkS/ndbcMA1lO3C5jSn5PxcwzLiIxmxGrJ7BcMgW3JibaHbIg+hr7
 P54nYsXnaP/wYCL4PT1slLM8B2nbLENrlaPE08Iln53mHKBPPokgJSQWpqMLfgcOjnBi
 bQQ9CQXRvdX2pBHjuOZ5UAJs8ryQRigaO0jbglpMOoVy+KCRxbaRm92a4ucrhFNhoyZ7
 1K0g==
X-Gm-Message-State: APjAAAWDTQ869GeiayTUffqs1AVtatC3HvwIisKt0vL4O5Vktsc8/870
 vz3uvfF2OhTtTEUE5ynonm0=
X-Google-Smtp-Source: APXvYqxEayvWyVYmkBnYgZYJPoYd22DnKWrjTOr+bR9LYPB1+dKok81yN6ApRMRZvGxAztD7zSPAvg==
X-Received: by 2002:a7b:c0d4:: with SMTP id s20mr3638158wmh.101.1568822529834; 
 Wed, 18 Sep 2019 09:02:09 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id r28sm8558346wrr.94.2019.09.18.09.02.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 09:02:09 -0700 (PDT)
Date: Wed, 18 Sep 2019 09:02:07 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] [v2] arm64: fix unreachable code issue with cmpxchg
Message-ID: <20190918160207.GA23613@archlinux-threadripper>
References: <20190910115643.391995-1-arnd@arndb.de>
 <20190917203425.GA31423@archlinux-threadripper>
 <20190918090240.5cc3rfcuenefisgr@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918090240.5cc3rfcuenefisgr@willie-the-truck>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_090211_890215_CDB0984B 
X-CRM114-Status: GOOD (  23.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Andrew Murray <andrew.murray@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 10:02:41AM +0100, Will Deacon wrote:
> On Tue, Sep 17, 2019 at 01:34:25PM -0700, Nathan Chancellor wrote:
> > On Tue, Sep 10, 2019 at 01:56:22PM +0200, Arnd Bergmann wrote:
> > > On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> > > when CONFIG_OPTIMIZE_INLINING is set.
> > > Clang then fails a compile-time assertion, because it cannot tell at
> > > compile time what the size of the argument is:
> > > 
> > > mm/memcontrol.o: In function `__cmpxchg_mb':
> > > memcontrol.c:(.text+0x1a4c): undefined reference to `__compiletime_assert_175'
> > > memcontrol.c:(.text+0x1a4c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `__compiletime_assert_175'
> > > 
> > > Mark all of the cmpxchg() style functions as __always_inline to
> > > ensure that the compiler can see the result.
> > > 
> > > Acked-by: Nick Desaulniers <ndesaulniers@google.com>
> > > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/648
> > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> > > Tested-by: Andrew Murray <andrew.murray@arm.com>
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > ---
> > > v2: skip unneeded changes, as suggested by Andrew Murray
> > > ---
> > >  arch/arm64/include/asm/cmpxchg.h | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
> > > index a1398f2f9994..f9bef42c1411 100644
> > > --- a/arch/arm64/include/asm/cmpxchg.h
> > > +++ b/arch/arm64/include/asm/cmpxchg.h
> > > @@ -62,7 +62,7 @@ __XCHG_CASE( ,  ,  mb_, 64, dmb ish, nop,  , a, l, "memory")
> > >  #undef __XCHG_CASE
> > >  
> > >  #define __XCHG_GEN(sfx)							\
> > > -static inline unsigned long __xchg##sfx(unsigned long x,		\
> > > +static __always_inline  unsigned long __xchg##sfx(unsigned long x,	\
> > >  					volatile void *ptr,		\
> > >  					int size)			\
> > >  {									\
> > > @@ -148,7 +148,7 @@ __CMPXCHG_DBL(_mb)
> > >  #undef __CMPXCHG_DBL
> > >  
> > >  #define __CMPXCHG_GEN(sfx)						\
> > > -static inline unsigned long __cmpxchg##sfx(volatile void *ptr,		\
> > > +static __always_inline unsigned long __cmpxchg##sfx(volatile void *ptr,	\
> > >  					   unsigned long old,		\
> > >  					   unsigned long new,		\
> > >  					   int size)			\
> > > @@ -255,7 +255,7 @@ __CMPWAIT_CASE( ,  , 64);
> > >  #undef __CMPWAIT_CASE
> > >  
> > >  #define __CMPWAIT_GEN(sfx)						\
> > > -static inline void __cmpwait##sfx(volatile void *ptr,			\
> > > +static __always_inline void __cmpwait##sfx(volatile void *ptr,		\
> > >  				  unsigned long val,			\
> > >  				  int size)				\
> > >  {									\
> > > -- 
> > > 2.20.0
> > > 
> > 
> > Looks like the arm64 pull request happened without this patch so clang
> > all{mod,yes}config builds are broken. Did the maintainers have any
> > further comments on it or could this make it in with the next one?
> 
> Fear not! I plan to send this with some other fixes we've got for -rc1.
> I just to get my CI scripts going again (new machine), but that shouldn't
> take long.
> 
> Will

Great, thank you!

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
