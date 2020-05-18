Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF8D1D7354
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 10:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aUew+PApZnuy8uKoABoyAO2FNosxIb/FNDx5iHGeNVs=; b=ar4/Mp/LfA+82qDe1AxsKyPGRq
	fFDI8M784Fe2+Mlt83zxJrRDEDtNJnXYRBs6Vz1i+KfTJ2WF+U/zTsHBFVkBA/tEfvc7vVdidtq95
	5ouZIcI8+dHFEDFsm/be0SZZ88UQpQDM0HD+FrWvnDYzdIr9q2gZaMeaMLOwN1z/enYQpk8dYjyY2
	23foIIeB2GikXZxMnI1oz5uO3KoQH541CchBPlSjH0EGealR//ikeQ6n+fHhkN5QquSVIz07ZlqHc
	6KPRGbwvVqHv1P0DG6B6ujExgmQAWo+3pBsX2bBgTbY0WdxqEbnrrOhhx8YAkSPcgnof6dYZwrEOV
	yYheOB+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jabbb-00044s-1p; Mon, 18 May 2020 08:58:39 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jabbP-00043o-Vn
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 08:58:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589792307; x=1621328307;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=yt+4gfXTk7X0ddX3hBW5CT9l34qe5+5wv4Lv8l/gmI4=;
 b=rsyGtw1amypMaxyo9MDv2DOr3vJYZpQP3RJpdEcez9uzTb5PtGpfKKaj
 YC5CYMvoBiolyD29RlaHotal8wXfeIyj+mG9+tFR3ISQzEsu6ZGI7grUh
 GleDgocOTrklTK1mNA67Gt0gV5QZqcTfnh8sM4Q2B4xaQTLu5XQhXZtJw
 FCnUkB4JoBzJ8+YT/vzk6C1XbMh3ofldYu+9FzfTy/DPSdxYS9IyBIbg/
 ly1LlnSyjUzUC5isk8pBEfalEE9QM43kCIczONINCPOzMJvrZooa7PZUE
 apijIDXma1tB1YTTa232yPSUJKS4sck5NRbF51oLFOC07hxcToTWCAQSX A==;
IronPort-SDR: RsaoxOIY6BpRO/wb2pD1FjxLa+bWqIm1aPWra81xrp21BBuhxSf81KdRLDdFMaJ5B6TFSHz79m
 GtR6wO5POcFv7RLhD7F9HVyrMQpJk2Pgt4LEJWLaN5+wrrjQJ4Ro6tdAk19ZOdYcup3KrE43WX
 9XblCDgcq4EFjLewu4/toUo+No9RN541RFklw9x4g3RRNKpuV23W8McqmwDdIE9JsBjHxBL3Ul
 /k0BUY9H/qjkC33lUbUwrKi30lmg4/iKkHg5orERqKVdNQXE1G96obgrvjyTObfCYiSLNn+OTl
 EOE=
X-IronPort-AV: E=Sophos;i="5.73,406,1583218800"; d="scan'208";a="79999901"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 May 2020 01:58:26 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 18 May 2020 01:58:30 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 18 May 2020 01:58:27 -0700
References: <20200513133122.25121-1-lars.povlsen@microchip.com>
 <20200513133122.25121-3-lars.povlsen@microchip.com>
 <6398c7a6-ce5e-1df6-d5a6-08664a7fc123@intel.com>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH 2/3] sdhci: sparx5: Add Sparx5 SoC eMMC driver
