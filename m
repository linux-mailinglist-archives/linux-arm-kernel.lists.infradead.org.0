Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F1D132927
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 15:44:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j8w2Ja4STl07jea8BDccBU303tZhHhOLmfp8W8ioNQc=; b=FqilRztEJCPdyY
	NeaiRpBeEWlb8Q33HAu7pNcmm2pA81eqb7tL+71shFYcZiCGhJ2CUIqLdSsrzy59ZmgE8xLX076yX
	THWZ6Yl2swJVq5aYhNQVXEOkWXV73XjAuNHNM9cS8TU1QdYqL+aiXQbbBupevXKvmSEFdSAM/SDtV
	sF5F+a8bQtBDc/MTHRJC6GXXnhhkD5YagjpvwPoz6zn0RPNMk4roK6hqVoelm0XSLySo2ifefebvG
	RcWZ5RJI8jou6a239ZBllu+AZyr1BdFIa5dkDRZaYghKKZxjfcIHr5ddENTDlhD17E8k2uNcfV2aW
	1kUNblXwatuTp5E0kZxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioq5r-000505-B1; Tue, 07 Jan 2020 14:44:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioq5c-0004xL-Bu
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 14:44:13 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 59C4920715;
 Tue,  7 Jan 2020 14:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578408252;
 bh=uk0D1Px+dgiYpCelGsB8nacG45CgD7iayrSfBqO9uaM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MLPFTSodKgQWkkhy5boX38OgpsHVkDSSSj/NrFb4ujGFJmvlOyuG4lpT76exV1FIA
 XMhRXHndmCiIgr7OSURXEqrWk9R8NGpllF5voPYEWr3Gx2LLV9G5kQMN6QpVSRALL5
 YkyGOMyAK1a4ThMPxQ+u/38u5nZWlt9hdJJ8lSwo=
Date: Tue, 7 Jan 2020 14:44:08 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 1/3] arm64: asm: Add new-style position independent
 function annotations
Message-ID: <20200107144407.GB29001@willie-the-truck>
References: <20200106195818.56351-1-broonie@kernel.org>
 <20200106195818.56351-2-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106195818.56351-2-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_064412_430312_1C328CF5 
X-CRM114-Status: GOOD (  18.18  )
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 06, 2020 at 07:58:16PM +0000, Mark Brown wrote:
> As part of an effort to make the annotations in assembly code clearer and
> more consistent new macros have been introduced, including replacements
> for ENTRY() and ENDPROC().
> 
> On arm64 we have ENDPIPROC(), a custom version of ENDPROC() which is
> used for code that will need to run in position independent environments
> like EFI, it creates an alias for the function with the prefix __pi_ and
> then emits the standard ENDPROC. Add new-style macros to replace this
> which expand to the standard SYM_FUNC_*() and SYM_FUNC_ALIAS_*(),
> resulting in the same object code. These are added in linkage.h for
> consistency with where the generic assembler code has its macros.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/include/asm/linkage.h | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/linkage.h b/arch/arm64/include/asm/linkage.h
> index 1b266292f0be..23944ce14969 100644
> --- a/arch/arm64/include/asm/linkage.h
> +++ b/arch/arm64/include/asm/linkage.h
> @@ -4,4 +4,20 @@
>  #define __ALIGN		.align 2
>  #define __ALIGN_STR	".align 2"
>  
> +/*
> + * Annotate a function as position independent, i.e., safe to be called before
> + * the kernel virtual mapping is activated.
> + */
> +#define SYM_FUNC_START_PI(x) \
> +		SYM_FUNC_START_ALIAS(__pi_##x) ASM_NL \
> +		SYM_FUNC_START(x)
> +
> +#define SYM_FUNC_START_PI_WEAK(x) \
> +		SYM_FUNC_START_ALIAS(__pi_##x) ASM_NL \
> +		SYM_FUNC_START_WEAK(x)

Naming's hard, but I think this is particularly bad because it reads to me
like it's declaring a weak, position-independent symbol, whereas the weak
symbol is actually the version without the "__pi_" prefix. Maybe
SYM_FUNC_START_WEAK_PI() is a tiny bit better? Hrm.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
