Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8141485CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 14:17:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nc21270A2iYTNqIYehuQB39MDGDdPEyIawOSFnoRrek=; b=OZCOAJPUZFwdA/
	ProzoXyx9BVEMw6vUDgl3byqGgv5m22LfW8jbzbhL8Esrcv07dXwVC3KqEkzKSz/b6fuZ6FOi7tnw
	jx4Sguae4ZglmhS+fuyMq3MCeB0LOebTMDb/At69UvsDv4Ze8HAf/daO5x7cM1B8AWYt9pqT6RnCn
	gIoqog5QPlPzzY2L/KzxJOhc4tm8A2ppvxcRJF+z0AvMb9JO23sWKeRDer8iXUox8u6oe7tYHwlnW
	1/CUSp4cwfBl7Qn3JBggbZN9Jq0HZAqhxled4/GP5JL4QRc/HGV9nmAaOTrcuYR7BnlwfiQ9p0UbV
	wup3t4+8r7k3JGbN0cmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuypx-0001KK-2V; Fri, 24 Jan 2020 13:17:25 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuypj-0001Ji-3t
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 13:17:12 +0000
Received: by mail-vs1-xe42.google.com with SMTP id g23so1159396vsr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 05:17:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CY7ltUl+oKffieFB5UMThEtSPwanbFsXqyW/QH4Ukh0=;
 b=e9RWc7TAC74AHptTQcr8hXxfjxpt3Z0iET5zEidjYPqHYng8MtDugSWQvHKeBShScB
 l6F6DVcE6itNBO5dTXEyCYIfAVhN1GUphQxrbM+HQQ1AZM9Ux6fIPYPoEm8cno+PCdHM
 ywFYIdhzHaHkJb1RvQ21xmiMRinXHLswPI1c5LPyYNEEeq9qdLhEjGE2VnozomaoTw4w
 /N+NeLRtuOvmaAAWa2oqq5efgDFjwsh7yeAgIFg3BF/bfUF9AkwLqx1s/b9ao84vQphT
 H3SzbTiol/MbELYfxNcjJx5ZBft9+XrklMQ07BCznmvRb2ufC1wZSC8dY9hurMidqeZ+
 p6Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CY7ltUl+oKffieFB5UMThEtSPwanbFsXqyW/QH4Ukh0=;
 b=r3AZNW6RvaN2X88sOZvlIJPJlLAx5NyxrN4MncVSsxgWNDZjojAhMughntmuFnEU02
 UxTJuhu8O6LZ3A8WrZi6/O3JKgRZlHii1xChAKB7Jscla67Ue+d6us3/2pKVYFrYR3j2
 JkyhGpgNvBrbE29GUPrh/pupFIAqh3WS4hPSKbdh3qk3uOjNU5BQX1dflPhEy85g7obc
 MELWW6A03utD0mk9jdUpIUSX0d4/7l2wI1jiWkbD+bXs8hr2iKbpJbcZqe1r7IdRhNAq
 rnCQal0brE4waDM+t57EmT74SNNvNp3BIvDICanUY2aSKLNNgb42zDu+K+Fcx2HGZqcW
 weSQ==
X-Gm-Message-State: APjAAAVGrROiJKd/BKTZKbA5m6fmE8sHzEdvsbbl1DqHTRZMZDJCQswF
 mFP54CzQ8ETqf/n+LAyLRevxmQgnkTweTQKy+3JQgQ==
X-Google-Smtp-Source: APXvYqxuazxpyOLmT7wp2Bb5Qs3z0UkG3lAUPzIzMHC3yzutOc4zmH0KV20Nsdhmyiq1SYfbmAs1J3r1bPtSYgQDFEE=
X-Received: by 2002:a67:314e:: with SMTP id x75mr1897330vsx.35.1579871830131; 
 Fri, 24 Jan 2020 05:17:10 -0800 (PST)
MIME-Version: 1.0
References: <20200110134823.14882-1-ludovic.barre@st.com>
 <20200110134823.14882-9-ludovic.barre@st.com>
