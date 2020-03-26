Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2105019454C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 18:20:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqQq9Uzvr7BWSNyigWjq5VW+j2WbmN3uT7Yby7rPLA8=; b=p2gGm/OImHLbWk
	45nsAZzK3Gh9gJeTfZpzgNcPkOngvEjyf2QDXGdkCODKZOB1bVvZ26D4Do+FB+9z7gapFfBJOTDbr
	m2Asrz13mWzvq4mYWZQRo1c9GgQKrKT1ZMoiZ58Bq+VAkZcyS8lL5FAcW4d2vhA/RO9+vS2U3/mcU
	TapLIspyK+5HpCchq7FjbZWhjkPrCVcZmAwguQxdYYMdEZ5HS6KpkWDy+Ts/VyqumNbu8QKuRZgJv
	yZhlf5mwfBJVNDjzSjU9xnIzhXjp4LebxKIIF4YGjtT0fUchY5HlkAz/cqVyXUsPGcyGBwyodOIuk
	OrBa074hK40mFUlacRMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHWAb-0005du-5y; Thu, 26 Mar 2020 17:19:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHWAP-0005cv-D2; Thu, 26 Mar 2020 17:19:43 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ED2CB20409;
 Thu, 26 Mar 2020 17:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585243181;
 bh=aJ9NJXpnt5Fa0hziaCIgDuAv2+spkXdDWZZ1jcChYeY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=STd8p92iP2OVVbQzAZzHuf6YS/EgtR0aO+v49Y2/uobX1U2pzF8g59iH/C+kFF93t
 XtzFco5+BvmWI88oWwKCXXaj0SC9q2TVTjjSvC8DGC/gTBaX4kQ2bgeqS4/LPNkM5N
 b5QgVVGxl+W1Q/Gw4fhZP5MTHhDUYuMSVs40jP5g=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jHWAN-00FwXL-9S; Thu, 26 Mar 2020 17:19:39 +0000
Date: Thu, 26 Mar 2020 17:19:37 +0000
From: Marc Zyngier <maz@kernel.org>
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Subject: Re: arm64: Getting continuous PCIe "CmpltTO" AER from network card
 in kdump kernel
Message-ID: <20200326171937.44dba105@why>
In-Reply-To: <CAJ2QiJJ8nB=2df2++1KahTD8Cqe7f5JY1tp=tZ07QomvgFwjnA@mail.gmail.com>
References: <CAJ2QiJLbFGbmrFP9EEyAWJWf4=SQxEe_J4bqwYw0EXqBkL5xZA@mail.gmail.com>
 <e8a58616-aeae-ad78-d496-6dfcef4ddcaa@arm.com>
 <CAJ2QiJJ=NK2Piq_7i1kfeP1yB7vDNcTtKnXWOQ5Us2EE7ipXBA@mail.gmail.com>
 <150e513c-a017-ba7b-5a42-0243e632e62c@arm.com>
 <CAJ2QiJ+L+U_COiXO4uzCVQ-b5Ty=U3eDKh9Qmc1xbAsNdaavQg@mail.gmail.com>
 <81616336e3b8c5f083b26125bf47575c@kernel.org>
 <CAJ2QiJJ8nB=2df2++1KahTD8Cqe7f5JY1tp=tZ07QomvgFwjnA@mail.gmail.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: prabhakar.pkin@gmail.com, robin.murphy@arm.com,
 gkulkarni@marvell.com, kexec@lists.infradead.org, bhsharma@redhat.com,
 will.deacon@arm.com, helgaas@kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_101941_484360_F39C1E81 
