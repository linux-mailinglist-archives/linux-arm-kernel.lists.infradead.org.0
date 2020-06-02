Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E120A1EC2F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 21:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8nUT4BPYdpwDkLI88L3imav5vWXRPYJonELnOAsfMpo=; b=VwYDdsle3VG/48
	bC0372s9T0+X9REsfBbtVXZza5sgReC81vGANR6kMlxmKEYX1wMxNjPjprcc4qOz45CR6QTjmUQdp
	mNRw9zidlTQIY69phSM4G0bl5wwrh8nIXZcFgUSJNSfldgowulMJi1IHb9CTbo7qvJ0ZghGcjrZJ9
	LriNoj2f8yU/dqqA0fcPGO/Uw/CBNrQ+8uI0des9tHhImn0btb0wwIgb1NfEOohkq3IJQ8GiIqev0
	wgIMRWK3leuAeSQVU2Vot2M4ocxNK+nSY2naQOcBDgQ+QBYUsu0WwSHynCoXk20VlzYbkiiwkHoLD
	WyVMuqE8Lqm6egEOtxgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgClB-00017R-Uo; Tue, 02 Jun 2020 19:39:41 +0000
Received: from mx.baikalchip.com ([94.125.187.42]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgCl4-00016O-Eb
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 19:39:36 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id 259968030808;
 Tue,  2 Jun 2020 19:39:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GjhvlG4R7G07; Tue,  2 Jun 2020 22:39:31 +0300 (MSK)
Date: Tue, 2 Jun 2020 22:39:31 +0300
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 02/10] spi: dw: Add support for RX sample delay register
Message-ID: <20200602193931.vl36k3c6uyiaizah@mobilestation>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-3-lars.povlsen@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513140031.25633-3-lars.povlsen@microchip.com>
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_123934_843432_A4B9B882 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Serge Semin <fancer.lancer@gmail.com>,
 linux-spi@vger.kernel.org, SoC Team <soc@kernel.org>,
 Mark Brown <broonie@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 04:00:23PM +0200, Lars Povlsen wrote:
> This add support for the RX_SAMPLE_DLY register. If enabled in the
> Designware IP, it allows tuning of the rx data signal by means of an
> internal rx sample fifo.
> 
> The register is located at offset 0xf0, and if the option is not
> enabled in the IP, changing the register will have no effect.
> 
> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
> ---
>  drivers/spi/spi-dw.c | 7 +++++++
>  drivers/spi/spi-dw.h | 2 ++
>  2 files changed, 9 insertions(+)
> 
> diff --git a/drivers/spi/spi-dw.c b/drivers/spi/spi-dw.c
> index e572eb34a3c1a..32997f28fa5bb 100644
> --- a/drivers/spi/spi-dw.c
> +++ b/drivers/spi/spi-dw.c
> @@ -81,6 +81,9 @@ static ssize_t dw_spi_show_regs(struct file *file, char __user *user_buf,
>  			"DMATDLR: \t0x%08x\n", dw_readl(dws, DW_SPI_DMATDLR));
>  	len += scnprintf(buf + len, SPI_REGS_BUFSIZE - len,
>  			"DMARDLR: \t0x%08x\n", dw_readl(dws, DW_SPI_DMARDLR));

> +	len += scnprintf(buf + len, SPI_REGS_BUFSIZE - len,
> +			 "RX_SAMPLE_DLY: \t0x%08x\n",
> +			 dw_readl(dws, DW_SPI_RX_SAMPLE_DLY));

debugfs_reg32 interface is now utilized in the driver to dump the registers
state. So this will have to be converted to just a new entry in the
dw_spi_dbgfs_regs array.

>  	len += scnprintf(buf + len, SPI_REGS_BUFSIZE - len,
>  			"=================================\n");
> 
> @@ -315,6 +318,10 @@ static int dw_spi_transfer_one(struct spi_controller *master,
>  		spi_set_clk(dws, chip->clk_div);
>  	}
> 

> +	/* Apply RX sample delay, iff requested (nonzero) */

s/iff/if

> +	if (dws->rx_sample_dly)
> +		dw_writel(dws, DW_SPI_RX_SAMPLE_DLY, dws->rx_sample_dly);
> +
>  	dws->n_bytes = DIV_ROUND_UP(transfer->bits_per_word, BITS_PER_BYTE);
>  	dws->dma_width = DIV_ROUND_UP(transfer->bits_per_word, BITS_PER_BYTE);
> 
> diff --git a/drivers/spi/spi-dw.h b/drivers/spi/spi-dw.h
> index 1bf5713e047d3..ed6e47b3f50da 100644
> --- a/drivers/spi/spi-dw.h
> +++ b/drivers/spi/spi-dw.h
> @@ -31,6 +31,7 @@
>  #define DW_SPI_IDR			0x58
>  #define DW_SPI_VERSION			0x5c
>  #define DW_SPI_DR			0x60
> +#define DW_SPI_RX_SAMPLE_DLY		0xf0
>  #define DW_SPI_CS_OVERRIDE		0xf4
> 
>  /* Bit fields in CTRLR0 */
> @@ -111,6 +112,7 @@ struct dw_spi {
> 
>  	int			cs_override;
>  	u32			reg_io_width;	/* DR I/O width in bytes */

> +	u8			rx_sample_dly;	/* RX fifo tuning (option) */

This doesn't seem like a good place for this parameter. The sample delay is
SPI-slave specific. So as I see it, the parameter should be moved to the
chip_data.

-Sergey

>  	u16			bus_num;
>  	u16			num_cs;		/* supported slave numbers */
>  	void (*set_cs)(struct spi_device *spi, bool enable);
> --
> 2.26.2
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
