Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED65556A7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fTe2ybAfAWcQ01SXygJa8HrLqdCpn+2oCGB4x9MA5t8=; b=t1Mlbg5iE9zfMV
	0mRQAjlrE7zGqWdw9lxaySk1CD9NNGaDolq+4ifba9WPaet+Boj9yy96TxnFCtmuFSwm0ffexJ+ON
	P0LmxLagkyDKcfUdO5x4TMKF/6GP5ZlJJFQf51bG0mp8Hd+ZOWqE9YRkjgJ3Cg1YVon95qlMp2ypI
	Y8crlpWO0fw3gCRBTkWVU33cTtRu8cUOv0ayl5FdDuK8BSVb3jrEXWwRfkkY6oU+mTUAXZtG6hqNA
	GPgLCmq9eQao0RKPDQp/QHBMhLYntHoalzh5hv9LmwfvUgBri8MYV7Vvzxqvic8U7TMfD3xgy4xNY
	G6lKGk4d1/hdZIP9vsWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg828-0000pA-Vi; Wed, 26 Jun 2019 13:32:21 +0000
Received: from mail-eopbgr150083.outbound.protection.outlook.com
 ([40.107.15.83] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg81B-0000Nr-49
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 13:31:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=sVhr51lGJAbwtPAelVtr7vhYeuDELHWNLMRNCP7NTM3lxXwqhx1kzwjHqqN8CF7cJSEiruXza+0ebcxaSZwv1g4Wx4h6kJvWL/H+K12oKPtbDnK1nbnX5tYodLK52XFdBLXE5ZwZ2QUjc9sAXpqD91j2eFItpCmG6U2q6Mg2a6Y=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6ALV/bqVO/+nvE8MbblYUCYBZFeWPgKHucC3GE00XAU=;
 b=CSQN/f6b9nCOJPw27Fl9gHFFj7DAnTXD8ciBAk1MXbH6XgDZ3QnYBnRcql3Ej+YF7iYbmXv1TOf6Zqxu15qmvet7rcF1JgzXxs+FV7s4qM0czKMhP1R52v2d+Pgi4824IgWJX2UfEvsesFp5Yg0aWwdCyqnYYo4m42Dl49ROERg=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6ALV/bqVO/+nvE8MbblYUCYBZFeWPgKHucC3GE00XAU=;
 b=TIuhJ2hMjKcpcI1SzaJ+URL95llwj9kgVPbMbzT1LBrmRpDlJqqraMSnGJkJ3Lqhl0YV5+QVFzX/zklIWPjXCQfo9ydMIjOiSTf47ddx5pr2Fj1LowoWdRfpfEoimp1Oo9OKcKd2k7qwIHZlCl6LjwkyLHiosZP2H8hOyHUOb0Q=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6097.eurprd04.prod.outlook.com (20.179.36.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Wed, 26 Jun 2019 13:31:15 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47%5]) with mapi id 15.20.2008.014; Wed, 26 Jun 2019
 13:31:15 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: RE: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVGeZUO66GnquMY06cfK/cKOI4kaak3KcAgAc+vQCAAHeVAIABfs7A
Date: Wed, 26 Jun 2019 13:31:15 +0000
Message-ID: <AM0PR04MB44814D3BD59033ECDDE3094C88E20@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com>
 <CABb+yY1wW-arSMQSYjrezXOZ0Ar_shAr78MOyUD3hBxXohWx3g@mail.gmail.com>
 <AM0PR04MB44813A4DE544E53EB7B6F02B88E30@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY38MAZqVOhjyV+GByPvpFcTfKbNG1rJ8YDRd1vi1F4fqg@mail.gmail.com>
