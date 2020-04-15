Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1C71A9A49
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:21:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C5OuL2Osb46yTiW0swDmBC4NaKU4IoL5pxZPNFRFxw8=; b=Ma+E4Pm8/9jPV5Hk/KPgp1T2W
	YlK/TSDqxWTi5gmU4LYET6znASOf1t9DjqEtVQ6DIAC9cLnAZzSi6XAOqoeYhI5l6280dvzS5JEkP
	MQgLigch10M+apiM11DSpqTIPlc0kY81yj+//qBvV0dX14OTedGUUUrUw7CJCH2jwPOBYD8aKhXrz
	JW4IXePxgNFIE6+XlJYVGb1+PYs3IQBJSsgsQP9VxZV/gJgv1o3EewulQ040Bme18e1Xa6ksK/z3W
	weUQ/H1Ea6bcU4AMyKzdahAKQKIyyThAxjvgScsmmkbJJCUHv8QMs1Wo208AeAOAy4iit9Ly3bTeG
	HLIoSWzJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfAC-00022W-B7; Wed, 15 Apr 2020 10:21:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfA2-0001yQ-FE
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:20:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B1B21063;
 Wed, 15 Apr 2020 03:20:49 -0700 (PDT)
Received: from [10.37.12.1] (unknown [10.37.12.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2BE9B3F68F;
 Wed, 15 Apr 2020 03:20:47 -0700 (PDT)
Subject: Re: [PATCH 4/8] arm64: cpufeature: Remove redundant call to
 id_aa64pfr0_32bit_el0()
To: will@kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
References: <20200414213114.2378-1-will@kernel.org>
 <20200414213114.2378-5-will@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <8f911640-8b7d-bb6f-2b76-67dd0d259b75@arm.com>
Date: Wed, 15 Apr 2020 11:25:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200414213114.2378-5-will@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_032050_714669_4212DB9E 
X-CRM114-Status: GOOD (  18.68  )
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
Cc: mark.rutland@arm.com, saiprakash.ranjan@codeaurora.org,
 anshuman.khandual@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 dianders@chromium.org, catalin.marinas@arm.com, kernel-team@android.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/14/2020 10:31 PM, Will Deacon wrote:
> There's no need to call id_aa64pfr0_32bit_el0() twice because the
> sanitised value of ID_AA64PFR0_EL1 has already been updated for the CPU
> being onlined.
> 
> Remove the redundant function call.
> 
> Signed-off-by: Will Deacon <will@kernel.org>

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

> ---
>   arch/arm64/kernel/cpufeature.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 838fe5cc8d7e..7dfcdd9e75c1 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -792,9 +792,7 @@ void update_cpu_features(int cpu,
>   	 * If we have AArch32, we care about 32-bit features for compat.
>   	 * If the system doesn't support AArch32, don't update them.
>   	 */
> -	if (id_aa64pfr0_32bit_el0(read_sanitised_ftr_reg(SYS_ID_AA64PFR0_EL1)) &&
> -		id_aa64pfr0_32bit_el0(info->reg_id_aa64pfr0)) {
> -
> +	if (id_aa64pfr0_32bit_el0(read_sanitised_ftr_reg(SYS_ID_AA64PFR0_EL1))) {
>   		taint |= check_update_ftr_reg(SYS_ID_DFR0_EL1, cpu,
>   					info->reg_id_dfr0, boot->reg_id_dfr0);
>   		taint |= check_update_ftr_reg(SYS_ID_ISAR0_EL1, cpu,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
