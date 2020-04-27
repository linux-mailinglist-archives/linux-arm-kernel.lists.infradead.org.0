Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C851BADC2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 21:20:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4rt2Lx3qiSpxqhumnlpO0agijVh9+lr3GeW0ewS9U5U=; b=ojbVOcU0f0M6kc
	q57qA1mNYUvah+hCPvCnbDHWPzKNsHUJYLe7TXCjCPVWzqJetjSXwMI3PWV14uar9tR3rxeuVKsBc
	9me+yRCdTGVH1cPBu4jPfVSNnB9n+TVNLojHXlACbm/4qJe9yagOTPhY5Nm24gVo7cXC83s8nA/j+
	1rSsIR+saeVH24AAhGxDtpd8EROPJIaWJIXYvW3t/xAkpjENhZ7vAKP3VjD0TrSvljyBM22Xe6A8z
	VWUBjYLmi2Z1HDIgGS68MBCLT0jWKNgatgUOBlfZAJoGzg94duBQH61/iZi0x+xDNECISKBsb0MLu
	+ebcVTA0xjTzhx7A4UOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9Iq-0001Wm-3F; Mon, 27 Apr 2020 19:20:28 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9IP-0000Le-Ll
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 19:20:05 +0000
Received: by mail-ua1-x942.google.com with SMTP id f5so8744129ual.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 12:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cGowtLIZr6lcpnnPhN20JdwAYKnqyWY8Ut7sRhFiLKA=;
 b=I4xYIm6kijKXrkrseE5KNAVjcaEEeTS3jtbMLkDDXu+qf4IbWguAkIYKVgu0iDUQRn
 7CG3DtLui2WuqNXOuyvBoPedKnOhtSi10e/NRA0Tfuuy+i8PT4XcAdeyJW+Gq7crNY0p
 Sx62a9fnxynko2NWudU7JOcF+TGsUUaUxqepBYvXwAfLXiiJcOtEwxe2jjMq2lPoUoDq
 6EIw+6UJjXGH+DwWpHL+ti7YIdIZ+SzzucdDpiumZHOKd/+FDUbAS4m3opb8MwvDnhgQ
 R8DZvcbC863QrLoJ73VYGRkYhoInex+owbDGTkIFvYnE8Oh8eW4Sbyb95GWM1Qdn97Cn
 Wfkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cGowtLIZr6lcpnnPhN20JdwAYKnqyWY8Ut7sRhFiLKA=;
 b=I72M5NuTjN/QLZbSgt074tCUpdyT3RVN6TP+fEA4R41YTvDVYI3V98hRyZiyJhzkoc
 dTwNO5dLI3s8pjpMuVbWF8BlPZOYuZqTF7CLRRTcYwS6quhfQzFe2sO2n4NN08u8l5n+
 ZJc3D3V9Z9neoogq9EFMeLqmFy5NF+4+kfbu8bcYPR7P0j70jKfxTxJXF6eJdXc1drYH
 WUmN5cXRECYkygA93F9VFv6itopF0U8EDEqq43x6o/R5lMthu5cVHe/QhdpClO/SUfs9
 20WlPd3nl2niAv+qzcMWhExD4QezylD2HoruHb83hX4UUYcTNQ6xFdmhYFbXh16LhGaO
 waBw==
X-Gm-Message-State: AGi0PubtldiAdKL0FuhtkHeWPzbHY/BJp/7FvVHnmZ1IMFe3zs+SEVpe
 1w0RYqUCHAqt0QAFoyABCU/M5Xr12KweU/l+Z+PnMA==
X-Google-Smtp-Source: APiQypLuRlMVc+mLvY0pxYcSCSh2OL0HTgzvqFwSNPT90Xo0d9WQ8etz4uVA6LWFmD7lgXWU7dfRjbUvrdWrSKAupbw=
X-Received: by 2002:a67:f24b:: with SMTP id y11mr17860776vsm.165.1588015200352; 
 Mon, 27 Apr 2020 12:20:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200328003249.1248978-1-martin.blumenstingl@googlemail.com>
 <20200328003249.1248978-4-martin.blumenstingl@googlemail.com>
