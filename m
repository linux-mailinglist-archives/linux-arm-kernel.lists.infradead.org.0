Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F3F7251B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 05:09:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJ6XzBmSqj1uW71ox4Fl5eUzVBayuDsAJYuar5xMf30=; b=c5IfX5fbpWO24v
	MlX8LLpVbSt0bl+jJ3qNng9k3nEN8Dzrxqvwu0tHQoDd+9kABrPr9TBxdFCtvwA5jXvU2vNqn4tL6
	VGsKT7GotRkuGk1XTRcGNXtwu68g6Mkq2D6OMs3td6Aw6f4x0Lv7WKwpMUQz5G7yzIgi7fk2K0fkK
	uWpPHNOHfXrbT2mb/JXFoykkNFD546kzvmtyBwTlyJM2lsu2z7vry/fzfhl7r6orCYOWlWWH6I0tf
	ENxxqF6WWVECLZ+q1n+Zj7uIdCnavIhcgmT716j79ZFMSqIu1tPYe10Un5On4p4jRkSDJCSm3/nAD
	05ZZWdC8cCEk4Di198Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq7eH-0003DS-Rm; Wed, 24 Jul 2019 03:09:01 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq7dy-0003Co-7z; Wed, 24 Jul 2019 03:08:44 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 20:08:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,300,1559545200"; d="scan'208";a="344960870"
Received: from ipu5-build.bj.intel.com (HELO [10.238.232.193])
 ([10.238.232.193])
 by orsmga005.jf.intel.com with ESMTP; 23 Jul 2019 20:08:33 -0700
Subject: Re: [PATCH 2/2] media: i2c: dw9768: Add DW9768 VCM driver
To: dongchun.zhu@mediatek.com, mchehab@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, matthias.bgg@gmail.com, sakari.ailus@linux.intel.com,
 tfiga@chromium.org, bingbu.cao@intel.com
References: <20190708100641.2702-1-dongchun.zhu@mediatek.com>
 <20190708100641.2702-3-dongchun.zhu@mediatek.com>
