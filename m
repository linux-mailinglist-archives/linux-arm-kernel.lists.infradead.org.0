Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0EBCB45D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 08:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdR1TT2cNvlT/A4rb6wN0FLcn1oip//bUgUFdD9XMxU=; b=GmYQTPSZ240H+b
	hiWDF09aFThPuH7TQMHKecwOAU0IMDfGvjWHF4KARUxNy2zx5PnQwUnMZjJP68ndB8Xukl8mqOM82
	iUYhW747uuBy4UgLcFfnYjRuU3hlfbGYAKFmMFiR8uajr/8Y2GhcuKrbxDDcfVTZNQSoVhNM3lwcy
	xEvxm0izHEabzIIemqFLEem3G8DwFSbUOEssUfugPm7jYrrxQfLLkE2M9wEF6olVYPAmfOX/f4e9R
	ZHG5WEeSAKOu/5AvCGCjH0WIrou7JSKhJ4wvOVrIfN6oI2slQj0Lk1JkULajiz6c3tsYvFqzy7PkA
	T236/gak2OASAbGnCHNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGGqP-00029t-E7; Fri, 04 Oct 2019 06:13:37 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGGqI-00028q-2S
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 06:13:31 +0000
Received: by mail-vs1-xe41.google.com with SMTP id z14so3359948vsz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 23:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PlYxemLyGEw2z7tzBw1cpulBtK9wmECqFWdHMP2WOUo=;
 b=jpFnppB/F4Z075p99ZTBhY5zAVoG46Q7/SnMiOdezjKLrflNe6s8JRs6xRJvgERdrw
 aEPfEcfKl4SQwW7u6Sd4l/dI06qV4pDy0Eex8B0tXg5Wj+vZZRMG5TSX2TPXodlbxwvg
 FHYKaA+FLGIT3mYgPi8RK+U5O4Nfh0stmkbM2GE2BBYqkwNEtdbFy6JziNs14DBCeO+O
 CNaIPw72WB8BNEp/Ri6OcQxZ2zqEQv8r9mTDJXvg7wDrFOkY9JPrCe0AekBpyIOiap3+
 NZM03X0fyhLA3OrMANTCBZWOxOgEOadAl9Yy0ffZ+rThltRJtUIisJpKxoreADXRfq18
 qffQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PlYxemLyGEw2z7tzBw1cpulBtK9wmECqFWdHMP2WOUo=;
 b=qqdBWy0huUaooYUwdu+V0HMtCcHGqzsjyNiWQDpOysOOK4jQ+CACp8Xe7LV0M/6KUS
 6pZvMQFHIV1fp/xZKMYqi1A8MnQhudyFmvMJw5QfzZ9jEX8Kh01IlbplHLAtRZN9UPMA
 9QXoGLZQ8i3pxGuLSLtWFitl3djeSAR/DhA0QvtyuY8Rhxfxjltm+T2JNfQDQebhxbhD
 KEhklPy1Yuj0Bkd92IOJFLbwDAB/NcmzCTaY6sPRcTJYOfZtrT2QBM74jIZorwGiHegq
 anTUyVEpM87Fq69zJbzRV43OJ0ALnbYfJdLOIGXIPqKhFsX3nP0gzuJDavkbf3zFbbTR
 KV5g==
X-Gm-Message-State: APjAAAXC0VXBH+J52aG28AGCn1IJRSj2H4FULJ3g/6hogXehFMJLCfQZ
 JvhvCmSSm/5jfpEsB95GeTY/KQdEDw0IARzUpmICmg==
X-Google-Smtp-Source: APXvYqwe4FiRLNALsADBsQ1M2wb6h4k6tCXwHwPsKcPofn8xLo+JhI+CH7xO3En2d3+P52nm5VQNA4f1xN+2Jgppu2Q=
X-Received: by 2002:a67:e414:: with SMTP id d20mr7072671vsf.191.1570169608232; 
 Thu, 03 Oct 2019 23:13:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190905122112.29672-1-ludovic.Barre@st.com>
 <20190905122112.29672-2-ludovic.Barre@st.com>
