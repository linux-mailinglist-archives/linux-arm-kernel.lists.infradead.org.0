Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E28F9CE4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 13:40:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZbOabHSiu8qPyvYEXYspoUHCTta66fXPzVvKS1ZFEEY=; b=cskt9N4p/F32Ky
	UY+yG5usvgU2nrdVtLQaR0eMFsgh8YyyM3YUB8xDdmmUXbsO+T1I3CZvT8z3g2x6ehFwHi5zMRWql
	Th7UFOS+QZsC/uU/ZgvKvm9dOTEMZyUrS35qiapXYNxjaRxOQyVNroeURrY/rY7TqbOhaIWq3am8L
	Kra1GotnJRr1W+aujnG2ZvrkJpN3QdpT8lpM7UG5bwdnsfl48SpKf7ds4quldyLi2M62n2jXN+ufL
	hRplWbCnJII2VzaQ1wwUPy+ZlR1r8fv/03E3ooipckI++xPDZ/K/SoOR/BpcP5Le61EBxYCKBeex2
	q+21g5R/FpMZ66HZftjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2DLk-0002v5-27; Mon, 26 Aug 2019 11:39:52 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2DLc-0002uX-IS
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 11:39:46 +0000
Received: by mail-ua1-x943.google.com with SMTP id s25so5580499uap.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 04:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z/ztN8aKj4HB6n/hOxgolZXF13lbGa3GFNj3CAvhcvI=;
 b=b5l/BmE/uVAAVYWaAv+kS/L9Dln+VeDeUv3DKBvJ12y7hQD/IWkxE91tg/AC8Lmvdq
 F9hi4/zJ0s4cpvU1RMIDXpUv0yy1YGe8BGC2qHwPmIIZWlELp5y7+4lV69+YRZ+l2JTw
 N8yGVg3ivX1VhHdKRJHQD/5Um4HTYVP8V68GLc0hIrzyisti2CHjVnOvluhphHrb1/9m
 6kdWGkG6QYX2PceBF7CeKTnERuC/pKDJJtUqhKObzN1KpzNMmrgVrudmwG1ga4lvNu6l
 pIbxv2nKiNFd7EMAHS62726BiC4F4R0ntwnsc0xvV1Xuo4GmDxhItwsFhfc//nGF1KVI
 sQjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z/ztN8aKj4HB6n/hOxgolZXF13lbGa3GFNj3CAvhcvI=;
 b=oBagB9ssvlzhTk+c2yd1Nd4wc8hsUOOSLkuRCfU/HU8IMGkxHgel00wa98qQ/nTVH4
 7eCR8j9bfh4oqWfZ0gALIYmXWf18hJ51dVvXB4OJcsSYcMCoJYGadS5ZjXw+7SiaedLz
 RCh3NuzZ8irucFI5xEXYorQTM+um3gffN2Oz5OCdIEDcRxR6ZD78BKnR+6VIvCOSkVI7
 9AA3rBaq0A9lmIaifMKk2kGjx8Vi8k0PyerjcuQ37x2sQkNtKS6sjzpkJ5VR0BOBIXYO
 gCORBUpB3jfPCseU6FQA5yob0SZqQKI2QZy6yQgVQpqIGwImnlUkCZoLbKUikphbtwSr
 BKpA==
X-Gm-Message-State: APjAAAVMafOrnivNV9GN2V0GXnLzY/Gv/F4qBfSwKUKeUpWPJv5uV5sl
 lukoYt1glmh10KzjEvC9FFqxbd0VImwukiLMcnQsqA==
X-Google-Smtp-Source: APXvYqz7S0pSN+WeOoO47//MqKvJ32+rI0KoknCDGuol7xTw/uTMylWuLA8O7lgaQMBaQaBJrYLQI9MjrkaBX78hK04=
X-Received: by 2002:ab0:6883:: with SMTP id t3mr8159552uar.104.1566819582903; 
 Mon, 26 Aug 2019 04:39:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190813095951.26275-1-ludovic.Barre@st.com>
 <20190813095951.26275-2-ludovic.Barre@st.com>
