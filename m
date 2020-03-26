Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB7619434F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 16:36:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnE+Py7pS2+H7jeP9aRhY50hFQVwDmxUm0w7gqOX2pg=; b=W236ehzrNfk3q+
	D7TXV7a7vjeeGk2lV87Zaj7Y9gqg0IfYDQNgv8ENPIl3WvkPWl61+Xs/N5Eys0ukniq9tWb+XtG/U
	L8wYxb8nwZf3PzSeFeAygGtmfUErl993VcifoQqdcXCicX4I5J7vRNGrP/hPIwKcX3SbEA6EnnCcR
	1woKD3M3J9QgxXaBWcqBSQtwoKimEx1wlKEPUQ+arZ+9oDHcw9AKQHdUlY3Z5kp1sjIlIu/B1TgUT
	gsizOLAWt6FXkY3EuXoxsUwxefGlMyHCz0yeoexpwCZ/mBz+pWa62OkG+EwnQX1Nenkx73IpdLmYm
	FdzCie74gcmWCXpfQiiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHUYn-0001Qy-VS; Thu, 26 Mar 2020 15:36:46 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHUYd-0001QQ-8r; Thu, 26 Mar 2020 15:36:36 +0000
Received: by mail-wr1-x441.google.com with SMTP id p10so8353929wrt.6;
 Thu, 26 Mar 2020 08:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GhclDEWe+qHNcHSfEmncTCVv2KoZH62vbLK5PKzXCOk=;
 b=UnhCmM8P12tZ3rJwPY3iNv2k7njQcufMtGezhs4I94WiJ7We4SHaNwkEaUJ/y0Y41V
 ke51RTQaQ8MBeVtxLBdzrI28KT/xGjzXWwG0M8DYvKlpQlvczFS5bCUbUW95EzJ1CVHI
 coGuaccyaid3q1WKMGqevOs9wY7rccm+Tfj2d08LiX8nTjdDPpC3iJ3QBUnypfsaznc3
 7jyi+mPEG8wYhvVsYpwUKVlNCB5eACZO7uK8CGXnDbsU/u5L5XzeMq4iZ63lqDWhVHaP
 u40eU8Uy13NN4MUoATeQ4n8Tt0E4EUYTSX50+hIjihgf+gmjnS0jARJVstd8Lm159A2j
 TaYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GhclDEWe+qHNcHSfEmncTCVv2KoZH62vbLK5PKzXCOk=;
 b=k84tH81PzJ+mnUdfvhLDSqDh2iZ8E18ZgVZXDbVWaXs5UlQdnXpPiw10l8W5Tl/XM1
 ERJ9uhOAqwFIGLSgjYliXWgtokY382gU0eeY3o3Z0GlLXveu9YjGQDYXpHSLfrOavUsi
 0soeNRJEhKlZzfZNT+Cb1yOp7Ah1uPLZKY0X1sbYGB4xaNB0njLKpsxV9jN3M6VeIYIN
 k011igWE0+wQt+ePjLPt/X/k6ClYeQoSkwqcHW/q9t4ywqYOzhex7q8JYci0Msj90/Df
 rr0kN1/yDJm26frjgbJLINvly1HXgg/89aUhBF6rXNQttkPiTnA5QA+FB72QwAgnmnKB
 0HZQ==
X-Gm-Message-State: ANhLgQ3vMIzDmNlSTZOa66kIZOSLon02u55EFAU//WEdVqLGQzukMihR
 yfTkpFuvaiKVOgUcJBzNxgv8th2HibU+7Mt821E=
X-Google-Smtp-Source: ADFU+vv/Y4zwd+TwwLmpxCb8OB8WNhzcqddh8lx/Ws+XX2nJtypWazp8y3EBjtHTYOY5b1FuFEjH3eVr/XeK4qpNQf0=
X-Received: by 2002:adf:9526:: with SMTP id 35mr10620806wrs.164.1585236993625; 
 Thu, 26 Mar 2020 08:36:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ2QiJLbFGbmrFP9EEyAWJWf4=SQxEe_J4bqwYw0EXqBkL5xZA@mail.gmail.com>
 <e8a58616-aeae-ad78-d496-6dfcef4ddcaa@arm.com>
 <CAJ2QiJJ=NK2Piq_7i1kfeP1yB7vDNcTtKnXWOQ5Us2EE7ipXBA@mail.gmail.com>
 <150e513c-a017-ba7b-5a42-0243e632e62c@arm.com>
