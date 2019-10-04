Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F32DCB508
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 09:32:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGdVylZw6vvblVK9fHhcUVcsJmLll0yuIXWmCYDK480=; b=ajN2hGaLIR3x1G
	ABVq4znZgQmnIQiAfDEJGJYOjZPX9NOLcteHcEpLNUndZRhFGYrcBqtaJ+bm1oEErASZJ3tsGnI1C
	UT2QOQ6Q2Pwdz4S2LCDuqNxgOa4Z1iWi/0fHq2HtEk/EQoJqaBEy3pTz0DAf4tuXq28qeTtGeqGBE
	UOFB6KWKE+QZYhPED1LvEgz2ITGJbJ0PYombrbZtEVmm3SRopaYcVKb3YKih225tPsl/aV4s2zo8u
	9H0jXsF6ISL9G2ECUZ1pjmZOrYqRQKo6s8YncrD0OipYWFqwq1AQmH7HVEJcb0QBb0JpAz2dFrUf9
	t3bu0K6Ej151dVGqT2Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGI4R-0004Rf-E2; Fri, 04 Oct 2019 07:32:11 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGI4K-0004Qk-2K
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 07:32:05 +0000
Received: by mail-vk1-xa41.google.com with SMTP id d66so1257095vka.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 00:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mVytQ6A3tTisR1ULpXMOIRybJEGZDUtvdOmD9DnopCg=;
 b=C8JB+TC+kB4mKkTJPAwV30/g8qH+Q2Rbi7ZXggpkXCzqx+82UlZAzrmwcEAQBxCqMu
 Mc2fnKRbSyCJuaW+0cBE8xuwD0J9lZiieiEyNJGUuzoYhCOsunr3pDP7hJ4C+ObJnlAf
 BDpWgUAKkIM0ac6msYQp3b8xxdmu+s+M9kOg4T49xW0XlPUh5vYlZzYV2iTGn5ulA5yX
 zYmGTBBxBwHX3DxZN9CckiDh06FMUDkgovwbcd7PME3A0c1vINmrykqLG7lHX0S1SwmH
 k2m4DIKRTdDOIpm9igT+MD1Gf9XL1WrCXfdP6aAQauKEmrMMV8ErCJh7P+mPLtZQpL5e
 vKOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mVytQ6A3tTisR1ULpXMOIRybJEGZDUtvdOmD9DnopCg=;
 b=EsGJREsBYc8zcuDGlNSUXhw/7N+oFiuWj/8QfaC1SByfRBiyhIxf4Mz4IGx7fIwmiH
 745LQIgtBR/aNhs+AItTwAD6DsamvPdstvz4F8zDVIyu3dbli3UK1H5RjwjoM/WPMxwH
 10wIn4eXcHY89AU2Ud73C3ndGy3pPKE83O9YTjt+dkHMePVwjlsESElHT6l1muLJ6aDK
 X9VKI4C3q/MiU+LyWJctqm8amwlxgRchlvW9sBXA8215Twj2N1PhZoPXKRw2QY+eCWvx
 ZQU4+atzLKL8R936Fc1xDGctMC6JasTBOn8vw3A8SCvnrecGt5M/i3gYKsiIfBreAhra
 px5w==
X-Gm-Message-State: APjAAAXbGwkRZRx2WAqu1ydTXZC+fwIuFDun6R29mY271LEf3ddGt2a0
 rxpeTOs/PeZgoJGhhGqRR75Gu8sdFa/8ZaBL8HX/+8bzEKA=
X-Google-Smtp-Source: APXvYqyNhph+V8Gq7CcOU6+NtJDoMHEN6TfbQMSX+TjO85GhZ3NmPooNVwlZTydlQBkeiafQprpWuruMc0iiqhtlh1g=
X-Received: by 2002:ac5:c3c3:: with SMTP id t3mr7144964vkk.59.1570174322012;
 Fri, 04 Oct 2019 00:32:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190905122112.29672-1-ludovic.Barre@st.com>
 <20190905122112.29672-4-ludovic.Barre@st.com>
