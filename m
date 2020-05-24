Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A480B1E02B4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 22:18:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dy7CqxFAjAIH86GxJ340LXRuGburPOEf/17S5Nhtiac=; b=e0y0xw6Tit66E8
	xZ7rMfDv8Wl5o/mvofLoqiSWLLgKF+Fh7wrc9Qj/GnvaZT0lihc4z4kRhtXPV+MqL8a/LMg07B+pj
	7PjY+MYmfju2kfjz3XC6sMTHtJGE84I3GgnntPtNuQjFaDiTIlbWALSFrFcagMxgZqVhO9u0X+ZfP
	qHhkM4nwbaApw5TCgEvWR0KGUOneES+w+7w92sgKzWvm/8AMvF397Pv0vqJA0y0TShMUkgSnXudhm
	lhGWFwevMXwwdI6hA8RGeXk/uZXk4a9hWmAPzDUOR2k6XE/SD/wGIorz4so4GGo0y5RnOWXMe4N4D
	0hQF9OFhBMbVKCVde7kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcx4W-00006g-5d; Sun, 24 May 2020 20:18:12 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcx4O-00005z-AY; Sun, 24 May 2020 20:18:05 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2A9BD26107D;
 Sun, 24 May 2020 21:18:02 +0100 (BST)
Date: Sun, 24 May 2020 22:17:58 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Pratyush Yadav <p.yadav@ti.com>
Subject: Re: [PATCH v8 02/19] spi: spi-mem: allow specifying a command's
 extension
Message-ID: <20200524221758.7c30f336@collabora.com>
In-Reply-To: <20200522224042.29970-3-p.yadav@ti.com>
References: <20200522224042.29970-1-p.yadav@ti.com>
 <20200522224042.29970-3-p.yadav@ti.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_131804_493015_B8CF42F1 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Sekhar Nori <nsekhar@ti.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 23 May 2020 04:10:25 +0530
Pratyush Yadav <p.yadav@ti.com> wrote:

> diff --git a/drivers/spi/spi-mxic.c b/drivers/spi/spi-mxic.c
> index 69491f3a515d..4e4292f0ee1d 100644
> --- a/drivers/spi/spi-mxic.c
> +++ b/drivers/spi/spi-mxic.c
> @@ -356,6 +356,7 @@ static int mxic_spi_mem_exec_op(struct spi_mem *mem,
>  	int nio = 1, i, ret;
>  	u32 ss_ctrl;
>  	u8 addr[8];
> +	u8 opcode = op->cmd.opcode & 0xff;

You don't need the '& 0xff' here, the cast to an u8 will truncate the
value anyway.

>  
>  	ret = mxic_spi_set_freq(mxic, mem->spi->max_speed_hz);
>  	if (ret)
> @@ -393,7 +394,7 @@ static int mxic_spi_mem_exec_op(struct spi_mem *mem,
>  	writel(readl(mxic->regs + HC_CFG) | HC_CFG_MAN_CS_ASSERT,
>  	       mxic->regs + HC_CFG);
>  
> -	ret = mxic_spi_data_xfer(mxic, &op->cmd.opcode, NULL, 1);
> +	ret = mxic_spi_data_xfer(mxic, &opcode, NULL, 1);
>  	if (ret)
>  		goto out;
>  
> diff --git a/drivers/spi/spi-zynq-qspi.c b/drivers/spi/spi-zynq-qspi.c
> index 17641157354d..41389856e14a 100644
> --- a/drivers/spi/spi-zynq-qspi.c
> +++ b/drivers/spi/spi-zynq-qspi.c
> @@ -527,20 +527,21 @@ static int zynq_qspi_exec_mem_op(struct spi_mem *mem,
>  	struct zynq_qspi *xqspi = spi_controller_get_devdata(mem->spi->master);
>  	int err = 0, i;
>  	u8 *tmpbuf;
> +	u8 opcode = op->cmd.opcode & 0xff;
>  

Ditto.

>  	dev_dbg(xqspi->dev, "cmd:%#x mode:%d.%d.%d.%d\n",
> -		op->cmd.opcode, op->cmd.buswidth, op->addr.buswidth,
> +		opcode, op->cmd.buswidth, op->addr.buswidth,
>  		op->dummy.buswidth, op->data.buswidth);
>  
>  	zynq_qspi_chipselect(mem->spi, true);
>  	zynq_qspi_config_op(xqspi, mem->spi);
>  
> -	if (op->cmd.opcode) {
> +	if (opcode) {

Unrelated to this patch, but this test is wrong. I don't see why we
couldn't have a '0' opcode. The test should be dropped or done on the
new op->cmd.nbytes field.

>  		reinit_completion(&xqspi->data_completion);
> -		xqspi->txbuf = (u8 *)&op->cmd.opcode;
> +		xqspi->txbuf = &opcode;
>  		xqspi->rxbuf = NULL;
> -		xqspi->tx_bytes = sizeof(op->cmd.opcode);
> -		xqspi->rx_bytes = sizeof(op->cmd.opcode);
> +		xqspi->tx_bytes = op->cmd.nbytes;
> +		xqspi->rx_bytes = op->cmd.nbytes;
>  		zynq_qspi_write_op(xqspi, ZYNQ_QSPI_FIFO_DEPTH, true);
>  		zynq_qspi_write(xqspi, ZYNQ_QSPI_IEN_OFFSET,
>  				ZYNQ_QSPI_IXR_RXTX_MASK);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
