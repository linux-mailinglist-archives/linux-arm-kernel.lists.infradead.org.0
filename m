Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 550B338898
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 13:10:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5Uf+f0bOiB7x2rWjvE+Z80eM5YX+5osshIA9a2Pbvc=; b=bYBtAnN82Yuj3i
	+JdZkRAeXRG0x0ClbVQR6PAS4n3YRcc9BAHGZSHhK09NHipv+NuLNLpuH6skjmh/7GIxFe6uijyyi
	rmp+JI4mIx6PNlcnr1ZKdVHEFXaQyY2XSeiplZT3BJnck6sak9N1xTAnEwdhZ7F4vhQz4WvjzXB4A
	M/s8z/M8oQrP/NTQMP2gTeGgCjC3uxJg6O4viNwHrqYZmoG1Gdvd33uLN05/rCEot/0dVtmCk81JH
	3WfFXYohFfXwUlj4jInmlyw2gEoTFPfzr5X7e5HYNiARBUf7tnjGahjRht94hIEYdMGkfq1ehfNbU
	o3zhTMWSomIgAiX/UQqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZClS-0001Vd-7u; Fri, 07 Jun 2019 11:10:30 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZClF-0001VB-7J
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 11:10:18 +0000
Received: by mail-io1-xd43.google.com with SMTP id k8so1096815iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 04:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qtT3xvK7Vazpl4o9exivAkvcEkMHtpOwXvVAPT2SJ40=;
 b=jDo5BRjlVR3AVWDSSfo+gKcryeGPi/AmUttwaIMq0VxqJ+qVI2178K607NkM3CeySN
 bBJCIl7N6/so3FXSZPrNsg3COjHe1B1atLZy+JgJHiMd9jSc8S4CwxPUM6KpZZWut1Ki
 xcHnXQyeNRyWHaRgAcrIbDX07S1YcY1LGHUjDdLkg/rEBtcOlHPuiUzuOvE284Cn3XuW
 cuJfglGXmCS+YULoWL89XM76DEtg5rZupYaC6jM/6ElBUMEg2tOGlKPglN2UFzQeSrkg
 DGDDIKwDF2JCsDEdafcgCsWVVNTP3zHe6AU0YMfye1c3ZW0cWJg/BGgUKlW7y9Tbthif
 UZQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qtT3xvK7Vazpl4o9exivAkvcEkMHtpOwXvVAPT2SJ40=;
 b=Ftev2Pt6WRlYLWPskWTLjNqKzar3I4y3m3yA6qzd9LMfbULbUdYdr63mAQVBI5mIeV
 5iGRK3/1LYu9nuHIApd0nuBICo5RJwwIb1dknH1kj+iyFdMcikDG5sQ/DwYvG1AP/X6q
 w9QmpEk+Hmnj8pt153pUrjpaW0oq6HPRYvjoAMj1MLlrAfzxnaDr+dPYMe43u3j1pVOC
 VLzPgoJ0mY5HfK3qqFJstAwS4PHU/bodTXFW8MFvLz30lozT+13bxkqp7hjkG5yOlYbo
 rWHxiOa+yuhjHhRXcJJJKWhKiB2MUicOoXyrxd/wjsblPvwz0PXT4olNPKC9aYc8RJwg
 6ZAg==
X-Gm-Message-State: APjAAAVlP41f/DPfNV//dqZbF4IzShsJtQG4R9dMxTf0IXYnQIzxNgMM
 oKqAbZmuOLe1auUvB6gkQM+sV0kjq7fRt3q3DNB6HQ==
X-Google-Smtp-Source: APXvYqwrUGnknS/zJMuvQI2wfL8thoDfsVGFqzJXzvtaPiQuD0VcSmpnabR9lJl/h/nYmF51UIoE2867Nj/5gi+piZI=
X-Received: by 2002:a05:6602:98:: with SMTP id h24mr304941iob.49.1559905815366; 
 Fri, 07 Jun 2019 04:10:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190607082901.6491-1-lee.jones@linaro.org>
 <20190607082901.6491-3-lee.jones@linaro.org>
