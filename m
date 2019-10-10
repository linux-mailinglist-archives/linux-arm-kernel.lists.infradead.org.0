Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E80E1D211B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 08:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+vo5ZrXy4XVHJHTUQJ/KZGs7BMpDwHay2ld8j6Z06iQ=; b=nS6RhnYbZhXJOq
	sPigm4mKr0XWmRMkHW538aazQVWB7xKplU7VUhkpaFaraBRzQJ3mj4PleNaGmnMAuAxGITa0oZmcE
	7PtY6G9a4EU9JGPEqDtXGLNB6ilxqpMdU6rEPF466tiupNJEWVXBMAoVyYfbT+FM++hHXThHUnwHd
	6HsS584Wdi0dPaWob9h7xxUctS2Lm2BQUHS3BUur7C2GZa8d57zc3cK7JeIalTRT0ymS0rCK02MuI
	Ek+9mI34Ppt1/CFzY4wyI8OvomlIaNi6/mpY7lspbFBkB2VnCUzHmhZTlDCkBMj3guN13bINMT6Mg
	713yjv6fILabobIVXpTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iISLa-0002JQ-Qc; Thu, 10 Oct 2019 06:54:50 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iISLP-0002Ib-Vm; Thu, 10 Oct 2019 06:54:41 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 111722905BC;
 Thu, 10 Oct 2019 07:54:38 +0100 (BST)
Date: Thu, 10 Oct 2019 08:54:35 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v2 03/22] mtd: spi-nor: cadence-quadspi: Fix
 cqspi_command_read() definition
Message-ID: <20191010085435.67b08ab5@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20190924074533.6618-4-tudor.ambarus@microchip.com>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
 <20190924074533.6618-4-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_235440_296153_E83D24EB 
X-CRM114-Status: GOOD (  15.11  )
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

On Tue, 24 Sep 2019 07:45:58 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> n_tx was never used, drop it. Replace 'const u8 *txbuf' with 'u8 opcode',
> to comply with the SPI NOR int (*read_reg)() method. The 'const'
> qualifier has no meaning for parameters passed by value, drop it.
> Going furher, the opcode was passed to cqspi_calc_rdreg() and never used,
> drop it.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/spi-nor/cadence-quadspi.c | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
> index ebda612641a4..22008fecd326 100644
> --- a/drivers/mtd/spi-nor/cadence-quadspi.c
> +++ b/drivers/mtd/spi-nor/cadence-quadspi.c
> @@ -285,7 +285,7 @@ static irqreturn_t cqspi_irq_handler(int this_irq, void *dev)
>  	return IRQ_HANDLED;
>  }
>  
> -static unsigned int cqspi_calc_rdreg(struct spi_nor *nor, const u8 opcode)
> +static unsigned int cqspi_calc_rdreg(struct spi_nor *nor)
>  {
>  	struct cqspi_flash_pdata *f_pdata = nor->priv;
>  	u32 rdreg = 0;
> @@ -354,8 +354,7 @@ static int cqspi_exec_flash_cmd(struct cqspi_st *cqspi, unsigned int reg)
>  	return cqspi_wait_idle(cqspi);
>  }
>  
> -static int cqspi_command_read(struct spi_nor *nor,
> -			      const u8 *txbuf, const unsigned n_tx,
> +static int cqspi_command_read(struct spi_nor *nor, u8 opcode,
>  			      u8 *rxbuf, size_t n_rx)
>  {
>  	struct cqspi_flash_pdata *f_pdata = nor->priv;
> @@ -373,9 +372,9 @@ static int cqspi_command_read(struct spi_nor *nor,
>  		return -EINVAL;
>  	}
>  
> -	reg = txbuf[0] << CQSPI_REG_CMDCTRL_OPCODE_LSB;
> +	reg = opcode << CQSPI_REG_CMDCTRL_OPCODE_LSB;
>  
> -	rdreg = cqspi_calc_rdreg(nor, txbuf[0]);
> +	rdreg = cqspi_calc_rdreg(nor);
>  	writel(rdreg, reg_base + CQSPI_REG_RD_INSTR);
>  
>  	reg |= (0x1 << CQSPI_REG_CMDCTRL_RD_EN_LSB);
> @@ -471,7 +470,7 @@ static int cqspi_read_setup(struct spi_nor *nor)
>  	unsigned int reg;
>  
>  	reg = nor->read_opcode << CQSPI_REG_RD_INSTR_OPCODE_LSB;
> -	reg |= cqspi_calc_rdreg(nor, nor->read_opcode);
> +	reg |= cqspi_calc_rdreg(nor);
>  
>  	/* Setup dummy clock cycles */
>  	dummy_clk = nor->read_dummy;
> @@ -604,7 +603,7 @@ static int cqspi_write_setup(struct spi_nor *nor)
>  	/* Set opcode. */
>  	reg = nor->program_opcode << CQSPI_REG_WR_INSTR_OPCODE_LSB;
>  	writel(reg, reg_base + CQSPI_REG_WR_INSTR);
> -	reg = cqspi_calc_rdreg(nor, nor->program_opcode);
> +	reg = cqspi_calc_rdreg(nor);
>  	writel(reg, reg_base + CQSPI_REG_RD_INSTR);
>  
>  	reg = readl(reg_base + CQSPI_REG_SIZE);
> @@ -1087,7 +1086,7 @@ static int cqspi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, size_t len)
>  
>  	ret = cqspi_set_protocol(nor, 0);
>  	if (!ret)
> -		ret = cqspi_command_read(nor, &opcode, 1, buf, len);
> +		ret = cqspi_command_read(nor, opcode, buf, len);
>  
>  	return ret;
>  }


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
