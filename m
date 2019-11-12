Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEA5F9775
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 18:43:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AU8rRIqAzDaLMnsNTYyX683hIea2SLRYXD6UzHwoYTQ=; b=jTvVvBY/fVXjmH
	9qBwAiTgRtht7ANMzzdUDPwne9PL4AeyqUJa7+AmPrpt5KQJTShpGm31B+mJ9HROqPFo7VS7p1NbH
	ZkF9hpfW7AV+l4/5bwTlmkgDHgETeaERkHCwXKZvnWtJuu23KwYVLy2dwLimu6eafLVGk+2qgVpKJ
	ffaDa3iqySsSBdTfUKAx+V4/zTRoEfAavxuCeGyhuplg+wZi3KhhcFo++Q/JPxO3i95plk2IQWVej
	u1GwHdYQseHg5Do1+Lxouj4rjFV/i6wl4+2w1r7vkB7+BE1S6tiEDpBGXqKzEtYqXLLEF04Ten3gw
	h8LTAkZ+XULzlWAkyrwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUaCT-00045U-O3; Tue, 12 Nov 2019 17:43:33 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUaCI-00044F-RF
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 17:43:26 +0000
Received: by mail-pg1-x541.google.com with SMTP id q22so12343127pgk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 09:43:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w7MsKAbnhTOI/PwrqDE4qAaT5Rd571pVr2jNCX1vMLU=;
 b=cNd0enXkHOlBT1RG/B0zjwD+dSmow8c5nRzzi8wByRqtyyGRqlP/90puPVUHT2bUvK
 mQbcgkMcKJEggwR6BNgwUe1k3iHRcU9Nv+09wp+5mSHD85bbCwFpPmC1Bq/N6KycgvLc
 ktBjH+xZqmnKF96hvkiWDDnKXCucxoU7OZ2iPuTzsZieGoXXvmVO8nkdSVmcKoQ0Sag5
 1wb5p1gG2njNuZjWDs23kq4PuD0d3VD2P6xrsZEftYQbFuKC9dq5RM4h98lnbR6yHj+6
 V3hTuXYKq51KvsQAjJmhlCEiu8IU0QIfTP+HvBkhjozUwwD6bX/8o2pKUCVaRPm4q9kZ
 e6Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w7MsKAbnhTOI/PwrqDE4qAaT5Rd571pVr2jNCX1vMLU=;
 b=CbGQFEC24i3cHX+WrBEybwxY8xT2G1hFnzVsQbVAzRMbMLS9WFlRT6NwnRgLaKLhhE
 a6RM+QeeKCKc2Pl3MSRhkxCjreusdqbMuuDVCUGEHKKI21LtYg8WcEjMyxXVha/NpKgd
 ehwz+jU1awf1wG5qvb1Q+Qz9xRUUK4sfJS328o8Ih8ZvAXS9sP5RtDzsPrJC1Afp4zNk
 qhAUa2w8lpSCANL8cEFk2Aop6GJ3jJJ7YKfteCQrqmhO2fdQGjfRMZIwC00W2NSzbrEH
 txxfulFEQ4fFE3V9SVDRFSt2KIWSW1/6r90h2Gtfb3znx0HH9Ki3eIFgzc1Ocb4iYkzo
 +rTQ==
X-Gm-Message-State: APjAAAW2+MAlCu0ovnsV53+QTyTtynAZgodjTGSnUjtKo67mVV2y4iZV
 8CpaVR2sgQXh3fUgp65ayzNLeg1W6tHobDc3putnMw==
X-Google-Smtp-Source: APXvYqx+JS9StvmX4eZx5rKWcGRb9+ijR8E7BlPSw/fF4TuTW1nUyMaiKhwUBG/mh+SI5JEZV6dnXnwYygBOz5G6Css=
X-Received: by 2002:a63:5a03:: with SMTP id o3mr36165069pgb.381.1573580597463; 
 Tue, 12 Nov 2019 09:43:17 -0800 (PST)
MIME-Version: 1.0
References: <20191110153043.111710-1-dima@golovin.in>
In-Reply-To: <20191110153043.111710-1-dima@golovin.in>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 12 Nov 2019 09:43:05 -0800
Message-ID: <CAKwvOdnwKP5gRVmvKou1UoqHn7Fi-uoGFeAMf2dWoaEy0fibzA@mail.gmail.com>
Subject: Re: [PATCH] ARM: kbuild: use correct nm executable
To: Dmitry Golovin <dima@golovin.in>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_094324_919328_5D7145D5 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nicolas Pitre <nico@fluxnic.net>, Matthias Maennich <maennich@google.com>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 LKML <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 10, 2019 at 7:31 AM Dmitry Golovin <dima@golovin.in> wrote:
>
> Since $(NM) variable can be easily overridden for the whole build, it's
> better to use it instead of $(CROSS_COMPILE)nm. The use of $(CROSS_COMPILE)
> prefixed variables where their calculated equivalents can be used is
> incorrect. This fixes issues with builds where $(NM) is set to llvm-nm.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/766
> Signed-off-by: Dmitry Golovin <dima@golovin.in>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Matthias Maennich <maennich@google.com>

Thanks for the patch Dima.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
You should wait a week from when you first sent this patch, then
submit it to rmk's patch queue:
https://www.armlinux.org.uk/developer/patches/section.php?section=0
You should create an account there.  On
https://www.armlinux.org.uk/developer/patches/add.php,

Summary -> first line from commit
Kernel version -> base repo you wrote the patch against, see examples
https://www.armlinux.org.uk/developer/patches/section.php?section=0
Patch notes -> rest of commit body (with all these reviewed by tags added)

More info: https://www.armlinux.org.uk/developer/

> ---
>  arch/arm/boot/compressed/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
> index 9219389bbe61..a1e883c5e5c4 100644
> --- a/arch/arm/boot/compressed/Makefile
> +++ b/arch/arm/boot/compressed/Makefile
> @@ -121,7 +121,7 @@ ccflags-y := -fpic $(call cc-option,-mno-single-pic-base,) -fno-builtin -I$(obj)
>  asflags-y := -DZIMAGE
>
>  # Supply kernel BSS size to the decompressor via a linker symbol.
> -KBSS_SZ = $(shell echo $$(($$($(CROSS_COMPILE)nm $(obj)/../../../../vmlinux | \
> +KBSS_SZ = $(shell echo $$(($$($(NM) $(obj)/../../../../vmlinux | \
>                 sed -n -e 's/^\([^ ]*\) [AB] __bss_start$$/-0x\1/p' \
>                        -e 's/^\([^ ]*\) [AB] __bss_stop$$/+0x\1/p') )) )
>  LDFLAGS_vmlinux = --defsym _kernel_bss_size=$(KBSS_SZ)
> @@ -165,7 +165,7 @@ $(obj)/bswapsdi2.S: $(srctree)/arch/$(SRCARCH)/lib/bswapsdi2.S
>  # The .data section is already discarded by the linker script so no need
>  # to bother about it here.
>  check_for_bad_syms = \
> -bad_syms=$$($(CROSS_COMPILE)nm $@ | sed -n 's/^.\{8\} [bc] \(.*\)/\1/p') && \
> +bad_syms=$$($(NM) $@ | sed -n 's/^.\{8\} [bc] \(.*\)/\1/p') && \
>  [ -z "$$bad_syms" ] || \
>    ( echo "following symbols must have non local/private scope:" >&2; \
>      echo "$$bad_syms" >&2; false )
> --
> 2.23.0
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
