Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B630CB47E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 08:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mNP8cq3x6l7ym1LdfEgoFIbs1AwiwKpaUgn/+t5aa/M=; b=HIsGlKP4tKOkN5
	Wmd4TKDmfJgdm39Lv0uQ709rwiWtd7GI3sLFwvCQpegF2ydD+eA1LqKdrhu2HPvf7NyNwS/x7T1Nx
	jSOSwHP/LnGh9qI6lbf8eFzWnw9ncX1TebuLfcfGw+rTowVUK9PLjhs0u1ypPYBWw6/0Srz/B4RkC
	PlIXmOjTtLTCS6IQb2yRktcsjPRqJq4W3tYIVJ4ktR8grV16dCy10D4/vJ/e1MlZ6/HQyxCxDFevz
	avD+wQkl39WtmGLKZGvqFhnZ0qfaH+VKbt6ReMo25ew4TgmqTK2isKS/+sS3wBy0zYyfHNSaTaT69
	iuY5Y4zTN3tcLUqHEBoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGH64-0007lf-IR; Fri, 04 Oct 2019 06:29:48 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGH5w-0007ko-VF
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 06:29:42 +0000
Received: by mail-ua1-x943.google.com with SMTP id r25so1710271uam.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 23:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cHb3TMwEz5+OXW5BLXUPEo0iVNuw/zaJSQ8nudxgUfs=;
 b=Uwjd/yJX/zvBAyGszyOFkHGxGNHPYzrzCZYU0PmR6Q5fH1sYTLP2LrV8rUqHQdILhC
 //17swpcqvTHMY4+a7g3Rj2z1VvmrmgbhwMqIYV6yDI6JbVCVuOkv7CQ6aSbI6NOhRlb
 VBWjjFQ5Nmiroaiap6+rXL/94RjLkw3GBUB9VkIWLnkrhiuwaP3Brj/EfFxSYXq1nAVE
 f6aOM0wju0q4zC7Ce3Astb9/I+2BWy4Txir0vqRryL5+kh27GVdW3u+Sa7PB20jZ6oWs
 ctHyY+MWnyfXXvJNeX3BnvYei6rogQqQEDxluAnuZJmuGnKnhlbD8dhPRdQEuB/wgz9n
 umlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cHb3TMwEz5+OXW5BLXUPEo0iVNuw/zaJSQ8nudxgUfs=;
 b=KjL17hnM4pvm9POjJ8k0Gl6IGRFZCQyudt7tWR+wLMDnw55sK55pGk+Ngn35sadpJt
 ZQSMQ2DZywuD7ZLhKh6WCby+u6Ov6TkkGWi1iaoi6zsdiYZUVwiCgKwzW2ipSEtpQTQC
 KKmIUScQkXfS9jMX4BEakmNGq27n3A05wYk8k/H2dxVuNzux5M3jtXN2RRMSsTutAHhk
 KXWBhs59HkZvo9G/vOSGyBGxbPuLPNgtilbdzlBJNJQ7cluAK2b4/QcQo2xr/UdE6byG
 YZic/Y5ptaFhbn++5EAMruBSNIGpt1reazcoC3/n0hbj2EHOLCFoScYsVdkb5gCkDJ8J
 3h+w==
X-Gm-Message-State: APjAAAU4b7+IYjbynkCtQ157AEWy665CQ5jsJUeKE6wLztgMV8AEFj9Q
 OJ05WKdAS1fgg9H3yT3xafzSws/1SQMWoUlULvmXjA==
X-Google-Smtp-Source: APXvYqz6daR9aHVc9S81jmd9/IFtYSbtxQdmea7YqFH+8nFRj86tzklqTbvvwLZy2tpZ0Dhc9hS5mF/g7d507FyWhH0=
X-Received: by 2002:ab0:6190:: with SMTP id h16mr5010959uan.129.1570170577595; 
 Thu, 03 Oct 2019 23:29:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190905122112.29672-1-ludovic.Barre@st.com>
 <20190905122112.29672-3-ludovic.Barre@st.com>
