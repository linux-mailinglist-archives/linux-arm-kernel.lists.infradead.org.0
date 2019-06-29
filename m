Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E75B5A982
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 09:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FtritLG9mZsvIE/swjRWYUnSfIpFgbeRLC5LbRUk3yI=; b=dtE9R6L8053yUy
	v0rFDfBbOmCxl/Y/6mgTS3KjZoj06nQx6XsbkSm/k5lllHGNOcR75WIZ7DgNi/PZVR/FN/DY0D7QO
	4rGvMhwReesDuRAt2jxBvNPiNYfEIiZO1zjRJ7OiRaSYExEMkugHBPYjofLz0rFtN1Mw8PVB/GkmB
	z+soMTazQpmed+GuMfqZGjsEKrAYNrxZMMOQn4sV2ov9TAhQdACD8AnS9rwknVv0Hthu8MmNctgzI
	WerPMgd60WK4HJ0XuOgqZGTiQ9PfCP0eIWG/sa4XILPr1Ontu6KMyjU7KzCqLuFeZJ6it4XnX2c34
	/FsVrruS/j96Rr4Sh9kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh8B0-00018z-Rf; Sat, 29 Jun 2019 07:53:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh8Ah-00017u-QK
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 07:53:22 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06BE02083B;
 Sat, 29 Jun 2019 07:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561794796;
 bh=eXUSg5gAEOz4gIaibl+P2xmyG9y3MtvzIka3bgkCHPk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ODorpqjjRnnfWVgc4AoMyhb95CgAYXOg95HTZNCI2fdm9S5IZJzrwvPKO+bvpfZoB
 l8I7tpjsrJxntfggfnIGQR395WNwx/gxF1kdqB11ihc+NsRu8mKMAnoBtICevomkBL
 MweFIxCIiw01QKFBB0/3L9XQFo0lCVYl1sWcnc2A=
Date: Sat, 29 Jun 2019 09:53:12 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] driver core: platform: Allow using a dedicated dma_mask
 for platform_device
Message-ID: <20190629075312.GB28708@kroah.com>
References: <20190628141550.22938-1-maxime.chevallier@bootlin.com>
 <20190628155946.GA16956@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628155946.GA16956@infradead.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_005319_876613_4F60A7A8 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "Rafael J . Wysocki" <rafael@kernel.org>,
 Antoine Tenart <antoine.tenart@bootlin.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, nadavh@marvell.com,
 brian.brooks@linaro.org, Rob Herring <robh+dt@kernel.org>,
 thomas.petazzoni@bootlin.com, Russell King <rmk+kernel@armlinux.org.uk>,
 stefanc@marvell.com, Frank Rowand <frowand.list@gmail.com>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 08:59:46AM -0700, Christoph Hellwig wrote:
> I'd much rather bite the bullet and make dev->dma_mask a scalar
> instead of a pointer.  The pointer causes way to much boiler plate code,
> and the semantics are way to subtile.  Below is a POV patch that
> compiles and boots with my usual x86 test config, and at least compiles
> with the arm and pmac32 defconfigs.  It probably breaks just about
> everything else, but should give us an idea what is involve in the
> switch:
> 
> ---
> >From ea73ba2d29f56ff6413066b10f018a671f2b26ac Mon Sep 17 00:00:00 2001
> From: Christoph Hellwig <hch@lst.de>
> Date: Fri, 28 Jun 2019 16:24:01 +0200
> Subject: device.h: make dma_mask a scalar instead of a pointer
> 
> Kill the dma_mask indirection to clean up the mess we acquired around
> it.

I have no objection to this at all.  I would love to see the indirection
go away.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
