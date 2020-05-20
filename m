Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8878A1DA6B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 02:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0uEH+InfI1JSZ/lwK7lYP4ftu4/DMlWD2lNVUkY+WQA=; b=ES73OaIy1cHLVd
	1ZUyL9vEZuMfU9zeTNJTFjYrUprv2Sn7Hgo0EFbDKVm6z6uVS4J/W4S4EQFJ4h5mUwU2BeTMSCiU+
	BzrThiD7RyLKc0ZCR9vnuZAqxp8wtgQZmc5hNJjaF11zmLfusMScbaVjjvniPsitJbpPdfv9vLxuT
	QM++sPcBQi6RQEHyyjpvoxFMv9RZZmZc9FUv5gLGwOyDSqmS9hSH3dWkFHyREEkR4NsxWPuxCdLCf
	wBahUliTSM0LFshMes5hWizAeyw8EFcSUa6DeE1b8TX0pLPjB0kOgO1L8XqtGgdcwHucGV69eIdOc
	F3wbYsqdr4U7fYo63AWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbCkL-0005ab-7q; Wed, 20 May 2020 00:38:09 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbCk6-0005X1-I3
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 00:37:56 +0000
Received: by mail-pf1-x441.google.com with SMTP id x15so741201pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 17:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bQAC1NT3NV5Ww2kROWBg4S08R6BZXLL6056v3cyEbG4=;
 b=T6lLvYIBngb6iPsCaE8JllJMmnC3vdeLg2p6PFsZt1Pwjh0pU90liHRmcMUVmbtfZM
 vk95GAlvhSiLZtivLWgBNv2R5GF0r1t6qWcHjs9nN+BNY1VeZmwyTRnqUBZ7IBOSZj/0
 hftWoYHs6selOoE08s26T8YhCYg1PiYtoe0c3O1lZ/5p9gH7X93WTtaHsBEMKQx9iJHI
 slLNSEeZ8/4jdXT8G/ZTZPvEjA2Fui2amNauBYfBYtI44R0el3tGP3DGT3H990vdgwEu
 P/xsoce1HxzME/QhfOCrVjsnavKsWAlDIDw+1ooD5oKxBiSPgfe+1cgEHeOBY2AIlxBA
 6HBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bQAC1NT3NV5Ww2kROWBg4S08R6BZXLL6056v3cyEbG4=;
 b=GX2C0yorncKg04p/l6OCt16gBShxbH977Rjvklhxbn5W7fnmzY7aH+onJ0gCNy3igU
 dOk3iYC0FgeaeLTNAAa88y+4x0xKi64rAkiEcQjvqWNPB2EyYBXFj+zDPCRvTzsuqs4C
 MrFwJlmroIxJ9avWupYOt2AlKkk94QUbqfr+FjyvRN8wRc258Vw14sXF62j89gJF37AV
 voQYwapOzYv8Bgb+kM713ONvJqyZJzN2H7AwtUeDwFJkQFn85PYPRIr1PsM1LUscPJKJ
 BhUUuZ49hBBuddnh93E3W6wDQqZcSm8KkUUvCqF+W7N+LeTfLrnePnMrNxCin5mBSLKf
 +bhQ==
X-Gm-Message-State: AOAM533deLI/p3ZxlLxlmelaSd98DKq0wOqHH77LdZVKkY61rgrK/gvM
 hezOI0PfGtJ4NvOTV1X4BGjRsng/z3DjvHsI7rZpAw==
X-Google-Smtp-Source: ABdhPJykkPJYM8ZFPfm85nN9F6Z6DBqxzVVeRgleCd3daeC11p6ktS1REPTfebjsB5jDE3fwEvjIoG/9DlXUlA2jjlM=
X-Received: by 2002:aa7:8c44:: with SMTP id e4mr1708302pfd.108.1589935068779; 
 Tue, 19 May 2020 17:37:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200519220923.1601303-1-arnd@arndb.de>
In-Reply-To: <20200519220923.1601303-1-arnd@arndb.de>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 19 May 2020 17:37:37 -0700
Message-ID: <CAKwvOdmH6bMJHzxSs2mVN=P5BBYjYrDs13-oq-Qq+S4ykHSYvA@mail.gmail.com>
Subject: Re: [PATCH] ARM: pass -msoft-float to gcc earlier
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_173754_612065_3958F3E4 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
Cc: Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 LKML <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 3:09 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Szabolcs Nagy ran into a kernel build failure with a custom gcc
> toochain that sets -mfpu=auto -mfloat-abi=hard:
>
>  /tmp/ccmNdcdf.s:1898: Error: selected processor does not support `cpsid i' in ARM mode
>
> The problem is that $(call cc-option, -march=armv7-a) fails before the
> kernel overrides the gcc options to also pass -msoft-float.

The call to `$(call cc-option, -march=armv7-a)

>
> Move the option to the beginning the Makefile, before we call

beginning of the

> cc-option for the first time.
>
> Reported-by: Szabolcs Nagy <szabolcs.nagy@arm.com>
> Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=87302
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Moving this looks harmless enough, though it's not clear to me how the
failure you're describing would occur.  I don't see calls to as-instr
in arch/arm/Makefile.  Which object is being built before -msoft-float
is being set?

> ---
>  arch/arm/Makefile | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 7d5cd0f85461..e428ea6eb0fa 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -16,6 +16,8 @@ LDFLAGS_vmlinux       += --be8
>  KBUILD_LDFLAGS_MODULE  += --be8
>  endif
>
> +KBUILD_CFLAGS  += -msoft-float
> +
>  ifeq ($(CONFIG_ARM_MODULE_PLTS),y)
>  KBUILD_LDS_MODULE      += $(srctree)/arch/arm/kernel/module.lds
>  endif
> @@ -135,7 +137,7 @@ AFLAGS_ISA  :=$(CFLAGS_ISA)
>  endif
>
>  # Need -Uarm for gcc < 3.x
> -KBUILD_CFLAGS  +=$(CFLAGS_ABI) $(CFLAGS_ISA) $(arch-y) $(tune-y) $(call cc-option,-mshort-load-bytes,$(call cc-option,-malignment-traps,)) -msoft-float -Uarm
> +KBUILD_CFLAGS  +=$(CFLAGS_ABI) $(CFLAGS_ISA) $(arch-y) $(tune-y) $(call cc-option,-mshort-load-bytes,$(call cc-option,-malignment-traps,)) -Uarm
>  KBUILD_AFLAGS  +=$(CFLAGS_ABI) $(AFLAGS_ISA) $(arch-y) $(tune-y) -include asm/unified.h -msoft-float
>
>  CHECKFLAGS     += -D__arm__
> --
> 2.26.2
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
