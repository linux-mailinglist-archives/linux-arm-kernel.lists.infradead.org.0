Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6B6FC990
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 16:10:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Y2TL8YfPDwntOiu4k3MEAlgEGMLAQlWOZlCrTer0ms=; b=qhoANkilkYd37s
	ZI+M7aV4Amk25LDYzbjhtauzPwAUcu4tdHesLS3akSISRaB4JktQFuLz+3agSu/0Yt+Vb9vntEY4+
	aUCw0zsLQP+4OiD3FUP0S3b8Y8dmcEs5L5yo4rnfQIyjK/IGwowRx7fX4dv0ZE8VacduAqlEDe1jp
	xbuLGmurEhJj/3chcYOU1m6h5zU88XwqvRKsiJqhw3Iz/CdUsD6ah3W1sp9wNY7YPGBh+0Y2HZYdK
	l2TEFyb+6yx3pkhnYe2Jq/obKJxAgqLVa4xexc7SF0Gv0clesc8YUaH2O/5Z0m7ZmScgMSWgLIV/l
	mnOTKtKlzqkf4cxHZDHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVGlB-0002fw-Iv; Thu, 14 Nov 2019 15:10:14 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVGky-0002bW-2K
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 15:10:01 +0000
Received: by mail-vs1-xe44.google.com with SMTP id x21so4069734vsp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 07:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xnl8/R+wC38rXwVuF4Uv1hht9TdtUwdSGAq6WJK/Inw=;
 b=Dban84AkznJz4/Lo/AGf01Og1BxBmDR+H65oFtBjz52lqptwVFpC1gWv3V8jYPsBpI
 As6k5VcWLVCOIMCyBkzaCesd6pKtXjMeU6xbf4qcYJE1Qu/4yEHTYA3noX4RsOZSYgzQ
 STXXzW7X7w1gqLjdSnPUTzLpPcD3RkTvrBnCnijnCOcwaH2+t+zC6dkaffiGxkBH4la2
 bHVElB+VRghkDSDaKSct8oDhHUG9KHGEmEU6DPLHRuNhnio0uzkswhzJGchV1rDCZlAn
 J7THWdPWIjq42YLCCN+wFYb8fc/vV6/6nKM6UIBu6E+u8QHgnd4RPJyWyKV4TEYdkOhV
 jIJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xnl8/R+wC38rXwVuF4Uv1hht9TdtUwdSGAq6WJK/Inw=;
 b=pDKbxwKbii1gO4RTQy2/5B1RMvzQLNdiK5W2BMbCYSkJ75Tp2HbJ2UY8GfM5UcSRPE
 BJRUtT2NtiVCmAWoqAjL0ZvQHQPku8IBriyVtQzSDvOuI7hSZIZkAOrRJQCkrFP/Enpq
 y/whePDR/LhOfXdCtjQK1g+xDxHw3rioCBzwpocoI5bslgyu1EMC2xe9Kl+JhRvV6ned
 2iSSbcLDNI6t7GWS8LaL+YHCE4BFrkRP9ZD3FfoSxsKeEBzkOaSpzwUPBQ7v1TxClJsf
 zzmY7QQ1UEDZ1Kn9vumi6ts1F0JlRwMKAC89RNxP8nBuWj9wvqwRcjhXvW578MEeyr2Q
 i+vQ==
X-Gm-Message-State: APjAAAUR0+8h0HIigRMItjDWdzaS8wJx1cs7blhzqJBTeeVaXMB70bnQ
 W0KmnLv7jb09MGhc0Pkbil1VtsVamaBLYyKwbtwR2g==
X-Google-Smtp-Source: APXvYqxtziN/hu01bi+v1OPZ/nveSSQBkA3nNdrugi9zOjFDw+spxc18pADtGTWNLmf/e/FtNr359aBj6yMsZNnsg90=
X-Received: by 2002:a67:2087:: with SMTP id g129mr5900116vsg.191.1573744198308; 
 Thu, 14 Nov 2019 07:09:58 -0800 (PST)
MIME-Version: 1.0
References: <20191113172514.19052-1-ludovic.Barre@st.com>
In-Reply-To: <20191113172514.19052-1-ludovic.Barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 14 Nov 2019 16:09:22 +0100
Message-ID: <CAPDyKFooSJUn6UCE6QkFmJOCovm00ehz_nAPbiNQM3AcJT_bJQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] mmc: mmci: add threaded irq to abort DPSM of
 non-functional state
To: Ludovic Barre <ludovic.Barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_071000_141031_31797924 
X-CRM114-Status: GOOD (  25.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Please clarify/extend this information to tell that this is for the
variant, that keeps DPSM enabled and uses the data timer while sending
a CMD12. Or something along those lines.

>
> Like a reset must be outside of critical section, this patch adds

/s/critical section/atomic context

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
>         writel(0, host->base + MMCICOMMAND);
>
>         BUG_ON(host->data);
> @@ -1321,6 +1324,7 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
>         } else if (host->variant->busy_timeout && busy_resp &&
>                    status & MCI_DATATIMEOUT) {
>                 cmd->error = -ETIMEDOUT;
> +               host->irq_action = IRQ_WAKE_THREAD;
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

In general it's a good idea to move drivers into using a threaded IRQ handler.

However, the reason this hasn't been done for mmci before, is because
there are some legacy variants, that doesn't support HW flow control.

Unless I am mistaken, that means when the fifo gets full during data
transfers - it's too late to act. In other words, running the handler
in hard IRQ context, should increase the probability of not missing
the deadline.

If a threaded IRQ handler also is sufficient for these legacy
variants, only tests can tell.

An option, would be to use a threaded handler for those variants that
supports HW flow control. Not sure how messy the code would be with
this option, perhaps you can give this a try?


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

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
