Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB4CD2106
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 08:50:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDGPIfpa8jlV/AodBDBsgny8Ig9iZ0TIxOgLtlPhHP8=; b=kcoAb7kSJBOqJv
	5DfydGUP2Re7RoNUJuHzIuabwQW73/7b05sstTeZ5Bvv5g2W5PkC6uK60f7+9uUP/RVkFbqWiGhA/
	UY6GPX9L8LAriGk2EL9/4HdPnVRsDkt900q5KshHiFJ2mOW12eQ8t5vTOe2CwcM2IjcgQAsXc6f0c
	6cOUA90obkPKZ1SVUKWU4iS6vBBmwhcKbuRZWbXkrJeYs2uNkuD4IIfGNAOasPDtuDHakt5qN9Cw1
	scpTlKKoU5zAG+kCaKIRMWE9sxaQR2xE2GihfuU00F1uDKIuSlly811b6MFpVdGUI7mO1kR+B7+/N
	aJ87/p/DCxYjHkLLSE+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iISGu-0007zg-3d; Thu, 10 Oct 2019 06:50:00 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iISGm-0007yq-1i; Thu, 10 Oct 2019 06:49:53 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 676422905B3;
 Thu, 10 Oct 2019 07:49:49 +0100 (BST)
Date: Thu, 10 Oct 2019 08:49:46 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v2 01/22] mtd: spi-nor: hisi-sfc: Drop nor->erase NULL
 assignment
Message-ID: <20191010084946.62fb8449@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20190924074533.6618-2-tudor.ambarus@microchip.com>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
 <20190924074533.6618-2-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_234952_218329_A2D9A254 
X-CRM114-Status: GOOD (  13.50  )
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
Cc: linux-arm-kernel@lists.infradead.org, vigneshr@ti.com,
 geert+renesas@glider.be, andrew@aj.id.au, richard@nod.at,
 linux-kernel@vger.kernel.org, vz@mleia.com, marek.vasut@gmail.com,
 jonas@norrbonn.se, linux-mtd@lists.infradead.org, joel@jms.id.au,
 miquel.raynal@bootlin.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, computersforpeace@gmail.com,
 dwmw2@infradead.org, linux-aspeed@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Sep 2019 07:45:50 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> The pointer to 'struct spi_nor' is kzalloc'ed above in the code.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/spi-nor/hisi-sfc.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/mtd/spi-nor/hisi-sfc.c b/drivers/mtd/spi-nor/hisi-sfc.c
> index 6dac9dd8bf42..c99ed9cdbf9c 100644
> --- a/drivers/mtd/spi-nor/hisi-sfc.c
> +++ b/drivers/mtd/spi-nor/hisi-sfc.c
> @@ -364,7 +364,6 @@ static int hisi_spi_nor_register(struct device_node *np,
>  	nor->write_reg = hisi_spi_nor_write_reg;
>  	nor->read = hisi_spi_nor_read;
>  	nor->write = hisi_spi_nor_write;
> -	nor->erase = NULL;
>  	ret = spi_nor_scan(nor, NULL, &hwcaps);
>  	if (ret)
>  		return ret;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
