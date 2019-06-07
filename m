Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD30138887
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 13:08:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B/+7Gbt6MtYXCeA0S8rxRDanLlHVJ8LWDdNFXoCctoU=; b=jGZwanjAg8B9hB
	jmt6bph2CQtk+DvsrsVDgZxyZY97jjPc5uo7LMwOc6mK6AE35Pyz451z++jk499EXAOatkIooidAm
	wfks0vu9caWoR36R9kmHIT0g3tZupqbxWn/A3hHwxZjznOj6rvAOZHTOhVe6BncQgeXwcsul4YI3Y
	1ytoxCawj+8CPtHf8R9pACdgcJqEivSN//vB8v7pnQD2/aScuzDZL3ipje1aLkSYw6ydAeWdQ7i3e
	ZFEqQKtYlsLBk6Xegr7jS9vngSznY9tG0fZ5YXRgkL13ew6zFKRO0OKa+jtPzN0f6/WssTXwfwgfK
	ZQSmzUM+WZoAwQSS4qqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZCjo-00085o-CU; Fri, 07 Jun 2019 11:08:48 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZCje-000853-5j
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 11:08:39 +0000
Received: by mail-io1-xd41.google.com with SMTP id k8so1093584iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 04:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GXA3Jr+Mhw7TJ/Zj0rrWncqBfBkrIy8iCvF3ptMXOGE=;
 b=kKmWVm7KNq1gSBghKEw8JHjybhOI4fZHTnGfp2JTChD6SU08oV8twygIt6if0dSujm
 YFYcFhgdSb4cTtmxOX8hlja4HscZv35gluhEq+WILhmLtf2CXLYanIgjfETslUG3AIee
 77sfg8QmheYJ1Y9FMyJqEHmU78MGah8K9YstGDvrZfeib4m1GrGI77FH36AgGhfNvtmE
 5XRu8K1G/HTl0HNGtTgagJfajtF11z8NCLRF/bWYbXO0Oyb+PhDvuHUiw0aPyucijghq
 K7QZDmenykjrYN02pdjgCGLSvTWxLAYh1G8X164OxAHcifc+HYiAB0/+HlO43PpdrFIq
 Rx3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GXA3Jr+Mhw7TJ/Zj0rrWncqBfBkrIy8iCvF3ptMXOGE=;
 b=dB1+6Jykaanb6FWBfMU48ke/mFH4T4+becHbHVBSASvMZ6/AnAf/VIN7k6/zjQmqFq
 VMy58miXObZ0kkJUHC+EzNrW0beeXTtl9hGM4N0Rbt93NkdwBN8/G9R3pV1RgIDin10Q
 IKiUuayP6ZCX4maHWOOBTTzbBAwpX4aos5S8duFpInTsM6rHwY2WD4baVmdEO4U6HCaW
 FGi3Y5Oh/pV117oOw13wY3E/oLZPvB9Gga70iqu9ZS1ots2rqwn55dfbE/wNJic43Z1A
 wknK7mNaXv5LAyAVRWiM73EB9+rvQsFYApuWNTGn1jLBRi1RdbNLxJv4DqQMZN4OzMjR
 moUQ==
X-Gm-Message-State: APjAAAWbSIcBY5d2Ewrdc0mKgy+2FwqFfY93zXnHpq3wL9v4n3FyoTzE
 4IGKmnNzq2vSsSp0KZHb8im2fU4gOe61mDNESI44GA==
X-Google-Smtp-Source: APXvYqx+hd94b4UUsZSCPJJ96EY6XV+oXjukJZTTRGg/pxcsi1nOH4E1wPdCHkE5/rIixOEkqC0BmTndCcDQVsRhVM8=
X-Received: by 2002:a05:6602:98:: with SMTP id h24mr300107iob.49.1559905716603; 
 Fri, 07 Jun 2019 04:08:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190607082901.6491-1-lee.jones@linaro.org>
