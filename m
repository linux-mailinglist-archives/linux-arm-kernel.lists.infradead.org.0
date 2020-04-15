Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9771E1A9A4C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMXbLdCvvoGtvClKTVpuxPwLAqbkTvn1Kr7Rd35iZE4=; b=Isn2zjvKB6KR3e
	PPV4CJyBKTXMsCkH5dlGXHD2Fb3L+lAD7bhwF/DsUU2rwOmm+8mM000m8syG5FIDC3a+C3NrsCoTp
	59OfzxcQ3+SItytmTzhfUxwzubsZFMEvVhsCWER94hUataN0bu2jyXgngIF/nn/XzXx5cVI8Sfl7q
	QObD+TDgKPoXlFicb91oGp2sGU6kaFJeEzwk9H7BYUvs0U4z5XZsEFVPnnAKXuN8AdAiGc7Q7/KTt
	qKjtZGGD8QWw3vLv4N8mMHdfI/r1YZJrLpoZBq0QA2FJMVdU1fit7QGbCbfYWgHrkN0EvCyzyzFw/
	3TD+J/0brMkAJS04NMqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfC0-0002cD-Ls; Wed, 15 Apr 2020 10:22:52 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfBc-0002RZ-UK
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:22:30 +0000
Received: by mail-vs1-xe43.google.com with SMTP id w14so1871105vsf.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 03:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IjEZMO0SU7rIu8lnCDeDsF/aghcVDa3TqsVdoRMbMEE=;
 b=Iu2LC+jHJsIB6vZbtwVzRAfa2cQkr1qZliuN7B1CB4zXFPPDwe6389BCY8Ja757gO3
 l68GmGiTtRlb8f1fUF/0mYUsfNC1wROzXtlhIE3iEmwRmL0jBFp8J4bNS+zxPSUYohuz
 lXkqsxV8CkLEQz+xoxviB6mgVEfI18CHQU9lmMMsdREkwKEtAPXbyjM5kJx4z3PY3dqU
 uAox33zcxIKYCiGaz1oEWbtCgkqdOZZceB95RMK9yeOt+gALZbuEBiia1kHhoakqY8XH
 yBrpyq6EsWsJJj7OpZKpPXLdM1O21iP8I1e+MJ+Gs6m7p3KZW9LvguEUwaJNh/m454c8
 qclA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IjEZMO0SU7rIu8lnCDeDsF/aghcVDa3TqsVdoRMbMEE=;
 b=rGWKgXp3hhRelDO0HfpXHolRzwVX5vTvyl7IswUqfsR9OR4gq1A1Mh3CwyGLscTddN
 2Y7ngz+KeEYpCn0mf+2NWA6K1KrV5aEHJwR951Xmb1kfxtmvY+sqS6vlduISyeefz0oP
 kXBH9DHM5iVe8eNS+D7KPLwsNrr2Uukd2/8kccnZ6JPeZbVfWYqQ2p1RN0FvUGb2RxkQ
 dzDAkg852MqU6MoyZaW/hrs65YUGNO0FddA8XMCEvrN0MVq/CofgvhydVGn9sScarrvH
 6kniMZkq0KKT5bvnkXLW8RaRbDf/3lClQGYxgeRm6MVoi2HwTGnRcTZJu2sv1OYVHnqM
 723A==
X-Gm-Message-State: AGi0PuY/0Mr8Q50E9kOWdiap7cA3PSNey+XRgrsOrfD7IoQDfObNSUjf
 GpKCgW/r78kCPw5sGAh+/d7kx6I3ni3RwTpSGhNexQ==
X-Google-Smtp-Source: APiQypILzw+Mgfa0IPeRWLq+ed7OhGK1AmhdY/ISSlbVg17eVUjcHARL3Ijh9uyzWw4vScHNgOR0sy1q0m+qUlp2P5Y=
X-Received: by 2002:a67:11c4:: with SMTP id 187mr3793955vsr.34.1586946147163; 
 Wed, 15 Apr 2020 03:22:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200408072105.422-1-yamada.masahiro@socionext.com>
 <20200408072105.422-2-yamada.masahiro@socionext.com>
 <3cc8c9b8-b957-2fef-d6da-47980d1926aa@intel.com>
