Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2D1D21A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 09:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGFDrGQO4wrly2NWYkNxXbTuwJ7umMkmUHQvifl0JB4=; b=jBBMcb0xtsPz+N
	b9peNu8MxzNn7jKiPcb09FAJOlAVALuSk5zjTpuXBVdcTemquwRPHVdGerPzhHt0M+/ldGCFD78ci
	rn7jIV+PCpYBt6GvHJbWcBEiBWyZnguwqkJivRO3zqwbCr40aT58JDayRYJw4Z8+5lb5EXPuiaMWo
	En1jUlq8GUxj/QtnLZ3JH7KOJLQqBQFGkFcUnULWVVFkXMAtTG8DPHWcggg4dhGYsKOmjxEm/Kt0z
	N4lJbiIXqJT9HYhL/HZNj3jzUQYkeTP57S4JDlEHbiYWVQaVKH1Nnpb9iQalbKiE2tvn/R4tBwaR2
	MhxtU1D/r3yha60uShLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iISwq-0002Ya-Nf; Thu, 10 Oct 2019 07:33:20 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iISwj-0002Xz-GI; Thu, 10 Oct 2019 07:33:15 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 96F5D290783;
 Thu, 10 Oct 2019 08:33:11 +0100 (BST)
Date: Thu, 10 Oct 2019 09:33:08 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v2 09/22] mtd: spi-nor: Fix retlen handling in sst_write()
Message-ID: <20191010093308.2fe94974@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20190924074533.6618-10-tudor.ambarus@microchip.com>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
 <20190924074533.6618-10-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_003313_807197_7625E1DB 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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

On Tue, 24 Sep 2019 07:46:21 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> In case the write of the first byte failed, retlen was incorrectly
> incremented to *retlen += actual; on the exit path. retlen should be
> incremented when actual data was written to the flash.
> 
> Rename 'sst_write_err' label to 'out' as it is no longer generic for
> all the write errors in the sst_write() method, and may introduce
> confusion.

Renaming the label is indeed a good thing, but should be done in a
separate patch.

> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 0aee068a5835..be5dee622d51 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -2665,12 +2665,12 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
>  		/* write one byte. */
>  		ret = spi_nor_write_data(nor, to, 1, buf);
>  		if (ret < 0)
> -			goto sst_write_err;
> +			goto unlock_and_unprep;
>  		WARN(ret != 1, "While writing 1 byte written %i bytes\n",
>  		     (int)ret);
>  		ret = spi_nor_wait_till_ready(nor);
>  		if (ret)
> -			goto sst_write_err;
> +			goto unlock_and_unprep;
>  	}
>  	to += actual;

Not sure we need this new label, we can just have:

	actual = 0;
	/* Start write from odd address. */
	if (to % 2) {
		nor->program_opcode = SPINOR_OP_BP;

		/* write one byte. */
		ret = spi_nor_write_data(nor, to, 1, buf);
		if (ret < 0)
			goto out;
		WARN(ret != 1, "While writing 1 byte written %i
		bytes\n", (int)ret);
		ret = spi_nor_wait_till_ready(nor);
		if (ret)
			goto out;

		to++;
		actual++;
	}

>  
> @@ -2681,12 +2681,12 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
>  		/* write two bytes. */
>  		ret = spi_nor_write_data(nor, to, 2, buf + actual);
>  		if (ret < 0)
> -			goto sst_write_err;
> +			goto out;
>  		WARN(ret != 2, "While writing 2 bytes written %i bytes\n",
>  		     (int)ret);
>  		ret = spi_nor_wait_till_ready(nor);
>  		if (ret)
> -			goto sst_write_err;
> +			goto out;
>  		to += 2;
>  		nor->sst_write_second = true;
>  	}
> @@ -2694,35 +2694,35 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
>  
>  	ret = spi_nor_write_disable(nor);
>  	if (ret)
> -		goto sst_write_err;
> +		goto out;
>  
>  	ret = spi_nor_wait_till_ready(nor);
>  	if (ret)
> -		goto sst_write_err;
> +		goto out;
>  
>  	/* Write out trailing byte if it exists. */
>  	if (actual != len) {
>  		ret = spi_nor_write_enable(nor);
>  		if (ret)
> -			goto sst_write_err;
> +			goto out;
>  
>  		nor->program_opcode = SPINOR_OP_BP;
>  		ret = spi_nor_write_data(nor, to, 1, buf + actual);
>  		if (ret < 0)
> -			goto sst_write_err;
> +			goto out;
>  		WARN(ret != 1, "While writing 1 byte written %i bytes\n",
>  		     (int)ret);
>  		ret = spi_nor_wait_till_ready(nor);
>  		if (ret)
> -			goto sst_write_err;
> +			goto out;
>  
>  		ret = spi_nor_write_disable(nor);
>  		if (ret)
> -			goto sst_write_err;
> +			goto out;
>  
>  		actual += 1;
>  	}
> -sst_write_err:
> +out:
>  	*retlen += actual;
>  unlock_and_unprep:
>  	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_WRITE);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
