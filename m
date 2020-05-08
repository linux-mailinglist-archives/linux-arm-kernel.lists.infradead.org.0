Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6531CAEA3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 15:14:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2i1yPeufthbAXXyxAKI4uKFff8+J3gUo4US8B0N6FZg=; b=JX2ZXaJWzgRxHY
	8ZDF9OF4gGhNTbppzGA1BlMi3OFKMPObQ1ROMEgP5RkRukt1nqiTrkhXIMIDPFqye1yT2KzMmzeXg
	Yeys/+Ss2hc5BeKZ4ckSiJKV25QLZUnaynsXNvOtvqcuvl2/vT04UVEoioIi81JtBzoHniCONvqeq
	AFFiliPI02+EQ8or8eXsA6YZv2w6qOBBEnnBb0Hl+0qo+9huky8+rmdBRhAe9W+f2yoUwB5pnNBcf
	RPA7/TqTF46+ABsDLa5pm8l20YS2loiuJk1z3oZeW0KwvDrEospP6OdZ4lbXbG4J27xpL+OUH8OEJ
	W7qMDipVE3voWdMv2zVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX2pC-0006OV-4h; Fri, 08 May 2020 13:13:58 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX2p2-0006Ms-6C; Fri, 08 May 2020 13:13:49 +0000
Received: by mail-yb1-xb44.google.com with SMTP id i16so901886ybq.9;
 Fri, 08 May 2020 06:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UZUHxL6dK/8dzR9N6s6AZeq1aeEEpSlSvFIxKEKChKA=;
 b=qsJmNv2lvscxfX2ik0Ne+2iMwpcudN+70KShliyZwbkS/OPcZyB7kvwP1E/2REaPx6
 vIIXtcCXFGQFsefJ6NXp52NUdX+iYVI994JXF3SOoU0CcOysrhSZkh6uhNiCAFsEwHm/
 /F3brgRGedJU0VA7Dv2/Ct9sMb1BFWV2dPvQbFw3FUd7V3XE0sA6bC+kGALoByCa6jbx
 TcfwKTILVttfKtCEQhGhqp9j8yKEBxu0lmi8too2ZodJPlffxHN0SMzN3FMX34qqGQTp
 aAMAv5t5uX6VYYLM1dnCH6mC3iN8RoBt64oMM8PT+vP+upfVdyMgp9Zs7qO0ESXtXEBL
 2jLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UZUHxL6dK/8dzR9N6s6AZeq1aeEEpSlSvFIxKEKChKA=;
 b=CViJOTIsdf2KcRfaProAVwDh08xTcKL8yz5qWD3+ZgWBsHErH+VwK1tCNt5h7arnjo
 j9CR1xEUn/eXYKiOQife0dpnED8TTClUpJM0Fk+Xi+XpC2Ju66Zy9pt+O6MTdn62EwRF
 ZWfh9xYHO5frI77Z4hC6mKEUpXE8XX8X/ovjdeJl4Rl+KArmQhnAS1CZKWEyrSGn0qn2
 GsuPKwStvJY8NavKfgQBD93juXAxw5MAosCu+KcMXgKuoYG11v1EQOL+fRqXMi8HlpeZ
 SvNludiduRAOX9t4VxorAnZbVc8fy70hkJkn2P4aEGi4+mfQhrZd/KO41PyFV4CR3AK4
 kUsg==
X-Gm-Message-State: AGi0PuZ9S1qsAw32s/QUVAboqP/4nDLz/LWoVgLUq/LzPt/gTUutomQh
 /n7c1yplx5BkH7a2jh6K9zzhwDZ4B6ibYdc8L3E=
X-Google-Smtp-Source: APiQypJcJJf4FWxZRHAgRmZI60uj695OdBwj45e7L8i9yMDpq9iE5MmqC6vak2XFQW19zVXsnyrmwa3h7nYYR8d3rZs=
X-Received: by 2002:a25:e082:: with SMTP id x124mr4441633ybg.509.1588943626311; 
 Fri, 08 May 2020 06:13:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200508083729.5560-1-chris.ruehl@gtsys.com.hk>
 <20200508083729.5560-2-chris.ruehl@gtsys.com.hk>
