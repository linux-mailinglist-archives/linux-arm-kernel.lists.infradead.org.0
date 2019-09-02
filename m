Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79592A5D3D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 22:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l5gNlD5+dGEJgUPwCE5tYfvtNX/hedLy+BrbFUG/KM0=; b=FPyKZVIe7IvH+b
	ZoHdavYsCOFzfulRWBcT5BNR/U8GYNZb8wrYqFfSPVW9Vc/zpibDPKtfjbjrr6wzi/YDaEylgBy4r
	TWhpoJ2VGOKB3w4uqnJlTWZ1UYcoFUZmlqPxHGyKbpe3v6mGRRo+rHkHT+afdNC4bchYBkpSMAizZ
	0/7htA1cWm2eqJoQuuMQCdKIGAfLEo5oJir+BK1nyAkurU57364M4Ool25aXBWxhBYfU7KJSPBOio
	72kB4rIY6rwElD+z7HUXHJg/miy9B6ToU3g2bCtG93RXIyZfJLtgZDZlBY63wzJjpt6pHZEve12ib
	o33Z9RHYujV4ifxVN+lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4tNX-0006vy-3F; Mon, 02 Sep 2019 20:56:47 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4tNL-0006vc-MX
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 20:56:37 +0000
Received: by mail-oi1-f194.google.com with SMTP id h4so7800049oih.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 13:56:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hHBlqhf1Pfrvrw+3NXufBPmdnxMIhZ7FoOVj1GVHXPE=;
 b=TE7FSQQQR249q0RMrv403zLNkGSN2ryOnwuWz30k4sAFMcU02GCwaCY4Kr1xAX4sfL
 CCGqqmCnEIeVcB5I9UY5fOmJhOKvuq4jKhOWoCRDWSLYpK6k3IeXGm7DNFwDru7NLrjp
 cDBoGfMWS8P/miUJIvg503cKQlGfslBBqIWRi3jaj8m0B87Fy2EyfOE+WbBqnc1aAdZo
 9I6v5kn43X3hiSzlktLOGXaG5xju0vL9guQPkkVj+QgLAHmoUGhQJ8EglxovMKXANvLC
 WHj+I1YozJgPMFzk6/ZizLWgTrFpFKiCFJdceVRsaK4bowtJ/IAQjLxqjt0GfS0t7tqu
 a5kA==
X-Gm-Message-State: APjAAAWFj8Th1OvzWMXxLES9+AHVI8ezZaS13/zPcv+bfxJ04BvR0ezV
 ZZX2bzOIKgm0MTFmUvtIw0myTT9Ky+MUPVuHYa8=
X-Google-Smtp-Source: APXvYqzYYelZGMbZ3HtKmmG6PLaB4H45noR4424r5L/BE0qskiSX0U6Mc327EF9USMVBKANFkGyAvxOuRxmqk4Tuino=
X-Received: by 2002:aca:b808:: with SMTP id i8mr19414718oif.68.1567457794237; 
 Mon, 02 Sep 2019 13:56:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190711102601.20582-1-chuanhua.han@nxp.com>
In-Reply-To: <20190711102601.20582-1-chuanhua.han@nxp.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 2 Sep 2019 22:56:22 +0200
Message-ID: <CAJZ5v0hY2sL+XfN_4v07_hjvoxgCAt+Q89+wNg5Pky6XKP-mqA@mail.gmail.com>
Subject: Re: [PATCH] ACPI: support for NXP i2c controller
To: Chuanhua Han <chuanhua.han@nxp.com>, Wolfram Sang <wsa@the-dreams.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_135635_739901_8C1BBD99 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Udit Kumar <udit.kumar@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Meenakshi Aggarwal <meenakshi.aggarwal@nxp.com>,
 linux-i2c <linux-i2c@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 12:35 PM Chuanhua Han <chuanhua.han@nxp.com> wrote:
>
> Enable NXP i2c controller to boot with ACPI
>
> Signed-off-by: Meenakshi Aggarwal <meenakshi.aggarwal@nxp.com>
> Signed-off-by: Udit Kumar <udit.kumar@nxp.com>
> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>

Wolfram, any objections to this from the i2c side?

