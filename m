Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D33A7104428
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 20:18:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7yY7XvD2cfJBj/3HsqtvlHK/JPMG5M5lyMcqWOdKRk4=; b=Fkl1V7Ta/lxumY
	DF0ZtcNMpHuLb1jLU7XQHWqzKAC26NhuspoVXzLJ/rDKau6S5A/x5o1JzXTadna8Ecg27bM9AA6Mb
	ZZjSDTXAbcFcjFmpJLIb0j5bVoPrGhePYsQOcnzIaY1nEEdNNPd8hbKPWBmAQFvZ/0Nz2q3CGjxoz
	INMrcUoS3vC9YxKmiMlWOccKOurrXHis9M2RDGytiivFdks8H4iOoUuFPYkHt8DQzRolKp2t4tw2w
	n8Di6Gygn6ZGi/6XdoVT1JxCMW62wS3l+WznJ0dL/HljtZ8S8pCCgwAm4yLx+mB5aOowXqNIKeBYG
	h6f7QJg5nsSloumG/+hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXVV6-0006bI-RW; Wed, 20 Nov 2019 19:18:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXVUm-0006Yg-0U
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 19:18:33 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E652020855;
 Wed, 20 Nov 2019 19:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574277511;
 bh=Ssfx4CJHpMammtH5BPVwDenu7QC6d8HZXPkTNCSMfXw=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=WGnWjh8EO6X5mm63XsuyeBLs3ywKIWBqzkVVBChkiRDF/xkFaHFQzJhPbBNn//p5k
 YAgJswMFkv1+svrvAvfiRBYc0kJry7vep3GkykWRQYCIuhjS1brvMADy2gUZyD4wGa
 1tQtyRbhGKTQNzMA7XM1++IBWa2JkaBtXztIu3CA=
Date: Wed, 20 Nov 2019 19:18:27 +0000
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 10/10] iommu/io-pgtable-arm: Prepare for TTBR1 usage
Message-ID: <20191120191827.GE4799@willie-the-truck>
References: <cover.1572024119.git.robin.murphy@arm.com>
 <9ec05935de3f1c1da5d1780201147ed40e129295.1572024120.git.robin.murphy@arm.com>
 <20191104234006.GC16446@jcrouse1-lnx.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104234006.GC16446@jcrouse1-lnx.qualcomm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_111832_079713_B7D1F4CA 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 04:40:06PM -0700, Jordan Crouse wrote:
> On Fri, Oct 25, 2019 at 07:08:39PM +0100, Robin Murphy wrote:
> > Now that we can correctly extract top-level indices without relying on
> > the remaining upper bits being zero, the only remaining impediments to
> > using a given table for TTBR1 are the address validation on map/unmap
> > and the awkward TCR translation granule format. Add a quirk so that we
> > can do the right thing at those points.
> 
> This looks great.  I have one comment about the TCR.A1 bit below but otherwise
> this is sane. My immediate todo this week and next is to try to get something
> spun up and working on the db845 for verification.

How did that go?

> > @@ -800,15 +812,16 @@ arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
> >  		tcr->orgn = ARM_LPAE_TCR_RGN_NC;
> >  	}
> >  
> > +	tg1 = cfg->quirks & IO_PGTABLE_QUIRK_ARM_TTBR1;
> >  	switch (ARM_LPAE_GRANULE(data)) {
> >  	case SZ_4K:
> > -		tcr->tg = ARM_LPAE_TCR_TG0_4K;
> > +		tcr->tg = tg1 ? ARM_LPAE_TCR_TG1_4K : ARM_LPAE_TCR_TG0_4K;
> >  		break;
> >  	case SZ_16K:
> > -		tcr->tg = ARM_LPAE_TCR_TG0_16K;
> > +		tcr->tg = tg1 ? ARM_LPAE_TCR_TG1_16K : ARM_LPAE_TCR_TG0_16K;
> >  		break;
> >  	case SZ_64K:
> > -		tcr->tg = ARM_LPAE_TCR_TG0_64K;
> > +		tcr->tg = tg1 ? ARM_LPAE_TCR_TG1_64K : ARM_LPAE_TCR_TG0_64K;
> >  		break;
> >  	}
> 
> The comment in one of the previous patches about the ASID in TTBR1 triggered
> something in my brain. v2 TCR A1,bit[22] controls from which TTBR the ASID is
> used I'm not sure if that qualifies as a quirk here or if it should be entirely
> handled within arm_smmu_lpae_tcr() but I thought I should point it out.

That should be confined entirely to the driver code though, no? The
io-pgtable code doesn't go near ASIDs or the A1 bit.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