In-Reply-To: <20200110134823.14882-9-ludovic.barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 24 Jan 2020 14:16:34 +0100
Message-ID: <CAPDyKFp1Qsb3yCoTJevHF+SEt5thVVriLfL-4UZSYsNTc0rdMQ@mail.gmail.com>
Subject: Re: [PATCH 8/9] mmc: mmci: sdmmc: add voltage switch functions
To: Ludovic Barre <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_051711_193834_FF414463 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
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
> To prepare the voltage switch procedure, the VSWITCHEN bit must be
> set before sending the cmd11.
> To confirm completion of voltage switch, the VSWEND flag must be
> checked.
>
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> ---
>  drivers/mmc/host/mmci.h             |  4 +++
>  drivers/mmc/host/mmci_stm32_sdmmc.c | 40 ++++++++++++++++++++++++++++-
>  2 files changed, 43 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
> index c04a144259a2..3634f98ad2d8 100644
> --- a/drivers/mmc/host/mmci.h
> +++ b/drivers/mmc/host/mmci.h
> @@ -165,6 +165,7 @@
>  /* Extended status bits for the STM32 variants */
>  #define MCI_STM32_BUSYD0       BIT(20)
>  #define MCI_STM32_BUSYD0END    BIT(21)
> +#define MCI_STM32_VSWEND       BIT(25)
>
>  #define MMCICLEAR              0x038
>  #define MCI_CMDCRCFAILCLR      (1 << 0)
> @@ -182,6 +183,9 @@
>  #define MCI_ST_SDIOITC         (1 << 22)
>  #define MCI_ST_CEATAENDC       (1 << 23)
>  #define MCI_ST_BUSYENDC                (1 << 24)
> +/* Extended clear bits for the STM32 variants */
> +#define MCI_STM32_VSWENDC      BIT(25)
> +#define MCI_STM32_CKSTOPC      BIT(26)
>
>  #define MMCIMASK0              0x03c
>  #define MCI_CMDCRCFAILMASK     (1 << 0)
> diff --git a/drivers/mmc/host/mmci_stm32_sdmmc.c b/drivers/mmc/host/mmci_stm32_sdmmc.c
> index 10059fa19f4a..9f43cf947c5f 100644
> --- a/drivers/mmc/host/mmci_stm32_sdmmc.c
> +++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
> @@ -263,7 +263,9 @@ static void mmci_sdmmc_set_pwrreg(struct mmci_host *host, unsigned int pwr)
>         struct mmc_ios ios = host->mmc->ios;
>         struct sdmmc_dlyb *dlyb = host->variant_priv;
>
> -       pwr = host->pwr_reg_add;
> +       /* adds OF options and preserves voltage switch bits */
> +       pwr = host->pwr_reg_add |
> +               (host->pwr_reg & (MCI_STM32_VSWITCHEN | MCI_STM32_VSWITCH));
>
>         sdmmc_dlyb_input_ck(dlyb);
>
> @@ -454,6 +456,40 @@ static int sdmmc_execute_tuning(struct mmc_host *mmc, u32 opcode)
>         return sdmmc_dlyb_phase_tuning(host, opcode);
>  }
>
> +static void sdmmc_prep_vswitch(struct mmci_host *host)
> +{
> +       /* clear the voltage switch completion flag */
> +       writel_relaxed(MCI_STM32_VSWENDC, host->base + MMCICLEAR);
> +       /* enable Voltage switch procedure */
> +       mmci_write_pwrreg(host, host->pwr_reg | MCI_STM32_VSWITCHEN);
> +}
> +
> +static int sdmmc_vswitch(struct mmci_host *host, struct mmc_ios *ios)
> +{
> +       unsigned long flags;
> +       u32 status;
> +       int ret = 0;
> +
> +       if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_180) {
> +               spin_lock_irqsave(&host->lock, flags);
> +               mmci_write_pwrreg(host, host->pwr_reg | MCI_STM32_VSWITCH);
> +               spin_unlock_irqrestore(&host->lock, flags);
> +
> +               /* wait voltage switch completion while 10ms */
> +               ret = readl_relaxed_poll_timeout(host->base + MMCISTATUS,
> +                                                status,
> +                                                (status & MCI_STM32_VSWEND),
> +                                                10, 10000);
> +
> +               writel_relaxed(MCI_STM32_VSWENDC | MCI_STM32_CKSTOPC,
> +                              host->base + MMCICLEAR);
> +               mmci_write_pwrreg(host, host->pwr_reg &
> +                                 ~(MCI_STM32_VSWITCHEN | MCI_STM32_VSWITCH));
> +       }

Don't you need to manage things when resetting to
MMC_SIGNAL_VOLTAGE_330, which for example happens during a card
removal or at system suspend/resume?

> +
> +       return ret;
> +}
> +
>  static struct mmci_host_ops sdmmc_variant_ops = {
>         .validate_data = sdmmc_idma_validate_data,
>         .prep_data = sdmmc_idma_prep_data,
> @@ -465,6 +501,8 @@ static struct mmci_host_ops sdmmc_variant_ops = {
>         .set_clkreg = mmci_sdmmc_set_clkreg,
>         .set_pwrreg = mmci_sdmmc_set_pwrreg,
>         .busy_complete = sdmmc_busy_complete,
> +       .prep_volt_switch = sdmmc_prep_vswitch,
> +       .volt_switch = sdmmc_vswitch,
>  };
>
>  void sdmmc_variant_init(struct mmci_host *host)
> --
> 2.17.1
>

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
