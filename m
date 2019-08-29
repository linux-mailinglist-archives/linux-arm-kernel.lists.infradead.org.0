Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C294A275A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 21:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6pS3xr53kKxjcHMMzMlxLRmY8zPodR7Nj03Y04p8A8U=; b=sjuc6QiXQp5Jbf
	I+qLykL8X+UEjXNHp/P8Uk1II5vIoWGhdvLBYHsp9z84g23oJdckkQq9n5nosV8LjWRPaWRczQ5UL
	KafGfapI0DC2Gz1ByKIFIxnX1Dj30GxcqHJtjVlo7CXfFxUHEjDhdaqeQ7y06HB1xWicPIKm/2rUl
	HjeiqaCOgPu+hKZboEgisMuPQEi33NVHAqx3PUaOn5Fr0Oib0U5XHaSYfq84k45sHdq7Va7zPrQBW
	N6aB3lZ0nMRnTzzGVTY8ajnEl8Wv6Ur6r1IzSQ2xOYnt3ik3VrxgBrqHv1zct+mClcpgE1ZvE5YO5
	tCbYgnVQGN/oHdZKmMFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3QC0-000376-Hp; Thu, 29 Aug 2019 19:34:48 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3QBo-00036i-LU
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 19:34:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id y19so4621829wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 12:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wITCcu1aUHRsjm7ofKS0hPTgotk+bgOxAXtcBSapAng=;
 b=om9rfD3r3tWjux8nXOwoZHcvldgVv/88BLWEtjKKzNKRH0tOOMfrrvA1v/uSesZqAu
 F7xX0euXGljeMqlw8nAb87SdY/wz+KlGjAGstx1Cuqawl7/7sq7xH+/aKl4IulH2TYZl
 SZRq839nEKBvwW+Hy2x+q93UiBGv3oCw7wAYKPtqIFzrQkz3jOtwmtk+7CTPsHl+c3pD
 e7LBTdEZn/u5wHLMtVvJ+rGnjH3T0s5DFj2WTmk3UK2yKgaR0r9tMr1GeJzJ/kXzMbhF
 vqCqisP/AY91nhTO7uYN2DG8DSJ5v+qlaYmIDocQZtGuG+lYs+VNS5phXDxwA1Ug/OyA
 sACA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wITCcu1aUHRsjm7ofKS0hPTgotk+bgOxAXtcBSapAng=;
 b=qEhnzT4RvdXQYnRFMeO7y3DcG1o/FKyhM630fSsl8eJO7A7OgNbWKXdE4syrRw3a10
 4p/sV4KWIwC97LWeDhYT1G4AfC4mj6exLPiFhoreEJYUEGSJ614YpiAS1wrVP+Aa2tC9
 cUCfSAhoCr6lfJR0Y56gsIGj2RdV3T2O3Y2yB+fYi62TnCfz0P8Setw2W/lDIj2SVpDs
 CI7CGyAHmv8aXSjOPFOgT59lb4jp2X1wDwr47WgKn5tJa/fkwrnl9YqE9cHeuEK9n5Mg
 nctHergwxgl1duVSEag8c2f9XSEyYDeIHefhGVHFyrbY9pEghbOwdpy1KYhYE4IiNZKr
 HGfA==
X-Gm-Message-State: APjAAAV4KDAWu+yvAUyxVVaNUoqQACkCuJC5HEdtL7v/yNNjrKMnpge9
 ROiDA9M7/AsiziiUaBhVQC+zPBKOKj0=
X-Google-Smtp-Source: APXvYqwfC0hwHaNvtKcJP+AMQFx3UwJll3qWxANro4klHhx9Oo9LuQbO5ZMREVBc1sxJESACW/y4cg==
X-Received: by 2002:adf:e7c4:: with SMTP id e4mr10775791wrn.62.1567107274840; 
 Thu, 29 Aug 2019 12:34:34 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id c201sm7320983wmd.33.2019.08.29.12.34.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 12:34:34 -0700 (PDT)
Date: Thu, 29 Aug 2019 12:34:32 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer
Message-ID: <20190829193432.GA10138@archlinux-threadripper>
References: <20190829062635.45609-1-natechancellor@gmail.com>
 <CAKwvOdkXSWE+_JCZsuQdkCSrK5pJSp9n_Cd27asFP0mHBfHg6w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdkXSWE+_JCZsuQdkCSrK5pJSp9n_Cd27asFP0mHBfHg6w@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_123436_731156_FB73DDAE 
X-CRM114-Status: GOOD (  25.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 Stefan Agner <stefan@agner.ch>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 10:55:28AM -0700, Nick Desaulniers wrote:
> On Wed, Aug 28, 2019 at 11:27 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
> > with clang:
> >
> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable':
> > softirq.c:(.text+0x504): undefined reference to `mcount'
> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip':
> > softirq.c:(.text+0x58c): undefined reference to `mcount'
> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq':
> > softirq.c:(.text+0x6c8): undefined reference to `mcount'
> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter':
> > softirq.c:(.text+0x75c): undefined reference to `mcount'
> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit':
> > softirq.c:(.text+0x840): undefined reference to `mcount'
> > arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount' follow
> >
> > clang can emit a working mcount symbol, __gnu_mcount_nc, when
> > '-meabi gnu' is passed to it. Until r369147 in LLVM, this was
> > broken and caused the kernel not to boot because the calling
> > convention was not correct. Now that it is fixed, add this to
> > the command line when clang is 10.0.0 or newer so everything
> > works properly.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/35
> > Link: https://bugs.llvm.org/show_bug.cgi?id=33845
> > Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  arch/arm/Makefile | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > index c3624ca6c0bc..7b5a26a866fc 100644
> > --- a/arch/arm/Makefile
> > +++ b/arch/arm/Makefile
> > @@ -112,6 +112,12 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
> >  CFLAGS_ABI     +=-funwind-tables
> >  endif
> >
> > +ifeq ($(CONFIG_CC_IS_CLANG),y)
> > +ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 100000; echo $$?),0)
> > +CFLAGS_ABI     +=-meabi gnu
> > +endif
> > +endif
> > +
> 
> Thanks for the patch!  I think this is one of the final issues w/ 32b
> ARM configs when building w/ Clang.
> 
> I'm not super enthused about the version check.  The flag is indeed
> not recognized by GCC, but I think it would actually be more concise
> with $(cc-option) and no compiler or version check.
> 
> Further, I think that the working __gnu_mcount_nc in Clang would
> better be represented as marking the arch/arm/KConfig option for
> CONFIG_FUNCTION_TRACER for dependent on a version of Clang greater
> than or equal to Clang 10, not conditionally adding this flag. (We
> should always add the flag when supported, IMO.  __gnu_mcount_nc's
> calling convention being broken is orthogonal to the choice of
> __gnu_mcount_nc vs mcount, and it's the former's that should be
> checked, not the latter as in this patch.

I will test with or without CONFIG_AEABI like Matthias asked and I will
implement your Kconfig suggestion if it passes all of my tests. The
reason that I did it this way is because I didn't want a user to end up
with a non-booting kernel since -meabi gnu works with older versions of
clang at build time, the issue happens at boot time but the Kconfig
suggestion + cc-option should fix that.

I should have a v2 out this evening.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
