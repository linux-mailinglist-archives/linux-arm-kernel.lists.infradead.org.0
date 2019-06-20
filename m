Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 190104CBAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 12:21:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/cPE/vm2AV+egHMuVgAKxQyOKt2CrIeaUKk3MmfPKg=; b=CUAqMsTGglPFco
	CQHVR9DcPncJNMoJ+0gb0fZIpbHGEZU4+8GSXC/DreUC+XKFZ7xhfNS7CO5eYKfNsIHRj4b+OCPea
	ZNLVXet+1nrrBdBDlUuj/apqB/iwGKtVeG12m3Wa53nzDU0scFYjvWVxFwkxHedAPtEjCE/PZ/o0b
	8+gJ1IsvvlORYHipuMYaeLHkpZk68e9rm+oobfycn3jdN35kQoo0BR8X25KWEaInZ7GPFZHUq1961
	+LljoQ1QcZuK4k4WmP5YlF4RWZXKbhZ+fS8WK6FSVXm8SPwUSHYsXFX4fwGslaOxcvlIH79s4OnaM
	bzfQYSJ4dRbt6XsULJQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hduCB-0003Vp-SR; Thu, 20 Jun 2019 10:21:32 +0000
Received: from mail-db5eur01on0613.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::613]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hduBw-0003Uj-0p
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 10:21:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UIOpYSodBkqE4589Tv6vQLFnhgp51jM04awtfJuqltU=;
 b=fJ1und6rgvc/Vapd/mKbdSleOiEVGVa82iD6NN1AdMj9P5KzcfXY2DhQDVuFxN95pnyX4eMLRG0g7h3PxHI2FxO1g8u3dzIlgezJtmA9GqdlTv9MpFZDQQV8zcB/EtRHJmIqBfOwbKP1RXC+UEUDmPkH9qoKYxoKMURVTbCYe3U=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4833.eurprd04.prod.outlook.com (20.176.215.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.15; Thu, 20 Jun 2019 10:21:09 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6090:1f0b:b85b:8015]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6090:1f0b:b85b:8015%3]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 10:21:09 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVGeZUO66GnquMY06cfK/cKOI4kaakX7aAgAAODnA=
