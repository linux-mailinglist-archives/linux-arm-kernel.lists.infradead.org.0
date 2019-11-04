Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D17F4EE95D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 21:20:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DcflITOSI4W20mn4Kk8u1TBi9rIlv1W07VY8ZZ+AWU=; b=MADmspEZPGYg7r
	fM5QwWoa9jGEHqkgnjMwmko0H9S5mbIUTQUPI2LeWK4viuPTpf/7Q0iDpAi4A+kx+yQpx0XJZ5zYR
	ky4k90ik1XTmDNArKO4zxE9dNkMPj788cqp9qXmqW9splVwt4JyJdLyhDE5YxuwWDu71ucy7AjUuO
	ocbMpH5dZWWsIA7ZR9RSlnBY/BYJXqsnlq2T0+fLTt/ObPqwcyNWCO/O8cdZBcwOjI4E3QF0egZ8U
	bVSg2Ej6tGY/TZC7DOx5IcnUQjz/9MBMrZFcVHD2M4mxYZ8Fpvmuj1WE9gOD573MO6EB2Er/koGbO
	JyDskuLlJe+uN9Q+rXkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRipx-0005Fc-RA; Mon, 04 Nov 2019 20:20:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRipn-0005FC-Jl
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 20:20:21 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1193F20848;
 Mon,  4 Nov 2019 20:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572898818;
 bh=JipY3XJzUsF1P6m4Hv+xqqCgPVMO3Uh57oGm0DYfx+w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pL8zkee5aroldx0B1bhCATWEsKhB65+m3rowYZG3X+z+5XN0BDxLbrPaiHggB9pXa
 uyU5UxlomMIPaIizZonDK0rjIHfL8HzfwYH8XA6OW1OCGkr8jWsb+Tw0IJRp3/bRkC
 kuzelt8qf01s7CJS7Hm7Zv9EQi7SyAHAy+1HpJ3k=
Date: Mon, 4 Nov 2019 20:20:12 +0000
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 00/10] iommu/io-pgtable: Cleanup and prep for split
 tables
Message-ID: <20191104202012.GN24909@willie-the-truck>
References: <cover.1572024119.git.robin.murphy@arm.com>
 <20191104192228.GL24909@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104192228.GL24909@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_122019_669664_4C8D684B 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: iommu@lists.linux-foundation.org, jcrouse@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 07:22:28PM +0000, Will Deacon wrote:
> On Fri, Oct 25, 2019 at 07:08:29PM +0100, Robin Murphy wrote:
> > Since the flawed first attempt, I've reworked things with an abstracted
> > TCR and an explicit TTBR1 quirk. I originally envisaged the need to pass
> > the quirk all the way down to the TLBI calls, hence getting diverted
> > into trying to make the parameter passing less cluttered in general, but
> > in the end it turned out fairly neat to just fix the indexing such that
> > we can always just pass around the original unmodified IOVA. Most of the
> > new patches come from staring at that indexing code for long enough to
> > see the subtle inefficiencies that were worth ironing out, plus a bit of
> > random cleanup which doesn't feel worth posting separately.
> > 
> > Note that these patches depend on the fixes already queued in -rc4,
> > otherwise there will be conflicts in arm_mali_lpae_alloc_pgtable().
> > 
> > Robin.
> > 
> > 
> > Robin Murphy (10):
> >   iommu/io-pgtable: Make selftest gubbins consistently __init
> >   iommu/io-pgtable-arm: Rationalise size check
> >   iommu/io-pgtable-arm: Simplify bounds checks
> >   iommu/io-pgtable-arm: Simplify start level lookup
> >   iommu/io-pgtable-arm: Simplify PGD size handling
> >   iommu/io-pgtable-arm: Simplify level indexing
> >   iommu/io-pgtable-arm: Rationalise MAIR handling
> >   iommu/io-pgtable-arm: Rationalise TTBRn handling
> >   iommu/io-pgtable-arm: Rationalise TCR handling
> >   iommu/io-pgtable-arm: Prepare for TTBR1 usage
> 
> Overall, this looks really good to me. There's a bit more work to do
> (see my comments) and I'd like Jordan to have a look as well, but on the
> whole it's a big improvement. Thanks.

Also, I've merged the first 7 patches to save you having to repost those:

https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-joerg/arm-smmu/updates

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
