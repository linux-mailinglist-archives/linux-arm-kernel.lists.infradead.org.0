Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 482FB1C4D6D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 06:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Tn0PKjVadNHFnqqG7aCZwbTBfuY8U7Ya2bsIJ0jEWKA=; b=Wb9jRCvaQB/gvHap+CdGlGYUQ
	Ui0jMCkuSdqNfjJafqOXe+lh+YWBdGXZj0k6/L5m1JfOPgxaM7zqYLpQKF/CYbz2e8jJJ3FMuZqAk
	nNZD9I/IzIpX8zCDGQQKQ5PyY+1jg306loorw26TO/56M31y7BdLVrPEVOhNAu3rLwPZQvxFRgob2
	yK2fLemIrzdnqDcLVy609G/fCgM8OyByZUkA/6XO04iMfIRXNYrs48Vae6RELP26P3VZiKzYbofV9
	R8IaZLd2Utola5K8k6opCBc82MCs6z7FZMEbhcZN/qtBw8vbLB67a1Az1eYBwTjcJMED/0iAZf/NI
	QfhP372iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVpX9-0003rL-0C; Tue, 05 May 2020 04:50:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVpWo-0003q7-D1
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 04:49:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AB06830E;
 Mon,  4 May 2020 21:49:54 -0700 (PDT)
Received: from [10.37.12.10] (unknown [10.37.12.10])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 12E1B3F68F;
 Mon,  4 May 2020 21:49:49 -0700 (PDT)
Subject: Re: [PATCH V3 09/16] arm64/cpufeature: Add remaining feature bits in
 ID_AA64ISAR0 register
To: anshuman.khandual@arm.com, linux-arm-kernel@lists.infradead.org
References: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
 <1588426445-24344-10-git-send-email-anshuman.khandual@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <0e5274dc-e2e3-646a-076b-ebe195048c5a@arm.com>
Date: Tue, 5 May 2020 05:54:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1588426445-24344-10-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_214958_486476_F599CA2F 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/02/2020 02:33 PM, Anshuman Khandual wrote:
> Enable TLB features bit in ID_AA64ISAR0 register as per ARM DDI 0487F.a
> specification.
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
>   arch/arm64/include/asm/sysreg.h | 1 +
>   arch/arm64/kernel/cpufeature.c  | 1 +
>   2 files changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index 0f34927f52b9..40eaf89f1032 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -597,6 +597,7 @@
>   
>   /* id_aa64isar0 */
>   #define ID_AA64ISAR0_RNDR_SHIFT		60
> +#define ID_AA64ISAR0_TLB_SHIFT		56
>   #define ID_AA64ISAR0_TS_SHIFT		52
>   #define ID_AA64ISAR0_FHM_SHIFT		48
>   #define ID_AA64ISAR0_DP_SHIFT		44
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index f4e15e355aee..dbedcae28061 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -174,6 +174,7 @@ static bool __system_matches_cap(unsigned int n);
>    */
>   static const struct arm64_ftr_bits ftr_id_aa64isar0[] = {
>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_RNDR_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_TLB_SHIFT, 4, 0),

I don't see any reason why this should be VISIBLE to the userspace.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