Date: Thu, 20 Jun 2019 10:21:09 +0000
Message-ID: <AM0PR04MB4481203DE76D290F311E3BFA88E40@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com> <20190620092301.GD1248@e107155-lin>
In-Reply-To: <20190620092301.GD1248@e107155-lin>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e7c47a8b-e1ec-4fa8-1fd9-08d6f5690358
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4833; 
x-ms-traffictypediagnostic: AM0PR04MB4833:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB4833D97B5D5A9771324B7EB688E40@AM0PR04MB4833.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(136003)(39860400002)(376002)(346002)(189003)(199004)(14454004)(99286004)(446003)(66946007)(6506007)(25786009)(102836004)(476003)(66476007)(66556008)(8936002)(11346002)(64756008)(7416002)(316002)(76116006)(86362001)(73956011)(81166006)(7696005)(15650500001)(71200400001)(74316002)(71190400001)(6116002)(81156014)(4326008)(486006)(305945005)(54906003)(7736002)(6246003)(26005)(76176011)(186003)(66446008)(8676002)(53936002)(229853002)(9686003)(2906002)(52536014)(14444005)(44832011)(3846002)(6436002)(5660300002)(966005)(6916009)(33656002)(66066001)(68736007)(55016002)(478600001)(45080400002)(256004)(6306002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4833;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: X9HVBPs15QWEkL1NqcgIW5WlVhz9MaeTSSi67c0KHggLa/ZhY7rpC0r2854TpoBg1tHHSeF+Be+qM3QMTR+tmXjYcvxBkEzxY5JPVsZEFCKNVpeTfwzwrrA3Km4pPGu66IrpUb/GBUpXoyS7e8o2zB+TGdhg9yshK8RK8P4TW1rqWPve/MbtfKqtm2HJuDiQdxmZWRAZWidr/RJwQHPbgj3DpGyOTxPOY1leoas1qgJhjPUSiXa0ww0qF9+EM+OT1CYZ6qUZaYLX78AMCM5R2c953U/k1BCTXPvNcEgOYU81xwsE9gaiar8ZNN4WnxKmdJhISr/KIZPXFYble/djMvO67cDqeKlDWpguXDRz0BaWWjC0RAbxk1UD9M/N0RGU+fb7hnZrrsSY/TJWpsH782dzg5P9VyZ4hhf75XJOpow=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7c47a8b-e1ec-4fa8-1fd9-08d6f5690358
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 10:21:09.4922 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4833
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_032116_225243_A7015B81 
X-CRM114-Status: GOOD (  27.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:613 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

> Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
> 
> On Mon, Jun 03, 2019 at 04:30:05PM +0800, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > This mailbox driver implements a mailbox which signals transmitted
> > data via an ARM smc (secure monitor call) instruction. The mailbox
> > receiver is implemented in firmware and can synchronously return data
> > when it returns execution to the non-secure world again.
> > An asynchronous receive path is not implemented.
> > This allows the usage of a mailbox to trigger firmware actions on SoCs
> > which either don't have a separate management processor or on which
> > such a core is not available. A user of this mailbox could be the SCP
> > interface.
> >
> > Modified from Andre Przywara's v2 patch
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore
> > .kernel.org%2Fpatchwork%2Fpatch%2F812999%2F&amp;data=02%7C01%7
> Cpeng.fa
> >
> n%40nxp.com%7C6b37f78032e446be750e08d6f560e707%7C686ea1d3bc2b4
> c6fa92cd
> >
> 99c5c301635%7C0%7C0%7C636966193913988679&amp;sdata=UNM4MTPs
> brqoMqWStEy
> > YzzwMEWTmX7hHO3TeNEz%2BOAw%3D&amp;reserved=0
> >
> > Cc: Andre Przywara <andre.przywara@arm.com>
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >
> > V2:
> >  Add interrupts notification support.
> >
> >  drivers/mailbox/Kconfig                 |   7 ++
> >  drivers/mailbox/Makefile                |   2 +
> >  drivers/mailbox/arm-smc-mailbox.c       | 190
> ++++++++++++++++++++++++++++++++
> >  include/linux/mailbox/arm-smc-mailbox.h |  10 ++
> >  4 files changed, 209 insertions(+)
> >  create mode 100644 drivers/mailbox/arm-smc-mailbox.c  create mode
> > 100644 include/linux/mailbox/arm-smc-mailbox.h
> >
> > diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig index
> > 595542bfae85..c3bd0f1ddcd8 100644
> > --- a/drivers/mailbox/Kconfig
> > +++ b/drivers/mailbox/Kconfig
> > @@ -15,6 +15,13 @@ config ARM_MHU
> >  	  The controller has 3 mailbox channels, the last of which can be
> >  	  used in Secure mode only.
> >
> > +config ARM_SMC_MBOX
> > +	tristate "Generic ARM smc mailbox"
> > +	depends on OF && HAVE_ARM_SMCCC
> > +	help
> > +	  Generic mailbox driver which uses ARM smc calls to call into
> > +	  firmware for triggering mailboxes.
> > +
> >  config IMX_MBOX
> >  	tristate "i.MX Mailbox"
> >  	depends on ARCH_MXC || COMPILE_TEST
> > diff --git a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile index
> > c22fad6f696b..93918a84c91b 100644
> > --- a/drivers/mailbox/Makefile
> > +++ b/drivers/mailbox/Makefile
> > @@ -7,6 +7,8 @@ obj-$(CONFIG_MAILBOX_TEST)	+= mailbox-test.o
> >
> >  obj-$(CONFIG_ARM_MHU)	+= arm_mhu.o
> >
> > +obj-$(CONFIG_ARM_SMC_MBOX)	+= arm-smc-mailbox.o
> > +
> >  obj-$(CONFIG_IMX_MBOX)	+= imx-mailbox.o
> >
> >  obj-$(CONFIG_ARMADA_37XX_RWTM_MBOX)	+=
> armada-37xx-rwtm-mailbox.o
> > diff --git a/drivers/mailbox/arm-smc-mailbox.c
> > b/drivers/mailbox/arm-smc-mailbox.c
> > new file mode 100644
> > index 000000000000..fef6e38d8b98
> > --- /dev/null
> > +++ b/drivers/mailbox/arm-smc-mailbox.c
> > @@ -0,0 +1,190 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2016,2017 ARM Ltd.
> > + * Copyright 2019 NXP
> > + */
> > +
> > +#include <linux/arm-smccc.h>
> > +#include <linux/device.h>
> > +#include <linux/kernel.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/mailbox_controller.h> #include
> > +<linux/mailbox/arm-smc-mailbox.h>
> > +#include <linux/module.h>
> > +#include <linux/platform_device.h>
> > +
> > +#define ARM_SMC_MBOX_USE_HVC	BIT(0)
> > +#define ARM_SMC_MBOX_USB_IRQ	BIT(1)
> > +
> > +struct arm_smc_chan_data {
> > +	u32 function_id;
> > +	u32 flags;
> > +	int irq;
> > +};
> > +
> > +static int arm_smc_send_data(struct mbox_chan *link, void *data) {
> > +	struct arm_smc_chan_data *chan_data = link->con_priv;
> > +	struct arm_smccc_mbox_cmd *cmd = data;
> > +	struct arm_smccc_res res;
> > +	u32 function_id;
> > +
> > +	if (chan_data->function_id != UINT_MAX)
> > +		function_id = chan_data->function_id;
> > +	else
> > +		function_id = cmd->a0;
> > +
> > +	if (chan_data->flags & ARM_SMC_MBOX_USE_HVC)
> > +		arm_smccc_hvc(function_id, cmd->a1, cmd->a2, cmd->a3,
> cmd->a4,
> > +			      cmd->a5, cmd->a6, cmd->a7, &res);
> > +	else
> > +		arm_smccc_smc(function_id, cmd->a1, cmd->a2, cmd->a3,
> cmd->a4,
> > +			      cmd->a5, cmd->a6, cmd->a7, &res);
> > +
> 
> So how will the SMC/HVC handler in EL3/2 find which mailbox is being
> referred with this command ? I prefer 2nd argument to be the mailbox
> number.
You mean channel number as following?

@@ -37,10 +38,10 @@ static int arm_smc_send_data(struct mbox_chan *link, void *data)
                function_id = cmd->a0;

        if (chan_data->flags & ARM_SMC_MBOX_USE_HVC)
-               arm_smccc_hvc(function_id, cmd->a1, cmd->a2, cmd->a3, cmd->a4,
+               arm_smccc_hvc(function_id, chan_data->chan_id, cmd->a2, cmd->a3, cmd->a4,
                              cmd->a5, cmd->a6, cmd->a7, &res);
        else
-               arm_smccc_smc(function_id, cmd->a1, cmd->a2, cmd->a3, cmd->a4,
+               arm_smccc_smc(function_id, chan_data->chan_id, cmd->a2, cmd->a3, cmd->a4,
                              cmd->a5, cmd->a6, cmd->a7, &res);

Or should that be passed from firmware driver?

If not from firmware driver, just as above, I do not have a good idea which should be passed to smc,
from cmd->a1 to a5 or from cmd->a2 to a6.

Thanks,
Peng.

> 
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
