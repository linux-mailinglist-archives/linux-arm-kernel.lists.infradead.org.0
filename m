Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D991D24DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 03:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7bpHPaK6B6nd3poyA4NpA9RyeGDRTA9PMBrNq6lkPY=; b=V1gyMP+fLrUI+S
	we7TwkwdffkPdfENiJOUD5HToBUo1TJHI3zIZXIJVXZ5or6XIp4F1ZRJ2oRX3hzdLlueHEbqsoWvp
	feGuUyOV04tG2IrkhhRyzX6ppZ0zPVIoinK2/W2Xqli6Bzz9ADREt+8npoKIuAQiDM9WgFfDk0HLh
	uPw/Ox+/9u2AQ4yT9bPoRhcpC0ybXsMgREh0LsZcrfT5QCYkUK8Gj6xkSxadHgwPFdk40Ydd2ggZw
	2ZWjSGXzA9W4KJbMo270QVBQX91bdrHlTvKitfQWf54yD7urzb1io0hvLqW8wf4gIvEiRj510xw3N
	ejCTqTAKk4uGwpEbG34g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ2wU-0005m4-IM; Thu, 14 May 2020 01:45:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ2wJ-0005jF-4Y
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 01:45:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6E3531B;
 Wed, 13 May 2020 18:45:33 -0700 (PDT)
Received: from [10.163.73.129] (unknown [10.163.73.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 924303F305;
 Wed, 13 May 2020 18:45:30 -0700 (PDT)
Subject: Re: [PATCH V2] arm64/cpuinfo: Move HWCAP name arrays alongside their
 bit definitions
To: Dave Martin <Dave.Martin@arm.com>
References: <1588858150-26823-1-git-send-email-anshuman.khandual@arm.com>
 <20200513150405.GS21779@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <0999fa28-3ee7-3f02-4def-a0c6013ec6dd@arm.com>
Date: Thu, 14 May 2020 07:14:58 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200513150405.GS21779@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_184535_267823_CB373943 
X-CRM114-Status: GOOD (  18.90  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/13/2020 08:34 PM, Dave Martin wrote:
> On Thu, May 07, 2020 at 06:59:10PM +0530, Anshuman Khandual wrote:
>> All HWCAP name arrays (i.e hwcap_str, compat_hwcap_str, compat_hwcap2_str)
>> that are scanned for /proc/cpuinfo output are detached from their bit fild
>> definitions making it difficult to corelate. This is also bit problematic
>> because during /proc/cpuinfo dump these arrays get traversed sequentially
>> assuming that they reflect and match HWCAP bit sequence, to test various
>> features for a given CPU.
>>
>> This moves all HWCAP name arrays near their bit definitions. But first it
>> defines all missing COMPAT_HWCAP_XXX that are present in the name string.
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Mark Brown <broonie@kernel.org>
>> Cc: Ard Biesheuvel <ardb@kernel.org>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-kernel@vger.kernel.org
>>
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> Acked-by: Mark Rutland <mark.rutland@arm.com>
>> ---
>> This applies on 5.7-rc4
>>
>> Changes in V2:
>>
>> - Defined COMPAT_KERNEL_HWCAP[2] and updated the name arrays per Mark
>> - Updated the commit message as required
>>
>> Changes in V1: (https://patchwork.kernel.org/patch/11532945/)
>>
>>  arch/arm64/include/asm/hwcap.h | 101 +++++++++++++++++++++++++++++++++
>>  arch/arm64/kernel/cpuinfo.c    |  90 -----------------------------
>>  2 files changed, 101 insertions(+), 90 deletions(-)
>>
>> diff --git a/arch/arm64/include/asm/hwcap.h b/arch/arm64/include/asm/hwcap.h
>> index 0f00265248b5..589ac02e1ddd 100644
>> --- a/arch/arm64/include/asm/hwcap.h
>> +++ b/arch/arm64/include/asm/hwcap.h
>> @@ -8,18 +8,27 @@
>>  #include <uapi/asm/hwcap.h>
>>  #include <asm/cpufeature.h>
>>  
>> +#define COMPAT_HWCAP_SWP	(1 << 0)
>>  #define COMPAT_HWCAP_HALF	(1 << 1)
>>  #define COMPAT_HWCAP_THUMB	(1 << 2)
>> +#define COMPAT_HWCAP_26BIT	(1 << 3)
>>  #define COMPAT_HWCAP_FAST_MULT	(1 << 4)
>> +#define COMPAT_HWCAP_FPA	(1 << 5)
>>  #define COMPAT_HWCAP_VFP	(1 << 6)
>>  #define COMPAT_HWCAP_EDSP	(1 << 7)
>> +#define COMPAT_HWCAP_JAVA	(1 << 8)
>> +#define COMPAT_HWCAP_IWMMXT	(1 << 9)
>> +#define COMPAT_HWCAP_CRUNCH	(1 << 10)
>> +#define COMPAT_HWCAP_THUMBEE	(1 << 11)
>>  #define COMPAT_HWCAP_NEON	(1 << 12)
>>  #define COMPAT_HWCAP_VFPv3	(1 << 13)
>> +#define COMPAT_HWCAP_VFPV3D16	(1 << 14)
>>  #define COMPAT_HWCAP_TLS	(1 << 15)
>>  #define COMPAT_HWCAP_VFPv4	(1 << 16)
>>  #define COMPAT_HWCAP_IDIVA	(1 << 17)
>>  #define COMPAT_HWCAP_IDIVT	(1 << 18)
>>  #define COMPAT_HWCAP_IDIV	(COMPAT_HWCAP_IDIVA|COMPAT_HWCAP_IDIVT)
>> +#define COMPAT_HWCAP_VFPD32	(1 << 19)
>>  #define COMPAT_HWCAP_LPAE	(1 << 20)
>>  #define COMPAT_HWCAP_EVTSTRM	(1 << 21)
> 
> With the possible exception of SWP (does the swp emulation allow us to
> report this as supported?), I think all these weren't mentioned because
> they aren't included in ARMv8 and so can never be reported.
> 
> If we find ourselves reporting them, there's a bug somewhere.
> 
> So, can we just default all obsolete string entries to NULL?
> 
> When generating the cpuinfo strings we could WARN and just emit an empty
> string for that hwcap.

All these above will be a change in the existing user visible behavior on
the system and this patch never intended to create one. Hence, I will just
defer this to maintainers on whether we should change existing /proc/cpuinfo
output (including non-practically-possible ones on ARMv8) or even treat swap
emulation as SWP.

But IMHO, in case we decide to go for a /proc/cpuinfo change (which I would
be happy implement), it should be applied over and above this patch which
just preserved existing semantics and behavior.

- Anshuman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
