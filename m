Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB8A5AFE6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 30 Jun 2019 15:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=roNvNNOcQ+cOe0t8jLhvjGadN8IqmkrwPvvsAWXivKM=; b=FhTSOX2TJ89ulq
	5WcR+y2p4hzytFLGuA5x8cnWRkUWFjW+jOzufNDGSDY9KpvELlAzSTe4FjMfAiT0XNBX86tpzV9w6
	1P5DOd3FtPHJ5OI1Lle5hhgpfLZxVMNqElcjqBz/zg33guo/y+VKguDDWWyFc+X/4g11pTbjb6GhP
	WGkFVY74O8ln1SqyGLgCSaogKCgBdK4nIHJB3jcjR5GjgMnEkX8TwFM2oqpkZ1pWm0CoPrldJoykR
	yFYESaP/h5z9QgSttZHB3VZvydFY9yRuF2GG2ISx/CkXzy0uFSY3Oj66sNQNkTCtFa0vl9iOizIWk
	gunluNacEz62HvDtt+yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhZrB-0003rs-Hx; Sun, 30 Jun 2019 13:27:01 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhZqo-0003rK-7A
 for linux-arm-kernel@lists.infradead.org; Sun, 30 Jun 2019 13:26:39 +0000
Received: by mail-ed1-x543.google.com with SMTP id k8so18315408eds.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 30 Jun 2019 06:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TR/U35GOSzbg7ErKFjslW1/rjmDfua81/9ryZaRuObY=;
 b=Tk0wJIMf02ZT9yzKyXRjQ1yuzqF24JjisloZxoU9WjFL18PJuddVZIAvQxqGZ+wLg/
 4mpu1+VgJ3s9pL8u1uF8phaixMqcr8+gWI/aH/AOrq7yx8wMH6SkloINNcQf83knVXVE
 RPGzPWJ81VUK29UOfDgngVY6GzmQbDM5WsZuCGEblaiqKGgnn8vDJTsk+RvsJTn3bNwb
 cZ6Yqs9ns/p+Ned0aNAoDApN3tkPWSyzhb2CwPT9FGhz0TMFEGlzFpKYHf2nbhFG2R1m
 DgJ5N1oKowFGkQA2swBEYet28zhFjO0FBvxda0cVgdDLP2CjWJEwrJeXlo1ZB/a1wVNU
 80fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TR/U35GOSzbg7ErKFjslW1/rjmDfua81/9ryZaRuObY=;
 b=edNf2wRK4FekJDj+je20dvh+tFt2sHDMFNRjffkKIYNXmKHmzCMu2MjCnVfvNXy38J
 HRNk5qDi418uygOd4Put8I9OhMqnoJlLkAVzn1YNBd6zH0zgQrFs+ekOG21RyoTLVtL9
 L1/4F0w8vtS4PN8DLAoslejs0VI+kdFQsgBY3P8qgOIXGErTZkzerdTC3V8puMc3m2JT
 14GcQljebQTXV4eMYj5EGhIYayQswknZdp7Z5DhTT6pcwhYXhdc1UvjHOFJF8olJlUVQ
 1IDMPsJqwIkuplCNRVtMKe+/f4Fjqsc2/fLPi+aEEmcl6/LDFTVd97ViIMAgB89oxV6K
 5Xew==
X-Gm-Message-State: APjAAAVwfIPjQv0nsFKoY/iQq4SuOd9exVV2qc15T2TGdQdQG6gdtGBs
 NXY6JKyGGICe0rfoFoYBHXtJ6mXR7c4ddoJhd/0=
X-Google-Smtp-Source: APXvYqzOPJhV5cAVdRoldfDPOHtp/lTr0+e/QzIsU2Vql/2sUpxAKqhx17GBjBu63jJC1o7jG/OSbnfjAlPJtxM2mAE=
X-Received: by 2002:a50:a544:: with SMTP id z4mr22877808edb.71.1561901195731; 
 Sun, 30 Jun 2019 06:26:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190629125933.679-1-linus.walleij@linaro.org>
 <20190629125933.679-4-linus.walleij@linaro.org>