In-Reply-To: <20190905122112.29672-3-ludovic.Barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 4 Oct 2019 08:29:01 +0200
Message-ID: <CAPDyKFpWun8kEo00gfvx3b1W18HWQkaG2nQuvq2YiTWYUP2Maw@mail.gmail.com>
Subject: Re: [PATCH V6 2/3] mmc: mmci: add busy_complete callback
To: Ludovic Barre <ludovic.Barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_232941_015173_77BC58B2 
X-CRM114-Status: GOOD (  33.25  )
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
> This patch adds busy_completion callback at mmci_host_ops
> to allow to define a specific busy completion by variant.
>
> The legacy code corresponding to busy completion used
> by ux500 variants is moved to ux500_busy_complete function.
>
> The busy_detect boolean property is replaced by
> busy_complete callback definition.

At this point I prefer to keep th busy_detect boolean property. It
makes the code a bit more consistent.

Although, I think in case busy_detect is set for the variant, the
variant also needs to assign the new ->busy_completion() callback. In
other words, we don't need to check for a valid callback in code if
busy_detect is set.

Otherwise, this looks good to me!

Kind regards
Uffe

>
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> ---
>  drivers/mmc/host/mmci.c | 142 +++++++++++++++++++++-------------------
>  drivers/mmc/host/mmci.h |   3 +-
>  2 files changed, 76 insertions(+), 69 deletions(-)
>
> diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
> index c30319255dc2..e20164f4354d 100644
> --- a/drivers/mmc/host/mmci.c
> +++ b/drivers/mmc/host/mmci.c
> @@ -44,6 +44,7 @@
>  #define DRIVER_NAME "mmci-pl18x"
>
>  static void mmci_variant_init(struct mmci_host *host);
> +static void ux500_variant_init(struct mmci_host *host);
>  static void ux500v2_variant_init(struct mmci_host *host);
>
>  static unsigned int fmax = 515633;
> @@ -175,7 +176,6 @@ static struct variant_data variant_ux500 = {
>         .f_max                  = 100000000,
>         .signal_direction       = true,
>         .pwrreg_clkgate         = true,
> -       .busy_detect            = true,
>         .busy_dpsm_flag         = MCI_DPSM_ST_BUSYMODE,
>         .busy_detect_flag       = MCI_ST_CARDBUSY,
>         .busy_detect_mask       = MCI_ST_BUSYENDMASK,
> @@ -184,7 +184,7 @@ static struct variant_data variant_ux500 = {
>         .irq_pio_mask           = MCI_IRQ_PIO_MASK,
>         .start_err              = MCI_STARTBITERR,
>         .opendrain              = MCI_OD,
> -       .init                   = mmci_variant_init,
> +       .init                   = ux500_variant_init,
>  };
>
>  static struct variant_data variant_ux500v2 = {
> @@ -208,7 +208,6 @@ static struct variant_data variant_ux500v2 = {
>         .f_max                  = 100000000,
>         .signal_direction       = true,
>         .pwrreg_clkgate         = true,
> -       .busy_detect            = true,
>         .busy_dpsm_flag         = MCI_DPSM_ST_BUSYMODE,
>         .busy_detect_flag       = MCI_ST_CARDBUSY,
>         .busy_detect_mask       = MCI_ST_BUSYENDMASK,
> @@ -610,6 +609,67 @@ static u32 ux500v2_get_dctrl_cfg(struct mmci_host *host)
>         return MCI_DPSM_ENABLE | (host->data->blksz << 16);
>  }
>
> +static bool ux500_busy_complete(struct mmci_host *host, u32 status, u32 err_msk)
> +{
> +       void __iomem *base = host->base;
> +
> +       /*
> +        * Before unmasking for the busy end IRQ, confirm that the
> +        * command was sent successfully. To keep track of having a
> +        * command in-progress, waiting for busy signaling to end,
> +        * store the status in host->busy_status.
> +        *
> +        * Note that, the card may need a couple of clock cycles before
> +        * it starts signaling busy on DAT0, hence re-read the
> +        * MMCISTATUS register here, to allow the busy bit to be set.
> +        * Potentially we may even need to poll the register for a
> +        * while, to allow it to be set, but tests indicates that it
> +        * isn't needed.
> +        */
> +       if (!host->busy_status && !(status & err_msk) &&
> +           (readl(base + MMCISTATUS) & host->variant->busy_detect_flag)) {
> +               writel(readl(base + MMCIMASK0) |
> +                      host->variant->busy_detect_mask,
> +                      base + MMCIMASK0);
> +
> +               host->busy_status = status & (MCI_CMDSENT | MCI_CMDRESPEND);
> +               return false;
> +       }
> +
> +       /*
> +        * If there is a command in-progress that has been successfully
> +        * sent, then bail out if busy status is set and wait for the
> +        * busy end IRQ.
> +        *
> +        * Note that, the HW triggers an IRQ on both edges while
> +        * monitoring DAT0 for busy completion, but there is only one
> +        * status bit in MMCISTATUS for the busy state. Therefore
> +        * both the start and the end interrupts needs to be cleared,
> +        * one after the other. So, clear the busy start IRQ here.
> +        */
> +       if (host->busy_status &&
> +           (status & host->variant->busy_detect_flag)) {
> +               writel(host->variant->busy_detect_mask, base + MMCICLEAR);
> +               return false;
> +       }
> +
> +       /*
> +        * If there is a command in-progress that has been successfully
> +        * sent and the busy bit isn't set, it means we have received
> +        * the busy end IRQ. Clear and mask the IRQ, then continue to
> +        * process the command.
> +        */
> +       if (host->busy_status) {
> +               writel(host->variant->busy_detect_mask, base + MMCICLEAR);
> +
> +               writel(readl(base + MMCIMASK0) &
> +                      ~host->variant->busy_detect_mask, base + MMCIMASK0);
> +               host->busy_status = 0;
> +       }
> +
> +       return true;
> +}
> +
>  /*
>   * All the DMA operation mode stuff goes inside this ifdef.
>   * This assumes that you have a generic DMA device interface,
> @@ -953,9 +1013,16 @@ void mmci_variant_init(struct mmci_host *host)
>         host->ops = &mmci_variant_ops;
>  }
>
> +void ux500_variant_init(struct mmci_host *host)
> +{
> +       host->ops = &mmci_variant_ops;
> +       host->ops->busy_complete = ux500_busy_complete;
> +}
> +
>  void ux500v2_variant_init(struct mmci_host *host)
>  {
>         host->ops = &mmci_variant_ops;
> +       host->ops->busy_complete = ux500_busy_complete;
>         host->ops->get_datactrl_cfg = ux500v2_get_dctrl_cfg;
>  }
>
> @@ -1235,68 +1302,9 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
>                 return;
>
>         /* Handle busy detection on DAT0 if the variant supports it. */
> -       if (busy_resp && host->variant->busy_detect) {
> -
> -               /*
> -                * Before unmasking for the busy end IRQ, confirm that the
> -                * command was sent successfully. To keep track of having a
> -                * command in-progress, waiting for busy signaling to end,
> -                * store the status in host->busy_status.
> -                *
> -                * Note that, the card may need a couple of clock cycles before
> -                * it starts signaling busy on DAT0, hence re-read the
> -                * MMCISTATUS register here, to allow the busy bit to be set.
> -                * Potentially we may even need to poll the register for a
> -                * while, to allow it to be set, but tests indicates that it
> -                * isn't needed.
> -                */
> -               if (!host->busy_status && !(status & err_msk) &&
> -                   (readl(base + MMCISTATUS) & host->variant->busy_detect_flag)) {
> -
> -                       writel(readl(base + MMCIMASK0) |
> -                              host->variant->busy_detect_mask,
> -                              base + MMCIMASK0);
> -
> -                       host->busy_status =
> -                               status & (MCI_CMDSENT|MCI_CMDRESPEND);
> -                       return;
> -               }
> -
> -               /*
> -                * If there is a command in-progress that has been successfully
> -                * sent, then bail out if busy status is set and wait for the
> -                * busy end IRQ.
> -                *
> -                * Note that, the HW triggers an IRQ on both edges while
> -                * monitoring DAT0 for busy completion, but there is only one
> -                * status bit in MMCISTATUS for the busy state. Therefore
> -                * both the start and the end interrupts needs to be cleared,
> -                * one after the other. So, clear the busy start IRQ here.
> -                */
> -               if (host->busy_status &&
> -                   (status & host->variant->busy_detect_flag)) {
> -                       writel(host->variant->busy_detect_mask,
> -                              host->base + MMCICLEAR);
> +       if (busy_resp && host->ops->busy_complete)
> +               if (!host->ops->busy_complete(host, status, err_msk))
>                         return;
> -               }
> -
> -               /*
> -                * If there is a command in-progress that has been successfully
> -                * sent and the busy bit isn't set, it means we have received
> -                * the busy end IRQ. Clear and mask the IRQ, then continue to
> -                * process the command.
> -                */
> -               if (host->busy_status) {
> -
> -                       writel(host->variant->busy_detect_mask,
> -                              host->base + MMCICLEAR);
> -
> -                       writel(readl(base + MMCIMASK0) &
> -                              ~host->variant->busy_detect_mask,
> -                              base + MMCIMASK0);
> -                       host->busy_status = 0;
> -               }
> -       }
>
>         host->cmd = NULL;
>
> @@ -1537,7 +1545,7 @@ static irqreturn_t mmci_irq(int irq, void *dev_id)
>                  * clear the corresponding IRQ.
>                  */
>                 status &= readl(host->base + MMCIMASK0);
> -               if (host->variant->busy_detect)
> +               if (host->ops->busy_complete)
>                         writel(status & ~host->variant->busy_detect_mask,
>                                host->base + MMCICLEAR);
>                 else
> @@ -1605,7 +1613,7 @@ static void mmci_set_max_busy_timeout(struct mmc_host *mmc)
>         struct mmci_host *host = mmc_priv(mmc);
>         u32 max_busy_timeout = 0;
>
> -       if (!host->variant->busy_detect)
> +       if (!host->ops->busy_complete)
>                 return;
>
>         if (host->variant->busy_timeout && mmc->actual_clock)
> @@ -1980,7 +1988,7 @@ static int mmci_probe(struct amba_device *dev,
>         /*
>          * Enable busy detection.
>          */
> -       if (variant->busy_detect) {
> +       if (host->ops->busy_complete) {
>                 mmci_ops.card_busy = mmci_card_busy;
>                 /*
>                  * Not all variants have a flag to enable busy detection
> diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
> index d8b7f6774e8f..733f9a035b06 100644
> --- a/drivers/mmc/host/mmci.h
> +++ b/drivers/mmc/host/mmci.h
> @@ -286,7 +286,6 @@ struct mmci_host;
>   * @f_max: maximum clk frequency supported by the controller.
>   * @signal_direction: input/out direction of bus signals can be indicated
>   * @pwrreg_clkgate: MMCIPOWER register must be used to gate the clock
> - * @busy_detect: true if the variant supports busy detection on DAT0.
>   * @busy_timeout: true if the variant starts data timer when the DPSM
>   *               enter in Wait_R or Busy state.
>   * @busy_dpsm_flag: bitmask enabling busy detection in the DPSM
> @@ -334,7 +333,6 @@ struct variant_data {
>         u32                     f_max;
>         u8                      signal_direction:1;
>         u8                      pwrreg_clkgate:1;
> -       u8                      busy_detect:1;
>         u8                      busy_timeout:1;
>         u32                     busy_dpsm_flag;
>         u32                     busy_detect_flag;
> @@ -369,6 +367,7 @@ struct mmci_host_ops {
>         void (*dma_error)(struct mmci_host *host);
>         void (*set_clkreg)(struct mmci_host *host, unsigned int desired);
>         void (*set_pwrreg)(struct mmci_host *host, unsigned int pwr);
> +       bool (*busy_complete)(struct mmci_host *host, u32 status, u32 err_msk);
>  };
>
>  struct mmci_host {
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
