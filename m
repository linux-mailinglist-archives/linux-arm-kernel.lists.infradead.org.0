Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 476271EBF8D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 18:00:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1UbqEPpsW6DXUV+zWeAM927da3O/S0y2swFqmtLh8E=; b=klZ43tNNYJ88pT
	af8ufXj2QCUYd0VtuPH3lrtKhHPLhzrlzwFEk3EZUjmrYgC5NKWr23yv6T5Jxh8llc7GbgQ55U/0r
	CCrygA2zXWdfHfUwkZqS6KyTgmcvMxb0Xminy/CzOWOs5KpgczbAF5HuicheebsZ5DHrw3pPuqkq3
	PtyAA0K+o9oLCKl83pfHFgfXrbrI1lhgZaWgXXthL3GpFh75gAPx3J8LdYcElH9mqa0/aALpN6xww
	XqLjgs/+vc78jcCn36aifcWJjgZuDE9vSKyY3d8hBo3vq9iKpA57o2jCaJAS/Rg91InkhXwWKxCzc
	UWAs/xlXVv6afS7fVXlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg9L1-0005na-6R; Tue, 02 Jun 2020 16:00:27 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg9Ku-0005ma-Pu; Tue, 02 Jun 2020 16:00:22 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6C20C2A1AC0;
 Tue,  2 Jun 2020 17:00:19 +0100 (BST)
Date: Tue, 2 Jun 2020 18:00:16 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v9 4/9] mtd: rawnand: Use nanddev_get_ecc_requirements()
 when relevant
Message-ID: <20200602180016.2adefd73@collabora.com>
In-Reply-To: <20200602143124.29553-5-miquel.raynal@bootlin.com>
References: <20200602143124.29553-1-miquel.raynal@bootlin.com>
 <20200602143124.29553-5-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_090020_968995_E26F48F3 
X-CRM114-Status: GOOD (  12.50  )
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

On Tue,  2 Jun 2020 16:31:19 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:


> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index 1ce2cbe72e4c..e8e22d79f422 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -4725,6 +4725,9 @@ static inline bool is_full_id_nand(struct nand_flash_dev *type)
>  static bool find_full_id_nand(struct nand_chip *chip,
>  			      struct nand_flash_dev *type)
>  {
> +	struct nand_device *base = &chip->base;
> +	struct nand_ecc_props *requirements =
> +		(struct nand_ecc_props *)nanddev_get_ecc_requirements(base);

Ouch, that sounds wrong. How about introducing a
nanddev_set_ecc_requirements() helper instead? The same applies to all
places where you have this cast.

> diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
> index e572d1600f63..0b89da54bef2 100644
> --- a/include/linux/mtd/nand.h
> +++ b/include/linux/mtd/nand.h
> @@ -527,7 +527,7 @@ nanddev_get_ecc_conf(struct nand_device *nand)
>   *                                  device
>   * @nand: NAND device
>   */
> -const struct nand_ecc_props *
> +static inline const struct nand_ecc_props *
>  nanddev_get_ecc_requirements(struct nand_device *nand)

Looks like this should be squashed in patch 2.

>  {
>  	return &nand->eccreq;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
