Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37520140807
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 11:32:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vi5t76+m9iTJDjJQy+GLb11EpMpa4XindIP47jvnrVk=; b=DBx/mgBh0DP64J
	aCRlVnD0Zs+zs0BpMBHimB4hVdh4b7H97FTsQyivMxcrtfF/Fzb+JycZUwEveOXrMvdhm/K8AbE+J
	ItexesJpIGnV2wBbhDKdRkzGXmClf+ihD8upn1Wq13eJsRqjirBytn/GJmmth4eRllWhVJTgGoCjX
	xi2L/HldUtJk6KzNNm8nn6gC9SD16racbil01HQMkuT7a6fMUPd6Oxw++G82Eov8zeeZ7pr03c/GP
	kAUgAOD9W+bld+7O14rKZs/wpGNC0oxFGM3+s8g9azj1I9MVHXipDNTEPoTFuyb1TdYjJ2oAgfLRU
	YxC3bbx27RKxdulOVBFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isOv1-00013y-QX; Fri, 17 Jan 2020 10:31:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isOuk-000136-MN
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 10:31:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E59E211D4;
 Fri, 17 Jan 2020 02:31:41 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 2BEAC3F68E; Fri, 17 Jan 2020 02:31:40 -0800 (PST)
Date: Fri, 17 Jan 2020 10:31:38 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v3 12/16] arm64: suspend: restore the kernel ptrauth keys
Message-ID: <20200117103138.GD26090@arrakis.emea.arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-13-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576486038-9899-13-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_023144_088260_23226B81 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 02:17:14PM +0530, Amit Daniel Kachhap wrote:
> diff --git a/arch/arm64/kernel/sleep.S b/arch/arm64/kernel/sleep.S
> index 7b2f2e6..a6e9460 100644
> --- a/arch/arm64/kernel/sleep.S
> +++ b/arch/arm64/kernel/sleep.S
> @@ -2,6 +2,7 @@
>  #include <linux/errno.h>
>  #include <linux/linkage.h>
>  #include <asm/asm-offsets.h>
> +#include <asm/asm_pointer_auth.h>
>  #include <asm/assembler.h>
>  #include <asm/smp.h>
>  
> @@ -139,6 +140,11 @@ ENTRY(_cpu_resume)
>  	bl	kasan_unpoison_task_stack_below
>  #endif
>  
> +#ifdef CONFIG_ARM64_PTR_AUTH
> +	get_current_task x1
> +	ptrauth_keys_install_kernel x1, x2, x3, x4
> +#endif

We should initialise the keys earlier since
kasan_unpoison_task_stack_below() is a C function.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