In-Reply-To: <20190607082901.6491-1-lee.jones@linaro.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 7 Jun 2019 13:08:25 +0200
Message-ID: <CAKv+Gu_SP7qBggCrVkF41BimV3PnCQXb5OUKyCsE0bBxa68RZA@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] i2c: i2c-qcom-geni: Provide support for ACPI
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_040838_223962_D86C93EA 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, alokc@codeaurora.org,
 linux-i2c <linux-i2c@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Jeffrey Hugo <jlhugo@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 7 Jun 2019 at 10:29, Lee Jones <lee.jones@linaro.org> wrote:
>
> Add a match table to allow automatic probing of ACPI device
> QCOM0220.  Ignore clock attainment errors.  Set default clock
> frequency value.
>
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/i2c/busses/i2c-qcom-geni.c | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
> index db075bc0d952..0fa93b448e8d 100644
> --- a/drivers/i2c/busses/i2c-qcom-geni.c
> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  // Copyright (c) 2017-2018, The Linux Foundation. All rights reserved.
>
> +#include <linux/acpi.h>
>  #include <linux/clk.h>
>  #include <linux/dma-mapping.h>
>  #include <linux/err.h>
> @@ -483,6 +484,12 @@ static const struct i2c_algorithm geni_i2c_algo = {
>         .functionality  = geni_i2c_func,
>  };
>
> +static const struct acpi_device_id geni_i2c_acpi_match[] = {
> +       { "QCOM0220"},
> +       { },
> +};
> +MODULE_DEVICE_TABLE(acpi, geni_i2c_acpi_match);
> +

We usually put #ifdef CONFIG_ACPI/#endif around these, otherwise you
end up with acpi:XXXX modaliases even though ACPI is not compiled in.

>  static int geni_i2c_probe(struct platform_device *pdev)
>  {
>         struct geni_i2c_dev *gi2c;
> @@ -502,7 +509,7 @@ static int geni_i2c_probe(struct platform_device *pdev)
>                 return PTR_ERR(gi2c->se.base);
>
>         gi2c->se.clk = devm_clk_get(&pdev->dev, "se");

Can we avoid this call altogether in ACPI mode? Also, please use
'has_acpi_companion()' to test whether we are probing via ACPI.

> -       if (IS_ERR(gi2c->se.clk)) {
> +       if (IS_ERR(gi2c->se.clk) && !ACPI_HANDLE(&pdev->dev)) {


>                 ret = PTR_ERR(gi2c->se.clk);
>                 dev_err(&pdev->dev, "Err getting SE Core clk %d\n", ret);
>                 return ret;
> @@ -510,12 +517,19 @@ static int geni_i2c_probe(struct platform_device *pdev)
>
>         ret = device_property_read_u32(&pdev->dev, "clock-frequency",
>                                                         &gi2c->clk_freq_out);
> -       if (ret) {
> +       if (ret && !ACPI_HANDLE(&pdev->dev)) {
>                 dev_info(&pdev->dev,
>                         "Bus frequency not specified, default to 100kHz.\n");
>                 gi2c->clk_freq_out = KHZ(100);
>         }
>
> +       if (ACPI_HANDLE(&pdev->dev)) {
> +               ACPI_COMPANION_SET(&gi2c->adap.dev, ACPI_COMPANION(&pdev->dev));
> +
> +               /* Using default, same as the !ACPI case above */
> +               gi2c->clk_freq_out = KHZ(100);
> +       }
> +

You are overriding the speed to 100 kHz even if the ACPI device has a
"clock-frequency" property.

>         gi2c->irq = platform_get_irq(pdev, 0);
>         if (gi2c->irq < 0) {
>                 dev_err(&pdev->dev, "IRQ error for i2c-geni\n");
> @@ -660,6 +674,7 @@ static struct platform_driver geni_i2c_driver = {
>                 .name = "geni_i2c",
>                 .pm = &geni_i2c_pm_ops,
>                 .of_match_table = geni_i2c_dt_match,
> +               .acpi_match_table = ACPI_PTR(geni_i2c_acpi_match),
>         },
>  };
>
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