In-Reply-To: <20190629125933.679-4-linus.walleij@linaro.org>
From: Rob Clark <robdclark@gmail.com>
Date: Sun, 30 Jun 2019 06:26:19 -0700
Message-ID: <CAF6AEGun2QEMVyO+L3W0UJubgzVPrFr5jkVoTOwHpy9b4MeJMQ@mail.gmail.com>
Subject: Re: [PATCH 4/7] gpio: of: Support some legacy Qualcomm HDMI bindings
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_062638_288238_91221E23 
X-CRM114-Status: GOOD (  21.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: freedreno <freedreno@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 29, 2019 at 6:02 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> Insteaf of the MSM DRM code going around and inspecting the
> device tree nodes by itself to find "qcom,misc" GPIO phandles,
> we add a quirk to the core so that if "qcom,misc-gpios" and
> "qcom,misc-gpio" isn't found, we try to find just
> "qcom,misc" as a last resort. Provide an explicit whitelist
> for those GPIOs.
>
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: freedreno@lists.freedesktop.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> Rob/Sean: if the approach is overall OK I will merge this
> one patch already for v5.3 so the rest can be queued for
> v5.4 later.

I'm ok with this.. although I wonder if we need to try this hard for
backwards compat?  At least I don't see any upstream dts
using the old names.  Maybe it is ok to just look the other way and break them.

IIRC the old names were based on old downstream android kernel
bindings.. but upstream snapdragon support is pretty good these days
and it has been years since I've had to do drm/msm development by
backporting the upstream driver to a crusty old android kernel.

BR,
-R

> ---
>  drivers/gpio/gpiolib-of.c | 43 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
>
> diff --git a/drivers/gpio/gpiolib-of.c b/drivers/gpio/gpiolib-of.c
> index aec7bd86ae7e..c927eaf6c88f 100644
> --- a/drivers/gpio/gpiolib-of.c
> +++ b/drivers/gpio/gpiolib-of.c
> @@ -286,6 +286,45 @@ static struct gpio_desc *of_find_regulator_gpio(struct device *dev, const char *
>         return desc;
>  }
>
> +/*
> + * Some non-standard Qualcomm HDMI GPIOs need to be supported as they exist
> + * in random old device trees out there.
> + */
> +static struct gpio_desc *of_find_hdmi_gpio(struct device *dev,
> +                                          const char *con_id,
> +                                          enum of_gpio_flags *of_flags)
> +{
> +       /*
> +        * These are the connection IDs we accept as legacy GPIO phandles.
> +        * If we get here, the same prefix ending with "-gpio" and "-gpios"
> +        * has already been tried so now we finally try with no suffix.
> +        */
> +       const char *whitelist[] = {
> +               "qcom,hdmi-tx-ddc-clk",
> +               "qcom,hdmi-tx-ddc-data",
> +               "qcom,hdmi-tx-hpd",
> +               "qcom,hdmi-tx-mux-en",
> +               "qcom,hdmi-tx-mux-sel",
> +               "qcom,hdmi-tx-mux-lpm",
> +       };
> +       struct device_node *np = dev->of_node;
> +       struct gpio_desc *desc;
> +       int i;
> +
> +       if (!IS_ENABLED(CONFIG_DRM_MSM))
> +               return ERR_PTR(-ENOENT);
> +
> +       if (!con_id)
> +               return ERR_PTR(-ENOENT);
> +
> +       i = match_string(whitelist, ARRAY_SIZE(whitelist), con_id);
> +       if (i < 0)
> +               return ERR_PTR(-ENOENT);
> +
> +       desc = of_get_named_gpiod_flags(np, con_id, 0, of_flags);
> +       return desc;
> +}
> +
>  struct gpio_desc *of_find_gpio(struct device *dev, const char *con_id,
>                                unsigned int idx, unsigned long *flags)
>  {
> @@ -330,6 +369,10 @@ struct gpio_desc *of_find_gpio(struct device *dev, const char *con_id,
>         if (IS_ERR(desc) && PTR_ERR(desc) != -EPROBE_DEFER)
>                 desc = of_find_regulator_gpio(dev, con_id, &of_flags);
>
> +       /* Special handling for HDMI GPIOs if used */
> +       if (IS_ERR(desc) && PTR_ERR(desc) != -EPROBE_DEFER)
> +               desc = of_find_hdmi_gpio(dev, con_id, &of_flags);
> +
>         if (IS_ERR(desc))
>                 return desc;
>
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
