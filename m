Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5EF4132500
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 12:35:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qkUXE3PTwFz+Rri7SK152ZasQVxJFSUv4LxMNffmKro=; b=Qc9Z135Q2Ga7NsF2xHD11G3iw
	rcbbDp9T0tAViSp0MnvHfN4cuAXm+8zPxtpbz+LecXK9+nCRV7th6huwlKwSQhxHA1htgVL2BXLKb
	/Dss9iMKnPP4uwXuPP3iTlDU2914F9QfRxcBN61qQnOnE3YaXL43Zu2Da/k0RxFvUm7PlygCkndaf
	Iq5vR8kHQ7/ydwNglap1wlxn3rfphYFnZj03VClYYMXyUqznNzz1qwcBylUYqeXBJVuHyzrhwJ1K+
	O7vAqVzr34xtaQbPtymYbXc+WyBtreJ3ji71kTwdkoKXgAJZ3UsOYBImQAXE411c7lnD2bOHLV+Mg
	IbN/rixLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ion90-0008Ea-NI; Tue, 07 Jan 2020 11:35:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ion8r-0008E6-8y
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 11:35:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B62B7328;
 Tue,  7 Jan 2020 03:35:19 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 137283F534;
 Tue,  7 Jan 2020 03:35:17 -0800 (PST)
Subject: Re: [PATCH v3 06/16] arm64: enable ptrauth earlier
To: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-7-git-send-email-amit.kachhap@arm.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <e49002f2-53fb-b997-8bd6-363e22153da3@arm.com>
Date: Tue, 7 Jan 2020 11:35:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <1576486038-9899-7-git-send-email-amit.kachhap@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_033521_405492_1D3C4F40 
X-CRM114-Status: GOOD (  23.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/12/2019 08:47, Amit Daniel Kachhap wrote:
> From: Kristina Martsenko <kristina.martsenko@arm.com>
> 
> When the kernel is compiled with pointer auth instructions, the boot CPU
> needs to start using address auth very early, so change the cpucap to
> account for this.
> 
> Pointer auth must be enabled before we call C functions, because it is
> not possible to enter a function with pointer auth disabled and exit it
> with pointer auth enabled. Note, mismatches between architected and
> IMPDEF algorithms will still be caught by the cpufeature framework (the
> separate *_ARCH and *_IMP_DEF cpucaps).
> 
> Note the change in behavior: if the boot CPU has address auth and a late
> CPU does not, then we park the late CPU very early in booting. Also, if
> the boot CPU does not have address auth and the late CPU has then system
> panic will occur little later from inside the C code. Until now we would
> have just disabled address auth in this case.
> 
> Leave generic authentication as a "system scope" cpucap for now, since
> initially the kernel will only use address authentication.
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
> [Amit: Re-worked ptrauth setup logic, comments]
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
> Changes since last version:
> * None.
> 
>   arch/arm64/Kconfig             |  5 +++++
>   arch/arm64/include/asm/smp.h   |  1 +
>   arch/arm64/kernel/cpufeature.c | 13 +++----------
>   arch/arm64/kernel/head.S       | 20 ++++++++++++++++++++
>   arch/arm64/kernel/smp.c        |  2 ++
>   arch/arm64/mm/proc.S           | 31 +++++++++++++++++++++++++++++++
>   6 files changed, 62 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index b1b4476..5aabe8a 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1482,6 +1482,11 @@ config ARM64_PTR_AUTH
>   	  be enabled. However, KVM guest also require VHE mode and hence
>   	  CONFIG_ARM64_VHE=y option to use this feature.
>   
> +	  If the feature is present on the primary CPU but not a secondary CPU,
> +	  then the secondary CPU will be parked.

---

>    Also, if the boot CPU does not
> +	  have address auth and the late CPU has then system panic will occur.
> +	  On such a system, this option should not be selected.

Is this part of the text true ? We do not enable ptr-auth on the CPUs if
we are missing the support on primary. So, given we disable SCTLR bits,
the ptr-auth instructions should be a NOP and is thus safe.

The rest looks good to me. With the above text removed,

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
