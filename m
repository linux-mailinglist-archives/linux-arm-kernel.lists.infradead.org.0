Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CB8524CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:31:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8k1rKduOR93v+PU3VrUrH8A0L4/O5BHzfcLt9TCiQ0=; b=LE1g2C8L6DdCf3
	02jhzDJRhwRyz6ik8EY+r7pzx8gEd5b+liD+yOUWfqkQiRdkx3ZfHzI7gU/96yzGfllf2udnbqY08
	76QD3E8bFQ90WX5hl3qijAXZ81RrWGub5wF7UeVBJ3k/EXJ90+fcxsYTdUeOOLoVi/0wg99Ue7koo
	XuT+6r5Y7OJE7fKyPIrxEfj0Kaene3HClY0cJ01MLY+H+/684WhGeFgnvSO7eXZqwmmiDea6qVtnq
	41fWWe0HAXZmBcoWzSNB3NH0sw5Lgrs9xFxhxP4GBfd8SEO8y9nrQ9CEpqhgD6S5I6dUXT+lYan/3
	BAb/dRJf3wgZXOhJ738g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hffv9-0006Di-62; Tue, 25 Jun 2019 07:31:15 +0000
Received: from mail-eopbgr70087.outbound.protection.outlook.com ([40.107.7.87]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hffuq-0006CU-BC
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 07:30:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yvl32yqhaitB93jtgcsycHLpDyX4XHbcuKLognVxrLQ=;
 b=qKm8ikgc831gsavPnKzRD1zZc34xDYdqeKTV6qdEiQGcW+MGu+KK87K5ynuY9vxZKMWEOKf/ouxy6yZlZ4IuxZN5yxDvuERewWzGbtZ1GQ6gbPYK9CV4ZKBjLyUj4CBylj0HBEIYpZxPvZqQOPRset2kDKBAECoknUO6JKd+g70=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5234.eurprd04.prod.outlook.com (20.177.42.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Tue, 25 Jun 2019 07:30:51 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47%5]) with mapi id 15.20.2008.014; Tue, 25 Jun 2019
 07:30:51 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: RE: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVGeZUO66GnquMY06cfK/cKOI4kaak3KcAgAc+vQA=
Date: Tue, 25 Jun 2019 07:30:51 +0000
Message-ID: <AM0PR04MB44813A4DE544E53EB7B6F02B88E30@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com>
 <CABb+yY1wW-arSMQSYjrezXOZ0Ar_shAr78MOyUD3hBxXohWx3g@mail.gmail.com>
In-Reply-To: <CABb+yY1wW-arSMQSYjrezXOZ0Ar_shAr78MOyUD3hBxXohWx3g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dbc9effc-f3b6-4fbe-87f9-08d6f93f0cee
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5234; 
x-ms-traffictypediagnostic: AM0PR04MB5234:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB52344C27FF1B80F7198C27B588E30@AM0PR04MB5234.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(346002)(376002)(39860400002)(396003)(189003)(199004)(6306002)(6246003)(74316002)(6116002)(66066001)(102836004)(966005)(55016002)(316002)(9686003)(76176011)(305945005)(54906003)(6436002)(7696005)(52536014)(8936002)(26005)(25786009)(14454004)(4326008)(7416002)(486006)(256004)(2906002)(7736002)(45080400002)(8676002)(86362001)(1411001)(53546011)(44832011)(478600001)(6506007)(5660300002)(33656002)(186003)(53936002)(81156014)(73956011)(81166006)(476003)(229853002)(71190400001)(71200400001)(66446008)(3846002)(66946007)(76116006)(99286004)(64756008)(6916009)(15650500001)(11346002)(446003)(66476007)(14444005)(68736007)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5234;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3dTlVOew64COnKtCuI4GR1QpNR4umbg7KJsk4Gu6XuAXpnqyaZ8yes3FaFsGBouu3jcwqFzw1ZrTKk47sAFoQc2QkL0aHAnkuZBKkQR/ynFSZ4TWWuAJ0IfjcBzeqQXkYCXwkO6FckZFg11gK5Oliaq2e26tDcUVnTvW3XVkv30XLDRG7HeMjwte4rhAsX8F1K4epOJiFoklr9v42H6UCpOEBU6DOWw/RKR7XadUOynRh08jopg3kxzLKGPZqS9qsRPE21BoSbDgE2mBHAleJ6B370TO5bdyHaCl41F3VxV/zNLdS0GZcVD+A8N7N75iIXqLFAGJgzPr47zLcaPoDLEk8yTbUTDHRCB1XR5U71AM5t9QOuiSQONV3F8Z2nEMbP7rFw4JNftiql+BVDtmopzwsGUlYkqF056/FngxV3w=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbc9effc-f3b6-4fbe-87f9-08d6f93f0cee
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 07:30:51.3719 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5234
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_003056_391384_4CD0BAC7 
X-CRM114-Status: GOOD (  29.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.87 listed in list.dnswl.org]
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

