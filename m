Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 531751E2377
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 15:59:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UweMin6fzs40ywTnNpr/oH2FLYshVwYwRvmCTbft1H4=; b=RQ4O9iK17RvqbjUZZHim2Qv0q
	SKisEqrsWtJWphzPT9x0YbcHB0UjfcvKQsas675tE+WmAKN7XGBkuIi0WUQdbReG1gyLMfOns/9fZ
	2iCCnKPfjCpWCTFXcDYsDQkXGPqoO2vKPhG0HghJEPanoF+8yRxpfYN/0v8wIqsmNVwR0c00kZhF/
	cIhTzLDSWgyO7LmCAmNPYmUERlFs1Lqq7kFKBjY2sPDz6ASqglE+jHejgcREcg4TlQk7kLPGQMXU8
	GGHtNeCvngQebfVeIznrH0pI7xKz9/nVU/Sxcm3fsRcaQ0uhkprjbnXRLnyK8fCjE3OMbGNavoYKA
	TKrl/zcXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jda7I-0007Rk-U0; Tue, 26 May 2020 13:59:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jda79-0007Qx-0E
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 13:59:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D719E1FB;
 Tue, 26 May 2020 06:59:27 -0700 (PDT)
Received: from [10.37.8.5] (unknown [10.37.8.5])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 13CD43F6C4;
 Tue, 26 May 2020 06:59:25 -0700 (PDT)
Subject: Re: [PATCH V2] arm64/cpufeature: Add get_arm64_ftr_reg_nowarn()
To: anshuman.khandual@arm.com, linux-arm-kernel@lists.infradead.org
References: <1590500353-28082-1-git-send-email-anshuman.khandual@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <0726a5b9-fff6-a15c-e705-db7abd4b1abd@arm.com>
Date: Tue, 26 May 2020 15:04:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1590500353-28082-1-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_065931_085685_700D90A8 
X-CRM114-Status: GOOD (  21.09  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, broonie@kernel.org,
 will@kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/26/2020 02:39 PM, Anshuman Khandual wrote:
> There is no way to proceed when requested register could not be searched in
> arm64_ftr_reg[]. Requesting for a non present register would be an error as
> well. Hence lets just WARN_ON() when search fails in get_arm64_ftr_reg()
> rather than checking for return value and doing a BUG_ON() instead in some
> individual callers. But there are also caller instances that dont error out
> when register search fails. Add a new helper get_arm64_ftr_reg_nowarn() for
> such cases.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
> Changes in V2:
> 
> - Added get_arm64_ftr_reg_nowarn() per Will
> - read_sanitised_ftr_reg() returns 0 when register search fails per Catalin
> 
> Changes in V1: (https://patchwork.kernel.org/patch/11559083/)
> 
>   arch/arm64/kernel/cpufeature.c | 42 +++++++++++++++++++++++-----------
>   1 file changed, 29 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index bc5048f152c1..f4555b9d145c 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -548,16 +548,16 @@ static int search_cmp_ftr_reg(const void *id, const void *regp)
>   }
>   

...

>   static u64 arm64_ftr_set_value(const struct arm64_ftr_bits *ftrp, s64 reg,
>   			       s64 ftr_val)
>   {
> @@ -632,8 +654,6 @@ static void __init init_cpu_ftr_reg(u32 sys_reg, u64 new)
>   	const struct arm64_ftr_bits *ftrp;
>   	struct arm64_ftr_reg *reg = get_arm64_ftr_reg(sys_reg);
>   
> -	BUG_ON(!reg);
> -
>   	for (ftrp = reg->ftr_bits; ftrp->width; ftrp++) {
>   		u64 ftr_mask = arm64_ftr_mask(ftrp);
>   		s64 ftr_new = arm64_ftr_value(ftrp, new);
> @@ -762,7 +782,6 @@ static int check_update_ftr_reg(u32 sys_id, int cpu, u64 val, u64 boot)
>   {
>   	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(sys_id);
>   
> -	BUG_ON(!regp);
>   	update_cpu_ftr_reg(regp, val);
>   	if ((boot & regp->strict_mask) == (val & regp->strict_mask))
>   		return 0;
> @@ -776,9 +795,6 @@ static void relax_cpu_ftr_reg(u32 sys_id, int field)
>   	const struct arm64_ftr_bits *ftrp;
>   	struct arm64_ftr_reg *regp = get_arm64_ftr_reg(sys_id);
>   
> -	if (WARN_ON(!regp))
> -		return;
> -

You need to return here, on !regp. Rest looks fine to me.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
