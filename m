Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4101981A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 18:48:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cj+e6luFjg1uBeTuMdPzuBkyPgobFn3WBk5LsiF0PAo=; b=mOQA1HNNipaon3
	hdqJkeV/b2nPMVYjzlX1q8hPHXGdeWnliYc+K7ERXTV63owpkzN0AkvTMUBpPoecOv5yvQUWPQLaL
	g9/oqpGMBonJnqWwBycIUuI2ixIoGw5AiUQrvfu+9Qe+O1u1Cd4CSOtqWHA63HUhloyh9zZaI/nLo
	Dcyc4xUSYqvdd540PSbZb3z96xNiNrtHx8oBPf86+9HQvRmttj5bLEVb/aQFeWAsMP5lNexfNpJB2
	yRTXzRJg9h4i5sgoYjN0bhev+zpNbtl6J+/g+/cGKOmcG57M23mfRZiCek2MHdR4DgvZlhhSPetbL
	C9gQ+ZjUSQpD3vxFvflw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIxaQ-00019C-27; Mon, 30 Mar 2020 16:48:30 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIxaI-00017y-NP
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 16:48:24 +0000
Received: by mail-pg1-x543.google.com with SMTP id o26so8912894pgc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 09:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xILmCXBrlxgCXlypA1VxqpUiVu1uQ5MP80zGKCZ/XFo=;
 b=EfJ05alJ+PSOBVvnx/SndsN/62Lik+lUYdgqoSbZm1dfE4FuIESt6rxZHaxGXjH/U9
 +d4l7cVHmOjuD4J1o3mjDNAKHB3ToTh41KtnFF37XPu06WUI/Iw83xS3w5cJeXenY3rX
 uS/72YpxbbrJB/T9eo4LEZm4ebLSiI47xcAogZpS8iufGqlLGddOUHPq9l5Cs09jWxQW
 S4g8U4KV5y0IdNUvJGwaAbWKRJSI34pQFZAVT7EVrdzNEIrphgEGVmcuLw+mgdje+B20
 V37vak2nUZbO8RraT8fSZtYeItV70ljo0es3rOjE085Mu4d6l2aYmA58ScNmr5odYjbP
 foxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xILmCXBrlxgCXlypA1VxqpUiVu1uQ5MP80zGKCZ/XFo=;
 b=BAQYXEYb2MnBLA8/EaqyKaYeecdVduIv+6mXgfGO+1OU57fPFnf5D2GZ5z16Gc0kfF
 AkAv5YzXMuYeRp+cSlAyhrFxj6gzNhVipQ1H/D/9y1V03CdeX9istZlsuYuzzqLPH26+
 ETG6zU1tviprdoZL4kHY0Cn2fZOotaPughEqoVDu+BWRj+Pn0/36symsS4LTJfPhmKYs
 VrSZTAz9XtCdzMUdrKZhoZ8mPTF7YpZivlMERXIrIwlVmJw+J2IYiMG6uCJnnJmvAsF8
 5k8cnN1+iCIJKs/8DBF2zIm4e47gLgmpsbgze5MZLC5PLbACFkAxmTbEBzQPyB0pV3fq
 zcnA==
X-Gm-Message-State: ANhLgQ3scrWa/c28Npk+SPdxx7Uwrh663O6AH+YzrbaH7dDaCN7WI4R/
 4D98JPbn7xHNrClqXTRBIOW2UEUDENezEoV8f7TkTg==
X-Google-Smtp-Source: ADFU+vuE0dYbf2hIpTmjKgH9JUJJ9vpNHTYnzEQlhr0Cr+zru6/CN2o72hgQNvyT3rdvuGOmqLgGUd7pqrvfUv+fSow=
X-Received: by 2002:a63:4e22:: with SMTP id c34mr13917544pgb.263.1585586898655; 
 Mon, 30 Mar 2020 09:48:18 -0700 (PDT)
