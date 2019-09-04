Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E76A85AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 16:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vKdr20B2BrNS9vsGiPNOB+0KZKM+lG3DOPV0VsPIP6Y=; b=TT6ttId8iGfSD1
	7tJLOqx6pW0cJa6g2JJj7N4nt0iUOisZ//QqoSh481w4BhqRug0vdndRkG6k327o9Iu0P/XKpg/k3
	g6XuHr2cPvh4+82fzN02nqXjM2Y4IlfTM9sJcl2LjAAGr92mndAcVMiR4Nz28pXD9+mrrbE6H/Lgb
	1I6r0mNtgnZienBs73VDkbeR9ekpx/xF5PkncNJSCL6++G/knTcH4psklDyz7zbr3o/6uJkVQzJg4
	Rs9CvbPrLzzafHTvyMAaDLrioDF2FDF9t83zAgZgRi9jU74VLibJMAn9xCf2tsDC8Wjnydqvw0h/4
	+FN7cRnCBcgC7T7xEy+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5WM1-00086e-LO; Wed, 04 Sep 2019 14:33:49 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5WLp-00085M-UL; Wed, 04 Sep 2019 14:33:39 +0000
Received: by mail-pg1-x543.google.com with SMTP id w10so11356917pgj.7;
 Wed, 04 Sep 2019 07:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DpaNQCLmwaNZZZkIvK2MRxioLu52IkmkkbV6j6lsSTI=;
 b=QVcLTD8SqHO2544hfbjXafPfCHNEZpwx54u/NHKLL3RwoTLbeAc5WRg90T9BucvGkw
 Z6IpK1fqesAiVvv3WYnGo3XvW7mKItcdFtUy/Bp4QODeexrlOeBRRkhuUAJ4czq3jN8y
 kUi/Q+fstAnVpRXlUSj41qfGFraX2Q+7Uwt1dxioZzqKoFxtedfDSN6mQKlQi/hfTRDo
 1myS+X5K21ZpE2a7Y7RyqRgkt91gc7/cgp8ewkCxV9Ij1udkymmbeNNvTEVufv4hePUw
 pvh5MvLdiiq7aBb0LfsPF8Bryro3CI+4fNdhZMYLqTjXhialouq7RaUdyHuN+U7+3h5b
 plCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DpaNQCLmwaNZZZkIvK2MRxioLu52IkmkkbV6j6lsSTI=;
 b=Mlumj70bnfhCVYrdplCmGxYDvVTJxmHpaw7uG+J+wiggMFrFhucaMxC8ooHVpdbmvS
 7r6EBDql2/yg/fma7WJFQuOpyrTGHPL9313jZk6oTP6eQOQErJEuwZEoLX+VDiy+19MO
 qLsGaJGXbIY5gvvoPRWrjP60q1LxdHPELY7nPwdq/LRUi0zvG9WaBJvcp4KBLOfvHqNG
 n5cAtGWLuJKVz+WxzBfGw+LbiWnunAMLvLiJnlFzjD3fjbmEuuDJu63OQhBBFrmOv5KY
 Gevkiuxs9wV/zSEDLn74yokbnfWRDwneQ46i85O+rLd7rtSlyrXgQvkasl+2JXH3ymxv
 YEAA==
X-Gm-Message-State: APjAAAVfqmiKK8+jFi1eOKnQMVEVzGcf9Tptk+x5C3AWN4AXRU0d8Rwz
 W9C6VzFBTbau39CUVgrHkQgM73xBCgX6hyt8KOg=
X-Google-Smtp-Source: APXvYqwTWnlU/s16wk/kQ7qUIsYPs2aUc2xvVztrYy95Dh8DHJPMltqAbOUq+3863Pi6+Ky/QZPyvefYIbOZMFIRgQw=
X-Received: by 2002:a63:6eca:: with SMTP id j193mr34647329pgc.74.1567607616694; 
 Wed, 04 Sep 2019 07:33:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190708100641.2702-1-dongchun.zhu@mediatek.com>
 <20190708100641.2702-3-dongchun.zhu@mediatek.com>