Hi Jassi

> Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
> 
> On Mon, Jun 3, 2019 at 3:28 AM <peng.fan@nxp.com> wrote:
> >
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
> n%40nxp.com%7C1237677cb01044ad714508d6f59f648f%7C686ea1d3bc2b4
> c6fa92cd
> >
> 99c5c301635%7C0%7C0%7C636966462272457978&amp;sdata=Hzgeu43m5
> ZkeRMtL8Bx
> > gUm3%2B6FBObib1OPHPlSccE%2B0%3D&amp;reserved=0
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
> >           The controller has 3 mailbox channels, the last of which can be
> >           used in Secure mode only.
> >
> > +config ARM_SMC_MBOX
> > +       tristate "Generic ARM smc mailbox"
> > +       depends on OF && HAVE_ARM_SMCCC
> > +       help
> > +         Generic mailbox driver which uses ARM smc calls to call into
> > +         firmware for triggering mailboxes.
> > +
> >  config IMX_MBOX
> >         tristate "i.MX Mailbox"
> >         depends on ARCH_MXC || COMPILE_TEST diff --git
> > a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile index
> > c22fad6f696b..93918a84c91b 100644
> > --- a/drivers/mailbox/Makefile
> > +++ b/drivers/mailbox/Makefile
> > @@ -7,6 +7,8 @@ obj-$(CONFIG_MAILBOX_TEST)      += mailbox-test.o
> >
> >  obj-$(CONFIG_ARM_MHU)  += arm_mhu.o
> >
> > +obj-$(CONFIG_ARM_SMC_MBOX)     += arm-smc-mailbox.o
> > +
> >  obj-$(CONFIG_IMX_MBOX) += imx-mailbox.o
> >
> >  obj-$(CONFIG_ARMADA_37XX_RWTM_MBOX)    +=
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
> > +#define ARM_SMC_MBOX_USE_HVC   BIT(0)
> > +#define ARM_SMC_MBOX_USB_IRQ   BIT(1)
> > +
> IRQ bit is unused (and unnecessary IMO)
> 
> > +struct arm_smc_chan_data {
> > +       u32 function_id;
> > +       u32 flags;
> > +       int irq;
> > +};
> > +
> > +static int arm_smc_send_data(struct mbox_chan *link, void *data) {
> > +       struct arm_smc_chan_data *chan_data = link->con_priv;
> > +       struct arm_smccc_mbox_cmd *cmd = data;
> > +       struct arm_smccc_res res;
> > +       u32 function_id;
> > +
> > +       if (chan_data->function_id != UINT_MAX)
> > +               function_id = chan_data->function_id;
> > +       else
> > +               function_id = cmd->a0;
> > +
> Not sure about chan_data->function_id.  Why restrict from DT?
> 'a0' is the function_id register, let the user pass func-id via the 'a0' like other
> values via 'a[1-7]'

Missed to reply this comment.

The firmware driver might not have func-id, such as SCMI/SCPI.
So add an optional func-id to let smc mailbox driver could
use smc SiP func id.

Thanks,
Peng.

> 
> 
> > +       if (chan_data->flags & ARM_SMC_MBOX_USE_HVC)
> > +               arm_smccc_hvc(function_id, cmd->a1, cmd->a2,
> cmd->a3, cmd->a4,
> > +                             cmd->a5, cmd->a6, cmd->a7, &res);
> > +       else
> > +               arm_smccc_smc(function_id, cmd->a1, cmd->a2,
> cmd->a3, cmd->a4,
> > +                             cmd->a5, cmd->a6, cmd->a7, &res);
> > +
> > +       if (chan_data->irq)
> > +               return 0;
> > +
> This irq thing seems like oob signalling, that is, a protocol thing.
> And then it provides lesser info via chan_irq_handler (returns NULL) than
> res.a0 - which can always be ignored if not needed.
> So the irq should be implemented in the upper layer if the protocol needs it.
> 
> > +       mbox_chan_received_data(link, (void *)res.a0);
> > +
> This is fine.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
