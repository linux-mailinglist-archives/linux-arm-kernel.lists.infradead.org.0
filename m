Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 084CB1E6A0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 21:07:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bRe8WHIbwi0uSU3yL4ZkwCY8DDAOVzi3XlnviS3GXmU=; b=lD6qPWgACvf8gY
	IxMWjhHYZZfQVHSlipj9dAu753+cLDk/TEabK3+iTPccSz9xL9rFniAPzq78fdI75oNxBqUAcO6su
	XoTWfqrtENVkNjXntE3pXzLfzo/2DWjouIy7G2LblEf3An9IQluotvUjirY3tz6nZNvtBNiW7IRAU
	KBf6rZf8kR3Ofj8e+xVKupQSKHF4Ba7oLulW9XjO+LzN02jSf0N+iehJFXMlLRLhSaEX+wAk0NnTZ
	IVCYzbno7fcdPJHJZU5SUuz7MUnDWU1IJjF7ZjE2VXjSpXXqRflskdDAoYHtfgZTYJukiwSD19wWR
	sxmxNiH1pVOu5oVBZHlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeNs8-0004bU-36; Thu, 28 May 2020 19:07:20 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeNrs-0004WM-9h
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 19:07:07 +0000
Received: by mail-pg1-x541.google.com with SMTP id f21so19915pgg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 12:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D0Z0uljIaa9E7sK/osUj/lAD10bbouNo4XeXPu5yFDM=;
 b=TRXdzlLIM4wpBQ8hPBW7hxSfD0Jr4goyv9wU1EAFBC9KRmAlbBDFHKjVr2prIT0/kf
 wlKqKe16cBDzsbYLavX6WUYXtgU9L32Fyu+x2HEOrk539fgCJ+GOXs77TbH1Q4WyTPur
 Cxh7L4qfwu1ht8DnmFW077Zbp7hmeSa6n4hw1ETzlcTDC3asc4tkufKSCToWUBrdccR3
 RUEsaMjZCZCuP0PdRyYYqzea+lRHHow61ShzPBSRTXCC46askwaFgZ3iT/H25lIPY8Jk
 BtHtwkCCoJdBn9AQNncLhhtlTvn58iJ1SJryfEu/WWBz/eJzcMTeipoRVWYgJxG00lLe
 4HZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D0Z0uljIaa9E7sK/osUj/lAD10bbouNo4XeXPu5yFDM=;
 b=RgLmysUJFHLvQ+oWo52czwV3HgkH57A8vQLarF0LR64TyUWOHF6VsbyMgvJsCYcHY8
 T3xiNIoQBBFnGGCywVBo2ibDnH9Lwh0dheYdZll3rBTsEDHZIJIAdPehsWAqACw1ZxWl
 tPbECvO0sb31SSigHe2rVq6znyGIkGTrBaSLgVH7zArfVQUrvJ8eMg9aruvN7sEqaFMc
 zSRuXYPHfEyckb/9gx5jSrwyrN4+mrUbv7v32aKd9bmE4iv4mrC8O3EvnJo10nju5mKL
 o4ZC2YcfxVOuO9+jeJGYXvWV4TOsiPxpPV8YlkjQu2rZpduzzqrOlldJvPUlsH7gxkp5
 grwg==
X-Gm-Message-State: AOAM531xq0jVYPcVkePO0QNL61Em3q8UIAqjpxam0L0S0E6Lwz2ukCIP
 nmnG8xudv7N+m/7lhGx764YfzypDUctifJd+MDwH9g==
X-Google-Smtp-Source: ABdhPJzjdonwSCmxhwOgf6j5Q3qfjEg4fja6HZmRRq1xYAcjAb2iKvsWyznkcVzMWdm1slQXc6yF3mCz826Aodt1kn4=
X-Received: by 2002:a63:f00d:: with SMTP id k13mr4503675pgh.263.1590692818044; 
 Thu, 28 May 2020 12:06:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200526173117.155339-1-ndesaulniers@google.com>
 <2f58c2a4-0f37-d507-7767-00161c6b5d98@arm.com>
 <CAKwvOd=Oy_OfRbL6-q-3CAHxWBNBKE+HkfNfgCiP726u+4dU1Q@mail.gmail.com>
 <34f261f7-c4b5-a628-9a4c-eb97b75fba52@arm.com>
 <CAKwvOdn1W4C5HRJEch5PS-Atcmysh0UD+VZX_wi8tviGwhmM7Q@mail.gmail.com>
 <CAKwvOd=Zxm9TDPNd4Qvn6Ru==FLasiP1xWXMM7ji08VWRjBu2g@mail.gmail.com>
 <VI1PR08MB319868AFBEDCD0925C53701AF88E0@VI1PR08MB3198.eurprd08.prod.outlook.com>
 <20200528094154.GB2961@gaia>
In-Reply-To: <20200528094154.GB2961@gaia>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 28 May 2020 12:06:46 -0700
Message-ID: <CAKwvOdkBr9Y+J0ZgZT8RR60Kh-kG7Q_annQU+s=+RXg=qeLFNQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: vdso32: force vdso32 to be compiled as -marm
To: Catalin Marinas <catalin.marinas@arm.com>,
 Peter Smith <Peter.Smith@arm.com>, Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_120704_345983_ED6726CF 
