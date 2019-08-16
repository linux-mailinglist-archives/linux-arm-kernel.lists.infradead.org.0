Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 434B1908C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 21:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BhljtrEFx/NAa+0zW4tf1asSjAiGJzLcYQcSYWBEa9I=; b=rxqkxeokUf4AuDcjH93TbCnCq
	meHvTZhpkgipusp8YWN5fVnK4zbqnX6A8sNYNv1twGkMqPpdBKMeMWvv7TuCO9Mmu0YZQj3LCDVuz
	hS1DKcyMvSnaQhnPz/KTHWNgJa9Es3ITulrkfPxLbbx4Q7lRMbd51tdSx5SKnYUxGV4iDvzvLfTY2
	Bb57QHdOPX9Zq544vfC//qwU3WSNrep2tfbVfvCNvy7IW8vYk85h2REHXjbaZBs/uOQY63Q9OHP7P
	hUDJ8tktGQmRtHQ3MorVUuJbmAgaM20Gla4nmi5G9LtRyADK1NA7Bo1nVM6hfKqc08/92ilk0125Z
	fDHovdn2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyi90-00004w-M4; Fri, 16 Aug 2019 19:44:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyi8l-0008Vw-4x
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 19:44:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A4B8428;
 Fri, 16 Aug 2019 12:43:57 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 60F9C3F706;
 Fri, 16 Aug 2019 12:43:55 -0700 (PDT)
Subject: Re: [Freedreno] [PATCH v3 0/2] iommu/arm-smmu: Split pagetable support
To: Rob Clark <robdclark@gmail.com>, Jordan Crouse <jcrouse@codeaurora.org>
References: <1565216500-28506-1-git-send-email-jcrouse@codeaurora.org>
 <20190815153304.GD28465@jcrouse1-lnx.qualcomm.com>
 <ac248f33-2528-c1d4-17ed-17e92e6ed5ad@arm.com>
 <CAF6AEGujjF+MQFw45g799i+2QE4X=eRZdDSsD_F3y3mfbc6UPw@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <3ea2755f-6d4d-736d-bebd-455a7967e381@arm.com>
Date: Fri, 16 Aug 2019 20:43:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAF6AEGujjF+MQFw45g799i+2QE4X=eRZdDSsD_F3y3mfbc6UPw@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_124359_279946_6B8AAA89 
X-CRM114-Status: GOOD (  24.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Zhen Lei <thunder.leizhen@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 freedreno <freedreno@lists.freedesktop.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/08/2019 19:12, Rob Clark wrote:
> On Fri, Aug 16, 2019 at 9:58 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> Hi Jordan,
>>
>> On 15/08/2019 16:33, Jordan Crouse wrote:
>>> On Wed, Aug 07, 2019 at 04:21:38PM -0600, Jordan Crouse wrote:
>>>> (Sigh, resend. I freaked out my SMTP server)
>>>>
>>>> This is part of an ongoing evolution for enabling split pagetable support for
>>>> arm-smmu. Previous versions can be found [1].
>>>>
>>>> In the discussion for v2 Robin pointed out that this is a very Adreno specific
>>>> use case and that is exactly true. Not only do we want to configure and use a
>>>> pagetable in the TTBR1 space, we also want to configure the TTBR0 region but
>>>> not allocate a pagetable for it or touch it until the GPU hardware does so. As
>>>> much as I want it to be a generic concept it really isn't.
>>>>
>>>> This revision leans into that idea. Most of the same io-pgtable code is there
>>>> but now it is wrapped as an Adreno GPU specific format that is selected by the
>>>> compatible string in the arm-smmu device.
>>>>
>>>> Additionally, per Robin's suggestion we are skipping creating a TTBR0 pagetable
>>>> to save on wasted memory.
>>>>
>>>> This isn't as clean as I would like it to be but I think that this is a better
>>>> direction than trying to pretend that the generic format would work.
>>>>
>>>> I'm tempting fate by posting this and then taking some time off, but I wanted
>>>> to try to kick off a conversation or at least get some flames so I can try to
>>>> refine this again next week. Please take a look and give some advice on the
>>>> direction.
>>>
>>> Will, Robin -
>>>
>>> Modulo the impl changes from Robin, do you think that using a dedicated
>>> pagetable format is the right approach for supporting split pagetables for the
>>> Adreno GPU?
>>
>> How many different Adreno drivers would benefit from sharing it?
> 
> Hypothetically everything back to a3xx, so I *could* see usefulness of
> this in qcom_iommu (or maybe even msm-iommu).  OTOH maybe with
> "modularizing" arm-smmu we could re-combine qcom_iommu and arm-smmu.

Indeed, that's certainly something I'm planning to investigate as a 
future refactoring step.

> And as a practical matter, I'm not sure if anyone will get around to
> backporting per-context pagetables as far back as a3xx.
> 
> BR,
> -R
> 
>> The more I come back to this, the more I'm convinced that io-pgtable
>> should focus on the heavy lifting of pagetable management - the code
>> that nobody wants to have to write at all, let alone more than once -
>> and any subtleties which aren't essential to that should be pushed back
>> into whichever callers actually care. Consider that already, literally
>> no caller actually uses an unmodified stage 1 TCR value as provided in
>> the io_pgtable_cfg.
>>
>> I feel it would be most productive to elaborate further in the form of
>> patches, so let me get right on that and try to bash something out
>> before I go home tonight...

...and now there's a rough WIP branch here:

http://linux-arm.org/git?p=linux-rm.git;a=shortlog;h=refs/heads/iommu/pgtable

I'll finish testing and polishing those patches at some point next week, 
probably, but hopefully they're sufficiently illustrative for the moment.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
