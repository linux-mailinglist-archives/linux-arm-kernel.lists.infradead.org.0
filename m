Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEDEAB5D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 12:32:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g2UcrG9g5oKsVkrSl7K/sIqJTTkJelzuu55s3ZlxieA=; b=OD6ObeTfqYv1N4
	/18CeOT7/yjBC8wfe8uy+q3vikDTat4JCSXoHFoXu4xyN8d3yoNjGGTgxiP6WgXa6OL1hCSHWQzXm
	ULBBe3wn8vnZh8qO5Ma2kRxz80GyI9gqlntYB5LB2keU3yxu4+dWtIIqo6kUVa0b06MMYcxNIdJVb
	0/Iz3burzkHB+iz7nvL8i0mOKAq6HZH6GjOaxtRu4A5EZt28wBxgHoi4cCipXeXq5Y1wgO4OpEOle
	2iVoNYTvKFxGQpKz6I7XA5RsgyNI5IENjC3svZ1H2ccM4T/hf0GolFAsMOuRZIxEnZnnHTwwmteKs
	tbnJMnKckWHZkZBJ7FJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6BXQ-0004UA-Cq; Fri, 06 Sep 2019 10:32:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6BXF-0004Tn-04
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 10:32:10 +0000
Received: by mail-pf1-x444.google.com with SMTP id q5so4136340pfg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 03:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5rKq84QHOcAdoXtjiTtFTy93eGC6R/AyPPtgsMCU2W8=;
 b=oFy2Rsd4PPunJebqhYLKX+0hn+GiXdKIR3YsUvL0TG7apYKiHrbFSuXztFNnf64OE6
 SImRJTpwz9xAXIxE4dijI+7q77g025fCPPz2xNDIeemvXI9B7ZLMPm61JRlqpl08NEkQ
 DhCp4tp683IfgnaG+/0Vq7YvVaJVI6QtJKmP5fbuz+USY8RoVzijWb/ihrF5g0UWU6L5
 HdFs/dBGpT5Tt0G+JK9phbo3/w+elLztFPNzuUzgvzhCKNQK+IPM6MYDawAcH3lM8x1Z
 nYAaH+EuCw+coTkHZRV9y1SsSWqSyZYI6LaPqy0b2zs1lZU0WMsqUZf3TIUq2OEG4dEt
 VzSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5rKq84QHOcAdoXtjiTtFTy93eGC6R/AyPPtgsMCU2W8=;
 b=VX9NaUdhnvxbAzN8vlc6KjNiUGHEtGwIp8O2GOKveg1esRDuMSNDl78B3Omc4thxjd
 M+HY5zjr682nlAdvxiCUJbPWQJ/Vc03fSH3OAJqrWcqPoPB5DQKoJJaS7f09LdZLj6EX
 FKhRihIj7Ev01mFOxd1g3Zrg8x7Os6TqJPhfFsLMdEeTu+WJaObv/t5O+JJs0axBVEyL
 51RbJBsN3ey8xvfcJo3cOIvwd8bap72V3JgplBW9ILoqZMy6/1mYJpc5rRujYQeO6spM
 L8g5dF63nDHK6CNpxkL9cHIaIBAwQ/PMRXzA25DC92YqPldKRWruNM1ZMLgbi7nHHLBM
 y6zA==
X-Gm-Message-State: APjAAAUSwJWO4RR94fH16MYT2BzqFb8vLFV/gbUKeAS9WxeaKSUnMcRk
 uQ3T+tCchPHB6wiXZ5W6DKd0cQTv6CEnyXDMtryLVsChsNU=
X-Google-Smtp-Source: APXvYqwbBBttnyh2bmwK1C0I0C/xnOFUNqudsNLuzR88C4OtaQ8iSHw56xP7zh2lS2h8Lgk+c7DlEGy+U7SGFtgMPbk=
X-Received: by 2002:a17:90a:7f96:: with SMTP id
 m22mr1422911pjl.30.1567765927768; 
 Fri, 06 Sep 2019 03:32:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190906075319.21244-1-biwen.li@nxp.com>
In-Reply-To: <20190906075319.21244-1-biwen.li@nxp.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 6 Sep 2019 13:31:56 +0300
Message-ID: <CAHp75Vcz+ruwvq_yu6Oj69XTezsdnne049Ma=oTRPjRXJKnhPQ@mail.gmail.com>
Subject: Re: [v2] ACPI: support for NXP i2c controller
To: Biwen Li <biwen.li@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_033209_045950_3A3498E4 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Wolfram Sang <wsa@the-dreams.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Udit Kumar <udit.kumar@nxp.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Meenakshi Aggarwal <meenakshi.aggarwal@nxp.com>,
 linux-i2c <linux-i2c@vger.kernel.org>, Chuanhua Han <chuanhua.han@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 11:03 AM Biwen Li <biwen.li@nxp.com> wrote:
