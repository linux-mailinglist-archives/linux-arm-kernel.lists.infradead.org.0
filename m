Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBFE49D56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:32:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=umHrbdKNHPqgDzrxUkK5QZ43613bHb1Cw25cweMmQkA=; b=eAWpezKYiTdmZd
	k+wUB5v1di67Nt0AkOxhYUoU4QEauaDQkr28Jv8x5SzOq8ILyc4yKDH84+Oh7tZGHRRaVAe9jXJXK
	tIaddQH258vV7alLMkYita9TizGLoF1pLBbb2EXruRwYoaFHHr5kq8kTgUNe8bNlkcLU8UA8DplGK
	PVANY8v1hc64gfR0Eok91fUwc9E9hzUucWEENmIOr/pLzt5UycyimYw2joUMhv4w+uuU7lKEBwgpb
	OkxrheKcPLxC2K1Z22jNPP5+zpYaVX+1um1izbVdLEhSbpobtWWgDaSleAy6ssMnJeOo+qZUA2AFR
	wrczX1hE46sqf+KgaaQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdATl-0003mN-VV; Tue, 18 Jun 2019 09:32:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAR5-0007hI-97
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 09:29:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 613AA344;
 Tue, 18 Jun 2019 02:29:50 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 764523F246;
 Tue, 18 Jun 2019 02:29:49 -0700 (PDT)
Date: Tue, 18 Jun 2019 10:29:47 +0100
From: Will Deacon <will.deacon@arm.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v3] arm64: Allow user selection of ARM64_MODULE_PLTS
Message-ID: <20190618092947.GB30899@fuggles.cambridge.arm.com>
References: <20190617223000.11403-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617223000.11403-1-f.fainelli@gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_022951_376558_7C066680 
X-CRM114-Status: GOOD (  19.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 bcm-kernel-feedback-list@broadcom.com,
 open list <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org,
 ard.biesheuvel@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 03:29:59PM -0700, Florian Fainelli wrote:
> Make ARM64_MODULE_PLTS a selectable Kconfig symbol, since some people
> might have very big modules spilling out of the dedicated module area
> into vmalloc. Help text is copied from the ARM 32-bit counterpart and
> modified to a mention of KASLR and specific ARM errata workaround(s).
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
> Changes in v3:
> - take out the part about "The modules will use slightly more memory, but after
>   rounding up to page size, the actual memory footprint is usually the same.
> - take out the "If unusure say Y", since we would really prefer this to
>   be off by default for maximum performance
> 
> Changes in v2:
> 
> - added Ard's paragraph about KASLR
> - added a paragraph about specific workarounds also requiring
>   ARM64_MODULE_PLTS
> 
>  arch/arm64/Kconfig | 20 +++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 697ea0510729..9206feaeff07 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1418,8 +1418,26 @@ config ARM64_SVE
>  	  KVM in the same kernel image.
>  
>  config ARM64_MODULE_PLTS
> -	bool
> +	bool "Use PLTs to allow module memory to spill over into vmalloc area"
>  	select HAVE_MOD_ARCH_SPECIFIC
> +	help
> +	  Allocate PLTs when loading modules so that jumps and calls whose
> +	  targets are too far away for their relative offsets to be encoded
> +	  in the instructions themselves can be bounced via veneers in the
> +	  module's PLT. This allows modules to be allocated in the generic
> +	  vmalloc area after the dedicated module memory area has been
> +	  exhausted.
> +
> +	  When running with address space randomization (KASLR), the module
> +	  region itself may be too far away for ordinary relative jumps and
> +	  calls, and so in that case, module PLTs are required and cannot be
> +	  disabled.
> +
> +	  Specific errata workaround(s) might also force module PLTs to be
> +	  enabled (ARM64_ERRATUM_843419).
> +
> +	  Disabling this is usually safe for small single-platform
> +	  configurations.

I think I'd still drop this last sentence, because labelling a kernel
"usually safe" without this option is a bit OTT. We'll just reject large
modules, nothing unsafe about that.

Assuming Catalin can do that when he applies, so:

Acked-by: Will Deacon <will.deacon@arm.com>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
