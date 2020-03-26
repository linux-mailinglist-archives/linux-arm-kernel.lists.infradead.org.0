Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3E71944C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 17:56:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u7td9EYMFxfDVlOO7smJxE5QgoMbg3LN09sp30CAM8c=; b=a3V9lrCJ4cBzkF
	xfr4xzImhS7ri+bTE17iWFWG+NuRHOyUcDh4hAwtqwP5+ZcNksgz4SWdHubsL+X6b8xlx7WhCaHYB
	JgsgW4bZl9ZK9/jqA8VNGBYdFX3vB8gdyOdATnW+yKsZs/t9RVtp1M3iYabghCvh8/8sXox+5JffY
	Ye9sQzWl7m922P53zZcuDA0QSCFoOFdgh7Dq/Q9LIFRDd1pCuu4AtUU1hZ1UwXagtPhzARUkxRTOW
	FIaEN6aJbHorcEHUmznWtC4EFRN6DkunQUobYAGlubNoH3MbRAUmjl6OFwBXkrvGxcG1gKnwlzcmr
	g87P0cYRpYolMAJXUazg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHVo8-0003Uq-3G; Thu, 26 Mar 2020 16:56:40 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVnk-0003Tf-FI; Thu, 26 Mar 2020 16:56:18 +0000
Received: by mail-wr1-x442.google.com with SMTP id j17so8635671wru.13;
 Thu, 26 Mar 2020 09:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bzeBfZ5klSMlxF5iXEpxPN7XWuFNFvvLAZXSFaXzGKw=;
 b=Q5oetd0QUbnFMg7empygMrmtY9gsaGl65aDb3eagyhpSLwNlbDQM4ciZ97XqqsFTu4
 4jtrVFSkCIFwmT7NNZv4Y0gHziHFLCchMtPYfrUXR6+k/4OMViNvf3xC9w5Jr8qN+umL
 QaHofQDqLQyFFMfXonln1Q1DECod3MVgMRjwawLKSvo5wJs5wbcJ1eC0zbkeDaQUSLrK
 QgcBkvmKt6bI89+ZWekPFIY4DuMo1gApvFblWw79EWuWZQJVW1lfED0okuuDqGRpGN83
 vTTB3lp5CI3gv4bTRITEQg/G9XpupZFOUeKLUQMIz/adwFrrVWjTZDy6UstvnyTyEQQR
 CUaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bzeBfZ5klSMlxF5iXEpxPN7XWuFNFvvLAZXSFaXzGKw=;
 b=gcxSWTx/g3hxkIVQzuJc1NqDPcZMzuEfItiMpFAkAJneh8ukoP1ijK5q+VADOpIutM
 d95GpCy2dAN6OTWZlj1XL3mk455VPIxbOonB9InTEL/W2NNxLHyt4VfSdLLBemtYnOmi
 5/EobdrPr4aOGA1uS29akCD8BEwBmdWnofOa3YN1Sf2HmbElftv7jkwmCUng+D3AxwRt
 /gYbIpjuQ36mNa2OvHfNG0aFNpnSAlW3BTIRkzlRRcPMWsaKt3gLYBZl3XHqb7tOzo2I
 G5yYEWzU/uNtBFk08/4JzqZhN9VBOJYW8a2zf5LsyTZk9o5hy3dQ+aw3yK/zNwwBA6No
 S/sw==
X-Gm-Message-State: ANhLgQ2vL3ESEiW5hphXsCM4VarqXct+IOhiF9Fu+zioQGrUFZzhCrTQ
 OEgijsmbpGEtQmpZuyyQahRPxooIEhn8O6fEl5k=