MIME-Version: 1.0
References: <a651d5eaf312c771c9d2e0160ddd905550bbd4e3.1585507235.git.stefan@agner.ch>
In-Reply-To: <a651d5eaf312c771c9d2e0160ddd905550bbd4e3.1585507235.git.stefan@agner.ch>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 30 Mar 2020 09:48:07 -0700
Message-ID: <CAKwvOdkJLROtbMSf1pOV2XMV7LB0TTnLx-43WMt34wiT2VEMew@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: warn if pre-UAL assembler syntax is used
To: Stefan Agner <stefan@agner.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_094822_792936_6AA6248D 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Jian Cai <jiancai@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Manoj Gupta <manojgupta@google.com>, Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 29, 2020 at 11:43 AM Stefan Agner <stefan@agner.ch> wrote:
>
> Remove the -mno-warn-deprecated assembler flag to make sure the GNU
> assembler warns in case non-unified syntax is used.
>
> This also prevents a warning when building with Clang and enabling its
> integrated assembler:
> clang-10: error: unsupported argument '-mno-warn-deprecated' to option 'Wa,'
>
> GCC before 5.1 emits pre-UAL assembler. This can lead to warnings if
> inline assembler explicitly switches to unified syntax by using the
> ".syntax unified" directive (e.g. arch/arm/include/asm/unified.h).
> Hence keep the flag for GCC versions before 5.1.
>
> This is a second attempt of commit e8c24bbda7d5 ("ARM: 8846/1: warn if
> divided syntax assembler is used") which has subsequently been reverted
> with commit b752bb405a13 ("Revert "ARM: 8846/1: warn if divided syntax
> assembler is used"").
>
> Signed-off-by: Stefan Agner <stefan@agner.ch>

Thanks for the added context.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
> Changes in v2:
> - Reference revert commit b752bb405a13 ("Revert "ARM: 8846/1: warn if
>   divided syntax assembler is used"")
> - Reword commit message
>
>  arch/arm/Makefile | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 1fc32b611f8a..b37bb985a3c2 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -119,21 +119,25 @@ ifeq ($(CONFIG_CC_IS_CLANG),y)
>  CFLAGS_ABI     += -meabi gnu
>  endif
>
> -# Accept old syntax despite ".syntax unified"
> -AFLAGS_NOWARN  :=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
> -
>  ifeq ($(CONFIG_THUMB2_KERNEL),y)
> -CFLAGS_ISA     :=-mthumb -Wa,-mimplicit-it=always $(AFLAGS_NOWARN)
> +CFLAGS_ISA     :=-mthumb -Wa,-mimplicit-it=always
>  AFLAGS_ISA     :=$(CFLAGS_ISA) -Wa$(comma)-mthumb
>  # Work around buggy relocation from gas if requested:
>  ifeq ($(CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11),y)
>  KBUILD_CFLAGS_MODULE   +=-fno-optimize-sibling-calls
>  endif
>  else
> -CFLAGS_ISA     :=$(call cc-option,-marm,) $(AFLAGS_NOWARN)
> +CFLAGS_ISA     :=$(call cc-option,-marm,)
>  AFLAGS_ISA     :=$(CFLAGS_ISA)
>  endif
>
> +ifeq ($(CONFIG_CC_IS_GCC),y)
> +ifeq ($(call cc-ifversion, -lt, 0501, y), y)
> +# GCC <5.1 emits pre-UAL code and causes assembler warnings, suppress them
> +CFLAGS_ISA     +=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
> +endif
> +endif
> +
>  # Need -Uarm for gcc < 3.x
>  KBUILD_CFLAGS  +=$(CFLAGS_ABI) $(CFLAGS_ISA) $(arch-y) $(tune-y) $(call cc-option,-mshort-load-bytes,$(call cc-option,-malignment-traps,)) -msoft-float -Uarm
>  KBUILD_AFLAGS  +=$(CFLAGS_ABI) $(AFLAGS_ISA) $(arch-y) $(tune-y) -include asm/unified.h -msoft-float
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
