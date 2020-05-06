Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 840501C7650
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 18:30:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NBPEEt/CH+n/uRjDzrTlpzy3365GvTcQl4YOZh/Yb0E=; b=C4mD3x/+fnyuyc
	LIw1DNMEAX94reKBMVqLnA4gnUr0N1f7yfb8UlQawXeo/DZIFpPFKT2QGulvcJTA5ezZviFN0dM/m
	W2zSJb2Fi0I1UcaqCvxwrMVFWXOVq0CUBsGWVKqXu+hkKrEeZ0huSRETaL8zQg03cUPbRvaM282uS
	1eomOyUIj16wVJWmcdWKtcS72DBxDdBVvgxOTTPzsa0zkdPvhLZ9XNITQ0tFJibdS2/apaFj/ikoP
	epY2ZmFhY0oHK5U8EOrHFAv69x3I7ng19HAx03WJQUcmkylm970dt3qgx7+GbtBGwiZu6RcD4Hi4B
	E4iTO1SIKdfxa7WsmrXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWMwZ-0000id-Rm; Wed, 06 May 2020 16:30:47 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWMwS-0000h5-98
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 16:30:41 +0000
Received: by mail-pl1-x643.google.com with SMTP id u22so687887plq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 09:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZSjnrz5Vzljlo+S0Gi3AV1DTWDDAqSfmJlTYocyrdsk=;
 b=ZkeFAxUbekfJwC2o06fNIeey9P7PB2Qx6C1+Qrildh1CFbeFrtdTEjhXY/ZMNwFvna
 d0XF81yNlhn2n0F+SH2RxmoN+HIQfXvvtqRabHX/97UW5SVsZJKDKDRq94BMEiLZWr1i
 53fMZxke9i6N6mBIPdYWM8w6BMDgXW+0Ft/SVgX2NDmLxAKDhFN51BzwbETYTfbe76mm
 HHUicr0w8Mi3f8bA3EvYUeUrw16iFKZXr04RHyqjzvL+M3bhGWk/TIXEbZef71tthlA2
 gIMh/ZFnZ0RoNxAnLLwtK9CiwPIH1s1Gub5YxtHC6ydbaldo2QESOisz2MAuBBg8+Bav
 VMsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZSjnrz5Vzljlo+S0Gi3AV1DTWDDAqSfmJlTYocyrdsk=;
 b=ZZJ44erWQlFh1CRwveeLjZIOTSn3THdwL5ZcQoxl1gtCOcrHdUWsZkWxymg6MJjrXf
 2kf41KvnTapHIr0uvYW7JLNIbgrbKzkGmXnOxdhWrA4FDs6ZebJEFgqMURtDaVZ6ZQUE
 bg8rNlIs+HoZE1YZ6A9uvZH/zm/H031nE0k69K8oC/pb8RTcOa34XqlyawbyNfl/TpFK
 rBZpBR+WvJ4nanHUJJEceq0Z1yf8c1XKLTMlKXBJPKimtYnuhrYkK7lwLm0VhjZpsFEu
 OJQFMp6ebkH/QMLhBf8zzsM75AxYica90CuT03rEDpGMRlvyOtApYMILzd4N0YnkIXoe
 j4JA==
X-Gm-Message-State: AGi0PubND/GFWZec64YYk6UwTjcPv5iacIIqGxvwgjEzUllK2Me4fwx3
 ShpaMGHnGbAGsf0Y41YIC1Kxzih399/9/vZz0lTsig==
X-Google-Smtp-Source: APiQypI/2tUEf/LWuDyr+l3pch7HVeD/FvpgS6/HbKXsqYXckx9cygldYoN8f/BE+1kjhtulXGXT5y/a8FmNpOUa1jk=
X-Received: by 2002:a17:90a:6488:: with SMTP id
 h8mr10301547pjj.51.1588782636724; 
 Wed, 06 May 2020 09:30:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200505141257.707945-1-arnd@arndb.de>
 <20200505142556.GF82823@C02TD0UTHF1T.local>
 <20200505194243.5bfc6ec6@blackhole>
 <20200506034523.GA564255@ubuntu-s3-xlarge-x86>
 <CAK8P3a24EiEvGAenL0FdgGakmwWi=giReOJuiisnzkgC_SuhZg@mail.gmail.com>
 <20200506153156.GA1213645@ubuntu-s3-xlarge-x86>
 <20200506154556.5fsxzs3vbfwixggd@google.com>
In-Reply-To: <20200506154556.5fsxzs3vbfwixggd@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 6 May 2020 09:30:25 -0700
Message-ID: <CAKwvOdnKn0AZTdaesEqG=uEJXzK+rQK=KJxqDQCFqAMFrPKWkg@mail.gmail.com>
Subject: Re: [PATCH] arm64: disable patchable function entry on big-endian
 clang builds
To: Fangrui Song <maskray@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_093040_345766_161AD2AD 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, Alexandre Ghiti <alex@ghiti.fr>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Marc Zyngier <maz@kernel.org>, AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Torsten Duwe <duwe@suse.de>, Kristina Martsenko <kristina.martsenko@arm.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Julien Thierry <jthierry@redhat.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Steve Capper <steve.capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Torsten Duwe <duwe@lst.de>, Andrew Morton <akpm@linux-foundation.org>,
 Ionela Voinescu <ionela.voinescu@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 6, 2020 at 8:46 AM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
> Created https://reviews.llvm.org/D79495 to allow the function attribute
> 'patchable_function_entry' on aarch64_be.
> I think -fpatchable-function-entry= just works.
>
> Note, LLD does not support aarch64_be
> (https://github.com/ClangBuiltLinux/linux/issues/380).

I've approved the patch. Thanks for the quick fix.  Looks like we
backported -fpatchable-function-entry= to the clang-10 release, so we
should cherry pick your fix to the release-10 branch for the clang
10.1 release.

I'd rather have this fixed on the toolchain side.

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