In-Reply-To: <CABb+yY38MAZqVOhjyV+GByPvpFcTfKbNG1rJ8YDRd1vi1F4fqg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4736499c-aeed-4cc4-11df-08d6fa3a9056
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6097; 
x-ms-traffictypediagnostic: AM0PR04MB6097:
x-microsoft-antispam-prvs: <AM0PR04MB6097ADE2F65801218BC11CA788E20@AM0PR04MB6097.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 00808B16F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(39860400002)(376002)(396003)(136003)(199004)(189003)(53754006)(305945005)(5660300002)(86362001)(476003)(9686003)(6916009)(6306002)(44832011)(8676002)(15650500001)(11346002)(2906002)(446003)(8936002)(486006)(102836004)(1411001)(55016002)(7736002)(6506007)(6246003)(66946007)(53936002)(99286004)(71200400001)(71190400001)(26005)(186003)(68736007)(6116002)(478600001)(53546011)(66066001)(966005)(81166006)(256004)(229853002)(7696005)(81156014)(3846002)(73956011)(6436002)(74316002)(7416002)(14454004)(25786009)(316002)(76116006)(64756008)(66446008)(52536014)(14444005)(4326008)(66556008)(76176011)(66476007)(54906003)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6097;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ms1e34GQQaeywkuIn/CJ+k93zBhc79HrYxQtN0Ie7u8Uvjc/PP5CxCYnvtaPEEHO3N5Ce9ntP/H232MdbYPZx0lZtxOPF9K0DtrSZjuVqMrYgdt1swhl5xNB+/i0UI2fKyeXBJR90DPAodCIzpQDxx1zg9hIfzuWDV619L47dl7NIfJbxhcQcQ1M2jtTQN5xEuVMqDfOWUXDsVvF8/2p6ynffTMUFxKIAY1MVjwSPZC07vbAVlP38zrMNvHdoLucUGziBVlZ1LjidVWQV6Jwep9/KMYsJThQNsVpNbUQE739p9zwfJkr6t1+CYQmMKVHeTwlCXg5jaamp2Jwp2XKa7rOhcLAbm66nw+Inhp2cKgg3vS/Ab/jm8x/nJfnawwAvMhieSZwgzp9DCuH63kOzd0SuG8zS1X2HReRb9nXZr8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4736499c-aeed-4cc4-11df-08d6fa3a9056
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2019 13:31:15.4751 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_063121_350325_8A613E95 
X-CRM114-Status: GOOD (  28.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andre Przywara <andre.przywara@arm.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, ", Sascha Hauer" <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi All,

> Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
> 
> On Tue, Jun 25, 2019 at 2:30 AM Peng Fan <peng.fan@nxp.com> wrote:
> >
> > Hi Jassi
> >
> > > Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
> > >
> > > On Mon, Jun 3, 2019 at 3:28 AM <peng.fan@nxp.com> wrote:
> > > >
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
> n%40nxp.com%7C1237677cb01044ad714508d6f59f648f%7C686ea1d3bc2b4
> > > c6fa92cd
> > > >
> > >
> 99c5c301635%7C0%7C0%7C636966462272457978&amp;sdata=Hzgeu43m5
> > > ZkeRMtL8Bx
> > > > gUm3%2B6FBObib1OPHPlSccE%2B0%3D&amp;reserved=0
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
> > > >           The controller has 3 mailbox channels, the last of which can
> be
> > > >           used in Secure mode only.
> > > >
> > > > +config ARM_SMC_MBOX
> > > > +       tristate "Generic ARM smc mailbox"
> > > > +       depends on OF && HAVE_ARM_SMCCC
> > > > +       help
> > > > +         Generic mailbox driver which uses ARM smc calls to call into
> > > > +         firmware for triggering mailboxes.
> > > > +
> > > >  config IMX_MBOX
> > > >         tristate "i.MX Mailbox"
> > > >         depends on ARCH_MXC || COMPILE_TEST diff --git
> > > > a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile index
> > > > c22fad6f696b..93918a84c91b 100644
> > > > --- a/drivers/mailbox/Makefile
> > > > +++ b/drivers/mailbox/Makefile
> > > > @@ -7,6 +7,8 @@ obj-$(CONFIG_MAILBOX_TEST)      +=
> mailbox-test.o
> > > >
> > > >  obj-$(CONFIG_ARM_MHU)  += arm_mhu.o
> > > >
> > > > +obj-$(CONFIG_ARM_SMC_MBOX)     += arm-smc-mailbox.o
> > > > +
> > > >  obj-$(CONFIG_IMX_MBOX) += imx-mailbox.o
> > > >
> > > >  obj-$(CONFIG_ARMADA_37XX_RWTM_MBOX)    +=
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
> > > > +#define ARM_SMC_MBOX_USE_HVC   BIT(0)
> > > > +#define ARM_SMC_MBOX_USB_IRQ   BIT(1)
> > > > +
> > > IRQ bit is unused (and unnecessary IMO)
> > >
> > > > +struct arm_smc_chan_data {
> > > > +       u32 function_id;
> > > > +       u32 flags;
> > > > +       int irq;
> > > > +};
> > > > +
> > > > +static int arm_smc_send_data(struct mbox_chan *link, void *data) {
> > > > +       struct arm_smc_chan_data *chan_data = link->con_priv;
> > > > +       struct arm_smccc_mbox_cmd *cmd = data;
> > > > +       struct arm_smccc_res res;
> > > > +       u32 function_id;
> > > > +
> > > > +       if (chan_data->function_id != UINT_MAX)
> > > > +               function_id = chan_data->function_id;
> > > > +       else
> > > > +               function_id = cmd->a0;
> > > > +
> > > Not sure about chan_data->function_id.  Why restrict from DT?
> > > 'a0' is the function_id register, let the user pass func-id via the 'a0' like
> other
> > > values via 'a[1-7]'
> >
> > Missed to reply this comment.
> >
> > The firmware driver might not have func-id, such as SCMI/SCPI.
> > So add an optional func-id to let smc mailbox driver could
> > use smc SiP func id.
> >
> There is no end to conforming to protocols. Controller drivers should
> be written having no particular client in mind.

If the func-id needs be passed from user, then the chan_id suggested
by Sudeep should also be passed from user, not in mailbox driver.

Jassi, so from your point, arm_smc_send_data just send a0 - a6
to firmware, right?

Sudeep, Andre, Florian,

What's your suggestion? SCMI not support, do you have
plan to add smc transport in SCMI?

Thanks,
Peng.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