In-Reply-To: <20190607082901.6491-3-lee.jones@linaro.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 7 Jun 2019 13:10:04 +0200
Message-ID: <CAKv+Gu-1QhX-9aNhFJauc9NVe6ceQQueE8Kd14031XJ-2yaupA@mail.gmail.com>
Subject: Re: [PATCH v2 3/8] pinctrl: msm: Add ability for drivers to supply a
 reserved GPIO list
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_041017_278593_87009D0A 
X-CRM114-Status: GOOD (  23.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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
> When booting MSM based platforms with Device Tree or some ACPI
> implementations, it is possible to provide a list of reserved pins
> via the 'gpio-reserved-ranges' and 'gpios' properties respectively.
> However some ACPI tables are not populated with this information,
> thus it has to come from a knowledgable device driver instead.
>
> Here we provide the MSM common driver with additional support to
> parse this informtion and correctly populate the widely used
> 'valid_mask'.
>
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

I'm not sure if this is the correct approach. Presumably, on ACPI
systems, all the pinctl stuff is already set up by the firmware, and
so we shouldn't touch *any* pins unless they have been requested
explicitly. Is there any way we can support this in the current
framework?

> ---
>  drivers/pinctrl/qcom/pinctrl-msm.c | 18 ++++++++++++++++++
>  drivers/pinctrl/qcom/pinctrl-msm.h |  1 +
>  2 files changed, 19 insertions(+)
>
> diff --git a/drivers/pinctrl/qcom/pinctrl-msm.c b/drivers/pinctrl/qcom/pinctrl-msm.c
> index ee8119879c4c..3ac740b36508 100644
> --- a/drivers/pinctrl/qcom/pinctrl-msm.c
> +++ b/drivers/pinctrl/qcom/pinctrl-msm.c
> @@ -607,8 +607,23 @@ static int msm_gpio_init_valid_mask(struct gpio_chip *chip)
>         int ret;
>         unsigned int len, i;
>         unsigned int max_gpios = pctrl->soc->ngpios;
> +       const int *reserved = pctrl->soc->reserved_gpios;
>         u16 *tmp;
>
> +       /* Driver provided reserved list overrides DT and ACPI */
> +       if (reserved) {
> +               bitmap_fill(chip->valid_mask, max_gpios);
> +               for (i = 0; reserved[i] >= 0; i++) {
> +                       if (i >= max_gpios || reserved[i] >= max_gpios) {
> +                               dev_err(pctrl->dev, "invalid list of reserved GPIOs\n");
> +                               return -EINVAL;
> +                       }
> +                       clear_bit(reserved[i], chip->valid_mask);
> +               }
> +
> +               return 0;
> +       }
> +
>         /* The number of GPIOs in the ACPI tables */
>         len = ret = device_property_read_u16_array(pctrl->dev, "gpios", NULL,
>                                                    0);
> @@ -964,6 +979,9 @@ static void msm_gpio_irq_handler(struct irq_desc *desc)
>
>  static bool msm_gpio_needs_valid_mask(struct msm_pinctrl *pctrl)
>  {
> +       if (pctrl->soc->reserved_gpios)
> +               return true;
> +
>         return device_property_read_u16_array(pctrl->dev, "gpios", NULL, 0) > 0;
>  }
>
> diff --git a/drivers/pinctrl/qcom/pinctrl-msm.h b/drivers/pinctrl/qcom/pinctrl-msm.h
> index c12048e54a6f..23b93ae92269 100644
> --- a/drivers/pinctrl/qcom/pinctrl-msm.h
> +++ b/drivers/pinctrl/qcom/pinctrl-msm.h
> @@ -121,6 +121,7 @@ struct msm_pinctrl_soc_data {
>         bool pull_no_keeper;
>         const char *const *tiles;
>         unsigned int ntiles;
> +       const int *reserved_gpios;
>  };
>
>  extern const struct dev_pm_ops msm_pinctrl_dev_pm_ops;
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
