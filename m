Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D972FCFC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 16:13:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pScOaKTYAmAOJpChjq6WEgEpFwfRxH6DKRYgERThzVM=; b=CNbP5V0Q9CFKMeubENud7X7hj
	xVvbAYqzEIRBHhkZQdq41O9hHB6PuY0NNjc8PtQg7L7+f9h5PvCRONbmJZS6enI6dF8Ac8zAh3Lla
	Stqt89LVOpkH/CfLj7UDq1QIimCQIJodPGCcyrbxGDdekYJGcWXxQeTC+xd1i7UivNgrDXr2/9VRp
	0GumTKtSGtm/N1SSmf4h6C9VfO5EghlEeOYHSKI/PlorgDXdMczJbwKi9D/4HGvC/Jozh56ZeBR0/
	XLoXk/DZ1kBJkGc5M4i8P8KyBR2StFSnZT+fKBgqKUhi6gK00QEpwY7SVvoH0qLL1Oe3aewP4AqUo
	XMFdMR3vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWLoO-0006Fy-9p; Thu, 30 May 2019 14:13:44 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWLoG-0006FG-Gd
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 14:13:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5830BA78;
 Thu, 30 May 2019 07:13:34 -0700 (PDT)
Received: from [192.168.0.21] (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D0C5C3F59C; Thu, 30 May 2019 07:13:31 -0700 (PDT)
Subject: Re: [RFC v2 3/7] arm64: cpufeature: handle conflicts based on
 capability
To: kristina.martsenko@arm.com, linux-arm-kernel@lists.infradead.org
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <20190529190332.29753-4-kristina.martsenko@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <e4ab4a88-9e14-4d2b-e89a-6ea3202bcfd1@arm.com>
Date: Thu, 30 May 2019 15:16:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20190529190332.29753-4-kristina.martsenko@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_071336_566230_889E4C19 
X-CRM114-Status: GOOD (  27.84  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, keescook@chromium.org, ard.biesheuvel@linaro.org,
 catalin.marinas@arm.com, will.deacon@arm.com, ramana.radhakrishnan@arm.com,
 amit.kachhap@arm.com, dave.martin@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/29/2019 08:03 PM, Kristina Martsenko wrote:
> Each system capability can be of either boot, local, or system scope,
> depending on when the state of the capability is finalized. When we
> detect a conflict on a late CPU, we either offline the CPU or panic the
> system. We currently always panic if the conflict is caused by a boot
> scope capability, and offline the CPU if the conflict is caused by a
> local or system scope capability.
> 
> We're going to want to add new capability (for pointer authentication)
> which needs to be boot scope but doesn't need to panic the system when a
> conflict is detected. So add a new flag to specify whether the
> capability requires the system to panic or not. Current boot scope
> capabilities are updated to set the flag, so there should be no
> functional change as a result of this patch.
> 
> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>


> ---
> 
> Changes since RFC v1:
>   - New patch, to have ptrauth mismatches disable secondaries instead of
>     panicking
> 
>   arch/arm64/include/asm/cpufeature.h | 15 ++++++++++++++-
>   arch/arm64/kernel/cpufeature.c      | 23 +++++++++--------------
>   2 files changed, 23 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
> index 0522ea674253..ad952f2e0a2b 100644
> --- a/arch/arm64/include/asm/cpufeature.h
> +++ b/arch/arm64/include/asm/cpufeature.h
> @@ -217,6 +217,10 @@ extern struct arm64_ftr_reg arm64_ftr_reg_ctrel0;
>    *     In some non-typical cases either both (a) and (b), or neither,
>    *     should be permitted. This can be described by including neither
>    *     or both flags in the capability's type field.
> + *
> + *     In case of a conflict, the CPU is prevented from booting. If the
> + *     ARM64_CPUCAP_PANIC_ON_CONFLICT flag is specified for the capability,
> + *     then a kernel panic is triggered.
>    */
>   
>   
> @@ -249,6 +253,8 @@ extern struct arm64_ftr_reg arm64_ftr_reg_ctrel0;
>   #define ARM64_CPUCAP_PERMITTED_FOR_LATE_CPU	((u16)BIT(4))
>   /* Is it safe for a late CPU to miss this capability when system has it */
>   #define ARM64_CPUCAP_OPTIONAL_FOR_LATE_CPU	((u16)BIT(5))
> +/* Panic when a conflict is detected */
> +#define ARM64_CPUCAP_PANIC_ON_CONFLICT		((u16)BIT(6))
>   
>   /*
>    * CPU errata workarounds that need to be enabled at boot time if one or
> @@ -290,7 +296,8 @@ extern struct arm64_ftr_reg arm64_ftr_reg_ctrel0;
>    * CPU feature used early in the boot based on the boot CPU. All secondary
>    * CPUs must match the state of the capability as detected by the boot CPU.
>    */
> -#define ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE ARM64_CPUCAP_SCOPE_BOOT_CPU
> +#define ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE		\
> +	(ARM64_CPUCAP_SCOPE_BOOT_CPU | ARM64_CPUCAP_PANIC_ON_CONFLICT)

You may want to update the comment to mention that a conflict triggers
kernel panic, as it is more within the control of the "cap" behavior.

With that:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
