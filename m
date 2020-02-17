Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 304BF160EFD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:40:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hC+TbRR5Svj0DnesJWZvGZvxG6JVFSW+nY2CEFMKeWw=; b=dAH+9sP930ooeu
	fidOQjGdSc8z3WfUYfP34MI0QWDhYEvy6DWqxwLv/kpx8hTwozFH5wEkjaQ5yeVL6GiF6StQ1eFDQ
	wNuhv8GJNSB0NgVht5lMKC2X+Dr1zyWtfHcJ8viMFneSDK4sxjTNO+h4A6xYWSmMtVk0EH92DjEBU
	Jh8hRi3341VGZg77zvTDqSKfrMsLxG56QhZUPLhS85mvKLrRloKbWkaLJpNe4kOC6VEaXHiqIbKF0
	tOv9h6CI5qQPzVE9CEppx/iHDUH23DoiLx3ASicrEBDwmvnBvdbgMMkcPtUAWEfvzd9C+79TzB6NB
	sHq5uCUlQ2iX1JR2lKKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ctS-0000xu-14; Mon, 17 Feb 2020 09:40:46 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ctJ-0000xQ-3c
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:40:38 +0000
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com
 [209.85.221.171]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id 01H9eL9T008144
 for <linux-arm-kernel@lists.infradead.org>; Mon, 17 Feb 2020 18:40:21 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 01H9eL9T008144
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1581932421;
 bh=qd+nhlAtQHiZejd/eFAwUUmC+Hbe2myXP/ofuTrA8os=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=pqtU/4K+GZaFisarDcphYXVq5LWjLCMJ5HiP4wi1Mz4zfM9r8+J0t6hJ+CKu0ugdL
 HPsWs+6+HO/a1pgoHa0lnwC/rw67iGZ3nB5f4MjDBDieR25Ud3pG5IOMfE8iqOMo0p
 6wNAKfoWhzjCpELGXWYZVEOtXdl8sdN7UBG7f0SCo+FDYl0O0t9pECVnLq8yVIDz2p
 6lorG2M9OlQvguBs/8BRugjnAVtOBoTa4/nNLBeJKJ5ZuxNnvcc1AfbQIjafuFD8/N
 h/AfoCCFLJ3sF0PRjH3/pz4ZLrfk0jSzRPsx95KkVX2KjwwfOsIPHuHaHKXwFG2Sed
 J1JdmervXT6og==
X-Nifty-SrcIP: [209.85.221.171]
Received: by mail-vk1-f171.google.com with SMTP id p191so4348182vkf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 01:40:21 -0800 (PST)
X-Gm-Message-State: APjAAAW1X0uJvWZNi4DRvYuQ4fV3SQ/f6rHmYkaitvUkVXeBcJBawPD0
 kcPs7eL0ER+g15WvKWG821gzYVRTqPy2TXPPudI=
X-Google-Smtp-Source: APXvYqzHDQKmfHzRUeVqKP2QdIcXsFGUEGcZAcGFtr/o8SGLvFfoc2iTiYZEyhaMFMDRcFoPi37kiu5pn55evA6zb9k=
X-Received: by 2002:a1f:72c3:: with SMTP id n186mr4998194vkc.12.1581932420243; 
 Mon, 17 Feb 2020 01:40:20 -0800 (PST)
MIME-Version: 1.0
References: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
 <1581931668-11559-16-git-send-email-amit.kachhap@arm.com>
In-Reply-To: <1581931668-11559-16-git-send-email-amit.kachhap@arm.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 17 Feb 2020 18:39:44 +0900
X-Gmail-Original-Message-ID: <CAK7LNARTD88U1ZBxMU3fCDb1KxF=PavhgoUzqTt6ar9-+7eMQA@mail.gmail.com>
Message-ID: <CAK7LNARTD88U1ZBxMU3fCDb1KxF=PavhgoUzqTt6ar9-+7eMQA@mail.gmail.com>
Subject: Re: [PATCH v5 15/17] kconfig: Add support for 'as-option'
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_014037_388063_CA73D805 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi.

On Mon, Feb 17, 2020 at 6:29 PM Amit Daniel Kachhap
<amit.kachhap@arm.com> wrote:
>
> From: Vincenzo Frascino <vincenzo.frascino@arm.com>
>
> Currently kconfig does not have a feature that allows to detect if the
> used assembler supports a specific compilation option.
>
> Introduce 'as-option' to serve this purpose in the context of Kconfig:
>
>         config X
>                 def_bool $(as-option,...)
>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Cc: linux-kbuild@vger.kernel.org
> Acked-by: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
>  scripts/Kconfig.include | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> index 85334dc..374e251 100644
> --- a/scripts/Kconfig.include
> +++ b/scripts/Kconfig.include
> @@ -35,6 +35,10 @@ ld-option = $(success,$(LD) -v $(1))
>  # Return y if the assembler supports <instr>, n otherwise
>  as-instr = $(success,printf "%b\n" "$(1)" | $(CC) $(CLANG_FLAGS) -c -x assembler -o /dev/null -)
>
> +# $(as-option,<flag>)
> +# Return y if the assembler supports <flag>, n otherwise
> +as-option =$(success, $(CC) $(CLANG_FLAGS) $(1) -c -x assembler /dev/null -o /dev/zero)
> +


I am still not convinced with using /dev/zero here.


Does this work?

as-option = $(success, cat /dev/null | $(CC) $(CLANG_FLAGS) $(1) -c -x
assembler -o /dev/null -)


[1] Could you insert as-option between ld-option and as-instr ?

[2] Could you add some comments to explain why
     /dev/null -o /dev/null does not work?





>  # check if $(CC) and $(LD) exist
>  $(error-if,$(failure,command -v $(CC)),compiler '$(CC)' not found)
>  $(error-if,$(failure,command -v $(LD)),linker '$(LD)' not found)
> --
> 2.7.4
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
