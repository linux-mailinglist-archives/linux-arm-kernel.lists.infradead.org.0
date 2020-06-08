Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEE81F17F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 13:39:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fpTgQxuCp91Vw4fwNFNhVjf26yffZO4b5Yz9ksxV1YQ=; b=bIMrredb4oNHTX
	7+mu4E5ezlApYHreGH4eMZjHNVduogfuW1krpDdBkUD2F/amsdlnkEsr0zMDVeutFpv/ke+/FO54b
	2CDn7YszgEOVshKgof1D5W6cHkgpk7PLgd8okKO3OUwjRpSwo+uGqkavKt9ac4TE2fanX4ZwAyGYt
	4Ds/o8DMVMSCAFVqH1iApBhl35oxnalPeMd9LNV6xi2G90oLReKlDipOFvM8INokxqHF8Fda/2tGm
	oqjeZVSsEtSaopIH6Pyqkv+dCu+00rbQ8hb4l2wnr1zd7i1xHp4KfEiNwIhqUOKIh4f2D+TaojK4B
	OYcMcXkd4dJxh1JUgNLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiG7O-0002VY-IH; Mon, 08 Jun 2020 11:39:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiG7G-0002Tj-Gz
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 11:39:00 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DCCFF2074B;
 Mon,  8 Jun 2020 11:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591616338;
 bh=Zl/yqsOe6XvPuDsdXn5eL/LxofYRwuiRdfSA1r83qmE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eja//h3ITTR540LH3moJdaVVujXmeh4Q0guFKDFy/IV3zPH44iN2VTcSvufIwlglH
 RWrj2MGV07SXcgnxO95beb1v/pFzWIVdQ4vkcw6Mh/Vu3In/2iWdhqSnk6kXL4qzIX
 WK8pjllHjuh7g1MW6lSUGPMukmJNBI2bVPQfhWLs=
Date: Mon, 8 Jun 2020 12:38:53 +0100
From: Will Deacon <will@kernel.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [RFC PATCH] iommu/arm-smmu: Remove shutdown callback
Message-ID: <20200608113852.GA3108@willie-the-truck>
References: <20200607110918.1733-1-saiprakash.ranjan@codeaurora.org>
 <20200608081846.GA1542@willie-the-truck>
 <08c293eefc20bc2c67f2d2639b93f0a5@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08c293eefc20bc2c67f2d2639b93f0a5@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_043858_652901_B13B5C85 
X-CRM114-Status: GOOD (  31.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 08, 2020 at 02:43:03PM +0530, Sai Prakash Ranjan wrote:
> On 2020-06-08 13:48, Will Deacon wrote:
> > On Sun, Jun 07, 2020 at 04:39:18PM +0530, Sai Prakash Ranjan wrote:
> > > Remove SMMU shutdown callback since it seems to cause more
> > > problems than benefits. With this callback, we need to make
> > > sure that all clients/consumers of SMMU do not perform any
> > > DMA activity once the SMMU is shutdown and translation is
> > > disabled. In other words we need to add shutdown callbacks
> > > for all those clients to make sure they do not perform any
> > > DMA or else we see all kinds of weird crashes during reboot
> > > or shutdown. This is clearly not scalable as the number of
> > > clients of SMMU would vary across SoCs and we would need to
> > > add shutdown callbacks to almost all drivers eventually.
> > > This callback was added for kexec usecase where it was known
> > > to cause memory corruptions when SMMU was not shutdown but
> > > that does not directly relate to SMMU because the memory
> > > corruption could be because of the client of SMMU which is
> > > not shutdown properly before booting into new kernel. So in
> > > that case, we need to identify the client of SMMU causing
> > > the memory corruption and add appropriate shutdown callback
> > > to the client rather than to the SMMU.
> > > 
> > > Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> > > ---
> > >  drivers/iommu/arm-smmu-v3.c | 6 ------
> > >  drivers/iommu/arm-smmu.c    | 6 ------
> > >  2 files changed, 12 deletions(-)
> > 
> > This feels like a giant bodge to me and I think that any driver which
> > continues to perform DMA after its ->shutdown() function has been
> > invoked
> > is buggy. Wouldn't that cause problems with kexec(), for example?
> > 
> 
> Yes it is definitely a bug in the client driver if DMA is performed
> after shutdown callback of that respective driver is invoked and it must
> be fixed in that driver. But here the problem I was describing is not that,
> most of the drivers do not have a shutdown callback to begin with and adding
> it just because of shutdown dependency on SMMU doesn't seem so well because
> we can have many more such clients in the future and then we have to just go
> on adding the shutdown callbacks everywhere.

I'm not sure why you're trying to treat these cases differently. It's also
not "just because of SMMU", is it? Like I said, kexec() would be broken
regardless.

The bottom line is that after running ->shutdown() (or skipping it if it's
not implemented) for a driver, then the device must no longer perform DMA.

> > There's a clear shutdown dependency ordering, where the clients of the
> > SMMU need to shutdown before the SMMU itself, but that's not really
> > the SMMU driver's problem to solve.
> > 
> 
> The problem with kexec may not be directly related to SMMU as you said
> above if DMA is performed after the client shutdown callback, then its a
> bug in the client driver, so that needs to be fixed in the client driver,
> not the SMMU. So is there any point in having the SMMU shutdown callback?

Given that the SMMU mediates DMA transactions for all upstream masters
based on in-memory data (e.g. page tables), then I think it's a /very/
good idea to tear that down as part of the shutdown callback before
the memory is effectively free()d.

One thing I would be in favour of is changing the ->shutdown() code to
honour disable_bypass=1 so that we put the SMMU in an aborting state
instead of passthrough. Would that help at all? It would at least
avoid the memory corruption on missing shutdown callback.

> As you see, with this SMMU shutdown callback, we need to add shutdown
> callbacks in all the client drivers.

I don't see the problem with that. Why is it a problem?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
