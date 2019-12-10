Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9938F118820
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 13:31:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DEqxHCJPuZW15mG1GyErM3Wk/BGX9QXlNT6f8srjp+E=; b=fhIKOzYSg+ZPOD
	vdWX5/WnGXnjc+zwePCGLJeG1QqEwVNRcpyiFOOjkElW8NUkuRhy9UlgUXlUo0DSAKMPCwCaPGd9c
	iJxQjHj5dZgCsy775MZkXRP1yMXL7ss5xHjQ3EhNON+NYyv337wfmEpVdAeif9pprfmEMlVocwRC0
	DQB2t3YxZEDrhZbOusuMPJIhnbenRjuqFEX1DSSjLq6Z4ObeoRGJjRoxcTPzjh7WRf/+u82f5CXMn
	/xnWMeEm3CS0tcD0YtCCe/9Erc+TQrOE4j+6cWDt/wdK8oVRPg+L0RDqYPMKFsZ+zncq4d2BWcaIB
	hJWoIc4d051FkcMmbB5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieefr-0006uB-BW; Tue, 10 Dec 2019 12:31:31 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieefi-0006tA-IJ
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 12:31:24 +0000
Received: by mail-ua1-x942.google.com with SMTP id i31so7109775uae.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 04:31:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Cu4xcLC6fx43ALyB2PH7P6iHLVvlsMlK6QGD81ONfJA=;
 b=QayVJLfzwhxAFLgXNRzLMZdJ0IvLzxp4+fLYkgsafsn6S05wJNPxe1W2fAZYyUBGR8
 BcCeWqYv6slEWraMiYfCcPv4pF0tfY9IyHA+7AWdiyjqH31IZzLc5y/xNthjj+0mqejq
 /gjucQhq10JYIm5v0/LMFDew4Ilc+OXTn08xJPNEu664cWU63FxtQ7yCvrJrZZa8xDGP
 W9EiAP+c5SMOv4CIfQw/j0wZDvKbWs+qtoigdrFb6GjKOwnzrUG6gxYkrj4TJEB4DeJS
 YgnZ+BySLGuychJ02elTMZf7LBTg/2mNw+VpOcdbROX8BTpOTFbTDzDl1jY4Q1isKofp
 L0Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Cu4xcLC6fx43ALyB2PH7P6iHLVvlsMlK6QGD81ONfJA=;
 b=UtrEqWD4g9gRMg6wZ8CnG6+UYrl/1vuuc/2G+J7bCZm76OEK7xVA2b7T12FznFE39u
 p7hbJH/XcLX2SMK1wlOIe/Ecoc9cU9kgmvxt1PQsJSlnSFcbGIWw9Z+pH/z8S1qAAxvH
 F3fS8EI9ZVUWy13he8r0ia16vbbNh7JzkHoBV65uNStfGPzJQFR+NI+Ie3RUHkk/+I0H
 Y1y0p73kb8KOl+UhDgCMusNaPj0cFEjz5HCE+PbU9tEj+140eAEoMJ83N96Snw0t7tyY
 qPHvGf5Rpwm9wlQxo88DH1YnVqSyrySQ1qkMXVCYpkFUOn6oD4SCVP5D+5u7fT63Ps7D
 Re/w==
X-Gm-Message-State: APjAAAXZ7lhlhmVyJF1VP0rPFZSd9peMfLfuEssCNw1JYI0XgRGitepI
 ENbzjhbz0fXSAX5XtJnz0KBtCEVUxQ0foBIxV+O+gw==
X-Google-Smtp-Source: APXvYqyrTM1DC8Fmp+/CAB2noSeEwqc06KeL4uYpQ1xlDaNR2EbcD+cNIjYR1xbMle/tNoYu8/S+qEj9nJ91/lu54KE=
X-Received: by 2002:ab0:2759:: with SMTP id c25mr3460125uap.104.1575981077116; 
 Tue, 10 Dec 2019 04:31:17 -0800 (PST)
MIME-Version: 1.0
References: <20191113172514.19052-1-ludovic.Barre@st.com>
In-Reply-To: <20191113172514.19052-1-ludovic.Barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 10 Dec 2019 13:30:41 +0100
Message-ID: <CAPDyKFrZxOCkw9U05UZPRSGz2CqmhOq944z8MEVox8Y_UEYC4A@mail.gmail.com>
Subject: Re: [PATCH 1/1] mmc: mmci: add threaded irq to abort DPSM of
 non-functional state
