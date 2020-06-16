Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E23A1FB125
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 14:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSFf2RQO7wR6YOa8NQwp3pVAFnV9/IDX9nxiVRLKeJw=; b=WOWOqqByZLZS+U
	X3PCg3wxvYOwyMfTNuBidkes2HjQs9gU6pZBkSCE1A+YXSTAu4RCty1l0p2xThVcK5thYgV7Sb/Q7
	53rmq5LHw4GN6hIk2LSzPxKaEhYftS7u00G+Z56k8f5IjnawdkRbw7IycF2tQGtlxbqH9KkkvaAms
	+eKEaG/NLa15kHjA56zPQQYdedJJucpvm4+IXTMCFu9AwbgTHDZK1dyeVwpLUwQS6wTpSjTC2fBBm
	YD57V0KhbZBFaqG1Uuc5c2EaHacsLnRKqgvuGdKzELUfk95BDEdHdbMqCUzjPbWHuMW+rPuDEVUf2
	P2tg6nOQ7L7+lNWnc5gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlB2o-0001tY-Gb; Tue, 16 Jun 2020 12:50:26 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlB2a-0001sv-5J
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 12:50:15 +0000
IronPort-SDR: BpTmsBgFufIDccfdJ4XGBCRXrj1mhwgR65SSW5xEpX4VrlBE8fQbXFAs1ZF9t39V75LypqYihu
 /InZdZ2g4AeQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 05:50:11 -0700
IronPort-SDR: Sus7VyCSPxd82v5yi2l+GFfryYi7xDwO95LsV61+IB+olT3fL1PfDkUWvgnOjlBL31GnmTIXnv
 HYarlskue+CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="382863080"
Received: from kuha.fi.intel.com ([10.237.72.162])
 by fmsmga001.fm.intel.com with SMTP; 16 Jun 2020 05:50:08 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Tue, 16 Jun 2020 15:50:07 +0300
Date: Tue, 16 Jun 2020 15:50:07 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: Re: [PATCH 4/6] usb: typec: add support for STUSB160x Type-C
 controller family
Message-ID: <20200616125007.GM3213128@kuha.fi.intel.com>
References: <20200615161512.19150-1-amelie.delaunay@st.com>
 <20200615161512.19150-5-amelie.delaunay@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615161512.19150-5-amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_055012_226276_9CC4DCDA 
