Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72457D4E69
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 11:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BF+lAU3GnKP4qPAGD9/UBSkCguqIBHsb4BAjYq+3clU=; b=WcL3qMg20SwRiS
	VN66DNCCC+ocEGZfDgw/73aZ6wZku8yZFrTAlm4tewAjWXvhNfeZGIi+cDx8z1TMk6FQbKgLDp6L2
	ZeDFJh9lkhiHD4l0vvkT6TfyamghhkzB3OmDVuO9AFQ1NUPr0BzZusFITzLtfMpUCT5XCf+u/dj02
	LZU7AtQOxVKLKHBJAcWTg5JuXkNGhk0B2lWlFl3NnClXEcSU4kjxQhJvsXyJ24W1PMAdpFMWiA49e
	NMNBxdgODVoWXs1nm8f6CWmyLN/gyb+vNaweU4zm9SUfULvEpXsUEQNxOuZ+TwsYjfjtZzyUZAWbo
	YasuvYt6TBEl12alUXJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJDLd-0000IG-Rf; Sat, 12 Oct 2019 09:06:01 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJDLW-0000Ha-JT; Sat, 12 Oct 2019 09:05:55 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E81ED2912EA;
 Sat, 12 Oct 2019 10:05:52 +0100 (BST)
Date: Sat, 12 Oct 2019 11:05:49 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, Julien Su
 <juliensu@mxic.com.tw>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v3 04/40] mtd: rawnand: Separate the ECC engine type and
 the OOB placement
Message-ID: <20191012110549.5949fb77@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20190919193141.7865-5-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
 <20190919193141.7865-5-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_020554_774230_F0698D96 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mason Yang <masonccyang@mxic.com.tw>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Sep 2019 21:31:04 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> The use of "OOB_FIRST" or "SYNDROME" placements should not be encoded
> in the ECC engine mode (also called type, or provider).
> 
> Create a "placement" field in NAND chip and change all occurrences of
> the NAND_ECC_HW_SYNDROME and NAND_ECC_HW_OOB_FIRST enumerations to be
> just NAND_ECC_HW and possibly a placement entry like
> NAND_ECC_SYNDROME_OOB_PLACEMENT or NAND_ECC_OOB_FIRST_PLACEMENT.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  arch/arm/mach-davinci/board-dm355-leopard.c |   3 +-
>  drivers/mtd/nand/raw/cafe_nand.c            |   3 +-
>  drivers/mtd/nand/raw/davinci_nand.c         |   8 +-
>  drivers/mtd/nand/raw/denali.c               |   3 +-
>  drivers/mtd/nand/raw/diskonchip.c           |   3 +-
>  drivers/mtd/nand/raw/ingenic/jz4740_nand.c  |   3 +-
>  drivers/mtd/nand/raw/lpc32xx_slc.c          |   3 +-
>  drivers/mtd/nand/raw/nand_base.c            | 125 ++++++++++----------
>  drivers/mtd/nand/raw/r852.c                 |   3 +-
>  include/linux/mtd/rawnand.h                 |   6 +-
>  include/linux/platform_data/mtd-davinci.h   |   1 +
>  11 files changed, 89 insertions(+), 72 deletions(-)
> 
> diff --git a/arch/arm/mach-davinci/board-dm355-leopard.c b/arch/arm/mach-davinci/board-dm355-leopard.c
> index b9e9950dd300..99f4388e8864 100644
> --- a/arch/arm/mach-davinci/board-dm355-leopard.c
> +++ b/arch/arm/mach-davinci/board-dm355-leopard.c
> @@ -76,7 +76,8 @@ static struct davinci_nand_pdata davinci_nand_data = {
>  	.mask_chipsel		= BIT(14),
>  	.parts			= davinci_nand_partitions,
>  	.nr_parts		= ARRAY_SIZE(davinci_nand_partitions),
> -	.ecc_mode		= NAND_ECC_HW_SYNDROME,
> +	.ecc_mode		= NAND_ECC_HW,
> +	.ecc_oob_placement	= NAND_ECC_SYNDROME_OOB_PLACEMENT,

I guess we can simply name this field ->ecc_placement (see my comment on
patch 3).

>  	.ecc_bits		= 4,
>  	.bbt_options		= NAND_BBT_USE_FLASH,
>  };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