In-Reply-To: <20190708100641.2702-3-dongchun.zhu@mediatek.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 4 Sep 2019 17:33:25 +0300
Message-ID: <CAHp75VcV_tFNMm=oRNVBtwn8orQGuokSgT6YDzNVpQ0vXw_Yag@mail.gmail.com>
Subject: Re: [PATCH 2/2] media: i2c: dw9768: Add DW9768 VCM driver
To: dongchun.zhu@mediatek.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_073338_001978_BC4AF4EF 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 devicetree <devicetree@vger.kernel.org>, srv_heupstream@mediatek.com,
 shengnan.wang@mediatek.com, Tomasz Figa <tfiga@chromium.org>,
 louis.kuo@mediatek.com, sj.huang@mediatek.com,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, bingbu.cao@intel.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 8, 2019 at 5:13 PM <dongchun.zhu@mediatek.com> wrote:
>
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
>
> This patch adds a V4L2 sub-device driver for DW9768 lens voice coil,
> and provides control to set the desired focus.
>
> The DW9807 is a 10 bit DAC from Dongwoon, designed for linear
> control of voice coil motor.

> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2018 MediaTek Inc.
> + */

2019?

> +       if (!client->adapter)
> +               return -ENODEV;

Is it ever possible?

> +       w_buf = kzalloc(size, GFP_KERNEL);
> +       if (!w_buf)
> +               return -1;

Error code?

> +       do {
> +               ret = i2c_transfer(client->adapter, &msg, 1);

> +               if (ret != 1)
> +                       dev_err(&client->dev, "write fail, ret:%d, retry:%d\n",
> +                               ret, retry_cnt);

This is noise. And better to use positive condition.

> +               else
> +                       break;

> +               retry_cnt--;
> +       } while (retry_cnt != 0);
> +

} while (--retry_cnt);

> +       if (retry_cnt == 0)     {
> +               dev_err(&client->dev, "i2c write fail(%d)\n", ret);
> +               return -EIO;
> +       }

> +
> +       kfree(w_buf);
> +
> +       return 0;
> +}

> +static int dw9768_power_off(struct dw9768_device *dw9768_dev, bool standby)
> +{
> +       struct i2c_client *client = v4l2_get_subdevdata(&dw9768_dev->sd);
> +       int ret;
> +
> +       /*
> +        * Go to standby first as real power off my be denied by the hardware
> +        * (single power line control for both dw9768_dev and sensor).
> +        */
> +       if (standby) {
> +               dw9768_dev->standby = true;
> +               ret = dw9768_release(dw9768_dev);

> +               if (ret)

> +                       dev_err(&client->dev, "dw9768_release failed!\n");

Is it fatal or not?

> +       }

> +       ret = regulator_disable(dw9768_dev->analog_regulator);
> +       if (ret)
> +               return ret;
> +
> +       return 0;

return regulator_disable(...);

> +}

> +               dev_err(dw9768_dev->sd.dev, "%s fail error: 0x%x\n",
> +                       __func__, hdl->error);

Non-informative message.

> +static int dw9768_probe(struct i2c_client *client)
> +{
> +       struct device *dev = &client->dev;
> +       struct dw9768_device *dw9768_dev;
> +       int rval;
> +
> +       dw9768_dev = devm_kzalloc(&client->dev, sizeof(*dw9768_dev),
> +                                 GFP_KERNEL);
> +       if (!dw9768_dev)
> +               return -ENOMEM;
> +
> +       dw9768_dev->analog_regulator = devm_regulator_get(dev, "afvdd");
> +       if (IS_ERR(dw9768_dev->analog_regulator)) {

> +               dev_err(dev, "cannot get analog regulator\n");

Would be noise in case of deferred probe.

> +               return PTR_ERR(dw9768_dev->analog_regulator);
> +       }

> +err_cleanup:
> +       mutex_destroy(&dw9768_dev->power_lock);
> +       dw9768_subdev_cleanup(dw9768_dev);

> +       dev_err(dev, "Probe failed: %d\n", rval);

Noise. Device core has this already.

> +       return rval;
> +}

> +static const struct i2c_device_id dw9768_id_table[] = {
> +       { DW9768_NAME, 0 },
> +       { { 0 } }

{} is enough.

> +};
> +MODULE_DEVICE_TABLE(i2c, dw9768_id_table);
> +
> +static const struct of_device_id dw9768_of_table[] = {
> +       { .compatible = "dongwoon,dw9768" },

> +       { { 0 } }

Ditto.

> +};

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
