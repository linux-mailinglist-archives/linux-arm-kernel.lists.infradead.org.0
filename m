Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F1B164375
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 12:34:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gc34Lcf1Se7lAOuDipIV5RMVdn1R/Dk9hrtLvvO/ADk=; b=Y2ztuh8yT5HNga
	xia2pbKuCay+UqBI4zZ9VwB+J2BglAP2unKlfIRbCw421bvOoDjKHkL9/loC4RX20GTn3aTOPPjii
	vyt3RLiiyTvy55iMr0cgdAG6BWsgptnGN8lYC6ajizBbJQxTzS0I0hxIPNuJPs027NQnLtXQKPJVV
	5JpQz7RQrLrsEDgB9Fb0yYYXTbnRGVzEr5RgkYB+ZDD0z4UW92QcN9mVEufO/DoOOfVY9Wg/s8WsN
	az2fKxL2aCQEXPHI8qA22O6ZtdKfyiRxY64Ib6AlmHJgSZGzLHp/P7HR87F+JFmQrKH0cIoo40yT4
	neR5u6tfO3p7w1NgFatQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4NcU-0004vc-UE; Wed, 19 Feb 2020 11:34:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4NcC-0004rL-JA
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 11:34:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D7CD631B;
 Wed, 19 Feb 2020 03:34:03 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8AF023F6CF;
 Wed, 19 Feb 2020 03:34:01 -0800 (PST)
Date: Wed, 19 Feb 2020 11:33:52 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v8 04/12] scs: disable when function graph tracing is
 enabled
Message-ID: <20200219113351.GA14462@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
 <20200219000817.195049-5-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219000817.195049-5-samitolvanen@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_033404_700820_32C70417 
X-CRM114-Status: GOOD (  20.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
 clang-built-linux@googlegroups.com, james.morse@arm.com,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 kernel-hardening@lists.openwall.com, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 04:08:09PM -0800, Sami Tolvanen wrote:
> The graph tracer hooks returns by modifying frame records on the
> (regular) stack, but with SCS the return address is taken from the
> shadow stack, and the value in the frame record has no effect. As we
> don't currently have a mechanism to determine the corresponding slot
> on the shadow stack (and to pass this through the ftrace
> infrastructure), for now let's disable SCS when the graph tracer is
> enabled.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 66b34fd0df54..4102b8e0eea9 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -535,6 +535,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
>  
>  config SHADOW_CALL_STACK
>  	bool "Clang Shadow Call Stack"
> +	depends on !FUNCTION_GRAPH_TRACER

Fangrui Song has implemented `-fpatchable-function-entry` in LLVM (for
10.x onwards), so we can support this when DYNAMIC_FTRACE_WITH_REGS is
selected.

This can be:

	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER

... and we can update the commit message to something like:

| With SCS the return address is taken from the shadow stack and the
| value in the frame record has no effect. The mcount based graph tracer
| hooks returns by modifying frame records on the (regular) stack, and
| thus is not compatible. The patchable-function-entry graph tracer
| used for DYNAMIC_FTRACE_WITH_REGS modifies the LR before it is saved
| to the shadow stack, and is compatible.
|
| Modifying the mcount based graph tracer to work with SCS would require
| a mechanism to determine the corresponding slot on the shadow stack
| (and to pass this through the ftrace infrastructure), and we expect
| that everyone will eventually move to the patchable-function-entry
| based graph tracer anyway, so for now let's disable SCS when the
| mcount-based graph tracer is enabled.
|
| SCS and patchable-function-entry are both supported from LLVM 10.x.

Assuming you're happy with that:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