>
> From: Chuanhua Han <chuanhua.han@nxp.com>
>
> Enable NXP i2c controller to boot with ACPI
>

Thanks, the code looks good to me,
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

though...

> Signed-off-by: Meenakshi Aggarwal <meenakshi.aggarwal@nxp.com>
> Signed-off-by: Udit Kumar <udit.kumar@nxp.com>
> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>

This SoB chain is a bit odd. Who is the author of this? The first SoB
in the chain usually points to the first (main) author. There is also
possible to change that, though in that case for the rest we now use
Co-developed-by tag rather than SoB.
In any case, if Rafael and Wolfram are okay with this, I have no objections.

> Signed-off-by: Biwen Li <biwen.li@nxp.com>
> ---
> Change in v2:
>         - Simplify code
>         - Adjust header file order
>         - Not use ACPI_PTR()
>
>  drivers/acpi/acpi_apd.c      |  7 +++++++
>  drivers/i2c/busses/i2c-imx.c | 17 +++++++++++++----
>  2 files changed, 20 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/acpi/acpi_apd.c b/drivers/acpi/acpi_apd.c
> index 7cd0c9ac71ea..71511ae2dfcd 100644
> --- a/drivers/acpi/acpi_apd.c
> +++ b/drivers/acpi/acpi_apd.c
> @@ -160,11 +160,17 @@ static const struct apd_device_desc hip08_i2c_desc = {
>         .setup = acpi_apd_setup,
>         .fixed_clk_rate = 250000000,
>  };
> +
>  static const struct apd_device_desc thunderx2_i2c_desc = {
>         .setup = acpi_apd_setup,
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
> @@ -238,6 +244,7 @@ static const struct acpi_device_id acpi_apd_device_ids[] = {
>         { "HISI02A1", APD_ADDR(hip07_i2c_desc) },
>         { "HISI02A2", APD_ADDR(hip08_i2c_desc) },
>         { "HISI0173", APD_ADDR(hip08_spi_desc) },
> +       { "NXP0001", APD_ADDR(nxp_i2c_desc) },
>  #endif
>         { }
>  };
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index 15f6cde6452f..a3b61336fe55 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -20,6 +20,7 @@
>   *
>   */
>
> +#include <linux/acpi.h>
>  #include <linux/clk.h>
>  #include <linux/completion.h>
>  #include <linux/delay.h>
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
> @@ -1048,14 +1055,13 @@ static const struct i2c_algorithm i2c_imx_algo = {
>
>  static int i2c_imx_probe(struct platform_device *pdev)
>  {
> -       const struct of_device_id *of_id = of_match_device(i2c_imx_dt_ids,
> -                                                          &pdev->dev);
>         struct imx_i2c_struct *i2c_imx;
>         struct resource *res;
>         struct imxi2c_platform_data *pdata = dev_get_platdata(&pdev->dev);
>         void __iomem *base;
>         int irq, ret;
>         dma_addr_t phy_addr;
> +       const struct imx_i2c_hwdata *match;
>
>         dev_dbg(&pdev->dev, "<%s>\n", __func__);
>
> @@ -1075,8 +1081,9 @@ static int i2c_imx_probe(struct platform_device *pdev)
>         if (!i2c_imx)
>                 return -ENOMEM;
>
> -       if (of_id)
> -               i2c_imx->hwdata = of_id->data;
> +       match = device_get_match_data(&pdev->dev);
> +       if (match)
> +               i2c_imx->hwdata = match;
>         else
>                 i2c_imx->hwdata = (struct imx_i2c_hwdata *)
>                                 platform_get_device_id(pdev)->driver_data;
> @@ -1089,6 +1096,7 @@ static int i2c_imx_probe(struct platform_device *pdev)
>         i2c_imx->adapter.nr             = pdev->id;
>         i2c_imx->adapter.dev.of_node    = pdev->dev.of_node;
>         i2c_imx->base                   = base;
> +       ACPI_COMPANION_SET(&i2c_imx->adapter.dev, ACPI_COMPANION(&pdev->dev));
>
>         /* Get I2C clock */
>         i2c_imx->clk = devm_clk_get(&pdev->dev, NULL);
> @@ -1247,6 +1255,7 @@ static struct platform_driver i2c_imx_driver = {
>                 .name = DRIVER_NAME,
>                 .pm = &i2c_imx_pm_ops,
>                 .of_match_table = i2c_imx_dt_ids,
> +               .acpi_match_table = i2c_imx_acpi_ids,
>         },
>         .id_table = imx_i2c_devtype,
>  };
> --
> 2.17.1
>


-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
