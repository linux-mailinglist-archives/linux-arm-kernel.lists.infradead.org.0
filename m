Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF7944F89
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 00:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XAUO2/9dG1hOj9IVB0cUbbrJ/eKb6SdaecvYYVrCTKY=; b=YU1Kd0rAdzwfdn
	7JnSWiiz1wiKkoCU4gS7WGJ6kPkrWcT0kd05y7qVrIZ2CVeL0Af9bHN8qHkR9kflhPcvl+b1id63C
	QAALbFVj0XlX7TNZg+L6HIu6PRATGEHvuOazd9xoF/P3DP2w/pf3/preWRzG3NZMhefyKxxKSuNyV
	Wqj3byuhq0WzYTqLdhgm06NQasgid2EAPjHzxyAbLaDnFWKenLGIta/8LWsBF8Bs0fJiODsHg1oo3
	VeB5ec0YtPif538vPD5rMLQS6tHKMznTNqgLY2oFPCzB3HeAn16gyusMzBTI2lrp82IjcGdPb/Se2
	TCPo1r/spv9QY3zbd0dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbYXw-0000iq-86; Thu, 13 Jun 2019 22:50:16 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbYXZ-0000iI-76
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 22:49:55 +0000
Received: by mail-pg1-x544.google.com with SMTP id v11so337657pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 15:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=k6Xar2glLHwQeNn6R1ji8rZ9NF01iMIAzLJ4xoiuLOY=;
 b=Y8DKBr1/TsIOIuzwitB3T1W7YWN+CXqNcp/VuBQwp74GtNJDL5X2GasFcG2Lo2kWDV
 7IQ1vqNT4HbVYbsXJMkkMGFokpdIL5TmjLYtabsqqPhs3nGq6+oiVXUeIHl9k2RqOGuT
 NjDfQ8VREFp5cE4s2EjbifQ7cPeGpKfq9kgxcdsnH5I/nI7Ya3CDaH1klpqD5Q1hyCWV
 4QQypBWDfoeWdhUglJa9i4/lIWGmoceNbKiZNyGDarIvrhSoG+HKtCiS+QIXfKVmjYas
 FVzx2SD8qGZm8aNmNcMOCcCMBU7tuj9YrhUKR+kSVrOB9tLEYH//+1X7pV8D5kK8FbZ4
 1ykw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=k6Xar2glLHwQeNn6R1ji8rZ9NF01iMIAzLJ4xoiuLOY=;
 b=KCsos/668CMxlXq6TjO7TyV5eFVOfOlcooyOcUe3FMiA8C4rvz7ekG/urKANrmZ7sb
 bif1u7Wi2PeIu1CMdXDCCjQnpwMqL5zIfzt/rcL6tUKe5LMWIlC/nTX3M4QZUe8aEG+J
 CLoNqlES/Wx/juoWzB3kBPnXtfpGHeRbMVlZIHV6q/1/Y+rC/Fr0Co5mVeedikeKcnPT
 ZkJuXmViWv/aOsFNsDAmbMfOOQ1RY6MG7AQihwJwNv6ANHF0bBxLB3/uty4R+mWIE0GX
 jIcf6IMhehZ6+sN8AnlDILD8vJyqFV7A3dA7VA+a0Cro3vm3V0Gazmg9K/qyhnRdn6XY
 3dqQ==
X-Gm-Message-State: APjAAAXXov5X5usKre0pPpBJy4dWez5M3G/J/iJSqQZWLRxkDVG32l+s
 yK/sKahgG5QqNj0PjYPq2txH8w==
X-Google-Smtp-Source: APXvYqxv559mQ4O7aVghviV8Rq+W2Pn31ny2ZF7QJw7w3BDGwuUqZdShgfe4eC1vvJrSJN59i6HZnw==
X-Received: by 2002:a17:90a:2224:: with SMTP id
 c33mr7832372pje.22.1560466191944; 
 Thu, 13 Jun 2019 15:49:51 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id m16sm732798pfd.127.2019.06.13.15.49.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 15:49:51 -0700 (PDT)
