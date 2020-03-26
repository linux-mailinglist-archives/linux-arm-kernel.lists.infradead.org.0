Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F10194121
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 15:19:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a6jFUOVs/JuZnumkUEBp2toNH6qyzZbe8qpi4VKeEa0=; b=j5cczFJ2ZWWPayyaRsPAj8JVQ
	kAxbMR8fFcR8cqkQ2bD0NHi627NXvfIY0PmnXnrA9DPqWuOtPxURatdARhp1avTDtI3rscZjJfF/9
	atQUS4YFxa0VH7y7UOzHQaJQ5rq6ww5Nos0pVmSko1zZNlwlh76zxTQL0GChYtGJFnkKe7gzypDT3
	XwolcDneQqnI+77CbQ41rbM8JpsAM42IXEY7IbhScXoaEqaW0zOHiPE+ltdHWnS193ynRlMTYL4Pa
	EJCSeflaWcaLZjeMFI85b6Gt8wCHzZRYm6wiX0XqMS0Wi4Rn0CbYcWDXycqJm2EhLEvFqlDqhi5v3
	vVXp97rKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHTMC-00070u-6i; Thu, 26 Mar 2020 14:19:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHTM1-0006zc-4V; Thu, 26 Mar 2020 14:19:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 12EFE7FA;
 Thu, 26 Mar 2020 07:19:26 -0700 (PDT)
Received: from [10.57.60.204] (unknown [10.57.60.204])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C8C773F71F;
 Thu, 26 Mar 2020 07:19:24 -0700 (PDT)
Subject: Re: arm64: Getting continuous PCIe "CmpltTO" AER from network card in
 kdump kernel
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
References: <CAJ2QiJLbFGbmrFP9EEyAWJWf4=SQxEe_J4bqwYw0EXqBkL5xZA@mail.gmail.com>
 <e8a58616-aeae-ad78-d496-6dfcef4ddcaa@arm.com>
 <CAJ2QiJJ=NK2Piq_7i1kfeP1yB7vDNcTtKnXWOQ5Us2EE7ipXBA@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <150e513c-a017-ba7b-5a42-0243e632e62c@arm.com>
Date: Thu, 26 Mar 2020 14:19:23 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAJ2QiJJ=NK2Piq_7i1kfeP1yB7vDNcTtKnXWOQ5Us2EE7ipXBA@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_071929_267983_3DB2D80E 
X-CRM114-Status: GOOD (  22.17  )
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
Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Bhupesh Sharma <bhsharma@redhat.com>, will.deacon@arm.com,
 Bjorn Helgaas <helgaas@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-26 1:36 pm, Prabhakar Kushwaha wrote:
> On Mon, Mar 23, 2020 at 10:28 PM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 2020-03-23 3:21 pm, Prabhakar Kushwaha wrote:
>>> Hi All,
>>>
>>> I am facing issue on Marvell's ARM64 Thunder X2 with kdump kernel.
>>> Here network card is continuously giving following AER error
>>> [  100.839168] igb 0000:09:00.1: AER: aer_status: 0x00004000,
>>> aer_mask: 0x00000000
>>> [  100.846463] igb 0000:09:00.1: AER:    [14] CmpltTO                (First)
>>> [  100.861491] igb 0000:09:00.1: AER: aer_layer=Transaction Layer,
>>> aer_agent=Requester ID
>>> [  100.869400] igb 0000:09:00.1: AER: aer_uncor_severity: 0x00062011
>>>
>>> This error is not 100% reproducible. It happens 1 out of 4 try.
>>>
>>> This error goes away in following two scenarios
>>> A) Set iommu in bypass mode via bootargs iommu.passthrough=1
>>> B) Wait for ~100ms in arm_smmu_device_reset of  drivers/iommu/arm-smmu-v3.c
>>>           if (reg & CR0_SMMUEN) {
>>>                   dev_warn(smmu->dev, "SMMU currently enabled! Resetting...\n");
>>>                   WARN_ON(is_kdump_kernel() && !disable_bypass);
>>>                   mdelay(100);  <-- Added delay
>>>                   arm_smmu_update_gbpa(smmu, GBPA_ABORT, 0);
>>>           }
>>>
>>>   From A), it is clear that it is related to IOMMU
>>>   From B), looks like during boot of kdump kernel, network card is still
>>> active and it has sent some request over PCIe.
>>> as GPBA_ABORT bit is set, no response/completion coming to PCIe
>>> controller hence "CmpltTO" error.
>>>
>>> Ideally before setting GPBA_ABORT bit, there should be some check for
>>> active transaction. if it is not possible, a wait should be done to
>>> assure that no more pending transaction left.
>>
>> In general there is no way to check for active transactions, and even if
>> there were, waiting for them to finish could mean waiting forever (if,
>> say, a device is continuously streaming to/from a ring buffer).
>>
>>> why any such delay has not been considered?
>>
>> The main aim here is to block any DMA left over from the crashed kernel
>> as quickly as possible, to minimise any further potential corruption of
>> memory (consider if a device was left writing to an IOMMU virtual
>> address that happened to have the same value as some physical address in
>> the crash kernel's reserved memory). The fact that an arbitrary delay
>> happens to give a 'nicer' result in one particular situation on one
>> particular platform is neither here nor there in general.
>>
> 
> I agree.
> But we are depending upon kdump boot time and expecting devices to
> reach to idle state before setting GBPA_ABORT bit.

So (ideally) stop depending on that, because like I said it's fragile 
and doesn't generalise.

> adding a delay will be fair and make it independent of kdump boot time.

And what delay value is "fair" and appropriate for any device on any 
system in any circumstance?

>> Besides, this is *crash* kernel, so yeah, expect errors - something's
>> already gone badly wrong to get us here, and everything from then on is
>> merely a best-effort attempt to salvage what we can. Does it even make
>> sense to have AER enabled at this point?
>>
> 
> i tried by disabling AER in kdump kernel. but it did not helped as
> network device become out of sync with respect to tx unit causing it
> to be hanged and it never recovered from there.  Same can happen with
> other devices like SATA etc

Any devices that the kdump kernel wants to use need to be fully reset to 
get them into a sane state anyway, don't they? I mean, what if the crash 
was *caused* by once of those devices going wrong in the first place? 
Any devices that kdump *doesn't* care about shouldn't matter, since 
nothing should be unmasking their interrupts regardless of what state 
they're in.

Assume some descriptor or pagetable entry got corrupted that caused your 
network device to access an invalid physical address downstream of the 
SMMU and get an abort from that *before* the kdump kernel starts - is 
waiting an extra 100ms at any point after that going to help?

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
