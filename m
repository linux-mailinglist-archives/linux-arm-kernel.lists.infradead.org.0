Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C771EC013
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 18:33:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qXCKG31BdyFtsN4lG7rVVYMHVH4oWUmLBnfGKX9H1/E=; b=oR5TtbTEbPsbhZ
	N3EPO712HbLTvL0Vyu1Zrx5ZXaaHQlNaXTc7BQ+/Sy/s1my9k5tNOt6p6JeFWMu1FYg4NGpVDkfCt
	HO6a9FGyqBFbqkqPfhOLJ25mGIIt7VZTFahK86lZauolytfu6FAoQlDiRCgIvRRoIYbnF3Nq7pLLF
	cI+Jt1fqUv2yqCptYrqFjdNBwG54bxEDgfCl6CzZrL1TsjQtHWHIz1g0Fj5m37Thu2Ch/tmPSKUeQ
	k/jaPRqpXBaUvlqsqYkG5CZIcGIg/kPN/R4jyDQnMS0y4KQ9PhWryvV+bHEtNh/DGop23UGuXavf0
	L5WI9t5SOOdDbsZYkfgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg9rG-000511-VM; Tue, 02 Jun 2020 16:33:46 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg9rA-0004zu-O0; Tue, 02 Jun 2020 16:33:42 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 403F42A366D;
 Tue,  2 Jun 2020 17:33:39 +0100 (BST)
Date: Tue, 2 Jun 2020 18:33:36 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v9 0/9] Preparation to the generic ECC engine abstraction
Message-ID: <20200602183336.5447d34a@collabora.com>
In-Reply-To: <20200602143124.29553-1-miquel.raynal@bootlin.com>
References: <20200602143124.29553-1-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_093340_909536_9E2DB882 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  2 Jun 2020 16:31:15 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> This is a respin of the end of my previous series, just the patches which needed to be fixed.
> 
> Changes in v9:
> * This time sending the additional patchs, not just the old ones with
>   corrections. v8 should be ignored, sorry for the noise.
> 
> Changes in v8:
> * Split "Convert generic NAND bits to ECC framework" into several peaces:
>   > added two helpers
>   > converted SPI-NAND then raw-NAND.  
> * Fixed a comment.
> * Used the _ooblayout suffix instead of _layout.
> 
> 
> Miquel Raynal (9):
>   mtd: nand: Create a helper to extract the ECC configuration
>   mtd: spinand: Use nanddev_get_ecc_conf() when relevant
>   mtd: nand: Create a helper to extract the ECC requirements
>   mtd: rawnand: Use nanddev_get_ecc_requirements() when relevant
>   mtd: nand: Convert generic NAND bits to use the ECC framework
>   mtd: rawnand: Hide the generic OOB layout objects behind helpers
>   mtd: rawnand: Write a compatibility layer
>   mtd: rawnand: Move generic OOB layouts to the ECC framework
>   mtd: rawnand: Move the user input parsing bits to the ECC framework

Sorry, but I keep thinking you should re-order things so we don't have
code blocks introduced and then moved around in the same patchset.
What's the point of introducing new props/helpers in rawnand if the
ultimate goal is to move them to nand.h, especially since none of the
existing rawnand drivers (or the rawnand core) need those new DT props
right now. You should really consider doing that in 3 distinct steps:

1/ Introduce ECC related fields/defs/... at the generic NAND level
2/ Patch rawnand to use those fields/new defs and deprecate the old ones
3/ Move rawnand defs/code that can be made generic and be useful to
   !rawnand users

> 
>  drivers/mtd/nand/ecc.c                        | 314 ++++++++++++++
>  drivers/mtd/nand/raw/Kconfig                  |   1 +
>  drivers/mtd/nand/raw/arasan-nand-controller.c |   2 +-
>  drivers/mtd/nand/raw/atmel/nand-controller.c  |  15 +-
>  drivers/mtd/nand/raw/brcmnand/brcmnand.c      |   8 +-
>  drivers/mtd/nand/raw/davinci_nand.c           |   3 +-
>  drivers/mtd/nand/raw/denali.c                 |   3 +
>  drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c    |  13 +-
>  .../mtd/nand/raw/ingenic/ingenic_nand_drv.c   |   6 +-
>  drivers/mtd/nand/raw/marvell_nand.c           |   8 +-
>  drivers/mtd/nand/raw/mtk_nand.c               |   6 +-
>  drivers/mtd/nand/raw/nand_base.c              | 395 ++++--------------
>  drivers/mtd/nand/raw/nand_esmt.c              |  14 +-
>  drivers/mtd/nand/raw/nand_hynix.c             |  43 +-
>  drivers/mtd/nand/raw/nand_jedec.c             |   7 +-
>  drivers/mtd/nand/raw/nand_micron.c            |  17 +-
>  drivers/mtd/nand/raw/nand_onfi.c              |  14 +-
>  drivers/mtd/nand/raw/nand_samsung.c           |  21 +-
>  drivers/mtd/nand/raw/nand_toshiba.c           |  15 +-
>  drivers/mtd/nand/raw/sunxi_nand.c             |   9 +-
>  drivers/mtd/nand/raw/tegra_nand.c             |  15 +-
>  drivers/mtd/nand/raw/vf610_nfc.c              |   2 +-
>  drivers/mtd/nand/spi/core.c                   |  10 +-
>  drivers/mtd/nand/spi/macronix.c               |   7 +-
>  drivers/mtd/nand/spi/toshiba.c                |   6 +-
>  include/linux/mtd/nand.h                      |  40 +-
>  include/linux/mtd/rawnand.h                   |  17 +-
>  27 files changed, 587 insertions(+), 424 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