Date: Thu, 13 Jun 2019 15:49:49 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [RFC 1/2] iommu: arm-smmu: Handoff SMR registers and context banks
Message-ID: <20190613224949.GF4814@minitux>
References: <20190605210856.20677-1-bjorn.andersson@linaro.org>
 <20190605210856.20677-2-bjorn.andersson@linaro.org>
 <25f19f09-ab19-a7b3-c31a-f5f29b29fef8@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <25f19f09-ab19-a7b3-c31a-f5f29b29fef8@arm.com>
X-TUID: ToS7Bn5soDWZ
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_154953_333738_7AA9FFB6 
X-CRM114-Status: GOOD (  43.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Patrick Daly <pdaly@codeaurora.org>, Jeffrey Hugo <jhugo@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 13 Jun 04:23 PDT 2019, Robin Murphy wrote:

> On 05/06/2019 22:08, Bjorn Andersson wrote:
> > Boot splash screen or EFI framebuffer requires the display hardware to
> > operate while the Linux iommu driver probes. Therefore, we cannot simply
> > wipe out the SMR register settings programmed by the bootloader.
> > 
> > Detect which SMR registers are in use during probe, and which context
> > banks they are associated with. Reserve these context banks for the
> > first Linux device whose stream-id matches the SMR register.
> > 
> > Any existing page-tables will be discarded.
> 
> That doesn't seem particularly useful :/
> 

In my case all valid CBs have TTBR0 and TTBR1 as 0, so I don't have a
page table. So all I need is a matching stream to keep the display
hardware satisfied.

Is this perhaps the thing that's mentioned as "S2CR bypass" mode?

> Either way, if firmware did set up a translation context, is there any
> guarantee that its pagetables haven't already been stomped on by Linux (e.g.
> via memtest)?
> 

The only way I can think of is if the bootloader would allocate these in
a chunk of memory which it removes from the memory ranges communicated
to the kernel.

In order to support this I believe we would need some logic that
remap the existing page tables and clone them into new ones, and then
update the CBs to match the existing configuration.

But as I said, this is beyond our current needs.

> > Heavily based on downstream implementation by Patrick Daly
> > <pdaly@codeaurora.org>.
> > 
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > ---
> >   drivers/iommu/arm-smmu-regs.h |  2 +
> >   drivers/iommu/arm-smmu.c      | 80 ++++++++++++++++++++++++++++++++---
> >   2 files changed, 77 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/iommu/arm-smmu-regs.h b/drivers/iommu/arm-smmu-regs.h
> > index e9132a926761..8c1fd84032a2 100644
> > --- a/drivers/iommu/arm-smmu-regs.h
> > +++ b/drivers/iommu/arm-smmu-regs.h
> > @@ -105,7 +105,9 @@
> >   #define ARM_SMMU_GR0_SMR(n)		(0x800 + ((n) << 2))
> >   #define SMR_VALID			(1 << 31)
> >   #define SMR_MASK_SHIFT			16
> > +#define SMR_MASK_MASK			0x7fff
> >   #define SMR_ID_SHIFT			0
> > +#define SMR_ID_MASK			0xffff
> 
> The SMR ID and MASK fields are either both 15 bits or both 16 bits,
> depending on EXIDS. This mix-and-match is plain wrong either way.
> 

Okay, I will read up some more on how these pieces works.

