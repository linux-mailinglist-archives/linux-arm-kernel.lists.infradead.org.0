Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 758E0EAB83
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 09:22:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lAtveAC6N4haKfBtxJ3qGNUVA28UexPVaAjs6hnOcQo=; b=W9nrSh0Odseknu
	CSvy6ZEL6CKsFUDrbmw16xNvBpmqe5IcdBMbGR0vIB3mQzGTNLoTv0D8Bfdt6rcr8YZ0FISJSB03j
	FS3sO20xufCiQjj7Kx4wdSHJDnudt+pJchenHGm4BNbD7+dOCK6uV778fmHmqxWHR5cMRj11+j8/6
	QGTAvdSRVNXEuDLGSjYp35UAk5F1sWWDxlFUliU12ICgHGH00psLrjs4fVNQ0RKNUQ6E7HPxTuapI
	KtwdwygaLZH5AYXXX7jNI5xSjfEtIcBT090vVdShQd8p7VNJgwaV0g5AVc3L8GZtACWdxxd9PBfjh
	1NSo+OJOR8Owjoa5IsjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ5j2-00031s-Sj; Thu, 31 Oct 2019 08:22:36 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ5it-00031N-8M
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 08:22:29 +0000
Received: by mail-wm1-x342.google.com with SMTP id x5so4897805wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 01:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NHloGbr4jAFWLdAnk+2+DFUSZWOZKFQGAFzAWZrNGgM=;
 b=m/RX5686FhSf9F2YD+rmGrhLFCxKln3s2pJh2U4FWxQA8/BW1XbaUS8p0fB8F3jYKO
 3Fi9esQCSS8aBQtQd2NqYmuIw7Eyhyu20dzSbvYipXPnkq8y+H8WPx0MAwsoGIEVfu9w
 V6Uac+9afzVIWifMOgeb/ihrYPynZ6PDfOt5Gp68tM4qASbSp4qzBO7FeMgl0s4DLVFy
 Ogl6s2coJ6S96T3NqayDkAdtNddzQjDTokY1+s++DTZr8lt2vkbwyX4iYaCiF5m6NJry
 R7MhTJGDaXS3b6bFIXIgl86KkGz2TbKdbtyl4Lz7ctB9xccTW5GM85TI7gQvh50jdtT6
 Lsig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NHloGbr4jAFWLdAnk+2+DFUSZWOZKFQGAFzAWZrNGgM=;
 b=GTPpR6DIEVaOOo3+DBIMKph/A8fA6IfuHXXU8RfTuXzaZklmEahFuY+fOqmyi9xJz0
 GMG87JyyWksLWHxFZrppmrofuzFxeE7diesSJLtQdjdMhHMv83BvbY1y2mfW2xR+20PY
 qZKxb0Tlt1tfw5fj0fT+WaOApx+3Pvxp6ps9c8GadXjNvxNnN6TKWvVGTtEU2eRsWZ7K
 7DQLwhCEUVuAnFsFx+S5v6rTTOlXrrf4hGa1TsqTszG6Go3QZGNW2P7NB0vxnealITBA
 rT8fU2LRR9hrCj1KMi38/gDRdkciQfh/LyLcYJIUJd4RxUoXiuQ4M70VQHCb/ZdV9Mcs
 lLeQ==
X-Gm-Message-State: APjAAAXhcIeEHUfnrb81mx0/NOtkW379IWHyPF7y8EzL0xOQmSEkpdsu
 fFIk15f3rCUB+vBRNipU5D6I+6plDC7/YoMum8s53zwS42qzHQ==
X-Google-Smtp-Source: APXvYqwPu7hucBc0inOSN0T87RHKqwBDQwr/uRVvArgcOdY9NagVdmZnTnbat5TszKJy8pcCqtWflRWmY5w+GRp88bU=
X-Received: by 2002:a1c:3d08:: with SMTP id k8mr3617331wma.119.1572510143438; 
 Thu, 31 Oct 2019 01:22:23 -0700 (PDT)
