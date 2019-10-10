Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D222D2170
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 09:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v19vfVjf0SLZP0bHUo8MXNHmFa9zpXbCOcK+/bGWVF4=; b=UxCum/quwvx3yd
	0exli7iYPUNXvRmKhnBeB/2uiVnn2NXMFEMWNl+TLZgmo+OcKeMcduY+eKHHaLC27LBlRhDks0Zsp
	HPXYQnZp1aDAz8cyo3x3sEpZMAhlh1m4uEwWdDLrFZdMaep35RwoDHVsyq6j1BBEFwlvXyQwgI89R
	HnOeIvpoMBqQbAJxa96s/ub1POMnEN0YttHXz5jfaKUkkjKu2+jFcIC9kErGgDrXKGez6dwUDSL6j
	yvRUSQ3i9H4J+KbKnOektuzpnWhjsefuNwJ+snOASBXiAkVpdhTeT5glM5TYqolqfVszWvyWNjhaT
	tOeedOnqZkzFe62SfTQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iISeW-0002E1-Jq; Thu, 10 Oct 2019 07:14:24 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iISe9-00023U-DG; Thu, 10 Oct 2019 07:14:03 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 979B1290767;
 Thu, 10 Oct 2019 08:13:59 +0100 (BST)
Date: Thu, 10 Oct 2019 09:13:56 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v2 05/22] mtd: spi-nor: Rework read_sr()
Message-ID: <20191010091356.5d9a4e44@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20190924074533.6618-6-tudor.ambarus@microchip.com>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
 <20190924074533.6618-6-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_001401_706349_131E57EF 
X-CRM114-Status: GOOD (  20.46  )
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

On Tue, 24 Sep 2019 07:46:08 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> static int read_sr(struct spi_nor *nor)
> becomes
> static int spi_nor_read_sr(struct spi_nor *nor, u8 *sr)
> 
> The new function returns 0 on success and -errno otherwise.
> We let the callers pass the pointer to the buffer where the
> value of the Status Register will be written. This way we avoid
> the casts between int and u8, which can be confusing.
> 
> Prepend spi_nor_ to the function name, all functions should begin
> with that.
> 
> S/pr_err/dev_err and drop duplicated dev_err in callers, in case the
> function returns error.

Too many things done in a single patch, can you split that please?

> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 131 +++++++++++++++++++++---------------------
>  1 file changed, 65 insertions(+), 66 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 7d0c1b598250..a23783641146 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -388,12 +388,14 @@ static ssize_t spi_nor_write_data(struct spi_nor *nor, loff_t to, size_t len,
>  	return nor->controller_ops->write(nor, to, len, buf);
>  }
>  
> -/*
> - * Read the status register, returning its value in the location
> - * Return the status register value.
> - * Returns negative if error occurred.
> +/**
> + * spi_nor_read_sr() - Read the Status Register.
> + * @nor:        pointer to 'struct spi_nor'
> + * @sr:		buffer where the value of the Status Register will be written.

You should definitely mention that this sr pointer has to be DMA-safe.

> + *
> + * Return: 0 on success, -errno otherwise.
>   */
> -static int read_sr(struct spi_nor *nor)
> +static int spi_nor_read_sr(struct spi_nor *nor, u8 *sr)
>  {
>  	int ret;
>  
> @@ -402,20 +404,17 @@ static int read_sr(struct spi_nor *nor)
>  			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_RDSR, 1),
>  				   SPI_MEM_OP_NO_ADDR,
>  				   SPI_MEM_OP_NO_DUMMY,
> -				   SPI_MEM_OP_DATA_IN(1, nor->bouncebuf, 1));
> +				   SPI_MEM_OP_DATA_IN(1, sr, 1));
>  
>  		ret = spi_mem_exec_op(nor->spimem, &op);
>  	} else {
> -		ret = nor->controller_ops->read_reg(nor, SPINOR_OP_RDSR,
> -						    nor->bouncebuf, 1);
> +		ret = nor->controller_ops->read_reg(nor, SPINOR_OP_RDSR, sr, 1);
>  	}
>  
> -	if (ret < 0) {
> -		pr_err("error %d reading SR\n", (int) ret);
> -		return ret;
> -	}
> +	if (ret)
> +		dev_err(nor->dev, "error %d reading SR\n", ret);
>  
> -	return nor->bouncebuf[0];
> +	return ret;
>  }


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