X-Google-Smtp-Source: ADFU+vtw8hFBMWvq1A3x69AOCF+0vt/ovRNDDE0ExvLz35XuBqZq78taPJW3ZzeHbPDDxXjswZP8g94oo6H/w4CW18I=
X-Received: by 2002:a5d:6044:: with SMTP id j4mr9790056wrt.232.1585241774995; 
 Thu, 26 Mar 2020 09:56:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ2QiJLbFGbmrFP9EEyAWJWf4=SQxEe_J4bqwYw0EXqBkL5xZA@mail.gmail.com>
 <e8a58616-aeae-ad78-d496-6dfcef4ddcaa@arm.com>
 <CAJ2QiJJ=NK2Piq_7i1kfeP1yB7vDNcTtKnXWOQ5Us2EE7ipXBA@mail.gmail.com>
 <150e513c-a017-ba7b-5a42-0243e632e62c@arm.com>
 <CAJ2QiJ+L+U_COiXO4uzCVQ-b5Ty=U3eDKh9Qmc1xbAsNdaavQg@mail.gmail.com>
 <81616336e3b8c5f083b26125bf47575c@kernel.org>
In-Reply-To: <81616336e3b8c5f083b26125bf47575c@kernel.org>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Thu, 26 Mar 2020 22:25:38 +0530
Message-ID: <CAJ2QiJJ8nB=2df2++1KahTD8Cqe7f5JY1tp=tZ07QomvgFwjnA@mail.gmail.com>
Subject: Re: arm64: Getting continuous PCIe "CmpltTO" AER from network card in
 kdump kernel
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_095616_520411_190499E4 
X-CRM114-Status: GOOD (  35.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.pkin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, Mar 26, 2020 at 9:43 PM Marc Zyngier <maz@kernel.org> wrote:
>
> On 2020-03-26 15:35, Prabhakar Kushwaha wrote:
> > On Thu, Mar 26, 2020 at 7:49 PM Robin Murphy <robin.murphy@arm.com>
> > wrote:
> >>
> >> On 2020-03-26 1:36 pm, Prabhakar Kushwaha wrote:
> >> > On Mon, Mar 23, 2020 at 10:28 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >> >>
> >> >> On 2020-03-23 3:21 pm, Prabhakar Kushwaha wrote:
> >> >>> Hi All,
> >> >>>
> >> >>> I am facing issue on Marvell's ARM64 Thunder X2 with kdump kernel.
> >> >>> Here network card is continuously giving following AER error
> >> >>> [  100.839168] igb 0000:09:00.1: AER: aer_status: 0x00004000,
> >> >>> aer_mask: 0x00000000
> >> >>> [  100.846463] igb 0000:09:00.1: AER:    [14] CmpltTO                (First)
> >> >>> [  100.861491] igb 0000:09:00.1: AER: aer_layer=Transaction Layer,
> >> >>> aer_agent=Requester ID
> >> >>> [  100.869400] igb 0000:09:00.1: AER: aer_uncor_severity: 0x00062011
> >> >>>
> >> >>> This error is not 100% reproducible. It happens 1 out of 4 try.
> >> >>>
> >> >>> This error goes away in following two scenarios
> >> >>> A) Set iommu in bypass mode via bootargs iommu.passthrough=1
> >> >>> B) Wait for ~100ms in arm_smmu_device_reset of  drivers/iommu/arm-smmu-v3.c
> >> >>>           if (reg & CR0_SMMUEN) {
> >> >>>                   dev_warn(smmu->dev, "SMMU currently enabled! Resetting...\n");
> >> >>>                   WARN_ON(is_kdump_kernel() && !disable_bypass);
> >> >>>                   mdelay(100);  <-- Added delay
> >> >>>                   arm_smmu_update_gbpa(smmu, GBPA_ABORT, 0);
> >> >>>           }
> >> >>>
> >> >>>   From A), it is clear that it is related to IOMMU
> >> >>>   From B), looks like during boot of kdump kernel, network card is still
> >> >>> active and it has sent some request over PCIe.
> >> >>> as GPBA_ABORT bit is set, no response/completion coming to PCIe
> >> >>> controller hence "CmpltTO" error.
> >> >>>
> >> >>> Ideally before setting GPBA_ABORT bit, there should be some check for
> >> >>> active transaction. if it is not possible, a wait should be done to
> >> >>> assure that no more pending transaction left.
> >> >>
> >> >> In general there is no way to check for active transactions, and even if
> >> >> there were, waiting for them to finish could mean waiting forever (if,
> >> >> say, a device is continuously streaming to/from a ring buffer).
> >> >>
> >> >>> why any such delay has not been considered?
> >> >>
> >> >> The main aim here is to block any DMA left over from the crashed kernel
> >> >> as quickly as possible, to minimise any further potential corruption of
> >> >> memory (consider if a device was left writing to an IOMMU virtual
> >> >> address that happened to have the same value as some physical address in
> >> >> the crash kernel's reserved memory). The fact that an arbitrary delay
> >> >> happens to give a 'nicer' result in one particular situation on one
> >> >> particular platform is neither here nor there in general.
> >> >>
> >> >
> >> > I agree.
> >> > But we are depending upon kdump boot time and expecting devices to
> >> > reach to idle state before setting GBPA_ABORT bit.
> >>
> >> So (ideally) stop depending on that, because like I said it's fragile
> >> and doesn't generalise.
> >>
> >> > adding a delay will be fair and make it independent of kdump boot time.
> >>
> >> And what delay value is "fair" and appropriate for any device on any
> >> system in any circumstance?
> >>
> >
> >  it is tough question.  1sec can be thought of.
> >
> >> >> Besides, this is *crash* kernel, so yeah, expect errors - something's
> >> >> already gone badly wrong to get us here, and everything from then on is
> >> >> merely a best-effort attempt to salvage what we can. Does it even make
> >> >> sense to have AER enabled at this point?
> >> >>
> >> >
> >> > i tried by disabling AER in kdump kernel. but it did not helped as
> >> > network device become out of sync with respect to tx unit causing it
> >> > to be hanged and it never recovered from there.  Same can happen with
> >> > other devices like SATA etc
> >>
> >> Any devices that the kdump kernel wants to use need to be fully reset
> >> to
> >> get them into a sane state anyway, don't they? I mean, what if the
> >> crash
> >> was *caused* by once of those devices going wrong in the first place?
> >> Any devices that kdump *doesn't* care about shouldn't matter, since
> >> nothing should be unmasking their interrupts regardless of what state
> >> they're in.
> >>
> >> Assume some descriptor or pagetable entry got corrupted that caused
> >> your
> >> network device to access an invalid physical address downstream of the
> >> SMMU and get an abort from that *before* the kdump kernel starts - is
> >> waiting an extra 100ms at any point after that going to help?
> >>
> > I agree with you. in above scenaro, where device if faulty or done
> > something wrong, waiting even hours is waste.
> >
> > I was just going through other iommu drivers as this problem is
> > generic one and i found following patch
> >
> > commit 091d42e43d21b6ca7ec39bf5f9e17bc0bd8d4312
> > Author: Joerg Roedel <jroedel@suse.de>
> > Date:   Fri Jun 12 11:56:10 2015 +0200
> >     iommu/vt-d: Copy translation tables from old kernel
> >
> >     If we are in a kdump kernel and find translation enabled in
> >     the iommu, try to copy the translation tables from the old
> >     kernel to preserve the mappings until the device driver
> >     takes over.
> >
> >     This supports old and the extended root-entry and
> >     context-table formats.
> >
> >     Tested-by: ZhenHua Li <zhen-hual@hp.com>
> >     Tested-by: Baoquan He <bhe@redhat.com>
> >     Signed-off-by: Joerg Roedel <jroedel@suse.de>
> >
> > I believe, similar kind of solution is required for SMMU also.
>
> There's a much more general problem: how to preserve pre-boot DMA
> configurations because they are important to the new kernel (for
> whatever reason).
>
> And in a number of cases, it makes perfect sense: framebuffer
> scanning out boot animations, ongoing DMA for other *cough* agents
> *cough* in the system...
>
> But I really don't like the idea of preserving the page tables across
> a kdump kernel because for all we know, these page tables could be
> horribly corrupted and mostly only make sense in the context of
> the driver that created them.

If I am correct, similar approach is used in GIC-ITS for LPI tables.
Probability of corruption is still there.

> Oh wait, this driver has long died,
> along with the rest of the original kernel.
>

:(
if this is the case than chance of foolproof and generic solution is very less.

At least a delay should be considered before setting SMMU_ABORT bit
for giving a chance of DMA getting completed.

--pk

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
