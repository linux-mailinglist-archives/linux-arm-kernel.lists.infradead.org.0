Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D9DA9CDF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:21:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OaxrNwQLTeO0VjUggoOctbDMroOn+Ye2rPDXNzWmk7g=; b=UkN+Kb2hXSsCfN
	n737n9if+jE4raf8XKy98cWpFHOxsMAC/AWx9LiUPP3XXBi0WV6vax737zJZWPmOBTgu8PH/b+muw
	Ox3FuFM4nMDgkdJlrpU0LkrhVl+lEwG5ocmu4TiqhtsGQgHBBgRzvUCbOacifzl+Wd5CG/fdwv9lz
	PYPiFW6jvLMs/Q/fsbtQ++besZIvOnWyAVPVg248ZENUWC/YSKkAP1bGQWnCuaDLDyuDLs03k/MqO
	sdtePO43ws7wix7tbWuB6ht1WmlKEb0ZjtwHDhc7hbr4iSgViAedyV7YQgA0T8jew9vnNaahFvJ3Q
	sR063gt1t8CqF52BznJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5n1f-0003cl-7i; Thu, 05 Sep 2019 08:21:55 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5n1S-0003bh-JZ; Thu, 05 Sep 2019 08:21:44 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 01:21:40 -0700
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="184168869"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 01:21:36 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 892DB20584; Thu,  5 Sep 2019 11:21:34 +0300 (EEST)
Date: Thu, 5 Sep 2019 11:21:34 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: dongchun.zhu@mediatek.com
Subject: Re: [V2, 2/2] media: i2c: Add DW9768 VCM driver
Message-ID: <20190905082134.GY5475@paasikivi.fi.intel.com>
References: <20190905072142.14606-1-dongchun.zhu@mediatek.com>
 <20190905072142.14606-3-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905072142.14606-3-dongchun.zhu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_012142_695237_E7AD60AE 