In-Reply-To: <20200328003249.1248978-4-martin.blumenstingl@googlemail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 27 Apr 2020 21:19:24 +0200
Message-ID: <CAPDyKFqsG4kyABmxn__gAbe4fBmuZ=4mdFpRaCL0ih7QZEhwzQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] mmc: host: meson-mx-sdhc: new driver for the
 Amlogic Meson SDHC host
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_122002_351290_A5DB2E7F 
X-CRM114-Status: GOOD (  29.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 yinxin_1989@aliyun.com, Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 28 Mar 2020 at 01:33, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> The SDHC MMC host controller on Amlogic SoCs provides an eMMC and MMC
> card interface with 1/4/8-bit bus width.
> It supports eMMC spec 4.4x/4.5x including HS200 (up to 100MHz clock).
>
> The public S805 datasheet [0] contains a short documentation about the
> registers. Unfortunately it does not describe how to use the registers
> to make the hardware work. Thus this driver is based on reading (and
> understanding) the Amlogic 3.10 GPL kernel code.
>
> Some hardware details are not easy to see. Jianxin Pan was kind enough
> to answer my questions:
> The hardware has built-in busy timeout support. The maximum timeout is
> 30 seconds. This is only documented in Amlogic's internal
> documentation.
>
> The controller only works with very specific clock configurations. The
> details are not part of the public datasheet. In my own words the
> supported configurations are:
> - 399.812kHz:   clkin =  850MHz div = 2126 sd_rx_phase = 63
> - 1MHz:         clkin =  850MHz div = 850  sd_rx_phase = 55
> - 5.986MHz:     clkin =  850MHz div = 142  sd_rx_phase = 24
> - 25MHz:        clkin =  850MHz div = 34   sd_rx_phase = 15
> - 47.222MHz:    clkin =  850MHz div = 18   sd_rx_phase = 11/15 (SDR50/HS)
> - 53.125MHz:    clkin =  850MHz div = 16   sd_rx_phase = (tuning)
> - 70.833MHz:    clkin =  850MHz div = 12   sd_rx_phase = (tuning)
> - 85MHz:        clkin =  850MHz div = 10   sd_rx_phase = (tuning)
> - 94.44MHz:     clkin =  850MHz div = 9    sd_rx_phase = (tuning)
> - 106.25MHz:    clkin =  850MHz div = 8    sd_rx_phase = (tuning)
> - 127.5MHz:     clkin = 1275MHz div = 10   sd_rx_phase = (tuning)
> - 141.667MHz:   clkin =  850MHz div = 6    sd_rx_phase = (tuning)
> - 159.375MHz:   clkin = 1275MHz div = 8    sd_rx_phase = (tuning)
> - 212.5MHz:     clkin = 1275MHz div = 6    sd_rx_phase = (tuning)
> - (sd_tx_phase is always 1, 94.44MHz is not listed in the datasheet
>    but this is what the 3.10 BSP kernel on Odroid-C1 actually uses)
>
> NOTE: CMD23 support is disabled for now because it results in command
> timeouts and thus decreases read performance.
>
> Tested-by: Wei Wang <lnykww@gmail.com>
> Tested-by: Xin Yin <yinxin_1989@aliyun.com>
> Reviewed-by: Xin Yin <yinxin_1989@aliyun.com>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  drivers/mmc/host/Kconfig         |   14 +
>  drivers/mmc/host/Makefile        |    1 +
>  drivers/mmc/host/meson-mx-sdhc.c | 1064 ++++++++++++++++++++++++++++++
>  3 files changed, 1079 insertions(+)
>  create mode 100644 drivers/mmc/host/meson-mx-sdhc.c
>
> diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
> index 3a5089f0332c..2c8361aa7eed 100644
> --- a/drivers/mmc/host/Kconfig
> +++ b/drivers/mmc/host/Kconfig
> @@ -405,6 +405,20 @@ config MMC_MESON_GX
>
>           If you have a controller with this interface, say Y here.
>
> +config MMC_MESON_MX_SDHC
> +       tristate "Amlogic Meson SDHC Host Controller support"
> +       depends on (ARM && ARCH_MESON) || COMPILE_TEST
> +       depends on OF
> +       imply COMMON_CLK_MESON_MX_SDHC
> +       help
> +         This selects support for the SDHC Host Controller on
> +         Amlogic Meson6, Meson8, Meson8b and Meson8m2 SoCs.
> +         The controller supports the SD/SDIO Spec 3.x and eMMC Spec 4.5x
> +         with 1, 4, and 8 bit bus widths.
> +
> +         If you have a controller with this interface, say Y or M here.
> +         If unsure, say N.
> +
>  config MMC_MESON_MX_SDIO
>         tristate "Amlogic Meson6/Meson8/Meson8b SD/MMC Host Controller support"
>         depends on ARCH_MESON || COMPILE_TEST
> diff --git a/drivers/mmc/host/Makefile b/drivers/mmc/host/Makefile
> index 21d9089e5eda..9a0c22a8139a 100644
> --- a/drivers/mmc/host/Makefile
> +++ b/drivers/mmc/host/Makefile
> @@ -68,6 +68,7 @@ obj-$(CONFIG_MMC_VUB300)      += vub300.o
>  obj-$(CONFIG_MMC_USHC)         += ushc.o
>  obj-$(CONFIG_MMC_WMT)          += wmt-sdmmc.o
>  obj-$(CONFIG_MMC_MESON_GX)     += meson-gx-mmc.o
> +obj-$(CONFIG_MMC_MESON_MX_SDHC)        += meson-mx-sdhc.o
>  obj-$(CONFIG_MMC_MESON_MX_SDIO)        += meson-mx-sdio.o
>  obj-$(CONFIG_MMC_MOXART)       += moxart-mmc.o
>  obj-$(CONFIG_MMC_SUNXI)                += sunxi-mmc.o
> diff --git a/drivers/mmc/host/meson-mx-sdhc.c b/drivers/mmc/host/meson-mx-sdhc.c
> new file mode 100644
> index 000000000000..b92400ee488b
> --- /dev/null
> +++ b/drivers/mmc/host/meson-mx-sdhc.c

[...]

> +
> +static void meson_mx_sdhc_wait_cmd_ready(struct mmc_host *mmc)
> +{
> +       struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +       u32 stat, esta;
> +       int ret;
> +
> +       ret = regmap_read_poll_timeout(host->regmap, MESON_SDHC_STAT, stat,
> +                                      !(stat & MESON_SDHC_STAT_CMD_BUSY), 1,
> +                                      100000);

Please use defines for timeout values.

> +       if (ret) {
> +               dev_warn(mmc_dev(mmc),
> +                        "Failed to poll for CMD_BUSY while processing CMD%d\n",
> +                        host->cmd->opcode);
> +               meson_mx_sdhc_hw_reset(mmc);
> +       }
> +
> +       ret = regmap_read_poll_timeout(host->regmap, MESON_SDHC_ESTA, esta,
> +                                      !(esta & MESON_SDHC_ESTA_11_13), 1,
> +                                      100000);

Ditto.

> +       if (ret) {
> +               dev_warn(mmc_dev(mmc),
> +                        "Failed to poll for ESTA[13:11] while processing CMD%d\n",
> +                        host->cmd->opcode);
> +               meson_mx_sdhc_hw_reset(mmc);
> +       }
> +}
> +
> +static void meson_mx_sdhc_start_cmd(struct mmc_host *mmc,
> +                                   struct mmc_command *cmd)
> +{
> +       struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +       u32 ictl, send;
> +       int pack_len;
> +
> +       host->cmd = cmd;
> +
> +       ictl = MESON_SDHC_ICTL_DATA_TIMEOUT | MESON_SDHC_ICTL_DATA_ERR_CRC |
> +              MESON_SDHC_ICTL_RXFIFO_FULL | MESON_SDHC_ICTL_TXFIFO_EMPTY |
> +              MESON_SDHC_ICTL_RESP_TIMEOUT | MESON_SDHC_ICTL_RESP_ERR_CRC;
> +
> +       send = FIELD_PREP(MESON_SDHC_SEND_CMD_INDEX, cmd->opcode);
> +
> +       if (cmd->data) {
> +               send |= MESON_SDHC_SEND_CMD_HAS_DATA;
> +               send |= FIELD_PREP(MESON_SDHC_SEND_TOTAL_PACK,
> +                                  cmd->data->blocks - 1);
> +
> +               if (cmd->data->blksz < MESON_SDHC_MAX_BLK_SIZE)
> +                       pack_len = cmd->data->blksz;
> +               else
> +                       pack_len = 0;
> +
> +               if (cmd->data->flags & MMC_DATA_WRITE)
> +                       send |= MESON_SDHC_SEND_DATA_DIR;
> +
> +               /*
> +                * If command with no data, just wait response done
> +                * interrupt(int[0]), and if command with data transfer, just
> +                * wait dma done interrupt(int[11]), don't need care about
> +                * dat0 busy or not.
> +                */
> +               if (host->platform->hardware_flush_all_cmds ||
> +                   cmd->data->flags & MMC_DATA_WRITE)
> +                       /* hardware flush: */
> +                       ictl |= MESON_SDHC_ICTL_DMA_DONE;
> +               else
> +                       /* software flush: */
> +                       ictl |= MESON_SDHC_ICTL_DATA_XFER_OK;
> +       } else {
> +               pack_len = 0;
> +
> +               ictl |= MESON_SDHC_ICTL_RESP_OK;
> +       }
> +
> +       if (cmd->opcode == MMC_STOP_TRANSMISSION)
> +               send |= MESON_SDHC_SEND_DATA_STOP;
> +
> +       if (cmd->flags & MMC_RSP_PRESENT)
> +               send |= MESON_SDHC_SEND_CMD_HAS_RESP;
> +
> +       if (cmd->flags & MMC_RSP_136) {
> +               send |= MESON_SDHC_SEND_RESP_LEN;
> +               send |= MESON_SDHC_SEND_RESP_NO_CRC;
> +       }
> +
> +       if (!(cmd->flags & MMC_RSP_CRC))
> +               send |= MESON_SDHC_SEND_RESP_NO_CRC;
> +
> +       if (cmd->flags & MMC_RSP_BUSY)
> +               send |= MESON_SDHC_SEND_R1B;
> +
> +       /* enable the new IRQs and mask all pending ones */
> +       regmap_write(host->regmap, MESON_SDHC_ICTL, ictl);
> +       regmap_write(host->regmap, MESON_SDHC_ISTA, MESON_SDHC_ISTA_ALL_IRQS);
> +
> +       regmap_write(host->regmap, MESON_SDHC_ARGU, cmd->arg);
> +
> +       regmap_update_bits(host->regmap, MESON_SDHC_CTRL,
> +                          MESON_SDHC_CTRL_PACK_LEN,
> +                          FIELD_PREP(MESON_SDHC_CTRL_PACK_LEN, pack_len));
> +
> +       if (cmd->data)
> +               regmap_write(host->regmap, MESON_SDHC_ADDR,
> +                            sg_dma_address(cmd->data->sg));
> +
> +       meson_mx_sdhc_wait_cmd_ready(mmc);
> +
> +       if (cmd->data)
> +               host->platform->set_pdma(mmc);
> +
> +       if (host->platform->wait_before_send)
> +               host->platform->wait_before_send(mmc);
> +
> +       regmap_write(host->regmap, MESON_SDHC_SEND, send);

Isn't there a configurable timeout to set for the command?

I mean the driver sets mmc->max_busy_timeout to 30s in ->probe(), but
can the timeout be configured to a lower value?

[...]

> +static void meson_mx_sdhc_wait_before_send_meson8(struct mmc_host *mmc)
> +{
> +       struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> +       u32 val;
> +       int ret;
> +
> +       ret = regmap_read_poll_timeout(host->regmap, MESON_SDHC_ESTA, val,
> +                                      val == 0, 1, 200);

Please use defines for timeout values.

> +       if (ret)
> +               dev_warn(mmc_dev(mmc),
> +                        "Failed to wait for ESTA to clear: 0x%08x\n", val);
> +
> +       if (host->cmd->data && host->cmd->data->flags & MMC_DATA_WRITE) {
> +               ret = regmap_read_poll_timeout(host->regmap, MESON_SDHC_STAT,
> +                                              val,
> +                                              val & MESON_SDHC_STAT_TXFIFO_CNT,
> +                                              1, 200);

Ditto.

> +               if (ret)
> +                       dev_warn(mmc_dev(mmc),
> +                                "Failed to wait for TX FIFO to fill\n");
> +       }
> +}
> +

[...]

> +
> +static int meson_mx_sdhc_probe(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
> +       struct meson_mx_sdhc_host *host;
> +       struct mmc_host *mmc;
> +       void __iomem *base;
> +       int ret, irq;
> +
> +       mmc = mmc_alloc_host(sizeof(*host), dev);
> +       if (!mmc)
> +               return -ENOMEM;
> +
> +       ret = devm_add_action_or_reset(dev, (void(*)(void *))mmc_free_host,
> +                                      mmc);
> +       if (ret) {
> +               dev_err(dev, "Failed to register mmc_free_host action\n");
> +               return ret;
> +       }
> +
> +       host = mmc_priv(mmc);
> +       host->mmc = mmc;
> +
> +       platform_set_drvdata(pdev, host);
> +
> +       host->platform = device_get_match_data(dev);
> +       if (!host->platform)
> +               return -EINVAL;
> +
> +       base = devm_platform_ioremap_resource(pdev, 0);
> +       if (IS_ERR(base))
> +               return PTR_ERR(base);
> +
> +       host->regmap = devm_regmap_init_mmio(dev, base,
> +                                            &meson_mx_sdhc_regmap_config);
> +       if (IS_ERR(host->regmap))
> +               return PTR_ERR(host->regmap);
> +
> +       host->pclk = devm_clk_get(dev, "pclk");
> +       if (IS_ERR(host->pclk))
> +               return PTR_ERR(host->pclk);
> +
> +       /* accessing any register requires the module clock to be enabled: */
> +       ret = clk_prepare_enable(host->pclk);
> +       if (ret) {
> +               dev_err(dev, "Failed to enable 'pclk' clock\n");
> +               return ret;
> +       }
> +
> +       meson_mx_sdhc_init_hw(mmc);
> +
> +       ret = meson_mx_sdhc_register_clkc(host);
> +       if (ret)
> +               goto err_disable_pclk;
> +
> +       host->bulk_clks[0].id = "mod_clk";
> +       host->bulk_clks[1].id = "sd_clk";
> +       host->bulk_clks[2].id = "tx_clk";
> +       host->bulk_clks[3].id = "rx_clk";
> +       ret = devm_clk_bulk_get(dev, MESON_SDHC_NUM_BULK_CLKS,
> +                               host->bulk_clks);
> +       if (ret)
> +               goto err_clkc_pdev_unregister;
> +
> +       host->sd_clk = host->bulk_clks[1].clk;
> +
> +       /* Get regulators and the supported OCR mask */
> +       ret = mmc_regulator_get_supply(mmc);
> +       if (ret)
> +               goto err_clkc_pdev_unregister;
> +
> +       mmc->max_req_size = SZ_128K;
> +       mmc->max_seg_size = mmc->max_req_size;
> +       mmc->max_blk_count = FIELD_GET(MESON_SDHC_SEND_TOTAL_PACK, ~0);
> +       mmc->max_blk_size = MESON_SDHC_MAX_BLK_SIZE;
> +       mmc->max_busy_timeout = 30 * MSEC_PER_SEC;
> +       mmc->f_min = clk_round_rate(host->sd_clk, 1);
> +       mmc->f_max = clk_round_rate(host->sd_clk, ULONG_MAX);
> +       mmc->max_current_180 = 300;
> +       mmc->max_current_330 = 300;
> +       mmc->caps |= MMC_CAP_ERASE | MMC_CAP_HW_RESET;

Should you also set MMC_CAP_WAIT_WHILE_BUSY? It sounded like the
driver supported this.

> +       mmc->ops = &meson_mx_sdhc_ops;
> +
> +       ret = mmc_of_parse(mmc);
> +       if (ret)
> +               goto err_clkc_pdev_unregister;
> +
> +       irq = platform_get_irq(pdev, 0);
> +       ret = devm_request_threaded_irq(dev, irq, meson_mx_sdhc_irq,
> +                                       meson_mx_sdhc_irq_thread, IRQF_ONESHOT,
> +                                       NULL, host);
> +       if (ret)
> +               goto err_clkc_pdev_unregister;
> +
> +       ret = mmc_add_host(mmc);
> +       if (ret)
> +               goto err_clkc_pdev_unregister;
> +
> +       return 0;
> +
> +err_clkc_pdev_unregister:
> +       platform_device_unregister(host->clkc_pdev);
> +err_disable_pclk:
> +       clk_disable_unprepare(host->pclk);
> +       return ret;
> +}
> +

[...]

FYI: I left out all comments related to the clock provider
initialization. I think it makes better sense to review that code,
after you have converted to use the devm_clk_hw_register() and avoid
registering a separate driver for it.

Other than the minor comments, this looks good to me.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
