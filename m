Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 557FB1A3D2A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 02:02:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5Ts2kuCHYBCfFnYcJ8JIaUa96eLX4mXpnuRkQHP2TE=; b=o/tDi4XgqJgsKL
	8W/0vI5q8t5wbsBEUUupONLpsBY8iOJMazeFYf4ZUJAapVgOYrS8UEiyoC4+WcOhmqZoFR0Zp50sW
	ZsOxj404Kj4fSNyDcHcRH54AF3eM0plsh4ImaZzCuFKi41eCTqwb4Om7UcGHfTurSNhy15jIUpxtR
	0CoRAHThMEnIRnFWufTrmhehmQALlGb8/j4gQiCLLaf/PcS+Q1jDhS29+0HkewckTb2KR6pS1c9HB
	9MzRqMEkQGZkqo5wcvg1Zw+vLUXddHfF+ivNwxxc8j9zFVB/5euXOkM4VXsIDioC4iH7Gx2kzM2ob
	Q6D6ZwpvkFxxDyZJjuaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMh7N-0002MK-0t; Fri, 10 Apr 2020 00:01:57 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMh7G-0002LR-3f
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 00:01:51 +0000
Received: by mail-pf1-x443.google.com with SMTP id l1so289893pff.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 17:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WfliXDX1Ymsggc4DabpVxNTeN6zHMaFuavIUQZv83/0=;
 b=DvFGg3oFXnnQxUL5pHpYQ6dHu8U3ro9D6atqz+8PGLUtvoCIPsx+DmaDo3D5jjW3TN
 mStoRntCkHKEdA9/JMNf9ulVM0JVlltV+AxI41WETYYnbFzXx17p/iusZ1LyZNKFzZ59
 CghU1HcG4Mbq3OnwN41Q2bjdQmUcOL+6vOzGu5nSELnNSYP6Ms9+L2sPoAhYMCJImXf1
 rM/8CNlIcAsCywNiK8mC60qgqjcS+UgleeCpKz7nig09hx8DmJRvy0Sw4DMymxuevGDZ
 WmHOdum/QKHkYki2S5R4/q7GLFkGFaz2GL/BCnu62WsDC9QbpyenGwbIBuMyWp+4jyqw
 UEzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WfliXDX1Ymsggc4DabpVxNTeN6zHMaFuavIUQZv83/0=;
 b=ZxCm0Yyyb1gftt2paphvfjInqNR7Y84inqbAk8IJSSApeJvprypsKGq5AFwzDpA1HR
 ZBnH9LjJzYPAv+aklkKHZeuyqR25KhGZDO5HRWGS3yqvKAAZCY3G0SoG+VjaCn4IDU2O
 gp2xvtQXFP9zin1u/vCP/uqO8aVQEE3oDBQaSm2WGG2uwlCqEgsJ+R+BJWghwKfHGmFz
 Nik6yKYZQNW50Cw2Ecq7A958nLk60m5TUa+O+teH63PIp4NzefxpdY9wDUuhbsDf1xwe
 BicCW3iWdY7STYl1sVq9h0GvFi5FkdhJmX7yCVvzobvkmdFxocRzoPJkVlzh7iu6JsZg
 Mf+w==
X-Gm-Message-State: AGi0PuYYysAmukpG3XjA/NVDeLacUVNlgBI4kCop9asHvW4uEkKcxptt
 XlM/vek/DzBE8y74zKbkjDX0r3ZF5KHgSLj3ip1kDA==
X-Google-Smtp-Source: APiQypJseTCHzeZtziKweVcMeV2FfOR5o5Zn7BHGyFeGb76AXp7DOTg9ScYedtjAFCzO+5s/pN/1Ly0ICNpwNhDzLcQ=
X-Received: by 2002:a65:6704:: with SMTP id u4mr1927192pgf.263.1586476904758; 
 Thu, 09 Apr 2020 17:01:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com>
In-Reply-To: <20200409232728.231527-1-caij2003@gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 9 Apr 2020 17:01:33 -0700
Message-ID: <CAKwvOdkot0Q7FSCMKGm6ti4hhvD3N+AMUK4Xv2Xxiiu3+pURgQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Jian Cai <caij2003@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_170150_174718_1C602D5F 
X-CRM114-Status: GOOD (  22.44  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Peter Smith <Peter.Smith@arm.com>,
 Stefan Agner <stefan@agner.ch>, David Howells <dhowells@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Manoj Gupta <manojgupta@google.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ilie Halip <ilie.halip@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Arnd Bergmann <arnd@arndb.de>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Jian Cai <jiancai@google.com>, Doug Anderson <armlinux@m.disordat.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Patrick Bellasi <patrick.bellasi@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 9, 2020 at 4:28 PM Jian Cai <caij2003@gmail.com> wrote:
>
> iwmmxt.S contains XScale instructions LLVM ARM backend does not support.
> Skip this file if LLVM integrated assemmbler or LLD is used to build ARM

Hi Jian, thank you for the patch.  It's pretty much spot on for what I
was looking for.  Some notes below:

s/assemmbler/assembler

:set spell

;)

Also, could use a link tag, ie.

Link: https://github.com/ClangBuiltLinux/linux/issues/975

(Always include the link tag to help us track when and where patches land).

Finally, I think the hunks for the two different files should be
split; the init/Kconfig change should be it's own dedicated change
that goes to Masahiro, the maintainer of the Kbuild tree.  Then when
we have that, the dependent configs should go separately.  Would you
mind splitting this patch in two, and re-sending just the Kbuild patch
for now?  Since you used Sami's patch for inspiration
(https://github.com/ClangBuiltLinux/linux/issues/975#issuecomment-611694153,
https://github.com/samitolvanen/linux/commit/fe9786cb52a0100273c75117dcea8b8e07006fde),
it would be polite to Sami to add a tag like:

Suggested-by: Sami Tolvanen <samitolvanen@google.com>

or maybe better yet, take Sami's patch, add your signed off by tag
(maintaining him as the git author, see `git log --pretty=fuller`),
then rebase your AS_IS_CLANG hunk on top, make that a second patch,
then finally have the arm change as a third patch.

This change is exactly what I'm looking for, so these are just process concerns.

> kernel.
>
> Signed-off-by: Jian Cai <caij2003@gmail.com>
> ---
>  arch/arm/Kconfig | 2 +-
>  init/Kconfig     | 6 ++++++
>  2 files changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 66a04f6f4775..39de8fc64a73 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -804,7 +804,7 @@ source "arch/arm/mm/Kconfig"
>
>  config IWMMXT
>         bool "Enable iWMMXt support"
> -       depends on CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B
> +       depends on !AS_IS_CLANG && !LD_IS_LLD && (CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B)
>         default y if PXA27x || PXA3xx || ARCH_MMP || CPU_PJ4 || CPU_PJ4B
>         help
>           Enable support for iWMMXt context switching at run time if
> diff --git a/init/Kconfig b/init/Kconfig
> index 1c12059e0f7e..b0ab3271e900 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -19,6 +19,12 @@ config GCC_VERSION
>  config CC_IS_CLANG
>         def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
>
> +config AS_IS_CLANG
> +       def_bool $(success,$(AS) --version | head -n 1 | grep -q clang)
> +
> +config LD_IS_LLD
> +       def_bool $(success,$(LD) --version | head -n 1 | grep -q LLD)
> +
>  config CLANG_VERSION
>         int
>         default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
> --

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