X-CRM114-Status: GOOD (  43.17  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Mar 2020 22:25:38 +0530
Prabhakar Kushwaha <prabhakar.pkin@gmail.com> wrote:

> On Thu, Mar 26, 2020 at 9:43 PM Marc Zyngier <maz@kernel.org> wrote:
> >
> > On 2020-03-26 15:35, Prabhakar Kushwaha wrote:  
> > > On Thu, Mar 26, 2020 at 7:49 PM Robin Murphy <robin.murphy@arm.com>
> > > wrote:  
> > >>
> > >> On 2020-03-26 1:36 pm, Prabhakar Kushwaha wrote:  
> > >> > On Mon, Mar 23, 2020 at 10:28 PM Robin Murphy <robin.murphy@arm.com> wrote:  
> > >> >>
> > >> >> On 2020-03-23 3:21 pm, Prabhakar Kushwaha wrote:  
> > >> >>> Hi All,
> > >> >>>
> > >> >>> I am facing issue on Marvell's ARM64 Thunder X2 with kdump kernel.
> > >> >>> Here network card is continuously giving following AER error
> > >> >>> [  100.839168] igb 0000:09:00.1: AER: aer_status: 0x00004000,
> > >> >>> aer_mask: 0x00000000
> > >> >>> [  100.846463] igb 0000:09:00.1: AER:    [14] CmpltTO                (First)
> > >> >>> [  100.861491] igb 0000:09:00.1: AER: aer_layer=Transaction Layer,
> > >> >>> aer_agent=Requester ID
> > >> >>> [  100.869400] igb 0000:09:00.1: AER: aer_uncor_severity: 0x00062011
> > >> >>>
> > >> >>> This error is not 100% reproducible. It happens 1 out of 4 try.
> > >> >>>
> > >> >>> This error goes away in following two scenarios
> > >> >>> A) Set iommu in bypass mode via bootargs iommu.passthrough=1
> > >> >>> B) Wait for ~100ms in arm_smmu_device_reset of  drivers/iommu/arm-smmu-v3.c
> > >> >>>           if (reg & CR0_SMMUEN) {
> > >> >>>                   dev_warn(smmu->dev, "SMMU currently enabled! Resetting...\n");
> > >> >>>                   WARN_ON(is_kdump_kernel() && !disable_bypass);
> > >> >>>                   mdelay(100);  <-- Added delay
> > >> >>>                   arm_smmu_update_gbpa(smmu, GBPA_ABORT, 0);
> > >> >>>           }
> > >> >>>
> > >> >>>   From A), it is clear that it is related to IOMMU
> > >> >>>   From B), looks like during boot of kdump kernel, network card is still
> > >> >>> active and it has sent some request over PCIe.
> > >> >>> as GPBA_ABORT bit is set, no response/completion coming to PCIe
> > >> >>> controller hence "CmpltTO" error.
> > >> >>>
> > >> >>> Ideally before setting GPBA_ABORT bit, there should be some check for
> > >> >>> active transaction. if it is not possible, a wait should be done to
> > >> >>> assure that no more pending transaction left.  
> > >> >>
> > >> >> In general there is no way to check for active transactions, and even if
> > >> >> there were, waiting for them to finish could mean waiting forever (if,
> > >> >> say, a device is continuously streaming to/from a ring buffer).
> > >> >>  
> > >> >>> why any such delay has not been considered?  
> > >> >>
> > >> >> The main aim here is to block any DMA left over from the crashed kernel
> > >> >> as quickly as possible, to minimise any further potential corruption of
> > >> >> memory (consider if a device was left writing to an IOMMU virtual
> > >> >> address that happened to have the same value as some physical address in
> > >> >> the crash kernel's reserved memory). The fact that an arbitrary delay
> > >> >> happens to give a 'nicer' result in one particular situation on one
> > >> >> particular platform is neither here nor there in general.
> > >> >>  
> > >> >
> > >> > I agree.
> > >> > But we are depending upon kdump boot time and expecting devices to
> > >> > reach to idle state before setting GBPA_ABORT bit.  
> > >>
> > >> So (ideally) stop depending on that, because like I said it's fragile
> > >> and doesn't generalise.
> > >>  
> > >> > adding a delay will be fair and make it independent of kdump boot time.  
> > >>
> > >> And what delay value is "fair" and appropriate for any device on any
> > >> system in any circumstance?
> > >>  
> > >
> > >  it is tough question.  1sec can be thought of.
> > >  
> > >> >> Besides, this is *crash* kernel, so yeah, expect errors - something's
> > >> >> already gone badly wrong to get us here, and everything from then on is
> > >> >> merely a best-effort attempt to salvage what we can. Does it even make
> > >> >> sense to have AER enabled at this point?
> > >> >>  
> > >> >
> > >> > i tried by disabling AER in kdump kernel. but it did not helped as
> > >> > network device become out of sync with respect to tx unit causing it
> > >> > to be hanged and it never recovered from there.  Same can happen with
> > >> > other devices like SATA etc  
> > >>
> > >> Any devices that the kdump kernel wants to use need to be fully reset
> > >> to
> > >> get them into a sane state anyway, don't they? I mean, what if the
> > >> crash
> > >> was *caused* by once of those devices going wrong in the first place?
> > >> Any devices that kdump *doesn't* care about shouldn't matter, since
> > >> nothing should be unmasking their interrupts regardless of what state
> > >> they're in.
> > >>
> > >> Assume some descriptor or pagetable entry got corrupted that caused
> > >> your
> > >> network device to access an invalid physical address downstream of the
> > >> SMMU and get an abort from that *before* the kdump kernel starts - is
> > >> waiting an extra 100ms at any point after that going to help?
> > >>  
> > > I agree with you. in above scenaro, where device if faulty or done
> > > something wrong, waiting even hours is waste.
> > >
> > > I was just going through other iommu drivers as this problem is
> > > generic one and i found following patch
> > >
> > > commit 091d42e43d21b6ca7ec39bf5f9e17bc0bd8d4312
> > > Author: Joerg Roedel <jroedel@suse.de>
> > > Date:   Fri Jun 12 11:56:10 2015 +0200
> > >     iommu/vt-d: Copy translation tables from old kernel
> > >
> > >     If we are in a kdump kernel and find translation enabled in
> > >     the iommu, try to copy the translation tables from the old
> > >     kernel to preserve the mappings until the device driver
> > >     takes over.
> > >
> > >     This supports old and the extended root-entry and
> > >     context-table formats.
> > >
> > >     Tested-by: ZhenHua Li <zhen-hual@hp.com>
> > >     Tested-by: Baoquan He <bhe@redhat.com>
> > >     Signed-off-by: Joerg Roedel <jroedel@suse.de>
> > >
> > > I believe, similar kind of solution is required for SMMU also.  
> >
> > There's a much more general problem: how to preserve pre-boot DMA
> > configurations because they are important to the new kernel (for
> > whatever reason).
> >
> > And in a number of cases, it makes perfect sense: framebuffer
> > scanning out boot animations, ongoing DMA for other *cough* agents
> > *cough* in the system...
> >
> > But I really don't like the idea of preserving the page tables across
> > a kdump kernel because for all we know, these page tables could be
> > horribly corrupted and mostly only make sense in the context of
> > the driver that created them.  
> 
> If I am correct, similar approach is used in GIC-ITS for LPI tables.
> Probability of corruption is still there.

You are incorrect.

The memory is reused, in the sense that we cannot use another set of
redistributor tables (which are *not* ITS tables) once LPIs are
enabled. But none of the *data* is reused at all, and we happily
reprogram everything. So we know for sure that nothing will be written
outside of the pending tables, and nothing will be read outside of the
property table. Also, this memory is *physical*, as the GIC is not
translated by the SMMU.

So no, there is no corruption in this case. Well tried though! ;-)

> 
> > Oh wait, this driver has long died,
> > along with the rest of the original kernel.
> >  
> 
> :(
> if this is the case than chance of foolproof and generic solution is very less.

You're missing the very point of kdump: We use it when everything else
has failed. The system is in an unrecoverable situation, and we have no
idea of what is going on. All we're trying to do is to snapshot whatever
is left of it.

How could it be foolproof?

> At least a delay should be considered before setting SMMU_ABORT bit
> for giving a chance of DMA getting completed.

As Robin pointed out, there is no such delay. How long are you going to
wait? Until the whole of the memory is corrupted? Also, how do you know
when the DMA stops?  A framebuffer scans out the whole screen every
60Hz (and that's a pretty bad display...). You could wait forever!

The best thing to do for a screaming device is to shut it up as quickly
as possible, and the SMMU is a good tool for that.

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
