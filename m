Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CE5175F40
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 17:11:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=glWg2p0G6FxC4PZLKN2FJNOTR/wBJWeVt5zYN/yjn4s=; b=L5lknDH4x8PcgK
	AY1/rma7TSd7qM9kVmS5wwOXFXBz2D6eWK0DwQS53NoYrACem9i8uHpp/+9PyDDytX1a1kaRxJuOq
	pj4D+Ri0Nc8rdN0FcPZxJkFnA185/8shhh4tXZN9XRvptQAos1abAwvS76UVNJi1926kaHE8W8hW2
	mOFUnVc87r4ZgBwwjlOE2T5QaZ81AZTAALu5x5zWS9d627FtyVTNaYvUwsu6Ga16TUUBoQoH720wd
	jABYjG07P/FPjzRE2cHUCYpots9EGCPc6BJHv3n1GHmHvKAPteml54r66nPujfUgQhCCs8oZ+ARAq
	En4v7svLqyay3UKTzEwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8nfL-00055D-Ok; Mon, 02 Mar 2020 16:11:35 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8nfF-00054l-0D
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 16:11:30 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id C928D5BC; Mon,  2 Mar 2020 17:11:26 +0100 (CET)
Date: Mon, 2 Mar 2020 17:11:23 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] iommu/io-pgtable-arm: Fix IOVA validation for 32-bit
Message-ID: <20200302161123.GC7829@8bytes.org>
References: <dd330453ed31099b5b3b76db02fe79d55aa9bce3.1582899080.git.robin.murphy@arm.com>
 <20200302115300.GA9233@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302115300.GA9233@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_081129_197501_4448CA89 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Mon, Mar 02, 2020 at 11:53:01AM +0000, Will Deacon wrote:
> On Fri, Feb 28, 2020 at 02:18:55PM +0000, Robin Murphy wrote:
> > Since we ony support the TTB1 quirk for AArch64 contexts, and
> > consequently only for 64-bit builds, the sign-extension aspect of the
> > "are all bits above IAS consistent?" check should implicitly only apply
> > to 64-bit IOVAs. Change the type of the cast to ensure that 32-bit longs
> > don't inadvertently get sign-extended, and thus considered invalid, if
> > they happen to be above 2GB in the TTB0 region.
> > 
> > Reported-by: Stephan Gerhold <stephan@gerhold.net>
> > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > 
> > ---
> > 
> > Logically there may also have been a UBSAN "shift greater than size of
> > type" warning too, but arch/arm doesn't support UBSAN_SANITIZE_ALL,
> > and that's now my only easy "spin up a 32-bit VM" option to hand :)
> > 
> >  drivers/iommu/io-pgtable-arm.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> Joerg -- pleae can you take this as a fix for 5.6?

Done, do you also have a fixes-tag for me?

Regards,

	Joerg


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
