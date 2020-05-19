Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B3D1D97F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 15:40:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xJl8kZN6LnY5DLQv0o4n3o3uuV5/pF8O24xFHuaaXX4=; b=LL6e32EQes2orSuw2lE3E6gXe
	rqdKvLiLgMMZhAtnHzaJ8tMxJdYLDlZDk6G/JbOyjknP66vXRqHgRSOkM5I+Ct5DaI8UyWREJzlMd
	pjOcHToYIPiGuYx0m8MMep7xA/2Crvw3H6dbASCnsHC9VSLWsz8ygPiSpiFpr9fxCIgJH60EFKqIq
	SedKzYkPeobwUdO13bnucK3ZbQH+Xcb0lR6AaRo4mQ+yBE1ONkoblayj1dMbV/8xNVnTPRg3bUSBH
	8P+kvMlqSlhGkEe2wCpRjcRbtz2XG3pVQIdR5l/H/88xJBd8IgwnGaiUExQRRLbtptKvWf0k48XTt
	Xznjls3uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2TK-00064k-Dv; Tue, 19 May 2020 13:39:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2TB-00062X-Fj
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 13:39:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E777330E;
 Tue, 19 May 2020 06:39:43 -0700 (PDT)
Received: from [10.37.8.206] (unknown [10.37.8.206])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8D65D3F52E;
 Tue, 19 May 2020 06:39:42 -0700 (PDT)
Subject: Re: [PATCH V4 13/17] arm64/cpufeature: Add remaining feature bits in
 ID_AA64MMFR1 register
To: anshuman.khandual@arm.com, linux-arm-kernel@lists.infradead.org
References: <1589881254-10082-1-git-send-email-anshuman.khandual@arm.com>
 <1589881254-10082-14-git-send-email-anshuman.khandual@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <6ad2dde0-455f-90a6-7b76-eda4fe8d6efe@arm.com>
Date: Tue, 19 May 2020 14:44:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1589881254-10082-14-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_063945_565509_09122AFA 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-kernel@vger.kernel.org, maz@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/19/2020 10:40 AM, Anshuman Khandual wrote:
> Enable ETS, TWED, XNX and SPECSEI features bits in ID_AA64MMFR1 register as
> per ARM DDI 0487F.a specification.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> 
> Suggested-by: Will Deacon <will@kernel.org>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>   arch/arm64/include/asm/sysreg.h | 4 ++++
>   arch/arm64/kernel/cpufeature.c  | 4 ++++
>   2 files changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index 95fdfc5e9bd0..f9dd2c5ab074 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -734,6 +734,10 @@
>   #endif
>   
>   /* id_aa64mmfr1 */
> +#define ID_AA64MMFR1_ETS_SHIFT		36
> +#define ID_AA64MMFR1_TWED_SHIFT		32
> +#define ID_AA64MMFR1_XNX_SHIFT		28
> +#define ID_AA64MMFR1_SPECSEI_SHIFT	24
>   #define ID_AA64MMFR1_PAN_SHIFT		20
>   #define ID_AA64MMFR1_LOR_SHIFT		16
>   #define ID_AA64MMFR1_HPD_SHIFT		12
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 7ce19f97ba73..1f10ff7df705 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -299,6 +299,10 @@ static const struct arm64_ftr_bits ftr_id_aa64mmfr0[] = {
>   };
>   
>   static const struct arm64_ftr_bits ftr_id_aa64mmfr1[] = {
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR1_ETS_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR1_TWED_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR1_XNX_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR1_SPECSEI_SHIFT, 4, 0),

SpecSEI must be HIGHER_SAFE, like we did for MMFR4 ?

Otherwise looks good to me.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