X-CRM114-Status: GOOD (  28.91  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 06:15:10PM +0200, Amelie Delaunay wrote:
> STMicroelectronics USB Type-C port controllers use I2C interface to
> configure, control and read the operation status of the device. All ST USB
> Type-C port controllers are based on the same I2C register map. That's why
> this driver can be used with all ST USB Type-C ICs.
> Some ST USB Type-C port controllers are Dual Role Port (DRP), only Sink or
> Source, some supports USB Power Delivery. This can be configured through
> connector device tree bindings.
> 
> This driver is a basic Type-C port controller driver, with no power
> delivery support. It allows to configure ST USB Type-C port controller.
> Interrupt is supported and enables CC connection events, to detect
> attach and detach and update Type-C subsystem accordingly as well as usb
> role switch.
> 
> ST USB Type-C port controller can be supplied in three different ways
> depending on the target application:
> - through VDD pin only (so VDD is the main supply)
> - through VSYS pin only (so VSYS is the main supply)
> - through VDD and VSYS pins.
> When both VDD and VSYS power supplies are present, the low power supply
> VSYS is selected as main supply when VSYS voltage is above 3.1V, else
> VDD is selected as main supply.
> 
> In case of Source or Dual port type, if VDD supply is present, it has to be
> enabled in case of Source power role to provide Vbus. When interrupt
> support is available, VDD supply is dynamically managed upon attach/detach
> interrupt. When there is no interrupt support, VDD supply is enabled by
> default.
> 
> Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>

Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

> ---
>  drivers/usb/typec/Kconfig     |  12 +
>  drivers/usb/typec/Makefile    |   1 +
>  drivers/usb/typec/stusb160x.c | 875 ++++++++++++++++++++++++++++++++++
>  3 files changed, 888 insertions(+)
>  create mode 100644 drivers/usb/typec/stusb160x.c
> 
> diff --git a/drivers/usb/typec/Kconfig b/drivers/usb/typec/Kconfig
> index 559dd06117e7..eee8536ae600 100644
> --- a/drivers/usb/typec/Kconfig
> +++ b/drivers/usb/typec/Kconfig
> @@ -73,6 +73,18 @@ config TYPEC_TPS6598X
>  	  If you choose to build this driver as a dynamically linked module, the
>  	  module will be called tps6598x.ko.
>  
> +config TYPEC_STUSB160X
> +	tristate "STMicroelectronics STUSB160x Type-C controller driver"
> +	depends on I2C
> +	depends on REGMAP_I2C
> +	depends on USB_ROLE_SWITCH || !USB_ROLE_SWITCH
> +	help
> +	  Say Y or M here if your system has STMicroelectronics STUSB160x
> +	  Type-C port controller.
> +
> +	  If you choose to build this driver as a dynamically linked module, the
> +	  module will be called stusb160x.ko.
> +
>  source "drivers/usb/typec/mux/Kconfig"
>  
>  source "drivers/usb/typec/altmodes/Kconfig"
> diff --git a/drivers/usb/typec/Makefile b/drivers/usb/typec/Makefile
> index 7753a5c3cd46..671bc2d3cd6a 100644
> --- a/drivers/usb/typec/Makefile
> +++ b/drivers/usb/typec/Makefile
> @@ -6,4 +6,5 @@ obj-$(CONFIG_TYPEC_TCPM)	+= tcpm/
>  obj-$(CONFIG_TYPEC_UCSI)	+= ucsi/
>  obj-$(CONFIG_TYPEC_HD3SS3220)	+= hd3ss3220.o
>  obj-$(CONFIG_TYPEC_TPS6598X)	+= tps6598x.o
> +obj-$(CONFIG_TYPEC_STUSB160X) 	+= stusb160x.o
>  obj-$(CONFIG_TYPEC)		+= mux/
> diff --git a/drivers/usb/typec/stusb160x.c b/drivers/usb/typec/stusb160x.c
> new file mode 100644
> index 000000000000..ce0bd7b3ad88
> --- /dev/null
> +++ b/drivers/usb/typec/stusb160x.c
> @@ -0,0 +1,875 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * STMicroelectronics STUSB160x Type-C controller family driver
> + *
> + * Copyright (C) 2020, STMicroelectronics
> + * Author(s): Amelie Delaunay <amelie.delaunay@st.com>
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/i2c.h>
> +#include <linux/interrupt.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/usb/role.h>
> +#include <linux/usb/typec.h>
> +
> +#define STUSB160X_ALERT_STATUS			0x0B /* RC */
> +#define STUSB160X_ALERT_STATUS_MASK_CTRL	0x0C /* RW */
> +#define STUSB160X_CC_CONNECTION_STATUS_TRANS	0x0D /* RC */
> +#define STUSB160X_CC_CONNECTION_STATUS		0x0E /* RO */
> +#define STUSB160X_MONITORING_STATUS_TRANS	0x0F /* RC */
> +#define STUSB160X_MONITORING_STATUS		0x10 /* RO */
> +#define STUSB160X_CC_OPERATION_STATUS		0x11 /* RO */
> +#define STUSB160X_HW_FAULT_STATUS_TRANS		0x12 /* RC */
> +#define STUSB160X_HW_FAULT_STATUS		0x13 /* RO */
> +#define STUSB160X_CC_CAPABILITY_CTRL		0x18 /* RW */
> +#define STUSB160X_CC_VCONN_SWITCH_CTRL		0x1E /* RW */
> +#define STUSB160X_VCONN_MONITORING_CTRL		0x20 /* RW */
> +#define STUSB160X_VBUS_MONITORING_RANGE_CTRL	0x22 /* RW */
> +#define STUSB160X_RESET_CTRL			0x23 /* RW */
> +#define STUSB160X_VBUS_DISCHARGE_TIME_CTRL	0x25 /* RW */
> +#define STUSB160X_VBUS_DISCHARGE_STATUS		0x26 /* RO */
> +#define STUSB160X_VBUS_ENABLE_STATUS		0x27 /* RO */
> +#define STUSB160X_CC_POWER_MODE_CTRL		0x28 /* RW */
> +#define STUSB160X_VBUS_MONITORING_CTRL		0x2E /* RW */
> +#define STUSB1600_REG_MAX			0x2F /* RO - Reserved */
> +
> +/* STUSB160X_ALERT_STATUS/STUSB160X_ALERT_STATUS_MASK_CTRL bitfields */
> +#define STUSB160X_HW_FAULT			BIT(4)
> +#define STUSB160X_MONITORING			BIT(5)
> +#define STUSB160X_CC_CONNECTION			BIT(6)
> +#define STUSB160X_ALL_ALERTS			GENMASK(6, 4)
> +
> +/* STUSB160X_CC_CONNECTION_STATUS_TRANS bitfields */
> +#define STUSB160X_CC_ATTACH_TRANS		BIT(0)
> +
> +/* STUSB160X_CC_CONNECTION_STATUS bitfields */
> +#define STUSB160X_CC_ATTACH			BIT(0)
> +#define STUSB160X_CC_VCONN_SUPPLY		BIT(1)
> +#define STUSB160X_CC_DATA_ROLE(s)		(!!((s) & BIT(2)))
> +#define STUSB160X_CC_POWER_ROLE(s)		(!!((s) & BIT(3)))
> +#define STUSB160X_CC_ATTACHED_MODE		GENMASK(7, 5)
> +
> +/* STUSB160X_MONITORING_STATUS_TRANS bitfields */
> +#define STUSB160X_VCONN_PRESENCE_TRANS		BIT(0)
> +#define STUSB160X_VBUS_PRESENCE_TRANS		BIT(1)
> +#define STUSB160X_VBUS_VSAFE0V_TRANS		BIT(2)
> +#define STUSB160X_VBUS_VALID_TRANS		BIT(3)
> +
> +/* STUSB160X_MONITORING_STATUS bitfields */
> +#define STUSB160X_VCONN_PRESENCE		BIT(0)
> +#define STUSB160X_VBUS_PRESENCE			BIT(1)
> +#define STUSB160X_VBUS_VSAFE0V			BIT(2)
> +#define STUSB160X_VBUS_VALID			BIT(3)
> +
> +/* STUSB160X_CC_OPERATION_STATUS bitfields */
> +#define STUSB160X_TYPEC_FSM_STATE		GENMASK(4, 0)
> +#define STUSB160X_SINK_POWER_STATE		GENMASK(6, 5)
> +#define STUSB160X_CC_ATTACHED			BIT(7)
> +
> +/* STUSB160X_HW_FAULT_STATUS_TRANS bitfields */
> +#define STUSB160X_VCONN_SW_OVP_FAULT_TRANS	BIT(0)
> +#define STUSB160X_VCONN_SW_OCP_FAULT_TRANS	BIT(1)
> +#define STUSB160X_VCONN_SW_RVP_FAULT_TRANS	BIT(2)
> +#define STUSB160X_VPU_VALID_TRANS		BIT(4)
> +#define STUSB160X_VPU_OVP_FAULT_TRANS		BIT(5)
> +#define STUSB160X_THERMAL_FAULT			BIT(7)
> +
> +/* STUSB160X_HW_FAULT_STATUS bitfields */
> +#define STUSB160X_VCONN_SW_OVP_FAULT_CC2	BIT(0)
> +#define STUSB160X_VCONN_SW_OVP_FAULT_CC1	BIT(1)
> +#define STUSB160X_VCONN_SW_OCP_FAULT_CC2	BIT(2)
> +#define STUSB160X_VCONN_SW_OCP_FAULT_CC1	BIT(3)
> +#define STUSB160X_VCONN_SW_RVP_FAULT_CC2	BIT(4)
> +#define STUSB160X_VCONN_SW_RVP_FAULT_CC1	BIT(5)
> +#define STUSB160X_VPU_VALID			BIT(6)
> +#define STUSB160X_VPU_OVP_FAULT			BIT(7)
> +
> +/* STUSB160X_CC_CAPABILITY_CTRL bitfields */
> +#define STUSB160X_CC_VCONN_SUPPLY_EN		BIT(0)
> +#define STUSB160X_CC_VCONN_DISCHARGE_EN		BIT(4)
> +#define STUSB160X_CC_CURRENT_ADVERTISED		GENMASK(7, 6)
> +
> +/* STUSB160X_VCONN_SWITCH_CTRL bitfields */
> +#define STUSB160X_CC_VCONN_SWITCH_ILIM		GENMASK(3, 0)
> +
> +/* STUSB160X_VCONN_MONITORING_CTRL bitfields */
> +#define STUSB160X_VCONN_UVLO_THRESHOLD		BIT(6)
> +#define STUSB160X_VCONN_MONITORING_EN		BIT(7)
> +
> +/* STUSB160X_VBUS_MONITORING_RANGE_CTRL bitfields */
> +#define STUSB160X_SHIFT_LOW_VBUS_LIMIT		GENMASK(3, 0)
> +#define STUSB160X_SHIFT_HIGH_VBUS_LIMIT		GENMASK(7, 4)
> +
> +/* STUSB160X_RESET_CTRL bitfields */
> +#define STUSB160X_SW_RESET_EN			BIT(0)
> +
> +/* STUSB160X_VBUS_DISCHARGE_TIME_CTRL bitfields */
> +#define STUSBXX02_VBUS_DISCHARGE_TIME_TO_PDO	GENMASK(3, 0)
> +#define STUSB160X_VBUS_DISCHARGE_TIME_TO_0V	GENMASK(7, 4)
> +
> +/* STUSB160X_VBUS_DISCHARGE_STATUS bitfields */
> +#define STUSB160X_VBUS_DISCHARGE_EN		BIT(7)
> +
> +/* STUSB160X_VBUS_ENABLE_STATUS bitfields */
> +#define STUSB160X_VBUS_SOURCE_EN		BIT(0)
> +#define STUSB160X_VBUS_SINK_EN			BIT(1)
> +
> +/* STUSB160X_CC_POWER_MODE_CTRL bitfields */
> +#define STUSB160X_CC_POWER_MODE			GENMASK(2, 0)
> +
> +/* STUSB160X_VBUS_MONITORING_CTRL bitfields */
> +#define STUSB160X_VDD_UVLO_DISABLE		BIT(0)
> +#define STUSB160X_VBUS_VSAFE0V_THRESHOLD	GENMASK(2, 1)
> +#define STUSB160X_VBUS_RANGE_DISABLE		BIT(4)
> +#define STUSB160X_VDD_OVLO_DISABLE		BIT(6)
> +
> +enum stusb160x_pwr_mode {
> +	SOURCE_WITH_ACCESSORY,
> +	SINK_WITH_ACCESSORY,
> +	SINK_WITHOUT_ACCESSORY,
> +	DUAL_WITH_ACCESSORY,
> +	DUAL_WITH_ACCESSORY_AND_TRY_SRC,
> +	DUAL_WITH_ACCESSORY_AND_TRY_SNK,
> +};
> +
> +enum stusb160x_attached_mode {
> +	NO_DEVICE_ATTACHED,
> +	SINK_ATTACHED,
> +	SOURCE_ATTACHED,
> +	DEBUG_ACCESSORY_ATTACHED,
> +	AUDIO_ACCESSORY_ATTACHED,
> +};
> +
> +struct stusb160x {
> +	struct device		*dev;
> +	struct regmap		*regmap;
> +	struct regulator	*vdd_supply;
> +	struct regulator	*vsys_supply;
> +	struct regulator	*vconn_supply;
> +	struct regulator	*main_supply;
> +
> +	struct typec_port	*port;
> +	struct typec_capability capability;
> +	struct typec_partner	*partner;
> +
> +	enum typec_port_type	port_type;
> +	enum typec_pwr_opmode	pwr_opmode;
> +	bool			vbus_on;
> +
> +	struct usb_role_switch	*role_sw;
> +};
> +
> +static bool stusb160x_reg_writeable(struct device *dev, unsigned int reg)
> +{
> +	switch (reg) {
> +	case STUSB160X_ALERT_STATUS_MASK_CTRL:
> +	case STUSB160X_CC_CAPABILITY_CTRL:
> +	case STUSB160X_CC_VCONN_SWITCH_CTRL:
> +	case STUSB160X_VCONN_MONITORING_CTRL:
> +	case STUSB160X_VBUS_MONITORING_RANGE_CTRL:
> +	case STUSB160X_RESET_CTRL:
> +	case STUSB160X_VBUS_DISCHARGE_TIME_CTRL:
> +	case STUSB160X_CC_POWER_MODE_CTRL:
> +	case STUSB160X_VBUS_MONITORING_CTRL:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static bool stusb160x_reg_readable(struct device *dev, unsigned int reg)
> +{
> +	if (reg <= 0x0A ||
> +	    (reg >= 0x14 && reg <= 0x17) ||
> +	    (reg >= 0x19 && reg <= 0x1D) ||
> +	    (reg >= 0x29 && reg <= 0x2D) ||
> +	    (reg == 0x1F || reg == 0x21 || reg == 0x24 || reg == 0x2F))
> +		return false;
> +	else
> +		return true;
> +}
> +
> +static bool stusb160x_reg_volatile(struct device *dev, unsigned int reg)
> +{
> +	switch (reg) {
> +	case STUSB160X_ALERT_STATUS:
> +	case STUSB160X_CC_CONNECTION_STATUS_TRANS:
> +	case STUSB160X_CC_CONNECTION_STATUS:
> +	case STUSB160X_MONITORING_STATUS_TRANS:
> +	case STUSB160X_MONITORING_STATUS:
> +	case STUSB160X_CC_OPERATION_STATUS:
> +	case STUSB160X_HW_FAULT_STATUS_TRANS:
> +	case STUSB160X_HW_FAULT_STATUS:
> +	case STUSB160X_VBUS_DISCHARGE_STATUS:
> +	case STUSB160X_VBUS_ENABLE_STATUS:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static bool stusb160x_reg_precious(struct device *dev, unsigned int reg)
> +{
> +	switch (reg) {
> +	case STUSB160X_ALERT_STATUS:
> +	case STUSB160X_CC_CONNECTION_STATUS_TRANS:
> +	case STUSB160X_MONITORING_STATUS_TRANS:
> +	case STUSB160X_HW_FAULT_STATUS_TRANS:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static const struct regmap_config stusb1600_regmap_config = {
> +	.reg_bits	= 8,
> +	.reg_stride	= 1,
> +	.val_bits	= 8,
> +	.max_register	= STUSB1600_REG_MAX,
> +	.writeable_reg	= stusb160x_reg_writeable,
> +	.readable_reg	= stusb160x_reg_readable,
> +	.volatile_reg	= stusb160x_reg_volatile,
> +	.precious_reg	= stusb160x_reg_precious,
> +	.cache_type	= REGCACHE_RBTREE,
> +};
> +
> +static bool stusb160x_get_vconn(struct stusb160x *chip)
> +{
> +	u32 val;
> +	int ret;
> +
> +	ret = regmap_read(chip->regmap, STUSB160X_CC_CAPABILITY_CTRL, &val);
> +	if (ret) {
> +		dev_err(chip->dev, "Unable to get Vconn status: %d\n", ret);
> +		return false;
> +	}
> +
> +	return !!FIELD_GET(STUSB160X_CC_VCONN_SUPPLY_EN, val);
> +}
> +
> +static int stusb160x_set_vconn(struct stusb160x *chip, bool on)
> +{
> +	int ret;
> +
> +	/* Manage VCONN input supply */
> +	if (chip->vconn_supply) {
> +		if (on) {
> +			ret = regulator_enable(chip->vconn_supply);
> +			if (ret) {
> +				dev_err(chip->dev,
> +					"failed to enable vconn supply: %d\n",
> +					ret);
> +				return ret;
> +			}
> +		} else {
> +			regulator_disable(chip->vconn_supply);
> +		}
> +	}
> +
> +	/* Manage VCONN monitoring and power path */
> +	ret = regmap_update_bits(chip->regmap, STUSB160X_VCONN_MONITORING_CTRL,
> +				 STUSB160X_VCONN_MONITORING_EN,
> +				 on ? STUSB160X_VCONN_MONITORING_EN : 0);
> +	if (ret)
> +		goto vconn_reg_disable;
> +
> +	return 0;
> +
> +vconn_reg_disable:
> +	if (chip->vconn_supply && on)
> +		regulator_disable(chip->vconn_supply);
> +
> +	return ret;
> +}
> +
> +static enum typec_pwr_opmode stusb160x_get_pwr_opmode(struct stusb160x *chip)
> +{
> +	u32 val;
> +	int ret;
> +
> +	ret = regmap_read(chip->regmap, STUSB160X_CC_CAPABILITY_CTRL, &val);
> +	if (ret) {
> +		dev_err(chip->dev, "Unable to get pwr opmode: %d\n", ret);
> +		return TYPEC_PWR_MODE_USB;
> +	}
> +
> +	return FIELD_GET(STUSB160X_CC_CURRENT_ADVERTISED, val);
> +}
> +
> +static enum typec_accessory stusb160x_get_accessory(u32 status)
> +{
> +	enum stusb160x_attached_mode mode;
> +
> +	mode = FIELD_GET(STUSB160X_CC_ATTACHED_MODE, status);
> +
> +	switch (mode) {
> +	case DEBUG_ACCESSORY_ATTACHED:
> +		return TYPEC_ACCESSORY_DEBUG;
> +	case AUDIO_ACCESSORY_ATTACHED:
> +		return TYPEC_ACCESSORY_AUDIO;
> +	default:
> +		return TYPEC_ACCESSORY_NONE;
> +	}
> +}
> +
> +static enum typec_role stusb160x_get_vconn_role(u32 status)
> +{
> +	if (FIELD_GET(STUSB160X_CC_VCONN_SUPPLY, status))
> +		return TYPEC_SOURCE;
> +
> +	return TYPEC_SINK;
> +}
> +
> +static void stusb160x_set_data_role(struct stusb160x *chip,
> +				    enum typec_data_role data_role,
> +				    bool attached)
> +{
> +	enum usb_role usb_role = USB_ROLE_NONE;
> +
> +	if (attached) {
> +		if (data_role == TYPEC_HOST)
> +			usb_role = USB_ROLE_HOST;
> +		else
> +			usb_role = USB_ROLE_DEVICE;
> +	}
> +
> +	usb_role_switch_set_role(chip->role_sw, usb_role);
> +	typec_set_data_role(chip->port, data_role);
> +}
> +
> +static int stusb160x_attach(struct stusb160x *chip, u32 status)
> +{
> +	struct typec_partner_desc desc;
> +	int ret;
> +
> +	if ((STUSB160X_CC_POWER_ROLE(status) == TYPEC_SOURCE) &&
> +	    chip->vdd_supply) {
> +		ret = regulator_enable(chip->vdd_supply);
> +		if (ret) {
> +			dev_err(chip->dev,
> +				"Failed to enable Vbus supply: %d\n", ret);
> +			return ret;
> +		}
> +		chip->vbus_on = true;
> +	}
> +
> +	desc.usb_pd = false;
> +	desc.accessory = stusb160x_get_accessory(status);
> +	desc.identity = NULL;
> +
> +	chip->partner = typec_register_partner(chip->port, &desc);
> +	if (IS_ERR(chip->partner)) {
> +		ret = PTR_ERR(chip->partner);
> +		goto vbus_disable;
> +	}
> +
> +	typec_set_pwr_role(chip->port, STUSB160X_CC_POWER_ROLE(status));
> +	typec_set_pwr_opmode(chip->port, stusb160x_get_pwr_opmode(chip));
> +	typec_set_vconn_role(chip->port, stusb160x_get_vconn_role(status));
> +	stusb160x_set_data_role(chip, STUSB160X_CC_DATA_ROLE(status), true);
> +
> +	return 0;
> +
> +vbus_disable:
> +	if (chip->vbus_on) {
> +		regulator_disable(chip->vdd_supply);
> +		chip->vbus_on = false;
> +	}
> +
> +	return ret;
> +}
> +
> +static void stusb160x_detach(struct stusb160x *chip, u32 status)
> +{
> +	typec_unregister_partner(chip->partner);
> +	chip->partner = NULL;
> +
> +	typec_set_pwr_role(chip->port, STUSB160X_CC_POWER_ROLE(status));
> +	typec_set_pwr_opmode(chip->port, TYPEC_PWR_MODE_USB);
> +	typec_set_vconn_role(chip->port, stusb160x_get_vconn_role(status));
> +	stusb160x_set_data_role(chip, STUSB160X_CC_DATA_ROLE(status), false);
> +
> +	if (chip->vbus_on) {
> +		regulator_disable(chip->vdd_supply);
> +		chip->vbus_on = false;
> +	}
> +}
> +
> +static irqreturn_t stusb160x_irq_handler(int irq, void *data)
> +{
> +	struct stusb160x *chip = data;
> +	u32 pending, trans, status;
> +	int ret;
> +
> +	ret = regmap_read(chip->regmap, STUSB160X_ALERT_STATUS, &pending);
> +	if (ret)
> +		goto err;
> +
> +	if (pending & STUSB160X_CC_CONNECTION) {
> +		ret = regmap_read(chip->regmap,
> +				  STUSB160X_CC_CONNECTION_STATUS_TRANS, &trans);
> +		if (ret)
> +			goto err;
> +		ret = regmap_read(chip->regmap,
> +				  STUSB160X_CC_CONNECTION_STATUS, &status);
> +		if (ret)
> +			goto err;
> +
> +		if (trans & STUSB160X_CC_ATTACH_TRANS) {
> +			if (status & STUSB160X_CC_ATTACH) {
> +				ret = stusb160x_attach(chip, status);
> +				if (ret)
> +					goto err;
> +			} else {
> +				stusb160x_detach(chip, status);
> +			}
> +		}
> +	}
> +err:
> +	return IRQ_HANDLED;
> +}
> +
> +static int stusb160x_irq_init(struct stusb160x *chip, int irq)
> +{
> +	u32 status;
> +	int ret;
> +
> +	ret = regmap_read(chip->regmap,
> +			  STUSB160X_CC_CONNECTION_STATUS, &status);
> +	if (ret)
> +		return ret;
> +
> +	if (status & STUSB160X_CC_ATTACH) {
> +		ret = stusb160x_attach(chip, status);
> +		if (ret)
> +			dev_err(chip->dev, "attach failed: %d\n", ret);
> +	}
> +
> +	ret = devm_request_threaded_irq(chip->dev, irq, NULL,
> +					stusb160x_irq_handler, IRQF_ONESHOT,
> +					dev_name(chip->dev), chip);
> +	if (ret)
> +		goto partner_unregister;
> +
> +	/* Unmask CC_CONNECTION events */
> +	ret = regmap_write_bits(chip->regmap, STUSB160X_ALERT_STATUS_MASK_CTRL,
> +				STUSB160X_CC_CONNECTION, 0);
> +	if (ret)
> +		goto partner_unregister;
> +
> +	return 0;
> +
> +partner_unregister:
> +	if (chip->partner) {
> +		typec_unregister_partner(chip->partner);
> +		chip->partner = NULL;
> +	}
> +
> +	return ret;
> +}
> +
> +static int stusb160x_chip_init(struct stusb160x *chip)
> +{
> +	u32 val;
> +	int ret;
> +
> +	/* Change the default Type-C power mode */
> +	if (chip->port_type == TYPEC_PORT_SRC)
> +		ret = regmap_update_bits(chip->regmap,
> +					 STUSB160X_CC_POWER_MODE_CTRL,
> +					 STUSB160X_CC_POWER_MODE,
> +					 SOURCE_WITH_ACCESSORY);
> +	else if (chip->port_type == TYPEC_PORT_SNK)
> +		ret = regmap_update_bits(chip->regmap,
> +					 STUSB160X_CC_POWER_MODE_CTRL,
> +					 STUSB160X_CC_POWER_MODE,
> +					 SINK_WITH_ACCESSORY);
> +	else /* (chip->port_type == TYPEC_PORT_DRP) */
> +		ret = regmap_update_bits(chip->regmap,
> +					 STUSB160X_CC_POWER_MODE_CTRL,
> +					 STUSB160X_CC_POWER_MODE,
> +					 DUAL_WITH_ACCESSORY);
> +	if (ret)
> +		return ret;
> +
> +	if (chip->port_type == TYPEC_PORT_SNK)
> +		goto skip_src;
> +
> +	/* Change the default Type-C Source power operation mode capability */
> +	ret = regmap_update_bits(chip->regmap, STUSB160X_CC_CAPABILITY_CTRL,
> +				 STUSB160X_CC_CURRENT_ADVERTISED,
> +				 FIELD_PREP(STUSB160X_CC_CURRENT_ADVERTISED,
> +					    chip->pwr_opmode));
> +	if (ret)
> +		return ret;
> +
> +	/* Manage Type-C Source Vconn supply */
> +	if (stusb160x_get_vconn(chip)) {
> +		ret = stusb160x_set_vconn(chip, true);
> +		if (ret)
> +			return ret;
> +	}
> +
> +skip_src:
> +	/* Mask all events interrupts - to be unmasked with interrupt support */
> +	ret = regmap_update_bits(chip->regmap, STUSB160X_ALERT_STATUS_MASK_CTRL,
> +				 STUSB160X_ALL_ALERTS, STUSB160X_ALL_ALERTS);
> +	if (ret)
> +		return ret;
> +
> +	/* Read status at least once to clear any stale interrupts */
> +	regmap_read(chip->regmap, STUSB160X_ALERT_STATUS, &val);
> +	regmap_read(chip->regmap, STUSB160X_CC_CONNECTION_STATUS_TRANS, &val);
> +	regmap_read(chip->regmap, STUSB160X_MONITORING_STATUS_TRANS, &val);
> +	regmap_read(chip->regmap, STUSB160X_HW_FAULT_STATUS_TRANS, &val);
> +
> +	return 0;
> +}
> +
> +static int stusb160x_get_fw_caps(struct stusb160x *chip,
> +				 struct fwnode_handle *fwnode)
> +{
> +	const char *cap_str;
> +	int ret;
> +
> +	chip->capability.fwnode = fwnode;
> +
> +	/*
> +	 * Supported port type can be configured through device tree
> +	 * else it is read from chip registers in stusb160x_get_caps.
> +	 */
> +	ret = fwnode_property_read_string(fwnode, "power-role", &cap_str);
> +	if (!ret) {
> +		chip->port_type = typec_find_port_power_role(cap_str);
> +		if (chip->port_type < 0) {
> +			ret = chip->port_type;
> +			return ret;
> +		}
> +	}
> +	chip->capability.type = chip->port_type;
> +
> +	/* Skip DRP/Source capabilities in case of Sink only */
> +	if (chip->port_type == TYPEC_PORT_SNK)
> +		return 0;
> +
> +	if (chip->port_type == TYPEC_PORT_DRP)
> +		chip->capability.prefer_role = TYPEC_SINK;
> +
> +	/*
> +	 * Supported power operation mode can be configured through device tree
> +	 * else it is read from chip registers in stusb160x_get_caps.
> +	 */
> +	ret = fwnode_property_read_string(fwnode, "power-opmode", &cap_str);
> +	if (!ret) {
> +		chip->pwr_opmode = typec_find_pwr_opmode(cap_str);
> +		/* Power delivery not yet supported */
> +		if (chip->pwr_opmode < 0 ||
> +		    chip->pwr_opmode == TYPEC_PWR_MODE_PD) {
> +			ret = chip->pwr_opmode < 0 ? chip->pwr_opmode : -EINVAL;
> +			dev_err(chip->dev, "bad power operation mode: %d\n",
> +				chip->pwr_opmode);
> +			return ret;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int stusb160x_get_caps(struct stusb160x *chip)
> +{
> +	enum typec_port_type *type = &chip->capability.type;
> +	enum typec_port_data *data = &chip->capability.data;
> +	enum typec_accessory *accessory = chip->capability.accessory;
> +	u32 val;
> +	int ret;
> +
> +	chip->capability.revision = USB_TYPEC_REV_1_2;
> +
> +	ret = regmap_read(chip->regmap, STUSB160X_CC_POWER_MODE_CTRL, &val);
> +	if (ret)
> +		return ret;
> +
> +	switch (FIELD_GET(STUSB160X_CC_POWER_MODE, val)) {
> +	case SOURCE_WITH_ACCESSORY:
> +		*type = TYPEC_PORT_SRC;
> +		*data = TYPEC_PORT_DFP;
> +		*accessory++ = TYPEC_ACCESSORY_AUDIO;
> +		*accessory++ = TYPEC_ACCESSORY_DEBUG;
> +		break;
> +	case SINK_WITH_ACCESSORY:
> +		*type = TYPEC_PORT_SNK;
> +		*data = TYPEC_PORT_UFP;
> +		*accessory++ = TYPEC_ACCESSORY_AUDIO;
> +		*accessory++ = TYPEC_ACCESSORY_DEBUG;
> +		break;
> +	case SINK_WITHOUT_ACCESSORY:
> +		*type = TYPEC_PORT_SNK;
> +		*data = TYPEC_PORT_UFP;
> +		break;
> +	case DUAL_WITH_ACCESSORY:
> +	case DUAL_WITH_ACCESSORY_AND_TRY_SRC:
> +	case DUAL_WITH_ACCESSORY_AND_TRY_SNK:
> +		*type = TYPEC_PORT_DRP;
> +		*data = TYPEC_PORT_DRD;
> +		*accessory++ = TYPEC_ACCESSORY_AUDIO;
> +		*accessory++ = TYPEC_ACCESSORY_DEBUG;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	chip->port_type = *type;
> +	chip->pwr_opmode = stusb160x_get_pwr_opmode(chip);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id stusb160x_of_match[] = {
> +	{ .compatible = "st,stusb1600", .data = &stusb1600_regmap_config},
> +	{},
> +};
> +
> +static int stusb160x_probe(struct i2c_client *client)
> +{
> +	struct stusb160x *chip;
> +	const struct of_device_id *match;
> +	struct regmap_config *regmap_config;
> +	struct fwnode_handle *fwnode;
> +	int ret;
> +
> +	chip = devm_kzalloc(&client->dev, sizeof(struct stusb160x), GFP_KERNEL);
> +	if (!chip)
> +		return -ENOMEM;
> +
> +	i2c_set_clientdata(client, chip);
> +
> +	match = i2c_of_match_device(stusb160x_of_match, client);
> +	regmap_config = (struct regmap_config *)match->data;
> +	chip->regmap = devm_regmap_init_i2c(client, regmap_config);
> +	if (IS_ERR(chip->regmap)) {
> +		ret = PTR_ERR(chip->regmap);
> +		dev_err(&client->dev,
> +			"Failed to allocate register map:%d\n", ret);
> +		return ret;
> +	}
> +
> +	chip->dev = &client->dev;
> +
> +	chip->vsys_supply = devm_regulator_get_optional(chip->dev, "vsys");
> +	if (IS_ERR(chip->vsys_supply)) {
> +		ret = PTR_ERR(chip->vsys_supply);
> +		if (ret != -ENODEV)
> +			return ret;
> +		chip->vsys_supply = NULL;
> +	}
> +
> +	chip->vdd_supply = devm_regulator_get_optional(chip->dev, "vdd");
> +	if (IS_ERR(chip->vdd_supply)) {
> +		ret = PTR_ERR(chip->vdd_supply);
> +		if (ret != -ENODEV)
> +			return ret;
> +		chip->vdd_supply = NULL;
> +	}
> +
> +	chip->vconn_supply = devm_regulator_get_optional(chip->dev, "vconn");
> +	if (IS_ERR(chip->vconn_supply)) {
> +		ret = PTR_ERR(chip->vconn_supply);
> +		if (ret != -ENODEV)
> +			return ret;
> +		chip->vconn_supply = NULL;
> +	}
> +
> +	fwnode = device_get_named_child_node(chip->dev, "connector");
> +	if (IS_ERR(fwnode))
> +		return PTR_ERR(fwnode);
> +
> +	/*
> +	 * When both VDD and VSYS power supplies are present, the low power
> +	 * supply VSYS is selected when VSYS voltage is above 3.1 V.
> +	 * Otherwise VDD is selected.
> +	 */
> +	if (chip->vdd_supply &&
> +	    (!chip->vsys_supply ||
> +	     (regulator_get_voltage(chip->vsys_supply) <= 3100000)))
> +		chip->main_supply = chip->vdd_supply;
> +	else
> +		chip->main_supply = chip->vsys_supply;
> +
> +	if (chip->main_supply) {
> +		ret = regulator_enable(chip->main_supply);
> +		if (ret) {
> +			dev_err(chip->dev,
> +				"Failed to enable main supply: %d\n", ret);
> +			goto fwnode_put;
> +		}
> +	}
> +
> +	/* Get configuration from chip */
> +	ret = stusb160x_get_caps(chip);
> +	if (ret) {
> +		dev_err(chip->dev, "Failed to get port caps: %d\n", ret);
> +		goto main_reg_disable;
> +	}
> +
> +	/* Get optional re-configuration from device tree */
> +	ret = stusb160x_get_fw_caps(chip, fwnode);
> +	if (ret) {
> +		dev_err(chip->dev, "Failed to get connector caps: %d\n", ret);
> +		goto main_reg_disable;
> +	}
> +
> +	ret = stusb160x_chip_init(chip);
> +	if (ret) {
> +		dev_err(chip->dev, "Failed to init port: %d\n", ret);
> +		goto main_reg_disable;
> +	}
> +
> +	chip->port = typec_register_port(chip->dev, &chip->capability);
> +	if (!chip->port) {
> +		ret = -ENODEV;
> +		goto all_reg_disable;
> +	}
> +
> +	/*
> +	 * Default power operation mode initialization: will be updated upon
> +	 * attach/detach interrupt
> +	 */
> +	typec_set_pwr_opmode(chip->port, chip->pwr_opmode);
> +
> +	if (client->irq) {
> +		ret = stusb160x_irq_init(chip, client->irq);
> +		if (ret)
> +			goto port_unregister;
> +
> +		chip->role_sw = fwnode_usb_role_switch_get(fwnode);
> +		if (IS_ERR(chip->role_sw)) {
> +			ret = PTR_ERR(chip->role_sw);
> +			if (ret != -EPROBE_DEFER)
> +				dev_err(chip->dev,
> +					"Failed to get usb role switch: %d\n",
> +					ret);
> +			goto port_unregister;
> +		}
> +	} else {
> +		/*
> +		 * If Source or Dual power role, need to enable VDD supply
> +		 * providing Vbus if present. In case of interrupt support,
> +		 * VDD supply will be dynamically managed upon attach/detach
> +		 * interrupt.
> +		 */
> +		if (chip->port_type != TYPEC_PORT_SNK && chip->vdd_supply) {
> +			ret = regulator_enable(chip->vdd_supply);
> +			if (ret) {
> +				dev_err(chip->dev,
> +					"Failed to enable VDD supply: %d\n",
> +					ret);
> +				goto port_unregister;
> +			}
> +			chip->vbus_on = true;
> +		}
> +	}
> +
> +	fwnode_handle_put(fwnode);
> +
> +	return 0;
> +
> +port_unregister:
> +	typec_unregister_port(chip->port);
> +all_reg_disable:
> +	if (stusb160x_get_vconn(chip))
> +		stusb160x_set_vconn(chip, false);
> +main_reg_disable:
> +	if (chip->main_supply)
> +		regulator_disable(chip->main_supply);
> +fwnode_put:
> +	fwnode_handle_put(fwnode);
> +
> +	return ret;
> +}
> +
> +static int stusb160x_remove(struct i2c_client *client)
> +{
> +	struct stusb160x *chip = i2c_get_clientdata(client);
> +
> +	if (chip->partner) {
> +		typec_unregister_partner(chip->partner);
> +		chip->partner = NULL;
> +	}
> +
> +	if (chip->vbus_on)
> +		regulator_disable(chip->vdd_supply);
> +
> +	if (chip->role_sw)
> +		usb_role_switch_put(chip->role_sw);
> +
> +	typec_unregister_port(chip->port);
> +
> +	if (stusb160x_get_vconn(chip))
> +		stusb160x_set_vconn(chip, false);
> +
> +	if (chip->main_supply)
> +		regulator_disable(chip->main_supply);
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused stusb160x_suspend(struct device *dev)
> +{
> +	struct stusb160x *chip = dev_get_drvdata(dev);
> +
> +	/* Mask interrupts */
> +	return regmap_update_bits(chip->regmap,
> +				  STUSB160X_ALERT_STATUS_MASK_CTRL,
> +				  STUSB160X_ALL_ALERTS, STUSB160X_ALL_ALERTS);
> +}
> +
> +static int __maybe_unused stusb160x_resume(struct device *dev)
> +{
> +	struct stusb160x *chip = dev_get_drvdata(dev);
> +	u32 status;
> +	int ret;
> +
> +	ret = regcache_sync(chip->regmap);
> +	if (ret)
> +		return ret;
> +
> +	/* Check if attach/detach occurred during low power */
> +	ret = regmap_read(chip->regmap,
> +			  STUSB160X_CC_CONNECTION_STATUS, &status);
> +	if (ret)
> +		return ret;
> +
> +	if (chip->partner && !(status & STUSB160X_CC_ATTACH))
> +		stusb160x_detach(chip, status);
> +
> +	if (!chip->partner && (status & STUSB160X_CC_ATTACH)) {
> +		ret = stusb160x_attach(chip, status);
> +		if (ret)
> +			dev_err(chip->dev, "attach failed: %d\n", ret);
> +	}
> +
> +	/* Unmask interrupts */
> +	return regmap_write_bits(chip->regmap, STUSB160X_ALERT_STATUS_MASK_CTRL,
> +				 STUSB160X_CC_CONNECTION, 0);
> +}
> +
> +static SIMPLE_DEV_PM_OPS(stusb160x_pm_ops, stusb160x_suspend, stusb160x_resume);
> +
> +static struct i2c_driver stusb160x_driver = {
> +	.driver = {
> +		.name = "stusb160x",
> +		.pm = &stusb160x_pm_ops,
> +		.of_match_table = stusb160x_of_match,
> +	},
> +	.probe_new = stusb160x_probe,
> +	.remove = stusb160x_remove,
> +};
> +module_i2c_driver(stusb160x_driver);
> +
> +MODULE_AUTHOR("Amelie Delaunay <amelie.delaunay@st.com>");
> +MODULE_DESCRIPTION("STMicroelectronics STUSB160x Type-C controller driver");
> +MODULE_LICENSE("GPL v2");
> -- 
> 2.17.1

thanks,

-- 
heikki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