> ---
>  drivers/acpi/acpi_apd.c      |  6 ++++++
>  drivers/i2c/busses/i2c-imx.c | 15 +++++++++++++++
>  2 files changed, 21 insertions(+)
>
> diff --git a/drivers/acpi/acpi_apd.c b/drivers/acpi/acpi_apd.c
> index ff47317..cf8566c 100644
> --- a/drivers/acpi/acpi_apd.c
> +++ b/drivers/acpi/acpi_apd.c
> @@ -165,6 +165,11 @@ static const struct apd_device_desc thunderx2_i2c_desc = {
>         .fixed_clk_rate = 125000000,
>  };
>
> +static const struct apd_device_desc nxp_i2c_desc = {
> +       .setup = acpi_apd_setup,
> +       .fixed_clk_rate = 350000000,
> +};
> +
>  static const struct apd_device_desc hip08_spi_desc = {
>         .setup = acpi_apd_setup,
>         .fixed_clk_rate = 250000000,
> @@ -238,6 +243,7 @@ static const struct acpi_device_id acpi_apd_device_ids[] = {
>         { "HISI02A1", APD_ADDR(hip07_i2c_desc) },
>         { "HISI02A2", APD_ADDR(hip08_i2c_desc) },
>         { "HISI0173", APD_ADDR(hip08_spi_desc) },
> +       { "NXP0001", APD_ADDR(nxp_i2c_desc) },
>  #endif
>         { }
>  };
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index b1b8b93..99f9b96 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -44,6 +44,7 @@
>  #include <linux/pm_runtime.h>
>  #include <linux/sched.h>
>  #include <linux/slab.h>
> +#include <linux/acpi.h>
>
>  /* This will be the driver name the kernel reports */
>  #define DRIVER_NAME "imx-i2c"
> @@ -255,6 +256,12 @@ static const struct of_device_id i2c_imx_dt_ids[] = {
>  };
>  MODULE_DEVICE_TABLE(of, i2c_imx_dt_ids);
>
> +static const struct acpi_device_id i2c_imx_acpi_ids[] = {
> +       {"NXP0001", .driver_data = (kernel_ulong_t)&vf610_i2c_hwdata},
> +       { }
> +};
> +MODULE_DEVICE_TABLE(acpi, i2c_imx_acpi_ids);
> +
>  static inline int is_imx1_i2c(struct imx_i2c_struct *i2c_imx)
>  {
>         return i2c_imx->hwdata->devtype == IMX1_I2C;
> @@ -1052,6 +1059,9 @@ static int i2c_imx_probe(struct platform_device *pdev)
>  {
>         const struct of_device_id *of_id = of_match_device(i2c_imx_dt_ids,
>                                                            &pdev->dev);
> +       const struct acpi_device_id *acpi_id =
> +                       acpi_match_device(i2c_imx_acpi_ids,
> +                                         &pdev->dev);
>         struct imx_i2c_struct *i2c_imx;
>         struct resource *res;
>         struct imxi2c_platform_data *pdata = dev_get_platdata(&pdev->dev);
> @@ -1079,6 +1089,9 @@ static int i2c_imx_probe(struct platform_device *pdev)
>
>         if (of_id)
>                 i2c_imx->hwdata = of_id->data;
> +       else if (acpi_id)
> +               i2c_imx->hwdata = (struct imx_i2c_hwdata *)
> +                               acpi_id->driver_data;
>         else
>                 i2c_imx->hwdata = (struct imx_i2c_hwdata *)
>                                 platform_get_device_id(pdev)->driver_data;
> @@ -1091,6 +1104,7 @@ static int i2c_imx_probe(struct platform_device *pdev)
>         i2c_imx->adapter.nr             = pdev->id;
>         i2c_imx->adapter.dev.of_node    = pdev->dev.of_node;
>         i2c_imx->base                   = base;
> +       ACPI_COMPANION_SET(&i2c_imx->adapter.dev, ACPI_COMPANION(&pdev->dev));
>
>         /* Get I2C clock */
>         i2c_imx->clk = devm_clk_get(&pdev->dev, NULL);
> @@ -1253,6 +1267,7 @@ static struct platform_driver i2c_imx_driver = {
>                 .name = DRIVER_NAME,
>                 .pm = &i2c_imx_pm_ops,
>                 .of_match_table = i2c_imx_dt_ids,
> +               .acpi_match_table = ACPI_PTR(i2c_imx_acpi_ids),
>         },
>         .id_table = imx_i2c_devtype,
>  };
> --
> 2.9.5
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