In-Reply-To: <150e513c-a017-ba7b-5a42-0243e632e62c@arm.com>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Thu, 26 Mar 2020 21:05:56 +0530
Message-ID: <CAJ2QiJ+L+U_COiXO4uzCVQ-b5Ty=U3eDKh9Qmc1xbAsNdaavQg@mail.gmail.com>
Subject: Re: arm64: Getting continuous PCIe "CmpltTO" AER from network card in
 kdump kernel
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_083635_315084_12050709 
X-CRM114-Status: GOOD (  30.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
 kexec mailing list <kexec@lists.infradead.org>,
 Bhupesh Sharma <bhsharma@redhat.com>, will.deacon@arm.com,
 Bjorn Helgaas <helgaas@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 7:49 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2020-03-26 1:36 pm, Prabhakar Kushwaha wrote:
> > On Mon, Mar 23, 2020 at 10:28 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >>
> >> On 2020-03-23 3:21 pm, Prabhakar Kushwaha wrote:
> >>> Hi All,
> >>>
> >>> I am facing issue on Marvell's ARM64 Thunder X2 with kdump kernel.
> >>> Here network card is continuously giving following AER error
> >>> [  100.839168] igb 0000:09:00.1: AER: aer_status: 0x00004000,
> >>> aer_mask: 0x00000000
> >>> [  100.846463] igb 0000:09:00.1: AER:    [14] CmpltTO                (First)
> >>> [  100.861491] igb 0000:09:00.1: AER: aer_layer=Transaction Layer,
> >>> aer_agent=Requester ID
> >>> [  100.869400] igb 0000:09:00.1: AER: aer_uncor_severity: 0x00062011
> >>>
> >>> This error is not 100% reproducible. It happens 1 out of 4 try.
> >>>
> >>> This error goes away in following two scenarios
> >>> A) Set iommu in bypass mode via bootargs iommu.passthrough=1
> >>> B) Wait for ~100ms in arm_smmu_device_reset of  drivers/iommu/arm-smmu-v3.c
> >>>           if (reg & CR0_SMMUEN) {
> >>>                   dev_warn(smmu->dev, "SMMU currently enabled! Resetting...\n");
> >>>                   WARN_ON(is_kdump_kernel() && !disable_bypass);
> >>>                   mdelay(100);  <-- Added delay
> >>>                   arm_smmu_update_gbpa(smmu, GBPA_ABORT, 0);
> >>>           }
> >>>
> >>>   From A), it is clear that it is related to IOMMU
> >>>   From B), looks like during boot of kdump kernel, network card is still
> >>> active and it has sent some request over PCIe.
> >>> as GPBA_ABORT bit is set, no response/completion coming to PCIe
> >>> controller hence "CmpltTO" error.
> >>>
> >>> Ideally before setting GPBA_ABORT bit, there should be some check for
> >>> active transaction. if it is not possible, a wait should be done to
> >>> assure that no more pending transaction left.
> >>
> >> In general there is no way to check for active transactions, and even if
> >> there were, waiting for them to finish could mean waiting forever (if,
> >> say, a device is continuously streaming to/from a ring buffer).
> >>
> >>> why any such delay has not been considered?
> >>
> >> The main aim here is to block any DMA left over from the crashed kernel
> >> as quickly as possible, to minimise any further potential corruption of
> >> memory (consider if a device was left writing to an IOMMU virtual
> >> address that happened to have the same value as some physical address in
> >> the crash kernel's reserved memory). The fact that an arbitrary delay
> >> happens to give a 'nicer' result in one particular situation on one
> >> particular platform is neither here nor there in general.
> >>
> >
> > I agree.
> > But we are depending upon kdump boot time and expecting devices to
> > reach to idle state before setting GBPA_ABORT bit.
>
> So (ideally) stop depending on that, because like I said it's fragile
> and doesn't generalise.
>
> > adding a delay will be fair and make it independent of kdump boot time.
>
> And what delay value is "fair" and appropriate for any device on any
> system in any circumstance?
>

 it is tough question.  1sec can be thought of.

> >> Besides, this is *crash* kernel, so yeah, expect errors - something's
> >> already gone badly wrong to get us here, and everything from then on is
> >> merely a best-effort attempt to salvage what we can. Does it even make
> >> sense to have AER enabled at this point?
> >>
> >
> > i tried by disabling AER in kdump kernel. but it did not helped as
> > network device become out of sync with respect to tx unit causing it
> > to be hanged and it never recovered from there.  Same can happen with
> > other devices like SATA etc
>
> Any devices that the kdump kernel wants to use need to be fully reset to
> get them into a sane state anyway, don't they? I mean, what if the crash
> was *caused* by once of those devices going wrong in the first place?
> Any devices that kdump *doesn't* care about shouldn't matter, since
> nothing should be unmasking their interrupts regardless of what state
> they're in.
>
> Assume some descriptor or pagetable entry got corrupted that caused your
> network device to access an invalid physical address downstream of the
> SMMU and get an abort from that *before* the kdump kernel starts - is
> waiting an extra 100ms at any point after that going to help?
>
I agree with you. in above scenaro, where device if faulty or done
something wrong, waiting even hours is waste.

I was just going through other iommu drivers as this problem is
generic one and i found following patch

commit 091d42e43d21b6ca7ec39bf5f9e17bc0bd8d4312
Author: Joerg Roedel <jroedel@suse.de>
Date:   Fri Jun 12 11:56:10 2015 +0200
    iommu/vt-d: Copy translation tables from old kernel

    If we are in a kdump kernel and find translation enabled in
    the iommu, try to copy the translation tables from the old
    kernel to preserve the mappings until the device driver
    takes over.

    This supports old and the extended root-entry and
    context-table formats.

    Tested-by: ZhenHua Li <zhen-hual@hp.com>
    Tested-by: Baoquan He <bhe@redhat.com>
    Signed-off-by: Joerg Roedel <jroedel@suse.de>

I believe, similar kind of solution is required for SMMU also.

--pk

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
