Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B081445535
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 09:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lVdH9KfHxk93cZEtra6xo1bwZBGBBbkodqiE9AZY6Lk=; b=qihDo0f+tnSgrz
	QyBpw5x12146/v8Kt9XNyVQR2UYLe3A5i/jojFcKY55GvnktK7+W/B08LHyF1/kK1miADKt1SwtmG
	HgJASsV+xh2RbrTW20bXcoo6Hn0o6m7AHJRYBBM+Jq6WtxZ0z33NWAVzB6L0bQJJHdKukKZHnJFrb
	Te3kylQ83r0sxttc1sA1PN2R1r4fIdk9NZ/hz+sdtu3IQrTz6nTRpreluf3T2KTatwY1paLU5KRdx
	DzTQhXCxfLu5uZCpa0CBnxO4yLsL9BKKoPyqDU316v9ufTEYgojYT/eyPLUBVRp2AhG6UlAMYo+iv
	MsG8hWapLqbgA4bex44w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbgFK-0005Ys-0n; Fri, 14 Jun 2019 07:03:35 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbgEt-0005XZ-HJ
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 07:03:09 +0000
Received: by mail-io1-xd42.google.com with SMTP id e5so3579535iok.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 00:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/e9SMaz1f2hGhr+Y7ePFxQlAt1pAXhkHDxZGScVnsP0=;
 b=VeS3CU0GVfEu7mUzCPUp6p8noRpmTbKdsRVKGt5bZ4jZnOSQhpuqS+ezrT+pak6Dc4
 wCCOwBgDRwBJPwMdJdXl9ISTJZgvJVhwnxtLKKyovc07NM/cjyPDPQsrrEtSfVvR1bDA
 IAuZZgXXVBUlis5movc1J9Nxn7jJoc9wK1V2yrB0jG32i+tZ9ii9CKS4mszok4ieLBvk
 Rk1EBY/iZaFkhvgzNS3AsIW2B6tVwziphPKYyJbMNQQs5ynzTSn874Hu8rrAePxMF/c4
 UpbX4ImEi2jtEVWL0lAhtd8KupAEgjqL/1GHGIjqMO0WgUSDYfVw0w6ecfBdH+3Par36
 fWYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/e9SMaz1f2hGhr+Y7ePFxQlAt1pAXhkHDxZGScVnsP0=;
 b=GSpkplyFldXGSQB8UfnBR1K+F9bvWsj6xtKqR1QQafhn5hbXTZfWVkTwnLU0oRBaCw
 /wyYHa6UOUVBnGdnCpNM/PLYuhTLslLo06YPIUyLKQqtsDjOHzsa+K+32bFUL+OG3xtn
 HkH+fSqfqF52PPOqq94ZurrdQlXf2bYz8HCI9vosqjjBuqiT47WFBgD2Da7PD0Hconye
 slkonW258GRirNmFWVe5YCed5QRpGBs+2OA2KBss90vfnqDAHm2YJKpOQSfr1GRiWOHN
 v6Rz2XgL2ksUDLzcYDVFUNQwEN7cwCPMJ6+xFN22wzfhFKUDSBYeU/T88NtWe/5QAAJx
 L+GA==
X-Gm-Message-State: APjAAAUAIL9veq30t8a+cSALxo3eQ8m2VmpXVdJJ1ZiA3mVLCoSzzgpE
 aZ0LZ4o7spzU6QMlXGMkwdEqZht7NWnDTNckLD7/Tc2Fb5g=
X-Google-Smtp-Source: APXvYqy6ncGT/KFf173rk/8qVGA0xxyZvKYmkEWhVq/Wy6GUm3QlOI5jun6ArLYaraXYK9V3vC277oAE7HAUOelPlDY=
X-Received: by 2002:a5e:820a:: with SMTP id l10mr5570290iom.283.1560495781891; 
 Fri, 14 Jun 2019 00:03:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190614025932.533-1-f.fainelli@gmail.com>
In-Reply-To: <20190614025932.533-1-f.fainelli@gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 14 Jun 2019 09:02:49 +0200
Message-ID: <CAKv+Gu8U1=Yxo7Mw6WsJbe82sRpjAq91HGW5XJi77ee+=BkGeA@mail.gmail.com>
Subject: Re: [PATCH] arm64: Allow user selection of ARM64_MODULE_PLTS
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_000307_645017_86872489 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, open list <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@vger.kernel.org,
 "moderated list:ARM64 PORT \(AARCH64 ARCHITECTURE\)"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 14 Jun 2019 at 04:59, Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> Make ARM64_MODULE_PLTS a selectable Kconfig symbol, since some people
> might have very big modules spilling out of the dedicated module area
> into vmalloc. Help text is copied from the ARM 32-bit counterpart.
>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  arch/arm64/Kconfig | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 697ea0510729..36befe987b73 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1418,8 +1418,20 @@ config ARM64_SVE
>           KVM in the same kernel image.
>
>  config ARM64_MODULE_PLTS
> -       bool
> +       bool "Use PLTs to allow module memory to spill over into vmalloc area"
>         select HAVE_MOD_ARCH_SPECIFIC
> +       help
> +         Allocate PLTs when loading modules so that jumps and calls whose
> +         targets are too far away for their relative offsets to be encoded
> +         in the instructions themselves can be bounced via veneers in the
> +         module's PLT. This allows modules to be allocated in the generic
> +         vmalloc area after the dedicated module memory area has been
> +         exhausted. The modules will use slightly more memory, but after
> +         rounding up to page size, the actual memory footprint is usually
> +         the same.
> +
> +         Disabling this is usually safe for small single-platform
> +         configurations. If unsure, say y.
>

I don't mind adding this, but it makes sense to add an explanation why
KASLR enables this. E.g.,

"""
When running with address space randomization (KASLR), the module
region itself may be too far away for ordinary relative jumps and
calls, and so in that case, module PLTs are required and cannot be
disabled.
"""

>  config ARM64_PSEUDO_NMI
>         bool "Support for NMI-like interrupts"
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
