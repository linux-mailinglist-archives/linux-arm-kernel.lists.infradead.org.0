Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A26EB74EF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 15:16:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kz5u6+Izq/NBZGfkAXe1JVfoeAzpQijYUT5lkpkxpQw=; b=PQPnQzi3HkS1vM
	PdVDjUi7vpaT0rpi31PMqXfReXNJrWIdcE251CTC6wQaChDq9gm5kb4QLymr8R0iNewZJqxAIwfLy
	VqJnAXj4WBfIs+Z6B7+kuSA4TtKYxJW1oEWqxtH4vDQIs/rhEGYVQqKqO0GA/PJtYN81JpAUeqk8S
	nkvvQ7LmnHIsTdOoEuHsA0jK+/FAbkQBUg7zxTmUjev74mU5APScvAYihyrlXqMaYVOCXgLFDjRAv
	bLwCU2JIkhREDoFThmWA9HHa1wdkI6DrEUhM8e9Dl+dUTpwKwZN9XuPx5pmBtKtkOupxN4h+yo5Mo
	MExqrAJ0f7fL4m3hiMsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdbX-0005ye-Rf; Thu, 25 Jul 2019 13:16:20 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdak-0005gr-Vg
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 13:15:34 +0000
Received: by mail-ua1-x941.google.com with SMTP id j8so19810439uan.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 06:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FO+uLJoSuAxi+43r+XChAV6bGShjC1QQJr5a1Z10WA4=;
 b=SAUoMUsSsOPwFEbODyYvbm0qMvAsZOalIvn8b5uw+acudLMMu9vygqpFvYjIJ7v7I9
 DEfkoFimLuT9tH2qezkGjWP6KTnG6GK5CZNqoSP/6zUJMPIABBvtn9MlIPSI+5ccr3aZ
 qEWB67oXNmMAOoPhko2gALVxZmmVMN0tygy080v6i5iHSMtnIJqCtp2YJPdrTY7uMGvQ
 N53GfmIT+PdqasYZGMRI9R/s3QzGqObJm1QjeVCHced1Ly4fbVz8rheZdQzRNvkfxCXK
 vrenlO6gbMi9+RLGXQSoM57X3UZsFZYpUEMYlTcichzx5w/aRtwqTcCPoTfHPz6iK/6w
 znzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FO+uLJoSuAxi+43r+XChAV6bGShjC1QQJr5a1Z10WA4=;
 b=gCDhfnNczRaUKZYDij/3vQpeo+kLDRfS6npqcMQtYoL3kCfIx7k9Ikx7WVELzsAxHF
 D3fnpNawGkOO+NC/qmdnxt80k/GQZK8wcM7EGYA6b79N4SnF7U4pMU6zXV0AA8L+U/uQ
 vrhJOk/MoNZUHE3KgC9qT/b5N8dZoZMmvozfNIoRn5IfAG2iYIFxfEhcVVxbQdc6ccmt
 yH0hBbCgGppxXCgj6Q4slgAUjCJN9bsbD64sE9/w/im1nZdu4WrMeV7REO+dD71bZTc4
 xs04CYLPlUWJ5YKs+1Bjj3op4qejh4z4z/IxILEeNIxoNFw/HqgvbjjSAIAA8hSD7QNZ
 2JWQ==
X-Gm-Message-State: APjAAAVwuOq2YysTuH9j5G6Zr0Wid/rUue13fbKEJzEPVeOWkfYUUdcq
 /ZnFAzfFYQknNU53TR4rh1qSHsBSf8tyiJz8SgSKQg==
X-Google-Smtp-Source: APXvYqzaDFTzSxZuWbXn/auySeCIUcUcxXajq3YH1eaAMunNEBK04WM5xvy21BN7eG0KHX0O/0i+oo6dN036NrOJmUE=
X-Received: by 2002:ab0:5973:: with SMTP id o48mr45127023uad.19.1564060529602; 
 Thu, 25 Jul 2019 06:15:29 -0700 (PDT)
MIME-Version: 1.0
References: <74a6462743e3d73a630d2634880d8866daee333e.1564022625.git.baolin.wang@linaro.org>
In-Reply-To: <74a6462743e3d73a630d2634880d8866daee333e.1564022625.git.baolin.wang@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 25 Jul 2019 15:14:53 +0200
Message-ID: <CAPDyKFoNGZRdY3VVf6G9eNBfCyJbN5SUU2+fK24U-mHDX13oFQ@mail.gmail.com>
Subject: Re: [PATCH v5] mmc: host: sdhci: Fix the incorrect soft reset
 operation when runtime resuming
