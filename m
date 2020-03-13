Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D97E18437E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:14:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l+QuFiEs81TFCd0WhHIF6ZIFxiDrC+c28E/I2aQGDqg=; b=mBs5gxmdK9FYJj
	lXmLFY4pfDjWSWSbrUGik8T0k3eOpEMt1YH/uO3+gsdfL1U+m8JXqNaOcmoxZ4G59OxqVw4PNIoYQ
	dnNmbVvR6MH0XmCLvXVTcxjl7thz/SgH7wfLRaYQ4bnOYrO0raJsUzbC2yLn8XhSElFK4+kG9LuJL
	U6NZ8VPxHfAv4vvAQjljkK64bZ4BQ5d2qGYzGx1xD5NRKJc7sKZFYcDOiRahTPJ3p8hi8tOGxYQDb
	7E3e/5pCD9OvA/WZk7z7jCY4zquTjIL84woh0Xof1NS5Q8rSc/FMFrBLJzVxC/S3oYShAjqLwgx0v
	txsbuTs/Wjf0MoN0cCQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgOf-0003Wy-S8; Fri, 13 Mar 2020 09:14:25 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgM9-0001CZ-2U
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 09:11:51 +0000
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com
 [209.85.222.44]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 02D9BTnq014371
 for <linux-arm-kernel@lists.infradead.org>; Fri, 13 Mar 2020 18:11:30 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 02D9BTnq014371
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1584090690;
 bh=HcS9IuwF6vfbYV8WrFmhDVFaVs/mT4OyGN+dJB/LxOc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=p8aumDNgjstpkNqQCuL1Rb5JWXLkkXxij/AEU/L0HMKac7j52gMa6uKD8TSuTR7FU
 gFJ3sddAEjd3k4v+UIArfTJA7WWbggypha3ifDNafW/zXqTUYDhvR9QbjbhWm8Defn
 hFDwk7n2ldwbrxMbbMv90wvzuQbZmfPeUgc3seN5FMLeJBN5vPRUJNzi/wrnrKOVLF
 aIzj2NinQEBG93jTymbQFdQgrgaEYqAeGKYZ8egejnaXwmq/GCMVzeH/mE48k6vwsJ
 CCxFrqF5vBBY09sUAr4oGl7hSu1mx3WvDZ9Itu/B/1hbcffEVMx4JIeAHboN3Nigin
 M/S/Ckpp0BJOg==
X-Nifty-SrcIP: [209.85.222.44]
Received: by mail-ua1-f44.google.com with SMTP id h35so142397uae.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 02:11:29 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1UapX0KM5Cp9+CxuAIbN7kNJgzqUW/aSZxB4oTxY3JKLdWJqU0
 G/lKZvGsnVXKpMgqRTOKULo7Qm028QGKihEoL6E=
X-Google-Smtp-Source: ADFU+vvC4/IvcN8PE6AISInueTAeQeJyKvRciErDhMEom2AyUN0v7VvUMWMSPj92WFLmQuCGp9kh7avRhsVm+/ApNMs=
X-Received: by 2002:a9f:32da:: with SMTP id f26mr7651610uac.40.1584090687991; 
 Fri, 13 Mar 2020 02:11:27 -0700 (PDT)
MIME-Version: 1.0
References: <1584090304-18043-1-git-send-email-amit.kachhap@arm.com>
 <1584090304-18043-16-git-send-email-amit.kachhap@arm.com>
In-Reply-To: <1584090304-18043-16-git-send-email-amit.kachhap@arm.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 13 Mar 2020 18:10:52 +0900
X-Gmail-Original-Message-ID: <CAK7LNATKkdd5RqB-E0_F3WidxmdBZxhjc2g6bkgCxaUu2vO2eA@mail.gmail.com>
Message-ID: <CAK7LNATKkdd5RqB-E0_F3WidxmdBZxhjc2g6bkgCxaUu2vO2eA@mail.gmail.com>
Subject: Re: [PATCH v7 15/17] kconfig: Add support for 'as-option'
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_021149_997430_64692D24 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Hi Amit,

On Fri, Mar 13, 2020 at 6:06 PM Amit Daniel Kachhap
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


If you have a chance for v8,
could you please drop these Cc lines?

I had already given Ack, and am satisfied.
I have no more comment.

Thanks.



> Acked-by: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
>  scripts/Kconfig.include | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> index 85334dc..a1c1925 100644
> --- a/scripts/Kconfig.include
> +++ b/scripts/Kconfig.include
> @@ -31,6 +31,12 @@ cc-option = $(success,$(CC) -Werror $(CLANG_FLAGS) $(1) -S -x c /dev/null -o /de
>  # Return y if the linker supports <flag>, n otherwise
>  ld-option = $(success,$(LD) -v $(1))
>
> +# $(as-option,<flag>)
> +# /dev/zero is used as output instead of /dev/null as some assembler cribs when
> +# both input and output are same. Also both of them have same write behaviour so
> +# can be easily substituted.
> +as-option = $(success, $(CC) $(CLANG_FLAGS) $(1) -c -x assembler /dev/null -o /dev/zero)
> +
>  # $(as-instr,<instr>)
>  # Return y if the assembler supports <instr>, n otherwise
>  as-instr = $(success,printf "%b\n" "$(1)" | $(CC) $(CLANG_FLAGS) -c -x assembler -o /dev/null -)
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
