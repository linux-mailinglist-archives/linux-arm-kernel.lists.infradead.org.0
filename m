Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE7BE86CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 12:27:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ob0VRrQBwykKNX73zI4pGRFZPxb2ewOUv8V4xCjDAzQ=; b=PW+gdcJmMz4OY56qyV56jBbOP
	NpOfR9dh4Bzriit79Golwi2+aEvWvWjbX6AoU+s70fveORSU5sIGwz/fRpddeVKO+jJ5hOteaH1Tv
	odklGBxWQqnSXdFRsIMf5n2XLLkOOC6pHyztvGbrsIe+GJ7N8DDh4Uy+I3Kj5CmunoydK3KXKQ6/j
	48OawtMW1u4aqsW369eHL9HTc3EOjMpzYTYr1xS2STd9lPKkPjwxoIuNlnAPFUx98I6yTcV4VTYuT
	ZCsj1flU5EXzzRCusbFNO2wAK9E/pN6T0oyBquKM7G5ahrSax9uCikzskd3xpvqxF7NkfgYrgEUvT
	ztgRDYjCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPew-00061A-NY; Tue, 29 Oct 2019 11:27:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPeB-0005LI-6g
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 11:26:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 02E131F1;
 Tue, 29 Oct 2019 04:26:44 -0700 (PDT)
Received: from [10.1.196.50] (e108454-lin.cambridge.arm.com [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0B61E3F71E;
 Tue, 29 Oct 2019 04:26:42 -0700 (PDT)
Subject: Re: [PATCH] arm64: cpufeature: Export Armv8.6 Matrix feature to
 userspace
To: Will Deacon <will@kernel.org>
References: <20191025171056.30641-1-julien.grall@arm.com>
 <20191029111517.GE11590@willie-the-truck>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <f58cb01f-4543-6041-df2d-7ca7ba887bc9@arm.com>
Date: Tue, 29 Oct 2019 11:26:41 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191029111517.GE11590@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_042647_394641_DF49AF4C 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: catalin.marinas@arm.com, Dave.Martin@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 29/10/2019 11:15, Will Deacon wrote:
> On Fri, Oct 25, 2019 at 06:10:56PM +0100, Julien Grall wrote:
>> This patch provides support for reporting the presence of Armv8.6
>> Matrix and its optional features to userspace.
> 
> Are you sure this is 8.6 and not earlier?

This was introduced by Armv8.6 see [1] but allowed to be used by Armv8.2 and 
onwards.

> 
>> This based on [1] + commit ec52c7134b1f "arm64: cpufeature: Treat
>> ID_AA64ZFR0_EL1 as RAZ when SVE is not enabled" (taken from v5.4-rc4).
>>
>> [1]  arm64/for-next/elf-hwcap-docs
>> ---
>>   Documentation/arm64/cpu-feature-registers.rst |  8 ++++++++
>>   Documentation/arm64/elf_hwcaps.rst            | 15 +++++++++++++++
>>   arch/arm64/include/asm/hwcap.h                |  4 ++++
>>   arch/arm64/include/asm/sysreg.h               |  7 +++++++
>>   arch/arm64/include/uapi/asm/hwcap.h           |  4 ++++
>>   arch/arm64/kernel/cpufeature.c                | 11 +++++++++++
>>   arch/arm64/kernel/cpuinfo.c                   |  4 ++++
>>   7 files changed, 53 insertions(+)
>>
>> diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
>> index ffcf4e2c71ef..d1d6d56a7b08 100644
>> --- a/Documentation/arm64/cpu-feature-registers.rst
>> +++ b/Documentation/arm64/cpu-feature-registers.rst
>> @@ -193,6 +193,8 @@ infrastructure:
>>        +------------------------------+---------+---------+
>>        | Name                         |  bits   | visible |
>>        +------------------------------+---------+---------+
>> +     | I8MM                         | [52-55] |    y    |
>> +     +------------------------------+---------+---------+
> 
> Looking at:
> 
> https://developer.arm.com/docs/ddi0601/latest/aarch64-system-registers/id_aa64isar1_el1
> 
> Then I8MM is advertised as "Armv8.2", alongside other fields that we haven't
> listed here such as BF16 and SPECRES.
> 
> So we probably want a patch bringing all of this up to speed, rather than
> randomly advertising some features and not others.
> 
>>        | SB                           | [36-39] |    y    |
>>        +------------------------------+---------+---------+
>>        | FRINTTS                      | [32-35] |    y    |
>> @@ -227,6 +229,12 @@ infrastructure:
>>        +------------------------------+---------+---------+
>>        | Name                         |  bits   | visible |
>>        +------------------------------+---------+---------+
>> +     | F64MM                        | [56-59] |    y    |
>> +     +------------------------------+---------+---------+
>> +     | F32MM                        | [52-55] |    y    |
>> +     +------------------------------+---------+---------+
>> +     | I8MM                         | [44-47] |    y    |
>> +     +------------------------------+---------+---------+
> 
> Urgh, we're inconsistent in our bitfields. Some are [lo-hi] whilst others
> are [hi-lo]. Please can you fix that in a preparatory patch? I prefer
> [hi-lo] and it matches the arch docs.

Sure.

Cheers,

[1] 
https://community.arm.com/developer/ip-products/processors/b/processors-ip-blog/posts/arm-architecture-developments-armv8-6-a

> 
> Will
> 

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