> >   #define ARM_SMMU_GR0_S2CR(n)		(0xc00 + ((n) << 2))
> >   #define S2CR_CBNDX_SHIFT		0
> > diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> > index 5e54cc0a28b3..c8629a656b42 100644
> > --- a/drivers/iommu/arm-smmu.c
> > +++ b/drivers/iommu/arm-smmu.c
> > @@ -135,6 +135,7 @@ struct arm_smmu_s2cr {
> >   	enum arm_smmu_s2cr_type		type;
> >   	enum arm_smmu_s2cr_privcfg	privcfg;
> >   	u8				cbndx;
> > +	bool				handoff;
> >   };
> >   #define s2cr_init_val (struct arm_smmu_s2cr){				\
> > @@ -399,9 +400,22 @@ static int arm_smmu_register_legacy_master(struct device *dev,
> >   	return err;
> >   }
> > -static int __arm_smmu_alloc_bitmap(unsigned long *map, int start, int end)
> > +static int __arm_smmu_alloc_cb(struct arm_smmu_device *smmu, int start,
> > +			       struct device *dev)
> >   {
> > +	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
> > +	unsigned long *map = smmu->context_map;
> > +	int end = smmu->num_context_banks;
> > +	int cbndx;
> >   	int idx;
> > +	int i;
> > +
> > +	for_each_cfg_sme(fwspec, i, idx) {
> > +		if (smmu->s2crs[idx].handoff) {
> > +			cbndx = smmu->s2crs[idx].cbndx;
> > +			goto found_handoff;
> > +		}
> > +	}
> >   	do {
> >   		idx = find_next_zero_bit(map, end, start);
> > @@ -410,6 +424,17 @@ static int __arm_smmu_alloc_bitmap(unsigned long *map, int start, int end)
> >   	} while (test_and_set_bit(idx, map));
> >   	return idx;
> > +
> > +found_handoff:
> > +	for (i = 0; i < smmu->num_mapping_groups; i++) {
> > +		if (smmu->s2crs[i].cbndx == cbndx) {
> > +			smmu->s2crs[i].cbndx = 0;
> > +			smmu->s2crs[i].handoff = false;
> > +			smmu->s2crs[i].count--;
> > +		}
> > +	}
> > +
> > +	return cbndx;
> >   }
> >   static void __arm_smmu_free_bitmap(unsigned long *map, int idx)
> > @@ -759,7 +784,8 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
> >   }
> >   static int arm_smmu_init_domain_context(struct iommu_domain *domain,
> > -					struct arm_smmu_device *smmu)
> > +					struct arm_smmu_device *smmu,
> > +					struct device *dev)
> >   {
> >   	int irq, start, ret = 0;
> >   	unsigned long ias, oas;
> > @@ -873,8 +899,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
> >   		ret = -EINVAL;
> >   		goto out_unlock;
> >   	}
> > -	ret = __arm_smmu_alloc_bitmap(smmu->context_map, start,
> > -				      smmu->num_context_banks);
> > +	ret = __arm_smmu_alloc_cb(smmu, start, dev);
> >   	if (ret < 0)
> >   		goto out_unlock;
> > @@ -1264,7 +1289,7 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
> >   		return ret;
> >   	/* Ensure that the domain is finalised */
> > -	ret = arm_smmu_init_domain_context(domain, smmu);
> > +	ret = arm_smmu_init_domain_context(domain, smmu, dev);
> >   	if (ret < 0)
> >   		goto rpm_put;
> > @@ -1798,6 +1823,49 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
> >   	writel(reg, ARM_SMMU_GR0_NS(smmu) + ARM_SMMU_GR0_sCR0);
> >   }
> > +static void arm_smmu_read_smr_state(struct arm_smmu_device *smmu)
> > +{
> > +	u32 privcfg;
> > +	u32 cbndx;
> > +	u32 mask;
> > +	u32 type;
> > +	u32 s2cr;
> > +	u32 smr;
> > +	u32 id;
> > +	int i;
> > +
> > +	for (i = 0; i < smmu->num_mapping_groups; i++) {
> > +		smr = readl_relaxed(ARM_SMMU_GR0(smmu) + ARM_SMMU_GR0_SMR(i));
> 
> What about stream indexing?
> 
> > +		mask = (smr >> SMR_MASK_SHIFT) & SMR_MASK_MASK;
> > +		id = smr & SMR_ID_MASK;
> > +		if (!(smr & SMR_VALID))
> 
> EXIDs again...
> 
> > +			continue;
> > +
> > +		s2cr = readl_relaxed(ARM_SMMU_GR0(smmu) + ARM_SMMU_GR0_S2CR(i));
> > +		type = (s2cr >> S2CR_TYPE_SHIFT) & S2CR_TYPE_MASK;
> > +		cbndx = (s2cr >> S2CR_CBNDX_SHIFT) & S2CR_CBNDX_MASK;
> > +		privcfg = (s2cr >> S2CR_PRIVCFG_SHIFT) & S2CR_PRIVCFG_MASK;
> > +		if (type != S2CR_TYPE_TRANS)
> > +			continue;
> 
> How can you tell whether an SMR or S2CR has been programmed by the firmware,
> or that its UNKNOWN reset value is junk which just happens to look
> plausible?
> 

My expectation was that the reset value of these registers would have
some sane value, preferably without SMR_VALID being set.

> > +
> > +		/* Populate the SMR */
> > +		smmu->smrs[i].mask = mask;
> > +		smmu->smrs[i].id = id;
> > +		smmu->smrs[i].valid = true;
> > +
> > +		/* Populate the S2CR */
> > +		smmu->s2crs[i].group = NULL;
> > +		smmu->s2crs[i].count = 1;
> > +		smmu->s2crs[i].type = type;
> > +		smmu->s2crs[i].privcfg = privcfg;
> > +		smmu->s2crs[i].cbndx = cbndx;
> > +		smmu->s2crs[i].handoff = true;
> > +
> > +		/* Mark the context bank as busy */
> > +		bitmap_set(smmu->context_map, cbndx, 1);
> 
> Does anything prevent the SMMU being suspended between here and whenever the
> relevant drivers(s) show up to properly establish the device links?
> 

There's nothing that prevents a system suspend before such drivers are
inserted and attached.

> > +	}
> > +}
> > +
> >   static int arm_smmu_id_size_to_bits(int size)
> >   {
> >   	switch (size) {
> > @@ -2023,6 +2091,8 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
> >   		dev_notice(smmu->dev, "\tStage-2: %lu-bit IPA -> %lu-bit PA\n",
> >   			   smmu->ipa_size, smmu->pa_size);
> > +	arm_smmu_read_smr_state(smmu);
> > +
> >   	return 0;
> >   }
> 
> Stepping back from the implementation details, I also have concerns that
> this will interact badly with kexec/kdump,

I didn't consider kexec, which I expect would also rule out the type of
DT properties that downstream uses to trigger some of this behavior (as
the same DT would be used by the launched system).

> but mostly the fact that it's at
> best a partial workaround, rather than a real solution to the fundamental
> problem that initialising an IOMMU can break EFIFB/bootsplash/etc.,
> *regardless* of whether the firmware is even aware of said IOMMU at all -
> I've already been living with this on my Juno board for months since EDK2
> gained Arm HDLCD support. AFAICS this can only be solved by some sort of
> RMRR-like mechanism, i.e. firmware providing explicit information about what
> address ranges are currently in use by which devices. I've been pondering
> what a DT-based implementation might look like for a while now, and I guess
> it's probably time to raise it with the IORT spec owners as well.
> 

In the downstream DT targets a static reserved-memory region is used to
ensure Linux doesn't stomp on the actual framebuffer data and iirc the
ACPI firmware has the EFIFB memory region removed as well.

So I was expecting a translation of this particular region, but that's
not what we're seeing. But regardless, Linux needs to be aware of it
somehow, it's just that there's no link between the SMMU configuration
and this region as of today.


As a concrete example, booting a SDM845 based phone with this patch set
(and some debug prints) indicates that I have SMRs for primary and
secondary display pipe and then four entries for the various storage
devices.

> That said, once we've perfected our WIP design for keeping invasive
> implementation details out of the way of each other and the core
> architectural driver flow, I wouldn't rule out the possibility of slotting
> something like this in as a qcom-specific feature if the "we can't change
> the firmware" argument is going to come up.
> 

While it's possible to alter the firmware for specific (and future)
devices, figuring out a way to do this in the kernel will be necessary
for the majority of existing devices. In many cases we can work around
this problem by configuring the bootloader to not do a splash screen but
with EFIFB on the laptops we do not have this ability (and that's why
these patches has not shown up until now).

I'm very much interested in us coming up with a sustainable, generic
solution that we can work with the firmware guys on implementing beyond
the current needs.


I will read up on the stream ids and EXIDs and make the read back of
SMRs conditioned on the qcom compatible.

Thanks Robin

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
