Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F06B1D6F9C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 06:23:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=upob+KRUtUghus/xCYLSzL0BeSGITAi8aCBShOkWkOI=; b=kXzX25QIM9S/qb
	lD62fhWXLO7mAkutXDYZFp0wd8yuiOoSYyO0tdQiIJNdS5kr4+RolYlYfchhN2ASrl36hb8QMAWyN
	wFK6VK12VNggMLVbjBy9n+F3Wtt3vnN3rkUQraZl3gGRCDcSZpQGWm556LSwX2q034QDm8wchNcFb
	A6tMsnuYvmCGXnyJezAzylCWAipaLVaYQcJmAtfm/TW16IcQDUhVSp9dFUywxubVYFfr3cJo8wyFz
	kEqAJ7ad6S7D5sjjQxC/Uj5JD7lm8azamEN8fVs3LB+Qme24BsUa/wv9Wb3oMxOHVKeXYfHjrdEIm
	Ouj0Gq1h+A79PDAdj60Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaXIw-0003fJ-7F; Mon, 18 May 2020 04:23:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaXIl-0003e6-Lb
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 04:22:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1E4D7101E;
 Sun, 17 May 2020 21:22:50 -0700 (PDT)
Received: from [10.163.74.67] (unknown [10.163.74.67])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 650DB3F68F;
 Sun, 17 May 2020 21:22:45 -0700 (PDT)
Subject: Re: [RFC PATCH v3 1/2] arm64: tlb: Detect the ARMv8.4 TLBI RANGE
 feature
To: Zhenyu Ye <yezhenyu2@huawei.com>, Mark Rutland <mark.rutland@arm.com>
References: <20200414112835.1121-1-yezhenyu2@huawei.com>
 <20200414112835.1121-2-yezhenyu2@huawei.com>
 <20200505101405.GB82424@C02TD0UTHF1T.local>
 <cb9d32b6-a9d8-3737-e69d-df4191b7afa9@huawei.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <4d8cb48c-4f47-d966-f29b-3343bd966c5f@arm.com>
Date: Mon, 18 May 2020 09:52:12 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <cb9d32b6-a9d8-3737-e69d-df4191b7afa9@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_212255_793850_26CD335C 
X-CRM114-Status: GOOD (  15.04  )
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
Cc: linux-arch@vger.kernel.org, maz@kernel.org, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, xiexiangyou@huawei.com,
 steven.price@arm.com, zhangshaokun@hisilicon.com, linux-mm@kvack.org,
 arm@kernel.org, prime.zeng@hisilicon.com, guohanjun@huawei.com, olof@lixom.net,
 kuhn.chenqun@huawei.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/11/2020 05:55 PM, Zhenyu Ye wrote:
> On 2020/5/5 18:14, Mark Rutland wrote:
>> On Tue, Apr 14, 2020 at 07:28:34PM +0800, Zhenyu Ye wrote:
>>> ARMv8.4-TLBI provides TLBI invalidation instruction that apply to a
>>> range of input addresses. This patch detect this feature.
>>>
>>> Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
>>> ---
>>>  arch/arm64/include/asm/cpucaps.h |  3 ++-
>>>  arch/arm64/include/asm/sysreg.h  |  4 ++++
>>>  arch/arm64/kernel/cpufeature.c   | 11 +++++++++++
>>>  3 files changed, 17 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
>>> index 8eb5a088ae65..950095a72617 100644
>>> --- a/arch/arm64/include/asm/cpucaps.h
>>> +++ b/arch/arm64/include/asm/cpucaps.h
>>> @@ -61,7 +61,8 @@
>>>  #define ARM64_HAS_AMU_EXTN			51
>>>  #define ARM64_HAS_ADDRESS_AUTH			52
>>>  #define ARM64_HAS_GENERIC_AUTH			53
>>> +#define ARM64_HAS_TLBI_RANGE			54
>>>  
>>> -#define ARM64_NCAPS				54
>>> +#define ARM64_NCAPS				55
>>>  
>>>  #endif /* __ASM_CPUCAPS_H */
>>> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
>>> index ebc622432831..ac1b98650234 100644
>>> --- a/arch/arm64/include/asm/sysreg.h
>>> +++ b/arch/arm64/include/asm/sysreg.h
>>> @@ -592,6 +592,7 @@
>>>  
>>>  /* id_aa64isar0 */
>>>  #define ID_AA64ISAR0_RNDR_SHIFT		60
>>> +#define ID_AA64ISAR0_TLBI_RANGE_SHIFT	56
>>>  #define ID_AA64ISAR0_TS_SHIFT		52
>>>  #define ID_AA64ISAR0_FHM_SHIFT		48
>>>  #define ID_AA64ISAR0_DP_SHIFT		44
>>> @@ -605,6 +606,9 @@
>>>  #define ID_AA64ISAR0_SHA1_SHIFT		8
>>>  #define ID_AA64ISAR0_AES_SHIFT		4
>>>  
>>> +#define ID_AA64ISAR0_TLBI_RANGE_NI	0x0
>>> +#define ID_AA64ISAR0_TLBI_RANGE		0x2
>>> +
>>>  /* id_aa64isar1 */
>>>  #define ID_AA64ISAR1_I8MM_SHIFT		52
>>>  #define ID_AA64ISAR1_DGH_SHIFT		48
>>> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
>>> index 9fac745aa7bb..31bcfd0722b5 100644
>>> --- a/arch/arm64/kernel/cpufeature.c
>>> +++ b/arch/arm64/kernel/cpufeature.c
>>> @@ -124,6 +124,7 @@ static bool __system_matches_cap(unsigned int n);
>>>   */
>>>  static const struct arm64_ftr_bits ftr_id_aa64isar0[] = {
>>>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_RNDR_SHIFT, 4, 0),
>>> +	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_TLBI_RANGE_SHIFT, 4, 0),

Hello Zhenyu,

This is already being added through another patch [1] in a series [2] which primarily
has cpufeature changes. I will soon update the series making this feature FTR_HIDDEN.

[1] https://patchwork.kernel.org/patch/11523881/
[2] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=281211

I am planning to respin the series (V4) based on arm64 tree (for-next/cpufeature). So
could you please rebase this patch (probably dropping cpufeature related changes) on
upcoming V4, so that all the changes will be based on arm64 tree (for-next/cpufeature).

- Anshuman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