X-CRM114-Status: GOOD (  26.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, drinkcat@chromium.org,
 andriy.shevchenko@linux.intel.com, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, sam.hung@mediatek.com, shengnan.wang@mediatek.com,
 tfiga@chromium.org, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 bingbu.cao@intel.com, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

Thanks for the update. A few comments below.

On Thu, Sep 05, 2019 at 03:21:42PM +0800, dongchun.zhu@mediatek.com wrote:
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> =

> This patch adds a V4L2 sub-device driver for DW9768 lens voice coil,
> and provides control to set the desired focus.
> =

> The DW9768 is a 10 bit DAC with 100mA output current sink capability
> from Dongwoon, designed for linear control of voice coil motor,
> and controlled via I2C serial interface.
> =

> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  MAINTAINERS                |   1 +
>  drivers/media/i2c/Kconfig  |  10 ++
>  drivers/media/i2c/Makefile |   1 +
>  drivers/media/i2c/dw9768.c | 349 +++++++++++++++++++++++++++++++++++++++=
++++++
>  4 files changed, 361 insertions(+)
>  create mode 100644 drivers/media/i2c/dw9768.c
> =

> diff --git a/MAINTAINERS b/MAINTAINERS
> index 192a671..c5c9a0e 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4976,6 +4976,7 @@ M:	Dongchun Zhu <dongchun.zhu@mediatek.com>
>  L:	linux-media@vger.kernel.org
>  T:	git git://linuxtv.org/media_tree.git
>  S:	Maintained
> +F:	drivers/media/i2c/dw9768.c
>  F:	Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt
>  =

>  DONGWOON DW9807 LENS VOICE COIL DRIVER
> diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
> index 79ce9ec..dfb665c 100644
> --- a/drivers/media/i2c/Kconfig
> +++ b/drivers/media/i2c/Kconfig
> @@ -1016,6 +1016,16 @@ config VIDEO_DW9714
>  	  capability. This is designed for linear control of
>  	  voice coil motors, controlled via I2C serial interface.
>  =

> +config VIDEO_DW9768
> +	tristate "DW9768 lens voice coil support"
> +	depends on I2C && VIDEO_V4L2 && MEDIA_CONTROLLER
> +	depends on VIDEO_V4L2_SUBDEV_API
> +	help
> +	  This is a driver for the DW9768 camera lens voice coil.
> +	  DW9768 is a 10 bit DAC with 100mA output current sink
> +	  capability. This is designed for linear control of
> +	  voice coil motors, controlled via I2C serial interface.
> +
>  config VIDEO_DW9807_VCM
>  	tristate "DW9807 lens voice coil support"
>  	depends on I2C && VIDEO_V4L2 && MEDIA_CONTROLLER
> diff --git a/drivers/media/i2c/Makefile b/drivers/media/i2c/Makefile
> index fd4ea86..2561239 100644
> --- a/drivers/media/i2c/Makefile
> +++ b/drivers/media/i2c/Makefile
> @@ -24,6 +24,7 @@ obj-$(CONFIG_VIDEO_SAA6752HS) +=3D saa6752hs.o
>  obj-$(CONFIG_VIDEO_AD5820)  +=3D ad5820.o
>  obj-$(CONFIG_VIDEO_AK7375)  +=3D ak7375.o
>  obj-$(CONFIG_VIDEO_DW9714)  +=3D dw9714.o
> +obj-$(CONFIG_VIDEO_DW9768)  +=3D dw9768.o
>  obj-$(CONFIG_VIDEO_DW9807_VCM)  +=3D dw9807-vcm.o
>  obj-$(CONFIG_VIDEO_ADV7170) +=3D adv7170.o
>  obj-$(CONFIG_VIDEO_ADV7175) +=3D adv7175.o
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
> +#define DW9768_NAME				"dw9768"
> +#define DW9768_MAX_FOCUS_POS			1023
> +/*
> + * This sets the minimum granularity for the focus positions.
> + * A value of 1 gives maximum accuracy for a desired focus position
> + */
> +#define DW9768_FOCUS_STEPS			1
> +/*
> + * DW9768 separates two registers to control the VCM position.
> + * One for MSB value, another is LSB value.
> + */
> +#define DW9768_REG_MASK_MSB			0x03
> +#define DW9768_REG_MASK_LSB			0xff
> +#define DW9768_SET_POSITION_ADDR                0x03
> +
> +#define DW9768_CMD_DELAY			0xff
> +#define DW9768_CTRL_DELAY_US			5000
> +
> +#define DW9768_DAC_SHIFT			8
> +
> +/* dw9768 device structure */
> +struct dw9768 {
> +	struct v4l2_ctrl_handler ctrls;
> +	struct v4l2_subdev sd;
> +	struct regulator *vin;
> +	struct regulator *vdd;
> +};
> +
> +static inline struct dw9768 *to_dw9768_vcm(struct v4l2_ctrl *ctrl)
> +{
> +	return container_of(ctrl->handler, struct dw9768, ctrls);
> +}
> +
> +static inline struct dw9768 *sd_to_dw9768_vcm(struct v4l2_subdev *subdev)
> +{
> +	return container_of(subdev, struct dw9768, sd);
> +}
> +
> +struct regval_list {
> +	unsigned char reg_num;
> +	unsigned char value;
> +};
> +
> +static struct regval_list dw9768_init_regs[] =3D {
> +	{0x02, 0x02},
> +	{DW9768_CMD_DELAY, DW9768_CMD_DELAY},
> +	{0x06, 0x41},
> +	{0x07, 0x39},

These need to be documented. Please add #defines for the register addresses
and bits in the registers as needed.

The writes would better be done as function calls; the same applies to the
delays.

> +	{DW9768_CMD_DELAY, DW9768_CMD_DELAY},
> +};
> +
> +static struct regval_list dw9768_release_regs[] =3D {
> +	{0x02, 0x00},
> +	{DW9768_CMD_DELAY, DW9768_CMD_DELAY},
> +	{0x01, 0x00},

Same here.

> +	{DW9768_CMD_DELAY, DW9768_CMD_DELAY},
> +};
> +
> +static int dw9768_write_smbus(struct dw9768 *dw9768, unsigned char reg,
> +			      unsigned char value)
> +{
> +	struct i2c_client *client =3D v4l2_get_subdevdata(&dw9768->sd);
> +	int ret;
> +
> +	if (reg =3D=3D DW9768_CMD_DELAY  && value =3D=3D DW9768_CMD_DELAY)
> +		usleep_range(DW9768_CTRL_DELAY_US,
> +			     DW9768_CTRL_DELAY_US + 100);
> +	else
> +		ret =3D i2c_smbus_write_byte_data(client, reg, value);
> +	return ret;
> +}
> +
> +static int dw9768_write_array(struct dw9768 *dw9768, struct regval_list =
*vals,
> +			      u32 len)
> +{
> +	unsigned int i;
> +	int ret;
> +
> +	for (i =3D 0; i < len; i++) {
> +		ret =3D dw9768_write_smbus(dw9768, vals->reg_num, vals->value);
> +		if (ret < 0)
> +			return ret;
> +	}
> +	return 0;
> +}
> +
> +static int dw9768_set_position(struct dw9768 *dw9768, u16 val)
> +{
> +	struct i2c_client *client =3D v4l2_get_subdevdata(&dw9768->sd);
> +	u8 addr[2];
> +
> +	addr[0] =3D (val >> DW9768_DAC_SHIFT) & DW9768_REG_MASK_MSB;
> +	addr[1] =3D val & DW9768_REG_MASK_LSB;
> +
> +	return i2c_smbus_write_block_data(client, DW9768_SET_POSITION_ADDR,
> +					  ARRAY_SIZE(addr), addr);
> +}
> +
> +static int dw9768_release(struct dw9768 *dw9768)
> +{
> +	return dw9768_write_array(dw9768, dw9768_release_regs,
> +				  ARRAY_SIZE(dw9768_release_regs));
> +}
> +
> +static int dw9768_init(struct dw9768 *dw9768)
> +{
> +	return dw9768_write_array(dw9768, dw9768_init_regs,
> +				  ARRAY_SIZE(dw9768_init_regs));
> +}
> +
> +/* Power handling */
> +static int dw9768_power_off(struct dw9768 *dw9768)
> +{
> +	struct i2c_client *client =3D v4l2_get_subdevdata(&dw9768->sd);
> +	int ret;
> +
> +	ret =3D dw9768_release(dw9768);
> +	if (ret)
> +		dev_err(&client->dev, "dw9768 release failed!\n");
> +
> +	ret =3D regulator_disable(dw9768->vin);
> +	if (ret)
> +		return ret;

You'll need to disable the other regulator unconditionally here.

> +
> +	return regulator_disable(dw9768->vdd);
> +}
> +
> +static int dw9768_power_on(struct dw9768 *dw9768)
> +{
> +	int ret;
> +
> +	ret =3D regulator_enable(dw9768->vin);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret =3D regulator_enable(dw9768->vdd);
> +	if (ret < 0)

You'll need another label to disable only vin.

> +		return ret;
> +
> +	ret =3D dw9768_init(dw9768);
> +	if (ret < 0)
> +		goto fail;
> +
> +	return 0;
> +
> +fail:
> +	regulator_disable(dw9768->vin);
> +	regulator_disable(dw9768->vdd);
> +
> +	return ret;
> +}
> +
> +static int dw9768_set_ctrl(struct v4l2_ctrl *ctrl)
> +{
> +	struct dw9768 *dw9768 =3D to_dw9768_vcm(ctrl);
> +
> +	if (ctrl->id =3D=3D V4L2_CID_FOCUS_ABSOLUTE)
> +		return dw9768_set_position(dw9768, ctrl->val);
> +
> +	return 0;
> +}
> +
> +static const struct v4l2_ctrl_ops dw9768_vcm_ctrl_ops =3D {
> +	.s_ctrl =3D dw9768_set_ctrl,
> +};
> +
> +static int dw9768_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
> +{
> +	int ret;
> +
> +	ret =3D pm_runtime_get_sync(sd->dev);
> +	if (ret < 0) {
> +		pm_runtime_put_noidle(sd->dev);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int dw9768_close(struct v4l2_subdev *sd, struct v4l2_subdev_fh *f=
h)
> +{
> +	pm_runtime_put(sd->dev);
> +
> +	return 0;
> +}
> +
> +static const struct v4l2_subdev_internal_ops dw9768_int_ops =3D {
> +	.open =3D dw9768_open,
> +	.close =3D dw9768_close,
> +};
> +
> +static const struct v4l2_subdev_ops dw9768_ops =3D { };
> +
> +static void dw9768_subdev_cleanup(struct dw9768 *dw9768)
> +{
> +	v4l2_async_unregister_subdev(&dw9768->sd);
> +	v4l2_ctrl_handler_free(&dw9768->ctrls);
> +	media_entity_cleanup(&dw9768->sd.entity);
> +}
> +
> +static int dw9768_init_controls(struct dw9768 *dw9768)
> +{
> +	struct v4l2_ctrl_handler *hdl =3D &dw9768->ctrls;
> +	const struct v4l2_ctrl_ops *ops =3D &dw9768_vcm_ctrl_ops;
> +
> +	v4l2_ctrl_handler_init(hdl, 1);
> +
> +	v4l2_ctrl_new_std(hdl, ops, V4L2_CID_FOCUS_ABSOLUTE,
> +			  0, DW9768_MAX_FOCUS_POS, DW9768_FOCUS_STEPS, 0);
> +
> +	if (hdl->error)
> +		return hdl->error;
> +
> +	dw9768->sd.ctrl_handler =3D hdl;
> +
> +	return 0;
> +}
> +
> +static int dw9768_probe(struct i2c_client *client)
> +{
> +	struct device *dev =3D &client->dev;
> +	struct dw9768 *dw9768;
> +	int ret;
> +
> +	dw9768 =3D devm_kzalloc(dev, sizeof(*dw9768), GFP_KERNEL);
> +	if (!dw9768)
> +		return -ENOMEM;
> +
> +	dw9768->vin =3D devm_regulator_get(dev, "vin");
> +	if (IS_ERR(dw9768->vin)) {
> +		ret =3D PTR_ERR(dw9768->vin);
> +		if (ret !=3D -EPROBE_DEFER)
> +			dev_err(dev, "cannot get vin regulator\n");
> +		return ret;
> +	}
> +
> +	dw9768->vdd =3D devm_regulator_get(dev, "vdd");
> +	if (IS_ERR(dw9768->vdd)) {
> +		ret =3D PTR_ERR(dw9768->vdd);
> +		if (ret !=3D -EPROBE_DEFER)
> +			dev_err(dev, "cannot get vdd regulator\n");
> +		return ret;
> +	}
> +
> +	v4l2_i2c_subdev_init(&dw9768->sd, client, &dw9768_ops);
> +	dw9768->sd.flags |=3D V4L2_SUBDEV_FL_HAS_DEVNODE;
> +	dw9768->sd.internal_ops =3D &dw9768_int_ops;
> +
> +	ret =3D dw9768_init_controls(dw9768);
> +	if (ret)
> +		goto err_cleanup;
> +
> +	ret =3D media_entity_pads_init(&dw9768->sd.entity, 0, NULL);
> +	if (ret < 0)
> +		goto err_cleanup;
> +
> +	dw9768->sd.entity.function =3D MEDIA_ENT_F_LENS;
> +
> +	ret =3D v4l2_async_register_subdev(&dw9768->sd);
> +	if (ret < 0)
> +		goto err_cleanup;
> +
> +	pm_runtime_enable(dev);
> +
> +	return 0;
> +
> +err_cleanup:
> +	dw9768_subdev_cleanup(dw9768);
> +	return ret;
> +}
> +
> +static int dw9768_remove(struct i2c_client *client)
> +{
> +	struct v4l2_subdev *sd =3D i2c_get_clientdata(client);
> +	struct dw9768 *dw9768 =3D sd_to_dw9768_vcm(sd);
> +
> +	dw9768_subdev_cleanup(dw9768);
> +	pm_runtime_disable(&client->dev);
> +	if (!pm_runtime_status_suspended(&client->dev))
> +		dw9768_power_off(dw9768);
> +	pm_runtime_set_suspended(&client->dev);
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused dw9768_vcm_suspend(struct device *dev)
> +{
> +	struct i2c_client *client =3D to_i2c_client(dev);
> +	struct v4l2_subdev *sd =3D i2c_get_clientdata(client);
> +	struct dw9768 *dw9768 =3D sd_to_dw9768_vcm(sd);
> +
> +	return dw9768_power_off(dw9768);

Please merge this function with dw9768_power_off(); same for
dw9768_vcm_resume() below.

> +}
> +
> +static int __maybe_unused dw9768_vcm_resume(struct device *dev)
> +{
> +	struct i2c_client *client =3D to_i2c_client(dev);
> +	struct v4l2_subdev *sd =3D i2c_get_clientdata(client);
> +	struct dw9768 *dw9768 =3D sd_to_dw9768_vcm(sd);
> +
> +	return dw9768_power_on(dw9768);
> +}
> +
> +static const struct i2c_device_id dw9768_id_table[] =3D {
> +	{ DW9768_NAME, 0 },
> +	{ },

Could you drop the I=B2C ID table?

> +};
> +MODULE_DEVICE_TABLE(i2c, dw9768_id_table);
> +
> +static const struct of_device_id dw9768_of_table[] =3D {
> +	{ .compatible =3D "dongwoon,dw9768" },
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, dw9768_of_table);
> +
> +static const struct dev_pm_ops dw9768_pm_ops =3D {
> +	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
> +				pm_runtime_force_resume)
> +	SET_RUNTIME_PM_OPS(dw9768_vcm_suspend, dw9768_vcm_resume, NULL)
> +};
> +
> +static struct i2c_driver dw9768_i2c_driver =3D {
> +	.driver =3D {
> +		.name =3D DW9768_NAME,
> +		.pm =3D &dw9768_pm_ops,
> +		.of_match_table =3D dw9768_of_table,
> +	},
> +	.probe_new  =3D dw9768_probe,
> +	.remove =3D dw9768_remove,
> +	.id_table =3D dw9768_id_table,
> +};
> +
> +module_i2c_driver(dw9768_i2c_driver);
> +
> +MODULE_AUTHOR("Dongchun Zhu <dongchun.zhu@mediatek.com>");
> +MODULE_DESCRIPTION("DW9768 VCM driver");
> +MODULE_LICENSE("GPL v2");

-- =

Kind regards,

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
