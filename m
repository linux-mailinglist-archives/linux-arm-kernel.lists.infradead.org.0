Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 820AD197B03
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 13:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f3dnI6EZQ4V62V4MPhIRxKSzP8lORDW8Rnt3EDoZWUM=; b=D0RRmtNGaUtFu/JDuTCdUr6T+
	A3Izh7c5CnjPUYfevloQbUt7I7H6rVCsxMUAfXWh73wYFKHIR3wReDpphokkuunWNCYWPpP42PDcZ
	81zRC70UFtgwAQBvGRnPafg3IzTNDBaHFZOgN8jnLR/P7P362BiMhvCz9I1PxxbgucfWRlh6HpjS2
	sa+mxgfPRYmQD9wtwQxUl5Mz2laG5DCkf3apzdXi9pqsejPXI0VbnMe0m8OwK+rLSqGvrtkQeBcto
	lkOZTTEJYCIi+pNaL4KcZb0CVOcNtg9TdTC4TcM31uXu4ABT6XTwbT2Ze4ut0VtBxyOK3/5AiztTd
	VijfDi0tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIspl-00057F-2U; Mon, 30 Mar 2020 11:44:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIspa-00056i-GU
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 11:43:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E58C931B;
 Mon, 30 Mar 2020 04:43:49 -0700 (PDT)
Received: from [10.57.27.249] (unknown [10.57.27.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4CC943F52E;
 Mon, 30 Mar 2020 04:43:48 -0700 (PDT)
Subject: Re: [PATCH 2/2] arm64: Kconfig: ptrauth: Add binutils version check
 to fix mismatch
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1585236720-21819-1-git-send-email-amit.kachhap@arm.com>
 <1585236720-21819-2-git-send-email-amit.kachhap@arm.com>
 <20200327125522.GB18117@mbp>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <497d96a1-0532-ca18-8eaa-79fbcfd0b87d@arm.com>
Date: Mon, 30 Mar 2020 17:13:44 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200327125522.GB18117@mbp>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_044350_595573_1FD0BD03 
X-CRM114-Status: GOOD (  20.46  )
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
Cc: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/27/20 6:25 PM, Catalin Marinas wrote:
> On Thu, Mar 26, 2020 at 09:02:00PM +0530, Amit Daniel Kachhap wrote:
>> Recent addition of ARM64_PTR_AUTH exposed a mismatch issue with binutils.
>> 9.1+ versions of gcc inserts a section note .note.gnu.property but this
>> can be used properly by binutils version greater than 2.33.1. If older
>> binutils are used then the following warnings are generated,
>>
>> aarch64-linux-ld: warning: arch/arm64/kernel/vdso/vgettimeofday.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>> aarch64-linux-objdump: warning: arch/arm64/lib/csum.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>> aarch64-linux-nm: warning: .tmp_vmlinux1: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>>
>> This patch enables ARM64_PTR_AUTH when gcc and binutils versions are
>> compatible with each other. Older gcc which do not insert such section
>> continue to work as before.
>>
>> This scenario may not occur with clang as a recent commit 3b446c7d27ddd06
>> ("arm64: Kconfig: verify binutils support for ARM64_PTR_AUTH") masks
>> binutils version lesser then 2.34.
>>
>> Reported-by: kbuild test robot <lkp@intel.com>
>> Suggested-by: Vincenzo Frascino <Vincenzo.Frascino@arm.com>
>> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
>> ---
>>   arch/arm64/Kconfig | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>> index e6712b6..73135da 100644
>> --- a/arch/arm64/Kconfig
>> +++ b/arch/arm64/Kconfig
>> @@ -1503,7 +1503,7 @@ config ARM64_PTR_AUTH
>>   	default y
>>   	depends on !KVM || ARM64_VHE
>>   	depends on (CC_HAS_SIGN_RETURN_ADDRESS || CC_HAS_BRANCH_PROT_PAC_RET) && AS_HAS_PAC
>> -	depends on CC_IS_GCC || (CC_IS_CLANG && AS_HAS_CFI_NEGATE_RA_STATE)
>> +	depends on (CC_IS_GCC && (GCC_VERSION < 90100 || LD_VERSION >= 233010000)) || (CC_IS_CLANG && AS_HAS_CFI_NEGATE_RA_STATE)
> 
> We should add some of the comments in the commit log to the Kconfig
> entry. I would also split this in two (equivalent to CC_IS_ implies):
> 
> 	depends on !CC_IS_GCC || GCC_VERSION < 90100 || LD_VERSION >= 233010000
> 	depends on !CC_IS_CLANG || AS_HAS_CFI_NEGATE_RA_STATE
> 
> and add a comment above the gcc/ld version checking.
> 
> (not entirely identical to the original if CC is neither of them but I
> don't think we have this problem)

Re-posted v2 as per the suggestions.

Thanks,
Amit
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
