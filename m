Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAFC1DBA14
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 18:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6dbul5uXKOvQj+7J5J5L4pfhWcr7bFkUC7SVXOfZrPA=; b=G9zoVg2bKzFjyLVrX/X1wWFhKS
	Au65raqBAaLYc5tcv8J+Q9eE/cHB8rcxW/aoPEK5ZYmiQR42Os/+lKOxLefLYHh1jclaBUHkHS6Hk
	oUUNjROSs49Dff0y21nN9yF7PzHIgsMvzB9kRyr7BjH8gUw2WhHvhffBrD3ZFIbv1BqS5dOl7LIj3
	zc2q5cITZstta6+3CEaI3NIB0peLpWDGP4AMhUGNi8A7Ofg6su8vtxNsOoQR407bXY6XNeAr4X0Kz
	CvPEEGyazcXu1glFNRfrwkDY2BAiF4w2agljIjUazwQJv61Q7L8iSkZ/07SkWltjfk7Zabv4/nY16
	A8mrtkrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbRsO-0006t1-FV; Wed, 20 May 2020 16:47:28 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbRgj-0000ZR-0n
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 16:35:30 +0000
Received: by mail-ed1-x541.google.com with SMTP id d24so3736098eds.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 09:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=9LZ3N6eS+xeL2WycYe0EBKoO7cMTBM5h/pIzNPU0uoA=;
 b=nSeCxkUXkPBkC+bMaKiWwAFF5HRebqDVpy2P07v1pSBINuZBVZrf4qlB2nen9i6sAH
 IFNiIXIrUN7/tuSC8zY/0mc8OLB/Dy5M/PqFtsy+MvROKnmEOEYbxNmjNHHBtP5yR1wC
 e3mZqcCzaFHe66Jr3xmpznlMHFjMLoTVZB0MgFUVehc0ZWRuhc1CBINkbiW5bMx402RA
 87X4TCTW7B0+1j7zhQSNK60EnPn3zd6L5qJOHgbA7z/RpFx8aGqHVD0urC9LHIk5Vfi6
 FEN2xhZPC6SHsRR4Ng2Dwg8VngjkQbLwxZe9nm5LmdmlYvpg5d0xoqbdQSeqKVYSjbaF
 i37Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=9LZ3N6eS+xeL2WycYe0EBKoO7cMTBM5h/pIzNPU0uoA=;
 b=s6CyBscpWVwmR7wXyWK6SO/t2gCWWPbbtHo6ec1OIMaiAyOe7Zq7BKF44axP/XLnT5
 JUa+phM/x04wYxYQNpna3klu7zKI5h9paJ+/tQSQDKcGqaXebElsZ5lewcKzyucCZe4P
 XzGomFcLNx8/s20Ih2VqhdJ5L38PGQflrALko/kghdLb+a3UWUBNQyxjffTlcSllw4Gf
 CHTrvM7L12a2o2xdvQ6Y3xWqP3Wtn20up4qjO73IXIoTMyTrH3ncMGJCvQjD6/PHLxhP
 OVR22t8wK4Phgs0WA28dbJHv6nZy4tbVzauooATPPXM9mWE38PRH6CS99KEfGMnmuqUF
 InfQ==
X-Gm-Message-State: AOAM532ahp+8US30+3NbS4wstAc8v5r6aUzYaVv1Xo9wy0gdQSOhzJyE
 XvoATqm5AUM9NO2iQjf/z/l8kA8xMm7tsLyEF9s=
X-Google-Smtp-Source: ABdhPJztbIVCpypzfMmeE5wi7QZW2wjqt6WJKlmD8c/fGvtyo/k1t0yxQTzmcpir4NVu6nGdGh39/iZWxPahJYBNZUU=
X-Received: by 2002:a50:d7c7:: with SMTP id m7mr4323197edj.101.1589992522103; 
 Wed, 20 May 2020 09:35:22 -0700 (PDT)
MIME-Version: 1.0
References: <1580249770-1088-1-git-send-email-jcrouse@codeaurora.org>
 <1580249770-1088-3-git-send-email-jcrouse@codeaurora.org>
 <20200318224840.GA10796@willie-the-truck>
 <CAF6AEGu-hj6=3rsCe5XeBq_ffoq9VFmL+ycrQ8N=iv89DZf=8Q@mail.gmail.com>
 <20200518151838.GL32394@willie-the-truck>
 <CAF6AEGswv3ZaJyy_kYv6FKAjO5=_juDwEtK+VE9TcVMLGvrdwA@mail.gmail.com>
 <20200520125700.GD25815@willie-the-truck>
 <20200520151312.GB31730@jcrouse1-lnx.qualcomm.com>
