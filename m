Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B974D1FED6B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 10:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JkitxMmdQWvsdO9HqUnjQX3C2a8wz5zWpPungPLvbqE=; b=fYe2PRZ9lUxjx2fzVq4HSDLY1x
	vJDVlQpGboDFcTfhjr0RB6zo7ADD/DN2T46R4/uUrcrtVVhO/xkazPI61eOWBUYdyvVVb7b6GNPjf
	wDXjFPxM6Rfffh5KYc16jIEfu4mdH3eUm0Cdu+A9/Dj9UhVWl15Hb1zMyjLa+gF/OkfljSCfi6wyy
	xKt6Icbl1zBTM7s35iFcQaVWHACQ89nBjQDYJUVmtkZrLQwn+7b5DCkrizWISA5sUaLsoF/8VhGAR
	6TOCwMvwi4Q0kzY2kRCPAHyDqFni6uEuYxH7EmKWNb5umlr7lx3i+Ad2rfjn5RFYTdw4NeKFFq+YW
	angDfbag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlplR-0005um-7S; Thu, 18 Jun 2020 08:19:13 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlpko-0005Yn-Dl
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 08:18:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592468314; x=1624004314;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=Lz+3uzq0aiZlbwsb/OI0JEWxmMZoJW1zOo33zKFn/VM=;
 b=HXcUlPEAdyHaLQUTqsZfAgYiISr/hVe/r21OU05bKyZ+/P4LjafNf7hg
 rxwx6YQlUPCSu51UJpvxzXvm13lVF91u2w7TkPKrNueBbjM+Sfz0vmbCm
 +XEAvz3LcMPVI/sbsq8j4QSAS80z0KuY62EiaXyQAXUvT+E7uIFiXtlg/
 mhS3skASAtMCpOFmBNDnxzOcuSyjTNkQh3Sp15zEHzN127TDt2V4Tevc2
 9r+2sGX+JxOD5WpEUmus9uOANfPlx2qkTucFEsIdSg3V1RXp554VEJaaw
 PkX8AQb9c3XD+KfjYUi3K8OatoDC7xleMAgD7VHBU5WV6JmEdsMpS4T5v g==;
IronPort-SDR: Lh14XOG1EblNvzIEx9ZjGIQMoKaykV3sv3Bl9GWPbnc5NZO9hoKtnjmpDp79WKPwTHOsw++mv3
 Qi+lrOQqmr4+veJpr8pJPe9p+YGk8tGhgUw+0K+OYoXtp3TUSs23P2NDPcfa4Ibo1ke6zi5S1N
 Rrf6Jh62zzqXKYuqvPCHHBX1l6LJMoKmkhoYuCPh+kz5NkmQQimnhMmvSfrfU3OMQErVQt7LQt
 KGiR+mvYRqR7P/lUjsPPxDWrqjfcGhaCZ0+KGCebhicnkGQyqX7WkCqN639x5phoz+QWm8MOmQ
 yno=
X-IronPort-AV: E=Sophos;i="5.73,526,1583218800"; d="scan'208";a="80594862"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Jun 2020 01:18:31 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 18 Jun 2020 01:18:31 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3
 via Frontend Transport; Thu, 18 Jun 2020 01:18:23 -0700
References: <20200609102008.10530-1-lars.povlsen@microchip.com>
 <20200609102008.10530-3-lars.povlsen@microchip.com>
 <27a9ad72-9657-ea84-8240-3b912c7f3b6b@intel.com>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH v2 2/3] sdhci: sparx5: Add Sparx5 SoC eMMC driver
In-Reply-To: <27a9ad72-9657-ea84-8240-3b912c7f3b6b@intel.com>
Date: Thu, 18 Jun 2020 10:18:28 +0200
Message-ID: <87h7v8wzvv.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_011834_548979_25F440CB 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.153.233 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Adrian Hunter writes:

