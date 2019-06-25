Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 237E352484
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:28:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h94oXpwCqXlTZFWPjMnQmXkAFuXWEU8UdOpxMUcWzrI=; b=SQ2l/F4XWXH/GV
	XfZ+DHn3xSGjP+MQV1MkfaIThOlMTlVjTqqjZcFrFyOxEB9QCPlcyoIkkrvKFNWqHhXrb3vpSgzVQ
	dYIslkzjK0SkfAz7E4WLbDwXLJknXN+NRd7xG5kO1ScTnUAXYFg6E3qfHfkrU1D4n/tYmcBWWz6yC
	issYMCToBsIQaU0EIImomHIgkIMY5WQPBCjV2HHfpDzNURQLAmlM1aDJbXuAOZc7wP8QpTLqRUQmn
	bxiEeoF2v0FHNFtq6GSM1A0LN99G4BptJxpkNjpJkVTRHjzUQLHLjoJMHvZy1C2FgSbfCwcPJUMzE
	1lQNIyR+ylv7HXFuRnIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hffsb-0004PN-Po; Tue, 25 Jun 2019 07:28:37 +0000
Received: from mail-eopbgr50074.outbound.protection.outlook.com ([40.107.5.74]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hffsN-0004Ou-Mv
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 07:28:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1blAqt5cAOHT9hXOKolQMXHrESjh/ARXC3ZF1+d7MnE=;
 b=U+wKPciD+xt3tjYllLSdweQYpEBptI9yK7BGJ9fluuewmQgzOXQNvZFTijLNTicZisZu0dEKXew0dIqITXoGYfxacX7bSanzyDKQ0y09TvRpw+lUETqu7ik1PukvSTqDw2xxy+0Jr3GEUYBS6CO2iQOTQzMOcaPlz43BE+gN4MA=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5682.eurprd04.prod.outlook.com (20.178.202.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Tue, 25 Jun 2019 07:28:20 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47%5]) with mapi id 15.20.2008.014; Tue, 25 Jun 2019
 07:28:20 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVGeZUO66GnquMY06cfK/cKOI4kaakX7aAgAAODnCAABFTAIAHm4Sw
Date: Tue, 25 Jun 2019 07:28:20 +0000
Message-ID: <AM0PR04MB4481F27EA9E158C04835505888E30@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com> <20190620092301.GD1248@e107155-lin>
 <AM0PR04MB4481203DE76D290F311E3BFA88E40@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20190620111520.GB9575@e107155-lin>