In-Reply-To: <20200520151312.GB31730@jcrouse1-lnx.qualcomm.com>
From: Rob Clark <robdclark@gmail.com>
Date: Wed, 20 May 2020 09:35:42 -0700
Message-ID: <CAF6AEGtF+_Q3=GxaVrAtqsPC3B6p_Dc5PB+DQ=btsg3wAej5bg@mail.gmail.com>
Subject: Re: [PATCH v1 2/6] arm/smmu: Add auxiliary domain support for
 arm-smmuv2
To: Will Deacon <will@kernel.org>, Rob Clark <robdclark@gmail.com>, 
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_093525_118146_8CFDA4D7 
X-CRM114-Status: GOOD (  36.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robdclark[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 8:13 AM Jordan Crouse <jcrouse@codeaurora.org> wrote:
>
> On Wed, May 20, 2020 at 01:57:01PM +0100, Will Deacon wrote:
> > On Mon, May 18, 2020 at 08:50:27AM -0700, Rob Clark wrote:
> > > On Mon, May 18, 2020 at 8:18 AM Will Deacon <will@kernel.org> wrote:
> > > > On Wed, Mar 18, 2020 at 04:43:07PM -0700, Rob Clark wrote:
> > > > > We do in fact need live domain switching, that is really the whole
> > > > > point.  The GPU CP (command processor/parser) is directly updating
> > > > > TTBR0 and triggering TLB flush, asynchronously from the CPU.
> > > > >
> > > > > And I think the answer about ASID is easy (on current hw).. it must be zero[*].
> > > >
> > > > Using ASID zero is really bad, because it means that you will end up sharing
> > > > TLB entries with whichever device is using context bank 0.
> > > >
> > > > Is the SMMU only used by the GPU in your SoC?
> > > >
> > >
> > > yes, the snapdragon SoCs have two SMMU instances, one used by the GPU,
> > > where ASID0/cb0 is the gpu itself, and another cb is the GMU
> > > (basically power control for the gpu), and the second SMMU is
> > > everything else.
> >
> > Right, in which case I'm starting to think that we should treat this GPU
> > SMMU instance specially. Give it its own compatible string (looks like you
> > need this for HUPCFG anyway) and hook in via arm_smmu_impl_init(). You can
> > then set IO_PGTABLE_QUIRK_ARM_TTBR1 when talking to the io-pgtable code
> > without having to add a domain attribute.
>
> If we did this via a special GPU SMMU instance then we could also create and
> register a dummy TTBR0 instance along with the TTBR1 instance and then we
> wouldn't need to worry about the aux domains at all.
>
> > With that. you'll need to find a way to allow the GPU driver to call into
> > your own hooks for getting at the TTBR0 tables -- given that you're
> > programming these in the hardware, I don't think it makes sense to expose
> > that in the IOMMU API, since most devices won't be able to do anything with
> > that data. Perhaps you could install a couple of function pointers
> > (subdomain_alloc/subdomain_free) in the GPU device when you see it appear
> > from the SMMU driver? Alternatively, you could make an io_pgtable_cfg
> > available so that the GPU driver can interface with io-pgtable directly.
>
> I don't want to speak for Rob but I think that this is the same direction we've
> landed on. If we use the implementation specific code to initialize the base
> pagetables then the GPU driver can use io-pgtable directly. We can easily
> construct an io_pgtable_cfg. This feature will only be available for opt-in
> GPU targets that will have a known configuration.

Agreed about using io-pgtable helpers directly.. the gpu's use-case is
pretty far different from anything normal/sane, and I don't think it
is worth designing some generic iommu interfaces with precisely one
user[*].  We just need enough in arm-smmu(/-impl) to bootstrap things
when we power up the gpu.

BR,
-R

[*] all the other gpu's that I've seen so far, even if they sit behind
an iommu, they have their own internal mmu

> The only gotcha is TLB maintenance but Rob and I have ideas about coordinating
> with the GPU hardware (which has to do a TLBIALL during a switch anyway) and we
> can always use the iommu_tlb_flush_all() hammer from software if we really need
> it. It might take a bit of thought, but it is doable.
>
> > Yes, it's ugly, but I don't think it's worth trying to abstract this.
>
> I'm not sure how ugly it is. I've always operated under the assumption that the
> GPU SMMU was special (though it had generic registers) just because of where it
> was and how it it was used.  In the long run baking in a implementation specific
> solution would probably be preferable to lots of domain attributes and aux
> domains that would never be used except by us.
>
> > Thoughts? It's taken me a long time to figure out what's going on here,
> > so sorry if it feels like I'm leading you round the houses.
>
> I'll hack on this and try to get something in place. It might be dumber on the
> GPU side than we would like but it would at least spur some more conversation.
>
> Jordan
>
> > Will
>
> --
> The Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
