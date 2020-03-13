Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1EC1847C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 14:16:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T9Nd0Phvp909sBTWOLTyBX4CuMm6Lk/QVDcQgD0Qr5o=; b=s932jUq71Nv7By
	lVdXYE2ynbWH3OWHb/iRBYKZeii0G/M/cxiRzzd2Rw2TCGk4UDTjiyEM6S+ibC1Y68oBAyFMZYWXq
	DgneR6lBNdATBxOdFmw2cbM0/9qj7yPusPKX35bwP6b2gY7AM7TM9qeGhjyPSaWw7CjI9ePZAacbx
	HbZwQ4OoJdn3Xx5MF1CiZCpFziP+qGRN8fhO54pqcAHkIme4cxS+k+rMNahdoLY+GYM3VD8fmnLeI
	LHxJWtFwmTuPy/Froobp+X5f5ZZv6xNhK2piz3UEHb7+KtxyR6iBnaTVPFfNyz4+6ahvUJeEzQ0w4
	UoCTHN+1pCoRE9WF9bOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCkAP-0002yc-75; Fri, 13 Mar 2020 13:15:57 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCkAE-0002xu-8H
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 13:15:48 +0000
Received: by mail-lf1-x142.google.com with SMTP id b13so7830283lfb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 06:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KIlDjbCvX/lL3/UnPy9wEqymHeVXohWQ8Y8B1yC6PRM=;
 b=KzAls5VPN5rgeewhLttE0V+ho/T3Ym0N8W6508ZiquWU0EYsOUdidva2DssKJ4lYxn
 uHXqUJDkB86E2t5r/eB9iGlGisYdIMLmBQiH9MPnfYOmEDVnllOVfQLj9HF709kiHpnp
 cwU1mUkswFKeNpF3GtRHEYFOlpNkR2g1mgkD2dORECKUvUHKGYiLIRo6j++y873uepg7
 jaerNMJFJshhCNfgPdd2sD5V+MMOfB4oM7iQax4TYMZN9TQHwN9KxGIUJHtaOGJEmqTg
 oipHY3FV1tu/xMXCFIhIZ57QRrzeaB7TMzVGFXmdex3iWpZ6c3VDdxKiIXzNYMUC+Ad3
 q5lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KIlDjbCvX/lL3/UnPy9wEqymHeVXohWQ8Y8B1yC6PRM=;
 b=r4ahq5ionD+w/5qzsth65/+J/dtwrW/2spFrk42S4o0b52O+ZJM+CVe0Xcpiv1DQe1
 nieeQeAmNSfTgyO5tdGdSR/Avd+BWjVY2rgrXIANEt/M+TZ2rgL/GsPqdBzVB64iTO7r
 l8c2LwPZ7b7Zc31wis976DzTElvfhqwb81/EHS/Yfn1l7kWKwW35kHdTU+EWYwdpzmgg
 vToS6RGqJjq5NvBNDIc521ZFHHKV8ELIxb6EcAxNKpfOJ8ZHD6IkHl7jJmWhWjeS0q4+
 zKPt/eNCYim4DZC4LN/Wf8GhM3xw2hcn6neDwHr1OJ+IQFfziyf9J4tzE4r0fKvCHK/B
 Q+bA==
X-Gm-Message-State: ANhLgQ3+PYanHXzpbc9JP52xFHpoWs8l0lNzlrqRwTMKcRJ0kw1FV9FJ
 9dfW5BSMjDEfF/iC0YMtXkS0IfZckV61xYNpgl8=
X-Google-Smtp-Source: ADFU+vu3syumX09pf4wOKGU3FAmPDFh1VT9bOFZcHAgG0CF2SaVacKKBMemJsFE1v+otRGv8dY21fvqrZd57AKGk+4w=
X-Received: by 2002:a05:6512:1054:: with SMTP id
 c20mr8394251lfb.69.1584105343706; 
 Fri, 13 Mar 2020 06:15:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200313110350.10864-1-robert.foss@linaro.org>
 <20200313110350.10864-3-robert.foss@linaro.org>
In-Reply-To: <20200313110350.10864-3-robert.foss@linaro.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 13 Mar 2020 10:15:31 -0300
Message-ID: <CAOMZO5D9bmXt9_qGTXw+qUG6JDHfuNtx++fJPJtn+mj1Dzsbag@mail.gmail.com>
Subject: Re: [v2 2/3] media: ov8856: Add devicetree support
To: Robert Foss <robert.foss@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_061546_792487_69BBECCE 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

On Fri, Mar 13, 2020 at 8:04 AM Robert Foss <robert.foss@linaro.org> wrote:

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
> +       gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);

The parameter of gpiod_set_value_cansleep() is typically 0 (inactive
state) or 1 (active state), so:

 gpiod_set_value_cansleep(ov8856->reset_gpio, 1);

> +
> +       ret = regulator_bulk_enable(ARRAY_SIZE(ov8856_supply_names),
> +                                   ov8856->supplies);
> +       if (ret < 0) {
> +               dev_err(&client->dev, "failed to enable regulators\n");
> +               goto disable_clk;
> +       }
> +
> +       gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_LOW);

and here it should be:

gpiod_set_value_cansleep(ov8856->reset_gpio, 0);

Also, don't you need a reset period between the two?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