In-Reply-To: <20190905122112.29672-4-ludovic.Barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 4 Oct 2019 09:31:25 +0200
Message-ID: <CAPDyKFqbEzYpNty8u_QuSDfLgPoiTMZS2Bx4GbzfX-Y9TqXJTg@mail.gmail.com>
Subject: Re: [PATCH V6 3/3] mmc: mmci: sdmmc: add busy_complete callback
To: Ludovic Barre <ludovic.Barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_003204_140909_3AD1B58C 
X-CRM114-Status: GOOD (  26.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, 5 Sep 2019 at 14:22, Ludovic Barre <ludovic.Barre@st.com> wrote:
>
> From: Ludovic Barre <ludovic.barre@st.com>
>
> This patch adds a specific busy_complete callback for sdmmc variant.
>
> sdmmc has 2 status flags:
> -busyd0: This is a hardware status flag (inverted value of d0 line).
> it does not generate an interrupt.
> -busyd0end: This indicates only end of busy following a CMD response.
> On busy to Not busy changes, an interrupt is generated (if unmask)
> and BUSYD0END status flag is set. Status flag is cleared by writing
> corresponding interrupt clear bit in MMCICLEAR.
>
> The legacy busy completion monitors step by step the busy progression
> start/in-progress/end. On sdmmc variant, the monitoring of busy steps
> is difficult and not adapted (the software can miss a step and locks
> the monitoring), the sdmmc has just need to wait the busyd0end bit
> without monitoring all the changes.

To me it's a bit of the opposite as you describe it above. The legacy
variants suffers from a somewhat broken HW that generates also a
"busystart" IRQ. For the stm32_sdmmc variant, it's more clean/correct
as only a busyend IRQ is raised.

Maybe you can rephrase the above a bit to make that more clear somehow.

>
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> ---
>  drivers/mmc/host/mmci.c             |  3 +++
>  drivers/mmc/host/mmci.h             |  1 +
>  drivers/mmc/host/mmci_stm32_sdmmc.c | 38 +++++++++++++++++++++++++++++
>  3 files changed, 42 insertions(+)
>
> diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
> index e20164f4354d..a666d826dbbd 100644
> --- a/drivers/mmc/host/mmci.c
> +++ b/drivers/mmc/host/mmci.c
> @@ -260,6 +260,9 @@ static struct variant_data variant_stm32_sdmmc = {
>         .datalength_bits        = 25,
>         .datactrl_blocksz       = 14,
>         .stm32_idmabsize_mask   = GENMASK(12, 5),
> +       .busy_timeout           = true,
> +       .busy_detect_flag       = MCI_STM32_BUSYD0,
> +       .busy_detect_mask       = MCI_STM32_BUSYD0ENDMASK,
>         .init                   = sdmmc_variant_init,
>  };
>
> diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
> index 733f9a035b06..841c5281beb5 100644
> --- a/drivers/mmc/host/mmci.h
> +++ b/drivers/mmc/host/mmci.h
> @@ -164,6 +164,7 @@
>  #define MCI_ST_CARDBUSY                (1 << 24)
>  /* Extended status bits for the STM32 variants */
>  #define MCI_STM32_BUSYD0       BIT(20)
> +#define MCI_STM32_BUSYD0END    BIT(21)
>
>  #define MMCICLEAR              0x038
>  #define MCI_CMDCRCFAILCLR      (1 << 0)
> diff --git a/drivers/mmc/host/mmci_stm32_sdmmc.c b/drivers/mmc/host/mmci_stm32_sdmmc.c
> index 8e83ae6920ae..bb5499cc9e81 100644
> --- a/drivers/mmc/host/mmci_stm32_sdmmc.c
> +++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
> @@ -282,6 +282,43 @@ static u32 sdmmc_get_dctrl_cfg(struct mmci_host *host)
>         return datactrl;
>  }
>
> +bool sdmmc_busy_complete(struct mmci_host *host, u32 status, u32 err_msk)
> +{
> +       void __iomem *base = host->base;
> +       u32 busy_d0, busy_d0end, mask;
> +
> +       mask = readl_relaxed(base + MMCIMASK0);
> +       busy_d0end = readl_relaxed(base + MMCISTATUS) & MCI_STM32_BUSYD0END;
> +       busy_d0 = readl_relaxed(base + MMCISTATUS) & MCI_STM32_BUSYD0;

I have found some potential optimizations, but I leave it to you to
decide what to do with my comments.

*) You could avoid to read registers upfront, if that be skipped
because of checking a known error condition. For example:
"if (!host->busy_status && !(status & err_msk))" - would tell if it's
even worth considering to unmask the busyend IRQ.

**) Reading MMCISTATUS twice in row seems a bit silly, why not read it
once and store its value in a local variable that you operate upon
instead.

> +
> +       /* complete if there is an error or busy_d0end */
> +       if ((status & err_msk) || busy_d0end)
> +               goto complete;

From here, you may end up writing to MMCIMASK0 and MMCICLEAR, even if
you didn't unmask the busyend IRQ in first place.

> +
> +       /*
> +        * On response the busy signaling is reflected in the BUSYD0 flag.
> +        * if busy_d0 is in-progress we must activate busyd0end interrupt
> +        * to wait this completion. Else this request has no busy step.
> +        */
> +       if (busy_d0) {
> +               if (!host->busy_status) {
> +                       writel_relaxed(mask | host->variant->busy_detect_mask,
> +                                      base + MMCIMASK0);
> +                       host->busy_status = status &
> +                               (MCI_CMDSENT | MCI_CMDRESPEND);
> +               }
> +               return false;
> +       }
> +
> +complete:
> +       writel_relaxed(mask & ~host->variant->busy_detect_mask,
> +                      base + MMCIMASK0);
> +       writel_relaxed(host->variant->busy_detect_mask, base + MMCICLEAR);
> +       host->busy_status = 0;
> +
> +       return true;
> +}
> +
>  static struct mmci_host_ops sdmmc_variant_ops = {
>         .validate_data = sdmmc_idma_validate_data,
>         .prep_data = sdmmc_idma_prep_data,
> @@ -292,6 +329,7 @@ static struct mmci_host_ops sdmmc_variant_ops = {
>         .dma_finalize = sdmmc_idma_finalize,
>         .set_clkreg = mmci_sdmmc_set_clkreg,
>         .set_pwrreg = mmci_sdmmc_set_pwrreg,
> +       .busy_complete = sdmmc_busy_complete,
>  };
>
>  void sdmmc_variant_init(struct mmci_host *host)
> --
> 2.17.1
>

Other than the comments above, which are plain suggestions for
optimizations, the code looks correct to me!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
