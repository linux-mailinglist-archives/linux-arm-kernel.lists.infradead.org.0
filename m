Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC531DB7D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 17:13:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnnAkLHqktO7TR3kWCh/7dZGdqYhK3RRbrcTaL1VqtM=; b=hNv6B4IjsnN77G
	Z0hJm7l1at/s7/48hfpS8tymyoriU3wxE5+dddYp3qE1pELMmsQTuHViJp3Tco1tpA12ki6WWm5cT
	N3JyZBh5ZDrP3m/z3wJw2iO5EYyGPgID9vmyGQJr4Tu4ha3zg0pU1XoiwPJEwXJtz0fBi25GVKnpD
	+djFE+cF8RbxEvAZDIrVyh/PyNHKfX9MGVFhOHjdpI2fLNidhqp+BP5L+1Bb5US53NmbOFl6+GWNU
	K1uKSAwbUOZP2X1bjAcUbEMpCFHLSzm/CJTFgYLgv6SgI1bB7aeT8ILSsDsPsLcErQd2YQB2vRIuf
	Cn3NB2FGrzpU1onPOPew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbQPQ-0004K1-7a; Wed, 20 May 2020 15:13:28 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbQPF-0004J6-NV
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 15:13:19 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589987597; h=In-Reply-To: Content-Type: MIME-Version:
 References: Message-ID: Subject: Cc: To: From: Date: Sender;
 bh=FU2/F0+z/dsbqHttz+iiGqnFGzScOK5dcu4PKa2fHvs=;
 b=Rk7jXdJ7Z9qAYbs7iVBS02fyp+ycGvSN7Zi+UHSRE5Hby43eInJRvHD/xIH7dTObkisopTet
 GZrXxAOGBn9tE1QaJfAvr89LtwtAsYRDy7LKrqKs5hM91vhAhOgocovnonX646grA9oEcMpH
 vkqpeYWEEMi6F5Mfysm1hZZyXQQ=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-east-1.postgun.com with SMTP id
 5ec5490c62ee3a3497fb0597 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 20 May 2020 15:13:16
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 8BAF7C433CB; Wed, 20 May 2020 15:13:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: jcrouse)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2BBA5C433C6;
 Wed, 20 May 2020 15:13:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2BBA5C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
Date: Wed, 20 May 2020 09:13:12 -0600
From: Jordan Crouse <jcrouse@codeaurora.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v1 2/6] arm/smmu: Add auxiliary domain support for
 arm-smmuv2
Message-ID: <20200520151312.GB31730@jcrouse1-lnx.qualcomm.com>
Mail-Followup-To: Will Deacon <will@kernel.org>,
 Rob Clark <robdclark@gmail.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>, 
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
References: <1580249770-1088-1-git-send-email-jcrouse@codeaurora.org>
 <1580249770-1088-3-git-send-email-jcrouse@codeaurora.org>
 <20200318224840.GA10796@willie-the-truck>
 <CAF6AEGu-hj6=3rsCe5XeBq_ffoq9VFmL+ycrQ8N=iv89DZf=8Q@mail.gmail.com>
 <20200518151838.GL32394@willie-the-truck>
 <CAF6AEGswv3ZaJyy_kYv6FKAjO5=_juDwEtK+VE9TcVMLGvrdwA@mail.gmail.com>
 <20200520125700.GD25815@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520125700.GD25815@willie-the-truck>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_081317_823963_8AE7B68D 
X-CRM114-Status: GOOD (  34.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [104.130.122.26 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Rob Clark <robdclark@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 01:57:01PM +0100, Will Deacon wrote:
> On Mon, May 18, 2020 at 08:50:27AM -0700, Rob Clark wrote:
> > On Mon, May 18, 2020 at 8:18 AM Will Deacon <will@kernel.org> wrote:
> > > On Wed, Mar 18, 2020 at 04:43:07PM -0700, Rob Clark wrote:
> > > > We do in fact need live domain switching, that is really the whole
> > > > point.  The GPU CP (command processor/parser) is directly updating
> > > > TTBR0 and triggering TLB flush, asynchronously from the CPU.
> > > >
> > > > And I think the answer about ASID is easy (on current hw).. it must be zero[*].
> > >
> > > Using ASID zero is really bad, because it means that you will end up sharing
> > > TLB entries with whichever device is using context bank 0.
> > >
> > > Is the SMMU only used by the GPU in your SoC?
> > >
> > 
> > yes, the snapdragon SoCs have two SMMU instances, one used by the GPU,
> > where ASID0/cb0 is the gpu itself, and another cb is the GMU
> > (basically power control for the gpu), and the second SMMU is
> > everything else.
> 
> Right, in which case I'm starting to think that we should treat this GPU
> SMMU instance specially. Give it its own compatible string (looks like you
> need this for HUPCFG anyway) and hook in via arm_smmu_impl_init(). You can
> then set IO_PGTABLE_QUIRK_ARM_TTBR1 when talking to the io-pgtable code
> without having to add a domain attribute.

If we did this via a special GPU SMMU instance then we could also create and
register a dummy TTBR0 instance along with the TTBR1 instance and then we
wouldn't need to worry about the aux domains at all.

> With that. you'll need to find a way to allow the GPU driver to call into
> your own hooks for getting at the TTBR0 tables -- given that you're
> programming these in the hardware, I don't think it makes sense to expose
> that in the IOMMU API, since most devices won't be able to do anything with
> that data. Perhaps you could install a couple of function pointers
> (subdomain_alloc/subdomain_free) in the GPU device when you see it appear
> from the SMMU driver? Alternatively, you could make an io_pgtable_cfg
> available so that the GPU driver can interface with io-pgtable directly.
 
I don't want to speak for Rob but I think that this is the same direction we've
landed on. If we use the implementation specific code to initialize the base
pagetables then the GPU driver can use io-pgtable directly. We can easily
construct an io_pgtable_cfg. This feature will only be available for opt-in
GPU targets that will have a known configuration.

The only gotcha is TLB maintenance but Rob and I have ideas about coordinating
with the GPU hardware (which has to do a TLBIALL during a switch anyway) and we
can always use the iommu_tlb_flush_all() hammer from software if we really need
it. It might take a bit of thought, but it is doable.

> Yes, it's ugly, but I don't think it's worth trying to abstract this.

I'm not sure how ugly it is. I've always operated under the assumption that the
GPU SMMU was special (though it had generic registers) just because of where it
was and how it it was used.  In the long run baking in a implementation specific
solution would probably be preferable to lots of domain attributes and aux
domains that would never be used except by us.

> Thoughts? It's taken me a long time to figure out what's going on here,
> so sorry if it feels like I'm leading you round the houses.

I'll hack on this and try to get something in place. It might be dumber on the
GPU side than we would like but it would at least spur some more conversation.

Jordan

> Will

-- 
The Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
