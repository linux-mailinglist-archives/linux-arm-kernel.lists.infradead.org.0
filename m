Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5774217D9FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 08:45:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4GAzVUzbwvBhUhgBI4u00TRg2T58Vx0mU83Pqe1cQE=; b=DAOdOAJGQ8b4MB
	MlDK6vVq1ciqbFERUnK9U7WWFf+hzWFBsqZajMlY4YUN9Nyu8QRQNrtGDfptmkq8v5Tr0PzJDAc1b
	mRpfhXm0eLG9FrMy221Rllw3vDF5SRjRaZqQMO9yWqwqacF/Kd9EtEVu+RvVqTrZYvv/hy5KMT8US
	VSS1Ow6txWG+K+bN4xGDO2iQb38IkYiSvTmCgjuMpRJauLrHgr4SVZsR992Re/TUJ+QRBE2T9pmiK
	9k0DbDcXr48pykST5E31C44R1Yl4dt8ux3JLzA6v1S4iaWeaiZPUagKDXKtiSh9kZV5QjL5IfGNF8
	s/hfeHCG/Tu/db47Qxjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBD6f-0001Nm-Ur; Mon, 09 Mar 2020 07:45:45 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBD6T-0001Mp-GP
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 07:45:34 +0000
Received: by mail-wr1-x441.google.com with SMTP id t11so9706113wrw.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 00:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JohOmOJ2T+csOaen6ynllfQT2PQ8VgsBqiM3qEbp8as=;
 b=HP+Om+gmFPxPOXCJQ4AgXeIEU4/wRrwvfwQH7ZxwqOgJbeyO9kv2rUkMUkXSWLslto
 m5Bf9EmNlvde6i0960insg5nBP0LL+mrPaueYnFfZwdWllo5wyB8nqTH906n2IFvoUFC
 mk0Kgl5ryDblG0fZEEPLTl/51Py2oVhukshG+F5BDobuFxf0QJdzoc/OLAeCjm7W5ORV
 Ti3pxp0c4v5390A8Q/T19lw1wQA+71tX3p9oRELquG68t5KXXE+rbUc5CLrKsoSxfCnE
 rpdXolv2ETmowsmmfOS4L+BGcIRl8YHMW+5X5WvRMGlXl/vhWwgz1yLmFOv+E9SK8aYy
 qt7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JohOmOJ2T+csOaen6ynllfQT2PQ8VgsBqiM3qEbp8as=;
 b=Qj4PJtJJ1f4r+B4iPNEHm2eE688u4VNiuBQ4sa1rto4FlEzz68L5ZzP2J64uf0Q4ix
 QYnPPiYibRtIQ3aY5r3vJla1yzOwtqOJWas2DH8e+2Nsnc5zHDp8vq/nn5G7IsAzm6Qi
 XpYDXBfNYUjqav4fxQVYjtrz2SW8IGozNEcd2G2ZCPsVClTHni4BRugyhglQ8Dt7f29v
 EsP5Tk11UK4yRIdB7M4j7b8K9MHuofrpmYvSKMadnfuhY1kg7NE6mOF5dKOkayg5rVeB
 JKA9ZZGqwU2gfwzKge8lrYtrSbNVT5EvmBg+/Lm8yG6WdH+1PLrGT/lucecJDeyLunx4
 To3w==
X-Gm-Message-State: ANhLgQ3V4qCjxQdYf6pYP3fTK5mkFjVHN9NukMbPmJ6c2fXEG1vtyNKi
 R8wpA2CsbJc276d73iQQ3UGV9zqj2H+beZd8Q1I=
X-Google-Smtp-Source: ADFU+vt4iAmDL5h0y/kV4E7Ipmkv+BBc24pv9MRc0ozJhfCIh3aP/zVHGMnQwBBM+ci4u4lNUsbZ8iMb8yog2Jeb0TA=
X-Received: by 2002:a5d:4902:: with SMTP id x2mr20682737wrq.301.1583739929355; 
 Mon, 09 Mar 2020 00:45:29 -0700 (PDT)
MIME-Version: 1.0
References: <1583539986-573-1-git-send-email-opendmb@gmail.com>
In-Reply-To: <1583539986-573-1-git-send-email-opendmb@gmail.com>
From: Gregory Fong <gregory.0xf0@gmail.com>
Date: Mon, 9 Mar 2020 00:45:02 -0700
Message-ID: <CADtm3G4eq_p1YZtQrtcx4LGPiY82BpgXf55YtJCW+WJSrM7siw@mail.gmail.com>
Subject: Re: [PATCH] gpio: brcmstb: support gpio-line-names property
To: Doug Berger <opendmb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_004533_542759_195C938C 
X-CRM114-Status: GOOD (  20.45  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gregory.0xf0[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gregory.0xf0[at]gmail.com]
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Doug,

On Fri, Mar 6, 2020 at 4:14 PM Doug Berger <opendmb@gmail.com> wrote:
>
> The default handling of the gpio-line-names property by the
> gpiolib-of implementation does not work with the multiple
> gpiochip banks per device structure used by the gpio-brcmstb
> driver.
>
> This commit adds driver level support for the device tree
> property so that GPIO lines can be assigned friendly names.
>
> Signed-off-by: Doug Berger <opendmb@gmail.com>

I've added a few comments below.  With the suggested updates:
Acked-by: Gregory Fong <gregory.0xf0@gmail.com>

> ---
>  drivers/gpio/gpio-brcmstb.c | 44 ++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
>
> diff --git a/drivers/gpio/gpio-brcmstb.c b/drivers/gpio/gpio-brcmstb.c
> index 05e3f99ae59c..e9ab246e2d42 100644
> --- a/drivers/gpio/gpio-brcmstb.c
> +++ b/drivers/gpio/gpio-brcmstb.c
> @@ -603,6 +603,49 @@ static const struct dev_pm_ops brcmstb_gpio_pm_ops = {
>         .resume_noirq = brcmstb_gpio_resume,
>  };
>
> +static void brcmstb_gpio_set_names(struct device *dev,
> +                                  struct brcmstb_gpio_bank *bank)
> +{
> +       struct device_node *np = dev->of_node;
> +       const char **names;
> +       int nstrings, base;
> +       unsigned int i;
> +
> +       base = bank->id * MAX_GPIO_PER_BANK;
> +
> +       nstrings = of_property_count_strings(np, "gpio-line-names");
> +       if (nstrings <= base)
> +               /* Line names not present */
> +               return;
> +
> +       names = devm_kcalloc(dev, MAX_GPIO_PER_BANK, sizeof(char *),

Please use sizeof(*names) instead of sizeof(char *).

> +                            GFP_KERNEL);
> +       if (!names)
> +               return;
> +
> +       /*
> +        * Make sure to not index beyond the end of the number of descriptors
> +        * of the GPIO device.
> +        */
> +       for (i = 0; i < bank->width; i++) {
> +               const char *name;
> +               int ret;
> +
> +               ret = of_property_read_string_index(np, "gpio-line-names",
> +                                                   base + i, &name);
> +               if (ret) {
> +                       if (ret != -ENODATA)
> +                               dev_err(dev, "unable to name line %d: %d\n",
> +                                       i, ret);

Recommend adding the GPIO bank ID to this error message.

Best regards,
Gregory

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
