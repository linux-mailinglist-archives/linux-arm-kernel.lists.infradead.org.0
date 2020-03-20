Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F86518D678
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 19:02:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l15AAAP4mMEu4kT7vqoPjRuXObxHQV2Hz6NxmP1O/dQ=; b=OwP+gjS/mGtb0J7+5vLHKLy4N
	hIkEKaDf9/FipzDtXtaKSt8u+ipDu3VCUdAFbqlN1gChxaarVqpfneGc8tDtDUQhA9Z9rP4JQ+skx
	SakvGGhordrDXQ2TwZyPk2TyNIHCBIJkWcDV7DUc8ShwRMseSFRcCSneHD5X/HRWPvqqiTSqXAsnp
	3OkVocyZ5V66AUuguO6CQNlh+LaPgDRy6iMllV3zg44N3ag0/PyKO4T6YZ/GcOWQ5foOOtWFLlGf6
	TZquYbgDxU8cPqsuBX1C7dV92N4PkRu2ZD3JBlLM3QDM+TerQBzjQrjPyKHrXjCQajYDZuYRqlq9B
	dWgOBSM5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFLyV-0005TY-Td; Fri, 20 Mar 2020 18:02:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFLyO-0005Sj-6k
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 18:02:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1BC5C1FB;
 Fri, 20 Mar 2020 11:02:19 -0700 (PDT)
Received: from [10.37.12.158] (unknown [10.37.12.158])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A11EF3F305;
 Fri, 20 Mar 2020 11:02:17 -0700 (PDT)
Subject: Re: [PATCH 2/6] arm64/cpufeature: Add DIT and CSV2 feature bits in
 ID_PFR0 register
To: anshuman.khandual@arm.com, linux-arm-kernel@lists.infradead.org
References: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
 <1580215149-21492-3-git-send-email-anshuman.khandual@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <fc6a3044-4ca7-8a37-d948-498d0d89a426@arm.com>
Date: Fri, 20 Mar 2020 18:07:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1580215149-21492-3-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_110220_291679_5BD71305 
X-CRM114-Status: GOOD (  15.60  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cc: Mark Rutland

On 01/28/2020 12:39 PM, Anshuman Khandual wrote:
> Enable DIT and CSV2 feature bits in ID_PFR0 register as per ARM DDI 0487E.a
> specification. Except RAS and AMU, all other feature bits are now enabled.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

> ---
>   arch/arm64/include/asm/sysreg.h | 3 +++
>   arch/arm64/kernel/cpufeature.c  | 2 ++
>   2 files changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index 054aab7ebf1b..469d61c8fabf 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -718,6 +718,9 @@
>   #define ID_ISAR6_DP_SHIFT		4
>   #define ID_ISAR6_JSCVT_SHIFT		0
>   
> +#define ID_PFR0_DIT_SHIFT		24
> +#define ID_PFR0_CSV2_SHIFT		16
> +
>   #define ID_PFR2_SSBS_SHIFT		4
>   #define ID_PFR2_CSV3_SHIFT		0
>   
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index c1e837fc8f97..9e4dab15c608 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -341,6 +341,8 @@ static const struct arm64_ftr_bits ftr_id_isar6[] = {
>   };
>   
>   static const struct arm64_ftr_bits ftr_id_pfr0[] = {
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_PFR0_DIT_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_PFR0_CSV2_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 12, 4, 0),		/* State3 */
>   	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 8, 4, 0),		/* State2 */
>   	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 4, 4, 0),		/* State1 */
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
