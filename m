Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B031CA625
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 10:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4OB8eJJcY5ZZYNWxyThxTBJPEuVGaxYQ8OIf+KE0tGQ=; b=VUocbyffBbK0qk
	/3vVN79wluqtYjcM9GNDrAiLAfay05uZc62oLpw6MPYwewbjyHCP1aYpdnHqkCHiJ5Has4jHIcCaO
	3RHj4dlIPJTPPOVi04Py9w7L2cljf1q5CmhxgUYToieDM8hC7yWPICLxloYWFXbmRjocq4dMLt3mY
	DcA+KyHERztc18ewtPZlL7ZF+BulaqchGtfzP2nl+5PAkkiAk2x5dyQgbllH17MrwJ0Xmdt1dPB36
	p2PqV4kFeH6MM2y0pPE7Kazu8XqbTCZJpM6lfbsdexWEMly9L+7WpZMh0UMghghOuZ3pJTA+nK2fR
	unCdhp3Qzd/fXT11rZng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWyRn-00060C-1n; Fri, 08 May 2020 08:33:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWyRT-0005wZ-8E
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 08:33:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 021CA1FB;
 Fri,  8 May 2020 01:33:10 -0700 (PDT)
Received: from [10.163.73.155] (unknown [10.163.73.155])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB1ED3F305;
 Fri,  8 May 2020 01:33:06 -0700 (PDT)
Subject: Re: [PATCH V3 04/16] arm64/cpufeature: Introduce ID_PFR2 CPU register
To: Will Deacon <will@kernel.org>
References: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
 <1588426445-24344-5-git-send-email-anshuman.khandual@arm.com>
 <20200505111241.GF19710@willie-the-truck>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <918e2dfb-4b3b-c1e6-3151-c81ac9f416b6@arm.com>
Date: Fri, 8 May 2020 14:02:35 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200505111241.GF19710@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_013311_364176_B9665507 
X-CRM114-Status: GOOD (  15.15  )
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



On 05/05/2020 04:42 PM, Will Deacon wrote:
> On Sat, May 02, 2020 at 07:03:53PM +0530, Anshuman Khandual wrote:
>> This adds basic building blocks required for ID_PFR2 CPU register which
>> provides information about the AArch32 programmers model which must be
>> interpreted along with ID_PFR0 and ID_PFR1 CPU registers. This is added
>> per ARM DDI 0487F.a specification.
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
>> Suggested-by: Mark Rutland <mark.rutland@arm.com>
>> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> ---
>>  arch/arm64/include/asm/cpu.h    |  1 +
>>  arch/arm64/include/asm/sysreg.h |  4 ++++
>>  arch/arm64/kernel/cpufeature.c  | 11 +++++++++++
>>  arch/arm64/kernel/cpuinfo.c     |  1 +
>>  arch/arm64/kvm/sys_regs.c       |  2 +-
>>  5 files changed, 18 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/include/asm/cpu.h b/arch/arm64/include/asm/cpu.h
>> index b4a40535a3d8..464e828a994d 100644
>> --- a/arch/arm64/include/asm/cpu.h
>> +++ b/arch/arm64/include/asm/cpu.h
>> @@ -46,6 +46,7 @@ struct cpuinfo_arm64 {
>>  	u32		reg_id_mmfr3;
>>  	u32		reg_id_pfr0;
>>  	u32		reg_id_pfr1;
>> +	u32		reg_id_pfr2;
>>  
>>  	u32		reg_mvfr0;
>>  	u32		reg_mvfr1;
>> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
>> index e5317a6367b6..c977449e02db 100644
>> --- a/arch/arm64/include/asm/sysreg.h
>> +++ b/arch/arm64/include/asm/sysreg.h
>> @@ -153,6 +153,7 @@
>>  #define SYS_MVFR0_EL1			sys_reg(3, 0, 0, 3, 0)
>>  #define SYS_MVFR1_EL1			sys_reg(3, 0, 0, 3, 1)
>>  #define SYS_MVFR2_EL1			sys_reg(3, 0, 0, 3, 2)
>> +#define SYS_ID_PFR2_EL1			sys_reg(3, 0, 0, 3, 4)
> 
> nit: but please group these defines by name rather than encoding.

Sure, will do the same for all new register being added in the series.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
