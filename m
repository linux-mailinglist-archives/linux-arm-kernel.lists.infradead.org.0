Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D64981C4EBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 09:02:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/+osn9lFNPGgRtj4vB1RzFgmI8abKZDVhfeZMsTDf8=; b=C7q60pQxqdfD8g
	vxnI2XMspz+c1Zu1guaKPNCL+wga5lvyrwcCxlUnBxqgr6QImjpnJlreQKZj2DRFavw3mjOD5Y31H
	r9zYvQpYyOLlm/nRk9HGd8n5LwPfj6qAuM96RO+mUovYjHYfY8vnzMqASCYRQZgBe2UcpDvkvZrOP
	gxWmbVVRFOeCiv34C072OSfBFErhlv5q3GISj6KvrhuxH23jSD1a0MF4nfpoBIgIQup0fL7S6ogO4
	SC/2TH4cmRoYIjuqC63N9IC1rCcDR3cxWilwybGfIsEZEr5nTg1xmvyKsdNdF4ZvAb+8K06mRsVXp
	TgrKFMO7e1Ux+2AEDcxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVrbA-0006md-Nj; Tue, 05 May 2020 07:02:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVrb4-0006lO-04
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 07:02:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 599271FB;
 Tue,  5 May 2020 00:02:28 -0700 (PDT)
Received: from [10.163.71.248] (unknown [10.163.71.248])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 467B53F68F;
 Tue,  5 May 2020 00:02:24 -0700 (PDT)
Subject: Re: [PATCH V3 06/16] arm64/cpufeature: Introduce ID_MMFR5 CPU register
To: Will Deacon <will@kernel.org>
References: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
 <1588426445-24344-7-git-send-email-anshuman.khandual@arm.com>
 <20200504203313.GB5012@willie-the-truck>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <97cd9ba9-d5de-2a85-5eac-0cb460061617@arm.com>
Date: Tue, 5 May 2020 12:31:54 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200504203313.GB5012@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_000230_126963_578E79DC 
X-CRM114-Status: GOOD (  18.83  )
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
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/05/2020 02:03 AM, Will Deacon wrote:
> On Sat, May 02, 2020 at 07:03:55PM +0530, Anshuman Khandual wrote:
>> This adds basic building blocks required for ID_MMFR5 CPU register which
>> provides information about the implemented memory model and memory
>> management support in AArch32 state. This is added per ARM DDI 0487F.a
>> specification.
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Marc Zyngier <maz@kernel.org>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: James Morse <james.morse@arm.com>
>> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
>> Cc: kvmarm@lists.cs.columbia.edu
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-kernel@vger.kernel.org
>>
>> Suggested-by: Will Deacon <will@kernel.org>
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> ---
>>  arch/arm64/include/asm/cpu.h    |  1 +
>>  arch/arm64/include/asm/sysreg.h |  3 +++
>>  arch/arm64/kernel/cpufeature.c  | 10 ++++++++++
>>  arch/arm64/kernel/cpuinfo.c     |  1 +
>>  arch/arm64/kvm/sys_regs.c       |  2 +-
>>  5 files changed, 16 insertions(+), 1 deletion(-)
> 
> [...]
> 
>> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
>> index 2ce952d9668d..c790cc200bb1 100644
>> --- a/arch/arm64/kernel/cpufeature.c
>> +++ b/arch/arm64/kernel/cpufeature.c
>> @@ -403,6 +403,11 @@ static const struct arm64_ftr_bits ftr_id_isar4[] = {
>>  	ARM64_FTR_END,
>>  };
>>  
>> +static const struct arm64_ftr_bits ftr_id_mmfr5[] = {
>> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_MMFR5_ETS_SHIFT, 4, 0),
>> +	ARM64_FTR_END,
>> +};
>> +
>>  static const struct arm64_ftr_bits ftr_id_isar6[] = {
>>  	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_ISAR6_I8MM_SHIFT, 4, 0),
>>  	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_ISAR6_BF16_SHIFT, 4, 0),
>> @@ -527,6 +532,7 @@ static const struct __ftr_reg_entry {
>>  	ARM64_FTR_REG(SYS_MVFR2_EL1, ftr_mvfr2),
>>  	ARM64_FTR_REG(SYS_ID_PFR2_EL1, ftr_id_pfr2),
>>  	ARM64_FTR_REG(SYS_ID_DFR1_EL1, ftr_id_dfr1),
>> +	ARM64_FTR_REG(SYS_ID_MMFR5_EL1, ftr_id_mmfr5),
>>  
>>  	/* Op1 = 0, CRn = 0, CRm = 4 */
>>  	ARM64_FTR_REG(SYS_ID_AA64PFR0_EL1, ftr_id_aa64pfr0),
>> @@ -732,6 +738,7 @@ void __init init_cpu_features(struct cpuinfo_arm64 *info)
>>  		init_cpu_ftr_reg(SYS_ID_MMFR1_EL1, info->reg_id_mmfr1);
>>  		init_cpu_ftr_reg(SYS_ID_MMFR2_EL1, info->reg_id_mmfr2);
>>  		init_cpu_ftr_reg(SYS_ID_MMFR3_EL1, info->reg_id_mmfr3);
>> +		init_cpu_ftr_reg(SYS_ID_MMFR5_EL1, info->reg_id_mmfr5);
>>  		init_cpu_ftr_reg(SYS_ID_PFR0_EL1, info->reg_id_pfr0);
>>  		init_cpu_ftr_reg(SYS_ID_PFR1_EL1, info->reg_id_pfr1);
>>  		init_cpu_ftr_reg(SYS_ID_PFR2_EL1, info->reg_id_pfr2);
>> @@ -866,6 +873,8 @@ static int update_32bit_cpu_features(int cpu, struct cpuinfo_arm64 *info,
>>  				      info->reg_id_mmfr2, boot->reg_id_mmfr2);
>>  	taint |= check_update_ftr_reg(SYS_ID_MMFR3_EL1, cpu,
>>  				      info->reg_id_mmfr3, boot->reg_id_mmfr3);
> 
> Looks like MMFR4 is missing here?

ID_MMFR4 is missing from cpuinfo_arm64 itself, hence from init_cpu_features()
and update_cpu_features() as well. But it is defined in arm64_ftr_regs[]. I
was wondering about it but left as it is (due to lack of complete context).
Unless there is any other concern, will add it up in cpuinfo_arm64 and make
it a part of the CPU context.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
