Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0D01D19AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:43:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iV5IomiSyAZl3eGxm9ByToGgJj1qwj2LaQrMaeKYHMc=; b=rZrzuvzKKfZ2TqqbWe5r/E5Zh
	OZnQV3nvZq5lwrmGx2VGvOHaJ7DfNAUQxBgaZbeSNDjqyQ1ewnkDaNEJA5hwocyNO4EcrTR5CRrWY
	UnHCqesGuN5vtmdNCf2dqwHbGfggBUOA2COk69ahzf/C8pWjVeGgRe8cl8xGpCKL9NQdlXi7oUh8e
	DGoRBiZaVS/Kvj+3eQ/HnD94SSEL5tiD+qBr0UUmQ5PAQFRPVPLex+CviRAEEPoE1JpO1WgqfL00U
	gamUxC3EjOi9NDaPsYbmpymBLRCkkxmu18thzp7NHIMEt82sKxTbNYajXn5XA3DLkWRnk80OmiqqH
	bEUQZPZnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtXD-0007D6-Gx; Wed, 13 May 2020 15:43:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtWr-00076y-Lb
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 15:42:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 05EEA31B;
 Wed, 13 May 2020 08:42:38 -0700 (PDT)
Received: from [10.57.23.206] (unknown [10.57.23.206])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E0123F305;
 Wed, 13 May 2020 08:42:29 -0700 (PDT)
Subject: Re: [PATCH v2 3/4] arm64: cpufeature: Modify address authentication
 cpufeature to exact
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1586842314-19527-1-git-send-email-amit.kachhap@arm.com>
 <1586842314-19527-4-git-send-email-amit.kachhap@arm.com>
 <20200506171350.GH2878@gaia> <426d96ef-6a89-6ee5-c0e0-383b297f7f9f@arm.com>
 <20200512173301.GB21213@C02TF0J2HF1T.local>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <ba6de270-fd9c-d623-69a1-f3340898336f@arm.com>
Date: Wed, 13 May 2020 21:12:03 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200512173301.GB21213@C02TF0J2HF1T.local>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_084241_840070_E87FF2F7 
X-CRM114-Status: GOOD (  25.97  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/12/20 11:03 PM, Catalin Marinas wrote:
> On Fri, May 08, 2020 at 09:51:53PM +0530, Amit Kachhap wrote:
>> On 5/6/20 10:43 PM, Catalin Marinas wrote:
>>> On Tue, Apr 14, 2020 at 11:01:53AM +0530, Amit Daniel Kachhap wrote:
>>>> This patch modifies the address authentication cpufeature type to EXACT
>>>> from earlier LOWER_SAFE as the different configurations added for Armv8.6
>>>> enhanced PAC have different behaviour and there is no tunable to enable the
>>>> lower safe versions. The safe value is set as 0.
>>>>
>>>> After this change, if there is any variation in configurations in secondary
>>>> cpus from boot cpu then those cpus are marked tainted. The KVM guests may
>>>> completely disable address authentication if there is any such variations
>>>> detected.
>>>>
>>>> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
>>>> ---
>>>>    arch/arm64/kernel/cpufeature.c | 4 ++--
>>>>    1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
>>>> index 08795025409c..599b03df2f93 100644
>>>> --- a/arch/arm64/kernel/cpufeature.c
>>>> +++ b/arch/arm64/kernel/cpufeature.c
>>>> @@ -154,9 +154,9 @@ static const struct arm64_ftr_bits ftr_id_aa64isar1[] = {
>>>>    	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_FCMA_SHIFT, 4, 0),
>>>>    	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_JSCVT_SHIFT, 4, 0),
>>>>    	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
>>>> -		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_API_SHIFT, 4, 0),
>>>> +		       FTR_STRICT, FTR_EXACT, ID_AA64ISAR1_API_SHIFT, 4, 0),
>>>>    	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
>>>> -		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_APA_SHIFT, 4, 0),
>>>> +		       FTR_STRICT, FTR_EXACT, ID_AA64ISAR1_APA_SHIFT, 4, 0),
>>>>    	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_DPB_SHIFT, 4, 0),
>>>>    	ARM64_FTR_END,
>>>
>>> Is this sufficient? If we have the boot CPU already enabling the ptrauth
>>> and we get a secondary CPU with a different ISAR1 field that matches the
>>> address auth in cpufeature.c, we still allow it to boot. We no longer
>>> report the feature to the user system_supports_address_auth() is true
>>> while system_supports_generic_auth() would be false as it checks the
>>> sanitised feature registers.
>>
>> Yes agreed. Generic authentication also needs EXACT cpufeature type.
> 
> I'm still not sure that's sufficient. If we boot the primary CPU with
> ptrauth as detected in proc.S, we consider this a boot feature so all
> secondary CPUs must have it. Subsequent CPUs are currently checked via
> the arm64_features[] definitions and we allow them to boot if the ID is
> at least that of the boot CPU. How does this interact with the above
> FTR_EXACT changes?

Unfortunately FTR_EXACT does not effect the bootflow directly but marks
the cpu TAINTED and goes ahead.

> 
> My concern is that we boot with PAC enabled on all CPUs but because of
> the FTR_EXACT, the sanitised ID registers no longer report the feature.
> 

You are right that PAC is enabled in hardware but un-reported to user in 
this case.

The issue here is in feature_matches() which only validates with the
entry->min_field_value. If we can modify this value to boot cpu value
for FTR_EXACT type then this cpu will fail to online.
May be we can introduce a new structure or make arm64_feature[] writable 
for this.

Something like below code.
-------------------------------------------------------------------------
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 3ae35aadbc20..967928568edf 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -103,6 +103,8 @@ DECLARE_BITMAP(boot_capabilities, ARM64_NPATCHABLE);
  bool arm64_use_ng_mappings = false;
  EXPORT_SYMBOL(arm64_use_ng_mappings);

+u8 min_cap_value[ARM64_NCAPS];
+
  /*
   * Flag to indicate if we have computed the system wide
   * capabilities based on the boot time active CPUs. This
@@ -616,6 +618,17 @@ static void __init sort_ftr_regs(void)
                 BUG_ON(arm64_ftr_regs[i].sys_id < arm64_ftr_regs[i - 
1].sys_id);
  }

+static void __init update_cpu_capability_min(u32 sys_reg, s64 new)
+{
+       const struct arm64_cpu_capabilities *caps = arm64_features;
+       for (; caps->matches; caps++) {
+               if (caps->sys_reg == sys_reg) {
+                       if (caps->min_field_value)
+                               min_cap_value[caps->capability] = new;
+               }
+       }
+}
+
  /*
   * Initialise the CPU feature register from Boot CPU values.
   * Also initiliases the strict_mask for the register.
@@ -649,6 +662,8 @@ static void __init init_cpu_ftr_reg(u32 sys_reg, u64 
new)
                         reg->user_val = arm64_ftr_set_value(ftrp,
                                                             reg->user_val,
 
ftrp->safe_val);
+               if (ftrp->type == FTR_EXACT)
+                       update_cpu_capability_min(sys_reg, ftr_new);
         }

         val &= valid_mask;
@@ -1021,8 +1036,10 @@ static bool
  feature_matches(u64 reg, const struct arm64_cpu_capabilities *entry)
  {
         int val = cpuid_feature_extract_field(reg, entry->field_pos, 
entry->sign);
-
-       return val >= entry->min_field_value;
+       if (min_cap_value[entry->capability])
+               return val >= min_cap_value[entry->capability];
+       else
+               return val >= entry->min_field_value;
  }

  static bool

-------------------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
