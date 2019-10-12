Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01678D4E9B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 11:29:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZL3gRx0Qp0BSQffiuEJZQ128RwU9qyvbGyPs4gWg+Y=; b=pHkgbKG0BVccKd
	awoNHr4+FqtGfoCmOIMseJMb5p9+XW2sv7W6tahf8xGWuYsLyfpXHdVUMwt6jW/S4dATe5VRfBbUZ
	J6wlSBKC8xlyI/XQePbQIsRQO97czC9pQvYmKRb35FONoate3y6coytEhQvX788fbO0PxbgSxJHFp
	817lqdW6ySgrRptkAqEwqjKKvFtthK5bh8oIY7iszso5HZa6CjwM9RgUbYKp8TIlonTw7AYcvrXXX
	7X5P7y5JWr2Jtj55kWwhEi6glswFa9rwyEoOSI2XAbsr2ryXhjLdu2Wn47wSCuhzQcNN1XqEYOqkA
	wNba3pAdZlOfhuDTyC5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJDif-0002vl-JL; Sat, 12 Oct 2019 09:29:49 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJDiW-0002vG-W2; Sat, 12 Oct 2019 09:29:42 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 75EEC28EDBF;
 Sat, 12 Oct 2019 10:29:39 +0100 (BST)
Date: Sat, 12 Oct 2019 11:29:36 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v3 07/40] mtd: rawnand: Drop the legacy ECC type
 enumeration
Message-ID: <20191012112936.6c6fbea8@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20190919193141.7865-8-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
 <20190919193141.7865-8-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_022941_160270_F46750A3 
X-CRM114-Status: GOOD (  16.64  )
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
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Sep 2019 21:31:07 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Now that all files have been migrated to use the new enumeration, drop
> the old one which is unused.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/nand/raw/nand_base.c |  9 ---------
>  include/linux/mtd/rawnand.h      | 13 -------------
>  2 files changed, 22 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index ad0b892c2523..c313fe4fc16c 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -4833,15 +4833,6 @@ static int nand_detect(struct nand_chip *chip, struct nand_flash_dev *type)
>  	return ret;
>  }
>  
> -static const char * const nand_ecc_modes[] = {
> -	[NAND_ECC_NONE]		= "none",
> -	[NAND_SOFT_ECC_ENGINE]		= "soft",
> -	[NAND_ECC_HW]		= "hw",
> -	[NAND_ECC_HW_SYNDROME]	= "hw_syndrome",
> -	[NAND_ECC_HW_OOB_FIRST]	= "hw_oob_first",
> -	[NAND_ECC_ON_DIE]	= "on-die",
> -};

You can't really drop that one, for DT backward compat.

> -
>  static const char * const nand_ecc_engine_providers[] = {
>  	[NAND_NO_ECC_ENGINE] = "none",
>  	[NAND_SOFT_ECC_ENGINE] = "soft",
> diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> index 08964ce8b65f..6c9be596a2d1 100644
> --- a/include/linux/mtd/rawnand.h
> +++ b/include/linux/mtd/rawnand.h
> @@ -80,19 +80,6 @@ struct nand_chip;
>  
>  #define NAND_DATA_IFACE_CHECK_ONLY	-1
>  
> -/*
> - * Constants for ECC_MODES
> - */
> -enum nand_ecc_mode {
> -	NAND_ECC_INVALID,
> -	NAND_ECC_NONE,
> -	NAND_ECC_SOFT,
> -	NAND_ECC_HW,
> -	NAND_ECC_HW_SYNDROME,
> -	NAND_ECC_HW_OOB_FIRST,
> -	NAND_ECC_ON_DIE,
> -};
> -

You can drop the enum though, assuming you have a way to convert
ecc_modes strings into engine_type+placement pairs.

>  /**
>   * enum nand_ecc_engine_type - NAND ECC engine type/provider
>   * @NAND_INVALID_ECC_ENGINE: Invalid value


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
