Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D37801D94BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 12:52:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+W+HXrGd5wzJidxnIxoOt8CiW8t13EdsWUk7Edbyx5U=; b=TsWFz9103SHx3WLKvL4oX2fnk
	bUlkKfMuYjjbiM40Lmw8AmCQoajmaUqXVCn8eH0o60ZKfuaRK7VzC/4uwqTx8cqobYsQaeyTN66DO
	e2XrhjDiBdEP+ZWAHrIiqdUm4+yKpDCxBv7w/SHolP12Ucn48kPFFH4OIxh5/TrFb3rw7rekJhich
	ut6/J+4RCRy4j/+9I4qx3bSW59MuWypPbLfygPjR6kuGtr6qJ4+CXqGFqOwKsdmQPDRt0D97RsZ7A
	OetzzL/AFWnkCZGhu7w/S24XnynUMykE9yH97P/CeptildPAJQauaiGTLE/9DBERzHKiPYeaivpyJ
	TdIlyxOQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jazr8-0000qK-0z; Tue, 19 May 2020 10:52:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jazqz-0000pa-V0
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 10:52:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5D258101E;
 Tue, 19 May 2020 03:52:09 -0700 (PDT)
Received: from [10.37.8.206] (unknown [10.37.8.206])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C9CFB3F68F;
 Tue, 19 May 2020 03:52:07 -0700 (PDT)
Subject: Re: [PATCH V4 09/17] arm64/cpufeature: Add remaining feature bits in
 ID_AA64ISAR0 register
To: anshuman.khandual@arm.com, linux-arm-kernel@lists.infradead.org
References: <1589881254-10082-1-git-send-email-anshuman.khandual@arm.com>
 <1589881254-10082-10-git-send-email-anshuman.khandual@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <8f22b383-91de-05c4-e133-ff2ff6f55a3a@arm.com>
Date: Tue, 19 May 2020 11:56:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1589881254-10082-10-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_035210_041171_3349A01A 
X-CRM114-Status: GOOD (  18.26  )
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
> index 0a0cbb3add89..ea075cc08c8f 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -601,6 +601,7 @@
>   
>   /* id_aa64isar0 */
>   #define ID_AA64ISAR0_RNDR_SHIFT		60
> +#define ID_AA64ISAR0_TLB_SHIFT		56
>   #define ID_AA64ISAR0_TS_SHIFT		52
>   #define ID_AA64ISAR0_FHM_SHIFT		48
>   #define ID_AA64ISAR0_DP_SHIFT		44
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 92186c40b817..ed0c400155c9 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -179,6 +179,7 @@ static bool __system_matches_cap(unsigned int n);
>    */
>   static const struct arm64_ftr_bits ftr_id_aa64isar0[] = {
>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_RNDR_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_TLB_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_TS_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_FHM_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_DP_SHIFT, 4, 0),
> 

Heads up, this might conflict with other series which adds support for 
the TLBI range.

As such :

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
