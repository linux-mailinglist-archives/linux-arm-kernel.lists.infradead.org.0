Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1BC1E7965
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 11:26:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9fDNgPF3EqV/jUZ0A+PcQ5B04EtIauxXRpj6FfW3a6Y=; b=Rs2jDYzRcQT7wI
	v32YtLZteA3xe2CW5Y/Wt01+ijEFcVGBTj3iKAZhcEc7iab2Iit2TMJwY3yt97FFM92AKMvSGXgKT
	2QlGuPx8cG6oxIT4j+2GXup62JjljLtvV3kLX0lF0VCb3299YrRn5jnMIB762pPcrhrcv1A4/C0vt
	iy0p4GVwNjAepkgkOih37qoJvZ2lHDyUsHxzMuurLsSWNLHU+REmTJ1k3f8BSioRXz29xEOgAjRYY
	affYK8BF6xLwuB2DfxgbX6XS/H/Kj98yXrSWCvshckej/i/vvzV+pMPxYXjvFdsIiDqihbuZVnVpy
	LHUe96Z73Km7RUb5T/uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jebHI-0001Z3-DD; Fri, 29 May 2020 09:26:12 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jebGV-00014X-HX; Fri, 29 May 2020 09:25:25 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id A274C240005;
 Fri, 29 May 2020 09:25:16 +0000 (UTC)
Date: Fri, 29 May 2020 11:25:14 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v7 16/20] mtd: nand: Convert generic NAND bits to use
 the ECC framework
Message-ID: <20200529112514.0453904c@xps13>
In-Reply-To: <20200529103222.18c5b89b@collabora.com>
References: <20200529002517.3546-1-miquel.raynal@bootlin.com>
 <20200529002517.3546-17-miquel.raynal@bootlin.com>
 <20200529103222.18c5b89b@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_022523_752783_65C7E6BF 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
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


Boris Brezillon <boris.brezillon@collabora.com> wrote on Fri, 29 May
2020 10:32:22 +0200:

> On Fri, 29 May 2020 02:25:13 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > Embed a generic NAND ECC high-level object in the nand_device
> > structure to carry all the ECC engine configuration/data. Adapt the
> > raw NAND and SPI-NAND cores to fit the change.  
> 
> In order to split that one, and make future re-organizations less
> painful (hope we won't have to do that again, but who knows), I would
> recommend doing things in this order:
> 
> 1/ create a nanddev_get_ecc_requirements() helper that returns a
>    const struct nand_ecc_props *
> 2/ patch spinand to use this helper
> 3/ introduce nand_ecc
> 4/ patch rawnand to use the new ecc layer

Sounds like a lot of efforts for a mechanical change to me. Not
mentioning that the diff is pretty small now. But ok, I'll try.


> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  drivers/mtd/nand/raw/atmel/nand-controller.c |  9 +++--
> >  drivers/mtd/nand/raw/brcmnand/brcmnand.c     |  7 ++--
> >  drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c   | 12 +++---
> >  drivers/mtd/nand/raw/marvell_nand.c          |  7 ++--
> >  drivers/mtd/nand/raw/mtk_nand.c              |  4 +-
> >  drivers/mtd/nand/raw/nand_base.c             | 25 ++++++------
> >  drivers/mtd/nand/raw/nand_esmt.c             | 11 +++---
> >  drivers/mtd/nand/raw/nand_hynix.c            | 41 ++++++++++----------
> >  drivers/mtd/nand/raw/nand_jedec.c            |  4 +-
> >  drivers/mtd/nand/raw/nand_micron.c           | 14 ++++---
> >  drivers/mtd/nand/raw/nand_onfi.c             |  8 ++--
> >  drivers/mtd/nand/raw/nand_samsung.c          | 19 ++++-----
> >  drivers/mtd/nand/raw/nand_toshiba.c          | 11 +++---
> >  drivers/mtd/nand/raw/sunxi_nand.c            |  5 ++-
> >  drivers/mtd/nand/raw/tegra_nand.c            |  9 +++--
> >  drivers/mtd/nand/spi/core.c                  |  8 ++--
> >  drivers/mtd/nand/spi/macronix.c              |  6 +--
> >  drivers/mtd/nand/spi/toshiba.c               |  6 +--
> >  include/linux/mtd/nand.h                     |  8 ++--
> >  19 files changed, 114 insertions(+), 100 deletions(-)
> > 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