In-Reply-To: <20200508083729.5560-2-chris.ruehl@gtsys.com.hk>
From: Emil Renner Berthing <emil.renner.berthing@gmail.com>
Date: Fri, 8 May 2020 15:13:35 +0200
Message-ID: <CANBLGcwA+=OB-_nOYUijWrDBSkLYhR7_PNG1ewO7LZ-zRVGoxg@mail.gmail.com>
Subject: Re: [PATCH v0 1/1] spi: spi-rockchip: add support for spi slave_mode
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_061348_229236_4FA6A44B 
X-CRM114-Status: GOOD (  24.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [emil.renner.berthing[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jack Lo <jack.lo@gtsys.com.hk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chris,

On Fri, 8 May 2020 at 10:47, Chris Ruehl <chris.ruehl@gtsys.com.hk> wrote:
>
> This patch aim to add spi slave mode support to the rockchip driver.
> Fix the wrong usage of num_cs set fix to ROCKCHIP_SPI_MAX_CS_NUM,
> instead use max_native_cs flag to set the limit of native chip-select.
> Enable use_gpio_descriptors to have cs_gpiod for gpio based chip-selects.
>
> Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
> ---
>  drivers/spi/spi-rockchip.c | 46 +++++++++++++++++++++++++++++++++-----
>  1 file changed, 41 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index 70ef63e0b6b8..9c1ff52c0f85 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c
> @@ -183,6 +183,9 @@ struct rockchip_spi {
>         u8 rsd;
>
>         bool cs_asserted[ROCKCHIP_SPI_MAX_CS_NUM];
> +
> +       bool slave_mode;
> +       bool slave_abort;
>  };
>
>  static inline void spi_enable_chip(struct rockchip_spi *rs, bool enable)
> @@ -359,7 +362,7 @@ static void rockchip_spi_dma_rxcb(void *data)
>         struct rockchip_spi *rs = spi_master_get_devdata(master);
>         int state = atomic_fetch_andnot(RXDMA, &rs->state);
>
> -       if (state & TXDMA)
> +       if (state & TXDMA && !rs->slave_abort)
>                 return;
>
>         spi_enable_chip(rs, false);
> @@ -372,7 +375,7 @@ static void rockchip_spi_dma_txcb(void *data)
>         struct rockchip_spi *rs = spi_master_get_devdata(master);
>         int state = atomic_fetch_andnot(TXDMA, &rs->state);
>
> -       if (state & RXDMA)
> +       if (state & RXDMA && !rs->slave_abort)
>                 return;
>
>         /* Wait until the FIFO data completely. */
> @@ -466,6 +469,10 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
>         u32 cr1;
>         u32 dmacr = 0;
>
> +       if (rs->slavemode)
> +               cr0 |= CR0_OPM_SLAVE << CR0_OPM_OFFSET;
> +       rs->slave_abort = false;
> +
>         cr0 |= rs->rsd << CR0_RSD_OFFSET;
>         cr0 |= (spi->mode & 0x3U) << CR0_SCPH_OFFSET;
>         if (spi->mode & SPI_LSB_FIRST)
> @@ -535,6 +542,16 @@ static size_t rockchip_spi_max_transfer_size(struct spi_device *spi)
>         return ROCKCHIP_SPI_MAX_TRANLEN;
>  }
>
> +static int rockchip_spi_slave_abort(struct spi_master *master)
> +{
> +       struct rockchip_spi *rs = spi_master_get_devdata(master);
> +
> +       rs->slave_abort = true;
> +       complete(master);
> +
> +       return 0;
> +}
> +
>  static int rockchip_spi_transfer_one(
>                 struct spi_master *master,
>                 struct spi_device *spi,
> @@ -589,14 +606,25 @@ static int rockchip_spi_probe(struct platform_device *pdev)
>         struct spi_master *master;
>         struct resource *mem;
>         u32 rsd_nsecs;
> +       bool slave_mode;
> +       u32 num_cs = 1;
> +
> +       slave_mode = of_property_read_bool(np, "spi-slave");
> +
> +       if (slave_mode)
> +               master = spi_alloc_slave(&pdev->dev,
> +                               sizeof(struct rockchip_spi));
> +       else
> +               master = spi_alloc_master(&pdev->dev,
> +                               sizeof(struct rockchip_spi));
>
> -       master = spi_alloc_master(&pdev->dev, sizeof(struct rockchip_spi));
>         if (!master)
>                 return -ENOMEM;
>
>         platform_set_drvdata(pdev, master);
>
>         rs = spi_master_get_devdata(master);
> +       rs->slave_mode = slave_mode;

This entry doesn't seem to be read from any of your code, and even it
it was, the same information is available in master->slave, so I don't
see why you need it in the rockchip_spi struct.

Also spi_master is just #defined to spi_controller in spi.h, so maybe
consider changing all 'struct spi_master *master' to 'struct
spi_controller *ctrl' now that the driver supports both modes.

>
>         /* Get basic io resource and map it */
>         mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> @@ -676,7 +704,16 @@ static int rockchip_spi_probe(struct platform_device *pdev)
>         master->auto_runtime_pm = true;
>         master->bus_num = pdev->id;
>         master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LOOP | SPI_LSB_FIRST;
> -       master->num_chipselect = ROCKCHIP_SPI_MAX_CS_NUM;
> +       if (slave_mode) {
> +               master->mode_bits |= SPI_NO_CS;
> +               master->slave_abort = rockchip_spi_slave_abort;
> +       } else {
> +               of_property_read_u32(np, "num-cs", &num_cs);
> +               master->num_chipselect = num_cs;

If you do something like this you won't need the temporary num_cs variable:

if (of_property_read_u32(np, "num-cs", &master->num_chipselect))
    master->num_chipselect = 1;

Also it seems like you're changing the default from
ROCKCHIP_SPI_MAX_CS_NUM to 1 if there is no num-cs property. Did you
check that all boards either have the num-cs property defined or only
needs num_chipselect = 1?

> +               master->use_gpio_descriptors = true;
> +               master->max_native_cs = ROCKCHIP_SPI_MAX_CS_NUM;
> +               master->flags = SPI_MASTER_GPIO_SS;
> +       }
>         master->dev.of_node = pdev->dev.of_node;
>         master->bits_per_word_mask = SPI_BPW_MASK(16) | SPI_BPW_MASK(8) | SPI_BPW_MASK(4);
>         master->min_speed_hz = rs->freq / BAUDR_SCKDV_MAX;
> @@ -686,7 +723,6 @@ static int rockchip_spi_probe(struct platform_device *pdev)
>         master->transfer_one = rockchip_spi_transfer_one;
>         master->max_transfer_size = rockchip_spi_max_transfer_size;
>         master->handle_err = rockchip_spi_handle_err;
> -       master->flags = SPI_MASTER_GPIO_SS;
>
>         master->dma_tx = dma_request_chan(rs->dev, "tx");
>         if (IS_ERR(master->dma_tx)) {
> --
> 2.20.1
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
