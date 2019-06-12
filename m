Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 062FB42FCE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 21:17:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kbGcqwFRFHYoTzyYS7oZsuNOqDjsI7/JCruNaz7HsTg=; b=mc6fB4AimFbC3cNi33Ax8OpIi
	BgZCHLTHpOytmubP298K8Mmyj5i6dtoS2wGoZ+P6AcK3goqVTdRzL28wdEPv3woOCURDbQMI98XWR
	7NgY94/AvjoY3NVQk82S1EAatDhfCfCgXlTXWaZZkX23ks+OWrU/zpMJBs6DvJ5K6YhXpCcQDD2Qi
	rLTl3L14QIGZCqF9NdYQDmpsYjnbM9+ubfv3ef69ezMQg8+sEULSultPUGOqkbRIrxvX9x+oUKBlq
	FdbQ17v40d0Ba+H9x8XRP67BobOulhTltplrjs7d6+ibljoxHzamilLG0Bv3Rd24GcIxcv008xsib
	r1ltycAaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb8kI-0006br-O6; Wed, 12 Jun 2019 19:17:18 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb8k4-0006a0-U9
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 19:17:07 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id ADB3760237; Wed, 12 Jun 2019 19:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560367020;
 bh=PSf9e7J3GJAB0KrhXWmsodjEEcwn8RchoFOPIRB6r8Q=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=OGvrC7iV0kWd1FCwZ2BP+l9LSo4I1c9rLwdo//VW2S/BPayfqO+lSdmd/5MuYEWaZ
 ICdKW6PTeNVDsQDDOU/JY9yzj1MIB33qznbwuQqT89J4JKpEci/68HIc/bezAjnO+h
 Im2eVlBPPdAKUbZNdm69UJouogRVBXVOavLyk+Fc=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.226.58.28] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jhugo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1BA8460132;
 Wed, 12 Jun 2019 19:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560367019;
 bh=PSf9e7J3GJAB0KrhXWmsodjEEcwn8RchoFOPIRB6r8Q=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=fAxtDlA59gTAs4k2jkpHCE+k5Tx+diHte1509ohhhxO4wRj8IXHypWH0/hsFaL746
 tAgAuF4t1oFbaGLjVZ5VrxdBdXj8xuSUEzhnGpBAkIeqgSQT1/f2Xit3UoUBcynO0/
 XfEnSb+YunXoYMvTskymdWwMsBY0ZD1BseyZQVZo=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1BA8460132
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jhugo@codeaurora.org
Subject: Re: [RFC 1/2] iommu: arm-smmu: Handoff SMR registers and context banks
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
References: <20190605210856.20677-1-bjorn.andersson@linaro.org>
 <20190605210856.20677-2-bjorn.andersson@linaro.org>
 <CAOCk7NpuxpGGYwiPSdwkrZrM=u-euAUTX3wa-yaEsKocDUx-UA@mail.gmail.com>
 <20190612184216.GB4814@minitux>
