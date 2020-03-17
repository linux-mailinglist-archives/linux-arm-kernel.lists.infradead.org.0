Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB229187679
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 01:01:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=khCTH+3I1v3x7HJDuUZfGtvf+lDxZRZLOJR2moTy+eI=; b=VumPO7R7DG9oK/
	AgIW8KKk26u3d/kETrb7tvZpma7ehZlNVhGzWsUAx7fKsBiIBSXPmwHzS6ybreb+C4NgayP1fWhzy
	f3qeTxC9bkvuer3023fmNl+c0O1KZuJh28OYuI5OUzkz2tHKhgabiM2Po1P46mbz0774eW2IFQaIC
	HmaXDk4LmS7qG8jCWYopiSY4dXkNVWbB1HF2hkmEOroRF3Tb4dVQZp9Ao3Rsjvpe8q1VW4tx3B/tn
	XyyrcRk9F/4zcfSAIZNU9VTJHxrYGnL0FnpAd8v9kBe3f0HCXfYKW1PtkA2H0UwMmmyjsAyZ2E7v7
	8/jtWpGRB2cEvzvcUBpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDzfa-0005aq-3V; Tue, 17 Mar 2020 00:01:18 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDzfS-0005a9-LR
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 00:01:12 +0000
Received: by mail-pf1-x441.google.com with SMTP id 3so3014567pff.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 17:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pxhrdycLqRcl8yZff8EnF0nl6QUAsSQr4n1zOEszaCY=;
 b=hGpp5MKNrLkuVxANrcMITjU27Tdvqc3/M1B6yJhPIhrzb96wsFQn7k0MH8NlDeU5iw
 WMerX/ldZvWsQ4/hUYNJfmjG2mXU0t26LUSqZgdb+HLcHwoTrPovBW7SzykSPOz9Ipac
 RoM6uinpJk4FsyX6BAM3ms31dSgNn1e2qkI24GKFaDfZi4NvXpXlWLTqOLsdP/sOhxDq
 LfbMFjihhafmZNBGZuF/s8E4ft3KpWpA4oOvwKX9OW04Oz0GiGxFck3ZosNQB/Vj3hIE
 xMh1PlPk7oGt24pwKvW9ml6nSDdYa034I8zuT3UFoJCeeoieDzjRAlazAnXVNiqGt3Yc
 Qv8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pxhrdycLqRcl8yZff8EnF0nl6QUAsSQr4n1zOEszaCY=;
 b=EAmh/GcO3WeRJQq698q2cvG6y/gyeVka+jfhD+1xE440wxqiGsfAWMQFkLK6CdjHL7
 NUhPqJheEjAd97+dXTUDYUnfOFe6u+po0ibF3ggzyil5O2Rn3JC4gJC69UuMXAeyDDV4
 gh+sl2vJ9o5CatBImNFbjOmrYEnZcwh4bHbCysm6ugi+A2WE4LtFTHdYRzeQk4j7BUOo
 wlGUziE8nZMNLczoa7zPA0C9m/JLTAWbL4okUQktCUmddO7VZ0Wm2pYe4VlvGO/LdVLl
 E1xiZPjlfWBAnMQfvPJFSjQGxKDRe4JmgLfQCy2/JkoXqkIEP24YA2g12jQe2vMu/zHA
 v+nQ==
X-Gm-Message-State: ANhLgQ2Yv0v2DuRm1tiFP9y+6rtWYTBu/Cz54ybXm9Y29COQiDh9Y2vh
 cSCq7TKQOsztOPqho+lJEqd/NiA9QIPMaYOnzMCM6SrpiG8=
X-Google-Smtp-Source: ADFU+vv9AtJkgZLCZ1s4+2h7aCl6Dr9hKC9TPsDL0u4RkJ+TzVVPfEcn6f6bdRh8QyFFOH51PmZUbrPOwUpGb4mKEEw=
X-Received: by 2002:a63:4e22:: with SMTP id c34mr2321252pgb.263.1584403269224; 
 Mon, 16 Mar 2020 17:01:09 -0700 (PDT)
MIME-Version: 1.0
References: <cd74f11eaee5d8fe3599280eb1e3812ce577c835.1582849064.git.stefan@agner.ch>
In-Reply-To: <cd74f11eaee5d8fe3599280eb1e3812ce577c835.1582849064.git.stefan@agner.ch>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 16 Mar 2020 17:00:57 -0700
Message-ID: <CAKwvOdneF5nXgx3Rh6=NhPK+q93VRhs7mDCcK2eGY0e2rOqqnQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: warn if pre-UAL assembler syntax is used
To: Stefan Agner <stefan@agner.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_170110_727966_91C4D9FE 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Jian Cai <jiancai@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Manoj Gupta <manojgupta@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Revert "ARM: 8846/1: warn if divided syntax assembler is used"On Thu,
Feb 27, 2020 at 4:19 PM Stefan Agner <stefan@agner.ch> wrote:
>
> Remove the -mno-warn-deprecated assembler flag for GCC versions newer
> than 5.1 to make sure the GNU assembler warns in case non-unified
> syntax is used.

Hi Stefan, sorry for the late reply from me; digging out my backlog.
Do you happen to have a godbolt link perhaps that demonstrates this?
It sounds like GCC itself is emitting pre-UAL?

>
> This also prevents a warning when building with Clang and enabling
> its integrated assembler:
> clang-10: error: unsupported argument '-mno-warn-deprecated' to option 'Wa,'
>
> This is a second attempt of commit e8c24bbda7d5 ("ARM: 8846/1: warn if
> divided syntax assembler is used").

Would it be helpful to also make note of
commit b752bb405a13 ("Revert "ARM: 8846/1: warn if divided syntax
assembler is used"")?


>
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> ---
>  arch/arm/Makefile | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index db857d07114f..a6c8c9f39185 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -119,21 +119,25 @@ ifeq ($(CONFIG_CC_IS_CLANG),y)
>  CFLAGS_ABI     += -meabi gnu
>  endif
>
> -# Accept old syntax despite ".syntax unified"
> -AFLAGS_NOWARN  :=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)

This existing code is quite bad for Clang, which doesn't support
`-Wa,-mno-warn-deprecated`, so this falls back to `-Wa,-W`, which
disables all warnings from the assembler, which we definitely do not
want.  That alone is worth putting in the GCC guard.  But I would like
more info about GCC above before signing off.

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

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
