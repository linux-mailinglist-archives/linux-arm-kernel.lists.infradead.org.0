Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 815F21E63BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 16:23:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2pw3M0oO2G8joD8/I6sFuny4NannloAmEKGIwqda6Q=; b=Wnn79dMiGkrlNO
	v4weoOj8yFH9FGMg1QuMppp0PkPqby1AjATJzaHO01o3zKcPMi46VyZ7MpMpHdspW6fzHW9TnQJ6H
	JSc1U5JiNcvexlTd3xvNX4fZ0AurOHQlXz9Raw74Orj22w+7//N7vZ7vX+Ifjn0/AhhbFWfZgI4qS
	2nm8HoQwu5XyT16szy0JRRS3epoMPNW0JXDvW4brgzYcNipI866CmktS6TU6yejrqHCYLZHgYQ6PG
	jK8Bekwj/2d60NndxGU2BEORiHlmBC2CFAPmDkaPHI/3NQA+7EWMx2qWRxpWgiGlwrsWAi6HqBmek
	IQhCAo6JELf7vcJOcanQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJR0-0002Dh-40; Thu, 28 May 2020 14:23:02 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJQn-0002Cr-DP; Thu, 28 May 2020 14:22:50 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BC36F2A3DAD;
 Thu, 28 May 2020 15:22:47 +0100 (BST)
Date: Thu, 28 May 2020 16:22:44 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v6 04/18] mtd: rawnand: Create a helper to retrieve the
 ECC placement
Message-ID: <20200528162244.7f1c6c50@collabora.com>
In-Reply-To: <20200528113113.9166-5-miquel.raynal@bootlin.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
 <20200528113113.9166-5-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_072249_581781_2F303FF6 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Thu, 28 May 2020 13:30:59 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Use it from nand_dt_init() to initialize the ECC structure.
> 
> This allows the deprecation of the hw_syndrome ECC mode.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/raw/nand_base.c | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index 9fbd2a474b62..fd0bfe9bf7ae 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -5047,6 +5047,34 @@ static int of_get_nand_ecc_mode(struct device_node *np)
>  	return -ENODEV;
>  }
>  
> +enum nand_ecc_placement of_get_nand_ecc_placement(struct device_node *np)
> +{
> +	enum nand_ecc_placement placement;
> +	const char *pm;
> +	int err;
> +
> +	err = of_property_read_string(np, "nand-ecc-placement", &pm);
> +	if (!err) {
> +		for (placement = NAND_ECC_PLACEMENT_INTERLEAVED;
> +		     placement < ARRAY_SIZE(nand_ecc_placement); placement++) {
> +			if (!strcasecmp(pm, nand_ecc_placement[placement]))
> +				return placement;
> +		}
> +	}
> +
> +	/*
> +	 * For backward compatibility we support few obsoleted values that don't
> +	 * have their mappings into the nand_ecc_placement enum anymore.
> +	 */
> +	err = of_property_read_string(np, "nand-ecc-mode", &pm);
> +	if (!err) {
> +		if (!strcasecmp(pm, "hw_syndrome"))
> +			return NAND_ECC_PLACEMENT_INTERLEAVED;
> +	}
> +
> +	return NAND_ECC_PLACEMENT_UNKNOWN;
> +}
> +
>  static const char * const nand_ecc_algos[] = {
>  	[NAND_ECC_HAMMING]	= "hamming",
>  	[NAND_ECC_BCH]		= "bch",
> @@ -5143,6 +5171,7 @@ static int nand_dt_init(struct nand_chip *chip)
>  
>  	ecc_mode = of_get_nand_ecc_mode(dn);
>  	ecc_algo = of_get_nand_ecc_algo(dn);
> +	chip->ecc.placement = of_get_nand_ecc_placement(dn);
>  	ecc_strength = of_get_nand_ecc_strength(dn);
>  	ecc_step = of_get_nand_ecc_step_size(dn);
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