From: Jeffrey Hugo <jhugo@codeaurora.org>
Message-ID: <1e7d9fd3-10ff-fab5-93ff-88228c903191@codeaurora.org>
Date: Wed, 12 Jun 2019 13:16:57 -0600
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190612184216.GB4814@minitux>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_121705_000724_8880E3CD 
X-CRM114-Status: GOOD (  30.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Patrick Daly <pdaly@codeaurora.org>, MSM <linux-arm-msm@vger.kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 lkml <linux-kernel@vger.kernel.org>, iommu@lists.linux-foundation.org,
 Vivek Gautam <vivek.gautam@codeaurora.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/12/2019 12:42 PM, Bjorn Andersson wrote:
> On Wed 12 Jun 11:07 PDT 2019, Jeffrey Hugo wrote:
> 
>> On Wed, Jun 5, 2019 at 3:09 PM Bjorn Andersson
>> <bjorn.andersson@linaro.org> wrote:
>>>
>>> Boot splash screen or EFI framebuffer requires the display hardware to
>>> operate while the Linux iommu driver probes. Therefore, we cannot simply
>>> wipe out the SMR register settings programmed by the bootloader.
>>>
>>> Detect which SMR registers are in use during probe, and which context
>>> banks they are associated with. Reserve these context banks for the
>>> first Linux device whose stream-id matches the SMR register.
>>>
>>> Any existing page-tables will be discarded.
>>>
>>> Heavily based on downstream implementation by Patrick Daly
>>> <pdaly@codeaurora.org>.
>>>
>>> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>>
>> Reviewed-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
>>
>> This is very similar to the hacked up version I did, and I'm glad to see it
>> cleaned up and posted.
>>
>> This is important work, and I want to see it move forward, however it doesn't
>> completely address everything, IMO.  Fixing the remaining issues certainly
>> can be follow on work, but I don't know if they would end up affecting this
>> implementation.
>>
>> So, with this series, we've gone from a crash on msm8998/sdm845, to causing
>> context faults.  This is because while we are now not nuking the config, we
>> are preventing the bootloader installed translations from working.  Essentially
>> the display already has a mapping (technically passthrough) that is likely being
>> used by EFIFB.  The instant the SMMU inits, that mapping becomes invalid,
>> and the display is going to generate context faults.  While not fatal,
>> this provides
>> a bad user experience as there are nasty messages, and EFIFB stops working.
>>
>> The situation does get resolved once the display driver inits and takes over the
>> HW and SMMU mappings, so we are not stuck with it, but it would be nice to
>> have that addressed as well, ie have EFIFB working up until the Linux display
>> driver takes over.
>>
> 
> But do you see this even though you don't enable the mdss driver?
> 
>> The only way I can see that happening is if the SMMU leaves the context bank
>> alone, with M == 0, and the iommu framework defines a domain attribute or
>> some other mechanism to allow the driver to flip the M bit in the context bank
>> after installing the necessary handover translations.
>>
> 
>  From what I can tell this implementation leaves the framebuffer mapping
> in working condition until the attach_dev of the display driver, at
> which time we do get context faults until the display driver is done
> initializing things.
> 
> So we're reducing the problem to a question of how to seamlessly carry
> over the mapping during the attach.

Actually, you are correct.  Without mdss this won't occur.  The window 
is from the creation of the default domain for the mdss device, to the 
point that the display is fully init'd (and EFIFB is shut down).

> 
> Regards,
> Bjorn
> 
>>> ---
>>>   drivers/iommu/arm-smmu-regs.h |  2 +
>>>   drivers/iommu/arm-smmu.c      | 80 ++++++++++++++++++++++++++++++++---
>>>   2 files changed, 77 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/iommu/arm-smmu-regs.h b/drivers/iommu/arm-smmu-regs.h
>>> index e9132a926761..8c1fd84032a2 100644
>>> --- a/drivers/iommu/arm-smmu-regs.h
>>> +++ b/drivers/iommu/arm-smmu-regs.h
>>> @@ -105,7 +105,9 @@
>>>   #define ARM_SMMU_GR0_SMR(n)            (0x800 + ((n) << 2))
>>>   #define SMR_VALID                      (1 << 31)
>>>   #define SMR_MASK_SHIFT                 16
>>> +#define SMR_MASK_MASK                  0x7fff
>>>   #define SMR_ID_SHIFT                   0
>>> +#define SMR_ID_MASK                    0xffff
>>>
>>>   #define ARM_SMMU_GR0_S2CR(n)           (0xc00 + ((n) << 2))
>>>   #define S2CR_CBNDX_SHIFT               0
>>> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
>>> index 5e54cc0a28b3..c8629a656b42 100644
>>> --- a/drivers/iommu/arm-smmu.c
>>> +++ b/drivers/iommu/arm-smmu.c
>>> @@ -135,6 +135,7 @@ struct arm_smmu_s2cr {
>>>          enum arm_smmu_s2cr_type         type;
>>>          enum arm_smmu_s2cr_privcfg      privcfg;
>>>          u8                              cbndx;
>>> +       bool                            handoff;
>>>   };
>>>
>>>   #define s2cr_init_val (struct arm_smmu_s2cr){                          \
>>> @@ -399,9 +400,22 @@ static int arm_smmu_register_legacy_master(struct device *dev,
>>>          return err;
>>>   }
>>>
>>> -static int __arm_smmu_alloc_bitmap(unsigned long *map, int start, int end)
>>> +static int __arm_smmu_alloc_cb(struct arm_smmu_device *smmu, int start,
>>> +                              struct device *dev)
>>>   {
>>> +       struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
>>> +       unsigned long *map = smmu->context_map;
>>> +       int end = smmu->num_context_banks;
>>> +       int cbndx;
>>>          int idx;
>>> +       int i;
>>> +
>>> +       for_each_cfg_sme(fwspec, i, idx) {
>>> +               if (smmu->s2crs[idx].handoff) {
>>> +                       cbndx = smmu->s2crs[idx].cbndx;
>>> +                       goto found_handoff;
>>> +               }
>>> +       }
>>>
>>>          do {
>>>                  idx = find_next_zero_bit(map, end, start);
>>> @@ -410,6 +424,17 @@ static int __arm_smmu_alloc_bitmap(unsigned long *map, int start, int end)
>>>          } while (test_and_set_bit(idx, map));
>>>
>>>          return idx;
>>> +
>>> +found_handoff:
>>> +       for (i = 0; i < smmu->num_mapping_groups; i++) {
>>> +               if (smmu->s2crs[i].cbndx == cbndx) {
>>> +                       smmu->s2crs[i].cbndx = 0;
>>> +                       smmu->s2crs[i].handoff = false;
>>> +                       smmu->s2crs[i].count--;
>>> +               }
>>> +       }
>>> +
>>> +       return cbndx;
>>>   }
>>>
>>>   static void __arm_smmu_free_bitmap(unsigned long *map, int idx)
>>> @@ -759,7 +784,8 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
>>>   }
>>>
>>>   static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>>> -                                       struct arm_smmu_device *smmu)
>>> +                                       struct arm_smmu_device *smmu,
>>> +                                       struct device *dev)
>>>   {
>>>          int irq, start, ret = 0;
>>>          unsigned long ias, oas;
>>> @@ -873,8 +899,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>>>                  ret = -EINVAL;
>>>                  goto out_unlock;
>>>          }
>>> -       ret = __arm_smmu_alloc_bitmap(smmu->context_map, start,
>>> -                                     smmu->num_context_banks);
>>> +       ret = __arm_smmu_alloc_cb(smmu, start, dev);
>>>          if (ret < 0)
>>>                  goto out_unlock;
>>>
>>> @@ -1264,7 +1289,7 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
>>>                  return ret;
>>>
>>>          /* Ensure that the domain is finalised */
>>> -       ret = arm_smmu_init_domain_context(domain, smmu);
>>> +       ret = arm_smmu_init_domain_context(domain, smmu, dev);
>>>          if (ret < 0)
>>>                  goto rpm_put;
>>>
>>> @@ -1798,6 +1823,49 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
>>>          writel(reg, ARM_SMMU_GR0_NS(smmu) + ARM_SMMU_GR0_sCR0);
>>>   }
>>>
>>> +static void arm_smmu_read_smr_state(struct arm_smmu_device *smmu)
>>> +{
>>> +       u32 privcfg;
>>> +       u32 cbndx;
>>> +       u32 mask;
>>> +       u32 type;
>>> +       u32 s2cr;
>>> +       u32 smr;
>>> +       u32 id;
>>> +       int i;
>>> +
>>> +       for (i = 0; i < smmu->num_mapping_groups; i++) {
>>> +               smr = readl_relaxed(ARM_SMMU_GR0(smmu) + ARM_SMMU_GR0_SMR(i));
>>> +               mask = (smr >> SMR_MASK_SHIFT) & SMR_MASK_MASK;
>>> +               id = smr & SMR_ID_MASK;
>>> +               if (!(smr & SMR_VALID))
>>> +                       continue;
>>> +
>>> +               s2cr = readl_relaxed(ARM_SMMU_GR0(smmu) + ARM_SMMU_GR0_S2CR(i));
>>> +               type = (s2cr >> S2CR_TYPE_SHIFT) & S2CR_TYPE_MASK;
>>> +               cbndx = (s2cr >> S2CR_CBNDX_SHIFT) & S2CR_CBNDX_MASK;
>>> +               privcfg = (s2cr >> S2CR_PRIVCFG_SHIFT) & S2CR_PRIVCFG_MASK;
>>> +               if (type != S2CR_TYPE_TRANS)
>>> +                       continue;
>>> +
>>> +               /* Populate the SMR */
>>> +               smmu->smrs[i].mask = mask;
>>> +               smmu->smrs[i].id = id;
>>> +               smmu->smrs[i].valid = true;
>>> +
>>> +               /* Populate the S2CR */
>>> +               smmu->s2crs[i].group = NULL;
>>> +               smmu->s2crs[i].count = 1;
>>> +               smmu->s2crs[i].type = type;
>>> +               smmu->s2crs[i].privcfg = privcfg;
>>> +               smmu->s2crs[i].cbndx = cbndx;
>>> +               smmu->s2crs[i].handoff = true;
>>> +
>>> +               /* Mark the context bank as busy */
>>> +               bitmap_set(smmu->context_map, cbndx, 1);
>>> +       }
>>> +}
>>> +
>>>   static int arm_smmu_id_size_to_bits(int size)
>>>   {
>>>          switch (size) {
>>> @@ -2023,6 +2091,8 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
>>>                  dev_notice(smmu->dev, "\tStage-2: %lu-bit IPA -> %lu-bit PA\n",
>>>                             smmu->ipa_size, smmu->pa_size);
>>>
>>> +       arm_smmu_read_smr_state(smmu);
>>> +
>>>          return 0;
>>>   }
>>>
>>> --
>>> 2.18.0
>>>
>>>
>>> _______________________________________________
>>> linux-arm-kernel mailing list
>>> linux-arm-kernel@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