In-Reply-To: <20190620111520.GB9575@e107155-lin>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b01e2f1f-fe09-4149-d6c9-08d6f93eb2e9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5682; 
x-ms-traffictypediagnostic: AM0PR04MB5682:
x-microsoft-antispam-prvs: <AM0PR04MB5682CE8EA40B94A0FD494C0988E30@AM0PR04MB5682.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(396003)(39860400002)(366004)(376002)(51914003)(189003)(199004)(76094002)(7696005)(81166006)(81156014)(6436002)(33656002)(966005)(3846002)(229853002)(52536014)(54906003)(76176011)(6116002)(478600001)(99286004)(66066001)(256004)(66556008)(66446008)(64756008)(66476007)(4326008)(14444005)(25786009)(74316002)(14454004)(7416002)(73956011)(76116006)(316002)(15650500001)(11346002)(305945005)(9686003)(8936002)(476003)(86362001)(6246003)(2906002)(44832011)(6306002)(6916009)(66946007)(53936002)(186003)(446003)(68736007)(26005)(5660300002)(6506007)(8676002)(55016002)(486006)(7736002)(102836004)(71190400001)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5682;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: C3pv9fT7YsrljCLqgYE8nM/JjD9gK61IsU9BBZ0S8cGn4fONMMgpf1cFbhZ28iHnoG113/7MEMPCZRE499mpHXuu9EOM8WeKatRYo4zcaFLIyl4vO4gbgZMUSQbQPGQsHi+dG2EaYewugp4jXscyOXU99Qn4hoNAEGWxJuX85COYyj1vuZyKXOeyriIfyjTv+24aGNMQWc0bBSBzb+TDzzQ5AQmqQgXL5IoANUwZ04Hco3GpPvlEbniFSRig2q5Ydv4qQ3898gIPiNO87swnVd7jRw+VFWGZCptuFamXADV0Kv/yK8+DoXIOjwVMReI5aYsmlDKJhDRgum/fpXXc6K6iooK0x3ZTyXh9je+2InHrKW+eztkUpoRljWWJmyNu9spALvlLuZBorrI0EOclphIx+w+XQgVn4KcGA7Fu0wc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b01e2f1f-fe09-4149-d6c9-08d6f93eb2e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 07:28:20.3472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5682
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_002823_752164_74545AB4 
X-CRM114-Status: GOOD (  35.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
> On Thu, Jun 20, 2019 at 10:21:09AM +0000, Peng Fan wrote:
> > Hi Sudeep,
> >
> > > Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
> > >
> > > On Mon, Jun 03, 2019 at 04:30:05PM +0800, peng.fan@nxp.com wrote:
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > >
> > > > This mailbox driver implements a mailbox which signals transmitted
> > > > data via an ARM smc (secure monitor call) instruction. The mailbox
> > > > receiver is implemented in firmware and can synchronously return
> > > > data when it returns execution to the non-secure world again.
> > > > An asynchronous receive path is not implemented.
> > > > This allows the usage of a mailbox to trigger firmware actions on
> > > > SoCs which either don't have a separate management processor or on
> > > > which such a core is not available. A user of this mailbox could
> > > > be the SCP interface.
> > > >
> > > > Modified from Andre Przywara's v2 patch https://lore
> > > > .kernel.org%2Fpatchwork%2Fpatch%2F812999%2F&amp;data=02%7C0
> 1%7
> > > Cpeng.fa
> > > >
> > >
> n%40nxp.com%7C6b37f78032e446be750e08d6f560e707%7C686ea1d3bc2b4
> > > c6fa92cd
> > > >
> > >
> 99c5c301635%7C0%7C0%7C636966193913988679&amp;sdata=UNM4MTPs
> > > brqoMqWStEy
> > > > YzzwMEWTmX7hHO3TeNEz%2BOAw%3D&amp;reserved=0
> > > >
> > > > Cc: Andre Przywara <andre.przywara@arm.com>
> > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > > ---
> > > >
> > > > V2:
> > > >  Add interrupts notification support.
> > > >
> > > >  drivers/mailbox/Kconfig                 |   7 ++
> > > >  drivers/mailbox/Makefile                |   2 +
> > > >  drivers/mailbox/arm-smc-mailbox.c       | 190
> > > ++++++++++++++++++++++++++++++++
> > > >  include/linux/mailbox/arm-smc-mailbox.h |  10 ++
> > > >  4 files changed, 209 insertions(+)
> > > >  create mode 100644 drivers/mailbox/arm-smc-mailbox.c  create
> mode
> > > > 100644 include/linux/mailbox/arm-smc-mailbox.h
> > > >
> > > > diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig index
> > > > 595542bfae85..c3bd0f1ddcd8 100644
> > > > --- a/drivers/mailbox/Kconfig
> > > > +++ b/drivers/mailbox/Kconfig
> > > > @@ -15,6 +15,13 @@ config ARM_MHU
> > > >  	  The controller has 3 mailbox channels, the last of which can be
> > > >  	  used in Secure mode only.
> > > >
> > > > +config ARM_SMC_MBOX
> > > > +	tristate "Generic ARM smc mailbox"
> > > > +	depends on OF && HAVE_ARM_SMCCC
> > > > +	help
> > > > +	  Generic mailbox driver which uses ARM smc calls to call into
> > > > +	  firmware for triggering mailboxes.
> > > > +
> > > >  config IMX_MBOX
> > > >  	tristate "i.MX Mailbox"
> > > >  	depends on ARCH_MXC || COMPILE_TEST
> > > > diff --git a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile index
> > > > c22fad6f696b..93918a84c91b 100644
> > > > --- a/drivers/mailbox/Makefile
> > > > +++ b/drivers/mailbox/Makefile
> > > > @@ -7,6 +7,8 @@ obj-$(CONFIG_MAILBOX_TEST)	+= mailbox-test.o
> > > >
> > > >  obj-$(CONFIG_ARM_MHU)	+= arm_mhu.o
> > > >
> > > > +obj-$(CONFIG_ARM_SMC_MBOX)	+= arm-smc-mailbox.o
> > > > +
> > > >  obj-$(CONFIG_IMX_MBOX)	+= imx-mailbox.o
> > > >
> > > >  obj-$(CONFIG_ARMADA_37XX_RWTM_MBOX)	+=
> > > armada-37xx-rwtm-mailbox.o
> > > > diff --git a/drivers/mailbox/arm-smc-mailbox.c
> > > > b/drivers/mailbox/arm-smc-mailbox.c
> > > > new file mode 100644
> > > > index 000000000000..fef6e38d8b98
> > > > --- /dev/null
> > > > +++ b/drivers/mailbox/arm-smc-mailbox.c
> > > > @@ -0,0 +1,190 @@
> > > > +// SPDX-License-Identifier: GPL-2.0
> > > > +/*
> > > > + * Copyright (C) 2016,2017 ARM Ltd.
> > > > + * Copyright 2019 NXP
> > > > + */
> > > > +
> > > > +#include <linux/arm-smccc.h>
> > > > +#include <linux/device.h>
> > > > +#include <linux/kernel.h>
> > > > +#include <linux/interrupt.h>
> > > > +#include <linux/mailbox_controller.h> #include
> > > > +<linux/mailbox/arm-smc-mailbox.h>
> > > > +#include <linux/module.h>
> > > > +#include <linux/platform_device.h>
> > > > +
> > > > +#define ARM_SMC_MBOX_USE_HVC	BIT(0)
> > > > +#define ARM_SMC_MBOX_USB_IRQ	BIT(1)
> > > > +
> > > > +struct arm_smc_chan_data {
> > > > +	u32 function_id;
> > > > +	u32 flags;
> > > > +	int irq;
> > > > +};
> > > > +
> > > > +static int arm_smc_send_data(struct mbox_chan *link, void *data) {
> > > > +	struct arm_smc_chan_data *chan_data = link->con_priv;
> > > > +	struct arm_smccc_mbox_cmd *cmd = data;
> > > > +	struct arm_smccc_res res;
> > > > +	u32 function_id;
> > > > +
> > > > +	if (chan_data->function_id != UINT_MAX)
> > > > +		function_id = chan_data->function_id;
> > > > +	else
> > > > +		function_id = cmd->a0;
> > > > +
> > > > +	if (chan_data->flags & ARM_SMC_MBOX_USE_HVC)
> > > > +		arm_smccc_hvc(function_id, cmd->a1, cmd->a2, cmd->a3,
> > > cmd->a4,
> > > > +			      cmd->a5, cmd->a6, cmd->a7, &res);
> > > > +	else
> > > > +		arm_smccc_smc(function_id, cmd->a1, cmd->a2, cmd->a3,
> > > cmd->a4,
> > > > +			      cmd->a5, cmd->a6, cmd->a7, &res);
> > > > +
> > >
> > > So how will the SMC/HVC handler in EL3/2 find which mailbox is being
> > > referred with this command ? I prefer 2nd argument to be the mailbox
> > > number.
> > You mean channel number as following?
> >
> > @@ -37,10 +38,10 @@ static int arm_smc_send_data(struct mbox_chan
> *link, void *data)
> >                 function_id = cmd->a0;
> >
> >         if (chan_data->flags & ARM_SMC_MBOX_USE_HVC)
> > -               arm_smccc_hvc(function_id, cmd->a1, cmd->a2,
> cmd->a3, cmd->a4,
> > +               arm_smccc_hvc(function_id, chan_data->chan_id,
> cmd->a2, cmd->a3, cmd->a4,
> >                               cmd->a5, cmd->a6, cmd->a7, &res);
> >         else
> > -               arm_smccc_smc(function_id, cmd->a1, cmd->a2,
> cmd->a3, cmd->a4,
> > +               arm_smccc_smc(function_id, chan_data->chan_id,
> cmd->a2, cmd->a3, cmd->a4,
> >                               cmd->a5, cmd->a6, cmd->a7, &res);
> >
> 
> Yes something like above. There's a brief description of the same in
> latest SCMI specification though it's not related to SCMI, it more
> general note for SMC based mailbox.
> 
> "In case the doorbell is SMC/HVC based, it should follow the SMC Calling
> Convention [SMCCC] and needs to provide the identifier of the Shared
> Memory
> area that contains the payload. On return from the call, the Shared Memory
> area which contained the payload is now updated with the SCMI return
> response.
> The identifier of the Shared Memory area should be 32-bits and each
> identifier
> should denote a distinct Shared Memory area."

Thanks for the info, it make sense to pass channel id to firmware.

> 
> > Or should that be passed from firmware driver?
> >
> 
> No, we can't assume the id's in DT are 1-1 translation to mailbox ID used
> though it may be the same most of the time.

Understand.

> 
> > If not from firmware driver, just as above, I do not have a good idea which
> > should be passed to smc, from cmd->a1 to a5 or from cmd->a2 to a6.
> >
> 
> Also I found copying those registers may not be always needed and can
> be sub-optimal. May be a way to indicate that this in DT whether
> register based transfers are used or using memory. Just a thought.

"reg-transport" or "mem-transport" should help here.

Thanks,
peng.

> 
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
