Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AE33B117
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 10:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ciN12OS+p/+JzDdP5tg2BNNi0oCWV60t6Aw5qKEmLzc=; b=mX2vm31SzHqp1s
	KZ0YkVq6obeT2iiecO27vX5ye7hwvKEBLbL+LEHcUcyVTVsnRSwNdHhOvVnYx+yiR6r0d6oiy+B88
	BuZEbISpOaTumbyhm01GQ6KcTlQL8mvVtj5s5WDA1869vYZwHn7xS11ljpJejd1etXLbg/6h8PCXV
	aYiPv8NRu45rzbNsA8QpZo+iSTOVOe1AM4o1w9gicPgpAlbnuFWyrCGo3avbB98UV4rHbdKVQPV9B
	c2AjeT+5MbIn1KLNzskOVTOda6Clw7szH18HOnhK3NKdHxtlqQjc1ZDqwJssrVMlvzYrS8EMiLSoh
	dT09MsfOHLhNDvTVtHVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFvg-0004Rl-2N; Mon, 10 Jun 2019 08:45:24 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFur-00041t-Cg
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 08:44:35 +0000
Received: by mail-it1-x143.google.com with SMTP id q14so10857218itc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 01:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VS+cgEF/QUrbLF7DuqoiP4P2XAG1E5uMf3M9NoVhDxc=;
 b=DK+uSuretD7HL2a7vsPPnfX+8oGDG1VU/1GW3bNgb2Ee3mlXI/EOFVpP71A1qCzXmV
 qdq2OtFbX/XHjAVPfppxUcaVS0NKqNSJGPnYsfBuj0fqOQ1QstV+o4rfTetA4URaJBQy
 uoooP6cJSJS5sWkHj/DxE98Nntg/SUyT37V1pSRlpNzgzDJW084gU7ULnySZeBZc0GiQ
 /UqxysPa4zWEXmNTK+aHxuxZEu0Lnx+tNdN7d4AcMHl6cN96/WolqeISR9Yt9qpROthj
 6rK86ggqQAlclsN6bGEHYdS7LfAnNh8jifGC0KHGOdoulTaGk6lNYT20ntnXk+DDjHF1
 /hEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VS+cgEF/QUrbLF7DuqoiP4P2XAG1E5uMf3M9NoVhDxc=;
 b=MivXOEc1s0xh5mchW1dolOCsn1sgy8LMp8rTyLwY+SElolwGMani4BX24S9QrnT9m+
 Tq6d2VYZWHrccMvuP4IH9X9HJLhvtMfpOZzzbhDeTeS91vITSzuHFIJIzcVvygJMWrGd
 Mtp5hQpVRNpBGSIdTCTA+okNIwdcdXct7Dw5h/An+gNpcoO2pPczLmYezn41twnkJnYy
 TQxUUN9Mqd1WcND/B9AfBGDpGzuw3t4vWx9OrILvnLHEUf6FXXOo0TDGgcw7rKmZsn03
 hCpKO0S9zQqTikQp8+gK+0/tO4PDG652FBLgTorejh5Jd1b4Jg2fkF5sXkpMd/ZkSKPs
 TKlw==
X-Gm-Message-State: APjAAAWVs1z/Bc9cUf/9MA+tkbUnZGvhVrR37nDHKjirm++Tr3L1QD4N
 g3OASJjW17KJaRHsOPREBfhW/vM69Tvhw9lCBXQJaw==
X-Google-Smtp-Source: APXvYqyFs/Qz/+BC0ZDFUppIgbEfWY14++ciL9hJj1GnRU8+kHd3W+8xr8lU+QumsR1X+b0RC4Ha2EIH/Cvf+6SH3Ws=
X-Received: by 2002:a02:ce37:: with SMTP id v23mr44208035jar.2.1560156271880; 
 Mon, 10 Jun 2019 01:44:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190610084213.1052-1-lee.jones@linaro.org>
In-Reply-To: <20190610084213.1052-1-lee.jones@linaro.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 10 Jun 2019 10:44:19 +0200
Message-ID: <CAKv+Gu9UYQmPS0UxYztNTiFLYA1kqtL4HxttqFQovc26hffwmg@mail.gmail.com>
Subject: Re: [PATCH v3 1/8] i2c: i2c-qcom-geni: Provide support for ACPI
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_014433_526612_E1E59DC3 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, 10 Jun 2019 at 10:42, Lee Jones <lee.jones@linaro.org> wrote:
>
> Add a match table to allow automatic probing of ACPI device
> QCOM0220.  Ignore clock attainment errors.  Set default clock
> frequency value.
>
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

> ---
>  drivers/i2c/busses/i2c-qcom-geni.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
> index db075bc0d952..9e3b8a98688d 100644
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
> @@ -483,6 +484,14 @@ static const struct i2c_algorithm geni_i2c_algo = {
>         .functionality  = geni_i2c_func,
>  };
>
> +#ifdef CONFIG_ACPI
> +static const struct acpi_device_id geni_i2c_acpi_match[] = {
> +       { "QCOM0220"},
> +       { },
> +};
> +MODULE_DEVICE_TABLE(acpi, geni_i2c_acpi_match);
> +#endif
> +
>  static int geni_i2c_probe(struct platform_device *pdev)
>  {
>         struct geni_i2c_dev *gi2c;
> @@ -502,7 +511,7 @@ static int geni_i2c_probe(struct platform_device *pdev)
>                 return PTR_ERR(gi2c->se.base);
>
>         gi2c->se.clk = devm_clk_get(&pdev->dev, "se");
> -       if (IS_ERR(gi2c->se.clk)) {
> +       if (IS_ERR(gi2c->se.clk) && !has_acpi_companion(&pdev->dev)) {
>                 ret = PTR_ERR(gi2c->se.clk);
>                 dev_err(&pdev->dev, "Err getting SE Core clk %d\n", ret);
>                 return ret;
> @@ -516,6 +525,9 @@ static int geni_i2c_probe(struct platform_device *pdev)
>                 gi2c->clk_freq_out = KHZ(100);
>         }
>
> +       if (has_acpi_companion(&pdev->dev))
> +               ACPI_COMPANION_SET(&gi2c->adap.dev, ACPI_COMPANION(&pdev->dev));
> +
>         gi2c->irq = platform_get_irq(pdev, 0);
>         if (gi2c->irq < 0) {
>                 dev_err(&pdev->dev, "IRQ error for i2c-geni\n");
> @@ -660,6 +672,7 @@ static struct platform_driver geni_i2c_driver = {
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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
