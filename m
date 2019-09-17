Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6516B5707
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 22:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QS8E8/kJiYhgzrrWkBnhxwqhRX2OSrkFPI+FVhcUOu4=; b=g2UyjXBiLOpe3t
	gaofsTwfH34dni7OCE5d64IrrwhuSyBG8Z+TZqir4TKYC03mtxJNblSaWoH6Nz95vIrkjXKgsipXY
	m7tUd0AvfVoBbpOHIhcHQY97ANzf11qXRJUSogSokLc6LFbizjUlrPn/Odn3md1pd6vYn7PvHjRZe
	rxu3+SU3yF+g86xir+canJrlEnrfB4pci7lVx3V2lYP9VUG+myEdUU3GRfzx5jiD43gySt5HYZw7E
	molJMSW0vakOuS0zjmLXTHYDyxvfNIWI8gHXYsvGCnREuyp6vLQpQc/3L0r/hclXxeEWr2iCsYlfh
	SjgaJ86GkmQGAu0UrOuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAKBW-0003cY-40; Tue, 17 Sep 2019 20:34:50 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAKBD-0003bn-MB
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 20:34:33 +0000
Received: by mail-wr1-x442.google.com with SMTP id h7so4546391wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 13:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OD2RWaEvg0mKlB6+gvYRUOgK2t5a0eHRxcmucEA949U=;
 b=o7NhIGlLeKfZDZG/2v5fuiQ6Daq/jDGeUpCjB0kSeMoO6VkVfDBjgmnPxmCYlR/Ncp
 zvmTMOiEaipeD4CNEgWtO238GY+pqE8Z6ukFypHk0F+rhd5pTrdNFQkGpu2hDk/wXjmC
 wngE6br/fCluvfzIkf4z1NISPd7pszVW6uUDzZnQH4xO2CEYVFiiHGUdlp4NJjhFKQoT
 oxUWpdll98bzyuJ+jHaVbk2vCbfcN1oagvsWvr2lK2BFS91/kr2ITuX0kkJDbLdsStnU
 VPSD1MoQh5xKCNeHDhzPUGXl5PHoFIi5dxN4Oan3UCmcJS7GNMfDI+DckXyUh6Kp7D+T
 Mdxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OD2RWaEvg0mKlB6+gvYRUOgK2t5a0eHRxcmucEA949U=;
 b=kNZ8YXxJqN49rwChpAx4+pcP66ubZM0nsQr1Sw6PuQtTzXMxegHxDQEVMQO9uedwME
 5digOAYcQHLU/TmbMzDY6UNfrWBUwdoBk4MhEOxo1JpBU9pHox7hYm+OyY2QsZXjawBr
 5R+Ztbv5ROeYbxAxnQXtQglp4Ea6htEDfULUBNO25vrO08DM8h4abAFZK+QGMjY7e50i
 eFZMqutePSpfsa0U3qIJ+OFs/7A0OJqpVDvqoSNZ8Tv/I0y1mZr2dTnyeER72yJRj1Rh
 oNiqSL1XrDX58luhoA9NrwYs5afguap2YZqxfY1lXLPZSg0mxburUpU7cGRkDR4SXGqV
 RoyA==
X-Gm-Message-State: APjAAAXm6wvt4M/VIuTBAeV86fcUdsIoV6HPGsbabWTVZqGW2mefOmyT
 MYKN5DRa/vmXiniIVby7+j8=
X-Google-Smtp-Source: APXvYqxhnNq0yqOrawXMaQYRcUtP27ZOq4tAifJHQCJI7Zugd+8QHbWna+1DR7USZuanbBpm9ScAqg==
X-Received: by 2002:a5d:4a43:: with SMTP id v3mr339029wrs.146.1568752467716;
 Tue, 17 Sep 2019 13:34:27 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id p85sm7607787wme.23.2019.09.17.13.34.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 13:34:26 -0700 (PDT)
Date: Tue, 17 Sep 2019 13:34:25 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] [v2] arm64: fix unreachable code issue with cmpxchg
Message-ID: <20190917203425.GA31423@archlinux-threadripper>
References: <20190910115643.391995-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910115643.391995-1-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_133431_753786_36E7479B 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Andrew Murray <andrew.murray@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 01:56:22PM +0200, Arnd Bergmann wrote:
> On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> when CONFIG_OPTIMIZE_INLINING is set.
> Clang then fails a compile-time assertion, because it cannot tell at
> compile time what the size of the argument is:
> 
> mm/memcontrol.o: In function `__cmpxchg_mb':
> memcontrol.c:(.text+0x1a4c): undefined reference to `__compiletime_assert_175'
> memcontrol.c:(.text+0x1a4c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `__compiletime_assert_175'
> 
> Mark all of the cmpxchg() style functions as __always_inline to
> ensure that the compiler can see the result.
> 
> Acked-by: Nick Desaulniers <ndesaulniers@google.com>
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/648
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> Tested-by: Andrew Murray <andrew.murray@arm.com>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> v2: skip unneeded changes, as suggested by Andrew Murray
> ---
>  arch/arm64/include/asm/cmpxchg.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
> index a1398f2f9994..f9bef42c1411 100644
> --- a/arch/arm64/include/asm/cmpxchg.h
> +++ b/arch/arm64/include/asm/cmpxchg.h
> @@ -62,7 +62,7 @@ __XCHG_CASE( ,  ,  mb_, 64, dmb ish, nop,  , a, l, "memory")
>  #undef __XCHG_CASE
>  
>  #define __XCHG_GEN(sfx)							\
> -static inline unsigned long __xchg##sfx(unsigned long x,		\
> +static __always_inline  unsigned long __xchg##sfx(unsigned long x,	\
>  					volatile void *ptr,		\
>  					int size)			\
>  {									\
> @@ -148,7 +148,7 @@ __CMPXCHG_DBL(_mb)
>  #undef __CMPXCHG_DBL
>  
>  #define __CMPXCHG_GEN(sfx)						\
> -static inline unsigned long __cmpxchg##sfx(volatile void *ptr,		\
> +static __always_inline unsigned long __cmpxchg##sfx(volatile void *ptr,	\
>  					   unsigned long old,		\
>  					   unsigned long new,		\
>  					   int size)			\
> @@ -255,7 +255,7 @@ __CMPWAIT_CASE( ,  , 64);
>  #undef __CMPWAIT_CASE
>  
>  #define __CMPWAIT_GEN(sfx)						\
> -static inline void __cmpwait##sfx(volatile void *ptr,			\
> +static __always_inline void __cmpwait##sfx(volatile void *ptr,		\
>  				  unsigned long val,			\
>  				  int size)				\
>  {									\
> -- 
> 2.20.0
> 

Looks like the arm64 pull request happened without this patch so clang
all{mod,yes}config builds are broken. Did the maintainers have any
further comments on it or could this make it in with the next one?

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
