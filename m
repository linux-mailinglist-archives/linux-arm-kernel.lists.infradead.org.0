Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D1D1485A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 14:10:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UNtVHo1tWElFe/skyITjtJd7XCZvg4+9CqDdVGUAXtA=; b=ALhfqFSbyMmBYT
	NdiVIfUc+FSXMTRkvzEuB2B/wq6VUQO9VhzZhN5S0QCOdVSb4bSPxMpO+sxyaYCP4qVD5p31qkwY7
	Lo3IA2EOImO708Xqy/o7eEz9/n8yoP/pI2/4skSs2haBdUj+OAAuGpSe8+gsS7itITTl3S15ziqVI
	MV2HrXfCgLJz94rCkIS+hH7rtCYLtyGWCl5Su01S0m+zv1xBhnRvDPDy5ylXR/stSpfK3xZBesF98
	FW+0X3E+KxLzlJSGUmRV3sK2PWtLmVBSuadccCNrNqaLuFb+6jYGX0+kAeOQijXU4TtGQKXn0SEI8
	8t3OPRFmzyXWe6WPg+rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuyjg-000568-C2; Fri, 24 Jan 2020 13:10:56 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuyjR-00053k-75
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 13:10:43 +0000
Received: by mail-ua1-x943.google.com with SMTP id z24so751084uam.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 05:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tgn2//ZSCDORj0Cvv0XkC07XnrcMfFKutZKQkSYkRvE=;
 b=P1ptjq0UUFrZNorymbhq7kV35sq5owXkbsBz2Z/uV8WPXbLJ5uQ3B2ViXLKowV1t4n
 OGYAGWrDff83Df/xTZf6Xqz3amQPxOoz7twXZ1HrfcrTe1Hl3DddpV09/DCq0+zbGT9D
 +OR/KWLfC9esWVC9q3c30jXezsCPLhxQlXG9FrCNNZEmNGDeKmlsFjjoxRlSi+T6NHgN
 PbazLUQyVyQqaQ+h7um1L7ztpGIO/Y7jLDI1VuxnTSl01wRpC5taw+kkIGuyPHzFbBnY
 mBJbKacELjl+Nh1DBnOdg/B2VVARdL1SLJSNfdkTWrbkDj2vwBV1aeO3NgMJI49WPKfc
 hGiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tgn2//ZSCDORj0Cvv0XkC07XnrcMfFKutZKQkSYkRvE=;
 b=gKmwyZ88g23SHacp9VGHGdrXxf70J6/Kni9FVzvDonJopSodg5fznNn13fZKFYO3ud
 uWRzei167YI7ZlQEW3yYBn5vkNiOCKgVIPaNXoxDxkaKGQxjIpzumYY59MlL3mtqS6V9
 MXC8/l2Et67oTPH9obyi75/MKdzI8ydtEUo9y+jzzLIQGpuW3feXk9d4AWUYRv7uwC0O
 SJl/8Us59TILcEFoeYl1jK2wB5dovJtXX8WIYdk1nBtnOwT2NCMdwPjFLFgKRW1DFmVW
 wbUdQqb7Z++QE0NkOeyK4sZHsWifWFSTQO7cSGvUvpO2IUjQbMMb4xVnMx+OqvCTMrex
 HwVg==
X-Gm-Message-State: APjAAAVZJJBNMkgDcI7mdZgtXrG9bbiqpzTC5gCe2fZcHY9x7elBolJ5
 /xxKiaU1t1M8omuvFOMlzSDi4yEwh5Wgs3h8X+SUtQ==
X-Google-Smtp-Source: APXvYqwVP13ejaA0SZhnfERB+1opa8r8kAAKrFN61gAqwPEvErTSb83VmAPiMo2c8U3Uv0fsr6pZWSU0PpeB8z5BJt4=
X-Received: by 2002:ab0:740e:: with SMTP id r14mr1740357uap.104.1579871439759; 
 Fri, 24 Jan 2020 05:10:39 -0800 (PST)
