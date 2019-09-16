Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 522C3B3378
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 04:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8mZ+ZblhldJvlaK2Q7tRizU0LenodJ61E+c3P92vYwA=; b=VpPAGHla+PRIVp
	V7Qq75EXd2pArhdoVh99V3Qdp4+xAdfCJxQmX9ikoT5qR0EHUpQycVkNLqsLjc5BJjaORpXc9k6Gf
	2aprnJ1HSWe0qLhSfZ8lEx/qSzafNfqJkR8Efdbq7mN/Rd8YG15BYs2mcCnZdKiHcsoW1JkBhvy/Q
	7MS1vDCJpMJd7pR/VAlu3UOMK+9GrDInspwEi5H02hoqr0HxokfHmxAPwMFAqKqh47TQrIptq3eYk
	NRie4a5VPB9zX+27R/hYY2GA3jTzP+Q/36vKpXQls64O0biuatLKiN5Cj5Iwybujq+2COVuMz8plc
	hCPvtFz6PnqYDvPyem2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9h0C-0001JC-Fw; Mon, 16 Sep 2019 02:44:32 +0000
Received: from mail-eopbgr130078.outbound.protection.outlook.com
 ([40.107.13.78] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9gzz-0001Il-CW
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 02:44:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kZI4HAVFhsC4Vv2T8GsF0iUNliYTMr2MRx0QiaaW1U3tQtDbUPcShWPQrsndSB7bhvR6c8QCuWNFkljoUce4xpg2cwiFDmNJK5HAYFu101iHt65jj+WSOnxgOF7cWRcqlzZ2qP6cs+X/GXeKJ0Jmw+3xZIP+5hHWOpawZnGbUGk1zxhSbI5+wDikw2pzgKPT+7SwNbfPmgRixQ2w1j64VJUnnFi+dB1WCSEHEhwKFGOxQYaPSuQBr4RwXLN8Xk6vkYCFjxm04rx5yIAzhMo87TpROGkT0IccIs6q6n8viZODroF+nBRK0nDNWwxlmbOdL1pW0mmta7MKGoeP/v6GTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IO6lkenfb0Epl3Rf7LdU4Qp1bnCOYWCo5KS8nFzAN3U=;
 b=EU5NgmuJIqyNmMdKeA/AUNr1CajN0N3GalKkdDlrXLO4d74QEa7xp6QliFUOgPiTylIcarRBjSAKdnZOpgMWrYrAAFXvlwJhoZZ04/SbOBE5ha6Gqi+KeMtB/fv8Q6fRktIVmqJZ/jrL4PM6v/JMw2WD2MTkrVDalgki34U+zugjybDIFSHPHBTrzIYiSIPh2SYEBianYhPhOE9Okyqk1WP1rpekrgrhk8xTG2zQXQ2vcHdtQI63ZgaseqVGqfDQZcS6d2mqxW7CtfJhzNO/eEHFjYBY4zcL7DAPVo8gdGdNaIp3xi6qZWUXCWPY0EOxNSgwD2Uml/fOaAgbYF6Y9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IO6lkenfb0Epl3Rf7LdU4Qp1bnCOYWCo5KS8nFzAN3U=;
 b=bjLbmJZi8uB0iPlrTCbPpZaWved9XY3y+xPF3gvKBpRIafOaCqmCDMzwTX0f88MzT0Q8gJVSrr1A7ufjmfNxV49pg9E4bFN/nACez4w1OGHapV0wy/DsjmnlaiWj52tO58TH0vXQ0f1d+zmk2bAm9RmT5iNhZ6D7YMElNiTwFEA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3692.eurprd04.prod.outlook.com (52.134.65.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.23; Mon, 16 Sep 2019 02:44:06 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2263.023; Mon, 16 Sep 2019
 02:44:06 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: RE: [PATCH V3 2/5] input: keyboard: imx_sc: Add i.MX system
 controller key support
Thread-Topic: [PATCH V3 2/5] input: keyboard: imx_sc: Add i.MX system
 controller key support
Thread-Index: AQHVYjtHNMbROEgxRkyLuCpsGlrKMacoiy6AgAUEV9A=
Date: Mon, 16 Sep 2019 02:44:05 +0000
Message-ID: <DB3PR0402MB391600DD2C5D0D23BD6B9AAFF58C0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1567546600-21566-1-git-send-email-Anson.Huang@nxp.com>
 <1567546600-21566-2-git-send-email-Anson.Huang@nxp.com>
 <20190912202239.GB636@penguin>
In-Reply-To: <20190912202239.GB636@penguin>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d33bad9a-a130-4df0-025c-08d73a4fbdf7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3692; 
x-ms-traffictypediagnostic: DB3PR0402MB3692:|DB3PR0402MB3692:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3692C5C447759F57725E2494F58C0@DB3PR0402MB3692.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(376002)(346002)(396003)(136003)(189003)(199004)(52536014)(55016002)(478600001)(6436002)(14454004)(25786009)(99286004)(4326008)(5660300002)(71200400001)(71190400001)(64756008)(66556008)(7736002)(66476007)(66946007)(76116006)(9686003)(305945005)(2906002)(256004)(53936002)(6246003)(3846002)(6116002)(74316002)(66446008)(6916009)(26005)(476003)(102836004)(44832011)(486006)(54906003)(86362001)(6506007)(446003)(11346002)(8936002)(186003)(33656002)(229853002)(7696005)(316002)(81166006)(81156014)(8676002)(66066001)(76176011)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3692;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0uD2M9bqjdD77W8PynqMnKD0Ncnyl49hdcT93sF54I3YADhthRafGnvL2dY0a1q0Ij1g0Cw0E2JDKf9kMpPF16PYiUNyVAHidzTfzqfx3ZDNQZcHYosL/B659IVsH1Cx+S9BcDhY8tnpl4n6w9bzCM8NpFmdjMd6RnogVjzelsOOqXeZSJfEkiSat3zWEV8wq2iD0EO7aMpCAelb8ze5wj+MrQ/cGDWPJzCJbwAsS/3B6Zr+A2stU8kg2WhJhA32QklbZHOsNDkzDL1/4+OGOaSwCAQY696c/2pXbQ6ttS65s+lRNoD/C7klYKfvE9kWfDywGLt4qtwmUhMXvvHaM0JCxwovuI0dLce/7Sb9toLmE4tVnjuBOdEKQWGaLlTd6ZMZg5X7M1+B04o4MYJYF85iQKbPywfq2jOjpmZqJ4o=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d33bad9a-a130-4df0-025c-08d73a4fbdf7
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 02:44:05.8334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: byU96D9hMH7MLUpxohxQNsRiNcVEFW1DXQqWTr46pO3vcMKpKvVDj1xWGBSUZ6pkT1gsydiHcy+sB6KL0NO/xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3692
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_194419_609041_4B09BF6D 
X-CRM114-Status: GOOD (  27.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "ronald@innovation.ch" <ronald@innovation.ch>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Dmitry

> On Tue, Sep 03, 2019 at 05:36:37PM -0400, Anson Huang wrote:
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
> > Changes since V2:
> > 	- use private platform data instead of global data;
> > 	- use "key" instead of "pwrkey";
> > 	- fix some data format.
> > ---
> >  drivers/input/keyboard/Kconfig      |   7 ++
> >  drivers/input/keyboard/Makefile     |   1 +
> >  drivers/input/keyboard/imx_sc_key.c | 178
> > ++++++++++++++++++++++++++++++++++++
> >  3 files changed, 186 insertions(+)
> >  create mode 100644 drivers/input/keyboard/imx_sc_key.c
> >
> > diff --git a/drivers/input/keyboard/Kconfig
> > b/drivers/input/keyboard/Kconfig index 2e6d288..607acf2 100644
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
> > index 0000000..e69479b
> > --- /dev/null
> > +++ b/drivers/input/keyboard/imx_sc_key.c
> > @@ -0,0 +1,178 @@
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
> > +				      msecs_to_jiffies(REPEAT_INTERVAL));
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
> > +
> > +	if (state ^ priv->keystate) {
> > +		pm_wakeup_event(input->dev.parent, 0);
> > +		priv->keystate = state;
> > +		input_event(input, EV_KEY, priv->keycode, state);
> > +		input_sync(input);
> > +		if (!state)
> > +			priv->delay_check = 0;
> > +		pm_relax(priv->input->dev.parent);
> > +	}
> > +
> > +	if (state)
> > +		schedule_delayed_work(&priv->check_work,
> > +				      msecs_to_jiffies(DEBOUNCE_TIME));
> 
> Hmm, I am not quite sure follow the code. Judging by the name, you are
> trying to handle debounce, but if I understand this correctly you already sent
> out the press event for now.
> 
> Could you please explain what you are trying to do here.

The name is kind of confused, the "DEBOUNCE_TIME" here should be "REPEAT_INTERVAL"
actually, the  "DEBOUNCE_TIME" should be used in the irq hanlder instead.	
As the SCU ONLY send out interrupt when the key is pressed, so here we have to repeat
the delay work to loop check the button release event, the press event is sent out once the
key state is valid, and then start to check until key is released.

I will switch the "DEBOUNCE_TIME" and "REPEAT_INTERVAL" in V4.

> 
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
> > +	}
> > +
> > +	return ret;
> > +}
> > +
> > +static const struct of_device_id imx_sc_key_ids[] = {
> > +	{ .compatible = "fsl,imx-sc-key" },
> > +	{ /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, imx_sc_key_ids);
> > +
> > +static struct platform_driver imx_sc_key_driver = {
> > +	.driver = {
> > +		.name = "imx-sc-key",
> > +		.of_match_table = imx_sc_key_ids,
> > +	},
> > +	.probe = imx_sc_key_probe,
> 
> You need a remove() handler to disable the itq group, remove the notifier,
> cancel the delayed work, etc.

I will add it in V4.

Thanks,
Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
