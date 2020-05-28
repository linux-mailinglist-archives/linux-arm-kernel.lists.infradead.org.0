Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D36781E656E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 17:05:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GAp9kfNboywAIBnDh7ew8mq7zTFJjmYUjDgJ87jFS0o=; b=DxKm6qKa8kMoSh
	rprO/zCUMgTKEZSdcHW82NeCcQaZ5XnAnFSybJv8NyiXpSuVrPjiM4HKxo7WebUkKIMCWp+Zg/lWt
	ciJk7XNHXMDA3hWsfFTqORPF/7yr0vyVdw6/4TGyDNxlVNmBsTMyYwC210cLmiTTLJIyKyGUB20Do
	z79n9MV+aplJOMnOMvzom5np9eCsYEYd0WOQZxBKuevZxuO+DsN0Ly8MimB7pSPOmNaV7M4lagMXY
	7liKKX5KwRsU88EWYlu1yYHf3IUIXgs9hJRwFrplDSooqR3iWIcMIumF6u5f57F6o8smpABugur4p
	P980iVPcW3ENKRWF2e3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeK63-00014f-9o; Thu, 28 May 2020 15:05:27 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeK53-0000oP-0d; Thu, 28 May 2020 15:04:27 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id A9D7A240003;
 Thu, 28 May 2020 15:04:20 +0000 (UTC)
Date: Thu, 28 May 2020 17:04:19 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v6 16/18] mtd: nand: Convert generic NAND bits to use
 the ECC framework
Message-ID: <20200528170419.0c2ba99a@xps13>
In-Reply-To: <20200528165217.6582f9aa@collabora.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
 <20200528113113.9166-17-miquel.raynal@bootlin.com>
 <20200528163907.6539e2a1@collabora.com>
 <20200528164926.3b99f848@xps13>
 <20200528165217.6582f9aa@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_080425_350476_35D161A9 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, Weijie Gao <weijie.gao@mediatek.com>,
 Paul Cercueil <paul@crapouillou.net>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Thu, 28 May
2020 16:52:17 +0200:

> On Thu, 28 May 2020 16:49:26 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > Boris Brezillon <boris.brezillon@collabora.com> wrote on Thu, 28 May
> > 2020 16:39:07 +0200:
> >   
> > > On Thu, 28 May 2020 13:31:11 +0200
> > > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > >     
> > > > Embed a generic NAND ECC high-level object in the nand_device
> > > > structure to carry all the ECC engine configuration/data. Adapt the
> > > > raw NAND and SPI-NAND cores to fit the change.
> > > > 
> > > > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > > > ---
> > > >  drivers/mtd/nand/Kconfig                     |  1 +
> > > >  drivers/mtd/nand/raw/atmel/nand-controller.c |  9 +++--
> > > >  drivers/mtd/nand/raw/brcmnand/brcmnand.c     |  7 ++--
> > > >  drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c   | 12 +++---
> > > >  drivers/mtd/nand/raw/marvell_nand.c          |  7 ++--
> > > >  drivers/mtd/nand/raw/mtk_nand.c              |  4 +-
> > > >  drivers/mtd/nand/raw/nand_base.c             | 25 ++++++------
> > > >  drivers/mtd/nand/raw/nand_esmt.c             | 11 +++---
> > > >  drivers/mtd/nand/raw/nand_hynix.c            | 41 ++++++++++----------
> > > >  drivers/mtd/nand/raw/nand_jedec.c            |  4 +-
> > > >  drivers/mtd/nand/raw/nand_micron.c           | 14 ++++---
> > > >  drivers/mtd/nand/raw/nand_onfi.c             |  8 ++--
> > > >  drivers/mtd/nand/raw/nand_samsung.c          | 19 ++++-----
> > > >  drivers/mtd/nand/raw/nand_toshiba.c          | 11 +++---
> > > >  drivers/mtd/nand/raw/sunxi_nand.c            |  5 ++-
> > > >  drivers/mtd/nand/raw/tegra_nand.c            |  9 +++--
> > > >  drivers/mtd/nand/spi/core.c                  |  8 ++--
> > > >  drivers/mtd/nand/spi/macronix.c              |  6 +--
> > > >  drivers/mtd/nand/spi/toshiba.c               |  6 +--
> > > >  include/linux/mtd/nand.h                     |  8 ++--
> > > >  20 files changed, 115 insertions(+), 100 deletions(-)
> > > > 
> > > > diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
> > > > index a4478ffa279d..3327d8539a73 100644
> > > > --- a/drivers/mtd/nand/Kconfig
> > > > +++ b/drivers/mtd/nand/Kconfig
> > > > @@ -13,6 +13,7 @@ menu "ECC engine support"
> > > >  
> > > >  config MTD_NAND_ECC
> > > >  	bool
> > > > +	select MTD_NAND_CORE      
> > > 
> > > This select looks suspicious. Shouldn't it be a depends on, and more
> > > importantly, I think it should be part of patch 15.    
> > 
> > Wouldn't we break a lot of users by using depends on?
> > 
> > Or maybe we can turn it on by default?  
> 
> It's a sub-functionality of the NAND core, so it should be a depends on
> in my opinion. Why would that break users. Aren't you selecting
> MTD_NAND_CORE in MTD_RAWNAND now? Those options should really remain
> hidden, and be selected at the SPI/raw NAND framework level.

I remembered we discussed that point already, yes the generic core is
selected by the SPI/raw NAND layers, so it should be fine. I'll move
this as a depends on in the previous patch.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
