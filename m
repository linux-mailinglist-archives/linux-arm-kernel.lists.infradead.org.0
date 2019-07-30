Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C3B7ABD4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 17:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AY43G/nU1mLG5dXM5yNCwXILl7SepyS/3SP3sRmU92s=; b=Zm6U14wnccaS37
	nSHxCcTFKApvepFv+NIVS3TdKDTnxySYxNJ69JkKe0oitfxLs3B+OBXGhSF+9h2PLU3LABGT9FGxs
	v+sVI6U4EDQR5C/+Ii2b1+G9ygIKYFdnbqecuBCUST9GaKo5G2P0aq8q3N1hqOd9G4+TC7B+5XRTf
	uNgMRqBNHHhKNdxTziaQh/e2fA0zBfjfJIsgyzZounuiNF40vcXBzloMgh1FWkymp21r0NrOCiHCH
	Yc5ivhi56W7p/5V5CbBwjV+y2Ijf6V4GvmJNeMpU6Udan7wcS3O+kY4oUe8r1DRwOS1iCcyn7/01A
	OJio6p2Z40xZ0OGVczRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTdq-0007A2-IV; Tue, 30 Jul 2019 15:02:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsTcZ-00070p-DN
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 15:01:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C48ED28;
 Tue, 30 Jul 2019 08:00:58 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3668A3F694;
 Tue, 30 Jul 2019 08:00:58 -0700 (PDT)
Date: Tue, 30 Jul 2019 16:00:56 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: esr: Add ESR exception class encoding for trapped
 ERET
Message-ID: <20190730150055.GB29844@lakrids.cambridge.arm.com>
References: <20190730144147.3694-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730144147.3694-1-will@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_080059_491131_976C01EE 
X-CRM114-Status: GOOD (  16.55  )
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
Cc: marc.zyngier@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 03:41:47PM +0100, Will Deacon wrote:
> The ESR.EC encoding of 0b011010 (0x1a) describes an exception generated
> by an ERET, ERETAA or ERETAB instruction as a result of a nested
> virtualisation trap to EL2.
> 
> Add an encoding for this EC and a string description so that we identify
> it correctly if we take one unexpectedly.
> 
> Signed-off-by: Will Deacon <will@kernel.org>

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/include/asm/esr.h | 3 ++-
>  arch/arm64/kernel/traps.c    | 1 +
>  2 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/esr.h b/arch/arm64/include/asm/esr.h
> index 65ac18400979..cb29253ae86b 100644
> --- a/arch/arm64/include/asm/esr.h
> +++ b/arch/arm64/include/asm/esr.h
> @@ -34,7 +34,8 @@
>  #define ESR_ELx_EC_SMC64	(0x17)	/* EL2 and above */
>  #define ESR_ELx_EC_SYS64	(0x18)
>  #define ESR_ELx_EC_SVE		(0x19)
> -/* Unallocated EC: 0x1A - 0x1E */
> +#define ESR_ELx_EC_ERET		(0x1a)	/* EL2 only */
> +/* Unallocated EC: 0x1b - 0x1E */
>  #define ESR_ELx_EC_IMP_DEF	(0x1f)	/* EL3 only */
>  #define ESR_ELx_EC_IABT_LOW	(0x20)
>  #define ESR_ELx_EC_IABT_CUR	(0x21)
> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> index d3313797cca9..42c8422cdf4a 100644
> --- a/arch/arm64/kernel/traps.c
> +++ b/arch/arm64/kernel/traps.c
> @@ -743,6 +743,7 @@ static const char *esr_class_str[] = {
>  	[ESR_ELx_EC_SMC64]		= "SMC (AArch64)",
>  	[ESR_ELx_EC_SYS64]		= "MSR/MRS (AArch64)",
>  	[ESR_ELx_EC_SVE]		= "SVE",
> +	[ESR_ELx_EC_ERET]		= "ERET/ERETAA/ERETAB",
>  	[ESR_ELx_EC_IMP_DEF]		= "EL3 IMP DEF",
>  	[ESR_ELx_EC_IABT_LOW]		= "IABT (lower EL)",
>  	[ESR_ELx_EC_IABT_CUR]		= "IABT (current EL)",
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
