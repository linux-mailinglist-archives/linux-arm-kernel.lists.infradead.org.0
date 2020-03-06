Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7197817BBD1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 12:38:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oMRRWl+KIHCghnHXUjICADfIW23Bck20eyvOMU4bmkU=; b=CTimv00SBepqXG
	ayjDmCCPb+rpcPVrRtUazBNd9TF+JH2oUsurpO5iNdHH8rD07xZ1zC2/57O76eZ30i/2sY42W0VGJ
	dxgs60MAW6jsozaw0Sljegj5U2fYOUqzFRJqk+QsYnkpyN2mJS1/rra14KjL4D3IZialH4UG314vT
	Tk3TgStWsWGpQIAKPi5HynetSnkY0nmOf12nghIvPOoK9CvRLWOE7MCH/u8XO+PUxjk8JAZX5xAVs
	lqCxu4s+hpED2a8y+7gnl1MMwKVTwvqazBMGgcWnPprNPijfJnYAcp283KMvzQ4eBcjKPLNA+huC5
	bWER8YzhaCR/vd2Uwrzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jABJS-0002zW-Tq; Fri, 06 Mar 2020 11:38:42 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jABJM-0002yk-1L
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 11:38:37 +0000
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com
 [209.85.221.175]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id 026BcJjs027874
 for <linux-arm-kernel@lists.infradead.org>; Fri, 6 Mar 2020 20:38:20 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 026BcJjs027874
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1583494700;
 bh=ncu8WLAljVQR3QInSu6mMHuvxTgEWqiZtNOfEM4uZWo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jDr8BKd+KpPa9mct9RcKcFzVUwXmkTgwNddiTugo1yxY0lv2SvJdxXPaTnemFc4rD
 YiiAiLzYtr3vZwy8ZuwJ1Ne5qhb6Y6vs9Xkaqduf9FAIuaiKJ0vUBwqeHnrPnAgWV9
 GWeRVxKjl3byW6tFRcJ4Al0+wsd+sJw/EH3XTOxqN7ets+v5WsIuUl4NjZv4zNe1VF
 jXMbmXTGNqFRilmn49EQgvm/CDh5WR5w6W0nCmhLhzXsmJmuL+NLBcuXAmKLTeqPWg
 RPJTaECKjUwLX0jAa0NhMzzdFsuKfinUxBfNN823t9u82hOfVyBqblq6mP+lKFxUnk
 VcfivaxL3aBXg==
X-Nifty-SrcIP: [209.85.221.175]
Received: by mail-vk1-f175.google.com with SMTP id y201so501882vky.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 03:38:19 -0800 (PST)
X-Gm-Message-State: ANhLgQ0oIur800JHeVk6L8lv8xqeW64gRcEcLebaT3OKip4hXdbiw2T3
 KN0lNM6tZt/CvRsJvCT7eaQSmfNI3I15+hBVfb8=
X-Google-Smtp-Source: ADFU+vtmXZGr7Ge50Ss53JblJfZbvh2OCKbpTUq7rB6QvrHFWeB9aTI49mIeYX5VgHRdp43DcgEXGMP7Ijnf/2CgIhU=
X-Received: by 2002:a1f:cbc1:: with SMTP id b184mr1269535vkg.73.1583494698715; 
 Fri, 06 Mar 2020 03:38:18 -0800 (PST)
MIME-Version: 1.0
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-17-git-send-email-amit.kachhap@arm.com>
In-Reply-To: <1583476525-13505-17-git-send-email-amit.kachhap@arm.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 6 Mar 2020 20:37:42 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS63ed8zfoKukgHHmqVNEptXPh8XJTv-Zkh0ba=fLN+XQ@mail.gmail.com>
Message-ID: <CAK7LNAS63ed8zfoKukgHHmqVNEptXPh8XJTv-Zkh0ba=fLN+XQ@mail.gmail.com>
Subject: Re: [PATCH v6 16/18] kconfig: Add support for 'as-option'
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_033836_452610_5826EE7E 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
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

On Fri, Mar 6, 2020 at 3:36 PM Amit Daniel Kachhap <amit.kachhap@arm.com> wrote:
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
> Changes since v5:
>  * More descriptions for using /dev/zero.


FYI:

This has been fixed:

https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;h=3c968de5c7d1719b2f9b538f2f7f5f5922e5f311


So, this will not be a problem for the
future release of binutils.

Anyway, we need to take care of the released ones,
so I am fine with /dev/zero.





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
