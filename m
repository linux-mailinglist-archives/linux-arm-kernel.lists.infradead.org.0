Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 613A915638F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 10:15:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0XOKx2xkqUrgJYq2SMJoKhwpBF6hqkBqtyvfMlSRfV8=; b=HyHemar1/AzvJt
	tKqligTX0f1AW3IcGZOtXg0UZ3mfmkf3Oq3HSwtT/Nuqqt1/l2q+EE4O/SF61vByJoIRIbcZd+vWD
	wHp2+Khe+4GIgw5Y6th/K7vc1lg/tbNkmaz73PkOU9QaxuS9gkMxfaroRiqPajILitdWMt/CgfQeW
	bJjGZbjCj6mwt/bawwLOXrZteoYmkpWFn+8AFnUm8Y/4vsfxpQwrOu7TZlxZ0MWfJGMz4eHwknWe/
	528xtYVdWHboYOcZjxKIHUvwl0bgUmS+LTg4qKyR0TsED85xRkzhne6Gy0ru4JDxPAvoct1Rs3xvU
	3noGv95a2E6bSmUqBBHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0MD0-0004y4-2w; Sat, 08 Feb 2020 09:15:26 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0MCt-0004xk-Ve
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 09:15:21 +0000
Received: by mail-wr1-x444.google.com with SMTP id k11so1603876wrd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Feb 2020 01:15:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CoHhfIwiDbvtPfDFAwUN8VuBCX0irygnRTD29jqnMLs=;
 b=fdZgQqcZxmWzLEywyxQLKlw29+4QaJ1bzSivk5HBUO7egEfuX5HAFMx4KSmaDKzLRD
 KnohDr9N4uRL57Tx3dadfWDNg6PLGnh+4bhEuGeGTO7c91mnXHDifMmsjrxwxzrlMZAI
 Hm7vlybOLMEg0DPAVsO/DJUPr03IP6Fk0OoYH80E9WMniMr1bWgDT9wCOI+GQ4iDwznH
 pmWq8c5a7d0e0ya9DCL/gyIHCtgr4CeLjrfbnIghQQGuMD/KVBN7szH3L4P1SVj6LQI2
 4jjstFccFZCw4jbUqJASLYxna/InQh2nwbGdOHUZPKBN6yenp7/8rMmd9fPaiah9nKSe
 3qZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CoHhfIwiDbvtPfDFAwUN8VuBCX0irygnRTD29jqnMLs=;
 b=AbBXdwD3dSLylm4Z6L04z7jG9xlDmiM5ZL+3GVMoqnqyJ+uNryRv42HVNJpPGbJo6U
 XaUdbpvjpcV9JdQtwgXP1wTdnCUXbLdx5BTef7IlPKKtgDicLTISmL98hHcohUM2wuQK
 5ZftA3yAyncxYnPpdWDPhLH3X4f0HlPdbGFFfSWimlUfIcnwzWNoGULCPBk65BK39R9A
 M3k44Q3tPm2qHNI9WFkirItenProWIBSiv0V4olqCzhBtZObi5fg8e7e3/NCNYwF0FgP
 qavtDwAH/K9ZjqkYI8FYORKHPR3/NKMDcOZqGFcWwo4LToW+t8qstWgpPGDfFh8rporT
 ScAg==
X-Gm-Message-State: APjAAAWtsFtT4iF9H/3oeSd1v3GXOgf5/d3VlS6zuOwwwGe/tmeZCA4R
 1sV852UQuMRZjehgdBcQN9E5UiNvKPY1MGS3+AuOqQ==
X-Google-Smtp-Source: APXvYqwkIXj1ldYkHsCnfd5+LUx60zOCDZ0PQlqfpFQFHulcVrLK7i8LKrMk+4fRhyWOFSUu1LclVFwUH3h55G/5iA8=
X-Received: by 2002:adf:8564:: with SMTP id 91mr4637019wrh.252.1581153316892; 
 Sat, 08 Feb 2020 01:15:16 -0800 (PST)
MIME-Version: 1.0
References: <202002080058.FD1DDB1@keescook>
In-Reply-To: <202002080058.FD1DDB1@keescook>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Sat, 8 Feb 2020 09:15:05 +0000
Message-ID: <CAKv+Gu805nMtsXCLPhTpk7hPCb+Lad6fHgauaq1-G0Lq2xL1+Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: Remove unused .fixup section in boot stub
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_011520_084522_D32895BA 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nicolas Pitre <nico@fluxnic.net>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manoj Gupta <manojgupta@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 8 Feb 2020 at 09:04, Kees Cook <keescook@chromium.org> wrote:
>
> The boot stub does not emit a .fixup section at all anymore, so remove
> it.
>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Link: https://lore.kernel.org/lkml/CAKwvOdnRhx=SgtcUCyX2ZOGATM8OzG6hSOY9wGQZcwtp+P5WBQ@mail.gmail.com
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>

I'd assume these are uncontroversial enough to go straight into the
patch system.

> ---
>  arch/arm/boot/compressed/vmlinux.lds.S | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm/boot/compressed/vmlinux.lds.S b/arch/arm/boot/compressed/vmlinux.lds.S
> index fc7ed03d8b93..b247f399de71 100644
> --- a/arch/arm/boot/compressed/vmlinux.lds.S
> +++ b/arch/arm/boot/compressed/vmlinux.lds.S
> @@ -36,7 +36,6 @@ SECTIONS
>      *(.start)
>      *(.text)
>      *(.text.*)
> -    *(.fixup)
>      *(.gnu.warning)
>      *(.glue_7t)
>      *(.glue_7)
> --
> 2.20.1
>
>
> --
> Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
