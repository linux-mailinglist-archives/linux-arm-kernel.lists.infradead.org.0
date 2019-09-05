Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 746F0A9CFC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=deUs4uTpjyDV2VGoJZv/qdhwGBTw00y6cIAdiqBZpqg=; b=qILiejvbkNgx8P
	a9CjwDw/pFxUZeLbQgbTqcU6F3bHCveVzLuEqnSN+JowLqIOn/KkXy7rhFnQvpQ0blZQQ2IWPprGL
	1ufp6lUnxXBvC8ZeR85tnGGT1ntKrzEeV8CBhdwkZ8gEoYevUln/9tH0AE65jucOydzHtzfjAmMQE
	rLqIDNxEbJWO2vgYfcPIOvJVKoN2EXRPBZmmEvBeT014SYAHcwbr0BcXCi7knBYQSpGPHLvmw0ZJE
	0ddvtJPKP//7nPQfx9Omridv6N21t53cZsaC4D29uS8n3fyliy/2MNG6NDb9zVGJjnj99JojhWybY
	ofoXTj2IZXNajL+9bd3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5n8y-0005z8-Td; Thu, 05 Sep 2019 08:29:28 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5n8j-0005yA-Ir
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 08:29:16 +0000
Received: by mail-ed1-x542.google.com with SMTP id z9so1817196edq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 01:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mn5kxRXRrvF/mZkjHpojGPnycd5hoXTNnTxiPEIUhic=;
 b=gnCcHyTa41BS7QbJWxPjg7abFPVxAoaH8e6xOOFv5mJdR/hmbbzNQg9WzYn8eQ19IT
 Tk8AJ6eoMl2SJSlhHvFo5bxSRPc8/XxonydDc2rjIcZ/JdBS5Vplpe6C1pMwL64dwvaN
 pduQ3vsw8UKawhs/Yn+lEohSB09AFi3RjVC20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mn5kxRXRrvF/mZkjHpojGPnycd5hoXTNnTxiPEIUhic=;
 b=EoPMgBzOkAdS6aYyU0E3iLlTvXBiyBcj5lfNqQcWk0HT2JwiPi9fGAgLvhXOZu18wG
 ugua7IEUkJK+hCUgN5CETQfO31t/kBK0OE1taeMTxcd2cD7s//c811Q846xTXsOe3lpC
 Q8aqDm04VVXUItn9gVPJYJRG/3R2g3jVb/Aziy3E0RsQNsJo9Af/Ox7mdJxdpU+A2IgA
 7bEZUadAcnyElkd/jd3hmGNOJDbGhMnnkxP9vkMxZEHlD0yynIitva2gPlA9ZgaFW3z0
 ab8z8iQ1fPVdQTCcOL7RKTjNPiWLB44ZoTzwl/F9zYMZree7Ci1GKGZD+N4DTNfAjNFf
 B0kA==
X-Gm-Message-State: APjAAAWMGeVzOhuZBh83VCjflz9Q0N3eYIszdlMWuF7rAQpTR97RamHH
 ygrqGBdrCIUUqs8eEBqoBQ03oNNA1PrvSg==
X-Google-Smtp-Source: APXvYqyPZQPnAHMG1EW8iK8yz+RWyzNmJkPjnfiZM+RORjJ2TF5CZhg/dbJQNGPKL3MfB9/4kXmwCA==
X-Received: by 2002:a50:b0e6:: with SMTP id j93mr2286072edd.169.1567672151571; 
 Thu, 05 Sep 2019 01:29:11 -0700 (PDT)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com.
 [209.85.128.53])
 by smtp.gmail.com with ESMTPSA id r10sm266520edp.25.2019.09.05.01.29.10
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Sep 2019 01:29:10 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id t17so1669484wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 01:29:10 -0700 (PDT)
X-Received: by 2002:a1c:4b14:: with SMTP id y20mr1963245wma.10.1567672149678; 
 Thu, 05 Sep 2019 01:29:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190905072142.14606-1-dongchun.zhu@mediatek.com>
 <20190905072142.14606-3-dongchun.zhu@mediatek.com>
