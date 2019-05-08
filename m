Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A00D718175
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 23:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wc7/gFhJic1/dnAzR7xbBmAjQ8sbhFT1r8Vh/V5R19E=; b=S0O+qf8rAiy9xh
	nzSkhs3fP14dDXjancU1bvBuIMk2vg34nawPMvzCv8oYX0K8oGMcZG88DFexht4/IeSZXuvV9Txfi
	LwnFxj/X5MxCF+1t94ogMBL+l95o7m7eV1eml39YgAXPrJvVaUNnpaqST32KENYCYBPflIFojVnNC
	WQiuSDQe3Fsn74/PlwnrH8SP0TpQ4ooZhX5qQ1LBo/Ks6ZMCM9fL4noMcrGc4XP+H5/jQDHYKpsCs
	c1zXtQrJteXhp4ZjKM3Lt1BK197BM8YwiW2WLBksyF6hsXhTiOOlp/+H4qO/oLc/isCCDqKl4SASl
	yQzWwHWJ5l1j3rvZJpDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOTn9-0005xi-Ih; Wed, 08 May 2019 21:07:55 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOTmz-0005wC-Rb; Wed, 08 May 2019 21:07:48 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id F0EBF2002D;
 Wed,  8 May 2019 23:07:32 +0200 (CEST)
Date: Wed, 8 May 2019 23:07:31 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: allen <allen.chen@ite.com.tw>
Subject: Re: [PATCH 2/3] drm/bridge: add it6505 driver
Message-ID: <20190508210731.GA19781@ravnborg.org>
References: <1557301722-20827-1-git-send-email-allen.chen@ite.com.tw>
 <1557301722-20827-3-git-send-email-allen.chen@ite.com.tw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557301722-20827-3-git-send-email-allen.chen@ite.com.tw>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=Ns9eNvu6AAAA:8
 a=mpaa-ttXAAAA:8 a=1XWaLZrsAAAA:8 a=-sMfrFBIwg32JD2js3EA:9
 a=nplNrf5OaxeiL364:21 a=b2S3cVGQPHHqZ59X:21 a=CjuIK1q_8ugA:10
 a=LZLx1i01EnjtqRv10NxV:22 a=6heAxKwa5pAsJatQ0mat:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_140746_451197_50C5C3FB 
