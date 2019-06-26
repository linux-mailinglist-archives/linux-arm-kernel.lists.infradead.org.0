Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAFA562E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 09:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yGUDPrgMkN5RmJh9P6KqM3hbrw4ku8FI9ZHsTATJJA4=; b=ZvTsCrD9jjLJ7/
	xOoyZR9ERR7wLK5zVU4IyARD4CpOTQEc7/BPgsiNNgulKqGmj6AXKWdab/ds3h1djNIkWXRigtCJq
	sFsmpAgskekMlY9Vt31BBTcK55l8a83ljgg3PHCmJGxuEZ+GESqQys1T8kq/5F8miykaaSVA356WO
	+pjExJPchQz8ub2C/vdJdxZ2YXWkFwdqyUnJEMeQ5lNDVXZEwh+URYXMokiFfP0O1x8FrTRQXTvOF
	zc1MahgIoqnzkdF/NCjTMRY0FPIAK58b0VgFtO5YCr24qeAEnRs8+30jIFkW8TrZTBy93cS1X4MIV
	H5wv2wzpcaOqMjuYcoIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg21U-0002tr-L1; Wed, 26 Jun 2019 07:07:16 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg215-0002tJ-OM
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 07:06:53 +0000
Received: by mail-io1-xd42.google.com with SMTP id j6so1047401ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 00:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u94vxob2SrQiWiR32vSHPUe28bBMbdJvX+quOFiRIe4=;
 b=VMXKg+nEEH/ksApacPol6+RHMDCcfwTm4prt5zxds86nFMfCPWBTSvEuWqzWnBG7nL
 qWum/stOqDRcHLID6xVa7dNuzwab00uJa9PkJ2BQzDbMUmAQOuAn4A8mk/TxQscdlpgq
 834fvN3flZR8EelVrtjGBx2LuBDglQK4z0K7goZ3aEyTKDH6LdiKWkduh/GuLpxLV+ob
 fCB2wKCcY2AQvEQ2TaZ9v+YxD8OH75E1f/wIC/7g9NziySm7uRmUHlz7UHUdYND2U7sO
 LnztQg4Blru/dtWMGH6RtUy8KSlUaMRwhcWbtn0N2MYUOdGGFOpolh4RhrJ30O4yq+2e
 8XkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u94vxob2SrQiWiR32vSHPUe28bBMbdJvX+quOFiRIe4=;
 b=jsma5ww401rLOu9Xs1NMCPVDwAwKBHoS+gxcfJUWPt8r6GsxYDzcJ8El6ONyLO5jxy
 5vxrqwdhjABtEHlUxd/sxRobscuHb7aIrQCf3a3FLtQzKmnCGQjpeV2RRDCL1tlUUCKb
 l7W39FB4qO7Cn6yjW8ZrpG+3jGT3n6/AgzdAfukECieq/Cu3foKIDaJ1AcwQLfQsGokF
 dJNAeBpRbR5v/CtEoydcE7YGkukxPElywQlcU5wDGduHDnHXekJorKAlakk7ngUQZVIu
 UWeb9KOpfKIfVto5VTklgn88XcUx2Ijp4jRi/Qja7oeadeNW3LWnZ+8ewRxmGyYOPdHR
 WNGg==
X-Gm-Message-State: APjAAAX+qi9KwwnSTLxBRFXTe2c1ShzDrBjDRvCVmx4vu48EZy8aEZDl
 jJ4F/4VhKKfMmdV8gFdtLJvYvrtWW0DIWUAKIgUjCg==
X-Google-Smtp-Source: APXvYqwifeDzdNlUZpwjBY8J7RLuaCite3HcilCUVCyG1sd4TgJIOv4iw3avZEGOcpBykyAsl8NAL4ezvnGpNEDepfc=
X-Received: by 2002:a5d:9d97:: with SMTP id 23mr3432834ion.204.1561532810008; 
 Wed, 26 Jun 2019 00:06:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190626042017.54773-1-natechancellor@gmail.com>
In-Reply-To: <20190626042017.54773-1-natechancellor@gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 26 Jun 2019 09:06:36 +0200
Message-ID: <CAKv+Gu_jhKsQN-pPyXQn5iFh1wikJirGZ4vxsME7oLJTUO6MmA@mail.gmail.com>
Subject: Re: [PATCH] arm64/efi: Mark __efistub_stext_offset as an absolute
 symbol explicitly
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_000651_798604_38E1F104 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fangrui Song <maskray@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Peter Smith <peter.smith@linaro.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Jun 2019 at 06:20, Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> After r363059 and r363928 in LLVM, a build using ld.lld as the linker
> with CONFIG_RANDOMIZE_BASE enabled fails like so:
>
> ld.lld: error: relocation R_AARCH64_ABS32 cannot be used against symbol
> __efistub_stext_offset; recompile with -fPIC
>
> Fangrui and Peter figured out that ld.lld is incorrectly considering
> __efistub_stext_offset as a relative symbol because of the order in
> which symbols are evaluated. _text is treated as an absolute symbol
> and stext is a relative symbol, making __efistub_stext_offset a
> relative symbol.
>
> Adding ABSOLUTE will force ld.lld to evalute this expression in the
> right context and does not change ld.bfd's behavior. ld.lld will
> need to be fixed but the developers do not see a quick or simple fix
> without some research (see the linked issue for further explanation).
> Add this simple workaround so that ld.lld can continue to link kernels.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/561
> Link: https://github.com/llvm/llvm-project/commit/025a815d75d2356f2944136269aa5874721ec236
> Link: https://github.com/llvm/llvm-project/commit/249fde85832c33f8b06c6b4ac65d1c4b96d23b83
> Debugged-by: Fangrui Song <maskray@google.com>
> Debugged-by: Peter Smith <peter.smith@linaro.org>
> Suggested-by: Fangrui Song <maskray@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/arm64/kernel/image.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/kernel/image.h b/arch/arm64/kernel/image.h
> index 04ca08086d35..9a2d2227907c 100644
> --- a/arch/arm64/kernel/image.h
> +++ b/arch/arm64/kernel/image.h
> @@ -67,7 +67,7 @@
>
>  #ifdef CONFIG_EFI
>
> -__efistub_stext_offset = stext - _text;
> +__efistub_stext_offset = ABSOLUTE(stext - _text);
>
>  /*
>   * The EFI stub has its own symbol namespace prefixed by __efistub_, to
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
