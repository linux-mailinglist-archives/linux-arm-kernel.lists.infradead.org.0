Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F535D210C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 08:51:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y6Vv0nSP8cwghd0RpeJ6+XOpnWVVsLh8XL9/pSLSeHc=; b=g0e1jl5kVySW2X
	nL9drUqnIbi9xNIbiJXvnESPJF3pM41nY/xNnhIeaiHYtqsveNw48w2MkWxXQzlc2TbuEeGT1/LFY
	N+C8sP3++uS1tnjjHoiz7f0h3oNRcX/HDmsW8/4z1teprEx6VV1EIOwf0raXFBAKKZgqfr0tTxIjE
	lNt1SS2oBdIXic3gVToF0/uT3xQSgp3qOJiSEQJxMxKLAwXqTCEQu8ZseydrQ7R4+eswOqNkltXW9
	/ZNUHtR8nqojvUwI5PGm188+uYInPuPYeIeqBv5adLI2YvcutvxTFDPCNJhAGYOuLXCYJXFjNOh9+
	xPcA3oY9gyTbDdAxm39w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iISIT-0001Kj-F9; Thu, 10 Oct 2019 06:51:37 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iISIJ-0001KJ-3K; Thu, 10 Oct 2019 06:51:30 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 312942905B3;
 Thu, 10 Oct 2019 07:51:25 +0100 (BST)
Date: Thu, 10 Oct 2019 08:51:22 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v2 02/22] mtd: spi-nor: Introduce 'struct
 spi_nor_controller_ops'
Message-ID: <20191010085122.25a4bfc9@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20190924074533.6618-3-tudor.ambarus@microchip.com>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
 <20190924074533.6618-3-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_235127_413414_66FF61C7 
X-CRM114-Status: GOOD (  18.87  )
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

