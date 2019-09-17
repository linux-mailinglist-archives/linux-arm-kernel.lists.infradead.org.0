Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C214B4594
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 04:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqNx8b6bb96IEa6sBKyaKvugmRYuNFVbLdVt31ggSeQ=; b=WW0YhLuHkJjhhl
	29XY7t1NszOF5tVjNhHu92A/AN+vHGdszBst/9bhCyNUrtdySkTx68rq9oKBcz7EhB8i7J8rz9YG8
	h7dvX1Ec7UC1c7kC8ESaaEmnQnU2OGaqUr1+bqKLqg+jDTIJPfUPSj6ZME5VlI3rRg4x8TAOVkyfG
	si0+MDOUC5v/qIvqE/R7lxEiredKarvXrVrXvHk2XV+s9WFqa8zrf3jzRq29t2aLGo4iqEIileKYH
	uDvxHFNFlSR+nbJ1355jUNzV/brb6K8QeFLiZRl82LnSSsWlHjCJS3HjE6fghq75csTwQoPl5mpKm
	JLQROkLydlSMif5ohKWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA3S5-0002YJ-Jw; Tue, 17 Sep 2019 02:42:49 +0000
Received: from mail-db3eur04on060e.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::60e]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA3Rq-0002Xt-NQ
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 02:42:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VeBjNlqLlgYEIH+rcgxxynYeMM9b9TojXZUcbCJCrRfvJqkV8R50tCoWm8UggEIRdHzwdBjGQbKKKDNjLIwiRJF18gwoo5MVE4mi9UAd3XuHfWlc6Uv7VepPy730/vKiRUDfXDHjaXHhxKvzOzOFH7Bgh40T1dzc1UbiguxzKUjm8sjMTRPBgJiujvW7FC0tVZ0NIvWFqJ6OPO0Y2IvtVj5CKFYAJT+b7oBcl+E61HBdFywxa2iNSL10WpYpbJryCKj3UytEY6n+B03ptVMM1H8CSsTjgHSn2eVNEGRqYIYdiPVKRAmQtD05PFS3Z9ttimiB+m+ypfGbGbg1tAe6rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=baIm9h3PDUpUsaSHjX0W6yJEysEisCnEL0oKdj7EK9o=;
 b=eOMKQHzc527Ef6QQing9B4dMRp0VZLieOMfHFrqc23WRRAGlbldGi0jWw/nlLiL6Wi2fXqfUYf4qbPcj5+hFeWkhbl3129fS6M1kCb/dgJTB5u1wQrOpGDUJWujC1f0h6sA8cUOExHCbg8rjt3pIyjRdlUJwOb8cI606Udv0vEHbNsE9UnueSQjXcJngl4OOqvTFxkApzZsNJtgLgYVkvgj7RrDA+XVZ/9odgS50xQ3peHMYnd3pqxDvNTEmB301lrhnoDiwTPN1aiLxMFhrCQ5ZhHZPEJtFCprtXNvzkzoLhCYdiDJt+FDaGn6g9hScd9AQ4lx52z5MSHYvQwZW+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=baIm9h3PDUpUsaSHjX0W6yJEysEisCnEL0oKdj7EK9o=;
 b=mAYZXEPEYnUS45Gs0Ctx/WwzSFFhcDE4siDtx2Qtx/jSMQ/cc4wnx/BvnU3+eqdHRDwPEj5vgjSuHav42wfMayT1ItLgLirnVe/HHE/gpLYQ4FpclNPTqe7mq8D1KwzVfC5OaRghP/8AMJdtqZL2Cx4VwdGSzKzf+JCAx9CqUxM=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3946.eurprd04.prod.outlook.com (52.134.72.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.22; Tue, 17 Sep 2019 02:42:30 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2263.023; Tue, 17 Sep 2019
 02:42:30 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: RE: [PATCH V4 2/5] input: keyboard: imx_sc: Add i.MX system
 controller key support
Thread-Topic: [PATCH V4 2/5] input: keyboard: imx_sc: Add i.MX system
 controller key support
Thread-Index: AQHVbDoTG9IptYOIlUSe8in/1bTkN6cu+20AgAAdosA=
Date: Tue, 17 Sep 2019 02:42:30 +0000
Message-ID: <DB3PR0402MB3916859326C76BC9BC1F781CF58F0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1568602373-14164-1-git-send-email-Anson.Huang@nxp.com>
 <1568602373-14164-2-git-send-email-Anson.Huang@nxp.com>
 <20190916235330.GI237523@dtor-ws>
In-Reply-To: <20190916235330.GI237523@dtor-ws>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cea7282a-923e-4e25-619c-08d73b18afac
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3946; 
x-ms-traffictypediagnostic: DB3PR0402MB3946:|DB3PR0402MB3946:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3946A251CCA343267B1AD228F58F0@DB3PR0402MB3946.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1303;
x-forefront-prvs: 01630974C0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(136003)(39860400002)(346002)(199004)(189003)(43544003)(44832011)(3846002)(478600001)(8676002)(81156014)(5660300002)(7416002)(99286004)(81166006)(229853002)(86362001)(7696005)(102836004)(6916009)(26005)(186003)(74316002)(6506007)(6246003)(6436002)(9686003)(55016002)(66476007)(64756008)(66946007)(476003)(6116002)(4326008)(446003)(11346002)(66066001)(25786009)(486006)(8936002)(76176011)(76116006)(52536014)(2906002)(66446008)(33656002)(14454004)(316002)(305945005)(7736002)(54906003)(71190400001)(71200400001)(14444005)(66556008)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3946;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RfuUy/kP/OLX6/QLTztxFD91/jW5cdOcL7SnmTtJkb88cWRabiR51Y8YmdX8FrtR+lQCkjkdlo2ADzpv3VVeITd/AdO7Kai3GDjutIE/WKkHRWdc9tzJxUdq3n1f8tJBMUGkv1wty9909bfWhMfs2v8WW3H4s8OP0wDZ2eDXGRzM8DGYMQMuRbLTr0UvEuC6heTclr2nsxDUBczScB1ULzgG2Rwy7rzb2QYPw3hODgqL4fvptBdnA5AAaVRs7ioeFxmRiIDqRmK6d47vpq+2OHgBRb1V1Rj4lnLhGzr+LMpJQk+Uuxp/dR1/1y5LUiixp8i1XmW+O4GgL6dr0KPmqjFZzPwGM5j2UZfoArwHe6zgGBAm4knrYUZLEh5nHKbPT5VCBhfoyGFGAIHD0cnvB99EOz+6ca0M72uozRU8aYc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cea7282a-923e-4e25-619c-08d73b18afac
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 02:42:30.7099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YG1Pk5opLotdtfIQlgmihwQgWjSt0mGKTimQnK08dTgxNjiS3SA3HM7xk6rFC59sAOQYGzo/mY24/pbJJP2gSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3946
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_194234_906756_D3132794 
X-CRM114-Status: GOOD (  25.46  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:60e listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Peng Fan <peng.fan@nxp.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 "cw00.choi@samsung.com" <cw00.choi@samsung.com>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "ronald@innovation.ch" <ronald@innovation.ch>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Dmitry

> On Mon, Sep 16, 2019 at 10:52:50AM +0800, Anson Huang wrote:
> > i.MX8QXP is an ARMv8 SoC which has a Cortex-M4 system controller
> > inside, the system controller is in charge of controlling power, clock
> > and scu key etc..
> >
> > Adds i.MX system controller key driver support, Linux kernel has to
> > communicate with system controller via MU (message unit) IPC to get
> > scu key's status.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V3:
> > 	- switch the debounce and repeat interval time for delay work
> schdule;
> > 	- add .remove to handle group irq and notify etc..
> > ---
> >  drivers/input/keyboard/Kconfig      |   7 ++
> >  drivers/input/keyboard/Makefile     |   1 +
> >  drivers/input/keyboard/imx_sc_key.c | 190
> > ++++++++++++++++++++++++++++++++++++
> >  3 files changed, 198 insertions(+)
> >  create mode 100644 drivers/input/keyboard/imx_sc_key.c
> >
> > diff --git a/drivers/input/keyboard/Kconfig
> > b/drivers/input/keyboard/Kconfig index 8911bc2..00f8428 100644
> > --- a/drivers/input/keyboard/Kconfig
> > +++ b/drivers/input/keyboard/Kconfig
> > @@ -469,6 +469,13 @@ config KEYBOARD_IMX
> >  	  To compile this driver as a module, choose M here: the
> >  	  module will be called imx_keypad.
> >
> > +config KEYBOARD_IMX_SC_KEY
> > +	tristate "IMX SCU Key Driver"
> > +	depends on IMX_SCU
> > +	help
> > +	  This is the system controller key driver for NXP i.MX SoCs with
> > +	  system controller inside.
> > +
> >  config KEYBOARD_NEWTON
> >  	tristate "Newton keyboard"
> >  	select SERIO
> > diff --git a/drivers/input/keyboard/Makefile
> > b/drivers/input/keyboard/Makefile index 9510325..f5b1752 100644
> > --- a/drivers/input/keyboard/Makefile
> > +++ b/drivers/input/keyboard/Makefile
> > @@ -29,6 +29,7 @@ obj-$(CONFIG_KEYBOARD_HIL)		+= hil_kbd.o
> >  obj-$(CONFIG_KEYBOARD_HIL_OLD)		+= hilkbd.o
> >  obj-$(CONFIG_KEYBOARD_IPAQ_MICRO)	+= ipaq-micro-keys.o
> >  obj-$(CONFIG_KEYBOARD_IMX)		+= imx_keypad.o
> > +obj-$(CONFIG_KEYBOARD_IMX_SC_KEY)	+= imx_sc_key.o
> >  obj-$(CONFIG_KEYBOARD_HP6XX)		+= jornada680_kbd.o
> >  obj-$(CONFIG_KEYBOARD_HP7XX)		+= jornada720_kbd.o
> >  obj-$(CONFIG_KEYBOARD_LKKBD)		+= lkkbd.o
> > diff --git a/drivers/input/keyboard/imx_sc_key.c
> > b/drivers/input/keyboard/imx_sc_key.c
> > new file mode 100644
> > index 0000000..59c68fa
> > --- /dev/null
> > +++ b/drivers/input/keyboard/imx_sc_key.c
> > @@ -0,0 +1,190 @@
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
> > +struct imx_key_drv_data {
> > +	int keycode;
> > +	bool keystate;  /* 1: pressed, 0: release */
> > +	bool delay_check;
> > +	struct delayed_work check_work;
> > +	struct input_dev *input;
> > +	struct imx_sc_ipc *key_ipc_handle;
> > +	struct notifier_block key_notifier;
> > +};
> > +
> > +struct imx_sc_msg_key {
> > +	struct imx_sc_rpc_msg hdr;
> > +	u8 state;
> > +};
> > +
> > +static int imx_sc_key_notify(struct notifier_block *nb,
> > +			     unsigned long event, void *group) {
> > +	struct imx_key_drv_data *priv =
> > +				 container_of(nb,
> > +					      struct imx_key_drv_data,
> > +					      key_notifier);
> > +
> > +	if ((event & SC_IRQ_BUTTON) && (*(u8 *)group ==
> SC_IRQ_GROUP_WAKE)
> > +	    && !priv->delay_check) {
> > +		priv->delay_check = 1;
> > +		schedule_delayed_work(&priv->check_work,
> > +				      msecs_to_jiffies(DEBOUNCE_TIME));
> 
> If I am reading this right, you are trying to avoid scheduling the work again if
> it is already scheduled. You do not need to do that, as
> schedule_delayed_work() will take care of that (if you want to make sure the
> work is re-scheduled with updated expiration, you need to use
> mod_delayed_work).

The original code here is to skip the event of button release, try to ONLY handle the press interrupt, the release
event is handled by busy loop check, but I double check the SCU FW's behavior, it does NOT send out interrupt
for button release event at all, so it is NOT needed any more, I will remove the priv->delay_check completely in this driver.

> 
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static void imx_sc_check_for_events(struct work_struct *work) {
> > +	struct imx_key_drv_data *priv =
> > +				 container_of(work,
> > +					      struct imx_key_drv_data,
> > +					      check_work.work);
> > +	struct input_dev *input = priv->input;
> > +	struct imx_sc_msg_key msg;
> > +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > +	bool state;
> > +	int ret;
> > +
> > +	hdr->ver = IMX_SC_RPC_VERSION;
> > +	hdr->svc = IMX_SC_RPC_SVC_MISC;
> > +	hdr->func = IMX_SC_MISC_FUNC_GET_BUTTON_STATUS;
> > +	hdr->size = 1;
> > +
> > +	ret = imx_scu_call_rpc(priv->key_ipc_handle, &msg, true);
> > +	if (ret) {
> > +		dev_err(&input->dev, "read imx sc key failed, ret %d\n", ret);
> > +		return;
> > +	}
> > +
> > +	state = (bool)msg.state;
> > +
> > +	if (!state && !priv->keystate)
> > +		state = true;
> 
> This needs an explanation please.

This is to handle the quick press of button, e.g., when button is pressed and released very quickly,
when the delay work is scheduled, the button state read from SCU FW is actually a release state (0),
the press state is (1), so the quick press/release will be ignored.

However, after double check and test, I think this should be handled by debounce time, if the button is pressed/release
very quickly, the event should be ignored, I will remove it and reduce the debounce time to 30mS, previous 100mS
is too long, using 30mS as debounce time, I did NOT see similar issue no matter how quick I press/release the button.

> 
> > +
> > +	if (state ^ priv->keystate) {
> > +		pm_wakeup_event(input->dev.parent, 0);
> 
> I'd expect this happening in imx_sc_key_notify() so that the device would
> have a change to run this work.

Agreed, will move it to the imx_sc_key_notify().

> 
> > +		priv->keystate = state;
> > +		input_event(input, EV_KEY, priv->keycode, state);
> > +		input_sync(input);
> > +		if (!state)
> > +			priv->delay_check = 0;
> > +		pm_relax(priv->input->dev.parent);
> 
> Are you sure you want to call pm_relax() unconditionally, and not when state
> == false (i.e. button released)?

Agreed, will make sure ONLY call it when button is released which indicates the event
is finished.

> 
> > +	}
> > +
> > +	if (state)
> > +		schedule_delayed_work(&priv->check_work,
> > +				      msecs_to_jiffies(REPEAT_INTERVAL));
> > +}
> > +
> > +static int imx_sc_key_probe(struct platform_device *pdev) {
> > +	struct device_node *np = pdev->dev.of_node;
> > +	static struct imx_key_drv_data *priv;
> > +	struct input_dev *input;
> > +	int ret;
> > +
> > +	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
> > +	if (!priv)
> > +		return -ENOMEM;
> > +
> > +	ret = imx_scu_get_handle(&priv->key_ipc_handle);
> > +	if (ret)
> > +		return ret;
> > +
> > +	if (of_property_read_u32(np, "linux,keycode", &priv->keycode)) {
> > +		dev_err(&pdev->dev, "missing KEY_POWER in DT\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	INIT_DELAYED_WORK(&priv->check_work,
> imx_sc_check_for_events);
> > +
> > +	input = devm_input_allocate_device(&pdev->dev);
> > +	if (!input) {
> > +		dev_err(&pdev->dev, "failed to allocate the input device\n");
> > +		return -ENOMEM;
> > +	}
> > +
> > +	input->name = pdev->name;
> > +	input->phys = "imx-sc-key/input0";
> > +	input->id.bustype = BUS_HOST;
> > +
> > +	input_set_capability(input, EV_KEY, priv->keycode);
> > +
> > +	ret = input_register_device(input);
> > +	if (ret) {
> 
> Could you please rename this (and elsewhere) from 'ret' to 'error'?

OK.

> 
> > +		dev_err(&pdev->dev, "failed to register input device\n");
> > +		return ret;
> > +	}
> > +
> > +	priv->input = input;
> > +	platform_set_drvdata(pdev, priv);
> > +
> > +	ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WAKE,
> SC_IRQ_BUTTON, true);
> > +	if (ret) {
> > +		dev_warn(&pdev->dev, "enable scu group irq failed\n");
> > +		return ret;
> > +	}
> > +
> > +	priv->key_notifier.notifier_call = imx_sc_key_notify;
> > +	ret = imx_scu_irq_register_notifier(&priv->key_notifier);
> > +	if (ret) {
> > +		imx_scu_irq_group_enable(SC_IRQ_GROUP_WAKE,
> SC_IRQ_BUTTON, false);
> > +		dev_warn(&pdev->dev, "register scu notifier failed\n");
> 
> 		return error;
> > +	}
> > +
> > +	return ret;
> 
> 	return 0;

OK.

Thanks,
Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
