Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2B7B5FD6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 11:09:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q19G75XmEb5+PRDvzSDlFsGdhl/kG3cg+eraBBRfJKQ=; b=J3IO04aMimn6pe
	OMhNkzScra6VA38OBh1lf5IAAeFlTcMJCbyeiMd1ROfBwDFRHnZJXWJLtUrnhU8RGHpnxriuoOqa0
	gvN53J1uPh/ode72YA2xL7rer5klisxZI9TkiWqz5hrd5frL4m9JjKILisy5eZSig0i4sONZvbN4T
	HgZ406Tsc8hu3/agZ7ONgUNPT2y+UVd/S+oVVfHKi6+4TUC0Izykfd+R09HOAdlkanOc7XYQXxHjf
	s/BD3y+lewI0z7orDDnl82qXUXtCZVudJzBbIydgc3CuGzOzmVravLmr9+6H1X4w+VPxj4hLRr0kO
	YhZGK87uMQQVBJW+MZmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAVy4-0005GK-7X; Wed, 18 Sep 2019 09:09:44 +0000
Received: from mail-eopbgr80089.outbound.protection.outlook.com ([40.107.8.89]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAVxr-0005FX-3P
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 09:09:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iE4UdArqCPPFVbCQQGeDF65Yq55GM0/djE6CaSwPtY2SHdsDGklNyGj/P28d4CbnyB0GSMhjsQw9+Wum2M/jvrgghYmDudaKpDJqoRwJwHDRH/0inSOUtRd8//sc8l3g24BgJ4ewa32K6y43FVQvuEFxS8bW36xhqdSWY5dtKu+btK1+/I4LerUykmupQyyJky9vZUkx74KvES5jslTUf1Z/qUWCdkcGg/qs1mhRt23tP9DbTKCvK8Ie3QEWnhXDGShIVtLQ2LVBgxeRK0Wy7J4C2IPks5BAPYP+m/Mcbwo4mw4OyxKOYX/SnEC0hrDEjMcAtQvqGyOW3XdcVauvcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Xr5Idb0X41xRUqAMSXXNpMp+/ttSKqfiFdkykY3AbI=;
 b=LGgAgyu3LU0dJAxGDBblyyT68aNHRVJAVmZmQecmcIO3usqWJG9XPZIRCR+9/DrDyZknBxwXmCGNB2U+mEvFPvjwQ4FXavyPdpouWK/CseWNCsUABJAL2rb8gtkHNHoyU/jtZG9pbYr1kHRpCr4QbnFOzAQa0hKS9xXiKFgI0029ci6mdbz7UE+07oXabYfFKkuKXL6OsdtnyFVrVONQUK0bxqYpU52LMcFt7MM3Zd5O6zgbSP2lXLwcmoUt0Ca+jsSouOd4ZbBcfcZnWRE0gZtHw+h+sNo4e1DQnDxFd9jgRruMPHP6HclRsWi5jy1QrDqw5/W4xiJe0YtAa5807A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Xr5Idb0X41xRUqAMSXXNpMp+/ttSKqfiFdkykY3AbI=;
 b=XnO8h9r62othg+LhBL6hb8XriSNQ/xZ13O6F7USdTSUfQwM0jj3VxlpfoJ+87skkVNTe5/I/U5yWxuTsHIrt8l2PfOJcq8NOWfZFqHGElzvVnx2s4a6Pc01UyaPCvqjq6QPgal724EnokXt4k2pdve0oiXmq9YlsBVY5POLCl40=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5971.eurprd04.prod.outlook.com (20.178.113.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.18; Wed, 18 Sep 2019 09:09:25 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2263.023; Wed, 18 Sep 2019
 09:09:25 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: RE: [PATCH V6 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH V6 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVbHNdulW1qSzh8kulKbzCOfhGf6cwJKgAgAECNoA=
Date: Wed, 18 Sep 2019 09:09:25 +0000
Message-ID: <AM0PR04MB44813D62FF7E6762BB17460E888E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1568626884-5189-1-git-send-email-peng.fan@nxp.com>
 <1568626884-5189-3-git-send-email-peng.fan@nxp.com>
 <20190917183856.2342beed@donnerap.cambridge.arm.com>
In-Reply-To: <20190917183856.2342beed@donnerap.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 89a6eb21-a072-447e-9ec2-08d73c17e72c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5971; 
x-ms-traffictypediagnostic: AM0PR04MB5971:|AM0PR04MB5971:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB59715A2F76C52CC987630821888E0@AM0PR04MB5971.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01644DCF4A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(136003)(366004)(39860400002)(396003)(189003)(199004)(305945005)(2906002)(74316002)(6306002)(9686003)(71190400001)(6506007)(6246003)(6436002)(11346002)(55016002)(14444005)(186003)(26005)(99286004)(86362001)(71200400001)(102836004)(7696005)(15650500001)(76176011)(446003)(256004)(7736002)(6916009)(5660300002)(52536014)(66066001)(229853002)(4326008)(3846002)(81166006)(66446008)(45080400002)(44832011)(486006)(8936002)(81156014)(33656002)(316002)(476003)(54906003)(8676002)(14454004)(76116006)(478600001)(6116002)(966005)(66476007)(66556008)(25786009)(64756008)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5971;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3fsSY39dA+TpFeGxU2DyTsEPcZXnX4RPbOVloEFCF2waD7b/5hFDbfxpMS1o9N5G/ghLnufM9ptkVRoJWyYbQV2oaikQu/tPAvW5iJPBc7FJ2Md2/v2b8vdrikhow7PxSCO0AdTKrk6+x2f0+mhK03li0HqQD39AgAVabvqqVNI/n9JicVGaIm7fi7SYyY4tSYu83qhpfHsKXKK6ee0K5GHfLv+2saKQzt/8NfAqvf/miye8Dre7ZIHOWiyQHHOF3b+MQeVzU5U+ZS42bz5nkfV+o6U8B3M9WWkFhF4S3Sv/eitPNP8EJE39WNw7+2y82pcESWYYqmfqDV2Mwe3KQWw8R+ro0A4uc+CPCQ0Ynzhc9H1L1ZvLO+n+DTfPOU5hLBFL3npwjGqDu1nU9C9pBxQn4yuP0/JaOlwPnU+o8kw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89a6eb21-a072-447e-9ec2-08d73c17e72c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2019 09:09:25.5220 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3k9clCQ5s4RBuipucZnJQDZXF+5xgXfR7LggwIKBeSjYd1gnXXdplW9jC9BrEF0w/6ZY4/g14Zc3ANr/c6ds1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5971
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_020931_308385_1BA17078 
X-CRM114-Status: GOOD (  33.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andre,

> Subject: Re: [PATCH V6 2/2] mailbox: introduce ARM SMC based mailbox
> 
> On Mon, 16 Sep 2019 09:44:41 +0000
> Peng Fan <peng.fan@nxp.com> wrote:
> 
> Hi,
> 
> looks quite good now, some smaller comments below.
> I think the only thing left is the "function ID passed by the client" topic.
> 
> Have you tried using this interface using hvc, for instance in KVM or Xen? For

No. I do not have that implementation in hypervisor.

> instance to provide access to a clock for a passed-through platform device?
> Another use case that pops up from time to time is GPIO for guests. This
> sounds like a use case for using the register interface, also we could use the
> hvc return value.
> 
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
> n%40nxp.com%7C58a1ed4078264d14958f08d73b95ed7e%7C686ea1d3bc2b
> 4c6fa92cd
> >
> 99c5c301635%7C0%7C1%7C637043387484474825&amp;sdata=Cp1zlhlpQbg
> BsWu9ZDV
> > RKkXmd6kvUR%2BtPO7EPR7YLpA%3D&amp;reserved=0
> >
> > Cc: Andre Przywara <andre.przywara@arm.com>
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  drivers/mailbox/Kconfig           |   7 ++
> >  drivers/mailbox/Makefile          |   2 +
> >  drivers/mailbox/arm-smc-mailbox.c | 167
> > ++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 176 insertions(+)
> >  create mode 100644 drivers/mailbox/arm-smc-mailbox.c
> >
> > diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig index
> > ab4eb750bbdd..7707ee26251a 100644
> > --- a/drivers/mailbox/Kconfig
> > +++ b/drivers/mailbox/Kconfig
> > @@ -16,6 +16,13 @@ config ARM_MHU
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
> > index 000000000000..c84aef39c8d9
> > --- /dev/null
> > +++ b/drivers/mailbox/arm-smc-mailbox.c
> > @@ -0,0 +1,167 @@
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
> > +#include <linux/mailbox_controller.h> #include <linux/module.h>
> > +#include <linux/platform_device.h>
> > +
> > +struct arm_smc_chan_data {
> > +	unsigned int function_id;
> > +};
> > +
> > +struct arm_smccc_mbox_cmd {
> > +	unsigned int function_id;
> > +	union {
> > +		unsigned int args_smccc32[6];
> > +		unsigned long args_smccc64[6];
> 
> Shouldn't this be u32 and u64 here, as the data type has this explicit length in
> the SMCCC?

ok

> 
> > +	};
> > +};
> 
> If this is the data structure that this mailbox controller uses, I would expect
> this to be documented somewhere, or even exported.

Export this structure in include/linux/mailbox/smc-mailbox.h?

> 
> And again, I don't like the idea of having the function ID in here.

You mean function_id in arm_smccc_mbox_cmd is not good?

> 
> > +
> > +typedef unsigned long (smc_mbox_fn)(unsigned int, unsigned long,
> > +				    unsigned long, unsigned long,
> > +				    unsigned long, unsigned long,
> > +				    unsigned long);
> > +static smc_mbox_fn *invoke_smc_mbox_fn;
> > +
> > +static int arm_smc_send_data(struct mbox_chan *link, void *data) {
> > +	struct arm_smc_chan_data *chan_data = link->con_priv;
> > +	struct arm_smccc_mbox_cmd *cmd = data;
> > +	unsigned long ret;
> > +	u32 function_id;
> > +
> > +	function_id = chan_data->function_id;
> > +	if (!function_id)
> > +		function_id = cmd->function_id;
> > +
> > +	if (function_id & BIT(30)) {
> 
> 	if (ARM_SMCCC_IS_64(function_id)) {

ok

> 
> > +		ret = invoke_smc_mbox_fn(function_id, cmd->args_smccc64[0],
> > +					 cmd->args_smccc64[1],
> > +					 cmd->args_smccc64[2],
> > +					 cmd->args_smccc64[3],
> > +					 cmd->args_smccc64[4],
> > +					 cmd->args_smccc64[5]);
> > +	} else {
> > +		ret = invoke_smc_mbox_fn(function_id, cmd->args_smccc32[0],
> > +					 cmd->args_smccc32[1],
> > +					 cmd->args_smccc32[2],
> > +					 cmd->args_smccc32[3],
> > +					 cmd->args_smccc32[4],
> > +					 cmd->args_smccc32[5]);
> > +	}
> > +
> > +	mbox_chan_received_data(link, (void *)ret);
> > +
> > +	return 0;
> > +}
> > +
> > +static unsigned long __invoke_fn_hvc(unsigned int function_id,
> > +				     unsigned long arg0, unsigned long arg1,
> > +				     unsigned long arg2, unsigned long arg3,
> > +				     unsigned long arg4, unsigned long arg5) {
> > +	struct arm_smccc_res res;
> > +
> > +	arm_smccc_hvc(function_id, arg0, arg1, arg2, arg3, arg4,
> > +		      arg5, 0, &res);
> > +	return res.a0;
> > +}
> > +
> > +static unsigned long __invoke_fn_smc(unsigned int function_id,
> > +				     unsigned long arg0, unsigned long arg1,
> > +				     unsigned long arg2, unsigned long arg3,
> > +				     unsigned long arg4, unsigned long arg5) {
> > +	struct arm_smccc_res res;
> > +
> > +	arm_smccc_smc(function_id, arg0, arg1, arg2, arg3, arg4,
> > +		      arg5, 0, &res);
> > +	return res.a0;
> > +}
> > +
> > +static const struct mbox_chan_ops arm_smc_mbox_chan_ops = {
> > +	.send_data	= arm_smc_send_data,
> > +};
> > +
> > +static int arm_smc_mbox_probe(struct platform_device *pdev) {
> > +	struct device *dev = &pdev->dev;
> > +	struct mbox_controller *mbox;
> > +	struct arm_smc_chan_data *chan_data;
> > +	int ret;
> > +	u32 function_id = 0;
> > +
> > +	if (of_device_is_compatible(dev->of_node, "arm,smc-mbox"))
> > +		invoke_smc_mbox_fn = __invoke_fn_smc;
> > +	else
> > +		invoke_smc_mbox_fn = __invoke_fn_hvc;
> > +
> > +	mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
> > +	if (!mbox)
> > +		return -ENOMEM;
> > +
> > +	mbox->num_chans = 1;
> > +	mbox->chans = devm_kzalloc(dev, sizeof(*mbox->chans), GFP_KERNEL);
> > +	if (!mbox->chans)
> > +		return -ENOMEM;
> > +
> > +	chan_data = devm_kzalloc(dev, sizeof(*chan_data), GFP_KERNEL);
> > +	if (!chan_data)
> > +		return -ENOMEM;
> > +
> > +	of_property_read_u32(dev->of_node, "arm,func-id", &function_id);
> > +	chan_data->function_id = function_id;
> > +
> > +	mbox->chans->con_priv = chan_data;
> > +
> > +	mbox->txdone_poll = false;
> > +	mbox->txdone_irq = false;
> 
> Don't we need to provide something to confirm reception to the client? In our
> case we can set this as soon as the smc/hvc returns.

As smc/hvc returns, it means the transfer is over and receive is done.

Thanks,
Peng.

> 
> Cheers,
> Andre.
> 
> > +	mbox->ops = &arm_smc_mbox_chan_ops;
> > +	mbox->dev = dev;
> > +
> > +	platform_set_drvdata(pdev, mbox);
> > +
> > +	ret = devm_mbox_controller_register(dev, mbox);
> > +	if (ret)
> > +		return ret;
> > +
> > +	dev_info(dev, "ARM SMC mailbox enabled.\n");
> > +
> > +	return ret;
> > +}
> > +
> > +static int arm_smc_mbox_remove(struct platform_device *pdev) {
> > +	struct mbox_controller *mbox = platform_get_drvdata(pdev);
> > +
> > +	mbox_controller_unregister(mbox);
> > +	return 0;
> > +}
> > +
> > +static const struct of_device_id arm_smc_mbox_of_match[] = {
> > +	{ .compatible = "arm,smc-mbox", },
> > +	{ .compatible = "arm,hvc-mbox", },
> > +	{},
> > +};
> > +MODULE_DEVICE_TABLE(of, arm_smc_mbox_of_match);
> > +
> > +static struct platform_driver arm_smc_mbox_driver = {
> > +	.driver = {
> > +		.name = "arm-smc-mbox",
> > +		.of_match_table = arm_smc_mbox_of_match,
> > +	},
> > +	.probe		= arm_smc_mbox_probe,
> > +	.remove		= arm_smc_mbox_remove,
> > +};
> > +module_platform_driver(arm_smc_mbox_driver);
> > +
> > +MODULE_AUTHOR("Peng Fan <peng.fan@nxp.com>");
> > +MODULE_DESCRIPTION("Generic ARM smc mailbox driver");
> > +MODULE_LICENSE("GPL v2");


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