In-Reply-To: <20190905122112.29672-2-ludovic.Barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 4 Oct 2019 08:12:51 +0200
Message-ID: <CAPDyKFpcb=dT0XBAGVL68t--xi5853Dzsgak-vbx5VcvxLZ4zA@mail.gmail.com>
Subject: Re: [PATCH V6 1/3] mmc: mmci: add hardware busy timeout feature
To: Ludovic Barre <ludovic.Barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_231330_144736_B6F4A75B 
X-CRM114-Status: GOOD (  28.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
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

On Thu, 5 Sep 2019 at 14:21, Ludovic Barre <ludovic.Barre@st.com> wrote:
>
> From: Ludovic Barre <ludovic.barre@st.com>
>
> In some variants, the data timer starts and decrements
> when the DPSM enters in Wait_R or Busy state
> (while data transfer or MMC_RSP_BUSY), and generates a
> data timeout error if the counter reach 0.


>
> -Define max_busy_timeout (in ms) according to clock.
> -Set data timer register if the command has rsp_busy flag.
>  If busy_timeout is not defined by framework, the busy
>  length after Data Burst is defined as 1 second
>  (refer: 4.6.2.2 Write of sd specification part1 v6-0).

How about re-phrasing this as below:

-----
In the stm32_sdmmc variant, the datatimer is active not only during
data transfers with the DPSM, but also while waiting for the busyend
IRQs from commands having the MMC_RSP_BUSY flag set. This leads to an
incorrect IRQ being raised to signal MCI_DATATIMEOUT error, which
simply breaks the behaviour.

Address this by updating the datatimer value before sending a command
having the MMC_RSP_BUSY flag set. To inform the mmc core about the
maximum supported busy timeout, which also depends on the current
clock rate, set ->max_busy_timeout (in ms).
-----

Regarding the busy_timeout, the core should really assign it a value
for all commands having the RSP_BUSY flag set. However, I realize the
core needs to be improved to cover all these cases - and I am looking
at that, but not there yet.

I would also suggest to use a greater value than 1s, as that seems a
bit low for the "undefined" case. Perhaps use the max_busy_timeout,
which would be nice a simple or 10s, which I think is used by some
other drivers.

> -Add MCI_DATATIMEOUT error management in mmci_cmd_irq.
>
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> ---
>  drivers/mmc/host/mmci.c | 42 ++++++++++++++++++++++++++++++++++++-----
>  drivers/mmc/host/mmci.h |  3 +++
>  2 files changed, 40 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
> index c37e70dbe250..c30319255dc2 100644
> --- a/drivers/mmc/host/mmci.c
> +++ b/drivers/mmc/host/mmci.c
> @@ -1075,6 +1075,7 @@ static void
>  mmci_start_command(struct mmci_host *host, struct mmc_command *cmd, u32 c)
>  {
>         void __iomem *base = host->base;
> +       unsigned long long clks;
>
>         dev_dbg(mmc_dev(host->mmc), "op %02x arg %08x flags %08x\n",
>             cmd->opcode, cmd->arg, cmd->flags);
> @@ -1097,6 +1098,16 @@ mmci_start_command(struct mmci_host *host, struct mmc_command *cmd, u32 c)
>                 else
>                         c |= host->variant->cmdreg_srsp;
>         }
> +
> +       if (host->variant->busy_timeout && cmd->flags & MMC_RSP_BUSY) {
> +               if (!cmd->busy_timeout)
> +                       cmd->busy_timeout = 1000;
> +
> +               clks = (unsigned long long)cmd->busy_timeout * host->cclk;
> +               do_div(clks, MSEC_PER_SEC);
> +               writel_relaxed(clks, host->base + MMCIDATATIMER);
> +       }
> +
>         if (/*interrupt*/0)
>                 c |= MCI_CPSM_INTERRUPT;
>
> @@ -1201,6 +1212,7 @@ static void
>  mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
>              unsigned int status)
>  {
> +       u32 err_msk = MCI_CMDCRCFAIL | MCI_CMDTIMEOUT;
>         void __iomem *base = host->base;
>         bool sbc, busy_resp;
>
> @@ -1215,8 +1227,11 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
>          * handling. Note that we tag on any latent IRQs postponed
>          * due to waiting for busy status.
>          */
> -       if (!((status|host->busy_status) &
> -             (MCI_CMDCRCFAIL|MCI_CMDTIMEOUT|MCI_CMDSENT|MCI_CMDRESPEND)))
> +       if (host->variant->busy_timeout && busy_resp)
> +               err_msk |= MCI_DATATIMEOUT;
> +
> +       if (!((status | host->busy_status) &
> +             (err_msk | MCI_CMDSENT | MCI_CMDRESPEND)))
>                 return;
>
>         /* Handle busy detection on DAT0 if the variant supports it. */
> @@ -1235,8 +1250,7 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
>                  * while, to allow it to be set, but tests indicates that it
>                  * isn't needed.
>                  */
> -               if (!host->busy_status &&
> -                   !(status & (MCI_CMDCRCFAIL|MCI_CMDTIMEOUT)) &&
> +               if (!host->busy_status && !(status & err_msk) &&
>                     (readl(base + MMCISTATUS) & host->variant->busy_detect_flag)) {
>
>                         writel(readl(base + MMCIMASK0) |
> @@ -1290,6 +1304,9 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
>                 cmd->error = -ETIMEDOUT;
>         } else if (status & MCI_CMDCRCFAIL && cmd->flags & MMC_RSP_CRC) {
>                 cmd->error = -EILSEQ;
> +       } else if (host->variant->busy_timeout && busy_resp &&
> +                  status & MCI_DATATIMEOUT) {
> +               cmd->error = -ETIMEDOUT;

It's not really clear to me what happens with the busy detection
status bit (variant->busy_detect_flag), in case a MCI_DATATIMEOUT IRQ
is raised, while also having host->busy_status set (waiting for
busyend).

By looking at the code a few lines above this, we may do a "return;"
while waiting for the busyend IRQ even if MCI_DATATIMEOUT also is
raised, potentially losing that from being caught. Is that really
correct?

>         } else {
>                 cmd->resp[0] = readl(base + MMCIRESPONSE0);
>                 cmd->resp[1] = readl(base + MMCIRESPONSE1);
> @@ -1583,6 +1600,20 @@ static void mmci_request(struct mmc_host *mmc, struct mmc_request *mrq)
>         spin_unlock_irqrestore(&host->lock, flags);
>  }
>
> +static void mmci_set_max_busy_timeout(struct mmc_host *mmc)
> +{
> +       struct mmci_host *host = mmc_priv(mmc);
> +       u32 max_busy_timeout = 0;
> +
> +       if (!host->variant->busy_detect)
> +               return;
> +
> +       if (host->variant->busy_timeout && mmc->actual_clock)
> +               max_busy_timeout = ~0UL / (mmc->actual_clock / MSEC_PER_SEC);
> +
> +       mmc->max_busy_timeout = max_busy_timeout;
> +}
> +
>  static void mmci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
>  {
>         struct mmci_host *host = mmc_priv(mmc);
> @@ -1687,6 +1718,8 @@ static void mmci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
>         else
>                 mmci_set_clkreg(host, ios->clock);
>
> +       mmci_set_max_busy_timeout(mmc);
> +
>         if (host->ops && host->ops->set_pwrreg)
>                 host->ops->set_pwrreg(host, pwr);
>         else
> @@ -1957,7 +1990,6 @@ static int mmci_probe(struct amba_device *dev,
>                         mmci_write_datactrlreg(host,
>                                                host->variant->busy_dpsm_flag);
>                 mmc->caps |= MMC_CAP_WAIT_WHILE_BUSY;
> -               mmc->max_busy_timeout = 0;
>         }
>
>         /* Prepare a CMD12 - needed to clear the DPSM on some variants. */
> diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
> index 833236ecb31e..d8b7f6774e8f 100644
> --- a/drivers/mmc/host/mmci.h
> +++ b/drivers/mmc/host/mmci.h
> @@ -287,6 +287,8 @@ struct mmci_host;
>   * @signal_direction: input/out direction of bus signals can be indicated
>   * @pwrreg_clkgate: MMCIPOWER register must be used to gate the clock
>   * @busy_detect: true if the variant supports busy detection on DAT0.
> + * @busy_timeout: true if the variant starts data timer when the DPSM
> + *               enter in Wait_R or Busy state.
>   * @busy_dpsm_flag: bitmask enabling busy detection in the DPSM
>   * @busy_detect_flag: bitmask identifying the bit in the MMCISTATUS register
>   *                   indicating that the card is busy
> @@ -333,6 +335,7 @@ struct variant_data {
>         u8                      signal_direction:1;
>         u8                      pwrreg_clkgate:1;
>         u8                      busy_detect:1;
> +       u8                      busy_timeout:1;
>         u32                     busy_dpsm_flag;
>         u32                     busy_detect_flag;
>         u32                     busy_detect_mask;
> --
> 2.17.1
>

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