In-Reply-To: <20190813095951.26275-2-ludovic.Barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 26 Aug 2019 13:39:06 +0200
Message-ID: <CAPDyKFpOj8g+eY-vTxW4Sk+wVYTP1-4jDJB=nE=24eSubBvN-g@mail.gmail.com>
Subject: Re: [PATCH V5 1/3] mmc: mmci: add hardware busy timeout feature
To: Ludovic Barre <ludovic.Barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_043944_636780_CB5B50EE 
X-CRM114-Status: GOOD (  31.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, 13 Aug 2019 at 12:00, Ludovic Barre <ludovic.Barre@st.com> wrote:
>
> From: Ludovic Barre <ludovic.barre@st.com>
>
> In some variants, the data timer starts and decrements
> when the DPSM enters in Wait_R or Busy state
> (while data transfer or MMC_RSP_BUSY), and generates a
> data timeout error if the counter reach 0.

I don't quite follow here, sorry. Can you please try to elaborate on
the use case(s) more exactly?

For example, what happens when a data transfer has just finished (for
example when MCI_DATAEND has been received) and we are going to send a
CMD12 to stop it? In this case the CMD12 has the MMC_RSP_BUSY flag
set.

Another example is the CMD5, which has no data with it.

>
> -Define max_busy_timeout (in ms) according to clock.
> -Set data timer register if the command has rsp_busy flag.
>  If busy_timeout is not defined by framework, the busy
>  length after Data Burst is defined as 1 second
>  (refer: 4.6.2.2 Write of sd specification part1 v6-0).

One second is not sufficient for all operations, like ERASE for
example. However, I understand that you want to pick some value, as a
safety. I guess that's fine.

I am thinking that if the command has the MMC_RSP_BUSY flag set, the
core should really provide a busy timeout for it. That said, maybe the
host driver should splat a WARN in case there is not busy timeout
specified.

> -Add MCI_DATATIMEOUT error management in mmci_cmd_irq.
>
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> ---
>  drivers/mmc/host/mmci.c | 37 ++++++++++++++++++++++++++++++++-----
>  drivers/mmc/host/mmci.h |  3 +++
>  2 files changed, 35 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
> index c37e70dbe250..c50586540765 100644
> --- a/drivers/mmc/host/mmci.c
> +++ b/drivers/mmc/host/mmci.c
> @@ -1075,6 +1075,7 @@ static void
>  mmci_start_command(struct mmci_host *host, struct mmc_command *cmd, u32 c)
>  {
>         void __iomem *base = host->base;
> +       unsigned long long clks = 0;
>
>         dev_dbg(mmc_dev(host->mmc), "op %02x arg %08x flags %08x\n",
>             cmd->opcode, cmd->arg, cmd->flags);
> @@ -1097,6 +1098,19 @@ mmci_start_command(struct mmci_host *host, struct mmc_command *cmd, u32 c)
>                 else
>                         c |= host->variant->cmdreg_srsp;
>         }
> +
> +       if (host->variant->busy_timeout && !host->mrq->data) {

Suppose this is a CMD12 command, having the MMC_RSP_BUSY flag set. The
command would then be sent to stop the transmission and then
host->mrq->data would also be set.

If I recall earlier what you stated about the new sdmmc variant, the
CMD12 is needed to exit the DPSM. Hence don't you need to re-program a
new value for the MMCIDATATIMER register for this scenario?

> +               if (cmd->flags & MMC_RSP_BUSY) {
> +                       if (!cmd->busy_timeout)
> +                               cmd->busy_timeout = 1000;
> +
> +                       clks = (unsigned long long)cmd->busy_timeout;
> +                       clks *= host->cclk;

Any problems with putting the above on one line?

> +                       do_div(clks, MSEC_PER_SEC);
> +               }
> +               writel_relaxed(clks, host->base + MMCIDATATIMER);

This is writing zero to MMCIDATATIMER in case the MMC_RSP_BUSY isn't
set, is that on purpose?

> +       }
> +
>         if (/*interrupt*/0)
>                 c |= MCI_CPSM_INTERRUPT;
>
> @@ -1203,6 +1217,7 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
>  {
>         void __iomem *base = host->base;
>         bool sbc, busy_resp;
> +       u32 err_msk;
>
>         if (!cmd)
>                 return;
> @@ -1215,8 +1230,12 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
>          * handling. Note that we tag on any latent IRQs postponed
>          * due to waiting for busy status.
>          */
> -       if (!((status|host->busy_status) &
> -             (MCI_CMDCRCFAIL|MCI_CMDTIMEOUT|MCI_CMDSENT|MCI_CMDRESPEND)))
> +       err_msk = MCI_CMDCRCFAIL | MCI_CMDTIMEOUT;

You might as well move the initial assignment of err_msk to the its
declaration above.

> +       if (host->variant->busy_timeout && busy_resp)
> +               err_msk |= MCI_DATATIMEOUT;
> +
> +       if (!((status | host->busy_status) &
> +             (err_msk | MCI_CMDSENT | MCI_CMDRESPEND)))
>                 return;
>
>         /* Handle busy detection on DAT0 if the variant supports it. */
> @@ -1235,8 +1254,7 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
>                  * while, to allow it to be set, but tests indicates that it
>                  * isn't needed.
>                  */
> -               if (!host->busy_status &&
> -                   !(status & (MCI_CMDCRCFAIL|MCI_CMDTIMEOUT)) &&
> +               if (!host->busy_status && !(status & err_msk) &&
>                     (readl(base + MMCISTATUS) & host->variant->busy_detect_flag)) {
>
>                         writel(readl(base + MMCIMASK0) |
> @@ -1290,6 +1308,9 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
>                 cmd->error = -ETIMEDOUT;
>         } else if (status & MCI_CMDCRCFAIL && cmd->flags & MMC_RSP_CRC) {
>                 cmd->error = -EILSEQ;
> +       } else if (host->variant->busy_timeout && busy_resp &&
> +                  status & MCI_DATATIMEOUT) {
> +               cmd->error = -ETIMEDOUT;
>         } else {
>                 cmd->resp[0] = readl(base + MMCIRESPONSE0);
>                 cmd->resp[1] = readl(base + MMCIRESPONSE1);
> @@ -1948,6 +1969,8 @@ static int mmci_probe(struct amba_device *dev,
>          * Enable busy detection.
>          */
>         if (variant->busy_detect) {
> +               u32 max_busy_timeout = 0;
> +
>                 mmci_ops.card_busy = mmci_card_busy;
>                 /*
>                  * Not all variants have a flag to enable busy detection
> @@ -1957,7 +1980,11 @@ static int mmci_probe(struct amba_device *dev,
>                         mmci_write_datactrlreg(host,
>                                                host->variant->busy_dpsm_flag);
>                 mmc->caps |= MMC_CAP_WAIT_WHILE_BUSY;
> -               mmc->max_busy_timeout = 0;
> +
> +               if (variant->busy_timeout)
> +                       max_busy_timeout = ~0UL / (mmc->f_max / MSEC_PER_SEC);

It looks like the max busy timeout is depending on the current picked
clock rate, right?

In such case, perhaps it's better to update mmc->max_busy_timeout as
part of the ->set_ios() callback, as it's from there the clock rate
gets updated. Or what do you think?

> +
> +               mmc->max_busy_timeout = max_busy_timeout;
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
