Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CF018992C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 11:20:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iSU6FjZxBZj28lPW/Mr2LhIQDoRHrcnd8LZ50mw2iGg=; b=nnzdnTRtj5T92D
	HJSSA3AfOqP5b0pSNLou7gf4pV+y87Rqf9NmL9ORHt6vEFJIWA7Tpr6VO7pI8g8A2SlaQR9HMbjwF
	QDnwNX2YLJYEW+8hgfWD2a2M9rFNf2psBB0lJeOPKcNePFkpuhhE8dCugulu0LVz6BbHz5/+aDHfJ
	bXpL90UqgMTsuyDtt7+NR3NT2c6PH+PoKopk3n94NA8s3NGJ2l1fcVlt2OE+cn06oI0eb/S/PGAnN
	IQpXrLgEkDeZoM6ptf+ctkuZ3wRq6f20NQBBm0Olu6KnGV8/XVT9HfZHgjoIJDwWaq2bU2Odekwfx
	/lQ5n25ynZGTecOMN0sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEVoe-0007rF-O8; Wed, 18 Mar 2020 10:20:48 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEVoT-0007pt-LS; Wed, 18 Mar 2020 10:20:39 +0000
X-UUID: 4ab92faa83c14d6e97ff5ff793a2f5f6-20200318
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=q7w+ff+OkgNRRznCvu3F2DnDbhEmk9ORZpPlMsohg0U=; 
 b=Oy8iYa+kbnQKKSvwO0RVFGXOu35UKB5ed1uajFmjV8jjA8PLdoqQr1EcvHJizS08fDWIw1OAVGUKj289YakCxRUGH9xnxy8ZgjHTi8ZchMTe2fn0iSCDOe1dgiaXgzzmJ00yzHUWQlKoIiSXWX/td6CSZ+fdoTunBu3R1Ra5tjY=;
X-UUID: 4ab92faa83c14d6e97ff5ff793a2f5f6-20200318
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1164033177; Wed, 18 Mar 2020 02:20:30 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Mar 2020 03:21:00 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 18 Mar 2020 18:20:19 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 18 Mar 2020 18:20:15 +0800
Message-ID: <1584526824.5781.56.camel@mhfsdcap03>
Subject: Re: [V3, 2/2] media: i2c: Add DW9768 VCM driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Date: Wed, 18 Mar 2020 18:20:24 +0800
In-Reply-To: <20200305120516.GQ5379@paasikivi.fi.intel.com>
References: <20200228155958.20657-1-dongchun.zhu@mediatek.com>
 <20200228155958.20657-3-dongchun.zhu@mediatek.com>
 <20200305120516.GQ5379@paasikivi.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B93F049E13CD441DD759E4CFC49188E04B918DB9DFBB874A99C8CE09738A97662000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_032037_720084_01B3F254 
