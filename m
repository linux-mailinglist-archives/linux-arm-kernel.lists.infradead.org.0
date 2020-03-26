Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C31B9194415
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 17:13:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IsQiQhKZi3xFmIlugBXoNbNOeg5b5r/QHXO+jkv7dKs=; b=l9iEE8LgItBxHdrbNw6sBWt4j
	lsuF18azaYWXoWy4IVExlEQYiCecNLqFr2IrdCNfoN+h7TB1QngLB/FxxTR9vAGa507oBbmFYdv2d
	P+8RjcStv9ofT1/NOQU7KIIieGdM+78vDHQ3mldTb2RPWjGFjmR/2ERQPVNWwBj8BZ6yFDigid1rE
	XcBJHTFRRHJdvXCBdqjIjIGV+YVbmxqo1hEie9FluP3MIy9x3ZNB+9CsBhRMVIY6EfdnqFxgnmlGx
	PeNqcukUp1qooxuWDqWWEiZfa2OUeigT5fvEfldJIF/F4c3enIHEomZtqTYNWs+oQvjOC1ZYCFUQu
	xN3ZWIlfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHV8O-0000s1-6d; Thu, 26 Mar 2020 16:13:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHV8C-0000qk-Dy; Thu, 26 Mar 2020 16:13:21 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA0E92076A;
 Thu, 26 Mar 2020 16:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585239199;
 bh=KaI7DQ13BNXAGxYp69IvcHdofPQUcHdaBeFrBx/f5hg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EyNUipJpKU3PIwhY9hTZsPDuf9PqgaLOEzCbGUrtElBp3HKSiwposKiwKYbmVMO6v
 28lIBHTVYTrQ0z90YKqaAuras1/8aRPjq/1QFzNDdtkCbfqHs92LJzuXVCkBkhBYea
 Wr0r5aJS8ZxPDb29iZD/41GHm9/4PhkzgZUehmxA=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jHV8A-00FvdS-63; Thu, 26 Mar 2020 16:13:18 +0000
MIME-Version: 1.0
Date: Thu, 26 Mar 2020 16:13:18 +0000
From: Marc Zyngier <maz@kernel.org>
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Subject: Re: arm64: Getting continuous PCIe "CmpltTO" AER from network card in
 kdump kernel
In-Reply-To: <CAJ2QiJ+L+U_COiXO4uzCVQ-b5Ty=U3eDKh9Qmc1xbAsNdaavQg@mail.gmail.com>
References: <CAJ2QiJLbFGbmrFP9EEyAWJWf4=SQxEe_J4bqwYw0EXqBkL5xZA@mail.gmail.com>
 <e8a58616-aeae-ad78-d496-6dfcef4ddcaa@arm.com>
 <CAJ2QiJJ=NK2Piq_7i1kfeP1yB7vDNcTtKnXWOQ5Us2EE7ipXBA@mail.gmail.com>
 <150e513c-a017-ba7b-5a42-0243e632e62c@arm.com>
 <CAJ2QiJ+L+U_COiXO4uzCVQ-b5Ty=U3eDKh9Qmc1xbAsNdaavQg@mail.gmail.com>
Message-ID: <81616336e3b8c5f083b26125bf47575c@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: prabhakar.pkin@gmail.com, robin.murphy@arm.com,
 gkulkarni@marvell.com, kexec@lists.infradead.org, bhsharma@redhat.com,
 will.deacon@arm.com, helgaas@kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_091320_516286_B49DA954 