MIME-Version: 1.0
References: <20191030174429.248697-1-ndesaulniers@google.com>
In-Reply-To: <20191030174429.248697-1-ndesaulniers@google.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 31 Oct 2019 09:22:11 +0100
Message-ID: <CAKv+Gu8POt2gYO6fagnKr-EgsuxMEo9LwVXo1pgcJKAG3JG+Pw@mail.gmail.com>
Subject: Re: [PATCH] arm: replace Sun/Solaris style flag on section directive
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_012227_306307_DC674AE8 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Stefan Agner <stefan@agner.ch>,
 Richard Fontana <rfontana@redhat.com>,
 afzal mohammed <afzal.mohd.ma@gmail.com>, Fangrui Song <maskray@google.com>,
 Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Allison Randal <allison@lohutok.net>, Dave Martin <Dave.Martin@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>, Jian Cai <jiancai@google.com>,
 Peter Smith <peter.smith@linaro.org>, Roy Franz <rfranz@marvell.com>,
 Doug Anderson <armlinux@m.disordat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Sonny Rao <sonnyrao@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Nicolas Pitre <nico@fluxnic.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 30 Oct 2019 at 18:48, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> It looks like a section directive was using "Solaris style" to declare
> the section flags. Replace this with the GNU style so that Clang's
> integrated assembler can assemble this directive.
>
> The modified instances were identified via:
> $ ag \\.section | grep \#
>
> Link: https://ftp.gnu.org/old-gnu/Manuals/gas-2.9.1/html_chapter/as_7.html#SEC119
> Link: https://github.com/ClangBuiltLinux/linux/issues/744
> Link: https://bugs.llvm.org/show_bug.cgi?id=43759
> Link: https://reviews.llvm.org/D69296
> Suggested-by: Fangrui Song <maskray@google.com>
> Suggested-by: Jian Cai <jiancai@google.com>
> Suggested-by: Peter Smith <peter.smith@linaro.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Looks correct to me

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>

