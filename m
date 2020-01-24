Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 958291485B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 14:13:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OAClYRD65coTdYmC38QvaUWot4Tzz69Mn4BFRaNC9Pc=; b=FpZZQW8XVopg8m
	uVGLUmaO7eZKGeWGEKwVmmdifwpeLrcsqPZ/Kv9CeucAJVRR42UiK/vc5CpDBp8bfZ9lBGKuKbKj8
	xOgcrxnXXWTagpOA3ZKcNwqWOg5zmS6KgR2XWCAzKhvKmHBGnm+ceSKJuEyAWd9JDtqeDyZ4Ur+0K
	3BxROtEtyVggZHBEDJF12pDDkXW/a6PRhkADugERrxY5E51B1mkrldaPH7FA2RWUzZVx+JHwbtyHk
	miqdiU7vZbjxH7JidWojFIfWyPzAQjif9KcAdmjUuMYeA6hl6PXCXFUgAxF7MHQCNYx0KfKu2QM2n
	LjBntCB7d6Rs28lwurFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuym7-0005oc-RZ; Fri, 24 Jan 2020 13:13:27 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuylu-0005ns-G9
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 13:13:15 +0000
Received: by mail-vk1-xa43.google.com with SMTP id p191so507947vkf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 05:13:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0pCJ51fgs/0G4N/AkTYuiiJRhKjkqBJy/ABL+0E/bFk=;
 b=P6IMwHE8uT8RMdr1P8rDQpRrJ5PNR4L4H7E0i7DQXVdviFO6LD475vzz1mjKOK1iuK
 aJERxWGDezcMiHDHs58NUqcgXYF2j4dEMNFJtigubdbAwW7CH95WNAXL9vXEb13GgBPs
 00sCtxzu+hBjYlqlOLeDYcXG887pbfo1S0Nmjo47abdHXdfRBJQ/2HfQeO8R2jInTfPp
 fARl9XjAr32zEKJOQtTZBpNlkVYlB+yb7xrkmvb0YRgdOKav0ImuGbK0XGBLOcZ9YXF/
 2YtVULLz2da5RU43io9ze0nwFBk/FX2ubwO8cG0aRikoB5nDS5N0LxFQvbKWHNVJ+8xr
 e31Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0pCJ51fgs/0G4N/AkTYuiiJRhKjkqBJy/ABL+0E/bFk=;
 b=mkkA6q43G0KopYjRVDuU8m8l+E82GxyULOPLTmmlB5qXxH76nv3WvtXFY4M5lhW0GT
 1b9gDoiywsz+gsv2651PGYGbRFyvrP3BM7LYtklCpb8FTOasYpfarz6+d+StSB5HO1Cf
 tuiU332jJ2tGV22yMUZczKW7hJwhD6m/UrtDcGYH8rMwAKw0JW6UkcFn618EGLVcuhUZ
 Teo1xobcdGNskt0gX0+3SEElkbU3wkBw+5+RMmiTFBxBIoaSdxqX6djchuXwtXbDdFA/
 mhJhvfDdZvyc59MotziJZ1KAI8hQkO1r98ro8UpAapaM21aApgO4gaU/i9vJX7QRBFn/
 SMGQ==
X-Gm-Message-State: APjAAAWNp/vACzTwuHuv7cW1yKUpC+siVUQqTkmepY9SkgzLbkPwNRnC
 RtcSAOb1ANk73i7XwtjJOafBAKzUWvIPQj396c0yUg==
X-Google-Smtp-Source: APXvYqwvweHW+//fi2a64HFcGs84CB60rRh0VyQGFxeZ6xd6bTwXqvSw/Zs/SJ/+x6Yw0TF8Gdlx6/fNzadVplvj68g=
X-Received: by 2002:a1f:914b:: with SMTP id t72mr1847120vkd.101.1579871593005; 
 Fri, 24 Jan 2020 05:13:13 -0800 (PST)