MIME-Version: 1.0
References: <20200110134823.14882-1-ludovic.barre@st.com>
 <20200110134823.14882-7-ludovic.barre@st.com>
In-Reply-To: <20200110134823.14882-7-ludovic.barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 24 Jan 2020 14:10:03 +0100
Message-ID: <CAPDyKFq25C6W3df5LRsYAcV71rM0YYx9xd=isURKVkbCiN+fBw@mail.gmail.com>
Subject: Re: [PATCH 6/9] mmc: mmci: sdmmc: add execute tuning with delay block
To: Ludovic Barre <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_051041_296470_5B6491AE 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 at 14:49, Ludovic Barre <ludovic.barre@st.com> wrote:
>
> The hardware delay block is used to align the sampling clock on
> the data received by SDMMC. It is mandatory for SDMMC to
> support the SDR104 mode. The delay block is used to generate
> an output clock which is dephased from the input clock.
> The phase of the output clock must be programmed by the execute
> tuning interface.
>
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> ---
>  drivers/mmc/host/mmci_stm32_sdmmc.c | 147 ++++++++++++++++++++++++++++
>  1 file changed, 147 insertions(+)
>
> diff --git a/drivers/mmc/host/mmci_stm32_sdmmc.c b/drivers/mmc/host/mmci_stm32_sdmmc.c
> index df08f6662431..10059fa19f4a 100644
> --- a/drivers/mmc/host/mmci_stm32_sdmmc.c
> +++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
> @@ -3,10 +3,13 @@
>   * Copyright (C) STMicroelectronics 2018 - All Rights Reserved
>   * Author: Ludovic.barre@st.com for STMicroelectronics.
>   */
> +#include <linux/bitfield.h>
>  #include <linux/delay.h>
>  #include <linux/dma-mapping.h>
> +#include <linux/iopoll.h>
>  #include <linux/mmc/host.h>
>  #include <linux/mmc/card.h>
> +#include <linux/of_address.h>
>  #include <linux/reset.h>
>  #include <linux/scatterlist.h>
>  #include "mmci.h"
> @@ -14,6 +17,20 @@
>  #define SDMMC_LLI_BUF_LEN      PAGE_SIZE
>  #define SDMMC_IDMA_BURST       BIT(MMCI_STM32_IDMABNDT_SHIFT)
>
> +#define DLYB_CR                        0x0
> +#define DLYB_CR_DEN            BIT(0)
> +#define DLYB_CR_SEN            BIT(1)
> +
> +#define DLYB_CFGR              0x4
> +#define DLYB_CFGR_SEL_MASK     GENMASK(3, 0)
> +#define DLYB_CFGR_UNIT_MASK    GENMASK(14, 8)
> +#define DLYB_CFGR_LNG_MASK     GENMASK(27, 16)
> +#define DLYB_CFGR_LNGF         BIT(31)
> +
> +#define DLYB_NB_DELAY          11
> +#define DLYB_CFGR_SEL_MAX      (DLYB_NB_DELAY + 1)
> +#define DLYB_CFGR_UNIT_MAX     127

[...]

