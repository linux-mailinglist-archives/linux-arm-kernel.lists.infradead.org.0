Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C651248F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 15:02:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ihF/Y7J0v0qp28ht3W+W5iIx7L7dHMp0RvrSSddBvs0=; b=INSg5bKINk//l+
	mEof8E4yv12om7eJ72WgzF3s/y3yAKUeNLmVmgJO87FWU62w1JqLiAx/k+AMButqg/bH3Lnz2gLeG
	tW+RZAAKjZsiM7LE8awV1zdhQFM+WUK6a/rXMeU4pbftCPQFe/vlVAIGvsQ3/kIBTgCiH+AmXEuGw
	Rc9TroTKl2a6b+l6vDko7HnCr03HG8NwWNy+jkTzMdxzxTfki+nMO03BKO03w7/rxmjoyYGzszdWg
	fBEky/ql6jnqvomjhCPlvU5oF0i3cgwD3w9A7toi2Rs0r/CeNxdNbhM7NZU6h2cuia7I7p62qkub0
	kEmHm/d5zzLHXYye0nKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihZtw-0000TQ-V1; Wed, 18 Dec 2019 14:02:08 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihZtm-0000SC-2O
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 14:01:59 +0000
Received: by mail-vk1-xa43.google.com with SMTP id i78so662076vke.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 06:01:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iDDXhiVTyjttx83CIWs0F1XonSq49Z4FwKDL4AKSMZ0=;
 b=BQV2PwjmbtuoWSC6pu036LkQ2z7jmrFW6qlzts/aZDJynU93TGkLUhBp1tK0JsTFaT
 S2b+dwMSp+ypQMOMXdOs9LFVYT7fgaSnIF6v4Fdpd6rCw36hFZjNVJQq/ePUT36d7n1n
 D1ffm2D1fhMhbjnIctBnD8i0BiNqyl8E/ruo7fbsOjIVAw+HRNjyOX3tha/u9SsSNIk6
 IB11YGyhc9yROsqDogYMqWIf3e3tv6zde8cexBNY7mOtar629cjEidMYs9B3ROwqzBLd
 /nM+061/J2VcBtRQ7dKOpHAiXKfXghjHS7RiWirp6/pETZAB1yRLXPv0Fhv0nw2+IMsu
 UnwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iDDXhiVTyjttx83CIWs0F1XonSq49Z4FwKDL4AKSMZ0=;
 b=Foh4u0g9XUKxgKldz4ab9HsscPMeR8iNU32PlH4hB99+35HCX0+6k9Ig7iYsX+PxHe
 y7aY0y5gNCg0QFapKip+ZkKBMQx59yB6DniTpMYirh/WaLxvv4ZxDIAZYewXygnPtE9f
 hr6+aBVmvy324e5fQStNnEnouqAO6VLvGFCsG58jWA4V6xze6pvxjou/EHtt87iaI6p4
 FVMyetBOnlOxJlQqJ7PGKBzMelKSn9FrBNXDp0dGc978Cu3qrvTj6c5dP/ttaAlmvgBW
 XS6IEEUdbdX8TYIoPzl9QPRBhFmDHOe8TJGoKOs7cjU/VHqGPtKvSxSft05eWb13XRWs
 UoNA==
X-Gm-Message-State: APjAAAXsWnQ0cMgWElFGGiZBYMUbp/4u8ftNv++10ASvUIyPAjp0bJQY
 89dlAeEQPO0AtF3QMTBUrA4ziOfKNkULi2UoFVtpLQ==
X-Google-Smtp-Source: APXvYqwKppPVSkF/tgQZTFhbMXTfr2S4Ix4tS00kAV6zskzWPozXs1ppIIQpeKIDB7d8k+f5RedW4PwJL7fcueb9+8I=
X-Received: by 2002:a1f:4541:: with SMTP id s62mr1807754vka.59.1576677716241; 
 Wed, 18 Dec 2019 06:01:56 -0800 (PST)
MIME-Version: 1.0
References: <20191211133934.16932-1-ludovic.Barre@st.com>
In-Reply-To: <20191211133934.16932-1-ludovic.Barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 18 Dec 2019 15:01:20 +0100
Message-ID: <CAPDyKFpoqEXO1JvjF=0hX97PiwP=2c1eWORsacb8QvZM=1Tvjw@mail.gmail.com>
Subject: Re: [PATCH V2] mmc: mmci: add threaded irq to abort DPSM of
 non-functional state
To: Ludovic Barre <ludovic.Barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_060158_113161_228D4CBD 
X-CRM114-Status: GOOD (  21.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, 11 Dec 2019 at 14:40, Ludovic Barre <ludovic.Barre@st.com> wrote:
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

Applied for next, thanks!

I took the liberty of doing some minor updates (changelog/comment),
please have a look and let me know if there is something you want me
to change.

And again, apologize for the delays!

Kind regards
Uffe


> ---
> change V2:
>  -check IRQ_WAKE_THREAD only in mmci_cmd_irq error part,
>   to avoid this test in mmci_request_end.
>
> ---
>  drivers/mmc/host/mmci.c | 46 +++++++++++++++++++++++++++++++++++------
>  drivers/mmc/host/mmci.h |  1 +
>  2 files changed, 41 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
> index 40e72c30ea84..2b91757e3e84 100644
> --- a/drivers/mmc/host/mmci.c
> +++ b/drivers/mmc/host/mmci.c
> @@ -1321,6 +1321,7 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
>         } else if (host->variant->busy_timeout && busy_resp &&
>                    status & MCI_DATATIMEOUT) {
>                 cmd->error = -ETIMEDOUT;
> +               host->irq_action = IRQ_WAKE_THREAD;
>         } else {
>                 cmd->resp[0] = readl(base + MMCIRESPONSE0);
>                 cmd->resp[1] = readl(base + MMCIRESPONSE1);
> @@ -1339,7 +1340,10 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
>                                 return;
>                         }
>                 }
> -               mmci_request_end(host, host->mrq);
> +
> +               if (host->irq_action != IRQ_WAKE_THREAD)
> +                       mmci_request_end(host, host->mrq);
> +
>         } else if (sbc) {
>                 mmci_start_command(host, host->mrq->cmd, 0);
>         } else if (!host->variant->datactrl_first &&
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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
