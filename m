Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE1F1E6421
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 16:39:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0hfqisJQy8G4UkJK6HT21S7DXmz8jrkCMEiX/b5K+Q=; b=FlXWqGoeFOP2VM
	LjuIgYD4yjBTAghLQOeUzPrTBeLw7FWrFaHiZIMUZK7PU7f5/L0jFKyxb/MNiu7FKd1madxwHZgjy
	y41CarcEk2UFDQ2xlgUqWZcX4spY/9eHTGs0Uc+8MKblpUIRMT3u/FIAUBmdFzOL5U5mTn4b/OrZd
	wOKXB2dB+oSiiJKVCuTk2EbtvNj6mLqfpAutW3w/yNT563oQ3sRKQSWY1h19Asd4gGM0mSojvETVw
	CPDU72pVe+ucYXmLpBLj+Y99TotQH3A2AkX6lUzNX3oSu1NrZ6eTPnsSo1hlL7Z3iUSi0W03CwboS
	ResIEnZ58CRb/8w5OKSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJgt-00007h-Tf; Thu, 28 May 2020 14:39:27 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJge-0008OU-KN; Thu, 28 May 2020 14:39:14 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id F04AC2A3FBA;
 Thu, 28 May 2020 15:39:10 +0100 (BST)
Date: Thu, 28 May 2020 16:39:07 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v6 16/18] mtd: nand: Convert generic NAND bits to use
 the ECC framework
Message-ID: <20200528163907.6539e2a1@collabora.com>
In-Reply-To: <20200528113113.9166-17-miquel.raynal@bootlin.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
 <20200528113113.9166-17-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_073912_836327_4E674E38 
X-CRM114-Status: GOOD (  14.92  )
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

On Thu, 28 May 2020 13:31:11 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Embed a generic NAND ECC high-level object in the nand_device
> structure to carry all the ECC engine configuration/data. Adapt the
> raw NAND and SPI-NAND cores to fit the change.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/nand/Kconfig                     |  1 +
>  drivers/mtd/nand/raw/atmel/nand-controller.c |  9 +++--
>  drivers/mtd/nand/raw/brcmnand/brcmnand.c     |  7 ++--
>  drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c   | 12 +++---
>  drivers/mtd/nand/raw/marvell_nand.c          |  7 ++--
>  drivers/mtd/nand/raw/mtk_nand.c              |  4 +-
>  drivers/mtd/nand/raw/nand_base.c             | 25 ++++++------
>  drivers/mtd/nand/raw/nand_esmt.c             | 11 +++---
>  drivers/mtd/nand/raw/nand_hynix.c            | 41 ++++++++++----------
>  drivers/mtd/nand/raw/nand_jedec.c            |  4 +-
>  drivers/mtd/nand/raw/nand_micron.c           | 14 ++++---
>  drivers/mtd/nand/raw/nand_onfi.c             |  8 ++--
>  drivers/mtd/nand/raw/nand_samsung.c          | 19 ++++-----
>  drivers/mtd/nand/raw/nand_toshiba.c          | 11 +++---
>  drivers/mtd/nand/raw/sunxi_nand.c            |  5 ++-
>  drivers/mtd/nand/raw/tegra_nand.c            |  9 +++--
>  drivers/mtd/nand/spi/core.c                  |  8 ++--
>  drivers/mtd/nand/spi/macronix.c              |  6 +--
>  drivers/mtd/nand/spi/toshiba.c               |  6 +--
>  include/linux/mtd/nand.h                     |  8 ++--
>  20 files changed, 115 insertions(+), 100 deletions(-)
> 
> diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
> index a4478ffa279d..3327d8539a73 100644
> --- a/drivers/mtd/nand/Kconfig
> +++ b/drivers/mtd/nand/Kconfig
> @@ -13,6 +13,7 @@ menu "ECC engine support"
>  
>  config MTD_NAND_ECC
>  	bool
> +	select MTD_NAND_CORE

This select looks suspicious. Shouldn't it be a depends on, and more
importantly, I think it should be part of patch 15.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