In-Reply-To: <20190905072142.14606-3-dongchun.zhu@mediatek.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 5 Sep 2019 17:28:57 +0900
X-Gmail-Original-Message-ID: <CAAFQd5Bzq0exwS-V7afjDHKxf-7oqZtBCUzohk90tTYCJZPonA@mail.gmail.com>
Message-ID: <CAAFQd5Bzq0exwS-V7afjDHKxf-7oqZtBCUzohk90tTYCJZPonA@mail.gmail.com>
Subject: Re: [V2, 2/2] media: i2c: Add DW9768 VCM driver
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_012913_646680_BFBBE64C 
X-CRM114-Status: GOOD (  29.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Nicolas Boichat <drinkcat@chromium.org>, andriy.shevchenko@linux.intel.com,
 srv_heupstream <srv_heupstream@mediatek.com>, devicetree@vger.kernel.org,
 sam.hung@mediatek.com, shengnan.wang@mediatek.com,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

On Thu, Sep 5, 2019 at 4:22 PM <dongchun.zhu@mediatek.com> wrote:
>
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
>
> This patch adds a V4L2 sub-device driver for DW9768 lens voice coil,
> and provides control to set the desired focus.
>
> The DW9768 is a 10 bit DAC with 100mA output current sink capability
> from Dongwoon, designed for linear control of voice coil motor,
> and controlled via I2C serial interface.
>
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  MAINTAINERS                |   1 +
>  drivers/media/i2c/Kconfig  |  10 ++
>  drivers/media/i2c/Makefile |   1 +
>  drivers/media/i2c/dw9768.c | 349 +++++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 361 insertions(+)
>  create mode 100644 drivers/media/i2c/dw9768.c
>

Thanks for v2! Please see my comments inline.

> diff --git a/MAINTAINERS b/MAINTAINERS
> index 192a671..c5c9a0e 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4976,6 +4976,7 @@ M:        Dongchun Zhu <dongchun.zhu@mediatek.com>
>  L:     linux-media@vger.kernel.org
>  T:     git git://linuxtv.org/media_tree.git
>  S:     Maintained
> +F:     drivers/media/i2c/dw9768.c
>  F:     Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt
>
>  DONGWOON DW9807 LENS VOICE COIL DRIVER
> diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
> index 79ce9ec..dfb665c 100644
> --- a/drivers/media/i2c/Kconfig
> +++ b/drivers/media/i2c/Kconfig
> @@ -1016,6 +1016,16 @@ config VIDEO_DW9714
>           capability. This is designed for linear control of
>           voice coil motors, controlled via I2C serial interface.
>
> +config VIDEO_DW9768
> +       tristate "DW9768 lens voice coil support"
> +       depends on I2C && VIDEO_V4L2 && MEDIA_CONTROLLER
> +       depends on VIDEO_V4L2_SUBDEV_API
> +       help
> +         This is a driver for the DW9768 camera lens voice coil.
> +         DW9768 is a 10 bit DAC with 100mA output current sink
> +         capability. This is designed for linear control of
> +         voice coil motors, controlled via I2C serial interface.
> +
>  config VIDEO_DW9807_VCM
>         tristate "DW9807 lens voice coil support"
>         depends on I2C && VIDEO_V4L2 && MEDIA_CONTROLLER
> diff --git a/drivers/media/i2c/Makefile b/drivers/media/i2c/Makefile
> index fd4ea86..2561239 100644
> --- a/drivers/media/i2c/Makefile
> +++ b/drivers/media/i2c/Makefile
> @@ -24,6 +24,7 @@ obj-$(CONFIG_VIDEO_SAA6752HS) += saa6752hs.o
>  obj-$(CONFIG_VIDEO_AD5820)  += ad5820.o
>  obj-$(CONFIG_VIDEO_AK7375)  += ak7375.o
>  obj-$(CONFIG_VIDEO_DW9714)  += dw9714.o
> +obj-$(CONFIG_VIDEO_DW9768)  += dw9768.o
>  obj-$(CONFIG_VIDEO_DW9807_VCM)  += dw9807-vcm.o
>  obj-$(CONFIG_VIDEO_ADV7170) += adv7170.o
>  obj-$(CONFIG_VIDEO_ADV7175) += adv7175.o
> diff --git a/drivers/media/i2c/dw9768.c b/drivers/media/i2c/dw9768.c
> new file mode 100644
> index 0000000..66d1712
> --- /dev/null
> +++ b/drivers/media/i2c/dw9768.c
> @@ -0,0 +1,349 @@
> +// SPDX-License-Identifier: GPL-2.0
> +// Copyright (c) 2019 MediaTek Inc.
> +
> +#include <linux/delay.h>
> +#include <linux/i2c.h>
> +#include <linux/module.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/pm_runtime.h>
> +#include <media/v4l2-ctrls.h>
> +#include <media/v4l2-device.h>
> +#include <media/v4l2-subdev.h>
> +
> +#define DW9768_NAME                            "dw9768"
> +#define DW9768_MAX_FOCUS_POS                   1023
> +/*
> + * This sets the minimum granularity for the focus positions.
> + * A value of 1 gives maximum accuracy for a desired focus position
> + */
> +#define DW9768_FOCUS_STEPS                     1
> +/*
> + * DW9768 separates two registers to control the VCM position.
> + * One for MSB value, another is LSB value.
> + */
> +#define DW9768_REG_MASK_MSB                    0x03
> +#define DW9768_REG_MASK_LSB                    0xff
> +#define DW9768_SET_POSITION_ADDR                0x03
> +
> +#define DW9768_CMD_DELAY                       0xff
> +#define DW9768_CTRL_DELAY_US                   5000
> +
> +#define DW9768_DAC_SHIFT                       8
> +
> +/* dw9768 device structure */
> +struct dw9768 {
> +       struct v4l2_ctrl_handler ctrls;
> +       struct v4l2_subdev sd;
> +       struct regulator *vin;
> +       struct regulator *vdd;
> +};
> +
> +static inline struct dw9768 *to_dw9768_vcm(struct v4l2_ctrl *ctrl)
> +{
> +       return container_of(ctrl->handler, struct dw9768, ctrls);
> +}
> +
> +static inline struct dw9768 *sd_to_dw9768_vcm(struct v4l2_subdev *subdev)
> +{
> +       return container_of(subdev, struct dw9768, sd);
> +}
> +
> +struct regval_list {
> +       unsigned char reg_num;
> +       unsigned char value;
> +};
> +
> +static struct regval_list dw9768_init_regs[] = {
> +       {0x02, 0x02},
> +       {DW9768_CMD_DELAY, DW9768_CMD_DELAY},
> +       {0x06, 0x41},
> +       {0x07, 0x39},
> +       {DW9768_CMD_DELAY, DW9768_CMD_DELAY},
> +};
> +
> +static struct regval_list dw9768_release_regs[] = {
> +       {0x02, 0x00},
> +       {DW9768_CMD_DELAY, DW9768_CMD_DELAY},
> +       {0x01, 0x00},
> +       {DW9768_CMD_DELAY, DW9768_CMD_DELAY},
> +};
> +
> +static int dw9768_write_smbus(struct dw9768 *dw9768, unsigned char reg,
> +                             unsigned char value)
> +{
> +       struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> +       int ret;
> +
> +       if (reg == DW9768_CMD_DELAY  && value == DW9768_CMD_DELAY)

Do we really need both to be set to this command?

> +               usleep_range(DW9768_CTRL_DELAY_US,
> +                            DW9768_CTRL_DELAY_US + 100);
> +       else
> +               ret = i2c_smbus_write_byte_data(client, reg, value);
> +       return ret;
> +}

Is there any reason to have this as a separate function and not just
implemented inside the function below?

> +
> +static int dw9768_write_array(struct dw9768 *dw9768, struct regval_list *vals,
> +                             u32 len)
> +{
> +       unsigned int i;
> +       int ret;
> +
> +       for (i = 0; i < len; i++) {
> +               ret = dw9768_write_smbus(dw9768, vals->reg_num, vals->value);
> +               if (ret < 0)
> +                       return ret;
> +       }
> +       return 0;
> +}
> +
> +static int dw9768_set_position(struct dw9768 *dw9768, u16 val)
> +{
> +       struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> +       u8 addr[2];
> +
> +       addr[0] = (val >> DW9768_DAC_SHIFT) & DW9768_REG_MASK_MSB;
> +       addr[1] = val & DW9768_REG_MASK_LSB;
> +
> +       return i2c_smbus_write_block_data(client, DW9768_SET_POSITION_ADDR,
> +                                         ARRAY_SIZE(addr), addr);
> +}
> +
> +static int dw9768_release(struct dw9768 *dw9768)
> +{
> +       return dw9768_write_array(dw9768, dw9768_release_regs,
> +                                 ARRAY_SIZE(dw9768_release_regs));
> +}
> +
> +static int dw9768_init(struct dw9768 *dw9768)
> +{
> +       return dw9768_write_array(dw9768, dw9768_init_regs,
> +                                 ARRAY_SIZE(dw9768_init_regs));
> +}

Given that the 2 functions above are just called from 1 place,
wouldn't it make sense to just call dw9768_write_array() directly from
there?

> +
> +/* Power handling */
> +static int dw9768_power_off(struct dw9768 *dw9768)
> +{
> +       struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> +       int ret;
> +
> +       ret = dw9768_release(dw9768);
> +       if (ret)
> +               dev_err(&client->dev, "dw9768 release failed!\n");
> +
> +       ret = regulator_disable(dw9768->vin);
> +       if (ret)
> +               return ret;
> +
> +       return regulator_disable(dw9768->vdd);
> +}
> +
> +static int dw9768_power_on(struct dw9768 *dw9768)
> +{
> +       int ret;
> +
> +       ret = regulator_enable(dw9768->vin);
> +       if (ret < 0)
> +               return ret;
> +
> +       ret = regulator_enable(dw9768->vdd);
> +       if (ret < 0)
> +               return ret;
> +
> +       ret = dw9768_init(dw9768);
> +       if (ret < 0)
> +               goto fail;
> +
> +       return 0;
> +
> +fail:
> +       regulator_disable(dw9768->vin);
> +       regulator_disable(dw9768->vdd);
> +
> +       return ret;
> +}
> +
> +static int dw9768_set_ctrl(struct v4l2_ctrl *ctrl)
> +{
> +       struct dw9768 *dw9768 = to_dw9768_vcm(ctrl);
> +
> +       if (ctrl->id == V4L2_CID_FOCUS_ABSOLUTE)
> +               return dw9768_set_position(dw9768, ctrl->val);
> +
> +       return 0;
> +}
> +
> +static const struct v4l2_ctrl_ops dw9768_vcm_ctrl_ops = {
> +       .s_ctrl = dw9768_set_ctrl,
> +};
> +
> +static int dw9768_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
> +{
> +       int ret;
> +
> +       ret = pm_runtime_get_sync(sd->dev);
> +       if (ret < 0) {
> +               pm_runtime_put_noidle(sd->dev);
> +               return ret;
> +       }
> +
> +       return 0;
> +}
> +
> +static int dw9768_close(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
> +{
> +       pm_runtime_put(sd->dev);
> +
> +       return 0;
> +}
> +
> +static const struct v4l2_subdev_internal_ops dw9768_int_ops = {
> +       .open = dw9768_open,
> +       .close = dw9768_close,
> +};
> +
> +static const struct v4l2_subdev_ops dw9768_ops = { };
> +
> +static void dw9768_subdev_cleanup(struct dw9768 *dw9768)
> +{
> +       v4l2_async_unregister_subdev(&dw9768->sd);
> +       v4l2_ctrl_handler_free(&dw9768->ctrls);
> +       media_entity_cleanup(&dw9768->sd.entity);
> +}
> +
> +static int dw9768_init_controls(struct dw9768 *dw9768)
> +{
> +       struct v4l2_ctrl_handler *hdl = &dw9768->ctrls;
> +       const struct v4l2_ctrl_ops *ops = &dw9768_vcm_ctrl_ops;
> +
> +       v4l2_ctrl_handler_init(hdl, 1);
> +
> +       v4l2_ctrl_new_std(hdl, ops, V4L2_CID_FOCUS_ABSOLUTE,
> +                         0, DW9768_MAX_FOCUS_POS, DW9768_FOCUS_STEPS, 0);
> +
> +       if (hdl->error)
> +               return hdl->error;
> +
> +       dw9768->sd.ctrl_handler = hdl;
> +
> +       return 0;
> +}
> +
> +static int dw9768_probe(struct i2c_client *client)
> +{
> +       struct device *dev = &client->dev;
> +       struct dw9768 *dw9768;
> +       int ret;
> +
> +       dw9768 = devm_kzalloc(dev, sizeof(*dw9768), GFP_KERNEL);
> +       if (!dw9768)
> +               return -ENOMEM;
> +
> +       dw9768->vin = devm_regulator_get(dev, "vin");
> +       if (IS_ERR(dw9768->vin)) {
> +               ret = PTR_ERR(dw9768->vin);
> +               if (ret != -EPROBE_DEFER)
> +                       dev_err(dev, "cannot get vin regulator\n");
> +               return ret;
> +       }
> +
> +       dw9768->vdd = devm_regulator_get(dev, "vdd");
> +       if (IS_ERR(dw9768->vdd)) {
> +               ret = PTR_ERR(dw9768->vdd);
> +               if (ret != -EPROBE_DEFER)
> +                       dev_err(dev, "cannot get vdd regulator\n");
> +               return ret;
> +       }

Any reason not to use the regulator bulk API, as already done in the
fixup patch I shared with you earlier [1]?

[1] https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1757579

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
