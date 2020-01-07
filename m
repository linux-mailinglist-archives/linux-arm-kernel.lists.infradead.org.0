Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EB813292D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 15:45:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AUMG0E5aPMBP9+vZQLVxSE4ueCnZa19aZBV6c8o5Qy4=; b=C3kaVCH2qySv/n
	sgueNUPGVA+MZGd3GatSAtGZ+86749EjTkSegFLszO62HpBQ4JG9GM6L9C+0li1ne2pphmtSwsr0V
	D8NrydSmI9Kjzg8QcUbdWkXaCu8FtPQWxjRUNj7RBCPj3N6Z2sBCN+uu8cHvXe8ZkTYFds+MmuOk7
	ky6h9SAoNpltWkPBMymwesa8rRLkf+S1kgi9u90w+qfaOYL0ftBT73fl9NWgnWdw3O/wCOfsWdtlX
	lg/leMGdKNsaqDRUQKBCU4gKt8bLQMnjNZH9h9NlWZza+PsE6F/DdghF1xQwLxd6uncL3OeNj+Zcg
	TwJk93GmoDwVph08vwUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioq6P-0005JK-Bv; Tue, 07 Jan 2020 14:45:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioq6E-0005J1-3b
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 14:44:51 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F13BF20715;
 Tue,  7 Jan 2020 14:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578408289;
 bh=cXku71FhC4z74XN1TPPZNaY9lEktnk5kmhf2lXMUlBM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oheLBEqHumlk1WMfKCeZO8rOSKn0VmgmsY9P4WfGgXiVRiXiWMqe22LuQ1NoBxvZ8
 fAEVaFzi4VuDO+NBcb0iipNg7zgk1Wu5l+Ny+R8cSTg4avcGDsX2oDSHfK+y8dYh6f
 YV07x9SM2ByaS24fMVG6zww+n58ia0g6hhd8bdo8=
Date: Tue, 7 Jan 2020 14:44:46 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 2/3] arm64: lib: Use modern annotations for assembly
 functions
Message-ID: <20200107144445.GC29001@willie-the-truck>
References: <20200106195818.56351-1-broonie@kernel.org>
 <20200106195818.56351-3-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106195818.56351-3-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_064450_190976_C4253BF0 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org, jslaby@suse.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

[+Jiri -- couple of questions below]

On Mon, Jan 06, 2020 at 07:58:17PM +0000, Mark Brown wrote:
> In an effort to clarify and simplify the annotation of assembly functions
> in the kernel new macros have been introduced. These replace ENTRY and
> ENDPROC and also add a new annotation for static functions which previously
> had no ENTRY equivalent. Update the annotations in the library code to the
> new macros.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/lib/clear_page.S     |  4 ++--
>  arch/arm64/lib/clear_user.S     |  4 ++--
>  arch/arm64/lib/copy_from_user.S |  4 ++--
>  arch/arm64/lib/copy_in_user.S   |  4 ++--
>  arch/arm64/lib/copy_page.S      |  4 ++--
>  arch/arm64/lib/copy_to_user.S   |  4 ++--
>  arch/arm64/lib/crc32.S          |  8 ++++----
>  arch/arm64/lib/memchr.S         |  4 ++--
>  arch/arm64/lib/memcmp.S         |  4 ++--
>  arch/arm64/lib/memcpy.S         |  8 ++++----
>  arch/arm64/lib/memmove.S        |  8 ++++----
>  arch/arm64/lib/memset.S         |  8 ++++----
>  arch/arm64/lib/strchr.S         |  4 ++--
>  arch/arm64/lib/strcmp.S         |  4 ++--
>  arch/arm64/lib/strlen.S         |  4 ++--
>  arch/arm64/lib/strncmp.S        |  4 ++--
>  arch/arm64/lib/strnlen.S        |  4 ++--
>  arch/arm64/lib/strrchr.S        |  4 ++--
>  arch/arm64/lib/tishift.S        | 12 ++++++------
>  19 files changed, 50 insertions(+), 50 deletions(-)
> 
> diff --git a/arch/arm64/lib/clear_page.S b/arch/arm64/lib/clear_page.S
> index 78a9ef66288a..073acbf02a7c 100644
> --- a/arch/arm64/lib/clear_page.S
> +++ b/arch/arm64/lib/clear_page.S
> @@ -14,7 +14,7 @@
>   * Parameters:
>   *	x0 - dest
>   */
> -ENTRY(clear_page)
> +SYM_FUNC_START(clear_page)
>  	mrs	x1, dczid_el0
>  	and	w1, w1, #0xf
>  	mov	x2, #4