In-Reply-To: <6398c7a6-ce5e-1df6-d5a6-08664a7fc123@intel.com>
Date: Mon, 18 May 2020 10:58:22 +0200
Message-ID: <87v9ktoc0h.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_015828_060545_F2D2E4BB 
X-CRM114-Status: GOOD (  21.20  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Microchip Linux Driver
 Support <UNGLinuxDriver@microchip.com>, SoC Team <soc@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Adrian Hunter writes:

> On 13/05/20 4:31 pm, Lars Povlsen wrote:
>> This adds the eMMC driver for the Sparx5 SoC. It is based upon the
>> designware IP, but requires some extra initialization and quirks.
>>
>> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
>> ---
>>  drivers/mmc/host/Kconfig           |  13 ++
>>  drivers/mmc/host/Makefile          |   1 +
>>  drivers/mmc/host/sdhci-of-sparx5.c | 348 +++++++++++++++++++++++++++++
>>  3 files changed, 362 insertions(+)
>>  create mode 100644 drivers/mmc/host/sdhci-of-sparx5.c
>>
>> diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
>> index 462b5352fea75..1e8396d09df75 100644
>> --- a/drivers/mmc/host/Kconfig
>> +++ b/drivers/mmc/host/Kconfig
>> @@ -213,6 +213,19 @@ config MMC_SDHCI_OF_DWCMSHC
>>         If you have a controller with this interface, say Y or M here.
>>         If unsure, say N.
>>
>> +config MMC_SDHCI_OF_SPARX5
>> +     tristate "SDHCI OF support for the MCHP Sparx5 SoC"
>> +     depends on MMC_SDHCI_PLTFM
>> +     depends on ARCH_SPARX5
>> +     select MMC_SDHCI_IO_ACCESSORS
>> +     help
>> +       This selects the Secure Digital Host Controller Interface (SDHCI)
>> +       found in the MCHP Sparx5 SoC.
>> +
>> +       If you have a Sparx5 SoC with this interface, say Y or M here.
>> +
>> +       If unsure, say N.
>> +
>>  config MMC_SDHCI_CADENCE
>>       tristate "SDHCI support for the Cadence SD/SDIO/eMMC controller"
>>       depends on MMC_SDHCI_PLTFM
>> diff --git a/drivers/mmc/host/Makefile b/drivers/mmc/host/Makefile
>> index b929ef9412083..9f09b7ffaaa16 100644
>> --- a/drivers/mmc/host/Makefile
>> +++ b/drivers/mmc/host/Makefile
>> @@ -89,6 +89,7 @@ obj-$(CONFIG_MMC_SDHCI_OF_ARASAN)   += sdhci-of-arasan.o
>>  obj-$(CONFIG_MMC_SDHCI_OF_ASPEED)    += sdhci-of-aspeed.o
>>  obj-$(CONFIG_MMC_SDHCI_OF_AT91)              += sdhci-of-at91.o
>>  obj-$(CONFIG_MMC_SDHCI_OF_ESDHC)     += sdhci-of-esdhc.o
>> +obj-$(CONFIG_MMC_SDHCI_OF_SPARX5)    += sdhci-of-sparx5.o
>>  obj-$(CONFIG_MMC_SDHCI_OF_HLWD)              += sdhci-of-hlwd.o
>>  obj-$(CONFIG_MMC_SDHCI_OF_DWCMSHC)   += sdhci-of-dwcmshc.o
>>  obj-$(CONFIG_MMC_SDHCI_BCM_KONA)     += sdhci-bcm-kona.o
>> diff --git a/drivers/mmc/host/sdhci-of-sparx5.c b/drivers/mmc/host/sdhci-of-sparx5.c
>> new file mode 100644
>> index 0000000000000..8253bf80e175a
>> --- /dev/null
>> +++ b/drivers/mmc/host/sdhci-of-sparx5.c
>> @@ -0,0 +1,348 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later
>> +/*
>> + * drivers/mmc/host/sdhci-of-sparx5.c
>> + *
>> + * MCHP Sparx5 SoC Secure Digital Host Controller Interface.
>> + *
>> + * Copyright (c) 2019 Microchip Inc.
>> + *
>> + * Author: Lars Povlsen <lars.povlsen@microchip.com>
>> + */
>> +
>> +//#define DEBUG
>> +//#define TRACE_REGISTER
>
> No commented out code please.

Yes, that's not relevant any more, I'll remove it.

>
>> +
>> +#include <linux/sizes.h>
>> +#include <linux/delay.h>
>> +#include <linux/module.h>
>> +#include <linux/regmap.h>
>> +#include <linux/of_device.h>
>> +#include <linux/mfd/syscon.h>
>> +#include <linux/dma-mapping.h>
>> +
>> +#include "sdhci-pltfm.h"
>> +
>> +#define CPU_REGS_GENERAL_CTRL        (0x22 * 4)
>> +#define  MSHC_DLY_CC_MASK    GENMASK(16, 13)
>> +#define  MSHC_DLY_CC_SHIFT   13
>> +#define  MSHC_DLY_CC_MAX     15
>> +
>> +#define CPU_REGS_PROC_CTRL   (0x2C * 4)
>> +#define  ACP_CACHE_FORCE_ENA BIT(4)
>> +#define  ACP_AWCACHE         BIT(3)
>> +#define  ACP_ARCACHE         BIT(2)
>> +#define  ACP_CACHE_MASK              (ACP_CACHE_FORCE_ENA|ACP_AWCACHE|ACP_ARCACHE)
>> +
>> +#define MSHC2_VERSION                        0x500   /* Off 0x140, reg 0x0 */
>> +#define MSHC2_TYPE                   0x504   /* Off 0x140, reg 0x1 */
>> +#define MSHC2_EMMC_CTRL                      0x52c   /* Off 0x140, reg 0xB */
>> +#define  MSHC2_EMMC_CTRL_EMMC_RST_N  BIT(2)
>> +#define  MSHC2_EMMC_CTRL_IS_EMMC     BIT(0)
>> +
>> +struct sdhci_sparx5_data {
>> +     struct sdhci_host *host;
>> +     struct regmap *cpu_ctrl;
>> +     int delay_clock;
>> +     struct device_attribute dev_delay_clock;
>> +};
>> +
>> +#define BOUNDARY_OK(addr, len) \
>> +     ((addr | (SZ_128M - 1)) == ((addr + len - 1) | (SZ_128M - 1)))
>> +
>> +#if defined(TRACE_REGISTER)
>
> If you want this then add a Kconfig entry for it
>

No, I'll just remove it.

>> +static void sdhci_sparx5_writel(struct sdhci_host *host, u32 val, int reg)
>> +{
>> +     pr_debug("$$$ writel(0x%08x, 0x%02x)\n", val, reg);
>> +     writel(val, host->ioaddr + reg);
>> +}
>> +
>> +static void sdhci_sparx5_writew(struct sdhci_host *host, u16 val, int reg)
>> +{
>> +     pr_debug("$$$ writew(0x%04x, 0x%02x)\n", val, reg);
>> +     writew(val, host->ioaddr + reg);
>> +}
>> +
>> +static void sdhci_sparx5_writeb(struct sdhci_host *host, u8 val, int reg)
>> +{
>> +     pr_debug("$$$ writeb(0x%02x, 0x%02x)\n", val, reg);
>> +     writeb(val, host->ioaddr + reg);
>> +}
>> +#endif
>> +
>> +/*
>> + * If DMA addr spans 128MB boundary, we split the DMA transfer into two
>> + * so that each DMA transfer doesn't exceed the boundary.
>> + */
>> +static void sdhci_sparx5_adma_write_desc(struct sdhci_host *host, void **desc,
>> +                                       dma_addr_t addr, int len,
>> +                                       unsigned int cmd)
>> +{
>> +     int tmplen, offset;
>> +
>> +     pr_debug("write_desc: cmd %02x: len %d, offset 0x%0llx\n",
>> +              cmd, len, addr);
>
> Please prefix all kernel messages by either the mmc or device e.g.
>
>         pr_debug("%s: write_desc: cmd %02x: len %d, offset 0x%0llx\n",
>                  mmc_hostname(host->mmc), cmd, len, addr);

Will do.

>> +
>> +     if (likely(!len || BOUNDARY_OK(addr, len))) {
>> +             sdhci_adma_write_desc(host, desc, addr, len, cmd);
>> +             return;
>> +     }
>> +
>> +     pr_debug("write_desc: splitting dma len %d, offset 0x%0llx\n",
>> +              len, addr);
>> +
>> +     offset = addr & (SZ_128M - 1);
>> +     tmplen = SZ_128M - offset;
>> +     sdhci_adma_write_desc(host, desc, addr, tmplen, cmd);
>> +
>> +     addr += tmplen;
>> +     len -= tmplen;
>> +     sdhci_adma_write_desc(host, desc, addr, len, cmd);
>> +}
>> +
>> +static void sparx5_set_cacheable(struct sdhci_host *host, u32 value)
>> +{
>> +     struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
>> +     struct sdhci_sparx5_data *sdhci_sparx5 = sdhci_pltfm_priv(pltfm_host);
>> +
>> +     pr_debug("%s: Set Cacheable = 0x%x\n", mmc_hostname(host->mmc), value);
>> +
>> +     /* Update ACP caching attributes in HW */
>> +     regmap_update_bits(sdhci_sparx5->cpu_ctrl,
>> +                        CPU_REGS_PROC_CTRL, ACP_CACHE_MASK, value);
>> +}
>> +
>> +static void sparx5_set_delay(struct sdhci_host *host, u8 value)
>> +{
>> +     struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
>> +     struct sdhci_sparx5_data *sdhci_sparx5 = sdhci_pltfm_priv(pltfm_host);
>> +
>> +     pr_debug("%s: Set DLY_CC = %u\n", mmc_hostname(host->mmc), value);
>> +
>> +     /* Update DLY_CC in HW */
>> +     regmap_update_bits(sdhci_sparx5->cpu_ctrl,
>> +                        CPU_REGS_GENERAL_CTRL,
>> +                        MSHC_DLY_CC_MASK,
>> +                        (value << MSHC_DLY_CC_SHIFT));
>> +}
>> +
>> +static void sdhci_sparx5_set_emmc(struct sdhci_host *host)
>> +{
>> +     if (!mmc_card_is_removable(host->mmc)) {
>> +             u8 value;
>> +
>> +             value = sdhci_readb(host, MSHC2_EMMC_CTRL);
>> +             if (!(value & MSHC2_EMMC_CTRL_IS_EMMC)) {
>> +                     pr_debug("Get EMMC_CTRL: 0x%08x\n", value);
>> +                     value |= MSHC2_EMMC_CTRL_IS_EMMC;
>> +                     pr_debug("Set EMMC_CTRL: 0x%08x\n", value);
>> +                     sdhci_writeb(host, value, MSHC2_EMMC_CTRL);
>> +             }
>> +     }
>> +}
>> +
>> +static void sdhci_sparx5_reset_emmc(struct sdhci_host *host)
>> +{
>> +     u8 value;
>> +
>> +     pr_debug("Toggle EMMC_CTRL.EMMC_RST_N\n");
>> +     value = sdhci_readb(host, MSHC2_EMMC_CTRL) &
>> +             ~MSHC2_EMMC_CTRL_EMMC_RST_N;
>> +     sdhci_writeb(host, value, MSHC2_EMMC_CTRL);
>> +     /* For eMMC, minimum is 1us but give it 10us for good measure */
>> +     udelay(10);
>> +     sdhci_writeb(host, value | MSHC2_EMMC_CTRL_EMMC_RST_N,
>> +                  MSHC2_EMMC_CTRL);
>> +     /* For eMMC, minimum is 200us but give it 300us for good measure */
>> +     udelay(300);
>
> usleep_range() is better here
>

Got it.

>> +}
>> +
>> +static void sdhci_sparx5_reset(struct sdhci_host *host, u8 mask)
>> +{
>> +     pr_debug("*** RESET: mask %d\n", mask);
>> +
>> +     sdhci_reset(host, mask);
>> +
>> +     /* Be sure CARD_IS_EMMC stays set */
>> +     sdhci_sparx5_set_emmc(host);
>> +}
>> +
>> +static const struct sdhci_ops sdhci_sparx5_ops = {
>> +#if defined(TRACE_REGISTER)
>> +     .write_l                = sdhci_sparx5_writel,
>> +     .write_w                = sdhci_sparx5_writew,
>> +     .write_b                = sdhci_sparx5_writeb,
>> +#endif
>> +     .set_clock              = sdhci_set_clock,
>> +     .set_bus_width          = sdhci_set_bus_width,
>> +     .set_uhs_signaling      = sdhci_set_uhs_signaling,
>> +     .get_max_clock          = sdhci_pltfm_clk_get_max_clock,
>> +     .reset                  = sdhci_sparx5_reset,
>> +     .adma_write_desc        = sdhci_sparx5_adma_write_desc,
>> +};
>> +
>> +static const struct sdhci_pltfm_data sdhci_sparx5_pdata = {
>> +     .quirks  = 0,
>> +     .quirks2 = SDHCI_QUIRK2_HOST_NO_CMD23 | /* Card quirk */
>
> If this is a card quirk then it should be in drivers/mmc/core/quirks.h not here.

Yes, its supposedly a card quirk. I'll see to use the card quirks
methods in place.

>
>> +                SDHCI_QUIRK2_NO_1_8_V, /* No sdr104, ddr50, etc */
>> +     .ops = &sdhci_sparx5_ops,
>> +};
>> +
>> +static ssize_t sparx5_delay_clock_show(struct device *dev,
>> +                                     struct device_attribute *attr,
>> +                                     char *buf)
>> +{
>> +     struct sdhci_sparx5_data *sdhci_sparx5;
>> +
>> +     sdhci_sparx5 = container_of(attr, struct sdhci_sparx5_data,
>> +                                  dev_delay_clock);
>> +     return scnprintf(buf, PAGE_SIZE, "%d\n", sdhci_sparx5->delay_clock);
>> +}
>> +
>> +static ssize_t sparx5_delay_clock_store(struct device *dev,
>> +                                      struct device_attribute *attr,
>> +                                      const char *buf, size_t count)
>> +{
>> +     unsigned int delay_clock;
>> +     struct sdhci_sparx5_data *sdhci_sparx5;
>> +
>> +     sdhci_sparx5 = container_of(attr, struct sdhci_sparx5_data,
>> +                                  dev_delay_clock);
>> +
>> +     if (kstrtoint(buf, 10, &delay_clock) ||
>> +         delay_clock > MSHC_DLY_CC_MAX) {
>> +             dev_err(dev, "sdhci-of-sparx5: wrong parameter format.\n");
>> +             return -EINVAL;
>> +     }
>> +
>> +     sdhci_sparx5->delay_clock = delay_clock;
>> +     sparx5_set_delay(sdhci_sparx5->host, sdhci_sparx5->delay_clock);
>> +
>> +     return strlen(buf);
>> +}
>> +
>> +int sdhci_sparx5_probe(struct platform_device *pdev)
>> +{
>> +     int ret;
>> +     const char *syscon = "microchip,sparx5-cpu-syscon";
>> +     struct sdhci_host *host;
>> +     struct sdhci_pltfm_host *pltfm_host;
>> +     struct sdhci_sparx5_data *sdhci_sparx5;
>> +     struct device_node *np = pdev->dev.of_node;
>> +     u32 value;
>> +     u32 extra;
>> +
>> +     host = sdhci_pltfm_init(pdev, &sdhci_sparx5_pdata,
>> +                             sizeof(*sdhci_sparx5));
>> +
>> +     if (IS_ERR(host))
>> +             return PTR_ERR(host);
>> +
>> +     /*
>> +      * extra adma table cnt for cross 128M boundary handling.
>> +      */
>> +     extra = DIV_ROUND_UP_ULL(dma_get_required_mask(&pdev->dev), SZ_128M);
>> +     if (extra > SDHCI_MAX_SEGS)
>> +             extra = SDHCI_MAX_SEGS;
>> +     host->adma_table_cnt += extra;
>> +
>> +     pltfm_host = sdhci_priv(host);
>> +     sdhci_sparx5 = sdhci_pltfm_priv(pltfm_host);
>> +     sdhci_sparx5->host = host;
>> +
>> +     pltfm_host->clk = devm_clk_get(&pdev->dev, "core");
>> +     if (IS_ERR(pltfm_host->clk)) {
>> +             ret = PTR_ERR(pltfm_host->clk);
>> +             dev_err(&pdev->dev, "failed to get core clk: %d\n", ret);
>> +             goto free_pltfm;
>> +     }
>> +     ret = clk_prepare_enable(pltfm_host->clk);
>> +     if (ret)
>> +             goto free_pltfm;
>> +
>> +     if (!of_property_read_u32(np, "microchip,clock-delay", &value) &&
>> +         value <= MSHC_DLY_CC_MAX)
>> +             sdhci_sparx5->delay_clock = value;
>> +     else
>> +             sdhci_sparx5->delay_clock = -1; /* Autotune */
>> +
>> +     /* Sysfs delay_clock interface */
>> +     sdhci_sparx5->dev_delay_clock.show = sparx5_delay_clock_show;
>> +     sdhci_sparx5->dev_delay_clock.store = sparx5_delay_clock_store;
>> +     sysfs_attr_init(&sdhci_sparx5->dev_delay_clock.attr);
>> +     sdhci_sparx5->dev_delay_clock.attr.name = "delay_clock";
>> +     sdhci_sparx5->dev_delay_clock.attr.mode = 0644;
>> +     ret = device_create_file(&pdev->dev, &sdhci_sparx5->dev_delay_clock);
>
> Why is this needed?  It seems doubtful that user space knows what value to
> put here if neither the board information nor the driver have that information.

The interface was provided to do tuning with a scope attached. As it is
not a requirement, I'll remove it.

>
>> +     if (ret)
>> +             dev_err(&pdev->dev, "failure creating '%s' device file",
>> +                     sdhci_sparx5->dev_delay_clock.attr.name);
>> +
>> +     sdhci_get_of_property(pdev);
>> +
>> +     ret = mmc_of_parse(host->mmc);
>> +     if (ret)
>> +             goto err_clk;
>> +
>> +     sdhci_sparx5->cpu_ctrl = syscon_regmap_lookup_by_compatible(syscon);
>> +     if (IS_ERR(sdhci_sparx5->cpu_ctrl)) {
>> +             dev_err(&pdev->dev, "No CPU syscon regmap !\n");
>> +             ret = PTR_ERR(sdhci_sparx5->cpu_ctrl);
>> +             goto err_clk;
>> +     }
>> +
>> +     if (sdhci_sparx5->delay_clock >= 0)
>> +             sparx5_set_delay(host, sdhci_sparx5->delay_clock);
>> +
>> +     if (!mmc_card_is_removable(host->mmc)) {
>> +             /* Do a HW reset of eMMC card */
>> +             sdhci_sparx5_reset_emmc(host);
>> +             /* Update EMMC_CTRL */
>> +             sdhci_sparx5_set_emmc(host);
>> +             /* If eMMC, disable SD and SDIO */
>> +             host->mmc->caps2 |= (MMC_CAP2_NO_SDIO|MMC_CAP2_NO_SD);
>> +     }
>> +
>> +     /* Enable v4 mode */
>> +     //sdhci_enable_v4_mode(host);
>
> No commented out code please.

I'll remove this.

>
>> +
>> +     ret = sdhci_add_host(host);
>> +     if (ret)
>> +             dev_err(&pdev->dev, "sdhci_add_host() failed (%d)\n", ret);
>> +
>> +     /* Set AXI bus master to use un-cached access (for DMA) */
>> +     if (host->flags & (SDHCI_USE_SDMA | SDHCI_USE_ADMA) &&
>> +         IS_ENABLED(CONFIG_DMA_DECLARE_COHERENT))
>> +             sparx5_set_cacheable(host, ACP_CACHE_FORCE_ENA);
>> +
>> +     pr_debug("SDHC version: 0x%08x\n", sdhci_readl(host, MSHC2_VERSION));
>> +     pr_debug("SDHC type:    0x%08x\n", sdhci_readl(host, MSHC2_TYPE));
>> +
>> +     return ret;
>> +
>> +err_clk:
>> +     clk_disable_unprepare(pltfm_host->clk);
>> +free_pltfm:
>> +     sdhci_pltfm_free(pdev);
>> +     return ret;
>> +}
>> +
>> +static const struct of_device_id sdhci_sparx5_of_match[] = {
>> +     { .compatible = "microchip,dw-sparx5-sdhci" },
>> +     { }
>> +};
>> +MODULE_DEVICE_TABLE(of, sdhci_sparx5_of_match);
>> +
>> +static struct platform_driver sdhci_sparx5_driver = {
>> +     .driver = {
>> +             .name = "sdhci-sparx5",
>> +             .of_match_table = sdhci_sparx5_of_match,
>> +             .pm = &sdhci_pltfm_pmops,
>> +     },
>> +     .probe = sdhci_sparx5_probe,
>> +     .remove = sdhci_pltfm_unregister,
>> +};
>> +
>> +module_platform_driver(sdhci_sparx5_driver);
>> +
>> +MODULE_DESCRIPTION("Sparx5 SDHCI OF driver");
>> +MODULE_AUTHOR("Lars Povlsen <lars.povlsen@microchip.com>");
>> +MODULE_LICENSE("GPL v2");
>> --
>> 2.26.2
>>

Thank you very much for your comments, I will make the suggested changes
and submit an new series asap.

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