X-CRM114-Status: GOOD (  20.25  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Stephen Boyd <swboyd@google.com>,
 Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada <masahiroy@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "david.spickett@linaro.org" <david.spickett@linaro.org>,
 Manoj Gupta <manojgupta@google.com>, Kristof Beyls <Kristof.Beyls@arm.com>,
 Luis Lozano <llozano@google.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Robin Murphy <Robin.Murphy@arm.com>, Victor Campos <Victor.Campos@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 12:20 AM Will Deacon <will@kernel.org> wrote:
> > Yes, I know that :)

Right, I forgot; you wrote the 64b one. :)

On Thu, May 28, 2020 at 2:41 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Thu, May 28, 2020 at 09:05:08AM +0100, Peter Smith wrote:
> > I suggest using Arm if you need a frame pointer, and disable the
> > frame pointer if you want/need to use Thumb. My understanding is that
> > runtime unwinding using the frame pointer in Thumb is already difficult
> > due to Arm and Thumb functions using different registers for the frame
> > pointer.
>
> IIRC from the Thumb-2 kernel porting days, even in the absence of
> ARM/Thumb interworking, the Thumb-2 frame pointer was pretty useless for
> unwinding since it points to the bottom of the current stack frame (the
> reason I think is that some LDR/STR instructions with negative indexing
> are not available). So finding the previous frame pointer was not
> possible and had to rely on the exception unwinding information.

Eureka!  That's it!  Implicit state of -fomit-frame-pointer.

Ok, forgetting ARCH=arm64 for a second, for ARCH=arm we have the
choice CONFIG_THUMB2_KERNEL.  Regardless of which is chosen, we
*always* explicitly set -mthumb or -marm, but we never rely on
implicit defaults.  Again for ARCH=arm, we have a choice of unwinders,
or at least we do when *not* targeting thumb.  If we select
CONFIG_THUMB2_KERNEL, then CONFIG_UNWINDER_FRAME_POINTER cannot be
selected.

arch/arm/Kconfig.debug:
  57 config UNWINDER_FRAME_POINTER
  58   bool "Frame pointer unwinder"
  59   depends on !THUMB2_KERNEL
...

CONFIG_UNWINDER_FRAME_POINTER selects CONFIG_FRAME_POINTER which sets
-fno-omit-frame-pointer.  Otherwise, it looks like the choice of
-f{no-}omit-frame-pointer is left unspecified, relying on compiler
defaults.

And that's just for ARCH=arm.  Returning to ARCH=arm64, and the compat
vdso in particular, it doesn't look like we ever set
-f{no-}omit-frame-pointer either, so again we're looking at the
compiler defaults.

And when we look at the default behavior for the implicit state of
-f{no-}omit-frame-pointer, we find differences.

Here's a test case you can play around with:
https://godbolt.org/z/0oY39t

For Clang, can you tell what the default state is if left off?
For GCC, can you tell what the default state is if left off?
Do they match?
Is this specific to -mthumb?
(Bonus: what happens when you remove `-O2`?)

Answers:
-fno-omit-frame-pointer
-fomit-frame-pointer
No.
No.
-fno-omit-frame-pointer in GCC (-fomit-frame-pointer is an optimization)

Deja vu, I fixed a very similar discrepancy reported by Linus not too long ago.
https://reviews.llvm.org/D74698
Looking at the relevant logic in Clang:
https://github.com/llvm/llvm-project/blob/58beb76b7bd2f7caa1df461b9db6629521c3b60b/clang/lib/Driver/ToolChains/Clang.cpp#L527-L591
Noticely absent are arm, thumb, aarch64, and big endian variants,
specifically here:
https://github.com/llvm/llvm-project/blob/58beb76b7bd2f7caa1df461b9db6629521c3b60b/clang/lib/Driver/ToolChains/Clang.cpp#L556-L571

I should fix that in Clang.

That should also speed up our 32b ARM kernels that select
CONFIG_THUMB2_KERNEL (ie. CrOS veyron-minnie platform, rk3288).
Shouldn't make a difference for 64b ARM kernels since those select
frame pointers.  Though I am curious about the userspaces now for CrOS
and Android...

On Thu, May 28, 2020 at 1:05 AM Peter Smith <Peter.Smith@arm.com> wrote:
> > Hope this helps

Always, m8, you're the expert.

So r11 will be the frame pointer for arm and thumb according to latest
aapcs, but the compilers haven't yet made any changes related to this,
and can still use r7 in a bunch of cases (-mthumb
--target=arm-linux-gnueabi being the most relevant one for our
discussion).

> On Thu, May 28, 2020 at 12:20 AM Will Deacon <will@kernel.org> wrote:
> your
> patch is papering over a deeper issue.

Ah, your right.  Sorry, I was wrong.  I owe you (another) beer?  I'm
going into debt over these and will have to take out a loan, soon!
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
