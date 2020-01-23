Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE0A1465C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 11:30:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BYJVl3e+7CsNDra6J8UEyC3OZm02wzoOBJlkfW/9EX8=; b=InKYBox1qd69Cv
	hZuHeYBYsUo/cfzYMsTPw2ylOMwoYHCe53lHhrg9+92BvFbo/4ziNgwOkkzYQoJPg9isEbH2CmmHA
	s6BJ9p6hV/nx2POWI1g8VsBIbXXTUOMiu0VZx7yM8piiK4vFOripkPT/FxTYS5/L4F6CUNaUniU83
	LFrCDqWz0ocseg8vm/HxGS/YSE97FyFRPlR2ZLVetQnjjEESiOchZR+jBUZ9GnP4WmG3gskDt6T5d
	FJBeFqrlqetoA+Ly+Y0N1bN87gy/nKWkxypxqEM1OfkhIh9ByHHd6IZqbMVRbU3wcv9gX60hJqCrX
	V2wRwBRC9KYZhddA5tHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuZky-0004r1-9r; Thu, 23 Jan 2020 10:30:36 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuZkj-0004p5-PD
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 10:30:23 +0000
Received: by mail-wr1-x442.google.com with SMTP id z7so2416246wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 02:30:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YAxfzxPfurgTuk1uerQYc1sz/OcAPQINb4RTts1Vwgk=;
 b=mRAIWj0Hzjh8x5+CEVTJV9/rU+71i26UegzQBtdAjpfR5oWHJxcBa6xCfOw/QTpicE
 O1oc3s0ihL3piv/L4wB6oAk9fyJVOVFEuIoZ1DwFHsssdUVHrBL/FZFZWRaLUMux5kHX
 t3Ds4+cxE5bjLD2NHoMA0sd5hmFBDdurnbiPSezMhgIvPjfrk5RBwjrnsxeDyNFqjrdK
 AIcSTy2LwzEyZ86RdC8piBDme9PM0NgK+o2lKu0PMC5O052482JNG+QOwmkXv0fr2L5o
 pT7p1RvyHqZEr3MRpb9DbUdRw+SWnSiQeeuT81P2EG4Vm7fGH40J7GS8qDrzBZv4PcKC
 AZ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YAxfzxPfurgTuk1uerQYc1sz/OcAPQINb4RTts1Vwgk=;
 b=luqSIjR9JHjZpJSbP7aMVECAa2IiJFit4a1tBpo2jzrCjaJ00sfv16O35QMpdijj4J
 GYyfIb5hBYOB1v5WZ3BUXgLnMewkLdOVVT1PoNV5gv0MFbfxNdvjLsULqF9Pq7rVkruz
 1RfirJt1sr9ypLR/D+NBDJ13jb1MPJK99jZzdzEUZsKadIh1xfvvoE//sCdcPLU46aEF
 ScCbFCSGk+cg/xggSLlbCEVPmIupbNHzePERxrSXmzVD50MVvcelnUhjLpsDTKygVNV6
 ExUR6HqOneIH6n4IN3QuVlhF2Zo4XuGgmiL+Sctc+5kZSkHe0bvLWIFZdkLLxaa6+9Uh
 B4ew==
X-Gm-Message-State: APjAAAVKMxZ8/p0A5hN426HTekjQH83FioanWg9aWXal7yIaSp+jzIQn
 kfBaIK5xGcWB+Oh5do0Ln48dY/GhiG7FUBv408cukg==
X-Google-Smtp-Source: APXvYqxHzUbhdPRBofY+UYqHsRyY5yd2S/u+ZLpTFFlVGUZfVWmiweiHVsEo5waGSZt9/e+1G3lBKWkRZedw7a4VRr4=
X-Received: by 2002:adf:e6d2:: with SMTP id y18mr16636656wrm.262.1579775419984; 
 Thu, 23 Jan 2020 02:30:19 -0800 (PST)
MIME-Version: 1.0
References: <1579774839-19562-1-git-send-email-amit.kachhap@arm.com>
 <1579774839-19562-16-git-send-email-amit.kachhap@arm.com>
In-Reply-To: <1579774839-19562-16-git-send-email-amit.kachhap@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 23 Jan 2020 11:30:09 +0100
Message-ID: <CAKv+Gu-r4d1bBNJK0BZAX=b2+SDqMztAHx+cpq1dxB2q8O1YJA@mail.gmail.com>
Subject: Re: [PATCH v4 15/17] kconfig: Add support for 'as-option'
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_023021_829890_B3293F1C 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Dave Martin <Dave.Martin@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 23 Jan 2020 at 11:22, Amit Daniel Kachhap <amit.kachhap@arm.com> wrote:
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
> Changes since v3:
> *) Changed the assembler option to -c instead of earlier -E.
> *) Added Masahiro Acked-by.
>
>  scripts/Kconfig.include | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> index d4adfbe..c4b4424 100644
> --- a/scripts/Kconfig.include
> +++ b/scripts/Kconfig.include
> @@ -31,6 +31,10 @@ cc-option = $(success,$(CC) -Werror $(CLANG_FLAGS) $(1) -E -x c /dev/null -o /de
>  # Return y if the linker supports <flag>, n otherwise
>  ld-option = $(success,$(LD) -v $(1))
>
> +# $(as-option,<flag>)
> +# Return y if the assembler supports <flag>, n otherwise
> +as-option = $(success, $(CC) $(CLANG_FLAGS) $(1) -c -x assembler /dev/null -o /dev/zero)

Did you mean '-o /dev/null' here?

> +
>  # check if $(CC) and $(LD) exist
>  $(error-if,$(failure,command -v $(CC)),compiler '$(CC)' not found)
>  $(error-if,$(failure,command -v $(LD)),linker '$(LD)' not found)
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
