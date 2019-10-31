Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 857C5EB5DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 18:11:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0zPx06TzfZOCnNCZiYy0iCj2NJQ+UUhYYk/owX7iMLs=; b=PjUxmM3zHR1lhq
	5ivOzJSVGQg138MsWVpE0n8yYL3NgV25jGFKf68H2mCjpnJ8wlnKqmhch2hXoDHCOGZuThI/JPzAi
	HH0q6211Pi7GPHd3iNqaUnMOH360Rd4+gk9T6YMtqrN4hQR1TzYAndtn1+uPOAiW1LZTMnvcblAp7
	wBN3d3BKrWehVXMrcIKok9Ur9Kq7y1TSS6l/3v6AaPOsI6BxZZCknhMvQrABT1UNjZyJyrNLVHPqy
	ySeBFwBl7S6rHtgkTW7/Udgq20019eOiSR+Mxt6mfr7ENmylEtQpb4ri3J0AdvrJYMhz1+CIZ8zL+
	NGWrKzD5P3nqCMsg3qBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDz3-0006Er-1a; Thu, 31 Oct 2019 17:11:41 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDyu-0006E5-0Z
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 17:11:33 +0000
Received: by mail-pl1-x643.google.com with SMTP id y24so2959014plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 10:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b0X5YfN75r7PDdNJxvGQlnZAXFwdwuMLiQ3l0U13bDg=;
 b=Jy/SacxJhf/Nbsx+JKEbMsxTmi9nTvRx9QrYmlIIdjaRaYWNvdZdUveUzeL7wIBsMZ
 yB8Nz5UMhco8wy0o9k2IWrgIZlOKbDsMBdp3atJjR2eE50+zYjEZBM7mTKuaEMqSUi91
 ueCuaeZ6gpnfO9SKoIhfR/pmAwffakughLyHWB5/OC9EGvGmL4MkTswLiMaKPF11fEWK
 w0yeyTRVppcLDoCs0H8aL/rz2ddY3Gr0oQA89wXCPpwffH+YyILuj3R30CX+hlyoHfZ7
 WFIUgANql15NGTPB5eu58+Vz5mden9xZ/hmIuvN0j6C6tSpO51yEvLSx5eUFDkhOQhtj
 fI9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b0X5YfN75r7PDdNJxvGQlnZAXFwdwuMLiQ3l0U13bDg=;
 b=HVBDGtxQItZvZDXtTBiW9IOhPT1fDunUxwE5Dm8xtNUCIbnstc2sxxzgxFO1SlfASz
 TyrQmDSkHpEaUuP9MhpNsyyt4BDr7tYbsxYDYWI4ljkAw26Dp5XS7+5ZyTK701Aejzpa
 tS581KsJ7zrd/Rp6lmBKp3UEldzpLasU3FsHB4JU2gEPYhkC1mQ91n4Zr2pBxlYUXE3Y
 9eh7qSNJzvP3AiFb5jUxHsG6Ztlv/gqdcFUzJFEeTzAMadcNDHyFTuoUFoocS1iETdkA
 9Qot6HwS/yVqpAZCUzDd0W/rkJKVfw58qWMOmnCzMUlIxw30RSc3bC1KbgIlL0B9pCUf
 KdHQ==
X-Gm-Message-State: APjAAAWhwh0s/yIWJtWqx9B70A9SeLo8r6VJIE2iltbWreU3J0ZWF7qZ
 HrZT4OYrGEIPCkYVilNKbDO4ZXjxZZGIavj1GvkvrQ==
X-Google-Smtp-Source: APXvYqyggyEISFvRqnEZ0+/A7Iby9Fs7Q+2KDnPlM3xak8otQQ4zH05zLjAp9ajmSpT131omcbyYgDm2ydz5aTw6/As=
X-Received: by 2002:a17:902:b40f:: with SMTP id
 x15mr3965837plr.119.1572541887443; 
 Thu, 31 Oct 2019 10:11:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-13-samitolvanen@google.com>
In-Reply-To: <20191031164637.48901-13-samitolvanen@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 31 Oct 2019 10:11:16 -0700
Message-ID: <CAKwvOdmBcHuhZZV54-76zY60F0Tvd_0DGCi+5dzFTxk0upOYrQ@mail.gmail.com>
Subject: Re: [PATCH v3 12/17] arm64: reserve x18 from general allocation with
 SCS
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_101132_085315_A29E3159 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 9:47 AM <samitolvanen@google.com> wrote:
>
> Reserve the x18 register from general allocation when SCS is enabled,
> because the compiler uses the register to store the current task's
> shadow stack pointer. Note that all external kernel modules must also be
> compiled with -ffixed-x18 if the kernel has SCS enabled.

Inline/out-of-line assembly will also need to be careful not to
accidentally overwrite the current task's shadow stack pointer.

Without automated checking for that, we'll have to rely on a
"gentlemen's promise" for code reviewers, though we'd likely hit such
a regression with Android+mainline.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/Makefile | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 2c0238ce0551..ef76101201b2 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -72,6 +72,10 @@ stack_protector_prepare: prepare0
>                                         include/generated/asm-offsets.h))
>  endif
>
> +ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
> +KBUILD_CFLAGS  += -ffixed-x18
> +endif
> +
>  ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
>  KBUILD_CPPFLAGS        += -mbig-endian
>  CHECKFLAGS     += -D__AARCH64EB__
> --
> 2.24.0.rc0.303.g954a862665-goog
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
