Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C4B1EC26B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 21:11:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZsoJ8NpHiTwrmK4L3yrzeHgpVyIp3SP/+lHQhjwAEvU=; b=CXGyWmlD/1GQuY
	XYIeRerERKCJnMVDd0xBDDeJ0fXbVs0ybDHM4t23yqQK+SoXsi4IBa4wIxHEYxYdbx04dwa1CKHon
	9UZzPR9Aat6m41xd/gFhskZF7vBKFhEMmoqeuVsVUMbGTzm3zj7V9hC+sLu6vGctys5fInQk5eYop
	j1q/cF4EKTTVSH+N/Ha0GQjmAAU0lxccQK1ctBngwRZyDKHOKpmAkHwmhIpLagos2a+CU/5E+Yxf7
	bYdm1jLOg18OFYYvANoavSeLA5ntq1dbpWrLCIsJv3cDmf56gbbneaFZKkO0fDT8+R4yOuQtfYpay
	JUOLcEKKzpa2glZTZsLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgCJM-0002Et-RC; Tue, 02 Jun 2020 19:10:56 +0000
Received: from ns2.baikalelectronics.com ([94.125.187.42]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgCJG-0002DB-Ry
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 19:10:53 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id E897C8030835;
 Tue,  2 Jun 2020 19:10:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IvgS6PU79JwH; Tue,  2 Jun 2020 22:10:27 +0300 (MSK)
Date: Tue, 2 Jun 2020 22:10:25 +0300
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 01/10] spi: dw: Add support for polled operation via no
 IRQ specified in DT
Message-ID: <20200602191025.ywo77nslrgswh6sw@mobilestation>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-2-lars.povlsen@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513140031.25633-2-lars.povlsen@microchip.com>
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_121051_258081_CA77779C 
X-CRM114-Status: GOOD (  18.47  )
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

On Wed, May 13, 2020 at 04:00:22PM +0200, Lars Povlsen wrote:
> With this change a SPI controller can be added without having a IRQ
> associated, and causing all transfers to be polled. For SPI controllers
> without DMA, this can significantly improve performance by less
> interrupt handling overhead.
> 
> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
> ---
>  drivers/spi/spi-dw.c | 21 +++++++++++++--------
>  1 file changed, 13 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/spi/spi-dw.c b/drivers/spi/spi-dw.c
> index 31e3f866d11a7..e572eb34a3c1a 100644
> --- a/drivers/spi/spi-dw.c
> +++ b/drivers/spi/spi-dw.c
> @@ -19,6 +19,8 @@
>  #include <linux/debugfs.h>
>  #endif
> 

> +#define VALID_IRQ(i) (i >= 0)

Mark and Andy are right. It is a good candidate to be in a generic IRQ-related
code as Anyd suggested:

> > drivers/rtc/rtc-cmos.c:95:#define is_valid_irq(n)               ((n) > 0)
> > Candidate to be in include/linux/irq.h ?

So if you feel like to author additional useful patch integrated into the
kernel, this one is a good chance for it.

> +
>  /* Slave spi_dev related */
>  struct chip_data {
>  	u8 tmode;		/* TR/TO/RO/EEPROM */
> @@ -359,7 +361,7 @@ static int dw_spi_transfer_one(struct spi_controller *master,
>  			spi_enable_chip(dws, 1);
>  			return ret;
>  		}
> -	} else if (!chip->poll_mode) {
> +	} else if (!chip->poll_mode && VALID_IRQ(dws->irq)) {
>  		txlevel = min_t(u16, dws->fifo_len / 2, dws->len / dws->n_bytes);
>  		dw_writel(dws, DW_SPI_TXFLTR, txlevel);
> 
> @@ -379,7 +381,7 @@ static int dw_spi_transfer_one(struct spi_controller *master,
>  			return ret;
>  	}
> 
> -	if (chip->poll_mode)
> +	if (chip->poll_mode || !VALID_IRQ(dws->irq))
>  		return poll_transfer(dws);

Please note. The chip->poll and the poll_transfer() methods've been discarded
from the driver, since commit 1ceb09717e98 ("spi: dw: remove cs_control and
poll_mode members from chip_data"). So you gonna have to get the
poll_transfer-like method back.

-Sergey

> 
>  	return 1;
> @@ -487,11 +489,13 @@ int dw_spi_add_host(struct device *dev, struct dw_spi *dws)
> 
>  	spi_controller_set_devdata(master, dws);
> 
> -	ret = request_irq(dws->irq, dw_spi_irq, IRQF_SHARED, dev_name(dev),
> -			  master);
> -	if (ret < 0) {
> -		dev_err(dev, "can not get IRQ\n");
> -		goto err_free_master;
> +	if (VALID_IRQ(dws->irq)) {
> +		ret = request_irq(dws->irq, dw_spi_irq, IRQF_SHARED,
> +				  dev_name(dev), master);
> +		if (ret < 0) {
> +			dev_err(dev, "can not get IRQ\n");
> +			goto err_free_master;
> +		}
>  	}
> 
>  	master->use_gpio_descriptors = true;
> @@ -539,7 +543,8 @@ int dw_spi_add_host(struct device *dev, struct dw_spi *dws)
>  	if (dws->dma_ops && dws->dma_ops->dma_exit)
>  		dws->dma_ops->dma_exit(dws);
>  	spi_enable_chip(dws, 0);
> -	free_irq(dws->irq, master);
> +	if (VALID_IRQ(dws->irq))
> +		free_irq(dws->irq, master);
>  err_free_master:
>  	spi_controller_put(master);
>  	return ret;
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
