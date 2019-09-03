Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 500CFA629A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 09:35:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LkYY7J+lgCKsDk5o1BwjJV2QxwFngB46wYj1pnpkuoc=; b=BtsAheFVkFi87d
	iPyQNYNQHMmCTdf4GZhCRe7OoIvkfEvkNaWkpr9zvLtkTOOrj6UIz5ngHwA2ddS4ekystcDQV5qsh
	lm25bP55ot3XmSV455Hs+UhzHX+YiXLlowAXHCuDTxAeat3xDiLqdYe2Lhn9pOVNE6YhjU0pNeXpn
	GhxeFLgn63joyc4yT2bAmftumfIOb2tJt1Ea7IKRr+v27z0Zr36kwcPM4G0u0QKibE0te2VqeuCgv
	CyQB8YA2t6HtSlnkUwH1Jc5TV6sim/vwsrLsPyyDOuoIqOGxMeLuUgqmz96cEyU+drYUhUubIxN/r
	RzJPMHZDNc9qZSbgzzZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i53Lb-0001YT-H8; Tue, 03 Sep 2019 07:35:27 +0000
Received: from mail-eopbgr60077.outbound.protection.outlook.com ([40.107.6.77]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i53LL-0001Xw-A6
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 07:35:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n4w2hIHODrLD5b+RbrrxeOI9OKJwXTUIv3IoZLvhdAN64lk3O4v57467+BYRv1nu/FMwxxuix+7wZ3G2iazHUufD2YQNZYKqCevt23ZhrkTL6S10rRIvN92x132xyt/nlFspJ2RW4DYP7GJPN5cW4psgYErrcysk7QpLKhm+dJ2Xo1P3bX2+2sd2c0vhnjDs+WytpLH6gVBfIjSWWz/eM8g7Z/KTeGbTIVnskNu5Fcph650gz/dXjfwSP7NZeb1Bdw5z36bXiMtv5N5m8lM3G4Pc2ybKhO1ug3zsOF/PRx4hrWCRSx7axKFMoBJa9WmvSdBzE/raIRAVUFGkoVFLsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YrGq/an+p7FYN3YZA3rKZsfAmH60otLnwdUC0Y/TIjE=;
 b=bMZIbGeJheUnQJZziJmENGWyTOYDJ3zVNT8DuOOatXSX2InJKU3oHnN2Oqe7M+Q0tvpjImEmrcZQ5J8FaJZhwWSDFO7ldTgKftoXRUjqIJ3o8Y6oc1pxbrkQMdmgexGNElnscuQgUqU/z8x3KxKOchULQaJPMdnBjlSbfVCCu4wCdNs97nxfjOuBMZFvvR0Kp2asZGeOX0InHIBwHvhBgX26sNxWZFkhzui4jct6V3LoTU8TJ8Ni9bpV3XIkEfTKyWIKV6HQ8OAaxLU+zKTuksARWX87B8BmFBTn7VdsnXRVF3E31ZjQwbA07uLyvHfcYufH9UZ/AuternAFBS2BOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YrGq/an+p7FYN3YZA3rKZsfAmH60otLnwdUC0Y/TIjE=;
 b=Y9Pd0Qir8e2xh43YVLSI7JAMQ8ABS86n/yMayg1WLbLhNkZJambiLsA5Mq5zkxpGo8mOch95+UtT6PVqkv+iwbuh05sbXJMm33Dp6lfLHcCUzbdazNO+qXOxBhVgcEp+koCPWFn8j23dEccygd8gcSR5DHm66UcJ6kJ24ugZlWI=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3818.eurprd04.prod.outlook.com (52.134.71.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Tue, 3 Sep 2019 07:35:06 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2199.021; Tue, 3 Sep 2019
 07:35:06 +0000
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
Thread-Index: AQHVYfwAkBJd0uw8O0iWCkl8q7ZXAqcZfd4AgAACgQCAAA4OAIAAALzA
Date: Tue, 3 Sep 2019 07:35:06 +0000
Message-ID: <DB3PR0402MB3916FB4618F86DD891013FEEF5B90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
 <1567519424-32271-2-git-send-email-Anson.Huang@nxp.com>
 <6d8dd5df-02da-b4cd-e61d-a4a15d0bf0c8@pengutronix.de>
 <DB3PR0402MB391602C6B425DD7EBFB9AF1DF5B90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <dbe0ba0a-29bc-ee96-541d-244b3dbf0b81@pengutronix.de>
In-Reply-To: <dbe0ba0a-29bc-ee96-541d-244b3dbf0b81@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6453d263-b90a-473b-30a2-08d730413dfa
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3818; 
x-ms-traffictypediagnostic: DB3PR0402MB3818:|DB3PR0402MB3818:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38187DA710928822C15A7B96F5B90@DB3PR0402MB3818.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(39860400002)(366004)(396003)(189003)(199004)(66066001)(76176011)(52536014)(6506007)(53546011)(26005)(9686003)(71190400001)(66446008)(7696005)(64756008)(66556008)(6116002)(3846002)(55016002)(74316002)(66476007)(102836004)(6306002)(229853002)(71200400001)(6246003)(7416002)(2501003)(6436002)(5660300002)(53936002)(186003)(99286004)(8676002)(110136005)(316002)(11346002)(446003)(76116006)(81156014)(86362001)(81166006)(4326008)(25786009)(476003)(2201001)(486006)(8936002)(66946007)(44832011)(966005)(478600001)(2906002)(45080400002)(305945005)(14454004)(7736002)(33656002)(256004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3818;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4jj9eQsaPj4SvyYRP34DTLymPycHdwgw5Cqz7pK8TUd60vTa0z6TEoLTS8FBA8ZVNvrf1Ag9hngC3osw7TzkbDPTlL1kEQgHlTtpI/5tj3jJs8aa4SCMvcrZC4LJKckt/j4Z+xPEnsdhdGvMJScLp/B89FrttN+WbeABBSU4VHcM0TwUwOUm3xMhQHvFTwYV6sgoXG/E73YwHfSpSowqy9OsMbHe60nPCG2YA0tKV5Q9mDcveu/DNI1vIqZbsaFoqhyl6Eu8tqFidBQ859ihXij7ajT02xK0gzXWLQBYsBrxFAo2K1mz81Ts5Ya6CnSmh/3g1PozLBck2SDE2e+KyWd1h3g3kq8ZVqNYTR92bAYuTlUPTYar+TxnspjCThA6ouhkbsqaZPdoJtZi1fE5QnWXHtFsvbUcskni837UBT8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6453d263-b90a-473b-30a2-08d730413dfa
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 07:35:06.5439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wiLAoU2fjLoNYQ8iO05K3JJjTJuC0O5GJ57dHoYb1IS+SZCkMRXpVMIxikClFiz7kR4sDXIFLR6Ifs0vQu/n/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3818
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_003511_628187_00654DCF 
X-CRM114-Status: GOOD (  24.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.77 listed in list.dnswl.org]
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

> On 03.09.19 08:48, Anson Huang wrote:
> > Hi, Oleksij
> >
> >> On 03.09.19 16:03, Anson Huang wrote:
> >>> i.MX8QXP is an ARMv8 SoC which has a Cortex-M4 system controller
> >>> inside, the system controller is in charge of controlling power,
> >>> clock and power key etc..
> >>>
> >>> Adds i.MX system controller power key driver support, Linux kernel
> >>> has to communicate with system controller via MU (message unit) IPC
> >>> to get power key's status.
> >>>
> >>> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> >>> ---
> >>> Changes since V1:
> >>> 	- remove "wakeup-source" property operation, scu power key uses
> >> generic scu irq,
> >>> 	  no need to have this property for device wakeup operation.
> >>> ---
> >>>    drivers/input/keyboard/Kconfig         |   7 ++
> >>>    drivers/input/keyboard/Makefile        |   1 +
> >>>    drivers/input/keyboard/imx_sc_pwrkey.c | 169
> >> +++++++++++++++++++++++++++++++++
> >>>    3 files changed, 177 insertions(+)
> >>>    create mode 100644 drivers/input/keyboard/imx_sc_pwrkey.c
> >>>
> >>> diff --git a/drivers/input/keyboard/Kconfig
> >>> b/drivers/input/keyboard/Kconfig index 2e6d288..3aaeb9c 100644
> >>> --- a/drivers/input/keyboard/Kconfig
> >>> +++ b/drivers/input/keyboard/Kconfig
> >>> @@ -469,6 +469,13 @@ config KEYBOARD_IMX
> >>>    	  To compile this driver as a module, choose M here: the
> >>>    	  module will be called imx_keypad.
> >>>
> >>> +config KEYBOARD_IMX_SC_PWRKEY
> >>> +	tristate "IMX SCU Power Key Driver"
> >>> +	depends on IMX_SCU
> >>> +	help
> >>> +	  This is the system controller powerkey driver for NXP i.MX SoCs with
> >>> +	  system controller inside.
> >>
> >> The KEY is configurable over devicetree, why is it called PWRKEY? It
> >> looks for me as generic SCU key handler.
> >
> > We always use it as power key, NOT a generic key, as it has HW
> > function designed for power key purpose.
> 
> gpio-key driver is mostly used for power or reboot key. And it is still called
> gpio-key driver. If it is used for power key only, why is it configurable? I can
> configure it as KEY_ENTER or some thing different. This driver has not
> KEY_POWER specific any thing.

Understood, I am making the V3 with all "power" removed, just using the "key".

> 
> >
> >>
> >>>    config KEYBOARD_NEWTON
> >>>    	tristate "Newton keyboard"
> >>>    	select SERIO
> >>> diff --git a/drivers/input/keyboard/Makefile
> >>> b/drivers/input/keyboard/Makefile index 9510325..9ea5585 100644
> >>> --- a/drivers/input/keyboard/Makefile
> >>> +++ b/drivers/input/keyboard/Makefile
> >>> @@ -29,6 +29,7 @@ obj-$(CONFIG_KEYBOARD_HIL)		+=
> hil_kbd.o
> >>>    obj-$(CONFIG_KEYBOARD_HIL_OLD)		+= hilkbd.o
> >>>    obj-$(CONFIG_KEYBOARD_IPAQ_MICRO)	+= ipaq-micro-keys.o
> >>>    obj-$(CONFIG_KEYBOARD_IMX)		+= imx_keypad.o
> >>> +obj-$(CONFIG_KEYBOARD_IMX_SC_PWRKEY)	+= imx_sc_pwrkey.o
> >>>    obj-$(CONFIG_KEYBOARD_HP6XX)		+= jornada680_kbd.o
> >>>    obj-$(CONFIG_KEYBOARD_HP7XX)		+= jornada720_kbd.o
> >>>    obj-$(CONFIG_KEYBOARD_LKKBD)		+= lkkbd.o
> >>> diff --git a/drivers/input/keyboard/imx_sc_pwrkey.c
> >>> b/drivers/input/keyboard/imx_sc_pwrkey.c
> >>> new file mode 100644
> >>> index 0000000..53aa9a4
> >>> --- /dev/null
> >>> +++ b/drivers/input/keyboard/imx_sc_pwrkey.c
> >>> @@ -0,0 +1,169 @@
> >>> +// SPDX-License-Identifier: GPL-2.0
> >>> +/*
> >>> + * Copyright 2019 NXP.
> >>> + */
> >>> +
> >>> +#include <linux/device.h>
> >>> +#include <linux/err.h>
> >>> +#include <linux/firmware/imx/sci.h> #include <linux/init.h>
> >>> +#include <linux/input.h> #include <linux/interrupt.h> #include
> >>> +<linux/jiffies.h> #include <linux/kernel.h> #include
> >>> +<linux/module.h> #include <linux/of.h> #include
> >>> +<linux/of_address.h> #include <linux/platform_device.h>
> >>> +
> >>> +#define DEBOUNCE_TIME	100
> >>> +#define REPEAT_INTERVAL	60
> >>> +
> >>> +#define SC_IRQ_BUTTON		1
> >>> +#define SC_IRQ_GROUP_WAKE	3
> >>> +#define IMX_SC_MISC_FUNC_GET_BUTTON_STATUS	18
> >>> +
> >>> +struct imx_pwrkey_drv_data {
> >>> +	int keycode;
> >>> +	bool keystate;  /* 1: pressed, 0: release */
> >>> +	bool delay_check;
> >>> +	struct delayed_work check_work;
> >>> +	struct input_dev *input;
> >>> +};
> >>> +
> >>> +struct imx_sc_msg_pwrkey {
> >>> +	struct imx_sc_rpc_msg hdr;
> >>> +	u8 state;
> >>> +};
> >>> +static struct imx_pwrkey_drv_data *pdata;
> >>
> >> Why is it global struct? It seems to be flexible configurable over devicetree.
> >> So I would assume it should be able to handle more then one button.
> >> Please remove global variables, make it allocatable per OF node.
> >
> > There is ONLY one button available for SC key, but yes, I think I can
> > make the structure private and get all necessary data from the structure
> using container_of.
> 
> And we will never need more then 640 kB RAM ;)
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fen.wi
> kiquote.org%2Fwiki%2FTalk%3ABill_Gates&amp;data=02%7C01%7Canson.hu
> ang%40nxp.com%7C4d4d7458087747e0d8f008d7304057e9%7C686ea1d3bc2
> b4c6fa92cd99c5c301635%7C0%7C0%7C637030925236150243&amp;sdata=w
> %2FGXBaHfnBdLwjTxjbzWSPeIw3ExL%2Fs9IMOgF1onL6A%3D&amp;reserved
> =0
> 
> >
> >>
> >> Please use different name "pdata" is usually used as platform data.
> >> Please, use "priv".
> >
> > OK.
> >
> >>
> >>> +static struct imx_sc_ipc *pwrkey_ipc_handle;
> >>
> >> same as before, no global variables.
> >
> > Will move it into private platform data structure.
> >
> >>
> >>> +
> >>> +static int imx_sc_pwrkey_notify(struct notifier_block *nb,
> >>> +				unsigned long event, void *group) {
> >>> +	if ((event & SC_IRQ_BUTTON) && (*(u8 *)group ==
> >> SC_IRQ_GROUP_WAKE)
> >>> +	    && !pdata->delay_check) {
> >>> +		pdata->delay_check = 1;
> >>> +		schedule_delayed_work(&pdata->check_work,
> >>> +				      msecs_to_jiffies(REPEAT_INTERVAL));
> >>> +	}
> >>> +
> >>> +	return 0;
> >>> +}
> >>> +
> >>> +static void imx_sc_check_for_events(struct work_struct *work) {
> >>> +	struct input_dev *input = pdata->input;
> >>> +	struct imx_sc_msg_pwrkey msg;
> >>> +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> >>> +	bool state;
> >>> +
> >>> +	hdr->ver = IMX_SC_RPC_VERSION;
> >>> +	hdr->svc = IMX_SC_RPC_SVC_MISC;
> >>> +	hdr->func = IMX_SC_MISC_FUNC_GET_BUTTON_STATUS;
> >>> +	hdr->size = 1;
> >>> +
> >>> +	/*
> >>> +	 * Current SCU firmware does NOT have return value for
> >>> +	 * this API, that means it is always successful.
> >>> +	 */
> >>
> >> It is not true for the kernel part:
> >> https://elixir.
> >>
> bootlin.com%2Flinux%2Flatest%2Fsource%2Fdrivers%2Ffirmware%2Fimx%2F
> >> imx-
> >>
> scu.c%23L157&amp;data=02%7C01%7Canson.huang%40nxp.com%7C7a5ed3
> >>
> ef3b2541e61be808d7303810a9%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C
> >>
> 0%7C0%7C637030889669489141&amp;sdata=d3uw6x6WCPeavJu3QYf9o9cxx
> >> Rx4mJar04fQFLF9EhE%3D&amp;reserved=0
> >>
> >> imx_scu_call_rpc() may fail in different ways and provide proper error
> value.
> >> Please use it.
> >
> > There are about 3 APIs are special, this API is one of them, this API
> > has no return value from SCU FW API, but it has response data from it,
> > so that means if we set the response to false, the stack will be free
> > and mailbox will have NULL pointer issue when response data passed
> > from SCU FW. If we set the response to true, as the SCU FW has no
> > return value, the return value will be the msg->func which will be
> > already failed, that is why we have to skip the return value check. This is
> one restriction/bug of SCU FW, we will notify SCU FW owner to fix/improve.
> 
> Ok, I see. imx_scu_call_rpc() can return kernel side errors, for example from
> imx-scu.c framework EINVAL or ETIMEDOUT or what ever error mbox
> framework may also provide.
> Aaaannnndd... it can extract an error from SCU package and return it over
> same way as other errors.
> 
> And current SCU version has some bugs, so it is providing wrong error value.
> Soo... as usual the NXP has decided to make the linux kernel a bit more
> worse to make the SCU firmware happy? Is it what you trying to describe?
> Really ?! :D
> 
> Please. Fix the SCU first. The provide fixed kernel patch.

Understood, I will notify SCU owner to fix it, meanwhile it does NOT block this driver,
I will add return value check in this driver.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
