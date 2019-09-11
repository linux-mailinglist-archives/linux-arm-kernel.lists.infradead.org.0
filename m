Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5510AF58C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 07:59:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1s9dHLG18Z+XIu+KglPyjAzdVjYm1i+Jw1gyZ11GjbA=; b=gMsiH4vTxkCorr
	1JezPmT9bdhMA6VMJXqpHMh+HIQRQuVY/CP232lnllAEN8WoKaYzD0rRp8BeB7fW/diKgyKu6pHO+
	3Z2041qVdf3kDdQNylxb9oe57kDJbt28MuKS9vMHW8Rxfl/VN9IFN6G8dy+nHKYIpgzJ0Zq8knm+a
	40vCPil/u9YkTl6oGao/kna7HlXt1evtfZ2I7csk8d9aoDSviCyNJp8D4H/azdpuaDcEmYoblYCYi
	LdMtCP/GwI8H+gTEcpgzKWljnAbOD4htm0QR7Td9nJdioA2aL9oEIObTw2Lwx8UFnUHX1bwiAm7KI
	2imt3Ru2BvZKkqBd3JYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7veX-00034x-8r; Wed, 11 Sep 2019 05:58:53 +0000
Received: from mail-vi1eur04on0631.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::631]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7veL-00034c-BN
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 05:58:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b2LeWQOWk1Nt+jtCcHEbdQlMgAI5YIkh4ITLAppN0HSDX1RCxLogVC6CdyR84Bx5Lgd/tV2Ixm7A3NIeQmNc2mWdJf9jiUSVKxKP6RChDfLb3Jr7dYjPZ3H1acGLQYud1ZVkEnbUEIXso51mpMOMMbEM2L2IyLWY5bmC8h3JPGHm+C30DghPqCk9Y9JSOZ9nX4xGlbh5t1u+AJlxUzXeDt8XRCMdw4X8lw/dBRtYExGaLZ8SppsOegOSN0tuZDjCmLvA0bLYEkkG3LwzwFtaOUJpxHEdxGSD5Tk42KzGmF3uVmI9fnnsG2xA31YH0DoaUQMWA4wQel2OCwcLa883DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zYSz0zxUoxGrVmISxfrYy+9tIdGEF+N2iVdWQYpL78s=;
 b=L2G78dL3Ha9lYpAweLz4Gau8z44TrG89zTklk2S9BvZbYLryO/AVE2OU6u21w6trBYNKycgZg/VNi2gc0JxldSYX5YKnRFk0Zv99GFq/wVqyy5YjMbyo0aE8Fl+7ZPq09nZpva+v0wGnl1O/7WshEDjCbyRUIwSXrL+0dvZySfgs6DlamUp0iWZ811f3DeDBTdwM4UVI/HOpLvZdCwBI55QC1hSkjy+Gqs2nVreWJh/dKDDlkcqzadUAV/pVfac4GgAIpGDh/gNhCWUeR2sDruyXIN8+edsm4W5RyH2jadW8ELvZS7RC7nEODmsTPCQIi8mfI1x8yMp9Bb7x8C1JfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zYSz0zxUoxGrVmISxfrYy+9tIdGEF+N2iVdWQYpL78s=;
 b=jjxGYfgqPUg+0LWDkBqvI5z2OAycUHwV9YxwweM5QQYYzkUiDptzweUZErQvEkHRKVF0/a7hquNp/0XSeKdnLdXLPhLFHeQfvyJJFKmHOfyTcTv8hnqT9so9t6+xM7CsrayaLK3+7tP4BobP9awYdshBAgCLMwFemsUqV57KG04=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4660.eurprd04.prod.outlook.com (52.135.148.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Wed, 11 Sep 2019 05:58:10 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 05:58:10 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: RE: [PATCH v5 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH v5 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVXU0ae8K1wuPrRECT1HUVPDQ2yacjj7UAgAJQQcA=
Date: Wed, 11 Sep 2019 05:58:09 +0000
Message-ID: <AM0PR04MB4481D4A3AB97C57C1403458D88B10@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-3-git-send-email-peng.fan@nxp.com>
 <20190909164216.0abe640b@donnerap.cambridge.arm.com>
In-Reply-To: <20190909164216.0abe640b@donnerap.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8b91b6c6-bd9c-432c-5103-08d7367d0655
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4660; 
x-ms-traffictypediagnostic: AM0PR04MB4660:|AM0PR04MB4660:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB46604D5C10499CB1054C7CB688B10@AM0PR04MB4660.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(376002)(346002)(39860400002)(396003)(199004)(189003)(186003)(71200400001)(7696005)(476003)(966005)(7736002)(53936002)(14454004)(486006)(305945005)(15650500001)(45080400002)(6306002)(74316002)(9686003)(6436002)(446003)(33656002)(66066001)(478600001)(55016002)(3846002)(81166006)(81156014)(8676002)(6116002)(8936002)(6916009)(6246003)(25786009)(102836004)(52536014)(5660300002)(86362001)(26005)(11346002)(76176011)(30864003)(66476007)(66556008)(64756008)(316002)(66446008)(76116006)(229853002)(14444005)(4326008)(256004)(99286004)(44832011)(6506007)(2906002)(54906003)(66946007)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4660;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NQu5RukO/6GSZlt5d9pZ5NH9FThCMCB0drp2bk3h+jSZMAZQAgbEpMjcPWrvhf73d0ww09wOShCICy5TnO2KOie5Hj+nrSaubtSJdNp3j/wCiEp4xtL86QNLvgoBEqmmfsReBvLdI9JHJZh7oagRNnTulwfhVIZqntVY9dE69H1mONIsnU/YKC8zvSveuE4FRrEH2yso7OjpCV8q92/3rd1oaFxm4B/0th4ID4UK4X9FmE56eJjMu/Kaw89NbU4TYKdMPz6Vbe59nMJB5h0FtRD6/EpWhEuHhtd1djk1dxs1EJjUa6/XB1bWVxi6yK99IimXkfoVlecrH6JDbjS2NR639+BFmutXaQ6tHZ2jVSR+voRUYHuvTud8WAC3B5fUUfdTn8IXNDk37+xZ1lxBvS8WU8BJVOzN9JPrjYN+SpM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b91b6c6-bd9c-432c-5103-08d7367d0655
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 05:58:09.9991 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JHuTAjJt/nwKjAbK44zIAYw9r8rJxyrwoqRV31zKDeoj2pjBogvYd2dlQXCsz5lxREQaJUsDPcQsf39GA9YE0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4660
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_225841_550231_1B64F1E9 
X-CRM114-Status: GOOD (  40.12  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:631 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

> Subject: Re: [PATCH v5 2/2] mailbox: introduce ARM SMC based mailbox
> 
> On Wed, 28 Aug 2019 03:03:02 +0000
> Peng Fan <peng.fan@nxp.com> wrote:
> 
> Hi,
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
> n%40nxp.com%7Cce8d04bcbdea4de6a77a08d7353c4e35%7C686ea1d3bc2b
> 4c6fa92cd
> >
> 99c5c301635%7C0%7C0%7C637036405476727893&amp;sdata=y5%2FI%2B
> w%2FPOypEh
> > zh6gWdXAGMGnl677B7gDZsX%2F5zfAQw%3D&amp;reserved=0
> >
> > Cc: Andre Przywara <andre.przywara@arm.com>
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  drivers/mailbox/Kconfig           |   7 ++
> >  drivers/mailbox/Makefile          |   2 +
> >  drivers/mailbox/arm-smc-mailbox.c | 215
> > ++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 224 insertions(+)
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
> > index 000000000000..76a2ae11ee4d
> > --- /dev/null
> > +++ b/drivers/mailbox/arm-smc-mailbox.c
> > @@ -0,0 +1,215 @@
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
> > +#define ARM_SMC_MBOX_MEM_TRANS	BIT(0)
> > +
> > +struct arm_smc_chan_data {
> > +	u32 function_id;
> > +	u32 chan_id;
> > +	u32 flags;
> > +};
> > +
> > +struct arm_smccc_mbox_cmd {
> > +	unsigned long a0, a1, a2, a3, a4, a5, a6, a7;
> 
> I think this is one or even two registers too long?
> The SMCCC speaks of the function ID in x0/r0 and six arguments, with a
> "client ID" being an optional seventh argument. Looking at the description
> there I believe we cannot use the client ID here for this purpose, as this is
> supposed to be set by a hypervisor before passing on an SMC to EL3 firmware.
> KVM does not allow passing on SMCs in this way.

I'll drop a7.

> 
> Also, while using "long" in here seems to make sense from the mailbox and
> SMC point of view, aliasing this to the mailbox client provided data seems
> dangerous to me, as this exposes the difference between arm32 and arm64
> to the client. I think this is not what we want, the client should not be
> architecture specific.

I see.

> 
> > +};
> > +
> > +typedef unsigned long (smc_mbox_fn)(unsigned long, unsigned long,
> > +				    unsigned long, unsigned long,
> > +				    unsigned long, unsigned long,
> > +				    unsigned long, unsigned long); static smc_mbox_fn
> > +*invoke_smc_mbox_fn;
> > +
> > +static int arm_smc_send_data(struct mbox_chan *link, void *data) {
> > +	struct arm_smc_chan_data *chan_data = link->con_priv;
> > +	struct arm_smccc_mbox_cmd *cmd = data;
> > +	unsigned long ret;
> > +	u32 function_id;
> > +	u32 chan_id;
> > +
> > +	if (chan_data->flags & ARM_SMC_MBOX_MEM_TRANS) {
> > +		if (chan_data->function_id != UINT_MAX)
> > +			function_id = chan_data->function_id;
> > +		else
> > +			function_id = cmd->a0;
> 
> This is somewhat surprising, dangerous and undocumented. We should *not*
> allow mailbox clients to specify the function ID. They could end up using PSCI
> function IDs, for instance, that sounds especially scary if a client driver allows
> userland to set parameters of some sort.

So the func id should not be an optional property in dts?
The check here is to not make func id an optional property and allow client driver
pass function id.

> The function ID is presumably allocated and fixed in the firmware, so it should
> not be dynamic. Any dynamic properties should be done within a function ID
> on the protocol level, by using r1/x1, for instance.
> 
> > +		chan_id = chan_data->chan_id;
> 
> Why is this here? Where is this documented? Isn't this redundant with
> function ID? Or is this meant to be a replacement for it when a client provided
> function ID is used (which is not desired, as mentioned above)?

This will be dropped after move to per channel as a controller.

> 
> > +		ret = invoke_smc_mbox_fn(function_id, chan_id, 0, 0, 0, 0,
> > +					 0, 0);
> > +	} else {
> > +		ret = invoke_smc_mbox_fn(cmd->a0, cmd->a1, cmd->a2, cmd->a3,
> > +					 cmd->a4, cmd->a5, cmd->a6, cmd->a7);
> > +	}
> 
> As mentioned in my reply to the binding patch, I don't see this is necessary.
> Instead of ignoring the client provided data, we should just always pass it on.
> If clients and protocols don't use them, the client could zero it as well, letting
> the firmware side ignore it.

Per Jassi's comments, arm,func-id is an optional property.

So I would change to like below:
+       if (func_id)
+               function_id = chan_data->function_id;
+       else
+               function_id = cmd->a0;
+
+       if (data)
+               ret = invoke_smc_mbox_fn(function_id, cmd->args[1], cmd->args[2], cmd->args[3], cmd->args[4], cmd->args[5], cmd->args[6]);
+       else
+               ret = invoke_smc_mbox_fn(function_id, 0, 0, 0, 0, 0, 0);

And need a check if no data from client and no func_id, need return -EINVAL to client.

How do you think?

> 
> Also this underlines the problem with using "long" above: For 32-bit and 64-bit
> kernels the layout would be different.
> I think the size of each argument should be determined by the calling
> convention class (bit 30) of the function ID.
> The client doesn't know about that one (it's a controller/firmware property),
> so this driver here should split up the stream of data according to SMC64 vs.
> SMC32.
> Does that make sense?

Got it. Check the bit30 to decide use r[] or use x[] for SMCCC.

> 
> > +
> > +	mbox_chan_received_data(link, (void *)ret);
> 
> Not a mailbox expert, but shouldn't we mark the TX operation as complete
> here? Clearly by returning from the SMC the firmware has received the
> request.
> Whether the requested action has completed, is a protocol / mailbox client
> question.

I do not see any API to mark TX completed. My understanding is send_data
return value means complete finished.

> 
> > +
> > +	return 0;
> > +}
> > +
> > +static unsigned long __invoke_fn_hvc(unsigned long function_id,
> > +				     unsigned long arg0, unsigned long arg1,
> > +				     unsigned long arg2, unsigned long arg3,
> > +				     unsigned long arg4, unsigned long arg5,
> > +				     unsigned long arg6)
> > +{
> > +	struct arm_smccc_res res;
> > +
> > +	arm_smccc_hvc(function_id, arg0, arg1, arg2, arg3, arg4,
> > +		      arg5, arg6, &res);
> > +	return res.a0;
> > +}
> > +
> > +static unsigned long __invoke_fn_smc(unsigned long function_id,
> > +				     unsigned long arg0, unsigned long arg1,
> > +				     unsigned long arg2, unsigned long arg3,
> > +				     unsigned long arg4, unsigned long arg5,
> > +				     unsigned long arg6)
> > +{
> > +	struct arm_smccc_res res;
> > +
> > +	arm_smccc_smc(function_id, arg0, arg1, arg2, arg3, arg4,
> > +		      arg5, arg6, &res);
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
> > +	const char *method;
> > +	bool mem_trans = false;
> > +	int ret, i;
> > +	u32 val;
> > +
> > +	if (!of_property_read_u32(dev->of_node, "arm,num-chans", &val)) {
> > +		if (!val) {
> > +			dev_err(dev, "invalid arm,num-chans value %u\n", val);
> > +			return -EINVAL;
> > +		}
> > +	} else {
> > +		return -EINVAL;
> > +	}
> 
> As mentioned, this property should be removed, ...

Yes.

> 
> > +
> > +	if (!of_property_read_string(dev->of_node, "transports", &method)) {
> > +		if (!strcmp("mem", method)) {
> > +			mem_trans = true;
> > +		} else if (!strcmp("reg", method)) {
> > +			mem_trans = false;
> > +		} else {
> > +			dev_warn(dev, "invalid \"transports\" property: %s\n",
> > +				 method);
> > +
> > +			return -EINVAL;
> > +		}
> > +	} else {
> > +		return -EINVAL;
> > +	}
> 
> ... and this one as well.

Yes.

> 
> > +
> > +	if (!of_property_read_string(dev->of_node, "method", &method)) {
> > +		if (!strcmp("hvc", method)) {
> > +			invoke_smc_mbox_fn = __invoke_fn_hvc;
> > +		} else if (!strcmp("smc", method)) {
> > +			invoke_smc_mbox_fn = __invoke_fn_smc;
> > +		} else {
> > +			dev_warn(dev, "invalid \"method\" property: %s\n",
> > +				 method);
> 
> Just a nit, but if this is fatal for the driver, it should be dev_err().

Yes.

> 
> > +
> > +			return -EINVAL;
> > +		}
> > +	} else {
> > +		return -EINVAL;
> > +	}
> > +
> > +	mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
> > +	if (!mbox)
> > +		return -ENOMEM;
> > +
> > +	mbox->num_chans = val;
> 
> This could be replaced with:
> 	mbox->num_chans =
> of_property_count_elems_of_size(dev_of_node(dev),
>                                      "arm,func-ids", sizeof(u32));
> 
> > +	mbox->chans = devm_kcalloc(dev, mbox->num_chans,
> sizeof(*mbox->chans),
> > +				   GFP_KERNEL);
> > +	if (!mbox->chans)
> > +		return -ENOMEM;
> > +
> > +	chan_data = devm_kcalloc(dev, mbox->num_chans, sizeof(*chan_data),
> > +				 GFP_KERNEL);
> > +	if (!chan_data)
> > +		return -ENOMEM;
> > +
> > +	for (i = 0; i < mbox->num_chans; i++) {
> > +		u32 function_id;
> > +
> > +		ret = of_property_read_u32_index(dev->of_node,
> > +						 "arm,func-ids", i,
> > +						 &function_id);
> > +		if (ret)
> > +			chan_data[i].function_id = UINT_MAX;
> > +
> > +		else
> > +			chan_data[i].function_id = function_id;
> 
> As mentioned above, this should go. Any non-0 return value should stop the
> driver probing.

But if the func-id as an optional property, we need use the value from client
driver.

Thanks,
Peng.
> 
> Cheers,
> Andre.
> 
> > +
> > +		chan_data[i].chan_id = i;
> > +
> > +		if (mem_trans)
> > +			chan_data[i].flags |= ARM_SMC_MBOX_MEM_TRANS;
> > +		mbox->chans[i].con_priv = &chan_data[i];
> > +	}
> > +
> > +	mbox->txdone_poll = false;
> > +	mbox->txdone_irq = false;
> > +	mbox->ops = &arm_smc_mbox_chan_ops;
> > +	mbox->dev = dev;
> > +
> > +	platform_set_drvdata(pdev, mbox);
> > +
> > +	ret = devm_mbox_controller_register(dev, mbox);
> > +	if (ret)
> > +		return ret;
> > +
> > +	dev_info(dev, "ARM SMC mailbox enabled with %d chan%s.\n",
> > +		 mbox->num_chans, mbox->num_chans == 1 ? "" : "s");
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
> > +MODULE_AUTHOR("Andre Przywara <andre.przywara@arm.com>");
> > +MODULE_DESCRIPTION("Generic ARM smc mailbox driver");
> > +MODULE_LICENSE("GPL v2");


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
