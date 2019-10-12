Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C66D4E52
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 10:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ZB6OReopAhXmJRm+9ycJoHNf68rO1pv0CrvIQSicrc=; b=lyOKPARC1JXJy6
	Ph0PaMt/aWuO1KkyEd8q/CRMqXrH+rZZNB+8vCa/bX5CWpRnY/po3g+aYAJ0epamcLCLhx8Pl9VKn
	RYXa6gsBsipgvV52sEgXVpgDM3g9UUxd1rNONBzya4dcvTE9GGGW4gKi5wMDStkCFLFlajvdn6xat
	V1GReJlKm6PSsqCgQ+FOzW/jrtBrCkbqQkJOee4hJJniiDXStmy2nmgUqfJ1KvsBzBPefXK2zr3zS
	aMLu9Gwuv7bjMcR083Mrl324CtW8T/7n0HBwVYURlo6ir5hMGYgyJMgsTgaMShnNUN4KzVUpa4oWv
	+tAcdcQMdxWtGOAoo4AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJD5D-0000yO-Sj; Sat, 12 Oct 2019 08:49:03 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJD55-0000xk-Mf; Sat, 12 Oct 2019 08:48:57 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 3067328F4B7;
 Sat, 12 Oct 2019 09:48:54 +0100 (BST)
Date: Sat, 12 Oct 2019 10:48:51 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v3 02/40] mtd: rawnand: Add an invalid ECC mode to
 discriminate with valid ones
Message-ID: <20191012104851.760bc944@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20190919193141.7865-3-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
 <20190919193141.7865-3-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_014855_870941_D6A21F40 
X-CRM114-Status: GOOD (  18.30  )
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

On Thu, 19 Sep 2019 21:31:02 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> NAND ECC modes (or providers) have their own enumeration but, unlike
> their algorithms counterpart, there is no invalid or uninitialized
> value to discriminate between an error and having chosen a no-ECC
> situation. Add an "invalid" entry for this purpose.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/nand/raw/nand_base.c | 2 +-
>  include/linux/mtd/rawnand.h      | 1 +
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index 3bf2d56eced2..e6c483ec191a 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -4851,7 +4851,7 @@ static int of_get_nand_ecc_mode(struct device_node *np)
>  	if (err < 0)
>  		return err;
>  
> -	for (i = 0; i < ARRAY_SIZE(nand_ecc_modes); i++)
> +	for (i = NAND_ECC_NONE; i < ARRAY_SIZE(nand_ecc_modes); i++)
>  		if (!strcasecmp(pm, nand_ecc_modes[i]))
>  			return i;
>  
> diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> index cd834e9f7e78..ccdc0c314acc 100644
> --- a/include/linux/mtd/rawnand.h
> +++ b/include/linux/mtd/rawnand.h
> @@ -84,6 +84,7 @@ struct nand_chip;
>   * Constants for ECC_MODES
>   */
>  enum nand_ecc_mode {
> +	NAND_ECC_INVALID,

Just nitpicking, but I feel -1 would be better fit for this INVALID
value.


	NAND_ECC_INVALID = -1,
	NAND_ECC_NONE = 0,

Unless you plan to add an entry for ECC_INVALID in nand_ecc_modes, of
course, in which case you indeed want to start at 0.

Regardless of that, the change looks good to me:

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

>  	NAND_ECC_NONE,
>  	NAND_ECC_SOFT,
>  	NAND_ECC_HW,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
