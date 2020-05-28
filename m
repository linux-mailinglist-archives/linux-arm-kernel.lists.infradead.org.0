Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDB41E601D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 14:09:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UCxk7FPiwjaenbtbcB/fyr+tqzYAX0FefJOjC9jUQ8k=; b=XnnFKGJSmXjRbU
	I+dAN1n7z/UdeWhHhWzZVKESe0H+GrIrGtkwppqsBshpUnuryywJ48v4L6Qwu931CBSYjJ6MT+cW2
	MUc0hTgQwAU0FgtfeILSCRr3RMGf3PnWS7VWD+RIDNWyvlQHagquVSH4SRVGw2hwKRpgzLVbDbbyy
	qmYkFWYS7cakh0vHOYU9sKdrTz/v+Z/Vd7/UfCiQpPm2SA/+Vv57IAHIyn7qpQ4MqlWkBAO5FY65H
	Xvr0kBrdZRvAYwrgYzneEzw2AVdq53JbTnKnqIJVyr8+KLF04hHf6bi1gBC/YqwzQhV3FMMVTE6Od
	n7SqwsCqvlvKhKYHQAww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeHLQ-0003B9-Gd; Thu, 28 May 2020 12:09:08 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeHLF-0003AI-Id; Thu, 28 May 2020 12:08:58 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9E32A2A2E33;
 Thu, 28 May 2020 13:08:55 +0100 (BST)
Date: Thu, 28 May 2020 14:08:52 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v6 02/18] mtd: rawnand: Create a new enumeration to
 describe OOB placement
Message-ID: <20200528140852.51f19794@collabora.com>
In-Reply-To: <20200528113113.9166-3-miquel.raynal@bootlin.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
 <20200528113113.9166-3-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_050857_744355_BA8E32BF 
X-CRM114-Status: GOOD (  17.71  )
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

On Thu, 28 May 2020 13:30:57 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

In the subject s/OOB placement/ECC placement/

> There is currently a confusion between the ECC type/mode/provider
> (eg. on-host, software, on-die or none) and the ECC bytes placement.
> 
> Create a new enumeration to describe this placement.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
>  drivers/mtd/nand/raw/nand_base.c |  5 +++++
>  include/linux/mtd/rawnand.h      | 14 ++++++++++++++
>  2 files changed, 19 insertions(+)
> 
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index bd3f5a875e39..4d2d444f9db9 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -5018,6 +5018,11 @@ static const char * const nand_ecc_modes[] = {
>  	[NAND_ECC_ON_DIE]	= "on-die",
>  };
>  
> +static const char * const nand_ecc_placement[] = {
> +	[NAND_ECC_PLACEMENT_OOB] = "oob",
> +	[NAND_ECC_PLACEMENT_INTERLEAVED] = "interleaved",
> +};
> +
>  static int of_get_nand_ecc_mode(struct device_node *np)
>  {
>  	const char *pm;
> diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> index 65b1c1c18b41..5e014807e050 100644
> --- a/include/linux/mtd/rawnand.h
> +++ b/include/linux/mtd/rawnand.h
> @@ -92,6 +92,20 @@ enum nand_ecc_mode {
>  	NAND_ECC_ON_DIE,
>  };
>  
> +/**
> + * enum nand_ecc_placement - NAND ECC bytes placement
> + * @NAND_ECC_PLACEMENT_UNKNOWN: The actual position of the ECC bytes is unknown
> + * @NAND_ECC_PLACEMENT_OOB: The ECC bytes are located in the OOB area
> + * @NAND_ECC_PLACEMENT_INTERLEAVED: Syndrome layout, there are ECC bytes
> + *                                  interleaved with regular data in the main
> + *                                  area
> + */
> +enum nand_ecc_placement {
> +	NAND_ECC_PLACEMENT_UNKNOWN,
> +	NAND_ECC_PLACEMENT_OOB,
> +	NAND_ECC_PLACEMENT_INTERLEAVED,
> +};
> +
>  enum nand_ecc_algo {
>  	NAND_ECC_UNKNOWN,
>  	NAND_ECC_HAMMING,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