X-CRM114-Status: GOOD (  28.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Will Deacon <will@kernel.org>, will.deacon@arm.com,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-26 15:35, Prabhakar Kushwaha wrote:
> On Thu, Mar 26, 2020 at 7:49 PM Robin Murphy <robin.murphy@arm.com> 
> wrote:
>> 
>> On 2020-03-26 1:36 pm, Prabhakar Kushwaha wrote:
>> > On Mon, Mar 23, 2020 at 10:28 PM Robin Murphy <robin.murphy@arm.com> wrote:
>> >>
>> >> On 2020-03-23 3:21 pm, Prabhakar Kushwaha wrote:
>> >>> Hi All,
>> >>>
>> >>> I am facing issue on Marvell's ARM64 Thunder X2 with kdump kernel.
>> >>> Here network card is continuously giving following AER error
>> >>> [  100.839168] igb 0000:09:00.1: AER: aer_status: 0x00004000,
>> >>> aer_mask: 0x00000000
>> >>> [  100.846463] igb 0000:09:00.1: AER:    [14] CmpltTO                (First)
>> >>> [  100.861491] igb 0000:09:00.1: AER: aer_layer=Transaction Layer,
>> >>> aer_agent=Requester ID
>> >>> [  100.869400] igb 0000:09:00.1: AER: aer_uncor_severity: 0x00062011
>> >>>
>> >>> This error is not 100% reproducible. It happens 1 out of 4 try.
>> >>>
>> >>> This error goes away in following two scenarios
>> >>> A) Set iommu in bypass mode via bootargs iommu.passthrough=1
>> >>> B) Wait for ~100ms in arm_smmu_device_reset of  drivers/iommu/arm-smmu-v3.c
>> >>>           if (reg & CR0_SMMUEN) {
>> >>>                   dev_warn(smmu->dev, "SMMU currently enabled! Resetting...\n");
>> >>>                   WARN_ON(is_kdump_kernel() && !disable_bypass);
>> >>>                   mdelay(100);  <-- Added delay
>> >>>                   arm_smmu_update_gbpa(smmu, GBPA_ABORT, 0);
>> >>>           }
>> >>>
>> >>>   From A), it is clear that it is related to IOMMU
>> >>>   From B), looks like during boot of kdump kernel, network card is still
>> >>> active and it has sent some request over PCIe.
>> >>> as GPBA_ABORT bit is set, no response/completion coming to PCIe
>> >>> controller hence "CmpltTO" error.
>> >>>
>> >>> Ideally before setting GPBA_ABORT bit, there should be some check for
>> >>> active transaction. if it is not possible, a wait should be done to
>> >>> assure that no more pending transaction left.
>> >>
>> >> In general there is no way to check for active transactions, and even if
>> >> there were, waiting for them to finish could mean waiting forever (if,
>> >> say, a device is continuously streaming to/from a ring buffer).
>> >>
>> >>> why any such delay has not been considered?
>> >>
>> >> The main aim here is to block any DMA left over from the crashed kernel
>> >> as quickly as possible, to minimise any further potential corruption of
>> >> memory (consider if a device was left writing to an IOMMU virtual
>> >> address that happened to have the same value as some physical address in
>> >> the crash kernel's reserved memory). The fact that an arbitrary delay
>> >> happens to give a 'nicer' result in one particular situation on one
>> >> particular platform is neither here nor there in general.
>> >>
>> >
>> > I agree.
>> > But we are depending upon kdump boot time and expecting devices to
>> > reach to idle state before setting GBPA_ABORT bit.
>> 
>> So (ideally) stop depending on that, because like I said it's fragile
>> and doesn't generalise.
>> 
>> > adding a delay will be fair and make it independent of kdump boot time.
>> 
>> And what delay value is "fair" and appropriate for any device on any
>> system in any circumstance?
>> 
> 
>  it is tough question.  1sec can be thought of.
> 
>> >> Besides, this is *crash* kernel, so yeah, expect errors - something's
>> >> already gone badly wrong to get us here, and everything from then on is
>> >> merely a best-effort attempt to salvage what we can. Does it even make
>> >> sense to have AER enabled at this point?
>> >>
>> >
>> > i tried by disabling AER in kdump kernel. but it did not helped as
>> > network device become out of sync with respect to tx unit causing it
>> > to be hanged and it never recovered from there.  Same can happen with
>> > other devices like SATA etc
>> 
>> Any devices that the kdump kernel wants to use need to be fully reset 
>> to
>> get them into a sane state anyway, don't they? I mean, what if the 
>> crash
>> was *caused* by once of those devices going wrong in the first place?
>> Any devices that kdump *doesn't* care about shouldn't matter, since
>> nothing should be unmasking their interrupts regardless of what state
>> they're in.
>> 
>> Assume some descriptor or pagetable entry got corrupted that caused 
>> your
>> network device to access an invalid physical address downstream of the
>> SMMU and get an abort from that *before* the kdump kernel starts - is
>> waiting an extra 100ms at any point after that going to help?
>> 
> I agree with you. in above scenaro, where device if faulty or done
> something wrong, waiting even hours is waste.
> 
> I was just going through other iommu drivers as this problem is
> generic one and i found following patch
> 
> commit 091d42e43d21b6ca7ec39bf5f9e17bc0bd8d4312
> Author: Joerg Roedel <jroedel@suse.de>
> Date:   Fri Jun 12 11:56:10 2015 +0200
>     iommu/vt-d: Copy translation tables from old kernel
> 
>     If we are in a kdump kernel and find translation enabled in
>     the iommu, try to copy the translation tables from the old
>     kernel to preserve the mappings until the device driver
>     takes over.
> 
>     This supports old and the extended root-entry and
>     context-table formats.
> 
>     Tested-by: ZhenHua Li <zhen-hual@hp.com>
>     Tested-by: Baoquan He <bhe@redhat.com>
>     Signed-off-by: Joerg Roedel <jroedel@suse.de>
> 
> I believe, similar kind of solution is required for SMMU also.

There's a much more general problem: how to preserve pre-boot DMA
configurations because they are important to the new kernel (for
whatever reason).

And in a number of cases, it makes perfect sense: framebuffer
scanning out boot animations, ongoing DMA for other *cough* agents
*cough* in the system...

But I really don't like the idea of preserving the page tables across
a kdump kernel because for all we know, these page tables could be
horribly corrupted and mostly only make sense in the context of
the driver that created them. Oh wait, this driver has long died,
along with the rest of the original kernel.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