> On 9/06/20 1:20 pm, Lars Povlsen wrote:
>> This adds the eMMC driver for the Sparx5 SoC. It is based upon the
>> designware IP, but requires some extra initialization and quirks.
>> ---
>>  drivers/mmc/host/Kconfig           |  13 ++
>>  drivers/mmc/host/Makefile          |   1 +
>>  drivers/mmc/host/sdhci-of-sparx5.c | 274 +++++++++++++++++++++++++++++
>>  3 files changed, 288 insertions(+)
>>  create mode 100644 drivers/mmc/host/sdhci-of-sparx5.c
>>
>> diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
>> index eb85237bf2d63..32dc3ced8529d 100644
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
>> index 4d5bcb0144a0a..4a57c4bf18a2e 100644
>> --- a/drivers/mmc/host/Makefile
>> +++ b/drivers/mmc/host/Makefile
>> @@ -92,6 +92,7 @@ obj-$(CONFIG_MMC_SDHCI_OF_ARASAN)   += sdhci-of-arasan.o
>>  obj-$(CONFIG_MMC_SDHCI_OF_ASPEED)    += sdhci-of-aspeed.o
>>  obj-$(CONFIG_MMC_SDHCI_OF_AT91)              += sdhci-of-at91.o
>>  obj-$(CONFIG_MMC_SDHCI_OF_ESDHC)     += sdhci-of-esdhc.o
>> +obj-$(CONFIG_MMC_SDHCI_OF_SPARX5)    += sdhci-of-sparx5.o
>>  obj-$(CONFIG_MMC_SDHCI_OF_HLWD)              += sdhci-of-hlwd.o
>>  obj-$(CONFIG_MMC_SDHCI_OF_DWCMSHC)   += sdhci-of-dwcmshc.o
>>  obj-$(CONFIG_MMC_SDHCI_BCM_KONA)     += sdhci-bcm-kona.o
>> diff --git a/drivers/mmc/host/sdhci-of-sparx5.c b/drivers/mmc/host/sdhci-of-sparx5.c
>> new file mode 100644
>> index 0000000000000..1ec40bb27e06d
>> --- /dev/null
>> +++ b/drivers/mmc/host/sdhci-of-sparx5.c
>> @@ -0,1 +1,274 @@
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
>> +};
>> +
>> +#define BOUNDARY_OK(addr, len) \
>> +     ((addr | (SZ_128M - 1)) == ((addr + len - 1) | (SZ_128M - 1)))
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
>> +     pr_debug("%s: write_desc: cmd %02x: len %d, offset 0x%0llx\n",
>> +              mmc_hostname(host->mmc), cmd, len, addr);
>> +
>> +     if (likely(!len || BOUNDARY_OK(addr, len))) {
>> +             sdhci_adma_write_desc(host, desc, addr, len, cmd);
>> +             return;
>> +     }
>> +
>> +     pr_debug("%s: write_desc: splitting dma len %d, offset 0x%0llx\n",
>> +              mmc_hostname(host->mmc), len, addr);
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
>> +                     value |= MSHC2_EMMC_CTRL_IS_EMMC;
>> +                     pr_debug("%s: Set EMMC_CTRL: 0x%08x\n",
>> +                              mmc_hostname(host->mmc), value);
>> +                     sdhci_writeb(host, value, MSHC2_EMMC_CTRL);
>> +             }
>> +     }
>> +}
>> +
>> +static void sdhci_sparx5_reset_emmc(struct sdhci_host *host)
>> +{
>> +     u8 value;
>> +
>> +     pr_debug("%s: Toggle EMMC_CTRL.EMMC_RST_N\n", mmc_hostname(host->mmc));
>> +     value = sdhci_readb(host, MSHC2_EMMC_CTRL) &
>> +             ~MSHC2_EMMC_CTRL_EMMC_RST_N;
>> +     sdhci_writeb(host, value, MSHC2_EMMC_CTRL);
>> +     /* For eMMC, minimum is 1us but give it 10us for good measure */
>> +     usleep_range(10, 20);
>> +     sdhci_writeb(host, value | MSHC2_EMMC_CTRL_EMMC_RST_N,
>> +                  MSHC2_EMMC_CTRL);
>> +     /* For eMMC, minimum is 200us but give it 300us for good measure */
>> +     usleep_range(300, 400);
>> +}
>> +
>> +static void sdhci_sparx5_reset(struct sdhci_host *host, u8 mask)
>> +{
>> +     pr_debug("%s: *** RESET: mask %d\n", mmc_hostname(host->mmc), mask);
>> +
>> +     sdhci_reset(host, mask);
>> +
>> +     /* Be sure CARD_IS_EMMC stays set */
>> +     sdhci_sparx5_set_emmc(host);
>> +}
>> +
>> +static const struct sdhci_ops sdhci_sparx5_ops = {
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
>> +     .quirks2 = SDHCI_QUIRK2_HOST_NO_CMD23 | /* Controller issue */
>> +                SDHCI_QUIRK2_NO_1_8_V, /* No sdr104, ddr50, etc */
>> +     .ops = &sdhci_sparx5_ops,
>> +};
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
>> +     ret = sdhci_add_host(host);
>> +     if (ret)
>> +             dev_err(&pdev->dev, "sdhci_add_host() failed (%d)\n", ret);
>
> Shouldn't this goto err_clk;
>
> Also, the error message is not really needed if ret == -EPROBE_DEFER

Adrian, good catch!

I'll align with other drivers here - no dev_err() and disable the clock.

Thank you for your comments, I will refresh asap.

Cheers,

---Lars

>
>> +
>> +     /* Set AXI bus master to use un-cached access (for DMA) */
>> +     if (host->flags & (SDHCI_USE_SDMA | SDHCI_USE_ADMA) &&
>> +         IS_ENABLED(CONFIG_DMA_DECLARE_COHERENT))
>> +             sparx5_set_cacheable(host, ACP_CACHE_FORCE_ENA);
>> +
>> +     pr_debug("%s: SDHC version: 0x%08x\n",
>> +              mmc_hostname(host->mmc), sdhci_readl(host, MSHC2_VERSION));
>> +     pr_debug("%s: SDHC type:    0x%08x\n",
>> +              mmc_hostname(host->mmc), sdhci_readl(host, MSHC2_TYPE));
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
>> Cc: Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>
>> Cc: linux-mmc@vger.kernel.org
>> Cc: devicetree@vger.kernel.org
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-kernel@vger.kernel.org
>>

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