X-CRM114-Status: GOOD (  28.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 devicetree@vger.kernel.org, shengnan.wang@mediatek.com, tfiga@chromium.org,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 bingbu.cao@intel.com, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

On Thu, 2020-03-05 at 14:05 +0200, Sakari Ailus wrote:
> Hi Dongchun,
> 
> Thanks for the update.
> 
> On Fri, Feb 28, 2020 at 11:59:58PM +0800, Dongchun Zhu wrote:
> > This patch adds a V4L2 sub-device driver for DW9768 lens voice coil,
> > and provides control to set the desired focus via I2C serial interface.
> > 
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  MAINTAINERS                |   1 +
> >  drivers/media/i2c/Kconfig  |  10 ++
> >  drivers/media/i2c/Makefile |   1 +
> >  drivers/media/i2c/dw9768.c | 437 +++++++++++++++++++++++++++++++++++++++++++++
> >  4 files changed, 449 insertions(+)
> >  create mode 100644 drivers/media/i2c/dw9768.c
> > 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index b805e29..0bb894a 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -5139,6 +5139,7 @@ M:	Dongchun Zhu <dongchun.zhu@mediatek.com>
> >  L:	linux-media@vger.kernel.org
> >  T:	git git://linuxtv.org/media_tree.git
> >  S:	Maintained
> > +F:	drivers/media/i2c/dw9768.c
> >  F:	Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> >  
> >  DONGWOON DW9807 LENS VOICE COIL DRIVER
> > diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
> > index c68e002..aa60781 100644
> > --- a/drivers/media/i2c/Kconfig
> > +++ b/drivers/media/i2c/Kconfig
> > @@ -1024,6 +1024,16 @@ config VIDEO_DW9714
> >  	  capability. This is designed for linear control of
> >  	  voice coil motors, controlled via I2C serial interface.
> >  
> > +config VIDEO_DW9768
> > +	tristate "DW9768 lens voice coil support"
> > +	depends on I2C && VIDEO_V4L2 && MEDIA_CONTROLLER
> > +	depends on VIDEO_V4L2_SUBDEV_API
> > +	help
> > +	  This is a driver for the DW9768 camera lens voice coil.
> > +	  DW9768 is a 10 bit DAC with 100mA output current sink
> > +	  capability. This is designed for linear control of
> > +	  voice coil motors, controlled via I2C serial interface.
> > +
> >  config VIDEO_DW9807_VCM
> >  	tristate "DW9807 lens voice coil support"
> >  	depends on I2C && VIDEO_V4L2 && MEDIA_CONTROLLER
> > diff --git a/drivers/media/i2c/Makefile b/drivers/media/i2c/Makefile
> > index c147bb9..ec94434 100644
> > --- a/drivers/media/i2c/Makefile
> > +++ b/drivers/media/i2c/Makefile
> > @@ -24,6 +24,7 @@ obj-$(CONFIG_VIDEO_SAA6752HS) += saa6752hs.o
> >  obj-$(CONFIG_VIDEO_AD5820)  += ad5820.o
> >  obj-$(CONFIG_VIDEO_AK7375)  += ak7375.o
> >  obj-$(CONFIG_VIDEO_DW9714)  += dw9714.o
> > +obj-$(CONFIG_VIDEO_DW9768)  += dw9768.o
> >  obj-$(CONFIG_VIDEO_DW9807_VCM)  += dw9807-vcm.o
> >  obj-$(CONFIG_VIDEO_ADV7170) += adv7170.o
> >  obj-$(CONFIG_VIDEO_ADV7175) += adv7175.o
> > diff --git a/drivers/media/i2c/dw9768.c b/drivers/media/i2c/dw9768.c
> > new file mode 100644
> > index 0000000..dec1abc
> > --- /dev/null
> > +++ b/drivers/media/i2c/dw9768.c
> > @@ -0,0 +1,437 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +// Copyright (c) 2020 MediaTek Inc.
> > +
> > +#include <linux/delay.h>
> > +#include <linux/i2c.h>
> > +#include <linux/module.h>
> > +#include <linux/regulator/consumer.h>
> > +#include <linux/pm_runtime.h>
> 
> Alphabetical order would be nice.
> 
> > +#include <media/v4l2-async.h>
> > +#include <media/v4l2-ctrls.h>
> > +#include <media/v4l2-device.h>
> > +#include <media/v4l2-subdev.h>
> > +
> > +#define DW9768_NAME				"dw9768"
> > +#define DW9768_MAX_FOCUS_POS			1023
> > +/*
> > + * This sets the minimum granularity for the focus positions.
> > + * A value of 1 gives maximum accuracy for a desired focus position
> > + */
> > +#define DW9768_FOCUS_STEPS			1
> > +
> > +/*
> > + * Ring control and Power control register
> > + * Bit[1] RING_EN
> > + * 0: Direct mode
> > + * 1: AAC mode (ringing control mode)
> > + * Bit[0] PD
> > + * 0: Normal operation mode
> > + * 1: Power down mode
> > + * DW9768 requires waiting time of Topr after PD reset takes place.
> > + */
> > +#define DW9768_RING_PD_CONTROL_REG		0x02
> > +#define DW9768_PD_MODE_OFF			0x00
> > +#define DW9768_PD_MODE_EN			BIT(0)
> > +#define DW9768_AAC_MODE_EN			BIT(1)
> > +
> > +/*
> > + * DW9768 separates two registers to control the VCM position.
> > + * One for MSB value, another is LSB value.
> > + * DAC_MSB: D[9:8] (ADD: 0x03)
> > + * DAC_LSB: D[7:0] (ADD: 0x04)
> > + * D[9:0] DAC data input: positive output current = D[9:0] / 1023 * 100[mA]
> > + */
> > +#define DW9768_MSB_ADDR				0x03
> > +#define DW9768_LSB_ADDR				0x04
> > +#define DW9768_STATUS_ADDR			0x05
> > +
> > +/*
> > + * AAC mode control & prescale register
> > + * Bit[7:5] Namely AC[2:0], decide the VCM mode and operation time.
> > + * 000 Direct(default)
> > + * 001 AAC2 0.48xTvib
> > + * 010 AAC3 0.70xTvib
> > + * 011 AAC4 0.75xTvib
> > + * 100 Reserved
> > + * 101 AAC8 1.13xTvib
> > + * 110 Reserved
> > + * 111 Reserved
> > + * Bit[2:0] Namely PRESC[2:0], set the internal clock dividing rate as follow.
> > + * 000 2
> > + * 001 1(default)
> > + * 010 1/2
> > + * 011 1/4
> > + * 100 8
> > + * 101 4
> > + * 110 Reserved
> > + * 111 Reserved
> > + */
> > +#define DW9768_AAC_PRESC_REG			0x06
> > +#define DW9768_AAC3_SELECT_DIVIDING_RATE_1	0x41
> > +
> > +/*
> > + * VCM period of vibration register
> > + * Bit[5:0] Defined as VCM rising periodic time (Tvib) together with PRESC[2:0]
> > + * Tvib = (6.3ms + AACT[5:0] * 0.1ms) * Dividing Rate
> > + * Dividing Rate is the internal clock dividing rate that is defined at
> > + * PRESCALE register (ADD: 0x06)
> > + */
> > +#define DW9768_AAC_TIME_REG			0x07
> > +#define DW9768_AACT_CNT				0x39
> 
> I wonder how hardware specific are these values, this and the divider?
> 
> The DW9807 has similar configuration but the defaults seem to be just
> fine. What are the defaults in this case?
> 

From hardware specific, the default value of AAC_PRESC_REG is 0x01, and
that value of AAC_TIME_REG is 0x20.

For these two registers, each bit is defined as below.
D[7:0] (D[7:5]-> AC[2:0], D[2:0]-> PRSEC[2:0])
+------+------+------+------+------+------+------+------+
| AC2  | AC1  | AC0  |------|------|PRESC2|PRESC1|PRESC0|
+------+------+------+------+------+------+------+------+

D[7:0] (D[5:0]-> AACT[5:0]).
+------+------+------+------+------+------+------+------+
|------+------+ AACT5| AACT4| AACT3| AACT2| AACT1| AACT0|
+------+------+------+------+------+------+------+------+

> > +
> > +/*
> > + * DW9768 requires waiting time (delay time) of t_OPR after power-up,
> > + * or in the case of PD reset taking place.
> > + */
> > +#define DW9768_T_OPR_US				1000
> > +
> > +/*
> > + * This acts as the minimum granularity of lens movement.
> > + * Keep this value power of 2, so the control steps can be
> > + * uniformly adjusted for gradual lens movement, with desired
> > + * number of control steps.
> > + */
> > +#define DW9768_MOVE_STEPS			16
> > +
> > +/*
> > + * DW9768_AAC_PRESC_REG & DW9768_AAC_TIME_REG determine VCM operation time.
> > + * If DW9768_AAC_PRESC_REG set to be 0x41, DW9768_AAC_TIME_REG set to be 0x39,
> > + * VCM mode would be AAC3, Operation Time would be 0.70xTvib, that is 8.40ms.
> > + */
> > +#define DW9768_MOVE_DELAY_US			8400
> > +#define DW9768_STABLE_TIME_US			20000
> > +
> > +static const char * const dw9768_supply_names[] = {
> > +	"vin",	/* I2C I/O interface power */
> > +	"vdd",	/* VCM power */
> > +};
> > +
> > +#define DW9768_NUM_SUPPLIES ARRAY_SIZE(dw9768_supply_names)
> 
> Please use ARRAY_SIZE() directly instead.
> 
> > +
> > +/* dw9768 device structure */
> > +struct dw9768 {
> > +	struct regulator_bulk_data supplies[DW9768_NUM_SUPPLIES];
> > +	struct v4l2_ctrl_handler ctrls;
> > +	struct v4l2_ctrl *focus;
> > +	struct v4l2_subdev sd;
> > +};
> > +
> > +static inline struct dw9768 *to_dw9768(struct v4l2_ctrl *ctrl)
> > +{
> > +	return container_of(ctrl->handler, struct dw9768, ctrls);
> > +}
> > +
> > +static inline struct dw9768 *sd_to_dw9768(struct v4l2_subdev *subdev)
> > +{
> > +	return container_of(subdev, struct dw9768, sd);
> > +}
> > +
> > +struct regval_list {
> > +	u8 reg_num;
> > +	u8 value;
> > +};
> > +
> > +static struct regval_list dw9768_init_regs[] = {
> 
> const
> 
> > +	{DW9768_RING_PD_CONTROL_REG, DW9768_AAC_MODE_EN},
> > +	{DW9768_AAC_PRESC_REG, DW9768_AAC3_SELECT_DIVIDING_RATE_1},
> > +	{DW9768_AAC_TIME_REG, DW9768_AACT_CNT},
> > +};
> > +
> > +static int dw9768_write_array(struct dw9768 *dw9768, struct regval_list *vals,
> > +			      size_t len)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> > +	unsigned int i;
> > +	int ret;
> > +
> > +	for (i = 0; i < len; i++) {
> > +		ret = i2c_smbus_write_byte_data(client, vals[i].reg_num,
> > +						vals[i].value);
> > +		if (ret < 0)
> > +			return ret;
> > +	}
> > +	return 0;
> > +}
> > +
> > +static int dw9768_set_dac(struct dw9768 *dw9768, u16 val)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> > +
> > +	/* Write VCM position to registers */
> > +	return i2c_smbus_write_word_data(client, DW9768_MSB_ADDR,
> > +					 swab16(val));
> > +}
> > +
> > +static int dw9768_init(struct dw9768 *dw9768)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> > +	int ret, val;
> > +
> > +	/* Reset DW9768_RING_PD_CONTROL_REG to default status 0x00 */
> > +	ret = i2c_smbus_write_byte_data(client, DW9768_RING_PD_CONTROL_REG,
> > +					DW9768_PD_MODE_OFF);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	/*
> > +	 * DW9769 requires waiting delay time of t_OPR
> > +	 * after PD reset takes place.
> > +	 */
> > +	usleep_range(DW9768_T_OPR_US, DW9768_T_OPR_US + 100);
> > +
> > +	ret = dw9768_write_array(dw9768, dw9768_init_regs,
> > +				 ARRAY_SIZE(dw9768_init_regs));
> > +	if (ret)
> > +		return ret;
> > +
> > +	for (val = dw9768->focus->val % DW9768_MOVE_STEPS;
> > +	     val <= dw9768->focus->val;
> > +	     val += DW9768_MOVE_STEPS) {
> > +		ret = dw9768_set_dac(dw9768, val);
> > +		if (ret) {
> > +			dev_err(&client->dev, "%s I2C failure: %d",
> > +				__func__, ret);
> > +			return ret;
> > +		}
> > +		usleep_range(DW9768_MOVE_DELAY_US,
> > +			     DW9768_MOVE_DELAY_US + 1000);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int dw9768_release(struct dw9768 *dw9768)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> > +	int ret, val;
> > +
> > +	for (val = round_down(dw9768->focus->val, DW9768_MOVE_STEPS);
> > +	     val >= 0; val -= DW9768_MOVE_STEPS) {
> > +		ret = dw9768_set_dac(dw9768, val);
> > +		if (ret) {
> > +			dev_err(&client->dev, "%s I2C failure: %d",
> > +				__func__, ret);
> > +			return ret;
> > +		}
> > +		usleep_range(DW9768_MOVE_DELAY_US,
> > +			     DW9768_MOVE_DELAY_US + 1000);
> > +	}
> > +
> > +	/*
> > +	 * Wait for the motor to stabilize after the last movement
> > +	 * to prevent the motor from shaking.
> > +	 */
> > +	usleep_range(DW9768_STABLE_TIME_US - DW9768_MOVE_DELAY_US,
> > +		     DW9768_STABLE_TIME_US - DW9768_MOVE_DELAY_US + 1000);
> > +
> > +	ret = i2c_smbus_write_byte_data(client, DW9768_RING_PD_CONTROL_REG,
> > +					DW9768_PD_MODE_EN);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	/*
> > +	 * DW9769 requires waiting delay time of t_OPR
> > +	 * after PD reset takes place.
> > +	 */
> > +	usleep_range(DW9768_T_OPR_US, DW9768_T_OPR_US + 100);
> > +
> > +	return 0;
> > +}
> > +
> > +/* Power handling */
> > +static int __maybe_unused dw9768_runtime_suspend(struct device *dev)
> > +{
> > +	struct i2c_client *client = to_i2c_client(dev);
> > +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > +	struct dw9768 *dw9768 = sd_to_dw9768(sd);
> > +
> > +	dw9768_release(dw9768);
> > +	regulator_bulk_disable(DW9768_NUM_SUPPLIES, dw9768->supplies);
> > +
> > +	return 0;
> > +}
> > +
> > +static int __maybe_unused dw9768_runtime_resume(struct device *dev)
> > +{
> > +	struct i2c_client *client = to_i2c_client(dev);
> > +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > +	struct dw9768 *dw9768 = sd_to_dw9768(sd);
> > +	int ret;
> > +
> > +	ret = regulator_bulk_enable(DW9768_NUM_SUPPLIES, dw9768->supplies);
> > +	if (ret < 0) {
> > +		dev_err(dev, "failed to enable regulators\n");
> > +		return ret;
> > +	}
> > +
> > +	/*
> > +	 * The datasheet refers to t_OPR that needs to be waited before sending
> > +	 * I2C commands after power-up.
> > +	 */
> > +	usleep_range(DW9768_T_OPR_US, DW9768_T_OPR_US + 100);
> > +
> > +	ret = dw9768_init(dw9768);
> > +	if (ret < 0)
> > +		goto disable_regulator;
> > +
> > +	return 0;
> > +
> > +disable_regulator:
> > +	regulator_bulk_disable(DW9768_NUM_SUPPLIES, dw9768->supplies);
> > +
> > +	return ret;
> > +}
> > +
> > +static int dw9768_set_ctrl(struct v4l2_ctrl *ctrl)
> > +{
> > +	struct dw9768 *dw9768 = to_dw9768(ctrl);
> > +
> > +	if (ctrl->id == V4L2_CID_FOCUS_ABSOLUTE)
> > +		return dw9768_set_dac(dw9768, ctrl->val);
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct v4l2_ctrl_ops dw9768_ctrl_ops = {
> > +	.s_ctrl = dw9768_set_ctrl,
> > +};
> > +
> > +static int dw9768_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
> > +{
> > +	int ret;
> > +
> > +	ret = pm_runtime_get_sync(sd->dev);
> > +	if (ret < 0) {
> > +		pm_runtime_put_noidle(sd->dev);
> > +		return ret;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int dw9768_close(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
> > +{
> > +	pm_runtime_put(sd->dev);
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct v4l2_subdev_internal_ops dw9768_int_ops = {
> > +	.open = dw9768_open,
> > +	.close = dw9768_close,
> > +};
> > +
> > +static const struct v4l2_subdev_ops dw9768_ops = { };
> > +
> > +static int dw9768_init_controls(struct dw9768 *dw9768)
> > +{
> > +	struct v4l2_ctrl_handler *hdl = &dw9768->ctrls;
> > +	const struct v4l2_ctrl_ops *ops = &dw9768_ctrl_ops;
> > +
> > +	v4l2_ctrl_handler_init(hdl, 1);
> > +
> > +	dw9768->focus = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_FOCUS_ABSOLUTE,
> > +					  0, DW9768_MAX_FOCUS_POS,
> > +					  DW9768_FOCUS_STEPS, 0);
> > +
> > +	if (hdl->error)
> > +		return hdl->error;
> > +
> > +	dw9768->sd.ctrl_handler = hdl;
> > +
> > +	return 0;
> > +}
> > +
> > +static int dw9768_probe(struct i2c_client *client)
> > +{
> > +	struct device *dev = &client->dev;
> > +	struct dw9768 *dw9768;
> > +	unsigned int i;
> > +	int ret;
> > +
> > +	dw9768 = devm_kzalloc(dev, sizeof(*dw9768), GFP_KERNEL);
> > +	if (!dw9768)
> > +		return -ENOMEM;
> > +
> > +	v4l2_i2c_subdev_init(&dw9768->sd, client, &dw9768_ops);
> > +
> > +	for (i = 0; i < DW9768_NUM_SUPPLIES; i++)
> > +		dw9768->supplies[i].supply = dw9768_supply_names[i];
> > +
> > +	ret = devm_regulator_bulk_get(dev, DW9768_NUM_SUPPLIES,
> > +				      dw9768->supplies);
> > +	if (ret) {
> > +		dev_err(dev, "failed to get regulators\n");
> > +		return ret;
> > +	}
> > +
> 
> I'd try to see the chip is accessible in probe().
> 

If probe failed, actuator device node would not be generated.
When user tries to open fd, it should report error also.

> > +	ret = dw9768_init_controls(dw9768);
> > +	if (ret)
> > +		goto entity_cleanup;
> > +
> > +	dw9768->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
> > +	dw9768->sd.internal_ops = &dw9768_int_ops;
> > +
> > +	ret = media_entity_pads_init(&dw9768->sd.entity, 0, NULL);
> > +	if (ret < 0)
> > +		goto entity_cleanup;
> > +
> > +	dw9768->sd.entity.function = MEDIA_ENT_F_LENS;
> > +
> > +	ret = v4l2_async_register_subdev(&dw9768->sd);
> > +	if (ret < 0)
> > +		goto entity_cleanup;
> > +
> > +	pm_runtime_enable(dev);
> 
> Your driver appears to depend on runtime PM on DT based systems.
> 
> You should either add a dependency to CONFIG_PM, or much more preferrably
> make it work without runtime PM.
> 

Do you mean using the macro like this:
#ifdef CONFIG_PM
...
#endif

> > +
> > +	return 0;
> > +
> > +entity_cleanup:
> > +	v4l2_ctrl_handler_free(&dw9768->ctrls);
> > +	media_entity_cleanup(&dw9768->sd.entity);
> > +	return ret;
> > +}
> > +
> > +static int dw9768_remove(struct i2c_client *client)
> > +{
> > +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > +	struct dw9768 *dw9768 = sd_to_dw9768(sd);
> > +
> > +	pm_runtime_disable(&client->dev);
> > +	v4l2_async_unregister_subdev(&dw9768->sd);
> > +	v4l2_ctrl_handler_free(&dw9768->ctrls);
> > +	media_entity_cleanup(&dw9768->sd.entity);
> > +	if (!pm_runtime_status_suspended(&client->dev))
> > +		dw9768_runtime_suspend(&client->dev);
> > +	pm_runtime_set_suspended(&client->dev);
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct of_device_id dw9768_of_table[] = {
> > +	{ .compatible = "dongwoon,dw9768" },
> > +	{}
> > +};
> > +MODULE_DEVICE_TABLE(of, dw9768_of_table);
> > +
> > +static const struct dev_pm_ops dw9768_pm_ops = {
> > +	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
> > +				pm_runtime_force_resume)
> > +	SET_RUNTIME_PM_OPS(dw9768_runtime_suspend, dw9768_runtime_resume, NULL)
> > +};
> > +
> > +static struct i2c_driver dw9768_i2c_driver = {
> > +	.driver = {
> > +		.name = DW9768_NAME,
> > +		.pm = &dw9768_pm_ops,
> > +		.of_match_table = dw9768_of_table,
> > +	},
> > +	.probe_new  = dw9768_probe,
> > +	.remove = dw9768_remove,
> > +};
> > +
> > +module_i2c_driver(dw9768_i2c_driver);
> > +
> > +MODULE_AUTHOR("Dongchun Zhu <dongchun.zhu@mediatek.com>");
> > +MODULE_DESCRIPTION("DW9768 VCM driver");
> > +MODULE_LICENSE("GPL v2");
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
