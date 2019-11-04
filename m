Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A032CEE583
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 18:05:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZ5grUOThjcyXrtly8dBa5NOeuOAJr4ifaj17ORsPCc=; b=gC7r3Ii8+OmqKT
	dadFjvM7ypS4ZEjE6nzILGHs6br47L04dOnaEgB1z7YhdJG4A+5IBeaGNbZP8w2GHdIYMJur6NUq7
	e1Z1hK+qIqtm9QTCbpCzoyciEbZluIq72JqeBmSa7w8fJCkqhjnP7PZOJqam06lxi3NDJ6+RkueUQ
	Z6PeiP23rOsEo7vjP4jLJLRikX1eWJc88hLBodiFXn4v+iOSRz+X48EyiBhCYECxJ4Zry7hQoJU0Z
	lTocccsIA06eE8AMyeNomCm4535MstVrItwGzD5JG3mguLdCTHKlJ3g2uOiJU7c4Mpc3JQHuBXP58
	w7ZqqAtyi+5pDhZCjvnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRfn4-0004WU-C2; Mon, 04 Nov 2019 17:05:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRfmp-0004Ea-VD
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 17:05:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9992D1F1;
 Mon,  4 Nov 2019 09:05:02 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 605073F71A;
 Mon,  4 Nov 2019 09:05:00 -0800 (PST)
Date: Mon, 4 Nov 2019 17:04:54 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v4 10/17] arm64: disable kretprobes with SCS
Message-ID: <20191104170454.GA2024@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-11-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101221150.116536-11-samitolvanen@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_090504_050450_AC786CAF 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Masami Hiramatsu <mhiramat@kernel.org>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 03:11:43PM -0700, Sami Tolvanen wrote:
> With CONFIG_KRETPROBES, function return addresses are modified to
> redirect control flow to kretprobe_trampoline. This is incompatible
> with SCS.

I'm a bit confused as to why that's the case -- could you please
elaborate on how this is incompatible?

IIUC kretrobes works by patching the function entry point with a BRK, so
that it can modify the LR _before_ it is saved to the stack. I don't see
how SCS affects that.

When the instrumented function returns, it'll balance its SCS state,
then "return" to kretprobe_trampoline. Since kretprobe_trampoline is
plain assembly, it doesn't have SCS, and can modify the LR live, as it
does.

So functionally, that appears to work. What am I missing? 

Thanks,
Mark.

> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 3f047afb982c..e7b57a8a5531 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -165,7 +165,7 @@ config ARM64
>  	select HAVE_STACKPROTECTOR
>  	select HAVE_SYSCALL_TRACEPOINTS
>  	select HAVE_KPROBES
> -	select HAVE_KRETPROBES
> +	select HAVE_KRETPROBES if !SHADOW_CALL_STACK
>  	select HAVE_GENERIC_VDSO
>  	select IOMMU_DMA if IOMMU_SUPPORT
>  	select IRQ_DOMAIN
> -- 
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
