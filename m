Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E3BD4E99
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 11:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eotgi9sxlgaD645svw+1GNV/vwS8CgFbHMC7GlP3nos=; b=f/EYM/LGV0fpAP
	HMawHLr/hpRmpSqMMsHmbfsrhMUIrLUvIv0/cLecfyht0wn/tn4KT74e7VwJdDypX9rJibMa/CWOo
	fMaLvNA9Y6yFwjyY+psoyoq8CCRjonjSk6LiavwpHaYFybHS2d36N+5V0pSSpCvrCIU5/4jaKgcLg
	mJOBBALG2W8ySoTEAwqPqdgghVb8BmKpw+iBOEUYCvplc2RLImaGqeMm/cydQXs2e+YemRebujN1h
	ahCAW12ENwHK86h/00erylCqjHtYI4KL49ZALPDkJwLYkaMtTBuugwc+Q+PpfasHmu+obMiXd6daU
	TFkEJPhCcQnwNFeAx2Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJDhU-0002Iv-F1; Sat, 12 Oct 2019 09:28:36 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJDhN-0002IW-5u; Sat, 12 Oct 2019 09:28:30 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 765542912D7;
 Sat, 12 Oct 2019 10:28:27 +0100 (BST)
Date: Sat, 12 Oct 2019 11:28:24 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v3 06/40] mtd: rawnand: Use the new ECC engine type
 enumeration
Message-ID: <20191012112824.1ebb914c@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20190919193141.7865-7-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
 <20190919193141.7865-7-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_022829_352205_6EA4D522 
X-CRM114-Status: GOOD (  16.82  )
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

On Thu, 19 Sep 2019 21:31:06 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index 00a261284aad..ad0b892c2523 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -4835,7 +4835,7 @@ static int nand_detect(struct nand_chip *chip, struct nand_flash_dev *type)
>  
>  static const char * const nand_ecc_modes[] = {
>  	[NAND_ECC_NONE]		= "none",
> -	[NAND_ECC_SOFT]		= "soft",
> +	[NAND_SOFT_ECC_ENGINE]		= "soft",

Not sure why this one is changed. This string array still describes ECC
modes, not ECC engine types.

>  	[NAND_ECC_HW]		= "hw",
>  	[NAND_ECC_HW_SYNDROME]	= "hw_syndrome",
>  	[NAND_ECC_HW_OOB_FIRST]	= "hw_oob_first",
> @@ -4863,21 +4863,44 @@ static int of_get_nand_ecc_mode(struct device_node *np)
>  	if (err < 0)
>  		return err;
>  
> -	for (i = NAND_ECC_NONE; i < ARRAY_SIZE(nand_ecc_modes); i++)
> -		if (!strcasecmp(pm, nand_ecc_modes[i]))
> +	for (i = NAND_NO_ECC_ENGINE;
> +	     i < ARRAY_SIZE(nand_ecc_engine_providers); i++)
> +		if (!strcasecmp(pm, nand_ecc_engine_providers[i]))
>  			return i;

Hm, you still need to support the old bindings (I wonder how that can
work). What should be done instead is have a conversion table that turns
an ecc_mode string into a engine_type+placement pair, so you don't have
to update the DT bindings (though we might want to expose new props for
the new model, like ecc-placement and ecc-engine).

>  
> +	for (i = NAND_ECC_SYNDROME_OOB_PLACEMENT;
> +	     i < ARRAY_SIZE(nand_ecc_engine_oob_placement); i++)
> +		if (!strcasecmp(pm, nand_ecc_engine_oob_placement[i]))
> +			return NAND_HW_ECC_ENGINE;
> +

I also don't understand how this one works, placement does not give any
clue on the type of ECC engine (at least it shouldn't).

>  	/*
>  	 * For backward compatibility we support few obsoleted values that don't
> -	 * have their mappings into the nand_ecc_mode enum anymore (they were
> -	 * merged with other enums).
> +	 * have their mappings into the nand_ecc_engine_providers enum anymore
> +	 * (they were merged with other enums).
>  	 */
>  	if (!strcasecmp(pm, "soft_bch"))
> -		return NAND_ECC_SOFT;
> +		return NAND_SOFT_ECC_ENGINE;
>  
>  	return -ENODEV;
>  }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