Since this doesn't change behaviour, I think the patch is fine, however
on reading Documentation/asm-annotations.rst it's not completely clear to
me when SYM_FUNC_START() should be used. In this case, for example, we are
*not* pushing a stackframe and that would appear to be at odds with the
documentation.

Jiri -- is it ok to omit the stack frame for leaf functions annotated with
SYM_FUNC_START? I'm guessing it should be, since the link register isn't
going to be clobbered. Could we update the documentation to reflect that?

> diff --git a/arch/arm64/lib/crc32.S b/arch/arm64/lib/crc32.S
> index e6135f16649b..243e107e9896 100644
> --- a/arch/arm64/lib/crc32.S
> +++ b/arch/arm64/lib/crc32.S
> @@ -85,17 +85,17 @@ CPU_BE(	rev16		w3, w3		)
>  	.endm
>  
>  	.align		5
> -ENTRY(crc32_le)
> +SYM_FUNC_START(crc32_le)
>  alternative_if_not ARM64_HAS_CRC32
>  	b		crc32_le_base

Similar thing here -- I'm assuming we are ok to tail-call crc32_le_base()
from a function marked with SYM_FUNC_START like this?

>  alternative_else_nop_endif
>  	__crc32
> -ENDPROC(crc32_le)
> +SYM_FUNC_END(crc32_le)
>  
>  	.align		5
> -ENTRY(__crc32c_le)
> +SYM_FUNC_START(__crc32c_le)
>  alternative_if_not ARM64_HAS_CRC32
>  	b		__crc32c_le_base
>  alternative_else_nop_endif
>  	__crc32		c
> -ENDPROC(__crc32c_le)
> +SYM_FUNC_END(__crc32c_le)
> diff --git a/arch/arm64/lib/memchr.S b/arch/arm64/lib/memchr.S
> index 48a3ab636e4f..99910c5d5db7 100644
> --- a/arch/arm64/lib/memchr.S
> +++ b/arch/arm64/lib/memchr.S
> @@ -19,7 +19,7 @@
>   * Returns:
>   *	x0 - address of first occurrence of 'c' or 0
>   */
> -WEAK(memchr)
> +SYM_FUNC_START_PI_WEAK(memchr)
>  	and	w1, w1, #0xff
>  1:	subs	x2, x2, #1
>  	b.mi	2f
> @@ -30,5 +30,5 @@ WEAK(memchr)
>  	ret
>  2:	mov	x0, #0
>  	ret
> -ENDPIPROC(memchr)
> +SYM_FUNC_END_PI(memchr)
>  EXPORT_SYMBOL_NOKASAN(memchr)
> diff --git a/arch/arm64/lib/memcmp.S b/arch/arm64/lib/memcmp.S
> index b297bdaaf549..b889f312bdb3 100644
> --- a/arch/arm64/lib/memcmp.S
> +++ b/arch/arm64/lib/memcmp.S
> @@ -46,7 +46,7 @@ pos		.req	x11
>  limit_wd	.req	x12
>  mask		.req	x13
>  
> -WEAK(memcmp)
> +SYM_FUNC_START_PI_WEAK(memcmp)
>  	cbz	limit, .Lret0
>  	eor	tmp1, src1, src2
>  	tst	tmp1, #7
> @@ -243,5 +243,5 @@ CPU_LE( rev	data2, data2 )
>  .Lret0:
>  	mov	result, #0
>  	ret
> -ENDPIPROC(memcmp)
> +SYM_FUNC_END_PI(memcmp)
>  EXPORT_SYMBOL_NOKASAN(memcmp)
> diff --git a/arch/arm64/lib/memcpy.S b/arch/arm64/lib/memcpy.S
> index d79f48994dbb..9f382adfa88a 100644
> --- a/arch/arm64/lib/memcpy.S
> +++ b/arch/arm64/lib/memcpy.S
> @@ -57,11 +57,11 @@
>  	.endm
>  
>  	.weak memcpy

Hmm, any idea why we use .weak explicitly here? Maybe better off using
the proper macros now? (same applies to many of the other lib/ functions
you're touching)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
