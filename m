Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51591157FFB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 17:41:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBUPsISjmWy8hae/Lgafg6ou9zXIDTCq7CDKlVp7LXI=; b=JdbRPmn//qhyIz
	y2rIvfUm0WFmExxKRdQeF91yKygoDVGvo7YmQaViraShOrb45aI8nCFpR+/fU+K9LHUglUmWHIMzi
	ctPh5yBl+NdM4ZrjxrY/QyVqghIuXvDQzNnnxIcjs6UqDRVIVzGHaC3jUmhHPDZab59G4iFnOm7wP
	VAhgy+eurMPfRPBze8BRpuX4fKm3PNWAqtmUpvBa1pDbw1CF6UwimVXUZOi3A1mp+3toi63L1IYBW
	tEsxCA4TXhuPpZBnffGJEDLFvA3EqdzxNcpVPgzS4uGPtVi03oFipLhYJkJo+Otz6ix+6YclNjrUk
	yKZ59XpojdEdXUiAAeLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1C80-0005no-NF; Mon, 10 Feb 2020 16:41:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1C7u-0005nV-KZ
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 16:41:39 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3926920733;
 Mon, 10 Feb 2020 16:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581352898;
 bh=swgRA1rNS8tBiz0g1uvNqRf9FaXIwO8m18YRqWdGIWU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xZ9yor3PmK0g2VGI7TH5dURt6qVd/7JoQzVJWSGzhMpbis9o4lzC+9ygWQ0663Ml8
 mNsCjyu4UABSsLLe5Ja4m3XnHu6ZdABdFV/OZcz8udClXlNzbDXjPXG7WWBZAvWWNt
 S1LX2V8l6/MoP4lkNDVfdgj8iQdTmKUYem8h+bsE=
Date: Mon, 10 Feb 2020 16:41:32 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v7 07/11] arm64: efi: restore x18 if it was corrupted
Message-ID: <20200210164131.GB21900@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-8-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128184934.77625-8-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_084138_695443_1A2099F1 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, james.morse@arm.com,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 kernel-hardening@lists.openwall.com, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 10:49:30AM -0800, Sami Tolvanen wrote:
> If we detect a corrupted x18, restore the register before jumping back
> to potentially SCS instrumented code. This is safe, because the wrapper
> is called with preemption disabled and a separate shadow stack is used
> for interrupt handling.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/kernel/efi-rt-wrapper.S | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
> index 3fc71106cb2b..6ca6c0dc11a1 100644
> --- a/arch/arm64/kernel/efi-rt-wrapper.S
> +++ b/arch/arm64/kernel/efi-rt-wrapper.S
> @@ -34,5 +34,14 @@ ENTRY(__efi_rt_asm_wrapper)
>  	ldp	x29, x30, [sp], #32
>  	b.ne	0f
>  	ret
> -0:	b	efi_handle_corrupted_x18	// tail call
> +0:
> +	/*
> +	 * With CONFIG_SHADOW_CALL_STACK, the kernel uses x18 to store a
> +	 * shadow stack pointer, which we need to restore before returning to
> +	 * potentially instrumented code. This is safe because the wrapper is
> +	 * called with preemption disabled and a separate shadow stack is used
> +	 * for interrupts.
> +	 */
> +	mov	x18, x2
> +	b	efi_handle_corrupted_x18	// tail call
>  ENDPROC(__efi_rt_asm_wrapper)

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