In-Reply-To: <3cc8c9b8-b957-2fef-d6da-47980d1926aa@intel.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 15 Apr 2020 12:21:51 +0200
Message-ID: <CAPDyKFrAWWm=2zG2iBydEjqqWKPYWcwjPP7jOJ=_y_OdFrGocA@mail.gmail.com>
Subject: Re: [PATCH 2/2] mmc: sdhci: use FIELD_GET/PREP for capabilities bit
 masks
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_032228_995831_36EB93B2 
X-CRM114-Status: GOOD (  23.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Shawn Guo <shawnguo@kernel.org>, masahiroy@kernel.org,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 at 11:35, Adrian Hunter <adrian.hunter@intel.com> wrote:
>
> On 8/04/20 10:21 am, Masahiro Yamada wrote:
> > Use FIELD_GET and FIELD_PREP to get access to the register fields.
> > Delete the shift macros. I used GENMASK() for touched macros.
>
> That has the side-effect of changing the constants to 64-bit on 64-bit
> platforms, which needs to be mentioned in the commit message.
>
> >
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
>
> Apart from above:
>
> Acked-by: Adrian Hunter <adrian.hunter@intel.com>

Applied for next, by amending the changelog according to the
suggestion by Adrian.

Kind regards
Uffe


>
> > ---
> >
> >  drivers/mmc/host/sdhci-esdhc-imx.c |  4 +++-
> >  drivers/mmc/host/sdhci-of-at91.c   |  5 +++--
> >  drivers/mmc/host/sdhci-pci-core.c  |  8 ++------
> >  drivers/mmc/host/sdhci.c           | 19 +++++++------------
> >  drivers/mmc/host/sdhci.h           | 17 ++++++-----------
> >  5 files changed, 21 insertions(+), 32 deletions(-)
> >
> > diff --git a/drivers/mmc/host/sdhci-esdhc-imx.c b/drivers/mmc/host/sdhci-esdhc-imx.c
> > index 5ec8e4bf1ac7..38cd83118082 100644
> > --- a/drivers/mmc/host/sdhci-esdhc-imx.c
> > +++ b/drivers/mmc/host/sdhci-esdhc-imx.c
> > @@ -8,6 +8,7 @@
> >   *   Author: Wolfram Sang <kernel@pengutronix.de>
> >   */
> >
> > +#include <linux/bitfield.h>
> >  #include <linux/io.h>
> >  #include <linux/iopoll.h>
> >  #include <linux/delay.h>
> > @@ -399,7 +400,8 @@ static u32 esdhc_readl_le(struct sdhci_host *host, int reg)
> >                               val = SDHCI_SUPPORT_DDR50 | SDHCI_SUPPORT_SDR104
> >                                       | SDHCI_SUPPORT_SDR50
> >                                       | SDHCI_USE_SDR50_TUNING
> > -                                     | (SDHCI_TUNING_MODE_3 << SDHCI_RETUNING_MODE_SHIFT);
> > +                                     | FIELD_PREP(SDHCI_RETUNING_MODE_MASK,
> > +                                                  SDHCI_TUNING_MODE_3);
> >
> >                       if (imx_data->socdata->flags & ESDHC_FLAG_HS400)
> >                               val |= SDHCI_SUPPORT_HS400;
> > diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
> > index c79bff5e2280..25f4e0f4f53b 100644
> > --- a/drivers/mmc/host/sdhci-of-at91.c
> > +++ b/drivers/mmc/host/sdhci-of-at91.c
> > @@ -6,6 +6,7 @@
> >   *            2015 Ludovic Desroches <ludovic.desroches@atmel.com>
> >   */
> >
> > +#include <linux/bitfield.h>
> >  #include <linux/clk.h>
> >  #include <linux/delay.h>
> >  #include <linux/err.h>
> > @@ -179,9 +180,9 @@ static int sdhci_at91_set_clks_presets(struct device *dev)
> >       clk_mul = gck_rate / clk_base_rate - 1;
> >
> >       caps0 &= ~SDHCI_CLOCK_V3_BASE_MASK;
> > -     caps0 |= (clk_base << SDHCI_CLOCK_BASE_SHIFT) & SDHCI_CLOCK_V3_BASE_MASK;
> > +     caps0 |= FIELD_PREP(SDHCI_CLOCK_V3_BASE_MASK, clk_base);
> >       caps1 &= ~SDHCI_CLOCK_MUL_MASK;
> > -     caps1 |= (clk_mul << SDHCI_CLOCK_MUL_SHIFT) & SDHCI_CLOCK_MUL_MASK;
> > +     caps1 |= FIELD_PREP(SDHCI_CLOCK_MUL_MASK, clk_mul);
> >       /* Set capabilities in r/w mode. */
> >       writel(SDMMC_CACR_KEY | SDMMC_CACR_CAPWREN, host->ioaddr + SDMMC_CACR);
> >       writel(caps0, host->ioaddr + SDHCI_CAPABILITIES);
> > diff --git a/drivers/mmc/host/sdhci-pci-core.c b/drivers/mmc/host/sdhci-pci-core.c
> > index 525de2454a4d..a98c9476bfc8 100644
> > --- a/drivers/mmc/host/sdhci-pci-core.c
> > +++ b/drivers/mmc/host/sdhci-pci-core.c
> > @@ -249,12 +249,8 @@ static int ricoh_probe(struct sdhci_pci_chip *chip)
> >  static int ricoh_mmc_probe_slot(struct sdhci_pci_slot *slot)
> >  {
> >       slot->host->caps =
> > -             ((0x21 << SDHCI_TIMEOUT_CLK_SHIFT)
> > -                     & SDHCI_TIMEOUT_CLK_MASK) |
> > -
> > -             ((0x21 << SDHCI_CLOCK_BASE_SHIFT)
> > -                     & SDHCI_CLOCK_BASE_MASK) |
> > -
> > +             FIELD_PREP(SDHCI_TIMEOUT_CLK_MASK, 0x21) |
> > +             FIELD_PREP(SDHCI_CLOCK_BASE_MASK, 0x21) |
> >               SDHCI_TIMEOUT_CLK_UNIT |
> >               SDHCI_CAN_VDD_330 |
> >               SDHCI_CAN_DO_HISPD |
> > diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
> > index 3f716466fcfd..344a7e0e33fe 100644
> > --- a/drivers/mmc/host/sdhci.c
> > +++ b/drivers/mmc/host/sdhci.c
> > @@ -4117,11 +4117,9 @@ int sdhci_setup_host(struct sdhci_host *host)
> >       }
> >
> >       if (host->version >= SDHCI_SPEC_300)
> > -             host->max_clk = (host->caps & SDHCI_CLOCK_V3_BASE_MASK)
> > -                     >> SDHCI_CLOCK_BASE_SHIFT;
> > +             host->max_clk = FIELD_GET(SDHCI_CLOCK_V3_BASE_MASK, host->caps);
> >       else
> > -             host->max_clk = (host->caps & SDHCI_CLOCK_BASE_MASK)
> > -                     >> SDHCI_CLOCK_BASE_SHIFT;
> > +             host->max_clk = FIELD_GET(SDHCI_CLOCK_BASE_MASK, host->caps);
> >
> >       host->max_clk *= 1000000;
> >       if (host->max_clk == 0 || host->quirks &
> > @@ -4139,8 +4137,7 @@ int sdhci_setup_host(struct sdhci_host *host)
> >        * In case of Host Controller v3.00, find out whether clock
> >        * multiplier is supported.
> >        */
> > -     host->clk_mul = (host->caps1 & SDHCI_CLOCK_MUL_MASK) >>
> > -                     SDHCI_CLOCK_MUL_SHIFT;
> > +     host->clk_mul = FIELD_GET(SDHCI_CLOCK_MUL_MASK, host->caps1);
> >
> >       /*
> >        * In case the value in Clock Multiplier is 0, then programmable
> > @@ -4173,8 +4170,7 @@ int sdhci_setup_host(struct sdhci_host *host)
> >               mmc->f_max = max_clk;
> >
> >       if (!(host->quirks & SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK)) {
> > -             host->timeout_clk = (host->caps & SDHCI_TIMEOUT_CLK_MASK) >>
> > -                                     SDHCI_TIMEOUT_CLK_SHIFT;
> > +             host->timeout_clk = FIELD_GET(SDHCI_TIMEOUT_CLK_MASK, host->caps);
> >
> >               if (host->caps & SDHCI_TIMEOUT_CLK_UNIT)
> >                       host->timeout_clk *= 1000;
> > @@ -4326,8 +4322,8 @@ int sdhci_setup_host(struct sdhci_host *host)
> >               mmc->caps |= MMC_CAP_DRIVER_TYPE_D;
> >
> >       /* Initial value for re-tuning timer count */
> > -     host->tuning_count = (host->caps1 & SDHCI_RETUNING_TIMER_COUNT_MASK) >>
> > -                          SDHCI_RETUNING_TIMER_COUNT_SHIFT;
> > +     host->tuning_count = FIELD_GET(SDHCI_RETUNING_TIMER_COUNT_MASK,
> > +                                    host->caps1);
> >
> >       /*
> >        * In case Re-tuning Timer is not disabled, the actual value of
> > @@ -4337,8 +4333,7 @@ int sdhci_setup_host(struct sdhci_host *host)
> >               host->tuning_count = 1 << (host->tuning_count - 1);
> >
> >       /* Re-tuning mode supported by the Host Controller */
> > -     host->tuning_mode = (host->caps1 & SDHCI_RETUNING_MODE_MASK) >>
> > -                          SDHCI_RETUNING_MODE_SHIFT;
> > +     host->tuning_mode = FIELD_GET(SDHCI_RETUNING_MODE_MASK, host->caps1);
> >
> >       ocr_avail = 0;
> >
> > diff --git a/drivers/mmc/host/sdhci.h b/drivers/mmc/host/sdhci.h
> > index b786b68e0302..d7f1441b0fc3 100644
> > --- a/drivers/mmc/host/sdhci.h
> > +++ b/drivers/mmc/host/sdhci.h
> > @@ -200,12 +200,10 @@
> >  #define  SDHCI_CTRL_PRESET_VAL_ENABLE        0x8000
> >
> >  #define SDHCI_CAPABILITIES   0x40
> > -#define  SDHCI_TIMEOUT_CLK_MASK      0x0000003F
> > -#define  SDHCI_TIMEOUT_CLK_SHIFT 0
> > +#define  SDHCI_TIMEOUT_CLK_MASK              GENMASK(5, 0)
> >  #define  SDHCI_TIMEOUT_CLK_UNIT      0x00000080
> > -#define  SDHCI_CLOCK_BASE_MASK       0x00003F00
> > -#define  SDHCI_CLOCK_V3_BASE_MASK    0x0000FF00
> > -#define  SDHCI_CLOCK_BASE_SHIFT      8
> > +#define  SDHCI_CLOCK_BASE_MASK               GENMASK(13, 8)
> > +#define  SDHCI_CLOCK_V3_BASE_MASK    GENMASK(15, 8)
> >  #define  SDHCI_MAX_BLOCK_MASK        0x00030000
> >  #define  SDHCI_MAX_BLOCK_SHIFT  16
> >  #define  SDHCI_CAN_DO_8BIT   0x00040000
> > @@ -227,13 +225,10 @@
> >  #define  SDHCI_DRIVER_TYPE_A 0x00000010
> >  #define  SDHCI_DRIVER_TYPE_C 0x00000020
> >  #define  SDHCI_DRIVER_TYPE_D 0x00000040
> > -#define  SDHCI_RETUNING_TIMER_COUNT_MASK     0x00000F00
> > -#define  SDHCI_RETUNING_TIMER_COUNT_SHIFT    8
> > +#define  SDHCI_RETUNING_TIMER_COUNT_MASK     GENMASK(11, 8)
> >  #define  SDHCI_USE_SDR50_TUNING                      0x00002000
> > -#define  SDHCI_RETUNING_MODE_MASK            0x0000C000
> > -#define  SDHCI_RETUNING_MODE_SHIFT           14
> > -#define  SDHCI_CLOCK_MUL_MASK        0x00FF0000
> > -#define  SDHCI_CLOCK_MUL_SHIFT       16
> > +#define  SDHCI_RETUNING_MODE_MASK            GENMASK(15, 14)
> > +#define  SDHCI_CLOCK_MUL_MASK                        GENMASK(23, 16)
> >  #define  SDHCI_CAN_DO_ADMA3  0x08000000
> >  #define  SDHCI_SUPPORT_HS400 0x80000000 /* Non-standard */
> >
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
