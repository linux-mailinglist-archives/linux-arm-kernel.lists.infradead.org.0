Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9009214744B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 00:03:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V34R6pbgoHTcTpOMOZ24O0RT8Qwkb7lBLsAqRDei40k=; b=UlWHUuv4wZGUE3Da2BQGc6DTY
	L92/+1BSPEN8X0QVc9C44s5d6/pAnDVSQ4rEaHZWzZ4aysYn2hQ8F786Fct7nguqiGgFu4MtY3cL4
	gENYwlR5W5megGvYA5P8vi7n8ogDp5+33DnCWN8UBXq9bLdEMCJuu5IkYfAqzCU0770Fg7iFgulg/
	mTGIieDkSVKhNKa230Ucghm7s5kGsQbxwY+Aw/8kdLPhVSnZ5QtviCslr9/tFkrWLKnMigB2opIZ4
	lfiIGE0F/1pFytmYWTUgT0WaknqR2ifVptt0KtRC75RxZ4Ljdq+34clAhjSYUe0S97xwIxBvuZQIW
	gfz6IlviQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iulVU-0003ta-Hb; Thu, 23 Jan 2020 23:03:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iulVL-0003t6-6U
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 23:03:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DBA34328;
 Thu, 23 Jan 2020 15:03:10 -0800 (PST)
Received: from [10.37.9.255] (unknown [10.37.9.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CACA23F68E;
 Thu, 23 Jan 2020 15:03:05 -0800 (PST)
Subject: Re: [PATCH v4 01/17] arm64: cpufeature: Fix meta-capability
 cpufeature check
To: amit.kachhap@arm.com, linux-arm-kernel@lists.infradead.org
References: <1579774839-19562-1-git-send-email-amit.kachhap@arm.com>
 <1579774839-19562-2-git-send-email-amit.kachhap@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <13e3aa5c-a7e8-69be-3bbe-006d0c43fb8b@arm.com>
Date: Thu, 23 Jan 2020 23:07:16 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1579774839-19562-2-git-send-email-amit.kachhap@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_150315_325500_F11F5D56 
X-CRM114-Status: GOOD (  18.93  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, keescook@chromium.org, catalin.marinas@arm.com,
 kristina.martsenko@arm.com, dave.martin@arm.com, broonie@kernel.org,
 james.morse@arm.com, ramana.radhakrishnan@arm.com, Vincenzo.Frascino@arm.com,
 will@kernel.org, ardb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Amit

On 01/23/2020 10:20 AM, Amit Daniel Kachhap wrote:
> Some existing meta cpucaps match needs the presence of individual
> cpucaps. Currently the individual cpucaps checks it via an array
> based flag and this introduces dependency on the array entry order.
> This limitation exists only for system scope cpufeature.
> 
> This patch introduces a helper function (system_has_cap) to invoke
> the matching handler for system scope. This is similar to the
> existing helper function (this_cpu_has_cap) for local cpu scope.

It is similar (in name, see more on that below) but this must be limited
to very narrow "window" where :
  - We have the system wide safe registers set with all the SMP CPUs
   *and*
  - The SYSTEM_FEATURE cpu_hwcaps may not have been set.

The normal users must continue to use the existing
cpus_have_{const_}cap() helper(s).

> 
> Use this new helper function for an existing meta cpucaps.
> 
> Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
> Changes since v3:
>   * New patch.
>   * This is added as suggested by Catalin [1] to avoid the array entry order
>     dependency.
>   * A new helper system_has_cap is added.
> 
> [1]: http://lists.infradead.org/pipermail/linux-arm-kernel/2020-January/705845.html
> 
>   arch/arm64/include/asm/cpufeature.h |  1 +
>   arch/arm64/kernel/cpufeature.c      | 13 ++++++++++++-
>   2 files changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
> index 4261d55..695e538 100644
> --- a/arch/arm64/include/asm/cpufeature.h
> +++ b/arch/arm64/include/asm/cpufeature.h
> @@ -382,6 +382,7 @@ extern DECLARE_BITMAP(boot_capabilities, ARM64_NPATCHABLE);
>   	for_each_set_bit(cap, cpu_hwcaps, ARM64_NCAPS)
>   
>   bool this_cpu_has_cap(unsigned int cap);
> +bool system_has_cap(unsigned int cap);

You don't need this.

>   void cpu_set_feature(unsigned int num);
>   bool cpu_have_feature(unsigned int num);
>   unsigned long cpu_get_elf_hwcap(void);
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 04cf64e..74d6c13 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -2008,6 +2008,17 @@ bool this_cpu_has_cap(unsigned int n)
>   	return false;
>   }
>   
> +bool system_has_cap(unsigned int n)
> +{

nit: This could be made static for now.

More importantly, the name is very much similar to "cap" specific
wrappers, e.g, system_has_fpsimd() etc, which could create a confusion
and make people use this instead of the "cpus_have_cap() or 
cpus_have_const_cap()". It would be a good idea to make this explicitly
look like an internal helper.
e.g:

__system_matches_cap() to avoid abusing this helper.


Otherwise looks good to me.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
