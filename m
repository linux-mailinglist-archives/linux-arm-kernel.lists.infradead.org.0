Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBB1175F51
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 17:15:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPYMO0xaas4Owu1Ff8a/bzcKpAgJ159hqU4nGq/BDGQ=; b=fPqeG1iehMCXj4
	AXVNeArgCOXrRB2LVwfDj2OBHlKeVQGu5vwKyyah6oxf4UdI2S0cRIDY+SMACG6T4PObWAtRquUxN
	r/2gRyugdvx9SZbSgJLdIh2oygpuRxLP2cEENzndU3FKIvv72eyhqEHV+ZuXQTalt67RJR4DoTEEo
	j8v17YhpbuLPMLd0/BDnojYSVApf+w4PFp4D/i2XD3JvL4y7r2sUYR+FcQpfazpqfiT3HYuPVXnSA
	njX27QAYAxpzvYe4+SCjRljVArccuTequLoFpMKvPnfTFkdqXszc44G2sH8Jld1qrLnczYc6Dt9T5
	xfltMd0n5FqQrbIxfwEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8niX-0005kV-VW; Mon, 02 Mar 2020 16:14:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8niR-0005k1-8X
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 16:14:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA879217F4;
 Mon,  2 Mar 2020 16:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583165685;
 bh=u0EmxXyp+rF3GEHYWpR6QSZHLT5AY2Ngw5mEg4tr9R8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H4hz4wf+6hHJml4NvuPjb5b8SVGXb6yTa/96//Sq4FPBZsMkPKZqzN1nqqDzwYFnG
 k9fJz8mUPOMzLQbUbFmg1HKkm1AufXpyYZnwdjtzHlSIARuOMekMGY8/LOe5OogL8s
 GZ9UL//E8tsdAMajBkKJ3HLz/BsL64QMahi+KwMc=
Date: Mon, 2 Mar 2020 16:14:41 +0000
From: Will Deacon <will@kernel.org>
To: Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH] iommu/io-pgtable-arm: Fix IOVA validation for 32-bit
Message-ID: <20200302161440.GA11427@willie-the-truck>
References: <dd330453ed31099b5b3b76db02fe79d55aa9bce3.1582899080.git.robin.murphy@arm.com>
 <20200302115300.GA9233@willie-the-truck>
 <20200302161123.GC7829@8bytes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302161123.GC7829@8bytes.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_081447_322354_AC475796 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 Stephan Gerhold <stephan@gerhold.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 05:11:23PM +0100, Joerg Roedel wrote:
> On Mon, Mar 02, 2020 at 11:53:01AM +0000, Will Deacon wrote:
> > On Fri, Feb 28, 2020 at 02:18:55PM +0000, Robin Murphy wrote:
> > > Since we ony support the TTB1 quirk for AArch64 contexts, and
> > > consequently only for 64-bit builds, the sign-extension aspect of the
> > > "are all bits above IAS consistent?" check should implicitly only apply
> > > to 64-bit IOVAs. Change the type of the cast to ensure that 32-bit longs
> > > don't inadvertently get sign-extended, and thus considered invalid, if
> > > they happen to be above 2GB in the TTB0 region.
> > > 
> > > Reported-by: Stephan Gerhold <stephan@gerhold.net>
> > > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > > 
> > > ---
> > > 
> > > Logically there may also have been a UBSAN "shift greater than size of
> > > type" warning too, but arch/arm doesn't support UBSAN_SANITIZE_ALL,
> > > and that's now my only easy "spin up a 32-bit VM" option to hand :)
> > > 
> > >  drivers/iommu/io-pgtable-arm.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > Acked-by: Will Deacon <will@kernel.org>
> > 
> > Joerg -- pleae can you take this as a fix for 5.6?
> 
> Done, do you also have a fixes-tag for me?

Fixes: db6903010aa5 ("iommu/io-pgtable-arm: Prepare for TTBR1 usage")

Although it doesn't need to go to -stable, since this was only introduced
during the recent merge window.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