From: Bingbu Cao <bingbu.cao@linux.intel.com>
Message-ID: <576bb964-c16d-2ca2-e3ec-feff2e155d3c@linux.intel.com>
Date: Wed, 24 Jul 2019 11:16:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190708100641.2702-3-dongchun.zhu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_200842_351663_95578383 
X-CRM114-Status: GOOD (  32.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 shengnan.wang@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, louis.kuo@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 7/8/19 6:06 PM, dongchun.zhu@mediatek.com wrote:
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> 
> This patch adds a V4L2 sub-device driver for DW9768 lens voice coil,
> and provides control to set the desired focus.
> 
> The DW9807 is a 10 bit DAC from Dongwoon, designed for linear
> control of voice coil motor.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  MAINTAINERS                |   1 +
>  drivers/media/i2c/Kconfig  |  10 +
>  drivers/media/i2c/Makefile |   1 +
>  drivers/media/i2c/dw9768.c | 458 +++++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 470 insertions(+)
>  create mode 100644 drivers/media/i2c/dw9768.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 8f6ac93..17152d7 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4877,6 +4877,7 @@ M:	Dongchun Zhu <dongchun.zhu@mediatek.com>
>  L:	linux-media@vger.kernel.org
>  T:	git git://linuxtv.org/media_tree.git
>  S:	Maintained
> +F:	drivers/media/i2c/dw9768.c
>  F:	Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt
>  
>  DONGWOON DW9807 LENS VOICE COIL DRIVER
> diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
> index 7793358..8ff6c95 100644
> --- a/drivers/media/i2c/Kconfig
> +++ b/drivers/media/i2c/Kconfig
> @@ -1014,6 +1014,16 @@ config VIDEO_DW9714
>  	  capability. This is designed for linear control of
>  	  voice coil motors, controlled via I2C serial interface.
>  
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
> index d8ad9da..944fbf6 100644
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
> index 0000000..f5b5591
> --- /dev/null
> +++ b/drivers/media/i2c/dw9768.c
> @@ -0,0 +1,458 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2018 MediaTek Inc.
> + */
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
> +#define DW9768_VOLTAGE_ANALOG			2800000
> +#define DW9768_NAME				"dw9768"
> +#define DW9768_MAX_FOCUS_POS			1023
> +/*
> + * This sets the minimum granularity for the focus positions.
> + * A value of 1 gives maximum accuracy for a desired focus position
> + */
> +#define DW9768_FOCUS_STEPS			1
> +
> +#define DW9768_CTRL_DELAY_US			5000
> +
> +#define DW9768_REG_DAC_MSB			0x03
> +#define DW9768_REG_DAC_LSB			0x04
> +#define DW9768_REG_NULL				0xff
> +
> +#define DW9768_DAC_SHIFT			8
> +
> +#define DW9768_REG_VALUE_16BIT			2
> +
> +/* dw9768 device structure */
> +struct dw9768_device {
> +	struct v4l2_ctrl_handler ctrls;
> +	struct v4l2_subdev sd;
> +	struct regulator *analog_regulator;
> +	/*
> +	 * Serialize control access, get/set format, get selection
> +	 * and start streaming.
> +	 */
> +	struct mutex power_lock;
> +
> +	int power_count;
> +	bool standby;
> +};
> +
> +static inline struct dw9768_device *to_dw9768_vcm(struct v4l2_ctrl *ctrl)
> +{
> +	return container_of(ctrl->handler, struct dw9768_device, ctrls);
> +}
> +
> +static inline struct dw9768_device *sd_to_dw9768_vcm(struct v4l2_subdev *subdev)
> +{
> +	return container_of(subdev, struct dw9768_device, sd);
> +}
> +
> +static int dw9768_i2c_write(struct dw9768_device *dw9768_dev, u8 *data,
> +			    int size)
> +{
> +	struct i2c_client *client = v4l2_get_subdevdata(&dw9768_dev->sd);
> +	struct i2c_msg msg;
> +	u8 *w_buf = NULL;
> +	u8 retry_cnt = 3;
> +	int ret;
> +
> +	if (!client->adapter)
> +		return -ENODEV;
> +
> +	if (size != 1 && size != 2)
> +		return -EINVAL;
> +
> +	memset(&msg, 0, sizeof(struct i2c_msg));
> +
> +	w_buf = kzalloc(size, GFP_KERNEL);
> +	if (!w_buf)
> +		return -1;
return -ENOMEM;
> +
> +	memcpy(w_buf, data, size);
> +
> +	msg.addr  = client->addr;
> +	msg.flags = 0;
> +	msg.len   = size;
> +	msg.buf   = w_buf;
> +
> +	do {
> +		ret = i2c_transfer(client->adapter, &msg, 1);
> +		if (ret != 1)
> +			dev_err(&client->dev, "write fail, ret:%d, retry:%d\n",
> +				ret, retry_cnt);
> +		else
> +			break;
> +		retry_cnt--;
> +	} while (retry_cnt != 0);
> +
> +	if (retry_cnt == 0)	{
> +		dev_err(&client->dev, "i2c write fail(%d)\n", ret);
> +		return -EIO;
> +	}
> +
> +	kfree(w_buf);
> +
> +	return 0;
> +}
> +
> +static int dw9768_release(struct dw9768_device *dw9768_dev)
> +{
> +	unsigned char i;
> +	int ret;
> +
> +	char puSendCmdArray[4][2] = {
> +		{0x02, 0x00}, {DW9768_REG_NULL, DW9768_REG_NULL},
> +		{0x01, 0x00}, {DW9768_REG_NULL, DW9768_REG_NULL},
> +	};
> +
> +	for (i = 0; i < (sizeof(puSendCmdArray) / sizeof(char)) /
> +	     (sizeof(puSendCmdArray[0]) / sizeof(char)); i++) {> +		if (puSendCmdArray[i][0] != DW9768_REG_NULL) {
> +			ret = dw9768_i2c_write(dw9768_dev, puSendCmdArray[i],
> +					       DW9768_REG_VALUE_16BIT);
> +			if (ret < 0)
> +				return ret;
> +		} else {
> +			usleep_range(DW9768_CTRL_DELAY_US,
> +				     DW9768_CTRL_DELAY_US + 100);
> +		}
> +	}
Can we make this block more simple?  I think the loop is not necessary.
> +
> +	return 0;
> +}
> +
> +static int dw9768_init(struct dw9768_device *dw9768_dev)
> +{
> +	unsigned char i;
> +	int ret;
> +
> +	char puSendCmdArray[5][2] = {
> +		{0x02, 0x02}, {DW9768_REG_NULL, DW9768_REG_NULL},
> +		{0x06, 0x41}, {0x07, 0x39}, {DW9768_REG_NULL, DW9768_REG_NULL},
> +	};
> +
> +	for (i = 0; i < (sizeof(puSendCmdArray) / sizeof(char)) /
> +	     (sizeof(puSendCmdArray[0]) / sizeof(char)); i++) {
> +		if (puSendCmdArray[i][0] != DW9768_REG_NULL) {
> +			ret = dw9768_i2c_write(dw9768_dev, puSendCmdArray[i],
> +					       DW9768_REG_VALUE_16BIT);
> +			if (ret < 0)
> +				return ret;
> +		} else {
> +			usleep_range(DW9768_CTRL_DELAY_US,
> +				     DW9768_CTRL_DELAY_US + 100);
> +		}
> +	}
Ditto.
> +
> +	return 0;
> +}
> +
> +/*
> + * Power handling
> + */
> +static int dw9768_power_off(struct dw9768_device *dw9768_dev, bool standby)
> +{
> +	struct i2c_client *client = v4l2_get_subdevdata(&dw9768_dev->sd);
> +	int ret;
> +
> +	/*
> +	 * Go to standby first as real power off my be denied by the hardware
typo? "may be denied"
> +	 * (single power line control for both dw9768_dev and sensor).
> +	 */
> +	if (standby) {
> +		dw9768_dev->standby = true;
> +		ret = dw9768_release(dw9768_dev);
> +		if (ret)
> +			dev_err(&client->dev, "dw9768_release failed!\n");
> +	}
> +	ret = regulator_disable(dw9768_dev->analog_regulator);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static int dw9768_power_on(struct dw9768_device *dw9768_dev, bool restore)
> +{
> +	int ret;
> +
> +	ret = regulator_enable(dw9768_dev->analog_regulator);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (restore) {
> +		/* Restore the hardware settings. */
> +		dw9768_dev->standby = false;
> +		ret = dw9768_init(dw9768_dev);
> +		if (ret < 0)
> +			goto fail;
> +	}
> +
> +	return 0;
> +
> +fail:
> +	dw9768_dev->standby = true;
> +	regulator_disable(dw9768_dev->analog_regulator);
> +
> +	return ret;
> +}
> +
> +/*
> + * Calculate status word and write it to the device based on current
> + * values of V4L2 controls. It is assumed that the stored V4L2 control
> + * values are properly limited and rounded.
> + */
> +static int dw9768_update_hw(struct dw9768_device *dw9768_dev, u16 val)
> +{
> +	unsigned char i;
> +	int ret;
> +
> +	char puSendCmdArray[2][2] = {
> +		{DW9768_REG_DAC_MSB, (char)(val >> DW9768_DAC_SHIFT)},
> +		{DW9768_REG_DAC_LSB, (char)(val & 0xFF)},
> +	};
> +
> +	for (i = 0; i < (sizeof(puSendCmdArray) / sizeof(char)) /
> +	     (sizeof(puSendCmdArray[0]) / sizeof(char)); i++) {
> +		ret = dw9768_i2c_write(dw9768_dev, puSendCmdArray[i],
> +				       DW9768_REG_VALUE_16BIT);
> +		if (ret)
> +			return ret;
> +	}
ditto.
> +
> +	return 0;
> +}
> +
> +static int dw9768_set_ctrl(struct v4l2_ctrl *ctrl)
> +{
> +	struct dw9768_device *dw9768_dev = to_dw9768_vcm(ctrl);
> +
> +	if (ctrl->id == V4L2_CID_FOCUS_ABSOLUTE)
> +		return dw9768_update_hw(dw9768_dev, ctrl->val);
> +
> +	return 0;
> +}
> +
> +static const struct v4l2_ctrl_ops dw9768_vcm_ctrl_ops = {
> +	.s_ctrl = dw9768_set_ctrl,
> +};
> +
> +static int
> +dw9768_set_power(struct v4l2_subdev *subdev, int on)
> +{
> +	struct dw9768_device *dw9768_dev = sd_to_dw9768_vcm(subdev);
> +	int ret = 0;
> +
> +	mutex_lock(&dw9768_dev->power_lock);
> +
> +	/*
> +	 * If the power count is modified from 0 to != 0 or from != 0 to 0,
> +	 * update the power state.
> +	 */
> +	if (dw9768_dev->power_count == !on) {
> +		ret = on ? dw9768_power_on(dw9768_dev, true) :
> +			dw9768_power_off(dw9768_dev, true);
> +		if (ret < 0)
> +			goto done;
> +	}
> +
> +	/* Update the power count. */
> +	dw9768_dev->power_count += on ? 1 : -1;
> +	WARN_ON(dw9768_dev->power_count < 0);
> +
> +done:
> +	mutex_unlock(&dw9768_dev->power_lock);
> +	return ret;
> +}
> +
> +static int dw9768_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
> +{
> +	return dw9768_set_power(sd, 1);
> +}
> +
> +static int dw9768_close(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
> +{
> +	return dw9768_set_power(sd, 0);
> +}
I am a little confused about the pm control here.
Could we use the pm generic APIs to help do this?
> +
> +static const struct v4l2_subdev_internal_ops dw9768_int_ops = {
> +	.open = dw9768_open,
> +	.close = dw9768_close,
> +};
> +
> +static const struct v4l2_subdev_ops dw9768_ops = { };
> +
> +static void dw9768_subdev_cleanup(struct dw9768_device *dw9768_dev)
> +{
> +	v4l2_async_unregister_subdev(&dw9768_dev->sd);
> +	v4l2_ctrl_handler_free(&dw9768_dev->ctrls);
> +	media_entity_cleanup(&dw9768_dev->sd.entity);
> +}
> +
> +static int dw9768_init_controls(struct dw9768_device *dw9768_dev)
> +{
> +	struct v4l2_ctrl_handler *hdl = &dw9768_dev->ctrls;
> +	const struct v4l2_ctrl_ops *ops = &dw9768_vcm_ctrl_ops;
> +
> +	v4l2_ctrl_handler_init(hdl, 1);
> +
> +	v4l2_ctrl_new_std(hdl, ops, V4L2_CID_FOCUS_ABSOLUTE,
> +			  0, DW9768_MAX_FOCUS_POS, DW9768_FOCUS_STEPS, 0);
> +
> +	if (hdl->error) {
> +		dev_err(dw9768_dev->sd.dev, "%s fail error: 0x%x\n",
> +			__func__, hdl->error);
> +		return hdl->error;
> +	}
> +
> +	dw9768_dev->sd.ctrl_handler = hdl;
> +
> +	return 0;
> +}
> +
> +static int dw9768_probe(struct i2c_client *client)
> +{
> +	struct device *dev = &client->dev;
> +	struct dw9768_device *dw9768_dev;
> +	int rval;
> +
> +	dw9768_dev = devm_kzalloc(&client->dev, sizeof(*dw9768_dev),
> +				  GFP_KERNEL);
> +	if (!dw9768_dev)
> +		return -ENOMEM;
> +
> +	dw9768_dev->analog_regulator = devm_regulator_get(dev, "afvdd");
> +	if (IS_ERR(dw9768_dev->analog_regulator)) {
> +		dev_err(dev, "cannot get analog regulator\n");
> +		return PTR_ERR(dw9768_dev->analog_regulator);
> +	}
> +
> +	rval = regulator_set_voltage(dw9768_dev->analog_regulator,
> +				     DW9768_VOLTAGE_ANALOG,
> +				     DW9768_VOLTAGE_ANALOG);
> +	if (rval < 0) {
> +		dev_err(dev, "cannot set analog voltage\n");
> +		return rval;
> +	}
> +
> +	mutex_init(&dw9768_dev->power_lock);
> +
> +	v4l2_i2c_subdev_init(&dw9768_dev->sd, client, &dw9768_ops);
> +	dw9768_dev->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
> +	dw9768_dev->sd.internal_ops = &dw9768_int_ops;
> +
> +	rval = dw9768_init_controls(dw9768_dev);
> +	if (rval)
> +		goto err_cleanup;
> +
> +	rval = media_entity_pads_init(&dw9768_dev->sd.entity, 0, NULL);
> +	if (rval < 0)
> +		goto err_cleanup;
> +
> +	dw9768_dev->sd.entity.function = MEDIA_ENT_F_LENS;
> +
> +	rval = v4l2_async_register_subdev(&dw9768_dev->sd);
> +	if (rval < 0)
> +		goto err_cleanup;
> +
> +	pm_runtime_set_active(dev);
> +	pm_runtime_enable(dev);
> +	pm_runtime_idle(dev);
> +
> +	return 0;
> +
> +err_cleanup:
> +	mutex_destroy(&dw9768_dev->power_lock);
> +	dw9768_subdev_cleanup(dw9768_dev);
> +	dev_err(dev, "Probe failed: %d\n", rval);
> +	return rval;
> +}
> +
> +static int dw9768_remove(struct i2c_client *client)
> +{
> +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> +	struct dw9768_device *dw9768_dev = sd_to_dw9768_vcm(sd);
> +
> +	pm_runtime_disable(&client->dev);
> +	dw9768_subdev_cleanup(dw9768_dev);
> +
> +	return 0;
> +}
> +
> +/*
> + * This function sets the vcm position, so it consumes least current
> + * The lens position is gradually moved in units of DW9768_CTRL_STEPS,
> + * to make the movements smoothly.
> + */
> +static int __maybe_unused dw9768_vcm_suspend(struct device *dev)
> +{
> +	struct i2c_client *client = to_i2c_client(dev);
> +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> +	struct dw9768_device *dw9768_dev = sd_to_dw9768_vcm(sd);
> +
> +	if (!dw9768_dev->power_count)
> +		return 0;
> +
> +	return dw9768_power_off(dw9768_dev, false);
> +}
> +
> +/*
> + * This function sets the vcm position to the value set by the user
> + * through v4l2_ctrl_ops s_ctrl handler
> + * The lens position is gradually moved in units of DW9768_CTRL_STEPS,
> + * to make the movements smoothly.
> + */
> +static int __maybe_unused dw9768_vcm_resume(struct device *dev)
> +{
> +	struct i2c_client *client = to_i2c_client(dev);
> +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> +	struct dw9768_device *dw9768_dev = sd_to_dw9768_vcm(sd);
> +
> +	if (!dw9768_dev->power_count)
> +		return 0;
> +
> +	return dw9768_power_on(dw9768_dev, true);
> +}
> +
> +static const struct i2c_device_id dw9768_id_table[] = {
> +	{ DW9768_NAME, 0 },
> +	{ { 0 } }
> +};
> +MODULE_DEVICE_TABLE(i2c, dw9768_id_table);
> +
> +static const struct of_device_id dw9768_of_table[] = {
> +	{ .compatible = "dongwoon,dw9768" },
> +	{ { 0 } }
> +};
> +MODULE_DEVICE_TABLE(of, dw9768_of_table);
> +
> +static const struct dev_pm_ops dw9768_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(dw9768_vcm_suspend, dw9768_vcm_resume)
> +	SET_RUNTIME_PM_OPS(dw9768_vcm_suspend, dw9768_vcm_resume, NULL)
> +};
> +
> +static struct i2c_driver dw9768_i2c_driver = {
> +	.driver = {
> +		.name = DW9768_NAME,
> +		.pm = &dw9768_pm_ops,
> +		.of_match_table = dw9768_of_table,
> +	},
> +	.probe_new  = dw9768_probe,
> +	.remove = dw9768_remove,
> +	.id_table = dw9768_id_table,
> +};
> +
> +module_i2c_driver(dw9768_i2c_driver);
> +
> +MODULE_AUTHOR("Dongchun Zhu <dongchun.zhu@mediatek.com>");
> +MODULE_DESCRIPTION("DW9768 VCM driver");
> +MODULE_LICENSE("GPL v2");
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
