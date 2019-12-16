Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A41121BA1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 22:21:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3JBY3jrgtISuT+/PuVCBLCvxCadIt/IkwD0anKuvMM=; b=eW8Uyz5WXr9eOS
	u0gGH6aA4cLzGivWC9Q5V5TOrRDAR2nKmjlIpMpzaT1HdsUzqZuh6hfjlcK2oYh6vPuQPvqlUQEt9
	ZKeY0lQ0tb5IkPbkCUELidfIYP9m5k62hillven6kS7ToHxkXeNOMH4U+3G6BEMocTkdD0x9qe6Wp
	6UOfpV0ViKv4IParf4xDfxW22anjiyHz5fUpUKSFuI0sm/Gi1B0XZMPr7N0bOHUFF/X3V2OQc/vwT
	Dgq0J3teqst3kRT+dsQg9cFTku220uUg2XUvtyLXB5RDioJAPq4Qvqoat0z+ro6a95H8/pRCPC5af
	FqJu3fqoHpTrLtMpUPLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igxo4-00027b-Jp; Mon, 16 Dec 2019 21:21:32 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igxnv-000276-Pf
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 21:21:26 +0000
Received: by mail-pf1-x443.google.com with SMTP id b19so6323331pfo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 13:21:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=NIsiOPIXGNdPj2KeSYFK0YZfg6aOCR5rYXMYdDTxxjg=;
 b=Leh+onp1c6334yt/mm+fFaM9lLR5NyudDQon1Vm+d+zouiogxkNO9Udu6U0ilXLZAK
 oAEBpEhg7LfX7GSrYmjwQeNY5eQwcUngig+Lhl0UUzbWbzOOemFmxuDrug+XIUnvXu1e
 xhJVAjywS/FrI2507lqJNncqe9hBQghN74/i0aKa2/BHrQR7I6fFqy+J7V7+URNwG3wd
 R/TdzXt1WE/pk43Wn+8pcyReJYwAn8Ty/IC0sohoCX+VIvzwSjg6jHuj34Pg8ujZWe1y
 +BA1Bs8DG53nkgN/WZCTuaCrYFTa/tD0tGOSw4Mv/TYybb7Gty50NmOPk1HGUBcyxPz/
 gAaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=NIsiOPIXGNdPj2KeSYFK0YZfg6aOCR5rYXMYdDTxxjg=;
 b=BMb1dZX9EvEH9G8FcIudFx/IoIae9HEtNUaDvW5CDYV1/B7Gu42TBbNkdSQQwts928
 mxWL7xgI34GPExU8uOlH+eTrdd6oUPyWU3MkL6q1G2lLpWP2DEULNG5SlkH1Man/rwSc
 My4nUCl/A1EzyXig8ZsXWfsNekr+JKghTzxVeuKbxR+X7U9QgrXcDlE8xYWtgs7kibMM
 Pb33J3bYCah+jSCKbsW5MPfVnnTRPiRVXxr2dAXyJ//NmY238Pf+cEbN75C2QTbx0jzA
 A3Vkw54uckX0anXrx5X0fXqfqCsdCCMZ310dKviQHlIKY4KjPiJWRXjyd2/cGm4BoeIx
 86Cg==
X-Gm-Message-State: APjAAAUY6b4gYQo2Kn+XiIfOuBi3ohZ5U6HwYT8FeE4Z1zYjHHkuxSrt
 AePa6zi0Klt8Q7+Z2TrFL+c=
X-Google-Smtp-Source: APXvYqwMJME3LORIz+L/PbewupGbLPbnaMhEHCZv3ap7ixap1Q0Z1HQjfP2Tmx6HbqS5s8g/QX7bZA==
X-Received: by 2002:a63:904c:: with SMTP id a73mr21103525pge.335.1576531282840; 
 Mon, 16 Dec 2019 13:21:22 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id w11sm23510386pfn.4.2019.12.16.13.21.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 16 Dec 2019 13:21:21 -0800 (PST)
Date: Mon, 16 Dec 2019 13:21:20 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Subject: Re: [PATCH v11 14/14] hwmon: Add PECI dimmtemp driver
Message-ID: <20191216212120.GA12089@roeck-us.net>
References: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
 <20191211194624.2872-15-jae.hyun.yoo@linux.intel.com>
 <d75aaad9-ae07-feeb-966a-899ecfe9d4b3@roeck-us.net>
 <5ed9f292-e024-ffda-a1a8-870ba0f05c58@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5ed9f292-e024-ffda-a1a8-870ba0f05c58@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_132123_865110_A57B39C1 