To: Ludovic Barre <ludovic.Barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_043122_611801_B225DB0C 
X-CRM114-Status: GOOD (  23.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, 13 Nov 2019 at 18:25, Ludovic Barre <ludovic.Barre@st.com> wrote:
>
> From: Ludovic Barre <ludovic.barre@st.com>
>
> If datatimeout occurs on R1B request, the Data Path State Machine stays
> in busy and is non-functional. Only a reset aborts the DPSM.
>
> Like a reset must be outside of critical section, this patch adds
> threaded irq function to release state machine. In this case,
> the mmc_request_done is called at the end of threaded irq and
> skipped into irq handler.
>
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> ---
>  drivers/mmc/host/mmci.c | 44 ++++++++++++++++++++++++++++++++++++-----
>  drivers/mmc/host/mmci.h |  1 +
>  2 files changed, 40 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
> index 40e72c30ea84..ec6e249c87ca 100644
> --- a/drivers/mmc/host/mmci.c
> +++ b/drivers/mmc/host/mmci.c
> @@ -556,6 +556,9 @@ static void mmci_dma_error(struct mmci_host *host)
>  static void
>  mmci_request_end(struct mmci_host *host, struct mmc_request *mrq)
>  {
> +       if (host->irq_action == IRQ_WAKE_THREAD)
> +               return;
> +

It seems a bit unnecessary to check this every time mmci_request_end()
is called.

How about avoiding to call mmci_request_end() for the one specific
condition instead? See more below.

>         writel(0, host->base + MMCICOMMAND);
>
>         BUG_ON(host->data);
> @@ -1321,6 +1324,7 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
>         } else if (host->variant->busy_timeout && busy_resp &&
>                    status & MCI_DATATIMEOUT) {
>                 cmd->error = -ETIMEDOUT;
> +               host->irq_action = IRQ_WAKE_THREAD;

You could check this flag a few lines below and if it's set to
IRQ_WAKE_THREAD, avoid to call mmci_request_end().

>         } else {
>                 cmd->resp[0] = readl(base + MMCIRESPONSE0);
>                 cmd->resp[1] = readl(base + MMCIRESPONSE1);
> @@ -1532,9 +1536,9 @@ static irqreturn_t mmci_irq(int irq, void *dev_id)
>  {
>         struct mmci_host *host = dev_id;
>         u32 status;
> -       int ret = 0;
>
>         spin_lock(&host->lock);
> +       host->irq_action = IRQ_HANDLED;
>
>         do {
>                 status = readl(host->base + MMCISTATUS);
> @@ -1574,12 +1578,41 @@ static irqreturn_t mmci_irq(int irq, void *dev_id)
>                 if (host->variant->busy_detect_flag)
>                         status &= ~host->variant->busy_detect_flag;
>
> -               ret = 1;
>         } while (status);
>
>         spin_unlock(&host->lock);
>
> -       return IRQ_RETVAL(ret);
> +       return host->irq_action;
> +}
> +
> +/*
> + * mmci_irq_threaded is call if the mmci host need to release state machines
> + * before to terminate the request.
> + * If datatimeout occurs on R1B request, the Data Path State Machine stays
> + * in busy and is non-functional. Only a reset can to abort the DPSM.
> + */
> +static irqreturn_t mmci_irq_threaded(int irq, void *dev_id)
> +{
> +       struct mmci_host *host = dev_id;
> +       unsigned long flags;
> +
> +       if (host->rst) {
> +               reset_control_assert(host->rst);
> +               udelay(2);
> +               reset_control_deassert(host->rst);
> +       }
> +
> +       spin_lock_irqsave(&host->lock, flags);
> +       writel(host->clk_reg, host->base + MMCICLOCK);
> +       writel(host->pwr_reg, host->base + MMCIPOWER);
> +       writel(MCI_IRQENABLE | host->variant->start_err,
> +              host->base + MMCIMASK0);
> +
> +       host->irq_action = IRQ_HANDLED;
> +       mmci_request_end(host, host->mrq);
> +       spin_unlock_irqrestore(&host->lock, flags);
> +
> +       return host->irq_action;
>  }
>
>  static void mmci_request(struct mmc_host *mmc, struct mmc_request *mrq)
> @@ -2071,8 +2104,9 @@ static int mmci_probe(struct amba_device *dev,
>                         goto clk_disable;
>         }
>
> -       ret = devm_request_irq(&dev->dev, dev->irq[0], mmci_irq, IRQF_SHARED,
> -                       DRIVER_NAME " (cmd)", host);
> +       ret = devm_request_threaded_irq(&dev->dev, dev->irq[0], mmci_irq,
> +                                       mmci_irq_threaded, IRQF_SHARED,
> +                                       DRIVER_NAME " (cmd)", host);
>         if (ret)
>                 goto clk_disable;
>
> diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
> index 158e1231aa23..5e63c0596364 100644
> --- a/drivers/mmc/host/mmci.h
> +++ b/drivers/mmc/host/mmci.h
> @@ -412,6 +412,7 @@ struct mmci_host {
>
>         struct timer_list       timer;
>         unsigned int            oldstat;
> +       u32                     irq_action;
>
>         /* pio stuff */
>         struct sg_mapping_iter  sg_miter;
> --
> 2.17.1
>

Otherwise this looks good, besides my other earlier comments, of course.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
