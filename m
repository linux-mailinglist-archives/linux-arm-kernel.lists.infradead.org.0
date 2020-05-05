Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD0B1C5A40
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:59:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVDFODg503yJiuiOMuKIpoH6EsCnNtICtBpDdY+Zu4k=; b=CLSxcQH/2VYW2u
	pUw20M+SFcRprAdY4r4VFOknB/R/hpa4R6/9NWN7kDcaycH8JpofqyN6bg1jwyXOwdmuNPiLHC3kk
	9/N3VtwVm2DC1h6ZF33CWG/KbPjuuT4Hyzqwmgndm4Kb5UXgt5Oefu59HwDEH+3cuWUlRXKdNTh+J
	Kl7fARfBz5HPAnl/VFpReCb1fun2xpW+7xDWJeDSgQwLNgiL3zvqelzq/m7AxpdcbmDWDhXDC3Fvj
	c+6Hncr0Hts8bpvOV0wXqHF/RQNSGHTnm9c0e8Z1ACJuOsTV2/irLWwgrcqKf2lpRR/Y9ucql1haP
	taSgBm3pNroZ9hWaGIUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVz2L-0007OO-TF; Tue, 05 May 2020 14:59:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVz2F-0007O3-Em
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:59:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E59A206B9;
 Tue,  5 May 2020 14:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588690743;
 bh=CkrxDRKb5phvqJY5FxjvNhvl4CwG+Sjx3MIq74gn4As=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2gEm+e8A7FK3I5REpxZdBYXW8qffBNXK4vezMbJ+NxEJAVupdO2RHtZxQrS5u16sU
 GHQzbz1Q5WDAqhRC3w39kEMUIjmcQ1OhBR2tIJuqOh9O4CFeybfbM8EcmoAknNS1NX
 Hfz7c1F1ubmQ5vMBW6m7m+IF2KL6/KFjPl1ThQ1U=
Date: Tue, 5 May 2020 15:58:59 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>, dave.martin@arm.com
Subject: Re: [PATCH v2 07/10] arm64: asm: Provide a mechanism for generating
 ELF note for BTI
Message-ID: <20200505145858.GB24239@willie-the-truck>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-8-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429211641.9279-8-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_075903_514728_49E100A2 
X-CRM114-Status: GOOD (  19.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+Dave]

On Wed, Apr 29, 2020 at 10:16:38PM +0100, Mark Brown wrote:
> ELF files built for BTI should have a program property note section which
> identifies them as such. The linker expects to find this note in all
> object files it is linking into a BTI annotated output, the compiler will
> ensure that this happens for C files but for assembler files we need to do
> this in the source so provide a macro which can be used for this purpose.
> 
> This is mainly for use in the VDSO which should be a normal ELF shared
> library and should therefore include BTI annotations when built for BTI.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/include/asm/assembler.h | 41 ++++++++++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
> index 0bff325117b4..85a88df2d0fe 100644
> --- a/arch/arm64/include/asm/assembler.h
> +++ b/arch/arm64/include/asm/assembler.h
> @@ -736,4 +736,45 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
>  .Lyield_out_\@ :
>  	.endm
>  
> +/*
> + * This macro emits a program property note section identifying
> + * architecture features which require special handling, mainly for
> + * use in assembly files included in the VDSO.
> + */
> +
> +#ifdef CONFIG_ARM64_BTI_KERNEL
> +
> +#define NT_GNU_PROPERTY_TYPE_0  5
> +#define GNU_PROPERTY_AARCH64_FEATURE_1_AND      0xc0000000
> +
> +#define GNU_PROPERTY_AARCH64_FEATURE_1_BTI      (1U << 0)
> +#define GNU_PROPERTY_AARCH64_FEATURE_1_PAC      (1U << 1)
> +
> +.macro emit_aarch64_feature_1_and

Might be useful to take the features as a macro argument, so we can
re-use this when extra features get added in the future.

> +	.pushsection .note.gnu.property, "a"
> +	.align  3
> +	.long   2f - 1f
> +	.long   6f - 3f
> +	.long   NT_GNU_PROPERTY_TYPE_0
> +1:      .string "GNU"
> +2:
> +	.align  3
> +3:      .long   GNU_PROPERTY_AARCH64_FEATURE_1_AND
> +	.long   5f - 4f
> +4:
> +	.long   GNU_PROPERTY_AARCH64_FEATURE_1_PAC | \
> +		GNU_PROPERTY_AARCH64_FEATURE_1_BTI

Hmm. The Linux ABI doc [1] says this field is:

	unsigned char pr_data[PR_DATASZ];

but the AArch64 PCS [2] says:

	"It has a single 32-bit value for the pr_data field."

What does this mean for endianness?

Will

[1] https://github.com/hjl-tools/linux-abi/wiki/linux-abi-draft.pdf
[2] https://static.docs.arm.com/ihi0056/g/aaelf64.pdf

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
