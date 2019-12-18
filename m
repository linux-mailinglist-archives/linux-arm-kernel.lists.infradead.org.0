Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6780C1257E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 00:41:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Djwu0FVQLL4FasqmMTaCJnNlwd6ZNFljImwrFK94Znc=; b=JsrjtzFYeZ2x0o
	dtOlHQdPB4wG8g+Pl70IU+jBFmZKdJwN6XVNG6+yflhVzCLndvrmbu+idhMn0iGE/x9iGo7TXEmZM
	genfaHTmnewqXcBuUxNzEmGYnH4dkQEdKqRh9j64+AeXAI7/ya3SzXQzdsnTvJ6vbeYSxVxw1uvuH
	8StLXtHBa2tM2uLb/aOBoevfzWpPq1sxyKSiw5rgxdBeUApZWfU5UQp4/jbHDsNU8nN7EbzwfJYhK
	uzTNOQW2Dtp5XlnYWBdvHE3Em2di8/iyEpYqdXceidhjHj8REfQcjtcgWFSqNj0OiGhx2ED+6alBT
	AbQYQK0jr9zZjyBMUgpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihiwM-0001N4-Cq; Wed, 18 Dec 2019 23:41:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihiwC-0001Ml-K5
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 23:41:06 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 195DD218AC;
 Wed, 18 Dec 2019 23:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576712463;
 bh=fKUlrQAo+cpYx7KI6TLlwI8s49QrHGMHYG2vR0v2IZw=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=ktYT4XdHS1mFFxO3ZqlsyO7GzNJKtNhrjAIr/03aExftmmcPLuy3BO0xVemiBpAm7
 0gx+ixKgOH3wJbqLL/zWwvavwcq8wNIGR+wah0eVmdtsci/OJGbAIc3HBWyxv1MOQ1
 A+7bS5y+4GA5GIqcu1XsIz1HoQYJlQkgPkrhQ9II=
Date: Wed, 18 Dec 2019 15:40:50 -0800 (PST)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: xen: Use modern annotations for assembly functions
In-Reply-To: <20191218123756.41363-1-broonie@kernel.org>
Message-ID: <alpine.DEB.2.21.1912181539590.30543@sstabellini-ThinkPad-T480s>
References: <20191218123756.41363-1-broonie@kernel.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_154104_682287_86DD0DD3 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Stefano Stabellini <sstabellini@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, xen-devel@lists.xenproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Dec 2019, Mark Brown wrote:
> In an effort to clarify and simplify the annotation of assembly functions
> in the kernel new macros have been introduced. These replace ENTRY and
> ENDPROC. Update the annotations in the xen code to the new macros.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
> 
> This is part of a wider effort to convert all the arch/arm64 code.
> 
>  arch/arm64/xen/hypercall.S | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/xen/hypercall.S b/arch/arm64/xen/hypercall.S
> index c5f05c4a4d00..305c2274b8eb 100644
> --- a/arch/arm64/xen/hypercall.S
> +++ b/arch/arm64/xen/hypercall.S
> @@ -56,11 +56,11 @@
>  #define XEN_IMM 0xEA1
>  
>  #define HYPERCALL_SIMPLE(hypercall)		\
> -ENTRY(HYPERVISOR_##hypercall)			\
> +SYM_FUNC_START(HYPERVISOR_##hypercall)			\

Could you please adjust the tabs so that the '\' is aligned with the
others?

With that change:

Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>


>  	mov x16, #__HYPERVISOR_##hypercall;	\
>  	hvc XEN_IMM;				\
>  	ret;					\
> -ENDPROC(HYPERVISOR_##hypercall)
> +SYM_FUNC_END(HYPERVISOR_##hypercall)
>  
>  #define HYPERCALL0 HYPERCALL_SIMPLE
>  #define HYPERCALL1 HYPERCALL_SIMPLE
> @@ -86,7 +86,7 @@ HYPERCALL2(multicall);
>  HYPERCALL2(vm_assist);
>  HYPERCALL3(dm_op);
>  
> -ENTRY(privcmd_call)
> +SYM_FUNC_START(privcmd_call)
>  	mov x16, x0
>  	mov x0, x1
>  	mov x1, x2
> @@ -109,4 +109,4 @@ ENTRY(privcmd_call)
>  	 */
>  	uaccess_ttbr0_disable x6, x7
>  	ret
> -ENDPROC(privcmd_call);
> +SYM_FUNC_END(privcmd_call);
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