> +static int sdmmc_dlyb_lng_tuning(struct mmci_host *host)
> +{
> +       struct sdmmc_dlyb *dlyb = host->variant_priv;
> +       u32 cfgr;
> +       int i, lng, ret;
> +
> +       for (i = 0; i <= DLYB_CFGR_UNIT_MAX; i++) {
> +               sdmmc_dlyb_set_cfgr(dlyb, i, DLYB_CFGR_SEL_MAX, true);
> +
> +               ret = readl_relaxed_poll_timeout(dlyb->base + DLYB_CFGR, cfgr,
> +                                                (cfgr & DLYB_CFGR_LNGF),
> +                                                1, 1000);

I suggest you introduce a define for this timeout, in the top of the file.

> +               if (ret) {
> +                       dev_warn(mmc_dev(host->mmc),
> +                                "delay line cfg timeout unit:%d cfgr:%d\n",
> +                                i, cfgr);
> +                       continue;
> +               }
> +
> +               lng = FIELD_GET(DLYB_CFGR_LNG_MASK, cfgr);
> +               if (lng < BIT(DLYB_NB_DELAY) && lng > 0)
> +                       break;
> +       }
> +
> +       if (i > DLYB_CFGR_UNIT_MAX)
> +               return -EINVAL;
> +
> +       dlyb->unit = i;
> +       dlyb->max = __fls(lng);
> +
> +       return 0;
> +}
> +
> +static int sdmmc_dlyb_phase_tuning(struct mmci_host *host, u32 opcode)
> +{
> +       struct sdmmc_dlyb *dlyb = host->variant_priv;
> +       int cur_len = 0, max_len = 0, end_of_len = 0;
> +       int phase;
> +
> +       for (phase = 0; phase <= dlyb->max; phase++) {
> +               sdmmc_dlyb_set_cfgr(dlyb, dlyb->unit, phase, false);
> +
> +               if (mmc_send_tuning(host->mmc, opcode, NULL)) {
> +                       cur_len = 0;
> +               } else {
> +                       cur_len++;
> +                       if (cur_len > max_len) {
> +                               max_len = cur_len;
> +                               end_of_len = phase;
> +                       }
> +               }
> +       }
> +
> +       if (!max_len) {
> +               dev_err(mmc_dev(host->mmc), "no tuning point found\n");
> +               return -EINVAL;
> +       }
> +
> +       phase = end_of_len - max_len / 2;
> +       sdmmc_dlyb_set_cfgr(dlyb, dlyb->unit, phase, false);
> +
> +       dev_dbg(mmc_dev(host->mmc), "unit:%d max_dly:%d phase:%d\n",
> +               dlyb->unit, dlyb->max, phase);
> +
> +       return 0;
> +}
> +
> +static int sdmmc_execute_tuning(struct mmc_host *mmc, u32 opcode)
> +{
> +       struct mmci_host *host = mmc_priv(mmc);
> +       struct sdmmc_dlyb *dlyb = host->variant_priv;
> +
> +       if (!dlyb || !dlyb->base)
> +               return -EINVAL;
> +
> +       if (sdmmc_dlyb_lng_tuning(host))
> +               return -EINVAL;
> +
> +       return sdmmc_dlyb_phase_tuning(host, opcode);

What happens to the tuning registers when the controller device
becomes runtime suspended? Would it possible that the values gets lost
and then they need to be restored in runtime resume?

> +}
> +
>  static struct mmci_host_ops sdmmc_variant_ops = {
>         .validate_data = sdmmc_idma_validate_data,
>         .prep_data = sdmmc_idma_prep_data,
> @@ -338,5 +469,21 @@ static struct mmci_host_ops sdmmc_variant_ops = {
>
>  void sdmmc_variant_init(struct mmci_host *host)
>  {
> +       struct device_node *np = host->mmc->parent->of_node;
> +       void __iomem *base_dlyb;
> +       struct sdmmc_dlyb *dlyb;
> +
>         host->ops = &sdmmc_variant_ops;
> +
> +       base_dlyb = devm_of_iomap(mmc_dev(host->mmc), np, 1, NULL);
> +       if (IS_ERR(base_dlyb))
> +               return;
> +
> +       dlyb = devm_kzalloc(mmc_dev(host->mmc), sizeof(*dlyb), GFP_KERNEL);
> +       if (!dlyb)
> +               return;
> +
> +       dlyb->base = base_dlyb;
> +       host->variant_priv = dlyb;
> +       host->mmc_ops->execute_tuning = sdmmc_execute_tuning;
>  }
> --
> 2.17.1
>

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