On Tue, 24 Sep 2019 07:45:53 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> Move all SPI NOR controller driver specific ops in a dedicated
> structure. 'struct spi_nor' becomes lighter.
> 
> Use size_t for lengths in 'int (*write_reg)()' and 'int (*read_reg)()'.
> Rename wite/read_buf to buf, the name of the functions are
> suggestive enough. Constify buf in int (*write_reg). Comply with these
> changes in the SPI NOR controller drivers.
> 
> Suggested-by: Boris Brezillon <boris.brezillon@collabora.com>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/spi-nor/aspeed-smc.c      | 23 ++++++-----
>  drivers/mtd/spi-nor/cadence-quadspi.c | 39 ++++++++++--------
>  drivers/mtd/spi-nor/hisi-sfc.c        | 22 +++++-----
>  drivers/mtd/spi-nor/intel-spi.c       | 24 ++++++-----
>  drivers/mtd/spi-nor/mtk-quadspi.c     | 25 +++++++-----
>  drivers/mtd/spi-nor/nxp-spifi.c       | 23 +++++++----
>  drivers/mtd/spi-nor/spi-nor.c         | 76 ++++++++++++++++++++---------------
>  include/linux/mtd/spi-nor.h           | 51 +++++++++++++----------
>  8 files changed, 166 insertions(+), 117 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/aspeed-smc.c b/drivers/mtd/spi-nor/aspeed-smc.c
> index 009c1da8574c..2b7cabbb680c 100644
> --- a/drivers/mtd/spi-nor/aspeed-smc.c
> +++ b/drivers/mtd/spi-nor/aspeed-smc.c
> @@ -320,7 +320,8 @@ static void aspeed_smc_unprep(struct spi_nor *nor, enum spi_nor_ops ops)
>  	mutex_unlock(&chip->controller->mutex);
>  }
>  
> -static int aspeed_smc_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
> +static int aspeed_smc_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf,
> +			       size_t len)
>  {
>  	struct aspeed_smc_chip *chip = nor->priv;
>  
> @@ -331,8 +332,8 @@ static int aspeed_smc_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
>  	return 0;
>  }
>  
> -static int aspeed_smc_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf,
> -				int len)
> +static int aspeed_smc_write_reg(struct spi_nor *nor, u8 opcode, const u8 *buf,
> +				size_t len)
>  {
>  	struct aspeed_smc_chip *chip = nor->priv;
>  
> @@ -746,6 +747,15 @@ static int aspeed_smc_chip_setup_finish(struct aspeed_smc_chip *chip)
>  	return 0;
>  }
>  
> +static const struct spi_nor_controller_ops aspeed_smc_controller_ops = {
> +	.prepare = aspeed_smc_prep,
> +	.unprepare = aspeed_smc_unprep,
> +	.read_reg = aspeed_smc_read_reg,
> +	.write_reg = aspeed_smc_write_reg,
> +	.read = aspeed_smc_read_user,
> +	.write = aspeed_smc_write_user,
> +};
> +
>  static int aspeed_smc_setup_flash(struct aspeed_smc_controller *controller,
>  				  struct device_node *np, struct resource *r)
>  {
> @@ -805,12 +815,7 @@ static int aspeed_smc_setup_flash(struct aspeed_smc_controller *controller,
>  		nor->dev = dev;
>  		nor->priv = chip;
>  		spi_nor_set_flash_node(nor, child);
> -		nor->read = aspeed_smc_read_user;
> -		nor->write = aspeed_smc_write_user;
> -		nor->read_reg = aspeed_smc_read_reg;
> -		nor->write_reg = aspeed_smc_write_reg;
> -		nor->prepare = aspeed_smc_prep;
> -		nor->unprepare = aspeed_smc_unprep;
> +		nor->controller_ops = &aspeed_smc_controller_ops;
>  
>  		ret = aspeed_smc_chip_setup_init(chip, r);
>  		if (ret)
> diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
> index 7bef63947b29..ebda612641a4 100644
> --- a/drivers/mtd/spi-nor/cadence-quadspi.c
> +++ b/drivers/mtd/spi-nor/cadence-quadspi.c
> @@ -356,18 +356,19 @@ static int cqspi_exec_flash_cmd(struct cqspi_st *cqspi, unsigned int reg)
>  
>  static int cqspi_command_read(struct spi_nor *nor,
>  			      const u8 *txbuf, const unsigned n_tx,
> -			      u8 *rxbuf, const unsigned n_rx)
> +			      u8 *rxbuf, size_t n_rx)
>  {
>  	struct cqspi_flash_pdata *f_pdata = nor->priv;
>  	struct cqspi_st *cqspi = f_pdata->cqspi;
>  	void __iomem *reg_base = cqspi->iobase;
>  	unsigned int rdreg;
>  	unsigned int reg;
> -	unsigned int read_len;
> +	size_t read_len;
>  	int status;
>  
>  	if (!n_rx || n_rx > CQSPI_STIG_DATA_LEN_MAX || !rxbuf) {
> -		dev_err(nor->dev, "Invalid input argument, len %d rxbuf 0x%p\n",
> +		dev_err(nor->dev,
> +			"Invalid input argument, len %zu rxbuf 0x%p\n",
>  			n_rx, rxbuf);
>  		return -EINVAL;
>  	}
> @@ -404,19 +405,19 @@ static int cqspi_command_read(struct spi_nor *nor,
>  }
>  
>  static int cqspi_command_write(struct spi_nor *nor, const u8 opcode,
> -			       const u8 *txbuf, const unsigned n_tx)
> +			       const u8 *txbuf, size_t n_tx)
>  {
>  	struct cqspi_flash_pdata *f_pdata = nor->priv;
>  	struct cqspi_st *cqspi = f_pdata->cqspi;
>  	void __iomem *reg_base = cqspi->iobase;
>  	unsigned int reg;
>  	unsigned int data;
> -	u32 write_len;
> +	size_t write_len;
>  	int ret;
>  
>  	if (n_tx > CQSPI_STIG_DATA_LEN_MAX || (n_tx && !txbuf)) {
>  		dev_err(nor->dev,
> -			"Invalid input argument, cmdlen %d txbuf 0x%p\n",
> +			"Invalid input argument, cmdlen %zu txbuf 0x%p\n",
>  			n_tx, txbuf);
>  		return -EINVAL;
>  	}
> @@ -1050,7 +1051,7 @@ static int cqspi_erase(struct spi_nor *nor, loff_t offs)
>  		return ret;
>  
>  	/* Send write enable, then erase commands. */
> -	ret = nor->write_reg(nor, SPINOR_OP_WREN, NULL, 0);
> +	ret = nor->controller_ops->write_reg(nor, SPINOR_OP_WREN, NULL, 0);
>  	if (ret)
>  		return ret;
>  
> @@ -1080,7 +1081,7 @@ static void cqspi_unprep(struct spi_nor *nor, enum spi_nor_ops ops)
>  	mutex_unlock(&cqspi->bus_mutex);
>  }
>  
> -static int cqspi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
> +static int cqspi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, size_t len)
>  {
>  	int ret;
>  
> @@ -1091,7 +1092,8 @@ static int cqspi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
>  	return ret;
>  }
>  
> -static int cqspi_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
> +static int cqspi_write_reg(struct spi_nor *nor, u8 opcode, const u8 *buf,
> +			   size_t len)
>  {
>  	int ret;
>  
> @@ -1216,6 +1218,16 @@ static void cqspi_request_mmap_dma(struct cqspi_st *cqspi)
>  	init_completion(&cqspi->rx_dma_complete);
>  }
>  
> +static const struct spi_nor_controller_ops cqspi_controller_ops = {
> +	.prepare = cqspi_prep,
> +	.unprepare = cqspi_unprep,
> +	.read_reg = cqspi_read_reg,
> +	.write_reg = cqspi_write_reg,
> +	.read = cqspi_read,
> +	.write = cqspi_write,
> +	.erase = cqspi_erase,
> +};
> +
>  static int cqspi_setup_flash(struct cqspi_st *cqspi, struct device_node *np)
>  {
>  	struct platform_device *pdev = cqspi->pdev;
> @@ -1265,14 +1277,7 @@ static int cqspi_setup_flash(struct cqspi_st *cqspi, struct device_node *np)
>  		nor->dev = dev;
>  		spi_nor_set_flash_node(nor, np);
>  		nor->priv = f_pdata;
> -
> -		nor->read_reg = cqspi_read_reg;
> -		nor->write_reg = cqspi_write_reg;
> -		nor->read = cqspi_read;
> -		nor->write = cqspi_write;
> -		nor->erase = cqspi_erase;
> -		nor->prepare = cqspi_prep;
> -		nor->unprepare = cqspi_unprep;
> +		nor->controller_ops = &cqspi_controller_ops;
>  
>  		mtd->name = devm_kasprintf(dev, GFP_KERNEL, "%s.%d",
>  					   dev_name(dev), cs);
> diff --git a/drivers/mtd/spi-nor/hisi-sfc.c b/drivers/mtd/spi-nor/hisi-sfc.c
> index c99ed9cdbf9c..a1258216f89d 100644
> --- a/drivers/mtd/spi-nor/hisi-sfc.c
> +++ b/drivers/mtd/spi-nor/hisi-sfc.c
> @@ -177,7 +177,7 @@ static void hisi_spi_nor_unprep(struct spi_nor *nor, enum spi_nor_ops ops)
>  }
>  
>  static int hisi_spi_nor_op_reg(struct spi_nor *nor,
> -				u8 opcode, int len, u8 optype)
> +				u8 opcode, size_t len, u8 optype)
>  {
>  	struct hifmc_priv *priv = nor->priv;
>  	struct hifmc_host *host = priv->host;
> @@ -200,7 +200,7 @@ static int hisi_spi_nor_op_reg(struct spi_nor *nor,
>  }
>  
>  static int hisi_spi_nor_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf,
> -		int len)
> +				 size_t len)
>  {
>  	struct hifmc_priv *priv = nor->priv;
>  	struct hifmc_host *host = priv->host;
> @@ -215,7 +215,7 @@ static int hisi_spi_nor_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf,
>  }
>  
>  static int hisi_spi_nor_write_reg(struct spi_nor *nor, u8 opcode,
> -				u8 *buf, int len)
> +				  const u8 *buf, size_t len)
>  {
>  	struct hifmc_priv *priv = nor->priv;
>  	struct hifmc_host *host = priv->host;
> @@ -311,6 +311,15 @@ static ssize_t hisi_spi_nor_write(struct spi_nor *nor, loff_t to,
>  	return len;
>  }
>  
> +static const struct spi_nor_controller_ops hisi_controller_ops = {
> +	.prepare = hisi_spi_nor_prep,
> +	.unprepare = hisi_spi_nor_unprep,
> +	.read_reg = hisi_spi_nor_read_reg,
> +	.write_reg = hisi_spi_nor_write_reg,
> +	.read = hisi_spi_nor_read,
> +	.write = hisi_spi_nor_write,
> +};
> +
>  /**
>   * Get spi flash device information and register it as a mtd device.
>   */
> @@ -357,13 +366,8 @@ static int hisi_spi_nor_register(struct device_node *np,
>  	}
>  	priv->host = host;
>  	nor->priv = priv;
> +	nor->controller_ops = &hisi_controller_ops;
>  
> -	nor->prepare = hisi_spi_nor_prep;
> -	nor->unprepare = hisi_spi_nor_unprep;
> -	nor->read_reg = hisi_spi_nor_read_reg;
> -	nor->write_reg = hisi_spi_nor_write_reg;
> -	nor->read = hisi_spi_nor_read;
> -	nor->write = hisi_spi_nor_write;
>  	ret = spi_nor_scan(nor, NULL, &hwcaps);
>  	if (ret)
>  		return ret;
> diff --git a/drivers/mtd/spi-nor/intel-spi.c b/drivers/mtd/spi-nor/intel-spi.c
> index 43e55a2e9b27..dc38f19ac7ae 100644
> --- a/drivers/mtd/spi-nor/intel-spi.c
> +++ b/drivers/mtd/spi-nor/intel-spi.c
> @@ -426,7 +426,7 @@ static int intel_spi_opcode_index(struct intel_spi *ispi, u8 opcode, int optype)
>  	return 0;
>  }
>  
> -static int intel_spi_hw_cycle(struct intel_spi *ispi, u8 opcode, int len)
> +static int intel_spi_hw_cycle(struct intel_spi *ispi, u8 opcode, size_t len)
>  {
>  	u32 val, status;
>  	int ret;
> @@ -469,7 +469,7 @@ static int intel_spi_hw_cycle(struct intel_spi *ispi, u8 opcode, int len)
>  	return 0;
>  }
>  
> -static int intel_spi_sw_cycle(struct intel_spi *ispi, u8 opcode, int len,
> +static int intel_spi_sw_cycle(struct intel_spi *ispi, u8 opcode, size_t len,
>  			      int optype)
>  {
>  	u32 val = 0, status;
> @@ -535,7 +535,8 @@ static int intel_spi_sw_cycle(struct intel_spi *ispi, u8 opcode, int len,
>  	return 0;
>  }
>  
> -static int intel_spi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
> +static int intel_spi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf,
> +			      size_t len)
>  {
>  	struct intel_spi *ispi = nor->priv;
>  	int ret;
> @@ -555,7 +556,8 @@ static int intel_spi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
>  	return intel_spi_read_block(ispi, buf, len);
>  }
>  
> -static int intel_spi_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
> +static int intel_spi_write_reg(struct spi_nor *nor, u8 opcode, const u8 *buf,
> +			       size_t len)
>  {
>  	struct intel_spi *ispi = nor->priv;
>  	int ret;
> @@ -864,6 +866,14 @@ static void intel_spi_fill_partition(struct intel_spi *ispi,
>  	}
>  }
>  
> +static const struct spi_nor_controller_ops intel_spi_controller_ops = {
> +	.read_reg = intel_spi_read_reg,
> +	.write_reg = intel_spi_write_reg,
> +	.read = intel_spi_read,
> +	.write = intel_spi_write,
> +	.erase = intel_spi_erase,
> +};
> +
>  struct intel_spi *intel_spi_probe(struct device *dev,
>  	struct resource *mem, const struct intel_spi_boardinfo *info)
>  {
> @@ -897,11 +907,7 @@ struct intel_spi *intel_spi_probe(struct device *dev,
>  
>  	ispi->nor.dev = ispi->dev;
>  	ispi->nor.priv = ispi;
> -	ispi->nor.read_reg = intel_spi_read_reg;
> -	ispi->nor.write_reg = intel_spi_write_reg;
> -	ispi->nor.read = intel_spi_read;
> -	ispi->nor.write = intel_spi_write;
> -	ispi->nor.erase = intel_spi_erase;
> +	ispi->nor.controller_ops = &intel_spi_controller_ops;
>  
>  	ret = spi_nor_scan(&ispi->nor, NULL, &hwcaps);
>  	if (ret) {
> diff --git a/drivers/mtd/spi-nor/mtk-quadspi.c b/drivers/mtd/spi-nor/mtk-quadspi.c
> index 34db01ab6cab..b1691680d174 100644
> --- a/drivers/mtd/spi-nor/mtk-quadspi.c
> +++ b/drivers/mtd/spi-nor/mtk-quadspi.c
> @@ -151,9 +151,9 @@ static int mtk_nor_execute_cmd(struct mtk_nor *mtk_nor, u8 cmdval)
>  }
>  
>  static int mtk_nor_do_tx_rx(struct mtk_nor *mtk_nor, u8 op,
> -			    u8 *tx, int txlen, u8 *rx, int rxlen)
> +			    const u8 *tx, size_t txlen, u8 *rx, size_t rxlen)
>  {
> -	int len = 1 + txlen + rxlen;
> +	size_t len = 1 + txlen + rxlen;
>  	int i, ret, idx;
>  
>  	if (len > MTK_NOR_MAX_SHIFT)
> @@ -193,7 +193,7 @@ static int mtk_nor_do_tx_rx(struct mtk_nor *mtk_nor, u8 op,
>  }
>  
>  /* Do a WRSR (Write Status Register) command */
> -static int mtk_nor_wr_sr(struct mtk_nor *mtk_nor, u8 sr)
> +static int mtk_nor_wr_sr(struct mtk_nor *mtk_nor, const u8 sr)
>  {
>  	writeb(sr, mtk_nor->base + MTK_NOR_PRGDATA5_REG);
>  	writeb(8, mtk_nor->base + MTK_NOR_CNT_REG);
> @@ -354,7 +354,7 @@ static ssize_t mtk_nor_write(struct spi_nor *nor, loff_t to, size_t len,
>  	return len;
>  }
>  
> -static int mtk_nor_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
> +static int mtk_nor_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, size_t len)
>  {
>  	int ret;
>  	struct mtk_nor *mtk_nor = nor->priv;
> @@ -376,8 +376,8 @@ static int mtk_nor_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
>  	return ret;
>  }
>  
> -static int mtk_nor_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf,
> -			     int len)
> +static int mtk_nor_write_reg(struct spi_nor *nor, u8 opcode, const u8 *buf,
> +			     size_t len)
>  {
>  	int ret;
>  	struct mtk_nor *mtk_nor = nor->priv;
> @@ -419,6 +419,13 @@ static int mtk_nor_enable_clk(struct mtk_nor *mtk_nor)
>  	return 0;
>  }
>  
> +static const struct spi_nor_controller_ops mtk_controller_ops = {
> +	.read_reg = mtk_nor_read_reg,
> +	.write_reg = mtk_nor_write_reg,
> +	.read = mtk_nor_read,
> +	.write = mtk_nor_write,
> +};
> +
>  static int mtk_nor_init(struct mtk_nor *mtk_nor,
>  			struct device_node *flash_node)
>  {
> @@ -438,12 +445,8 @@ static int mtk_nor_init(struct mtk_nor *mtk_nor,
>  	nor->dev = mtk_nor->dev;
>  	nor->priv = mtk_nor;
>  	spi_nor_set_flash_node(nor, flash_node);
> +	nor->controller_ops = &mtk_controller_ops;
>  
> -	/* fill the hooks to spi nor */
> -	nor->read = mtk_nor_read;
> -	nor->read_reg = mtk_nor_read_reg;
> -	nor->write = mtk_nor_write;
> -	nor->write_reg = mtk_nor_write_reg;
>  	nor->mtd.name = "mtk_nor";
>  	/* initialized with NULL */
>  	ret = spi_nor_scan(nor, NULL, &hwcaps);
> diff --git a/drivers/mtd/spi-nor/nxp-spifi.c b/drivers/mtd/spi-nor/nxp-spifi.c
> index 4a871587392b..9a5b1a7c636a 100644
> --- a/drivers/mtd/spi-nor/nxp-spifi.c
> +++ b/drivers/mtd/spi-nor/nxp-spifi.c
> @@ -123,7 +123,8 @@ static int nxp_spifi_set_memory_mode_on(struct nxp_spifi *spifi)
>  	return ret;
>  }
>  
> -static int nxp_spifi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
> +static int nxp_spifi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf,
> +			      size_t len)
>  {
>  	struct nxp_spifi *spifi = nor->priv;
>  	u32 cmd;
> @@ -145,7 +146,8 @@ static int nxp_spifi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
>  	return nxp_spifi_wait_for_cmd(spifi);
>  }
>  
> -static int nxp_spifi_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
> +static int nxp_spifi_write_reg(struct spi_nor *nor, u8 opcode, const u8 *buf,
> +			       size_t len)
>  {
>  	struct nxp_spifi *spifi = nor->priv;
>  	u32 cmd;
> @@ -263,9 +265,18 @@ static int nxp_spifi_setup_memory_cmd(struct nxp_spifi *spifi)
>  static void nxp_spifi_dummy_id_read(struct spi_nor *nor)
>  {
>  	u8 id[SPI_NOR_MAX_ID_LEN];
> -	nor->read_reg(nor, SPINOR_OP_RDID, id, SPI_NOR_MAX_ID_LEN);
> +	nor->controller_ops->read_reg(nor, SPINOR_OP_RDID, id,
> +				      SPI_NOR_MAX_ID_LEN);
>  }
>  
> +static const struct spi_nor_controller_ops nxp_spifi_controller_ops = {
> +	.read_reg  = nxp_spifi_read_reg,
> +	.write_reg = nxp_spifi_write_reg,
> +	.read  = nxp_spifi_read,
> +	.write = nxp_spifi_write,
> +	.erase = nxp_spifi_erase,
> +};
> +
>  static int nxp_spifi_setup_flash(struct nxp_spifi *spifi,
>  				 struct device_node *np)
>  {
> @@ -332,11 +343,7 @@ static int nxp_spifi_setup_flash(struct nxp_spifi *spifi,
>  	spifi->nor.dev   = spifi->dev;
>  	spi_nor_set_flash_node(&spifi->nor, np);
>  	spifi->nor.priv  = spifi;
> -	spifi->nor.read  = nxp_spifi_read;
> -	spifi->nor.write = nxp_spifi_write;
> -	spifi->nor.erase = nxp_spifi_erase;
> -	spifi->nor.read_reg  = nxp_spifi_read_reg;
> -	spifi->nor.write_reg = nxp_spifi_write_reg;
> +	spifi->nor.controller_ops = &nxp_spifi_controller_ops;
>  
>  	/*
>  	 * The first read on a hard reset isn't reliable so do a
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 1d8621d43160..b8c7ded0f145 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -338,7 +338,7 @@ static ssize_t spi_nor_read_data(struct spi_nor *nor, loff_t from, size_t len,
>  	if (nor->spimem)
>  		return spi_nor_spimem_read_data(nor, from, len, buf);
>  
> -	return nor->read(nor, from, len, buf);
> +	return nor->controller_ops->read(nor, from, len, buf);
>  }
>  
>  /**
> @@ -385,7 +385,7 @@ static ssize_t spi_nor_write_data(struct spi_nor *nor, loff_t to, size_t len,
>  	if (nor->spimem)
>  		return spi_nor_spimem_write_data(nor, to, len, buf);
>  
> -	return nor->write(nor, to, len, buf);
> +	return nor->controller_ops->write(nor, to, len, buf);
>  }
>  
>  /*
> @@ -406,7 +406,8 @@ static int read_sr(struct spi_nor *nor)
>  
>  		ret = spi_mem_exec_op(nor->spimem, &op);
>  	} else {
> -		ret = nor->read_reg(nor, SPINOR_OP_RDSR, nor->bouncebuf, 1);
> +		ret = nor->controller_ops->read_reg(nor, SPINOR_OP_RDSR,
> +						    nor->bouncebuf, 1);
>  	}
>  
>  	if (ret < 0) {
> @@ -435,7 +436,8 @@ static int read_fsr(struct spi_nor *nor)
>  
>  		ret = spi_mem_exec_op(nor->spimem, &op);
>  	} else {
> -		ret = nor->read_reg(nor, SPINOR_OP_RDFSR, nor->bouncebuf, 1);
> +		ret = nor->controller_ops->read_reg(nor, SPINOR_OP_RDFSR,
> +						    nor->bouncebuf, 1);
>  	}
>  
>  	if (ret < 0) {
> @@ -464,7 +466,8 @@ static int read_cr(struct spi_nor *nor)
>  
>  		ret = spi_mem_exec_op(nor->spimem, &op);
>  	} else {
> -		ret = nor->read_reg(nor, SPINOR_OP_RDCR, nor->bouncebuf, 1);
> +		ret = nor->controller_ops->read_reg(nor, SPINOR_OP_RDCR,
> +						    nor->bouncebuf, 1);
>  	}
>  
>  	if (ret < 0) {
> @@ -492,7 +495,8 @@ static int write_sr(struct spi_nor *nor, u8 val)
>  		return spi_mem_exec_op(nor->spimem, &op);
>  	}
>  
> -	return nor->write_reg(nor, SPINOR_OP_WRSR, nor->bouncebuf, 1);
> +	return nor->controller_ops->write_reg(nor, SPINOR_OP_WRSR,
> +					      nor->bouncebuf, 1);
>  }
>  
>  /*
> @@ -511,7 +515,7 @@ static int write_enable(struct spi_nor *nor)
>  		return spi_mem_exec_op(nor->spimem, &op);
>  	}
>  
> -	return nor->write_reg(nor, SPINOR_OP_WREN, NULL, 0);
> +	return nor->controller_ops->write_reg(nor, SPINOR_OP_WREN, NULL, 0);
>  }
>  
>  /*
> @@ -529,7 +533,7 @@ static int write_disable(struct spi_nor *nor)
>  		return spi_mem_exec_op(nor->spimem, &op);
>  	}
>  
> -	return nor->write_reg(nor, SPINOR_OP_WRDI, NULL, 0);
> +	return nor->controller_ops->write_reg(nor, SPINOR_OP_WRDI, NULL, 0);
>  }
>  
>  static struct spi_nor *mtd_to_spi_nor(struct mtd_info *mtd)
> @@ -631,8 +635,9 @@ static int macronix_set_4byte(struct spi_nor *nor, bool enable)
>  		return spi_mem_exec_op(nor->spimem, &op);
>  	}
>  
> -	return nor->write_reg(nor, enable ? SPINOR_OP_EN4B : SPINOR_OP_EX4B,
> -			      NULL, 0);
> +	return nor->controller_ops->write_reg(nor, enable ? SPINOR_OP_EN4B :
> +							    SPINOR_OP_EX4B,
> +					      NULL, 0);
>  }
>  
>  static int st_micron_set_4byte(struct spi_nor *nor, bool enable)
> @@ -660,7 +665,8 @@ static int spansion_set_4byte(struct spi_nor *nor, bool enable)
>  		return spi_mem_exec_op(nor->spimem, &op);
>  	}
>  
> -	return nor->write_reg(nor, SPINOR_OP_BRWR, nor->bouncebuf, 1);
> +	return nor->controller_ops->write_reg(nor, SPINOR_OP_BRWR,
> +					      nor->bouncebuf, 1);
>  }
>  
>  static int spi_nor_write_ear(struct spi_nor *nor, u8 ear)
> @@ -677,7 +683,8 @@ static int spi_nor_write_ear(struct spi_nor *nor, u8 ear)
>  		return spi_mem_exec_op(nor->spimem, &op);
>  	}
>  
> -	return nor->write_reg(nor, SPINOR_OP_WREAR, nor->bouncebuf, 1);
> +	return nor->controller_ops->write_reg(nor, SPINOR_OP_WREAR,
> +					      nor->bouncebuf, 1);
>  }
>  
>  static int winbond_set_4byte(struct spi_nor *nor, bool enable)
> @@ -712,7 +719,7 @@ static int spi_nor_xread_sr(struct spi_nor *nor, u8 *sr)
>  		return spi_mem_exec_op(nor->spimem, &op);
>  	}
>  
> -	return nor->read_reg(nor, SPINOR_OP_XRDSR, sr, 1);
> +	return nor->controller_ops->read_reg(nor, SPINOR_OP_XRDSR, sr, 1);
>  }
>  
>  static int s3an_sr_ready(struct spi_nor *nor)
> @@ -740,7 +747,7 @@ static int spi_nor_clear_sr(struct spi_nor *nor)
>  		return spi_mem_exec_op(nor->spimem, &op);
>  	}
>  
> -	return nor->write_reg(nor, SPINOR_OP_CLSR, NULL, 0);
> +	return nor->controller_ops->write_reg(nor, SPINOR_OP_CLSR, NULL, 0);
>  }
>  
>  static int spi_nor_sr_ready(struct spi_nor *nor)
> @@ -774,7 +781,7 @@ static int spi_nor_clear_fsr(struct spi_nor *nor)
>  		return spi_mem_exec_op(nor->spimem, &op);
>  	}
>  
> -	return nor->write_reg(nor, SPINOR_OP_CLFSR, NULL, 0);
> +	return nor->controller_ops->write_reg(nor, SPINOR_OP_CLFSR, NULL, 0);
>  }
>  
>  static int spi_nor_fsr_ready(struct spi_nor *nor)
> @@ -871,7 +878,8 @@ static int erase_chip(struct spi_nor *nor)
>  		return spi_mem_exec_op(nor->spimem, &op);
>  	}
>  
> -	return nor->write_reg(nor, SPINOR_OP_CHIP_ERASE, NULL, 0);
> +	return nor->controller_ops->write_reg(nor, SPINOR_OP_CHIP_ERASE,
> +					      NULL, 0);
>  }
>  
>  static int spi_nor_lock_and_prep(struct spi_nor *nor, enum spi_nor_ops ops)
> @@ -880,10 +888,9 @@ static int spi_nor_lock_and_prep(struct spi_nor *nor, enum spi_nor_ops ops)
>  
>  	mutex_lock(&nor->lock);
>  
> -	if (nor->prepare) {
> -		ret = nor->prepare(nor, ops);
> +	if (nor->controller_ops &&  nor->controller_ops->prepare) {
> +		ret = nor->controller_ops->prepare(nor, ops);
>  		if (ret) {
> -			dev_err(nor->dev, "failed in the preparation.\n");
>  			mutex_unlock(&nor->lock);
>  			return ret;
>  		}
> @@ -893,8 +900,8 @@ static int spi_nor_lock_and_prep(struct spi_nor *nor, enum spi_nor_ops ops)
>  
>  static void spi_nor_unlock_and_unprep(struct spi_nor *nor, enum spi_nor_ops ops)
>  {
> -	if (nor->unprepare)
> -		nor->unprepare(nor, ops);
> +	if (nor->controller_ops && nor->controller_ops->unprepare)
> +		nor->controller_ops->unprepare(nor, ops);
>  	mutex_unlock(&nor->lock);
>  }
>  
> @@ -935,8 +942,8 @@ static int spi_nor_erase_sector(struct spi_nor *nor, u32 addr)
>  
>  	addr = spi_nor_convert_addr(nor, addr);
>  
> -	if (nor->erase)
> -		return nor->erase(nor, addr);
> +	if (nor->controller_ops && nor->controller_ops->erase)
> +		return nor->controller_ops->erase(nor, addr);
>  
>  	if (nor->spimem) {
>  		struct spi_mem_op op =
> @@ -957,8 +964,8 @@ static int spi_nor_erase_sector(struct spi_nor *nor, u32 addr)
>  		addr >>= 8;
>  	}
>  
> -	return nor->write_reg(nor, nor->erase_opcode, nor->bouncebuf,
> -			      nor->addr_width);
> +	return nor->controller_ops->write_reg(nor, nor->erase_opcode,
> +					      nor->bouncebuf, nor->addr_width);
>  }
>  
>  /**
> @@ -1678,7 +1685,8 @@ static int write_sr_cr(struct spi_nor *nor, u8 *sr_cr)
>  
>  		ret = spi_mem_exec_op(nor->spimem, &op);
>  	} else {
> -		ret = nor->write_reg(nor, SPINOR_OP_WRSR, sr_cr, 2);
> +		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_WRSR,
> +						     sr_cr, 2);
>  	}
>  
>  	if (ret < 0) {
> @@ -1873,7 +1881,7 @@ static int spi_nor_write_sr2(struct spi_nor *nor, u8 *sr2)
>  		return spi_mem_exec_op(nor->spimem, &op);
>  	}
>  
> -	return nor->write_reg(nor, SPINOR_OP_WRSR2, sr2, 1);
> +	return nor->controller_ops->write_reg(nor, SPINOR_OP_WRSR2, sr2, 1);
>  }
>  
>  static int spi_nor_read_sr2(struct spi_nor *nor, u8 *sr2)
> @@ -1888,7 +1896,7 @@ static int spi_nor_read_sr2(struct spi_nor *nor, u8 *sr2)
>  		return spi_mem_exec_op(nor->spimem, &op);
>  	}
>  
> -	return nor->read_reg(nor, SPINOR_OP_RDSR2, sr2, 1);
> +	return nor->controller_ops->read_reg(nor, SPINOR_OP_RDSR2, sr2, 1);
>  }
>  
>  /**
> @@ -2520,8 +2528,8 @@ static const struct flash_info *spi_nor_read_id(struct spi_nor *nor)
>  
>  		tmp = spi_mem_exec_op(nor->spimem, &op);
>  	} else {
> -		tmp = nor->read_reg(nor, SPINOR_OP_RDID, id,
> -				    SPI_NOR_MAX_ID_LEN);
> +		tmp = nor->controller_ops->read_reg(nor, SPINOR_OP_RDID, id,
> +						    SPI_NOR_MAX_ID_LEN);
>  	}
>  	if (tmp < 0) {
>  		dev_err(nor->dev, "error %d reading JEDEC ID\n", tmp);
> @@ -2722,9 +2730,11 @@ static int spi_nor_write(struct mtd_info *mtd, loff_t to, size_t len,
>  static int spi_nor_check(struct spi_nor *nor)
>  {
>  	if (!nor->dev ||
> -	    (!nor->spimem &&
> -	    (!nor->read || !nor->write || !nor->read_reg ||
> -	      !nor->write_reg))) {
> +	    (!nor->spimem && nor->controller_ops &&
> +	    (!nor->controller_ops->read ||
> +	     !nor->controller_ops->write ||
> +	     !nor->controller_ops->read_reg ||
> +	     !nor->controller_ops->write_reg))) {
>  		pr_err("spi-nor: please fill all the necessary fields!\n");
>  		return -EINVAL;
>  	}
> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> index fc0b4b19c900..d1d736d3c8ab 100644
> --- a/include/linux/mtd/spi-nor.h
> +++ b/include/linux/mtd/spi-nor.h
> @@ -466,6 +466,34 @@ enum spi_nor_pp_command_index {
>  struct spi_nor;
>  
>  /**
> + * struct spi_nor_controller_ops - SPI NOR controller driver specific
> + *                                 operations.
> + * @prepare:		[OPTIONAL] do some preparations for the
> + *			read/write/erase/lock/unlock operations.
> + * @unprepare:		[OPTIONAL] do some post work after the
> + *			read/write/erase/lock/unlock operations.
> + * @read_reg:		read out the register.
> + * @write_reg:		write data to the register.
> + * @read:		read data from the SPI NOR.
> + * @write:		write data to the SPI NOR.
> + * @erase:		erase a sector of the SPI NOR at the offset @offs; if
> + *			not provided by the driver, spi-nor will send the erase
> + *			opcode via write_reg().
> + */
> +struct spi_nor_controller_ops {
> +	int (*prepare)(struct spi_nor *nor, enum spi_nor_ops ops);
> +	void (*unprepare)(struct spi_nor *nor, enum spi_nor_ops ops);
> +	int (*read_reg)(struct spi_nor *nor, u8 opcode, u8 *buf, size_t len);
> +	int (*write_reg)(struct spi_nor *nor, u8 opcode, const u8 *buf,
> +			 size_t len);
> +
> +	ssize_t (*read)(struct spi_nor *nor, loff_t from, size_t len, u8 *buf);
> +	ssize_t (*write)(struct spi_nor *nor, loff_t to, size_t len,
> +			 const u8 *buf);
> +	int (*erase)(struct spi_nor *nor, loff_t offs);
> +};
> +
> +/**
>   * struct spi_nor_locking_ops - SPI NOR locking methods
>   * @lock:	lock a region of the SPI NOR.
>   * @unlock:	unlock a region of the SPI NOR.
> @@ -549,17 +577,7 @@ struct flash_info;
>   * @read_proto:		the SPI protocol for read operations
>   * @write_proto:	the SPI protocol for write operations
>   * @reg_proto		the SPI protocol for read_reg/write_reg/erase operations
> - * @prepare:		[OPTIONAL] do some preparations for the
> - *			read/write/erase/lock/unlock operations
> - * @unprepare:		[OPTIONAL] do some post work after the
> - *			read/write/erase/lock/unlock operations
> - * @read_reg:		[DRIVER-SPECIFIC] read out the register
> - * @write_reg:		[DRIVER-SPECIFIC] write data to the register
> - * @read:		[DRIVER-SPECIFIC] read data from the SPI NOR
> - * @write:		[DRIVER-SPECIFIC] write data to the SPI NOR
> - * @erase:		[DRIVER-SPECIFIC] erase a sector of the SPI NOR
> - *			at the offset @offs; if not provided by the driver,
> - *			spi-nor will send the erase opcode via write_reg()
> + * @controller_ops:	SPI NOR controller driver specific operations.
>   * @clear_sr_bp:	[FLASH-SPECIFIC] clears the Block Protection Bits from
>   *			the SPI NOR Status Register.
>   * @params:		[FLASH-SPECIFIC] SPI-NOR flash parameters and settings.
> @@ -588,16 +606,7 @@ struct spi_nor {
>  	bool			sst_write_second;
>  	u32			flags;
>  
> -	int (*prepare)(struct spi_nor *nor, enum spi_nor_ops ops);
> -	void (*unprepare)(struct spi_nor *nor, enum spi_nor_ops ops);
> -	int (*read_reg)(struct spi_nor *nor, u8 opcode, u8 *buf, int len);
> -	int (*write_reg)(struct spi_nor *nor, u8 opcode, u8 *buf, int len);
> -
> -	ssize_t (*read)(struct spi_nor *nor, loff_t from,
> -			size_t len, u_char *read_buf);
> -	ssize_t (*write)(struct spi_nor *nor, loff_t to,
> -			size_t len, const u_char *write_buf);
> -	int (*erase)(struct spi_nor *nor, loff_t offs);
> +	const struct spi_nor_controller_ops *controller_ops;
>  
>  	int (*clear_sr_bp)(struct spi_nor *nor);
>  	struct spi_nor_flash_parameter params;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