X-CRM114-Status: GOOD (  31.58  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Randy Dunlap <rdunlap@infradead.org>, Tomer Maimon <tmaimon77@gmail.com>,
 devicetree@vger.kernel.org, Frederic Barrat <fbarrat@linux.vnet.ibm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 Jason M Biils <jason.m.bills@linux.intel.com>,
 Eric Sandeen <sandeen@redhat.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, openbmc@lists.ozlabs.org,
 linux-doc@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Joel Stanley <joel@jms.id.au>, "Bryant G . Ly" <bryantly@linux.vnet.ibm.com>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 David Kershner <david.kershner@unisys.com>, Wu Hao <hao.wu@intel.com>,
 linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Arnd Bergmann <arnd@arndb.de>, Philippe Ombredanne <pombredanne@nexb.com>,
 Johan Hovold <johan@kernel.org>, Tomohiro Kusumi <kusumi.tomohiro@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Stef van Os <stef.van.os@prodrive-technologies.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sagar Dharia <sdharia@codeaurora.org>, linux-arm-kernel@lists.infradead.org,
 Alan Cox <alan@linux.intel.com>, Juergen Gross <jgross@suse.com>,
 Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Stephen Boyd <sboyd@codeaurora.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 01:04:31PM -0800, Jae Hyun Yoo wrote:
> Hi Guenter,
> =

> On 12/12/2019 10:32 PM, Guenter Roeck wrote:
> > On 12/11/19 11:46 AM, Jae Hyun Yoo wrote:
> > > This commit adds PECI dimmtemp hwmon driver.
> > > =

> > > Cc: Guenter Roeck <linux@roeck-us.net>
> > > Cc: Jean Delvare <jdelvare@suse.com>
> > > Cc: Alan Cox <alan@linux.intel.com>
> > > Cc: Andrew Jeffery <andrew@aj.id.au>
> > > Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > > Cc: Arnd Bergmann <arnd@arndb.de>
> > > Cc: Jason M Biils <jason.m.bills@linux.intel.com>
> > > Cc: Joel Stanley <joel@jms.id.au>
> > > Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
> > > Cc: Andrew Lunn <andrew@lunn.ch>
> > > Cc: Stef van Os <stef.van.os@prodrive-technologies.com>
> > > Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> > > Reviewed-by: Haiyue Wang <haiyue.wang@linux.intel.com>
> > > Reviewed-by: James Feist <james.feist@linux.intel.com>
> > > Reviewed-by: Vernon Mauery <vernon.mauery@linux.intel.com>
> > > Acked-by: Guenter Roeck <linux@roeck-us.net>
> > > ---
> > > Changes since v10:
> > > - Added Skylake Xeon D support.
> > > - Added max and crit properties for temperature threshold checking.
> > > - Fixed minor bugs and style issues.
> > > =

> > > =A0 drivers/hwmon/Kconfig=A0=A0=A0=A0=A0=A0=A0=A0 |=A0 14 ++
> > > =A0 drivers/hwmon/Makefile=A0=A0=A0=A0=A0=A0=A0 |=A0=A0 1 +
> > > =A0 drivers/hwmon/peci-dimmtemp.c | 393 +++++++++++++++++++++++++++++=
+++++
> > > =A0 3 files changed, 408 insertions(+)
> > > =A0 create mode 100644 drivers/hwmon/peci-dimmtemp.c
> > > =

> > > diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
> > > index b6604759579c..d3370fbab40c 100644
> > > --- a/drivers/hwmon/Kconfig
> > > +++ b/drivers/hwmon/Kconfig
> > > @@ -1363,6 +1363,20 @@ config SENSORS_PECI_CPUTEMP
> > > =A0=A0=A0=A0=A0=A0=A0 This driver can also be built as a module. If s=
o, the module
> > > =A0=A0=A0=A0=A0=A0=A0 will be called peci-cputemp.
> > > +config SENSORS_PECI_DIMMTEMP
> > > +=A0=A0=A0 tristate "PECI DIMM temperature monitoring client"
> > > +=A0=A0=A0 depends on PECI
> > > +=A0=A0=A0 select MFD_INTEL_PECI_CLIENT
> > > +=A0=A0=A0 help
> > > +=A0=A0=A0=A0=A0 If you say yes here you get support for the generic =
Intel
> > > PECI hwmon
> > > +=A0=A0=A0=A0=A0 driver which provides Digital Thermal Sensor (DTS) t=
hermal
> > > readings of
> > > +=A0=A0=A0=A0=A0 DIMM components that are accessible using the PECI C=
lient Command
> > > +=A0=A0=A0=A0=A0 Suite via the processor PECI client.
> > > +=A0=A0=A0=A0=A0 Check <file:Documentation/hwmon/peci-dimmtemp.rst> f=
or details.
> > > +
> > > +=A0=A0=A0=A0=A0 This driver can also be built as a module. If so, th=
e module
> > > +=A0=A0=A0=A0=A0 will be called peci-dimmtemp.
> > > +
> > > =A0 source "drivers/hwmon/pmbus/Kconfig"
> > > =A0 config SENSORS_PWM_FAN
> > > diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
> > > index d6fea48697af..4015c4b60bf4 100644
> > > --- a/drivers/hwmon/Makefile
> > > +++ b/drivers/hwmon/Makefile
> > > @@ -145,6 +145,7 @@ obj-$(CONFIG_SENSORS_PC87360)=A0=A0=A0 +=3D pc873=
60.o
> > > =A0 obj-$(CONFIG_SENSORS_PC87427)=A0=A0=A0 +=3D pc87427.o
> > > =A0 obj-$(CONFIG_SENSORS_PCF8591)=A0=A0=A0 +=3D pcf8591.o
> > > =A0 obj-$(CONFIG_SENSORS_PECI_CPUTEMP)=A0=A0=A0 +=3D peci-cputemp.o
> > > +obj-$(CONFIG_SENSORS_PECI_DIMMTEMP)=A0=A0=A0 +=3D peci-dimmtemp.o
> > > =A0 obj-$(CONFIG_SENSORS_POWR1220)=A0 +=3D powr1220.o
> > > =A0 obj-$(CONFIG_SENSORS_PWM_FAN)=A0=A0=A0 +=3D pwm-fan.o
> > > =A0 obj-$(CONFIG_SENSORS_RASPBERRYPI_HWMON)=A0=A0=A0 +=3D raspberrypi=
-hwmon.o
> > > diff --git a/drivers/hwmon/peci-dimmtemp.c
> > > b/drivers/hwmon/peci-dimmtemp.c
> > > new file mode 100644
> > > index 000000000000..974f453f9366
> > > --- /dev/null
> > > +++ b/drivers/hwmon/peci-dimmtemp.c
> > > @@ -0,0 +1,393 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +// Copyright (c) 2018-2019 Intel Corporation
> > > +
> > > +#include <linux/hwmon.h>
> > > +#include <linux/jiffies.h>
> > > +#include <linux/mfd/intel-peci-client.h>
> > > +#include <linux/module.h>
> > > +#include <linux/of_device.h>
> > > +#include <linux/platform_device.h>
> > > +#include <linux/workqueue.h>
> > > +#include "peci-hwmon.h"
> > > +
> > > +#define DIMM_MASK_CHECK_DELAY_JIFFIES=A0 msecs_to_jiffies(5000)
> > > +#define DIMM_MASK_CHECK_RETRY_MAX=A0=A0=A0=A0=A0 60 /* 60 x 5 secs =
=3D 5 minutes */
> > > +
> > > +struct peci_dimmtemp {
> > > +=A0=A0=A0 struct peci_client_manager *mgr;
> > > +=A0=A0=A0 struct device *dev;
> > > +=A0=A0=A0 char name[PECI_NAME_SIZE];
> > > +=A0=A0=A0 const struct cpu_gen_info *gen_info;
> > > +=A0=A0=A0 struct workqueue_struct *work_queue;
> > > +=A0=A0=A0 struct delayed_work work_handler;
> > > +=A0=A0=A0 struct peci_sensor_data temp[DIMM_NUMS_MAX];
> > > +=A0=A0=A0 long temp_max[DIMM_NUMS_MAX];
> > > +=A0=A0=A0 long temp_crit[DIMM_NUMS_MAX];
> > > +=A0=A0=A0 u32 dimm_mask;
> > > +=A0=A0=A0 int retry_count;
> > > +=A0=A0=A0 u32 temp_config[DIMM_NUMS_MAX + 1];
> > > +=A0=A0=A0 struct hwmon_channel_info temp_info;
> > > +=A0=A0=A0 const struct hwmon_channel_info *info[2];
> > > +=A0=A0=A0 struct hwmon_chip_info chip;
> > > +};
> > > +
> > > +static const char *dimmtemp_label[CHAN_RANK_MAX][DIMM_IDX_MAX] =3D {
> > > +=A0=A0=A0 { "DIMM A1", "DIMM A2", "DIMM A3" },
> > > +=A0=A0=A0 { "DIMM B1", "DIMM B2", "DIMM B3" },
> > > +=A0=A0=A0 { "DIMM C1", "DIMM C2", "DIMM C3" },
> > > +=A0=A0=A0 { "DIMM D1", "DIMM D2", "DIMM D3" },
> > > +=A0=A0=A0 { "DIMM E1", "DIMM E2", "DIMM E3" },
> > > +=A0=A0=A0 { "DIMM F1", "DIMM F2", "DIMM F3" },
> > > +=A0=A0=A0 { "DIMM G1", "DIMM G2", "DIMM G3" },
> > > +=A0=A0=A0 { "DIMM H1", "DIMM H2", "DIMM H3" },
> > > +};
> > > +
> > > +static inline int read_ddr_dimm_temp_config(struct peci_dimmtemp *pr=
iv,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 int chan_rank,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 u8 *cfg_data)
> > > +{
> > > +=A0=A0=A0 return peci_client_read_package_config(priv->mgr,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 PECI_MBX_INDEX_DDR_DIMM_TEMP,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 chan_rank, cfg_data);
> > > +}
> > > +
> > > +static int get_dimm_temp(struct peci_dimmtemp *priv, int dimm_no)
> > > +{
> > > +=A0=A0=A0 int dimm_order =3D dimm_no % priv->gen_info->dimm_idx_max;
> > > +=A0=A0=A0 int chan_rank =3D dimm_no / priv->gen_info->dimm_idx_max;
> > > +=A0=A0=A0 struct peci_rd_pci_cfg_local_msg rp_msg;
> > > +=A0=A0=A0 u8=A0 cfg_data[4];
> > > +=A0=A0=A0 int ret;
> > > +
> > > +=A0=A0=A0 if (!peci_sensor_need_update(&priv->temp[dimm_no]))
> > > +=A0=A0=A0=A0=A0=A0=A0 return 0;
> > > +
> > > +=A0=A0=A0 ret =3D read_ddr_dimm_temp_config(priv, chan_rank, cfg_dat=
a);
> > > +=A0=A0=A0 if (ret)
> > > +=A0=A0=A0=A0=A0=A0=A0 return ret;
> > > +
> > > +=A0=A0=A0 priv->temp[dimm_no].value =3D cfg_data[dimm_order] * 1000;
> > > +
> > > +=A0=A0=A0 switch (priv->gen_info->model) {
> > > +=A0=A0=A0 case INTEL_FAM6_SKYLAKE_X:
> > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.addr =3D priv->mgr->client->addr;
> > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.bus =3D 2;
> > > +=A0=A0=A0=A0=A0=A0=A0 /*
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 10, Function 2: IMC 0 channel 0 ->=
 rank 0
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 10, Function 6: IMC 0 channel 1 ->=
 rank 1
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 11, Function 2: IMC 0 channel 2 ->=
 rank 2
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 12, Function 2: IMC 1 channel 0 ->=
 rank 3
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 12, Function 6: IMC 1 channel 1 ->=
 rank 4
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 13, Function 2: IMC 1 channel 2 ->=
 rank 5
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 */
> > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.device =3D 10 + chan_rank / 3 * 2 +
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 (chan_rank % 3 =3D=
=3D 2 ? 1 : 0);
> > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.function =3D chan_rank % 3 =3D=3D 1 ? 6=
 : 2;
> > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.reg =3D 0x120 + dimm_order * 4;
> > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.rx_len =3D 4;
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0 ret =3D peci_command(priv->mgr->client->adapte=
r,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 PECI_CMD_RD_P=
CI_CFG_LOCAL, &rp_msg);
> > > +=A0=A0=A0=A0=A0=A0=A0 if (rp_msg.cc !=3D PECI_DEV_CC_SUCCESS)
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret =3D -EAGAIN;
> > > +=A0=A0=A0=A0=A0=A0=A0 if (ret)
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0 priv->temp_max[dimm_no] =3D rp_msg.pci_config[=
1] * 1000;
> > > +=A0=A0=A0=A0=A0=A0=A0 priv->temp_crit[dimm_no] =3D rp_msg.pci_config=
[2] * 1000;
> > > +=A0=A0=A0=A0=A0=A0=A0 break;
> > > +=A0=A0=A0 case INTEL_FAM6_SKYLAKE_XD:
> > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.addr =3D priv->mgr->client->addr;
> > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.bus =3D 2;
> > > +=A0=A0=A0=A0=A0=A0=A0 /*
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 10, Function 2: IMC 0 channel 0 ->=
 rank 0
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 10, Function 6: IMC 0 channel 1 ->=
 rank 1
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 12, Function 2: IMC 1 channel 0 ->=
 rank 2
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 12, Function 6: IMC 1 channel 1 ->=
 rank 3
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 */
> > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.device =3D 10 + chan_rank / 2 * 2;
> > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.function =3D (chan_rank % 2) ? 6 : 2;
> > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.reg =3D 0x120 + dimm_order * 4;
> > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.rx_len =3D 4;
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0 ret =3D peci_command(priv->mgr->client->adapte=
r,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 PECI_CMD_RD_P=
CI_CFG_LOCAL, &rp_msg);
> > > +=A0=A0=A0=A0=A0=A0=A0 if (rp_msg.cc !=3D PECI_DEV_CC_SUCCESS)
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret =3D -EAGAIN;
> > > +=A0=A0=A0=A0=A0=A0=A0 if (ret)
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0 priv->temp_max[dimm_no] =3D rp_msg.pci_config[=
1] * 1000;
> > > +=A0=A0=A0=A0=A0=A0=A0 priv->temp_crit[dimm_no] =3D rp_msg.pci_config=
[2] * 1000;
> > > +=A0=A0=A0=A0=A0=A0=A0 break;
> > > +=A0=A0=A0 case INTEL_FAM6_HASWELL_X:
> > > +=A0=A0=A0 case INTEL_FAM6_BROADWELL_X:
> > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.addr =3D priv->mgr->client->addr;
> > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.bus =3D 1;
> > > +=A0=A0=A0=A0=A0=A0=A0 /*
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 20, Function 0: IMC 0 channel 0 ->=
 rank 0
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 20, Function 1: IMC 0 channel 1 ->=
 rank 1
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 21, Function 0: IMC 0 channel 2 ->=
 rank 2
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 21, Function 1: IMC 0 channel 3 ->=
 rank 3
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 23, Function 0: IMC 1 channel 0 ->=
 rank 4
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 23, Function 1: IMC 1 channel 1 ->=
 rank 5
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 24, Function 0: IMC 1 channel 2 ->=
 rank 6
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 * Device 24, Function 1: IMC 1 channel 3 ->=
 rank 7
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 */
> > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.device =3D 20 + chan_rank / 2 + chan_ra=
nk / 4;
> > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.function =3D chan_rank % 2;
> > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.reg =3D 0x120 + dimm_order * 4;
> > > +=A0=A0=A0=A0=A0=A0=A0 rp_msg.rx_len =3D 4;
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0 ret =3D peci_command(priv->mgr->client->adapte=
r,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 PECI_CMD_RD_P=
CI_CFG_LOCAL, &rp_msg);
> > > +=A0=A0=A0=A0=A0=A0=A0 if (rp_msg.cc !=3D PECI_DEV_CC_SUCCESS)
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret =3D -EAGAIN;
> > > +=A0=A0=A0=A0=A0=A0=A0 if (ret)
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0 priv->temp_max[dimm_no] =3D rp_msg.pci_config[=
1] * 1000;
> > > +=A0=A0=A0=A0=A0=A0=A0 priv->temp_crit[dimm_no] =3D rp_msg.pci_config=
[2] * 1000;
> > > +=A0=A0=A0=A0=A0=A0=A0 break;
> > > +=A0=A0=A0 default:
> > > +=A0=A0=A0=A0=A0=A0=A0 return -EOPNOTSUPP;
> > =

> > It looks like the sensors are created even on unsupported platforms,
> > which would generate error messages whenever someone tries to read
> > the attributes.
> > =

> > There should be some code early on checking this, and the driver
> > should not even instantiate if the CPU model is not supported.
> =

> Actually, this 'default' case will not be happened because this driver
> will be registered only when the CPU model is supported. The CPU model
> checking code is in 'intel-peci-client.c' which is [11/14] of this
> patch set.
> =


That again assumes that both drivers will be modified in sync in the future.
We can not make that assumption.

> > > +=A0=A0=A0 }
> > > +
> > > +=A0=A0=A0 peci_sensor_mark_updated(&priv->temp[dimm_no]);
> > > +
> > > +=A0=A0=A0 return 0;
> > > +}
> > > +
> > > +static int dimmtemp_read_string(struct device *dev,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 enum hwmon_sensor_type=
s type,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 attr, int channel,=
 const char **str)
> > > +{
> > > +=A0=A0=A0 struct peci_dimmtemp *priv =3D dev_get_drvdata(dev);
> > > +=A0=A0=A0 u32 dimm_idx_max =3D priv->gen_info->dimm_idx_max;
> > > +=A0=A0=A0 int chan_rank, dimm_idx;
> > > +
> > > +=A0=A0=A0 if (attr !=3D hwmon_temp_label)
> > > +=A0=A0=A0=A0=A0=A0=A0 return -EOPNOTSUPP;
> > > +
> > > +=A0=A0=A0 chan_rank =3D channel / dimm_idx_max;
> > > +=A0=A0=A0 dimm_idx =3D channel % dimm_idx_max;
> > > +=A0=A0=A0 *str =3D dimmtemp_label[chan_rank][dimm_idx];
> > =

> > Similar to the other patch, I am concerned that this can end up setting
> > *str
> > to NULL at some point in the future.
> =

> Okay. I'll make dynamic label string table generation code for it as
> well.
> =

> > > +
> > > +=A0=A0=A0 return 0;
> > > +}
> > > +
> > > +static int dimmtemp_read(struct device *dev, enum
> > > hwmon_sensor_types type,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 attr, int channel, long *va=
l)
> > > +{
> > > +=A0=A0=A0 struct peci_dimmtemp *priv =3D dev_get_drvdata(dev);
> > > +=A0=A0=A0 int ret;
> > > +
> > > +=A0=A0=A0 ret =3D get_dimm_temp(priv, channel);
> > > +=A0=A0=A0 if (ret)
> > > +=A0=A0=A0=A0=A0=A0=A0 return ret;
> > > +
> > > +=A0=A0=A0 switch (attr) {
> > > +=A0=A0=A0 case hwmon_temp_input:
> > > +=A0=A0=A0=A0=A0=A0=A0 *val =3D priv->temp[channel].value;
> > > +=A0=A0=A0=A0=A0=A0=A0 break;
> > > +=A0=A0=A0 case hwmon_temp_max:
> > > +=A0=A0=A0=A0=A0=A0=A0 *val =3D priv->temp_max[channel];
> > > +=A0=A0=A0=A0=A0=A0=A0 break;
> > > +=A0=A0=A0 case hwmon_temp_crit:
> > > +=A0=A0=A0=A0=A0=A0=A0 *val =3D priv->temp_crit[channel];
> > > +=A0=A0=A0=A0=A0=A0=A0 break;
> > > +=A0=A0=A0 default:
> > > +=A0=A0=A0=A0=A0=A0=A0 ret =3D -EOPNOTSUPP;
> > > +=A0=A0=A0=A0=A0=A0=A0 break;
> > > +=A0=A0=A0 }
> > > +
> > > +=A0=A0=A0 return ret;
> > > +}
> > > +
> > > +static umode_t dimmtemp_is_visible(const void *data,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 enum hwmon_se=
nsor_types type,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 attr, int=
 channel)
> > > +{
> > > +=A0=A0=A0 const struct peci_dimmtemp *priv =3D data;
> > > +
> > > +=A0=A0=A0 if (priv->temp_config[channel] & BIT(attr) &&
> > > +=A0=A0=A0=A0=A0=A0=A0 priv->dimm_mask & BIT(channel))
> > > +=A0=A0=A0=A0=A0=A0=A0 return 0444;
> > > +
> > > +=A0=A0=A0 return 0;
> > > +}
> > > +
> > > +static const struct hwmon_ops dimmtemp_ops =3D {
> > > +=A0=A0=A0 .is_visible =3D dimmtemp_is_visible,
> > > +=A0=A0=A0 .read_string =3D dimmtemp_read_string,
> > > +=A0=A0=A0 .read =3D dimmtemp_read,
> > > +};
> > > +
> > > +static int check_populated_dimms(struct peci_dimmtemp *priv)
> > > +{
> > > +=A0=A0=A0 u32 chan_rank_max =3D priv->gen_info->chan_rank_max;
> > > +=A0=A0=A0 u32 dimm_idx_max =3D priv->gen_info->dimm_idx_max;
> > > +=A0=A0=A0 int chan_rank, dimm_idx;
> > > +=A0=A0=A0 u8=A0 cfg_data[4];
> > > +
> > > +=A0=A0=A0 for (chan_rank =3D 0; chan_rank < chan_rank_max; chan_rank=
++) {
> > > +=A0=A0=A0=A0=A0=A0=A0 int ret;
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0 ret =3D read_ddr_dimm_temp_config(priv, chan_r=
ank, cfg_data);
> > > +=A0=A0=A0=A0=A0=A0=A0 if (ret) {
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 priv->dimm_mask =3D 0;
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
> > > +=A0=A0=A0=A0=A0=A0=A0 }
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0 for (dimm_idx =3D 0; dimm_idx < dimm_idx_max; =
dimm_idx++)
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (cfg_data[dimm_idx])
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 priv->dimm_mask |=3D B=
IT(chan_rank *
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 dimm_idx_max +
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 dimm_idx);
> > > +=A0=A0=A0 }
> > > +
> > > +=A0=A0=A0 if (!priv->dimm_mask)
> > > +=A0=A0=A0=A0=A0=A0=A0 return -EAGAIN;
> > > +
> > > +=A0=A0=A0 dev_dbg(priv->dev, "Scanned populated DIMMs: 0x%x\n",
> > > priv->dimm_mask);
> > > +
> > > +=A0=A0=A0 return 0;
> > > +}
> > > +
> > > +static int create_dimm_temp_info(struct peci_dimmtemp *priv)
> > > +{
> > > +=A0=A0=A0 int ret, i, config_idx, channels;
> > > +=A0=A0=A0 struct device *hwmon_dev;
> > > +
> > > +=A0=A0=A0 ret =3D check_populated_dimms(priv);
> > > +=A0=A0=A0 if (ret) {
> > > +=A0=A0=A0=A0=A0=A0=A0 if (ret =3D=3D -EAGAIN) {
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (priv->retry_count < DIMM_MASK_=
CHECK_RETRY_MAX) {
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 queue_delayed_work(pri=
v->work_queue,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 &priv->work_handler,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 DIMM_MASK_CHECK_DELAY_JIFFIES);
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 priv->retry_count++;
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 dev_dbg(priv->dev,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "Deferred =
DIMM temp info creation\n");
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 } else {
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 dev_err(priv->dev,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "Timeout D=
IMM temp info creation\n");
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ret =3D -ETIMEDOUT;
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
> > > +=A0=A0=A0=A0=A0=A0=A0 }
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0 return ret;
> > > +=A0=A0=A0 }
> > > +
> > > +=A0=A0=A0 channels =3D priv->gen_info->chan_rank_max *
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 priv->gen_info->dimm_idx_max;
> > > +=A0=A0=A0 for (i =3D 0, config_idx =3D 0; i < channels; i++)
> > > +=A0=A0=A0=A0=A0=A0=A0 if (priv->dimm_mask & BIT(i))
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 while (i >=3D config_idx)
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 priv->temp_config[conf=
ig_idx++] =3D
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 HWMON_T_LA=
BEL | HWMON_T_INPUT |
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 HWMON_T_MA=
X | HWMON_T_CRIT;
> > > +
> > > +=A0=A0=A0 priv->chip.ops =3D &dimmtemp_ops;
> > > +=A0=A0=A0 priv->chip.info =3D priv->info;
> > > +
> > > +=A0=A0=A0 priv->info[0] =3D &priv->temp_info;
> > > +
> > > +=A0=A0=A0 priv->temp_info.type =3D hwmon_temp;
> > > +=A0=A0=A0 priv->temp_info.config =3D priv->temp_config;
> > > +
> > > +=A0=A0=A0 hwmon_dev =3D devm_hwmon_device_register_with_info(priv->d=
ev,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 priv->name,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 priv,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 &priv->chip,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 NULL);
> > > +=A0=A0=A0 ret =3D PTR_ERR_OR_ZERO(hwmon_dev);
> > > +=A0=A0=A0 if (!ret)
> > > +=A0=A0=A0=A0=A0=A0=A0 dev_dbg(priv->dev, "%s: sensor '%s'\n",
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 dev_name(hwmon_dev), priv->name);
> > > +
> > =

> > Any chance to make this consistent with the other driver ?
> =

> Will change this to:
> =

> if (IS_ERR(hwmon_dev)) {
> 	dev_err(&priv->dev, "Failed to register hwmon device\n");
> 	return PTR_ERR(hwmon_dev);
> }
> =

> > > +=A0=A0=A0 return ret;
> > > +}
> > > +
> > > +static void create_dimm_temp_info_delayed(struct work_struct *work)
> > > +{
> > > +=A0=A0=A0 struct delayed_work *dwork =3D to_delayed_work(work);
> > > +=A0=A0=A0 struct peci_dimmtemp *priv =3D container_of(dwork, struct
> > > peci_dimmtemp,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 work_handler);
> > > +=A0=A0=A0 int ret;
> > > +
> > > +=A0=A0=A0 ret =3D create_dimm_temp_info(priv);
> > > +=A0=A0=A0 if (ret && ret !=3D -EAGAIN)
> > > +=A0=A0=A0=A0=A0=A0=A0 dev_dbg(priv->dev, "Failed to create DIMM temp=
 info\n");
> > > +}
> > > +
> > > +static int peci_dimmtemp_probe(struct platform_device *pdev)
> > > +{
> > > +=A0=A0=A0 struct peci_client_manager *mgr =3D dev_get_drvdata(pdev->=
dev.parent);
> > > +=A0=A0=A0 struct device *dev =3D &pdev->dev;
> > > +=A0=A0=A0 struct peci_dimmtemp *priv;
> > > +=A0=A0=A0 int ret;
> > > +
> > > +=A0=A0=A0 if ((mgr->client->adapter->cmd_mask &
> > > +=A0=A0=A0=A0=A0=A0=A0 (BIT(PECI_CMD_GET_TEMP) | BIT(PECI_CMD_RD_PKG_=
CFG))) !=3D
> > > +=A0=A0=A0=A0=A0=A0=A0 (BIT(PECI_CMD_GET_TEMP) | BIT(PECI_CMD_RD_PKG_=
CFG)))
> > > +=A0=A0=A0=A0=A0=A0=A0 return -ENODEV;
> > > +
> > > +=A0=A0=A0 priv =3D devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> > > +=A0=A0=A0 if (!priv)
> > > +=A0=A0=A0=A0=A0=A0=A0 return -ENOMEM;
> > > +
> > > +=A0=A0=A0 dev_set_drvdata(dev, priv);
> > > +=A0=A0=A0 priv->mgr =3D mgr;
> > > +=A0=A0=A0 priv->dev =3D dev;
> > > +=A0=A0=A0 priv->gen_info =3D mgr->gen_info;
> > > +
> > > +=A0=A0=A0 snprintf(priv->name, PECI_NAME_SIZE, "peci_dimmtemp.cpu%d",
> > > +=A0=A0=A0=A0=A0=A0=A0=A0 priv->mgr->client->addr - PECI_BASE_ADDR);
> > > +
> > > +=A0=A0=A0 priv->work_queue =3D alloc_ordered_workqueue(priv->name, 0=
);
> > > +=A0=A0=A0 if (!priv->work_queue)
> > > +=A0=A0=A0=A0=A0=A0=A0 return -ENOMEM;
> > > +
> > > +=A0=A0=A0 INIT_DELAYED_WORK(&priv->work_handler,
> > > create_dimm_temp_info_delayed);
> > > +
> > > +=A0=A0=A0 ret =3D create_dimm_temp_info(priv);
> > > +=A0=A0=A0 if (ret && ret !=3D -EAGAIN) {
> > > +=A0=A0=A0=A0=A0=A0=A0 dev_err(dev, "Failed to create DIMM temp info\=
n");
> > =

> > Does this generate error messages if there are no DIMMS ?
> =

> Yes, this error message will be printed out once if it meets a timeout
> in DIMM scanning when there is no DIMM.
> =


Is that indeed an error, or are there situations where no DIMMs are
detected and that is a perfectly valid situation ? An error message
is only acceptable if this is indeed an error in all situations.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
