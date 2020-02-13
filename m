Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA2E15BB67
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 10:17:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2V5MTm08x26TD4MDUUsAf6UTRRZKHFZPeHFKGe+ALZU=; b=FthviDoawo+Az+
	OM+GINgB9o+gbHfZxAFFezwoJ8OsK3ip78+y/k0jFE9mq8xEg5GW8u+fm2TpGdYx538r2URF4B15e
	HTVDjshgGUsYfWDCDjGclDmTxQjTKRtQ0qHCujiqIA4jNxMCr1UVcXkA1pVx5KNaQfs8Wrz/Q3Kky
	knYlZXokDaobouMQMTbd1Ih9R76srDshLqD+IeQU2xhMMV9ZlNSBtFyxpWHlpeOh7vuyUWbhys6wT
	o6B7jj+dwIbq5ejTgzjXZo+/7YEaVFBTYWAA0agf48IjV4cgsNb3oX4LeSxipBLPBPotIEhbKioFH
	B30JovgUZqZmgEGgPWtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2AcC-00040P-J3; Thu, 13 Feb 2020 09:16:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Abv-0003w3-L5
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 09:16:41 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4556620848;
 Thu, 13 Feb 2020 09:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581585398;
 bh=GiebtmJpNzAk9Qikj9svaXnffKSNLaoVx4iZEJ1f9R8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Tl6c66Z/muXXGGsR8OFmt//7oEMoFMLpSOdMqTmIZMcSapkUUhJ5KhzDiPIeGnuRs
 s6L05Zr2yBZTqQxPgrTxwf/vJZuS09jUreCa650odBkGyci7sfrn50FK2D+S/FgaEJ
 hzkiirULO+oY9fiFM996uGnX90vfzqRz2rcR9e4g=
Date: Thu, 13 Feb 2020 09:16:33 +0000
From: Will Deacon <will@kernel.org>
To: Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH] iommu/arm-smmu: fix the module name to be consistent
 with older kernel
Message-ID: <20200213091633.GA849@willie-the-truck>
References: <1581467841-25397-1-git-send-email-leoyang.li@nxp.com>
 <20200212104902.GA3664@willie-the-truck>
 <CADRPPNQ-FcA-xdjp02ybsYeU9UFxCZU5dpf0wHThTmLHcjovCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADRPPNQ-FcA-xdjp02ybsYeU9UFxCZU5dpf0wHThTmLHcjovCQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_011639_736953_8D23D0CB 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 lkml <linux-kernel@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 01:59:46PM -0600, Li Yang wrote:
> On Wed, Feb 12, 2020 at 4:50 AM Will Deacon <will@kernel.org> wrote:
> >
> > On Tue, Feb 11, 2020 at 06:37:20PM -0600, Li Yang wrote:
> > > Commit cd221bd24ff5 ("iommu/arm-smmu: Allow building as a module")
> > > introduced a side effect that changed the module name from arm-smmu to
> > > arm-smmu-mod.  This breaks the users of kernel parameters for the driver
> > > (e.g. arm-smmu.disable_bypass).  This patch changes the module name back
> > > to be consistent.
> > >
> > > Signed-off-by: Li Yang <leoyang.li@nxp.com>
> > > ---
> > >  drivers/iommu/Makefile                          | 4 ++--
> > >  drivers/iommu/{arm-smmu.c => arm-smmu-common.c} | 0
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > >  rename drivers/iommu/{arm-smmu.c => arm-smmu-common.c} (100%)
> >
> > Can't we just override MODULE_PARAM_PREFIX instead of renaming the file?
> 
> I can do that.  But on the other hand, the "mod" in the module name
> arm-smmu-mod.ko seems to be redundant and looks a little bit weird.
> Wouldn't it be cleaner to make it just arm-smmu.ko?

I just didn't fancy renaming the file because it's a pain for backports
and why does the name of the module matter?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
