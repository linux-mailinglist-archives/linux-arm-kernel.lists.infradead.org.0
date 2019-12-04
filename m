Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 744761127DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 10:39:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wygLxeCHwLb69uY/K7YWnGAcjEYpdvrXZ5evyn10KXw=; b=WBoml7UFuIYjvf
	fEgJJuxJVXQjeB6067n8dGLXyO6vI9W5NgbleGv9aPOzkK4rtgfA+gBrA/zpXFUD0HwQ4pHUWQnj5
	6Zi016IQY5IaY3BYxOPN45vfMux1rY9jqznD6W2hUsPTvZ7F6oAbgAOVswXDMG5n0tVi9IsBWzOhg
	HKlJc0qZLzaKohBr9T7xU1otN4qwSPV/EAxLyeDkXXKN7HDJC153+Ctxn3uF6S/EzgZyB6VCgEtrS
	DAsz1caexhZ9SfZKLfDPMFzLdUXhc4K3ZtOxKc0CqOi2fpXirWOX2b8EHjnBmGOsPN3MvgUpttCNK
	8AxafuTl6DNYQwVJqJmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icR7d-0002nR-JB; Wed, 04 Dec 2019 09:39:01 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icR7W-0002mp-Rc
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 09:38:56 +0000
Received: by mail-vk1-xa42.google.com with SMTP id g7so296141vkl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 01:38:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kBM+7sKdP9ujCe9ALp3o3fbTa5VggqfmCZsELUt7gmY=;
 b=KmCelkEDW//pN0sIHhURzAdIgLRrtV4W3ZvTphxbkEmsYa1UnJ8NBPQ6XL/j0Bldte
 kJyRTSZQ+yPMegb0hHGLLP/ToYjBXYveq8S5Swj1BjlkIp3xFREhO+MPg+AiRGAiqibI
 p1TqIRD0ZqDISySdUxlmYNiOhjm3vULrjvK394FDYqQym+DAcYdt61u2UBwvkjBm2J0V
 Yo4ZP5rt0xsVN6qBRHM4UkVQX/Qo2ZiEHo0Ipxym4ZMYrruHY2nBXI0odgsaghVkmVtV
 rsEMmkg4qNTOwmkU5ESS+kg0giexdzQjnQ9Qd2EAPb35bPQRkSChyoHVSMRHqmOKCPuG
 g3BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kBM+7sKdP9ujCe9ALp3o3fbTa5VggqfmCZsELUt7gmY=;
 b=iaBPZwY5nrSwcQYJnEP1pZ4pjf/fgueelDXZ46wiSJtR8blwHz6z32VsADamN2/tcV
 JaD//hl/5ZWW54212R/RLkv21q24+NTBV362zcn/lrAvC+wzbbnMBl9yH0ILV5D8QE4P
 MxB4Q65oXdYVHSFkFDGj+BXite7KRe73aaHwwG54e2HI1FjpcWQQKIaPtdWcU4No9MWp
 T3lXnO7zKia6RwA0g6f+hPfqEy3VFkJbnmiH+0iOumE4rcHNyop74Q/Uc4YbxrVGTWYp
 End050upH9MCXGSO+AJx95d8Zl62xwqS0is+mTbGEMuTQRDR5cJTX7m2r/kkOvjHvhWX
 R/Dg==
X-Gm-Message-State: APjAAAWKLi8nHk3ac4gzpV46sT0M+58rJnIDj5sID+K81hIRr3NM4nBm
 E+jvsgeki0mLnH5Y83dtnnLuiEIbBTnWKLT18rrQBQ==
X-Google-Smtp-Source: APXvYqwiUoUoPZvgpG+ifopwxSLWwG1iOG5+9d9DmpNIKyb1VOCcZCyapnluKjwiXLoMcJdRA6EYd8bNW2NVGYtZ3eU=
X-Received: by 2002:ac5:c4f8:: with SMTP id b24mr1401815vkl.79.1575452333245; 
 Wed, 04 Dec 2019 01:38:53 -0800 (PST)
MIME-Version: 1.0
References: <20191030182132.25763-1-f.fainelli@gmail.com>
 <20191030182132.25763-7-f.fainelli@gmail.com>
In-Reply-To: <20191030182132.25763-7-f.fainelli@gmail.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Wed, 4 Dec 2019 15:08:41 +0530
Message-ID: <CAHLCerPyJxsLs5at4dQ7GdDXpC85UijNNhJbKSoDsdLW2do00w@mail.gmail.com>
Subject: Re: [PATCH 6/6] thermal: brcmstb_thermal: Register different ops per
 process
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_013854_894183_9FE77ED0 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 11:52 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> Since we do not have interrupts on BCM7216, we cannot have trip point
> crossing, the thermal subsystem expects us to provide a NULL set_trips
> operation in that case, so make it possible to provide per-process
> thermal_zone_of_device_ops
>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>  drivers/thermal/broadcom/brcmstb_thermal.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
> index 64f715053ce9..a75a335d1bb3 100644
> --- a/drivers/thermal/broadcom/brcmstb_thermal.c
> +++ b/drivers/thermal/broadcom/brcmstb_thermal.c
> @@ -96,6 +96,7 @@ static struct avs_tmon_trip avs_tmon_trips[] = {
>  struct brcmstb_thermal_params {
>         unsigned int offset;
>         unsigned int mult;
> +       const struct thermal_zone_of_device_ops *of_ops;
>  };
>
>  struct brcmstb_thermal_priv {
> @@ -278,19 +279,25 @@ static int brcmstb_set_trips(void *data, int low, int high)
>         return 0;
>  }
>
> -static const struct thermal_zone_of_device_ops of_ops = {
> +static const struct thermal_zone_of_device_ops brcmstb_16nm_of_ops = {
>         .get_temp       = brcmstb_get_temp,
> -       .set_trips      = brcmstb_set_trips,
>  };
>
>  static const struct brcmstb_thermal_params brcmstb_16nm_params = {
>         .offset = 457829,
>         .mult   = 557,
> +       .of_ops = &brcmstb_16nm_of_ops,
> +};
> +
> +static const struct thermal_zone_of_device_ops brcmstb_28nm_of_ops = {
> +       .get_temp       = brcmstb_get_temp,
> +       .set_trips      = brcmstb_set_trips,
>  };
>
>  static const struct brcmstb_thermal_params brcmstb_28nm_params = {
>         .offset = 410040,
>         .mult   = 487,
> +       .of_ops = &brcmstb_28nm_of_ops,
>  };
>
>  static const struct of_device_id brcmstb_thermal_id_table[] = {
> @@ -329,7 +336,7 @@ static int brcmstb_thermal_probe(struct platform_device *pdev)
>         platform_set_drvdata(pdev, priv);
>
>         thermal = devm_thermal_zone_of_sensor_register(&pdev->dev, 0, priv,
> -                                                      &of_ops);
> +                                                      priv->temp_params.of_ops);
>         if (IS_ERR(thermal)) {
>                 ret = PTR_ERR(thermal);
>                 dev_err(&pdev->dev, "could not register sensor: %d\n", ret);
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
