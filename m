Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8506DDCC2E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qlwjXxZxOLLqalAxb+dwyyhRTTbYUEW8PXnapBd3xLA=; b=MwcTQ0pGGr1aiq
	f7DWWx1DCLRPo8RMYxL2QxTD7NYCmVAWyANJejymfJWt9YVh+IhArtgi7/H3nAtm5MD8e49CmEaEN
	r46HrV5lPhS20wbg4hX/MiFthGI5Erb4wMG7NZ1KFcsmvpCxmPib5Wa0cyTPqLP7Bt+d3ZRfPijqa
	bMg3ojtHjVVQKtp3VjXJffHXg2bdasTudkt9LOVTVVHg03kvN5kS64aj7lu6SlgvHax3yCg+E4RPc
	RDN4XgSdKCM8C3bPbp2jypTFzLtHWaKkWACKIjiLuyWmp6WEXxDRHXD6V/4Mc4h7592J1p8PLp53u
	zYb951XKhUuUnFtijhPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVg9-0000H9-S0; Fri, 18 Oct 2019 17:04:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVg0-0000Gm-8J
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:04:33 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D16F12064A;
 Fri, 18 Oct 2019 17:04:30 +0000 (UTC)
Date: Fri, 18 Oct 2019 13:04:29 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH 11/18] kprobes: disable kretprobes with SCS
Message-ID: <20191018130429.5df61f6b@gandalf.local.home>
In-Reply-To: <20191018161033.261971-12-samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-12-samitolvanen@google.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_100432_316700_FD77DD67 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Catalin Marinas <catalin.marinas@arm.com>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Masami Hiramatsu <mhiramat@kernel.org>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


[ Added Masami ]

On Fri, 18 Oct 2019 09:10:26 -0700
Sami Tolvanen <samitolvanen@google.com> wrote:

> With CONFIG_KRETPROBES, function return addresses are modified to
> redirect control flow to kretprobe_trampoline. This is incompatible with
> return address protection.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index a222adda8130..4646e3b34925 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -171,7 +171,7 @@ config ARCH_USE_BUILTIN_BSWAP
>  
>  config KRETPROBES
>  	def_bool y
> -	depends on KPROBES && HAVE_KRETPROBES
> +	depends on KPROBES && HAVE_KRETPROBES && ROP_PROTECTION_NONE

Again, this belongs in the arch code.

-- Steve

>  
>  config USER_RETURN_NOTIFIER
>  	bool


diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 41a9b4257b72..65557d7e6b5e 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -166,7 +166,7 @@ config ARM64
 	select HAVE_STACKPROTECTOR
 	select HAVE_SYSCALL_TRACEPOINTS
 	select HAVE_KPROBES
-	select HAVE_KRETPROBES
+	select HAVE_KRETPROBES if ROP_PROTECTION_NONE
 	select HAVE_GENERIC_VDSO
 	select IOMMU_DMA if IOMMU_SUPPORT
 	select IRQ_DOMAIN

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