To: Baolin Wang <baolin.wang@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_061531_169042_5CDF18F2 
X-CRM114-Status: GOOD (  22.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
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
Cc: Chunyan Zhang <zhang.lyra@gmail.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

- Trimmed cc list

On Thu, 25 Jul 2019 at 05:14, Baolin Wang <baolin.wang@linaro.org> wrote:
>
> The SD host controller specification defines 3 types software reset:
> software reset for data line, software reset for command line and
> software reset for all. Software reset for all means this reset affects
> the entire Host controller except for the card detection circuit.
>
> In sdhci_runtime_resume_host() function, now we will always do software
> reset for all, which will cause Spreadtrum host controller work abnormally
> after resuming. For Spreadtrum platform that will not power down the SD/eMMC
> card during runtime suspend, we should just do software reset for data
> and command instead doing reset for all.
>
> To fix this issue, this patch introduces a new parameter of
> sdhci_runtime_resume_host() to let it decide if a 'reset for all' shall
> be done or not. Meanwhile changes other host drivers to issue a software
> reset for all to keep the original logic.
>
> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>

Applied for next, with a little change (renaming the "soft"
in-parameter to soft_reset), thanks!

Adrian, if there is anything you want to change, please tell.

BTW, perhaps this should be applied for fixes and tagged for stable?
Baolin, if so, can point me the commit (or stable tag) the patch
fixes?

Kind regards
Uffe



> ---
> Changes from v4:
>  - Update the commit message.
>  - Add a new parameter to decide if a 'reset for all' shall be done or not.
>
> Changes from v3:
>  - Use ios.power_mode to validate if the card is power down or not.
>
> Changes from v2:
>  - Simplify the sdhci_sprd_reset() by issuing sdhci_reset().
>
> Changes from v1:
>  - Add a specific reset operation instead of changing the core to avoid
>  affecting other hardware.
> ---
>  drivers/mmc/host/sdhci-acpi.c      |    2 +-
>  drivers/mmc/host/sdhci-esdhc-imx.c |    2 +-
>  drivers/mmc/host/sdhci-of-at91.c   |    2 +-
>  drivers/mmc/host/sdhci-pci-core.c  |    4 ++--
>  drivers/mmc/host/sdhci-pxav3.c     |    2 +-
>  drivers/mmc/host/sdhci-s3c.c       |    2 +-
>  drivers/mmc/host/sdhci-sprd.c      |    2 +-
>  drivers/mmc/host/sdhci-xenon.c     |    2 +-
>  drivers/mmc/host/sdhci.c           |    4 ++--
>  drivers/mmc/host/sdhci.h           |    2 +-
>  10 files changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/mmc/host/sdhci-acpi.c b/drivers/mmc/host/sdhci-acpi.c
> index b3a130a..1604f51 100644
> --- a/drivers/mmc/host/sdhci-acpi.c
> +++ b/drivers/mmc/host/sdhci-acpi.c
> @@ -883,7 +883,7 @@ static int sdhci_acpi_runtime_resume(struct device *dev)
>
>         sdhci_acpi_byt_setting(&c->pdev->dev);
>
> -       return sdhci_runtime_resume_host(c->host);
> +       return sdhci_runtime_resume_host(c->host, 0);
>  }
>
>  #endif
> diff --git a/drivers/mmc/host/sdhci-esdhc-imx.c b/drivers/mmc/host/sdhci-esdhc-imx.c
> index c391510..776a942 100644
> --- a/drivers/mmc/host/sdhci-esdhc-imx.c
> +++ b/drivers/mmc/host/sdhci-esdhc-imx.c
> @@ -1705,7 +1705,7 @@ static int sdhci_esdhc_runtime_resume(struct device *dev)
>                 esdhc_pltfm_set_clock(host, imx_data->actual_clock);
>         }
>
> -       err = sdhci_runtime_resume_host(host);
> +       err = sdhci_runtime_resume_host(host, 0);
>         if (err)
>                 goto disable_ipg_clk;
>
> diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
> index e377b9b..d4e7e8b 100644
> --- a/drivers/mmc/host/sdhci-of-at91.c
> +++ b/drivers/mmc/host/sdhci-of-at91.c
> @@ -289,7 +289,7 @@ static int sdhci_at91_runtime_resume(struct device *dev)
>         }
>
>  out:
> -       return sdhci_runtime_resume_host(host);
> +       return sdhci_runtime_resume_host(host, 0);
>  }
>  #endif /* CONFIG_PM */
>
> diff --git a/drivers/mmc/host/sdhci-pci-core.c b/drivers/mmc/host/sdhci-pci-core.c
> index 4041878..7d06e28 100644
> --- a/drivers/mmc/host/sdhci-pci-core.c
> +++ b/drivers/mmc/host/sdhci-pci-core.c
> @@ -167,7 +167,7 @@ static int sdhci_pci_runtime_suspend_host(struct sdhci_pci_chip *chip)
>
>  err_pci_runtime_suspend:
>         while (--i >= 0)
> -               sdhci_runtime_resume_host(chip->slots[i]->host);
> +               sdhci_runtime_resume_host(chip->slots[i]->host, 0);
>         return ret;
>  }
>
> @@ -181,7 +181,7 @@ static int sdhci_pci_runtime_resume_host(struct sdhci_pci_chip *chip)
>                 if (!slot)
>                         continue;
>
> -               ret = sdhci_runtime_resume_host(slot->host);
> +               ret = sdhci_runtime_resume_host(slot->host, 0);
>                 if (ret)
>                         return ret;
>         }
> diff --git a/drivers/mmc/host/sdhci-pxav3.c b/drivers/mmc/host/sdhci-pxav3.c
> index 3ddecf4..e55037c 100644
> --- a/drivers/mmc/host/sdhci-pxav3.c
> +++ b/drivers/mmc/host/sdhci-pxav3.c
> @@ -554,7 +554,7 @@ static int sdhci_pxav3_runtime_resume(struct device *dev)
>         if (!IS_ERR(pxa->clk_core))
>                 clk_prepare_enable(pxa->clk_core);
>
> -       return sdhci_runtime_resume_host(host);
> +       return sdhci_runtime_resume_host(host, 0);
>  }
>  #endif
>
> diff --git a/drivers/mmc/host/sdhci-s3c.c b/drivers/mmc/host/sdhci-s3c.c
> index 8e4a8ba..f5753ae 100644
> --- a/drivers/mmc/host/sdhci-s3c.c
> +++ b/drivers/mmc/host/sdhci-s3c.c
> @@ -745,7 +745,7 @@ static int sdhci_s3c_runtime_resume(struct device *dev)
>         clk_prepare_enable(busclk);
>         if (ourhost->cur_clk >= 0)
>                 clk_prepare_enable(ourhost->clk_bus[ourhost->cur_clk]);
> -       ret = sdhci_runtime_resume_host(host);
> +       ret = sdhci_runtime_resume_host(host, 0);
>         return ret;
>  }
>  #endif
> diff --git a/drivers/mmc/host/sdhci-sprd.c b/drivers/mmc/host/sdhci-sprd.c
> index 603a5d9..83a4767 100644
> --- a/drivers/mmc/host/sdhci-sprd.c
> +++ b/drivers/mmc/host/sdhci-sprd.c
> @@ -696,7 +696,7 @@ static int sdhci_sprd_runtime_resume(struct device *dev)
>         if (ret)
>                 goto clk_disable;
>
> -       sdhci_runtime_resume_host(host);
> +       sdhci_runtime_resume_host(host, 1);
>         return 0;
>
>  clk_disable:
> diff --git a/drivers/mmc/host/sdhci-xenon.c b/drivers/mmc/host/sdhci-xenon.c
> index 8a18f14..1dea1ba 100644
> --- a/drivers/mmc/host/sdhci-xenon.c
> +++ b/drivers/mmc/host/sdhci-xenon.c
> @@ -638,7 +638,7 @@ static int xenon_runtime_resume(struct device *dev)
>                 priv->restore_needed = false;
>         }
>
> -       ret = sdhci_runtime_resume_host(host);
> +       ret = sdhci_runtime_resume_host(host, 0);
>         if (ret)
>                 goto out;
>         return 0;
> diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
> index 59acf8e..4e9ebc8 100644
> --- a/drivers/mmc/host/sdhci.c
> +++ b/drivers/mmc/host/sdhci.c
> @@ -3320,7 +3320,7 @@ int sdhci_runtime_suspend_host(struct sdhci_host *host)
>  }
>  EXPORT_SYMBOL_GPL(sdhci_runtime_suspend_host);
>
> -int sdhci_runtime_resume_host(struct sdhci_host *host)
> +int sdhci_runtime_resume_host(struct sdhci_host *host, int soft)
>  {
>         struct mmc_host *mmc = host->mmc;
>         unsigned long flags;
> @@ -3331,7 +3331,7 @@ int sdhci_runtime_resume_host(struct sdhci_host *host)
>                         host->ops->enable_dma(host);
>         }
>
> -       sdhci_init(host, 0);
> +       sdhci_init(host, soft);
>
>         if (mmc->ios.power_mode != MMC_POWER_UNDEFINED &&
>             mmc->ios.power_mode != MMC_POWER_OFF) {
> diff --git a/drivers/mmc/host/sdhci.h b/drivers/mmc/host/sdhci.h
> index 89fd965..f3cd516 100644
> --- a/drivers/mmc/host/sdhci.h
> +++ b/drivers/mmc/host/sdhci.h
> @@ -781,7 +781,7 @@ void sdhci_adma_write_desc(struct sdhci_host *host, void **desc,
>  int sdhci_suspend_host(struct sdhci_host *host);
>  int sdhci_resume_host(struct sdhci_host *host);
>  int sdhci_runtime_suspend_host(struct sdhci_host *host);
> -int sdhci_runtime_resume_host(struct sdhci_host *host);
> +int sdhci_runtime_resume_host(struct sdhci_host *host, int soft);
>  #endif
>
>  void sdhci_cqe_enable(struct mmc_host *mmc);
> --
> 1.7.9.5
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