X-CRM114-Status: GOOD (  29.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Archit Taneja <architt@codeaurora.org>, Jitao Shi <jitao.shi@mediatek.com>,
 Yilun Lin <yllin@google.com>, open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Pi-Hsun Shih <pihsun@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi allen.

Thanks for this fine patch.
A few comments follows.

Consider to use DRM_DEV_ERROR and friends.
Then you get the devicename included in logging
and this makes it much easier to find relevant entries.

On Wed, May 08, 2019 at 03:48:41PM +0800, allen wrote:
> From: Allen Chen <allen.chen@ite.com.tw>
> 
> This adds support for the iTE IT6505.
> This device can convert DPI signal to DP output.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Signed-off-by: Yilun Lin <yllin@google.com>
> Signed-off-by: Allen Chen <allen.chen@ite.com.tw>
> ---
>  drivers/gpu/drm/bridge/Kconfig      |   22 +
>  drivers/gpu/drm/bridge/Makefile     |    1 +
>  drivers/gpu/drm/bridge/ite-it6505.c | 2637 +++++++++++++++++++++++++++++++++++
>  3 files changed, 2660 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/ite-it6505.c
> 
> diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
> index 9c9c4df..d12e48c 100644
> --- a/drivers/gpu/drm/bridge/Kconfig
> +++ b/drivers/gpu/drm/bridge/Kconfig
> @@ -43,6 +43,28 @@ config DRM_DUMB_VGA_DAC
>  	  Support for non-programmable RGB to VGA DAC bridges, such as ADI
>  	  ADV7123, TI THS8134 and THS8135 or passive resistor ladder DACs.
>  
> +config DRM_ITE_IT6505
> +	tristate "ITE IT6505 DP bridge"
> +	depends on OF
> +	select DRM_KMS_HELPER
> +	help
> +	  ITE IT6505 DP bridge chip driver.

Why is it relevant to have these features as features
that can be enabed/disabled on Kconfig level?
It is likely more flexible to do it run-time
if needed to turn them off.
And it would simplify the code.

> +
> +config DRM_ITE_IT6505_ENHDCP
> +	tristate "Enable IT6505 HDCP function"
> +	depends on DRM_ITE_IT6505
> +	default y
> +
> +config DRM_ITE_IT6505_ENAUD
> +        tristate "Enable IT6505 audio function"
> +        depends on DRM_ITE_IT6505
> +        default y
> +
> +config DRM_ITE_IT6505_ENPWRONOFF
> +        tristate "Enable IT6505 power on/off function"
> +        depends on DRM_ITE_IT6505
> +        default y
> +
>  config DRM_LVDS_ENCODER
>  	tristate "Transparent parallel to LVDS encoder support"
>  	depends on OF
> diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
> index 4934fcf..f5abca5 100644
> --- a/drivers/gpu/drm/bridge/Makefile
> +++ b/drivers/gpu/drm/bridge/Makefile
> @@ -2,6 +2,7 @@
>  obj-$(CONFIG_DRM_ANALOGIX_ANX78XX) += analogix-anx78xx.o
>  obj-$(CONFIG_DRM_CDNS_DSI) += cdns-dsi.o
>  obj-$(CONFIG_DRM_DUMB_VGA_DAC) += dumb-vga-dac.o
> +obj-$(CONFIG_DRM_ITE_IT6505) += ite-it6505.o
>  obj-$(CONFIG_DRM_LVDS_ENCODER) += lvds-encoder.o
>  obj-$(CONFIG_DRM_MEGACHIPS_STDPXXXX_GE_B850V3_FW) += megachips-stdpxxxx-ge-b850v3-fw.o
>  obj-$(CONFIG_DRM_NXP_PTN3460) += nxp-ptn3460.o
> diff --git a/drivers/gpu/drm/bridge/ite-it6505.c b/drivers/gpu/drm/bridge/ite-it6505.c
> new file mode 100644
> index 0000000..13079a8
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/ite-it6505.c
> @@ -0,0 +1,2637 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2018, The Linux Foundation. All rights reserved.
> + */
> +#include <linux/bits.h>
> +#include <linux/delay.h>
> +#include <linux/device.h>
> +#include <linux/err.h>
> +#include <linux/extcon.h>
> +#include <linux/fs.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/i2c.h>
> +#include <linux/interrupt.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/semaphore.h>
> +#include <linux/types.h>
> +#include <crypto/hash.h>
> +#include <crypto/sha.h>
> +#include <drm/drmP.h>
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_crtc.h>
> +#include <drm/drm_crtc_helper.h>
> +#include <drm/drm_dp_helper.h>
> +#include <drm/drm_edid.h>
Please put a blank line between the individual blocks
of include files.
So all #include <linux/... comens first

Then #include <crypto/...

And finally #include <drm/...

Use of drmP.h is deprecated. Please do not use it.
You need to add forwards or includes to avoids.


> +
> +#define AX 0
> +#define BX 1
> +#define AUDSEL I2S
> +#define AUDTYPE LPCM
> +#define AUDFS AUD48K
> +#define AUDCH 2
> +/* 0: Standard I2S;1: 32bit I2S */
> +#define I2SINPUTFMT 1
> +/* 0: Left-justified;1: Right-justified */
> +#define I2SJUSTIFIED 0
> +/* 0: Data delay 1T correspond to WS;1: No data delay correspond to WS */
> +#define I2SDATADELAY 0
> +/* 0: is left channel;1: is right channel */
> +#define I2SWSCHANNEL 0
> +/* 0: MSB shift first;1: LSB shift first */
> +#define I2SDATASEQ 0
> +
> +#define LANESWAP 0
> +#define LANE 4
> +#define _HBR 1
> +#define ENHFRAME 1
> +#define ENSSC 1
> +
> +#define FLAGTRAINDOWN 100
> +#define TRAINFAILCNT 5
> +#define AUX_WAIT_TIMEOUT_MS 15
> +#define PCLK_DELAY 1
> +#define PCLK_INV 0
> +#define EDIDRETRYTIME 5
> +#define SHOWVIDEOTIMING 2
> +#define PWROFFRETRYTIME 5
> +
> +/* AX or BX */
> +#define CHIP_VERSION BX

If this driver is for BX only then drop the AX releated code.
This would simplify the driver.

If this is really needed then provide an empty variant of
it6505_termination() for AX, to simplify the call sites.

And it6505_termination() calls for two functions so we
void a bool parameter that makes the function do two
different things.

> +
> +/* if use this define will power on in probe */
> +/* #define TEST_MODE */
> +
> +/* if use this define will enable AUX debug option */
> +/* #define ENAUX_TRANSFER_DEBUG */
> +
> +/* if use this define will enable SHA debug */
> +/* #define SHA_DEBUG */
Consider how much of this really belongs in a production driver.
If relevant consider to add some way to enable this runtime.
> +
> +enum sys_status {
> +	SYS_UNPLUG = 0,
> +	SYS_HPD,
> +	SYS_AUTOTRAIN,
> +	SYS_WAIT,
> +	SYS_TRAINFAIL,
> +	SYS_ReHDCP,
> +	SYS_PWRDN,
> +	SYS_NOROP,
> +	SYS_Unknown,
> +};
> +
> +enum it6505_aud_sel {
> +	I2S = 0,
> +	SPDIF,
> +};
> +
> +enum it6505_aud_fs {
> +	AUD24K = 0x6,
> +	AUD32K = 0x3,
> +	AUD48K = 0x2,
> +	AUD96K = 0xA,
> +	AUD192K = 0xE,
> +	AUD44P1K = 0x0,
> +	AUD88P2K = 0x8,
> +	AUD176P4K = 0xC,
> +};
> +
> +enum it6505_aud_type {
> +	LPCM = 0,
> +	NLPCM,
> +	DSS,
> +	HBR,
> +};
> +
> +enum aud_word_length {
> +	AUD16BIT = 0,
> +	AUD18BIT,
> +	AUD20BIT,
> +	AUD24BIT,
> +};
> +
> +/* Audio Sample Word Length: AUD16BIT, AUD18BIT, AUD20BIT, AUD24BIT */
> +#define AUDWORDLENGTH AUD24BIT
> +
> +struct it6505_platform_data {
> +	struct regulator *pwr18;
> +	struct regulator *ovdd;
> +	struct gpio_desc *gpiod_hpd;
> +	struct gpio_desc *gpiod_pd;

gpiod_pd is not used and can be deleted.

> +	struct gpio_desc *gpiod_reset;
> +
> +	int hpd_irq;
> +	int intp_irq;
hpd_irq and intp_irq are only used in one function.
Drop them from it6505_platform_data and use local variables.

> +};
> +
> +struct it6505_dp_port {
> +	struct it6505 *it6505_dp;
> +	struct notifier_block event_nb;
> +	struct extcon_dev *extcon;
> +	struct work_struct extcon_wq;
> +	u8 id;
It did not see this used, only assigned. Maybe I missed something?
> +};
> +
> +struct it6505 {
> +	struct drm_dp_aux aux;
> +	struct drm_bridge bridge;
> +	struct i2c_client *client;
> +	struct edid *edid;
> +	struct drm_connector connector;
> +	struct drm_dp_link link;
> +	struct it6505_platform_data pdata;
> +	struct mutex lock;
I would be helpfull with a comment what the lock protects.

> +	struct regmap *regmap;
> +	struct it6505_dp_port *port;
> +	/* thread sequence control */
> +	struct semaphore sem_notifier;
> +
> +	u8 dpcd[DP_RECEIVER_CAP_SIZE];
> +	enum sys_status status;
> +	u8 dumpdpcd[30];
> +	u8 dpcd_rev;
dpcd_rev is only used in one function.
Drop it and use local variabel.

I did not check further - please verify that all
members are used and are relevant to have in this
struct.

> +	bool hbr;
> +	u8 lane;
> +	u8 en_ssc;
> +	bool en_hframe;
> +	bool laneswap;
> +
> +	enum it6505_aud_sel aud_sel;
> +	enum it6505_aud_fs aud_fs;
> +	enum it6505_aud_type aud_type;
> +	u8 aud_ch;
> +	u8 i2s_input_fmt;
> +	u8 i2s_justified;
> +	u8 i2s_data_delay;
> +	u8 i2s_ws_channel;
> +	u8 i2s_data_seq;
> +	u8 vidstable_done;
> +	enum aud_word_length audwordlength;
> +	u8 cntfsm;
> +	bool cp_ready;
> +	unsigned int bstatus;
> +	bool cp_done;
> +	u8 downstream_repeater;
> +	u8 am0[8];
> +	u8 binfo[2];
> +	u8 ksvlist[5 * 12];
> +	unsigned int sha[5];
> +	unsigned int w[80];
> +	u8 shainput[64];
> +	u8 av[5][4];
> +	u8 bv[5][4];
> +	u8 passsha;
> +	bool powered;
> +	/* it6505 driver hold option */
> +	unsigned int it6505_drv_hold;
> +};
> +
> +static int it6505_poweron(struct it6505 *it6505);
> +#ifdef CONFIG_DRM_ITE_IT6505_ENPWRONOFF
> +static int it6505_poweroff(struct it6505 *it6505);
> +#endif
> +
> +static const struct regmap_range it6505_bridge_volatile_ranges[] = {
> +	{ .range_min = 0, .range_max = 0xFF },
> +};
> +
> +static const struct regmap_access_table it6505_bridge_volatile_table = {
> +	.yes_ranges = it6505_bridge_volatile_ranges,
> +	.n_yes_ranges = ARRAY_SIZE(it6505_bridge_volatile_ranges),
> +};
> +
> +static const struct regmap_config it6505_bridge_regmap_config = {
> +	.reg_bits = 8,
> +	.val_bits = 8,
> +	.volatile_table = &it6505_bridge_volatile_table,
> +	.cache_type = REGCACHE_NONE,
> +};
> +
> +static int dptxrd(struct it6505 *it6505, unsigned int reg_addr,
> +		  unsigned int *value)
> +{
> +	int err;
> +
> +	err = regmap_read(it6505->regmap, reg_addr, value);
> +	if (err < 0) {
> +		DRM_ERROR("%s read fail err reg_addr[0x%x] err:%d\n",
> +			  __func__, reg_addr, err);
> +		return err;
> +	}
> +
> +	return 0;
> +}
> +
> +static void it6505_dump(struct it6505 *it6505)
> +{
> +	unsigned int value, i;
> +
> +	DRM_DEBUG_DRIVER("\n----------%s start----------\n", __func__);
> +	for (i = 0; i <= 0xff; i++) {
> +		dptxrd(it6505, i, &value);
> +		DRM_DEBUG_DRIVER("%s[0x%x] = 0x%x\n", __func__, i, value);
> +	}
> +	DRM_DEBUG_DRIVER("\n----------%s end----------\n\n", __func__);
> +}
Are these headers really needed in a production driver?

> +
> +static int dptxwr(struct it6505 *it6505, unsigned int reg_addr,
> +		  unsigned int reg_val)
> +{
> +	int err;
> +
> +	err = regmap_write(it6505->regmap, reg_addr, reg_val);
> +
> +	if (err < 0) {
> +		DRM_ERROR("%s write fail err reg[0x%x] = 0x%x err = %d\n",
> +			__func__, reg_addr, reg_val, err);
> +		return err;
> +	}
> +
> +	return 0;
> +}
> +
> +static int dptxset(struct it6505 *it6505, unsigned int reg, unsigned int mask,
> +		   unsigned int value)
> +{
> +	int err;
> +
> +	err = regmap_update_bits(it6505->regmap, reg, mask, value);
> +	if (err < 0) {
> +		DRM_ERROR("%s write fail err %d\n", __func__, err);
> +		return err;
> +	}
> +
> +	return 0;
> +}
> +
> +static inline struct it6505 *connector_to_it6505(struct drm_connector *c)
> +{
> +	return container_of(c, struct it6505, connector);
> +}
> +
> +static inline struct it6505 *bridge_to_it6505(struct drm_bridge *bridge)
> +{
> +	return container_of(bridge, struct it6505, bridge);
> +}
> +
> +static void it6505_init_fsm(struct it6505 *it6505)
> +{
> +	it6505->aud_sel = AUDSEL;
> +	it6505->aud_fs = AUDFS;
> +	it6505->aud_ch = AUDCH;
> +	it6505->aud_type = AUDTYPE;
> +	it6505->i2s_input_fmt = I2SINPUTFMT;
> +	it6505->i2s_justified = I2SJUSTIFIED;
> +	it6505->i2s_data_delay = I2SDATADELAY;
> +	it6505->i2s_ws_channel = I2SWSCHANNEL;
> +	it6505->i2s_data_seq = I2SDATASEQ;
> +	it6505->audwordlength = AUDWORDLENGTH;
> +
> +	it6505->status = SYS_Unknown;
> +	it6505->hbr = _HBR;
> +	it6505->lane = LANE;
> +	it6505->en_ssc = ENSSC;
> +	it6505->en_hframe = ENHFRAME;
> +	it6505->laneswap = LANESWAP;
> +	it6505->vidstable_done = 0;
> +}
> +
> +#if (CHIP_VERSION == BX)
> +static void it6505_termination(struct it6505 *it6505, bool s)
> +{
> +	DRM_DEBUG_DRIVER("%s switch!!\n", __func__);
> +	if (s) {
> +		dptxset(it6505, 0x5D, 0x80, 0x00);
> +		dptxset(it6505, 0x5E, 0x02, 0x02);
> +		DRM_DEBUG_DRIVER("%s ON!!\n", __func__);
> +	} else {
> +		dptxset(it6505, 0x5D, 0x80, 0x80);
> +		dptxset(it6505, 0x5E, 0x02, 0x00);
> +		dptxset(it6505, 0x5C, 0xF0, 0x00);
> +		DRM_DEBUG_DRIVER("%s OFF!!\n", __func__);
> +	}
> +}
> +#endif
> +
> +static bool dptx_getsinkhpd(struct it6505 *it6505)
> +{
> +	unsigned int value;
> +	int ret;
> +
> +	ret = dptxrd(it6505, 0x0D, &value);
> +
> +	if (ret < 0)
> +		return false;
> +
> +	return (value & 2) == 2;
> +}
> +
> +static void show_vid_info(struct it6505 *it6505)
> +{
> +	int hsync_pol, vsync_pol, interlaced;
> +	int htotal, hdes, hdew, hfph, hsyncw;
> +	int vtotal, vdes, vdew, vfph, vsyncw;
> +	int rddata, rddata1, i;
> +	int pclk, sum;
> +
> +	usleep_range(10000, 15000);
> +	dptxwr(it6505, 0x0F, 0x00);
> +	dptxrd(it6505, 0xa0, &rddata);
> +	hsync_pol = rddata & BIT(0);
> +	vsync_pol = (rddata & BIT(2)) >> 2;
> +	interlaced = (rddata & BIT(4)) >> 4;
> +
> +	dptxrd(it6505, 0xa1, &rddata);
> +	dptxrd(it6505, 0xa2, &rddata1);
> +	htotal = ((rddata1 & 0x1F) << 8) + rddata;
> +
> +	dptxrd(it6505, 0xa3, &rddata);
> +	dptxrd(it6505, 0xa4, &rddata1);
> +
> +	hdes = ((rddata1 & 0x1F) << 8) + rddata;
> +
> +	dptxrd(it6505, 0xa5, &rddata);
> +	dptxrd(it6505, 0xa6, &rddata1);
> +
> +	hdew = ((rddata1 & 0x1F) << 8) + rddata;
> +
> +	dptxrd(it6505, 0xa7, &rddata);
> +	dptxrd(it6505, 0xa8, &rddata1);
> +
> +	hfph = ((rddata1 & 0x1F) << 8) + rddata;
> +
> +	dptxrd(it6505, 0xa9, &rddata);
> +	dptxrd(it6505, 0xaa, &rddata1);
> +
> +	hsyncw = ((rddata1 & 0x1F) << 8) + rddata;
> +
> +	dptxrd(it6505, 0xab, &rddata);
> +	dptxrd(it6505, 0xac, &rddata1);
> +	vtotal = ((rddata1 & 0x0F) << 8) + rddata;
> +
> +	dptxrd(it6505, 0xad, &rddata);
> +	dptxrd(it6505, 0xae, &rddata1);
> +	vdes = ((rddata1 & 0x0F) << 8) + rddata;
> +
> +	dptxrd(it6505, 0xaf, &rddata);
> +	dptxrd(it6505, 0xb0, &rddata1);
> +	vdew = ((rddata1 & 0x0F) << 8) + rddata;
> +
> +	dptxrd(it6505, 0xb1, &rddata);
> +	dptxrd(it6505, 0xb2, &rddata1);
> +	vfph = ((rddata1 & 0x0F) << 8) + rddata;
> +
> +	dptxrd(it6505, 0xb3, &rddata);
> +	dptxrd(it6505, 0xb4, &rddata1);
> +	vsyncw = ((rddata1 & 0x0F) << 8) + rddata;
> +
> +	sum = 0;
> +	for (i = 0; i < 100; i++) {
> +		dptxset(it6505, 0x12, 0x80, 0x80);
> +		usleep_range(10000, 15000);
> +		dptxset(it6505, 0x12, 0x80, 0x00);
> +
> +		dptxrd(it6505, 0x13, &rddata);
> +		dptxrd(it6505, 0x14, &rddata1);
> +		rddata = ((rddata1 & 0x0F) << 8) + rddata;
> +
> +		sum += rddata;
> +	}
> +
> +	sum /= 100;
> +	pclk = 13500 * 2048 / sum;
> +
> +	DRM_DEBUG_DRIVER("\n----------Video Input Timing----------\n");
> +	DRM_DEBUG_DRIVER("PCLK = %d.%dMHz\n", pclk / 1000, pclk % 1000);
> +	DRM_DEBUG_DRIVER("HTotal = %d\n", htotal);
> +	DRM_DEBUG_DRIVER("HActive = %d\n", hdew);
> +	DRM_DEBUG_DRIVER("HFrontPorch = %d\n", hfph);
> +	DRM_DEBUG_DRIVER("HSyncWidth = %d\n", hsyncw);
> +	DRM_DEBUG_DRIVER("HBackPorch = %d\n", htotal - hdew - hfph - hsyncw);
> +	DRM_DEBUG_DRIVER("VTotal = %d\n", vtotal);
> +	DRM_DEBUG_DRIVER("VActive = %d\n", vdew);
> +	DRM_DEBUG_DRIVER("VFrontPorch = %d\n", vfph);
> +	DRM_DEBUG_DRIVER("VSyncWidth = %d\n", vsyncw);
> +	DRM_DEBUG_DRIVER("VBackPorch = %d\n", vtotal - vdew - vfph - vsyncw);

Can DRM_MODE_FMT and DRM_MODE_ARG be used here?

> +}
> +
> +static void dptx_sys_chg(struct it6505 *it6505, enum sys_status newstate)
> +{
> +	unsigned int i = 0;
> +	unsigned int reg06, reg07, reg08, reg0d, reg0e;
> +
> +	dptxrd(it6505, 0x06, &reg06);
> +	dptxrd(it6505, 0x07, &reg07);
> +	dptxrd(it6505, 0x08, &reg08);
> +	dptxrd(it6505, 0x0d, &reg0d);
> +	dptxrd(it6505, 0x0e, &reg0e);
> +
> +	DRM_DEBUG_DRIVER("[%s]reg06 = 0x%x\n", __func__, reg06);
> +	DRM_DEBUG_DRIVER("[%s]reg07 = 0x%x\n", __func__, reg07);
> +	DRM_DEBUG_DRIVER("[%s]reg08 = 0x%x\n", __func__, reg08);
> +	DRM_DEBUG_DRIVER("[%s]reg0d = 0x%x\n", __func__, reg0d);
> +	DRM_DEBUG_DRIVER("[%s]reg0e = 0x%x\n", __func__, reg0e);
Looks like debugging artifacts that are not relevant in a production
driver.

> +
> +	if (newstate != SYS_UNPLUG) {
> +		if (!dptx_getsinkhpd(it6505))
> +			newstate = SYS_UNPLUG;
> +	}
> +
> +	it6505->status = newstate;
> +
> +	switch (it6505->status) {
> +	case SYS_UNPLUG:
> +		DRM_DEBUG_DRIVER("sys_state is changing to SYS_UNPLUG!");
> +		kfree(it6505->edid);
> +		it6505->edid = NULL;
> +		DRM_DEBUG_DRIVER("Free it6505 EDID memory!");
> +#if (CHIP_VERSION == BX)
> +		it6505_termination(it6505, false);
> +#endif
> +		break;
> +	case SYS_HPD:
> +		DRM_DEBUG_DRIVER("sys_state is changing to SYS_HPD!");
> +#if (CHIP_VERSION == BX)
> +		it6505_termination(it6505, true);
> +#endif
> +		break;
> +	case SYS_AUTOTRAIN:
> +		DRM_DEBUG_DRIVER("sys_state is changing to SYS_AUTOTRAIN!");
> +		break;
> +	case SYS_WAIT:
> +		DRM_DEBUG_DRIVER("sys_state is changing to SYS_WAIT!");
> +		break;
> +#ifdef CONFIG_DRM_ITE_IT6505_ENHDCP
> +	case SYS_ReHDCP:
> +		DRM_DEBUG_DRIVER("sys_state is changing to SYS_ReHDCP!");
> +		break;
> +#endif
> +	case SYS_NOROP:
> +		DRM_DEBUG_DRIVER("sys_state is changing to SYS_NOROP!");
> +		for (i = 0; i < SHOWVIDEOTIMING; i++)
> +			show_vid_info(it6505);
> +#ifdef TEST_MODE
> +		it6505->it6505_drv_hold = 1;
> +		DRM_DEBUG_DRIVER("set it6505_drv_hold:%d",
> +				it6505->it6505_drv_hold);
> +#endif
> +		break;
> +	case SYS_PWRDN:
> +		DRM_DEBUG_DRIVER("sys_state is changing to SYS_PWRDN!");
> +		/* Reset and PwrDn AFE */
> +		break;
> +	default:
> +		DRM_DEBUG_DRIVER("sys_state is changing to SYS_UNKNOWN!");
> +		break;
> +	}
> +}

I browsed the driver and did not find anything other
than issues that are already reported above.

As I have no experience with a bridge driver as such the functionality
was not looked at.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
