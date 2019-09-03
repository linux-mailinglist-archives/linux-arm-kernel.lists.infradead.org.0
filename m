Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9BAA61C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 08:49:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GJG9wFYbvU1xfxMqLuYkgTeQvJXIr9LD1jkPHUxVuM=; b=J1GqDTgouwof7m
	fnjoY+5uoYJywLa+1XHmvfh/Kw0TdduvpBsS1X3OrScyOxfJlQSemk3iW/NGmfUjzwCeanzPQMbsO
	lSJU9HTchU5pDEibqIKdKefNm4VE/dSepW26q2ubZ5X6DFVas6n/QPqpwK0/dLnvjLjldQ8sObAX1
	6nMaOPZzrIYJD854GVJsisHmNrmKwp2eQcE6MyS8gTy+xBwwzNIzNBlKXOur4jNrHsYBVmZJLBpeF
	yxjlBtOx7yRU+x++4+hEaajrwlugAw70gFRLhjTKW3MmHkwysv5tJKYR0pDMgoJzJmiaCU4G1xeTR
	DP1eMe1uWOrOr/z8yTDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52cg-0005Zw-JT; Tue, 03 Sep 2019 06:49:02 +0000
Received: from mail-eopbgr80057.outbound.protection.outlook.com ([40.107.8.57]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52cS-0005ZR-FL
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 06:48:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eYrQ9vWMBwly0vq+OZuzCPyL+VoqX/FitzDWr8yikgUHxNaNmS5s4RYO4M7t6GThaoLQWLcHeXavATtqod49rIKnttW2hAesaxWheOztrVUqzPZFwZep2GYLE47Y2cbgoR6hz5lgyT4VxIQMbVjeJRbq4F4/VwzfpuisCFFXKJxxBSLx8f0LXr1gu658kp6DFvCqv1mFJ21ek0U786yoBDYUMQaPAmC9QgBS42xpkKO1T3VFv/y2hpvkwEIYdT0DF7o7raQxr62txPTv10fevAAOEwcd0drk/fmxjllmQNNYGkyPC+A+0N9p/M/HGGFIPYu3Lby34Pscfu4Lbu+dew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D8tG+k6Qp/yp8sDOfTFJX8sUpAcp11Sdf3DdxHxOJGY=;
 b=OTvRmolkcDf199uOTGzyj5+FJRzoGEEthsk0OWpxlFiBDN/owknrBLDfK+5JzY8WlDrpN4PD7+o2/C+8y6If2b6xsabs1tsaFY1oxDCSJ6Dm66HUyEB5v1RgnaUJWJiIvEKGS+Mjo27W9kYjtRHL250z56yqK6mH+Ohy945NO3B0buN+NVd2xbh2opMSZHu6m7sqqv7bPsFy9KMc6SoNsZBuAKfrHzPGDQtyUj3YV773Z35eTKmJBnlKKJAapzBcDEEF7RJiMk/UQ9TLdu3lMi8KBogE1DRR7fUAq/XPKDWCJx4bGgctORcHG7EwPoNMPD9E/B3YMgvmEZ1wRO2ePg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D8tG+k6Qp/yp8sDOfTFJX8sUpAcp11Sdf3DdxHxOJGY=;
 b=h2sJXFW0qewmh9q6DND5E+KCAxIAV8sR4qkPFqxg94CKbZCkm/FFKESmtFRQr3FyrnRk3y6QnuI3/ub6OuXtw5uWy1IBBMlr3+cIY3bxwVcQVsQf+aef1Bm2IzbHeWmT6Q0TcpLuKXo94n3l7UcgxKycIs75FCBS/LwkuZeO+Vk=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3945.eurprd04.prod.outlook.com (52.134.65.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Tue, 3 Sep 2019 06:48:45 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2199.021; Tue, 3 Sep 2019
 06:48:45 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will@kernel.org" <will@kernel.org>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>, Aisheng Dong
 <aisheng.dong@nxp.com>, "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Andy Duan <fugang.duan@nxp.com>, Peng Fan <peng.fan@nxp.com>, Daniel Baluta
 <daniel.baluta@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 "mripard@kernel.org" <mripard@kernel.org>, "olof@lixom.net" <olof@lixom.net>, 
 "arnd@arndb.de" <arnd@arndb.de>, "jagan@amarulasolutions.com"
 <jagan@amarulasolutions.com>, "bjorn.andersson@linaro.org"
 <bjorn.andersson@linaro.org>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 "stefan@agner.ch" <stefan@agner.ch>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "andriy.shevchenko@linux.intel.com"
 <andriy.shevchenko@linux.intel.com>, "yuehaibing@huawei.com"
 <yuehaibing@huawei.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "ronald@innovation.ch" <ronald@innovation.ch>, "m.felsch@pengutronix.de"
 <m.felsch@pengutronix.de>, Jacky Bai <ping.bai@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-input@vger.kernel.org"
 <linux-input@vger.kernel.org>
Subject: RE: [PATCH V2 2/5] input: keyboard: imx_sc: Add i.MX system
 controller power key support
Thread-Topic: [PATCH V2 2/5] input: keyboard: imx_sc: Add i.MX system
 controller power key support
Thread-Index: AQHVYfwAkBJd0uw8O0iWCkl8q7ZXAqcZfd4AgAACgQA=
Date: Tue, 3 Sep 2019 06:48:45 +0000
Message-ID: <DB3PR0402MB391602C6B425DD7EBFB9AF1DF5B90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
 <1567519424-32271-2-git-send-email-Anson.Huang@nxp.com>
 <6d8dd5df-02da-b4cd-e61d-a4a15d0bf0c8@pengutronix.de>
In-Reply-To: <6d8dd5df-02da-b4cd-e61d-a4a15d0bf0c8@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8adba28f-3173-4b44-3242-08d7303ac407
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3945; 
x-ms-traffictypediagnostic: DB3PR0402MB3945:|DB3PR0402MB3945:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3945968145EB21AEBFD73BF6F5B90@DB3PR0402MB3945.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(346002)(136003)(366004)(189003)(199004)(81166006)(3846002)(2501003)(966005)(66556008)(66446008)(64756008)(76116006)(53936002)(6116002)(476003)(5660300002)(45080400002)(8936002)(86362001)(66476007)(6436002)(66946007)(6306002)(55016002)(7416002)(316002)(4326008)(99286004)(52536014)(6246003)(81156014)(44832011)(9686003)(7696005)(486006)(76176011)(110136005)(26005)(71190400001)(71200400001)(25786009)(478600001)(8676002)(53546011)(6506007)(256004)(7736002)(2201001)(186003)(2906002)(74316002)(229853002)(66066001)(102836004)(11346002)(33656002)(446003)(305945005)(14454004)(921003)(1121003)(309714004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3945;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: I7KXuiIJZ1KXydk58VpZ5IEmkFOTLXbZGZqiS8CFR7kZQ0pr5vM/PkEz8N3H5m2Bcqht6MP1Lzu7wcVbGH8XzBq1/h4gMDvq3AAvUKgi7/x96SL5jpXOZnqrnb5TY2VOMgi5x6asj+nS+3b/nUO9wS41amyLjovG9NUUGHYzZ/lSO0mlO4pcH/O++hQV2VEGpTvEzGALBS5OFD7xHHw/wZ3ys3uNZv76vQd4y2olfaARIYkLFvXNLQQXWHexMF+zOXE5im2IPgEG4lfTvNEeQ9iBI0vHQ8Rzr+/ULezdDTSVeMFc5+7TYyORTiCy5fpQGHzFkPpHc8YCmyaIGExaKHp9b6dEB/g7SD+pEZMqxdiACypJbzFnnjd3ZaVogw5J9eM7pev+Wtbg+Rw5jqvHVy9rPZD+lCvqkhiXVmiFAcM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8adba28f-3173-4b44-3242-08d7303ac407
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 06:48:45.0657 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VZCn0L15niN6qi2c8L8kbBbMMdGBHcECcXwbWv4YeMnezi8OhiKmEK0Zldz+z28Jmnw0Dzt/qQTgkaUpO2gkOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3945
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_234848_677277_20D0B17A 
X-CRM114-Status: GOOD (  27.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Oleksij

> On 03.09.19 16:03, Anson Huang wrote:
> > i.MX8QXP is an ARMv8 SoC which has a Cortex-M4 system controller
> > inside, the system controller is in charge of controlling power, clock
> > and power key etc..
> >
> > Adds i.MX system controller power key driver support, Linux kernel has
> > to communicate with system controller via MU (message unit) IPC to get
> > power key's status.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V1:
> > 	- remove "wakeup-source" property operation, scu power key uses
> generic scu irq,
> > 	  no need to have this property for device wakeup operation.
> > ---
> >   drivers/input/keyboard/Kconfig         |   7 ++
> >   drivers/input/keyboard/Makefile        |   1 +
> >   drivers/input/keyboard/imx_sc_pwrkey.c | 169
> +++++++++++++++++++++++++++++++++
> >   3 files changed, 177 insertions(+)
> >   create mode 100644 drivers/input/keyboard/imx_sc_pwrkey.c
> >
> > diff --git a/drivers/input/keyboard/Kconfig
> > b/drivers/input/keyboard/Kconfig index 2e6d288..3aaeb9c 100644
> > --- a/drivers/input/keyboard/Kconfig
> > +++ b/drivers/input/keyboard/Kconfig
> > @@ -469,6 +469,13 @@ config KEYBOARD_IMX
> >   	  To compile this driver as a module, choose M here: the
> >   	  module will be called imx_keypad.
> >
> > +config KEYBOARD_IMX_SC_PWRKEY
> > +	tristate "IMX SCU Power Key Driver"
> > +	depends on IMX_SCU
> > +	help
> > +	  This is the system controller powerkey driver for NXP i.MX SoCs with
> > +	  system controller inside.
> 
> The KEY is configurable over devicetree, why is it called PWRKEY? It looks for
> me as generic SCU key handler.

We always use it as power key, NOT a generic key, as it has HW function designed
for power key purpose. 

> 
> >   config KEYBOARD_NEWTON
> >   	tristate "Newton keyboard"
> >   	select SERIO
> > diff --git a/drivers/input/keyboard/Makefile
> > b/drivers/input/keyboard/Makefile index 9510325..9ea5585 100644
> > --- a/drivers/input/keyboard/Makefile
> > +++ b/drivers/input/keyboard/Makefile
> > @@ -29,6 +29,7 @@ obj-$(CONFIG_KEYBOARD_HIL)		+= hil_kbd.o
> >   obj-$(CONFIG_KEYBOARD_HIL_OLD)		+= hilkbd.o
> >   obj-$(CONFIG_KEYBOARD_IPAQ_MICRO)	+= ipaq-micro-keys.o
> >   obj-$(CONFIG_KEYBOARD_IMX)		+= imx_keypad.o
> > +obj-$(CONFIG_KEYBOARD_IMX_SC_PWRKEY)	+= imx_sc_pwrkey.o
> >   obj-$(CONFIG_KEYBOARD_HP6XX)		+= jornada680_kbd.o
> >   obj-$(CONFIG_KEYBOARD_HP7XX)		+= jornada720_kbd.o
> >   obj-$(CONFIG_KEYBOARD_LKKBD)		+= lkkbd.o
> > diff --git a/drivers/input/keyboard/imx_sc_pwrkey.c
> > b/drivers/input/keyboard/imx_sc_pwrkey.c
> > new file mode 100644
> > index 0000000..53aa9a4
> > --- /dev/null
> > +++ b/drivers/input/keyboard/imx_sc_pwrkey.c
> > @@ -0,0 +1,169 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright 2019 NXP.
> > + */
> > +
> > +#include <linux/device.h>
> > +#include <linux/err.h>
> > +#include <linux/firmware/imx/sci.h>
> > +#include <linux/init.h>
> > +#include <linux/input.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/jiffies.h>
> > +#include <linux/kernel.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/of_address.h>
> > +#include <linux/platform_device.h>
> > +
> > +#define DEBOUNCE_TIME	100
> > +#define REPEAT_INTERVAL	60
> > +
> > +#define SC_IRQ_BUTTON		1
> > +#define SC_IRQ_GROUP_WAKE	3
> > +#define IMX_SC_MISC_FUNC_GET_BUTTON_STATUS	18
> > +
> > +struct imx_pwrkey_drv_data {
> > +	int keycode;
> > +	bool keystate;  /* 1: pressed, 0: release */
> > +	bool delay_check;
> > +	struct delayed_work check_work;
> > +	struct input_dev *input;
> > +};
> > +
> > +struct imx_sc_msg_pwrkey {
> > +	struct imx_sc_rpc_msg hdr;
> > +	u8 state;
> > +};
> > +static struct imx_pwrkey_drv_data *pdata;
> 
> Why is it global struct? It seems to be flexible configurable over devicetree.
> So I would assume it should be able to handle more then one button. Please
> remove global variables, make it allocatable per OF node.

There is ONLY one button available for SC key, but yes, I think I can make the structure
private and get all necessary data from the structure using container_of.

> 
> Please use different name "pdata" is usually used as platform data. Please,
> use "priv".

OK.

> 
> > +static struct imx_sc_ipc *pwrkey_ipc_handle;
> 
> same as before, no global variables.

Will move it into private platform data structure.

> 
> > +
> > +static int imx_sc_pwrkey_notify(struct notifier_block *nb,
> > +				unsigned long event, void *group) {
> > +	if ((event & SC_IRQ_BUTTON) && (*(u8 *)group ==
> SC_IRQ_GROUP_WAKE)
> > +	    && !pdata->delay_check) {
> > +		pdata->delay_check = 1;
> > +		schedule_delayed_work(&pdata->check_work,
> > +				      msecs_to_jiffies(REPEAT_INTERVAL));
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static void imx_sc_check_for_events(struct work_struct *work) {
> > +	struct input_dev *input = pdata->input;
> > +	struct imx_sc_msg_pwrkey msg;
> > +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > +	bool state;
> > +
> > +	hdr->ver = IMX_SC_RPC_VERSION;
> > +	hdr->svc = IMX_SC_RPC_SVC_MISC;
> > +	hdr->func = IMX_SC_MISC_FUNC_GET_BUTTON_STATUS;
> > +	hdr->size = 1;
> > +
> > +	/*
> > +	 * Current SCU firmware does NOT have return value for
> > +	 * this API, that means it is always successful.
> > +	 */
> 
> It is not true for the kernel part:
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Felixir.
> bootlin.com%2Flinux%2Flatest%2Fsource%2Fdrivers%2Ffirmware%2Fimx%2F
> imx-
> scu.c%23L157&amp;data=02%7C01%7Canson.huang%40nxp.com%7C7a5ed3
> ef3b2541e61be808d7303810a9%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C
> 0%7C0%7C637030889669489141&amp;sdata=d3uw6x6WCPeavJu3QYf9o9cxx
> Rx4mJar04fQFLF9EhE%3D&amp;reserved=0
> 
> imx_scu_call_rpc() may fail in different ways and provide proper error value.
> Please use it.

There are about 3 APIs are special, this API is one of them, this API has no return value
from SCU FW API, but it has response data from it, so that means if we set the response
to false, the stack will be free and mailbox will have NULL pointer issue when response 
data passed from SCU FW. If we set the response to true, as the SCU FW has no return value,
the return value will be the msg->func which will be already failed, that is why we have to skip
the return value check. This is one restriction/bug of SCU FW, we will notify SCU FW owner to
fix/improve.


> 
> > +	imx_scu_call_rpc(pwrkey_ipc_handle, &msg, true); > +	state =
> msg.state;
> 
> the conversation u8 to bool should be done here.

OK.

> 
> > +
> > +	if (!state && !pdata->keystate)
> > +		state = true;
> > +
> > +	if (state ^ pdata->keystate) {
> > +		pm_wakeup_event(input->dev.parent, 0);
> > +		pdata->keystate = !!state;
> 
> 		the state is already bool. Why do you need extra
> conversations?

Will remove it.

> 
> > +		input_event(input, EV_KEY, pdata->keycode, !!state);
> 
> same here.

Will remove it.

> 
> > +		input_sync(input);
> > +		if (!state)
> > +			pdata->delay_check = 0;
> > +		pm_relax(pdata->input->dev.parent);
> > +	}
> > +
> > +	if (state)
> > +		schedule_delayed_work(&pdata->check_work,
> > +				      msecs_to_jiffies(DEBOUNCE_TIME)); }
> > +
> > +static struct notifier_block imx_sc_pwrkey_notifier = {
> > +	.notifier_call = imx_sc_pwrkey_notify, };
> > +
> > +static int imx_sc_pwrkey_probe(struct platform_device *pdev) {
> > +	struct device_node *np = pdev->dev.of_node;
> > +	struct input_dev *input;
> > +	int ret;
> > +
> > +	ret = imx_scu_get_handle(&pwrkey_ipc_handle);
> > +	if (ret)
> > +		return ret;
> > +
> > +	pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
> > +	if (!pdata)
> > +		return -ENOMEM;
> > +
> > +	if (of_property_read_u32(np, "linux,keycode", &pdata->keycode) > +
> 		pdata->keycode = KEY_POWER;
> 
> According binding documentation, linux,keycode is requered parameter, in
> this case you should fail if it is not set.

Agreed, will add it in V3.

Thanks,
Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