> ---
>  arch/arm/boot/bootp/init.S            | 2 +-
>  arch/arm/boot/compressed/big-endian.S | 2 +-
>  arch/arm/boot/compressed/head.S       | 2 +-
>  arch/arm/boot/compressed/piggy.S      | 2 +-
>  arch/arm/mm/proc-arm1020.S            | 2 +-
>  arch/arm/mm/proc-arm1020e.S           | 2 +-
>  arch/arm/mm/proc-arm1022.S            | 2 +-
>  arch/arm/mm/proc-arm1026.S            | 2 +-
>  arch/arm/mm/proc-arm720.S             | 2 +-
>  arch/arm/mm/proc-arm740.S             | 2 +-
>  arch/arm/mm/proc-arm7tdmi.S           | 2 +-
>  arch/arm/mm/proc-arm920.S             | 2 +-
>  arch/arm/mm/proc-arm922.S             | 2 +-
>  arch/arm/mm/proc-arm925.S             | 2 +-
>  arch/arm/mm/proc-arm926.S             | 2 +-
>  arch/arm/mm/proc-arm940.S             | 2 +-
>  arch/arm/mm/proc-arm946.S             | 2 +-
>  arch/arm/mm/proc-arm9tdmi.S           | 2 +-
>  arch/arm/mm/proc-fa526.S              | 2 +-
>  arch/arm/mm/proc-feroceon.S           | 2 +-
>  arch/arm/mm/proc-mohawk.S             | 2 +-
>  arch/arm/mm/proc-sa110.S              | 2 +-
>  arch/arm/mm/proc-sa1100.S             | 2 +-
>  arch/arm/mm/proc-v6.S                 | 2 +-
>  arch/arm/mm/proc-v7.S                 | 2 +-
>  arch/arm/mm/proc-v7m.S                | 4 ++--
>  arch/arm/mm/proc-xsc3.S               | 2 +-
>  arch/arm/mm/proc-xscale.S             | 2 +-
>  28 files changed, 29 insertions(+), 29 deletions(-)
>
> diff --git a/arch/arm/boot/bootp/init.S b/arch/arm/boot/bootp/init.S
> index 5c476bd2b4ce..b562da2f7040 100644
> --- a/arch/arm/boot/bootp/init.S
> +++ b/arch/arm/boot/bootp/init.S
> @@ -13,7 +13,7 @@
>   *  size immediately following the kernel, we could build this into
>   *  a binary blob, and concatenate the zImage using the cat command.
>   */
> -               .section .start,#alloc,#execinstr
> +               .section .start, "ax"
>                 .type   _start, #function
>                 .globl  _start
>
> diff --git a/arch/arm/boot/compressed/big-endian.S b/arch/arm/boot/compressed/big-endian.S
> index 88e2a88d324b..0e092c36da2f 100644
> --- a/arch/arm/boot/compressed/big-endian.S
> +++ b/arch/arm/boot/compressed/big-endian.S
> @@ -6,7 +6,7 @@
>   *  Author: Nicolas Pitre
>   */
>
> -       .section ".start", #alloc, #execinstr
> +       .section ".start", "ax"
>
>         mrc     p15, 0, r0, c1, c0, 0   @ read control reg
>         orr     r0, r0, #(1 << 7)       @ enable big endian mode
> diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> index 93dffed0ac6e..15ecad944847 100644
> --- a/arch/arm/boot/compressed/head.S
> +++ b/arch/arm/boot/compressed/head.S
> @@ -140,7 +140,7 @@
>  #endif
>                 .endm
>
> -               .section ".start", #alloc, #execinstr
> +               .section ".start", "ax"
>  /*
>   * sort out different calling conventions
>   */
> diff --git a/arch/arm/boot/compressed/piggy.S b/arch/arm/boot/compressed/piggy.S
> index 0284f84dcf38..27577644ee72 100644
> --- a/arch/arm/boot/compressed/piggy.S
> +++ b/arch/arm/boot/compressed/piggy.S
> @@ -1,5 +1,5 @@
>  /* SPDX-License-Identifier: GPL-2.0 */
> -       .section .piggydata,#alloc
> +       .section .piggydata, "a"
>         .globl  input_data
>  input_data:
>         .incbin "arch/arm/boot/compressed/piggy_data"
> diff --git a/arch/arm/mm/proc-arm1020.S b/arch/arm/mm/proc-arm1020.S
> index 4fa5371bc662..2785da387c91 100644
> --- a/arch/arm/mm/proc-arm1020.S
> +++ b/arch/arm/mm/proc-arm1020.S
> @@ -491,7 +491,7 @@ cpu_arm1020_name:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __arm1020_proc_info,#object
>  __arm1020_proc_info:
> diff --git a/arch/arm/mm/proc-arm1020e.S b/arch/arm/mm/proc-arm1020e.S
> index 5d8a8339e09a..e9ea237ed785 100644
> --- a/arch/arm/mm/proc-arm1020e.S
> +++ b/arch/arm/mm/proc-arm1020e.S
> @@ -449,7 +449,7 @@ arm1020e_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __arm1020e_proc_info,#object
>  __arm1020e_proc_info:
> diff --git a/arch/arm/mm/proc-arm1022.S b/arch/arm/mm/proc-arm1022.S
> index b3dd95c345e4..920c279e7879 100644
> --- a/arch/arm/mm/proc-arm1022.S
> +++ b/arch/arm/mm/proc-arm1022.S
> @@ -443,7 +443,7 @@ arm1022_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __arm1022_proc_info,#object
>  __arm1022_proc_info:
> diff --git a/arch/arm/mm/proc-arm1026.S b/arch/arm/mm/proc-arm1026.S
> index ac5afde12f35..10e21012380b 100644
> --- a/arch/arm/mm/proc-arm1026.S
> +++ b/arch/arm/mm/proc-arm1026.S
> @@ -437,7 +437,7 @@ arm1026_crval:
>         string  cpu_arm1026_name, "ARM1026EJ-S"
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __arm1026_proc_info,#object
>  __arm1026_proc_info:
> diff --git a/arch/arm/mm/proc-arm720.S b/arch/arm/mm/proc-arm720.S
> index c99d24363f32..39361e196d61 100644
> --- a/arch/arm/mm/proc-arm720.S
> +++ b/arch/arm/mm/proc-arm720.S
> @@ -172,7 +172,7 @@ arm720_crval:
>   * See <asm/procinfo.h> for a definition of this structure.
>   */
>
> -               .section ".proc.info.init", #alloc
> +               .section ".proc.info.init", "a"
>
>  .macro arm720_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cpu_flush:req
>                 .type   __\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-arm740.S b/arch/arm/mm/proc-arm740.S
> index 1b4a3838393f..1a94bbf6e53f 100644
> --- a/arch/arm/mm/proc-arm740.S
> +++ b/arch/arm/mm/proc-arm740.S
> @@ -128,7 +128,7 @@ __arm740_setup:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>         .type   __arm740_proc_info,#object
>  __arm740_proc_info:
>         .long   0x41807400
> diff --git a/arch/arm/mm/proc-arm7tdmi.S b/arch/arm/mm/proc-arm7tdmi.S
> index 17a4687065c7..52b66cf0259e 100644
> --- a/arch/arm/mm/proc-arm7tdmi.S
> +++ b/arch/arm/mm/proc-arm7tdmi.S
> @@ -72,7 +72,7 @@ __arm7tdmi_setup:
>
>                 .align
>
> -               .section ".proc.info.init", #alloc
> +               .section ".proc.info.init", "a"
>
>  .macro arm7tdmi_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, \
>         extra_hwcaps=0
> diff --git a/arch/arm/mm/proc-arm920.S b/arch/arm/mm/proc-arm920.S
> index 298c76b47749..31ac8acc34dc 100644
> --- a/arch/arm/mm/proc-arm920.S
> +++ b/arch/arm/mm/proc-arm920.S
> @@ -434,7 +434,7 @@ arm920_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __arm920_proc_info,#object
>  __arm920_proc_info:
> diff --git a/arch/arm/mm/proc-arm922.S b/arch/arm/mm/proc-arm922.S
> index 824be3a0bc23..ca2c7ca8af21 100644
> --- a/arch/arm/mm/proc-arm922.S
> +++ b/arch/arm/mm/proc-arm922.S
> @@ -412,7 +412,7 @@ arm922_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __arm922_proc_info,#object
>  __arm922_proc_info:
> diff --git a/arch/arm/mm/proc-arm925.S b/arch/arm/mm/proc-arm925.S
> index d40cff8f102c..a381a0c9f109 100644
> --- a/arch/arm/mm/proc-arm925.S
> +++ b/arch/arm/mm/proc-arm925.S
> @@ -477,7 +477,7 @@ arm925_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>  .macro arm925_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cache
>         .type   __\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-arm926.S b/arch/arm/mm/proc-arm926.S
> index f3cd08f353f0..3188ab2bac61 100644
> --- a/arch/arm/mm/proc-arm926.S
> +++ b/arch/arm/mm/proc-arm926.S
> @@ -460,7 +460,7 @@ arm926_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __arm926_proc_info,#object
>  __arm926_proc_info:
> diff --git a/arch/arm/mm/proc-arm940.S b/arch/arm/mm/proc-arm940.S
> index 1c26d991386d..4b8a00220cc9 100644
> --- a/arch/arm/mm/proc-arm940.S
> +++ b/arch/arm/mm/proc-arm940.S
> @@ -340,7 +340,7 @@ __arm940_setup:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __arm940_proc_info,#object
>  __arm940_proc_info:
> diff --git a/arch/arm/mm/proc-arm946.S b/arch/arm/mm/proc-arm946.S
> index 2dc1c75a4fd4..555becf9c758 100644
> --- a/arch/arm/mm/proc-arm946.S
> +++ b/arch/arm/mm/proc-arm946.S
> @@ -395,7 +395,7 @@ __arm946_setup:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>         .type   __arm946_proc_info,#object
>  __arm946_proc_info:
>         .long   0x41009460
> diff --git a/arch/arm/mm/proc-arm9tdmi.S b/arch/arm/mm/proc-arm9tdmi.S
> index 913c06e590af..ef517530130b 100644
> --- a/arch/arm/mm/proc-arm9tdmi.S
> +++ b/arch/arm/mm/proc-arm9tdmi.S
> @@ -66,7 +66,7 @@ __arm9tdmi_setup:
>
>                 .align
>
> -               .section ".proc.info.init", #alloc
> +               .section ".proc.info.init", "a"
>
>  .macro arm9tdmi_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req
>                 .type   __\name\()_proc_info, #object
> diff --git a/arch/arm/mm/proc-fa526.S b/arch/arm/mm/proc-fa526.S
> index 8120b6f4dbb8..dddf833fe000 100644
> --- a/arch/arm/mm/proc-fa526.S
> +++ b/arch/arm/mm/proc-fa526.S
> @@ -185,7 +185,7 @@ fa526_cr1_set:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __fa526_proc_info,#object
>  __fa526_proc_info:
> diff --git a/arch/arm/mm/proc-feroceon.S b/arch/arm/mm/proc-feroceon.S
> index bb6dc34d42a3..b12b76bc8d30 100644
> --- a/arch/arm/mm/proc-feroceon.S
> +++ b/arch/arm/mm/proc-feroceon.S
> @@ -571,7 +571,7 @@ feroceon_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>  .macro feroceon_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cache:req
>         .type   __\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-mohawk.S b/arch/arm/mm/proc-mohawk.S
> index f08308578885..d47d6c5cee63 100644
> --- a/arch/arm/mm/proc-mohawk.S
> +++ b/arch/arm/mm/proc-mohawk.S
> @@ -416,7 +416,7 @@ mohawk_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __88sv331x_proc_info,#object
>  __88sv331x_proc_info:
> diff --git a/arch/arm/mm/proc-sa110.S b/arch/arm/mm/proc-sa110.S
> index d5bc5d702563..baba503ba816 100644
> --- a/arch/arm/mm/proc-sa110.S
> +++ b/arch/arm/mm/proc-sa110.S
> @@ -196,7 +196,7 @@ sa110_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __sa110_proc_info,#object
>  __sa110_proc_info:
> diff --git a/arch/arm/mm/proc-sa1100.S b/arch/arm/mm/proc-sa1100.S
> index be7b611c76c7..75ebacc8e4e5 100644
> --- a/arch/arm/mm/proc-sa1100.S
> +++ b/arch/arm/mm/proc-sa1100.S
> @@ -239,7 +239,7 @@ sa1100_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>  .macro sa1100_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req
>         .type   __\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-v6.S b/arch/arm/mm/proc-v6.S
> index c1c85eb3484f..1dd0d5ca27da 100644
> --- a/arch/arm/mm/proc-v6.S
> +++ b/arch/arm/mm/proc-v6.S
> @@ -261,7 +261,7 @@ v6_crval:
>         string  cpu_elf_name, "v6"
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         /*
>          * Match any ARMv6 processor core.
> diff --git a/arch/arm/mm/proc-v7.S b/arch/arm/mm/proc-v7.S
> index c4e8006a1a8c..48e0ef6f0dcc 100644
> --- a/arch/arm/mm/proc-v7.S
> +++ b/arch/arm/mm/proc-v7.S
> @@ -644,7 +644,7 @@ __v7_setup_stack:
>         string  cpu_elf_name, "v7"
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         /*
>          * Standard v7 proc info content
> diff --git a/arch/arm/mm/proc-v7m.S b/arch/arm/mm/proc-v7m.S
> index 1a49d503eafc..84459c1d31b8 100644
> --- a/arch/arm/mm/proc-v7m.S
> +++ b/arch/arm/mm/proc-v7m.S
> @@ -93,7 +93,7 @@ ENTRY(cpu_cm7_proc_fin)
>         ret     lr
>  ENDPROC(cpu_cm7_proc_fin)
>
> -       .section ".init.text", #alloc, #execinstr
> +       .section ".init.text", "ax"
>
>  __v7m_cm7_setup:
>         mov     r8, #(V7M_SCB_CCR_DC | V7M_SCB_CCR_IC| V7M_SCB_CCR_BP)
> @@ -177,7 +177,7 @@ ENDPROC(__v7m_setup)
>         string cpu_elf_name "v7m"
>         string cpu_v7m_name "ARMv7-M"
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>  .macro __v7m_proc name, initfunc, cache_fns = nop_cache_fns, hwcaps = 0,  proc_fns = v7m_processor_functions
>         .long   0                       /* proc_info_list.__cpu_mm_mmu_flags */
> diff --git a/arch/arm/mm/proc-xsc3.S b/arch/arm/mm/proc-xsc3.S
> index 1ac0fbbe9f12..42eaecc43cfe 100644
> --- a/arch/arm/mm/proc-xsc3.S
> +++ b/arch/arm/mm/proc-xsc3.S
> @@ -496,7 +496,7 @@ xsc3_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>  .macro xsc3_proc_info name:req, cpu_val:req, cpu_mask:req
>         .type   __\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-xscale.S b/arch/arm/mm/proc-xscale.S
> index bdb2b7749b03..18ac5a1f8922 100644
> --- a/arch/arm/mm/proc-xscale.S
> +++ b/arch/arm/mm/proc-xscale.S
> @@ -610,7 +610,7 @@ xscale_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>  .macro xscale_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cache
>         .type   __\name\()_proc_info,#object
> --
> 2.24.0.rc0.303.g954a862665-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
