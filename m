Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEED8DE7EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:19:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ISN83XvDuXPuYSz49Eorknc37IJ2E8vLP1qm92jmXI4=; b=E7TKNCWAheiMiI
	rRIx5l9PlmAmAcJvr1JlFZ3Z6S5Qcgfh/OiQ7UCPh1QySWyTPagJzeJS6D/Gf3hNhAXYqOFCov4Mp
	7cpL6JZiUFP44D7gHY0vx8d4a4OsveCr3UgUKVVKQhoHm5RbytFDNWvlgVwy15vfV6PN0qYUkwx/x
	9NGBdAtlIWCgqnkMzRnSqbDIDan8oapOeLR4qSOqxbFkM3UMSGl4t1gWjMNeqEZz3Afa2JIZmZCRq
	VJs018l14gclxYQO5qfBJxXjjSNOhUxJqjPXiFNeqla9PaWX/IGF1qd1sPw8p5PPuQ7hsMdDe8vQf
	VUQeCzVBHk9yd0J/P0uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTqp-0005sx-MI; Mon, 21 Oct 2019 09:19:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTmu-00030I-C6
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 09:15:42 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7DC7C20873;
 Mon, 21 Oct 2019 09:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571649340;
 bh=u7f4Jzabn9wcp0GNP0aGJ8DQeoDFxKaLNe/XQiZCh3g=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lhQih9usCWZFyrqRYHSlhFjhOzTd6Wskq7PvLRgeauFSlUAkOb9TjhVjGtywqv+TS
 uKESoqrQxNZATz+pnxmw/nrASmiA1G+0A1g5ydaZznLD8x5PPdC3hgLEcGiiZ8fgsI
 gz8KGed6lyCT5vhLpEHmLLOxU3dFyX7GelMJ6vXM=
Date: Mon, 21 Oct 2019 18:15:34 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH 11/18] kprobes: disable kretprobes with SCS
Message-Id: <20191021181534.4d8edb330e6fb19cd7f7e39f@kernel.org>
In-Reply-To: <20191018130429.5df61f6b@gandalf.local.home>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-12-samitolvanen@google.com>
 <20191018130429.5df61f6b@gandalf.local.home>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_021541_028357_101A1B8E 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Sami Tolvanen <samitolvanen@google.com>, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 18 Oct 2019 13:04:29 -0400
Steven Rostedt <rostedt@goodmis.org> wrote:

> 
> [ Added Masami ]
> 
> On Fri, 18 Oct 2019 09:10:26 -0700
> Sami Tolvanen <samitolvanen@google.com> wrote:
> 
> > With CONFIG_KRETPROBES, function return addresses are modified to
> > redirect control flow to kretprobe_trampoline. This is incompatible with
> > return address protection.
> > 
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  arch/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/Kconfig b/arch/Kconfig
> > index a222adda8130..4646e3b34925 100644
> > --- a/arch/Kconfig
> > +++ b/arch/Kconfig
> > @@ -171,7 +171,7 @@ config ARCH_USE_BUILTIN_BSWAP
> >  
> >  config KRETPROBES
> >  	def_bool y
> > -	depends on KPROBES && HAVE_KRETPROBES
> > +	depends on KPROBES && HAVE_KRETPROBES && ROP_PROTECTION_NONE
> 
> Again, this belongs in the arch code.

+1, below patch (from Steve) looks good to me.

Thank you,

> 
> -- Steve
> 
> >  
> >  config USER_RETURN_NOTIFIER
> >  	bool
> 
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 41a9b4257b72..65557d7e6b5e 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -166,7 +166,7 @@ config ARM64
>  	select HAVE_STACKPROTECTOR
>  	select HAVE_SYSCALL_TRACEPOINTS
>  	select HAVE_KPROBES
> -	select HAVE_KRETPROBES
> +	select HAVE_KRETPROBES if ROP_PROTECTION_NONE
>  	select HAVE_GENERIC_VDSO
>  	select IOMMU_DMA if IOMMU_SUPPORT
>  	select IRQ_DOMAIN


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
