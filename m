Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB86A9EA1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eD9KHaRFGkGRwh8F2SkmfSStwK8JOnbMixGXhxSRCbA=; b=SQICdxxOZ02Job
	OF+9JtxdsjlhQ9etX2PP/E4bCRmqDfBClaZ+4Q/9JK2Bde3vMC7UHihuYluNTY87+UKSA5DGp7DRO
	Wc/Q5+frpJ9dQM58flHGB9JbOJLu0RIo6wzfhdhDvVyn9YdVxK4+7mCx45B/7XRL/uoyhnM0egTMU
	m/rcnfS0vqyGk0aFvquxiEgL/FTPamtdVyVbQHtk8d7066qA8gAR2vwaFm9cqVHHaD2ZdTQpRQdJG
	9gJ4lY3Ub4Ch/8i4tlQ02Wqtr8ZIxjBF7NSmngQVfTid4PBHqd4XTyqttYqoVbH2wyIYL/C5g2Jvs
	rHym5Fo2PeutDpwg1vug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bsv-0008BW-65; Tue, 27 Aug 2019 13:51:45 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2brg-0006xc-CV
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:50:32 +0000
Received: by mail-vs1-xe41.google.com with SMTP id y62so13485150vsb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 06:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9nTdAXMkkDWuizv1tysprjOJ2R0IJRbo/lx0RTYg+gg=;
 b=lRFCIPmx30bbAcvZ3ja1zoN/Q3+vSqfaVYAcaCKhScS9+a4YuFNPLRxB9y5OIZW+Iu
 6pa5Iu/6QsGXgoEY5AB8deRH2GTZgetkr0vkJL6dpQ4V0cl0AHjU48W6ayhzWNXsgMuL
 /3GYi+XhaOw8Wi5LXWnKjn6WgGak6tZhmxOIZWPfBop/ZWYefWw46yN0SAPYQCBO7WMN
 zMJvjGTPUCviMFP2pVUsoXeG//iGiUMhfuVu2czaHGlLoJAO/pbzLBl48LxnmKEsmfZk
 bmfQvPvgwX4m9OyGWFQNO5nK+jZ2umhflxqFk4orYXIMuiKov8bBIoNu34lHmvkenMS2
 lx9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9nTdAXMkkDWuizv1tysprjOJ2R0IJRbo/lx0RTYg+gg=;
 b=KvB4zxKgrix7demctysQglIG1qXTgH987Xux2atDC+KrlgbCr6Ar8BI/pHaXbtjt+n
 2kxYvmJoFSX1KzBFRuxJi2EpXw+Gwi+GLsJe6i7zPmMjNuBg14rXU6ia5oDlxIBDQbgX
 RwJO6+Iu6hnkGeboWk3Rs5r/wtIr/0jCpwXJ5BeWuY8heqvskcIktlhePfYpv0yjx9Bj
 KtdmzYAVzt/J//kYs0P2wGH5EGsGalMwAKMdT0+TkgTwZ/bAhFT7Sbe0lf7nS9rp+RIC
 oPvdc+GZR/tVNy0H279Hr28sey3pHgSCsB8h09MdrZtIZSvAfhORPv3hA7VxFtPIO5N3
 VQDA==
X-Gm-Message-State: APjAAAWAl0QRFH/QIIJp6efZywSt7c/aGeWHEU/fGFWRkAreOagCq3F7
 Df8K5ppYOAH+SHonZw+ewpzBiFOri4b3hK2/iWToIA==
X-Google-Smtp-Source: APXvYqxuL5QLvtpihYjZI5CsVwD6jsXto4QZa31USkmsbOyid71SgorLhwLsMkfjsVyq/LxIIJYnJj5VAXPG3DJ54S8=
X-Received: by 2002:a67:32c5:: with SMTP id
 y188mr13651472vsy.191.1566913827420; 
 Tue, 27 Aug 2019 06:50:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190826072800.38413-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20190826072800.38413-2-vadivel.muruganx.ramuthevar@linux.intel.com>
In-Reply-To: <20190826072800.38413-2-vadivel.muruganx.ramuthevar@linux.intel.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 27 Aug 2019 15:49:49 +0200
Message-ID: <CAPDyKFrPoPqnh3_23P=wGO+QrUE9ogJzC6xgzy+0QeyuyeO=HQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] mmc: sdhci-of-arasan: Add Support for Intel LGM
 eMMC
To: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_065028_528034_E6121CD1 
X-CRM114-Status: GOOD (  16.71  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 qi-ming.wu@intel.com, andriy.shevchenko@intel.com, cheol.yong.kim@intel.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 26 Aug 2019 at 09:28, Ramuthevar,Vadivel MuruganX
<vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
>
> From: Ramuthevar Vadivel Muruganx <vadivel.muruganx.ramuthevar@linux.intel.com>
>
> The current arasan sdhci PHY configuration isn't compatible
> with the PHY on Intel's LGM(Lightning Mountain) SoC devices.
>
> Therefore, add a new compatible, to adapt the Intel's LGM
> eMMC PHY with arasan-sdhc controller to configure the PHY.
>
> Signed-off-by: Ramuthevar Vadivel Muruganx <vadivel.muruganx.ramuthevar@linux.intel.com>


Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/sdhci-of-arasan.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
> index b12abf9b15f2..7023cbec4017 100644
> --- a/drivers/mmc/host/sdhci-of-arasan.c
> +++ b/drivers/mmc/host/sdhci-of-arasan.c
> @@ -114,6 +114,12 @@ static const struct sdhci_arasan_soc_ctl_map rk3399_soc_ctl_map = {
>         .hiword_update = true,
>  };
>
> +static const struct sdhci_arasan_soc_ctl_map intel_lgm_emmc_soc_ctl_map = {
> +       .baseclkfreq = { .reg = 0xa0, .width = 8, .shift = 2 },
> +       .clockmultiplier = { .reg = 0, .width = -1, .shift = -1 },
> +       .hiword_update = false,
> +};
> +
>  /**
>   * sdhci_arasan_syscon_write - Write to a field in soc_ctl registers
>   *
> @@ -373,6 +379,11 @@ static struct sdhci_arasan_of_data sdhci_arasan_rk3399_data = {
>         .pdata = &sdhci_arasan_cqe_pdata,
>  };
>
> +static struct sdhci_arasan_of_data intel_lgm_emmc_data = {
> +       .soc_ctl_map = &intel_lgm_emmc_soc_ctl_map,
> +       .pdata = &sdhci_arasan_cqe_pdata,
> +};
> +
>  #ifdef CONFIG_PM_SLEEP
>  /**
>   * sdhci_arasan_suspend - Suspend method for the driver
> @@ -474,6 +485,10 @@ static const struct of_device_id sdhci_arasan_of_match[] = {
>                 .compatible = "rockchip,rk3399-sdhci-5.1",
>                 .data = &sdhci_arasan_rk3399_data,
>         },
> +       {
> +               .compatible = "intel,lgm-sdhci-5.1-emmc",
> +               .data = &intel_lgm_emmc_data,
> +       },
>         /* Generic compatible below here */
>         {
>                 .compatible = "arasan,sdhci-8.9a",
> --
> 2.11.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