MIME-Version: 1.0
References: <20200110134823.14882-1-ludovic.barre@st.com>
 <20200110134823.14882-8-ludovic.barre@st.com>
In-Reply-To: <20200110134823.14882-8-ludovic.barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 24 Jan 2020 14:12:36 +0100
Message-ID: <CAPDyKFqt6SuQh8V1_2-2HzBixR2HTKM+1FKgYuNA1zytc22W7g@mail.gmail.com>
Subject: Re: [PATCH 7/9] mmc: mmci: add volt_switch callbacks
To: Ludovic Barre <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_051314_538057_BF6CF819 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
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
> This patch adds 2 voltage switch callbacks in mmci_host_ops:
> -prep_volt_switch allows to prepare voltage switch before to
>  sent the SD_SWITCH_VOLTAGE command (cmd11).
> -volt_switch callback allows to define specific action after
>  regulator set voltage.

I am fine with adding these callbacks, however I strongly suggest to
have a reference to "signal voltage" in the name of the callbacks. As
to avoid confusion for what there are used for.

Perhaps ->post_sig_volt_switch() and ->pre_sig_volt_switch() can work?

>
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> ---
>  drivers/mmc/host/mmci.c | 8 ++++++++
>  drivers/mmc/host/mmci.h | 2 ++
>  2 files changed, 10 insertions(+)
>
> diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
> index 00b473f57047..d76a59c06cb0 100644
> --- a/drivers/mmc/host/mmci.c
> +++ b/drivers/mmc/host/mmci.c
> @@ -22,6 +22,7 @@
>  #include <linux/mmc/pm.h>
>  #include <linux/mmc/host.h>
>  #include <linux/mmc/card.h>
> +#include <linux/mmc/sd.h>
>  #include <linux/mmc/slot-gpio.h>
>  #include <linux/amba/bus.h>
>  #include <linux/clk.h>
> @@ -1207,6 +1208,9 @@ mmci_start_command(struct mmci_host *host, struct mmc_command *cmd, u32 c)
>                 writel_relaxed(clks, host->base + MMCIDATATIMER);
>         }
>
> +       if (host->ops->prep_volt_switch && cmd->opcode == SD_SWITCH_VOLTAGE)
> +               host->ops->prep_volt_switch(host);
> +
>         if (/*interrupt*/0)
>                 c |= MCI_CPSM_INTERRUPT;
>
> @@ -1820,6 +1824,7 @@ static int mmci_get_cd(struct mmc_host *mmc)
>
>  static int mmci_sig_volt_switch(struct mmc_host *mmc, struct mmc_ios *ios)
>  {
> +       struct mmci_host *host = mmc_priv(mmc);
>         int ret = 0;
>
>         if (!IS_ERR(mmc->supply.vqmmc)) {
> @@ -1839,6 +1844,9 @@ static int mmci_sig_volt_switch(struct mmc_host *mmc, struct mmc_ios *ios)
>                         break;
>                 }
>
> +               if (!ret && host->ops && host->ops->volt_switch)
> +                       ret = host->ops->volt_switch(host, ios);
> +
>                 if (ret)
>                         dev_warn(mmc_dev(mmc), "Voltage switch failed\n");
>         }
> diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
> index ddcdfb827996..c04a144259a2 100644
> --- a/drivers/mmc/host/mmci.h
> +++ b/drivers/mmc/host/mmci.h
> @@ -377,6 +377,8 @@ struct mmci_host_ops {
>         void (*set_clkreg)(struct mmci_host *host, unsigned int desired);
>         void (*set_pwrreg)(struct mmci_host *host, unsigned int pwr);
>         bool (*busy_complete)(struct mmci_host *host, u32 status, u32 err_msk);
> +       void (*prep_volt_switch)(struct mmci_host *host);
> +       int (*volt_switch)(struct mmci_host *host, struct mmc_ios *ios);
>  };
>
>  struct mmci_host {
> --
> 2.17.1
>

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
