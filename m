Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1946A562E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 09:07:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UN1zd1Q9SdqWLCZzfeE52HKdfg6uUbL8O8mH+QxvloM=; b=WBfbD8bDS7LUTp
	ERKdMzZwHstDFqVVEt0bN/IOrTSRtOW9lY9qAeUfsehYOGKUK9u3CaGhVrAg+TGItrWzinY1kBrye
	bU/ukXth39qUweyrx2di+YvRs5hNKVH2cQSTBdV5sxBrh7quPDgkqA41vbqeWzTUxYx8ihXdHVJ7k
	rO5TyDMo07BSRaYTr9G1SubgawMg5iAIohhT9cM1b91R0MLFvlH1gV4pKqozCffmkwoZm5mbaan1Y
	af6OaxwKllgu7Ko95zJXdQ5nnkzWLeRwloIiQj7TvWxLHTHxW3+tAN9k/mxaFXKO2rNxHmEv/yjNO
	9BItiS0/XTzzKj+lYLGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg21n-00037M-7Z; Wed, 26 Jun 2019 07:07:35 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg21R-00034j-Qb
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 07:07:15 +0000
Received: by mail-io1-xd44.google.com with SMTP id k20so2683348ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 00:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YO3NTtUqQg+q5y+jLevvg6DdA+MqWwydBFISViHdvIg=;
 b=uSxFPFz1oOhSaCmWOKp7072jHy7BtOTB5oQPPcoEsjkMzC0GDSdCUibZ0FnOAbKoN+
 V22GqVPuxH+X7LFD3UGeDwKZzHTfEdw2lSv1IxhOB6vL7VEKGE3Eeps4viQAFq8brg8/
 WHPQs+sZh/FXV83NvXHnx2R06RkWQLPoUDTz5HJiZTbMXv/uqAfA6ji7dkWrHBij0l5N
 Ngxq0uvzA2UK9pMGLxHQekggDgkrXY7BIgDg3nNPPF5jgXNbTaIwFPQvTLcEYv41Ks7D
 vmIytaUPzzz3nObxwbEkIppJTv02PwMaGz5QG3iCow7IL/VmILcJ00jcYIGeXtpmi9kT
 fRrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YO3NTtUqQg+q5y+jLevvg6DdA+MqWwydBFISViHdvIg=;
 b=T+b/HACJJZ9Sd1y7DuUkberpyxph8AGedVmzsDVfAS3G3KF8LjpFv+x6OLdlqv+5/u
 23/F76b4OmJ6t3iCjYnT+M1+HuDnn0Nz/FZVPxh86rihoMrECohfGZujtZxqAMYFuhQ/
 +9uyQQZzvBnFBUxmiSi1fnOwI1IvukNabGtQ6j1PdPKAxnsTAtI84FbAnFZE1tESuhDv
 s9jLerqpzc3CfdNUkMS6WP7mWWSMb4dzvfejMzNTJuGk8JntmrLs43lnIvzE2R6e/4/1
 kxGVnr7jNI+NxoiUk7YU0bFhqiUAdv6gFHEV+hZ4HErEagoxa0MfBK++QVYwQnvUaute
 +eLg==
X-Gm-Message-State: APjAAAUGg52oRXsLMU2s6rWXPtU3xb2FAMtFgBXdROEEXCUzz+gwbezf
 bJYgVMlq6lS+gBmJ91mTe31CBQvspT+fHItwY6ol+A==
X-Google-Smtp-Source: APXvYqwUVeURJFgq5+tDgeunYYmLvd6FqPHhlPb/ql/shK6VJGGdE9qcDN4/pinr9Th11F4v8t/w1seE5/vbWzXl9qw=
X-Received: by 2002:a5d:9d83:: with SMTP id 3mr3210336ion.65.1561532832763;
 Wed, 26 Jun 2019 00:07:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190626042017.54773-1-natechancellor@gmail.com>
In-Reply-To: <20190626042017.54773-1-natechancellor@gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 26 Jun 2019 09:07:00 +0200
Message-ID: <CAKv+Gu85xLD+-CqwgNQtC3Hr9z2R5bm5th8_zd_jMSzA3JE8og@mail.gmail.com>
Subject: Re: [PATCH] arm64/efi: Mark __efistub_stext_offset as an absolute
 symbol explicitly
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_000713_985125_B9A52EF9 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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

Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

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
