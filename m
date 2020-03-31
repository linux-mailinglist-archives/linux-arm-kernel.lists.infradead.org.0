Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA05199A43
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IOg0eCvzxGEWkYzItEwcDuoG18ktYbO6LSkfIyvZLo=; b=P0PCYhr8DYy8FJ
	vZksEQ0PhrW+3m8zyd9wm03XOIZ80hNCCKeVMr7fFprRrRJw73IzwMeqUxObq1ZtyDWiT5t0BRSlY
	jwo1JmiCCGjUO0/ziRRpod87Orcmv63YWuZ6fKADlmmwh/UecK1CKdiVRrREXPKHkKKsVmkmqBajI
	wBFPbjtQNvcozl3uwdeBiBqnot3DDIb7qIGCmraGCnNf487vXabwW6RYhOHd+8OlpjGvDLdoWJgTM
	APAc4uwlretDX94fE5utoPoR2Be4rpMW0zYT+2Z4wgTS9UKuODSzyHxZFdoixISKL7Awfw9b1J6iI
	ASW4DaINvZVIBvr7vH8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJ9k-0007lY-A0; Tue, 31 Mar 2020 15:50:24 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJ91-0007VK-31
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:49:40 +0000
Received: by mail-oi1-x244.google.com with SMTP id k9so19309671oia.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 08:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TFLaiXmun4w8o5+Tq1iKXqKBbdoEIS4c8H+edqwRUVI=;
 b=Qv/G/OwiwgPPLwotGiBBkiOI5nrvXLm5PXvdLqxL45fQ2wsXl/nZl5d0RQzXRkciG8
 Iybk/fcn79BMAOI1HV9iPYg9E75fQJEQ4EmZ1t3qzFK0ZhRlsc+Ms+saEdX1mEOVxKQF
 IP0TKfdebBhFtnrppzhiO0ybbd3OK5iLy8TqWdtzzbEKN3+QkbQeaDVZKPvIpRwP4VRL
 wAkJabbz0sdRkDTQt0rzlqRWUFZrWHJfKDuA2g3zYFUWtV+20sbMDKX+qCelB4t7l8iJ
 KU006nHCkkPz1/pyiCTLU4qx2Fpb/J1fhpD92loq0fVQ/kpLnoS2768kfxmgJqcY397I
 5zEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TFLaiXmun4w8o5+Tq1iKXqKBbdoEIS4c8H+edqwRUVI=;
 b=T0spiKyrps5sNyo7aTT1l9NVCNvlJCY6PI/XlRzg1uDHDa7XYYdpEKkN2f5rE89h4/
 h1nEWMM1AWMH+sGQSapL6xU3pVJPYZi99TPVG2SBHZOp4c8ND0rlZRvejiJh8pmrgiPJ
 2psOkL1yIKfHycuPG1ABpbq3NEtF7sH8ZAy7kfT+uBrfYijt90wfNnhbaWJkbEN1qXT0
 q4789d/W0LKdLhP/zMlZRIc0vTs4fGybZpRA6gB/npYkUmjnbMNG45cmlL5XTjm64HBy
 FANGaDaJ/G0RioRnxRDPU2GAtdZqUKnsrgmnIdI5TcCTvkwKFYkoIYeinXe2s8fHzfm4
 Fj2w==
X-Gm-Message-State: ANhLgQ03HbJuu2kDUApET8kQKWbAF+AJBg7xMjF3Mz7j4/OrgXrW7sD2
 3M6lHSqEhZA00YS08KMHQdzCf2yUEZtQnfLc7XRxXjfZN4I=
X-Google-Smtp-Source: APiQypJB7Jvm09PZHaUiKtbyo6HAV3AG4FiOz7wPm0aCTC1KqAMGu+JBwxYo2PSJ/sRZe+L/LPsMDnKck5AK6WZNPDg=
X-Received: by 2002:a17:90a:3602:: with SMTP id
 s2mr4130400pjb.143.1585663267338; 
 Tue, 31 Mar 2020 07:01:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200331133346.372517-1-robert.foss@linaro.org>
 <20200331133346.372517-3-robert.foss@linaro.org>
In-Reply-To: <20200331133346.372517-3-robert.foss@linaro.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 31 Mar 2020 17:01:00 +0300
Message-ID: <CAHp75VfFKY6nzb8aEWmop73v2haZ0P5+aTsKDEU8M=uUPn0u3g@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] media: ov8856: Add devicetree support
To: Robert Foss <robert.foss@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_084939_190555_93C38FF2 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 4:36 PM Robert Foss <robert.foss@linaro.org> wrote:
>
> Add devicetree match table, and enable ov8856_probe()
> to initialize power, clocks and reset pins.

...

> +static int __ov8856_power_on(struct ov8856 *ov8856)
> +{
> +       struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
> +       int ret;
> +
> +       ret = clk_prepare_enable(ov8856->xvclk);
> +       if (ret < 0) {
> +               dev_err(&client->dev, "failed to enable xvclk\n");
> +               return ret;
> +       }
> +

> +       if (is_acpi_node(ov8856->dev->fwnode))

Use dev_fwnode().

> +               return 0;
> +
> +       if (ov8856->reset_gpio) {

> +               gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);

This is wrong. You have to fix it to use either 0 or 1.

> +               usleep_range(1000, 2000);
> +       }
> +
> +       ret = regulator_bulk_enable(ARRAY_SIZE(ov8856_supply_names),
> +                                   ov8856->supplies);

> +       if (ret < 0) {

Do you need all ' < 0' parts all over the series?

> +               dev_err(&client->dev, "failed to enable regulators\n");
> +               goto disable_clk;
> +       }

...

> +       gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_LOW);

Ditto.

...

> +       gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);

Ditto.

...

> +       gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);

Ditto.

...

> -       ret = fwnode_property_read_u32(fwnode, "clock-frequency", &mclk);
> -       if (ret)
> -               return ret;

Where is it gone? Why?

> +       ov8856->xvclk = devm_clk_get_optional(dev, "xvclk");
> +       if (IS_ERR(ov8856->xvclk)) {

> +               dev_err(dev, "could not get xvclk clock (%ld)\n",
> +                       PTR_ERR(ov8856->xvclk));

Also you may use %pe here and in similar cases.

> +               return PTR_ERR(ov8856->xvclk);
> +       }

> +       ov8856->reset_gpio = devm_gpiod_get_optional(dev, "reset",
> +               GPIOD_OUT_HIGH);

Here parameter is correct. The question is, what the value should be
HIGH or LOW?
Basically HIGH means to assert the signal.

> +       if (IS_ERR(ov8856->reset_gpio)) {

> +               dev_dbg(dev, "failed to get reset-gpio\n");

Noise.
Enable GPIO debug to see this kind of messages.

> +               return PTR_ERR(ov8856->reset_gpio);
> +       }

...

> +       ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ov8856_supply_names),
> +                                     ov8856->supplies);
> +       if (ret) {

> +               dev_warn(dev, "failed to get regulators\n");

If it's a warning, why we return from here?
Same question to all other places with same issue.

> +               return ret;
>         }

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
