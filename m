Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E17E426D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cIAvzGuZcHqBh2kB9YJ55ZSPieegcEsi9ywgNcvsrjs=; b=EuYwfwB6WsNFO4
	by435YNUMKr1g1C8GHkuzzKfoa9r40vcheCqXwbIVfE5jSsQchFtw2jgYuuTbg8D0gUju9gRxC2Ao
	ZWFdjQ/R7SMu8xh2EnKEB/gfOdlumHieCcyG+qU+qHL5FzUDhYTz5Ref5TiC+B5d1jJZcbrKuZYck
	kGlJ0cGLCa+7fLHJDif5mpfi3V/ETgHBz5PTwGV1fn8+uYhdeo+tXj3agTLo6EdlI44u4/+hQY/87
	f2aIvVKdtxGwbYgJtdDZi7F/4WxPAkBSsxKHh4+j2lF5rnIvu51KRtmnLogQdWysgWE3p3oxMYPp9
	iyJtvNg/8nxa2TpxOXWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2qa-0000R7-Qv; Wed, 12 Jun 2019 12:59:24 +0000
Received: from mail-vi1eur04on0611.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::611]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2qP-0000QK-VF
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:59:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0eiQuoLaZMrZTZA1bkozm43LvfgCp82ZwQs4JVcHA4c=;
 b=HPPgo62U67pC4rgBuQC0QkiDTRL5fFhMDPqU0p65fVsvB8swhEpP1sRqixS2COz/MbTwzhKT0NLdmoCF6IUUIya9YcuefRuK1NW6AupLAkpe0QwMazfqoXIzAl/Z577Iv2oCVKkb73+hoxugIucu6fJGOhT6D0bQnLMULxspP2s=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4274.eurprd04.prod.outlook.com (52.134.124.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Wed, 12 Jun 2019 12:59:05 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6090:1f0b:b85b:8015]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6090:1f0b:b85b:8015%3]) with mapi id 15.20.1965.017; Wed, 12 Jun 2019
 12:59:05 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Andre Przywara <andre.przywara@arm.com>, Florian Fainelli
 <f.fainelli@gmail.com>
Subject: RE: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVGeZUO66GnquMY06cfK/cKOI4kaaKICEAgASBagCABYFsIIAD5WUg
Date: Wed, 12 Jun 2019 12:59:04 +0000
Message-ID: <AM0PR04MB4481617CD1DFA9C01470B38E88EC0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com>
 <866db682-785a-e0a6-b394-bb65c7a694c6@gmail.com>
 <20190606142056.68272dc0@donnerap.cambridge.arm.com>
 <AM0PR04MB448168C72F1D40C1B9BEB1F788130@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB448168C72F1D40C1B9BEB1F788130@AM0PR04MB4481.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 72fb6e7b-9b8b-4987-b9a9-08d6ef35bff4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4274; 
x-ms-traffictypediagnostic: AM0PR04MB4274:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB4274385572B36F198C23E43488EC0@AM0PR04MB4274.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(366004)(136003)(396003)(199004)(189003)(476003)(446003)(11346002)(64756008)(71190400001)(71200400001)(66446008)(3846002)(66556008)(44832011)(66946007)(66476007)(478600001)(86362001)(45080400002)(76116006)(6116002)(316002)(966005)(5660300002)(54906003)(186003)(110136005)(256004)(486006)(52536014)(73956011)(14454004)(26005)(2906002)(76176011)(53546011)(102836004)(66066001)(4326008)(99286004)(25786009)(7696005)(6506007)(55016002)(68736007)(6246003)(9686003)(53936002)(7736002)(305945005)(15650500001)(81166006)(81156014)(8936002)(6306002)(229853002)(74316002)(6436002)(7416002)(8676002)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4274;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dtjCJnEaVEIVSWTvakMBHc8UGnf56MyGwlZ3OessdL7fr6HqVfUduW01fsOLkHkU9EZn+6Vgdst3yfUrvpgNci6wN2EhXZQemEe8fzoW0TPdBY6RRVwBDSXx0oNpLZq+EYi4RyZNBjZMcxgNSeT8sCtqZnryWkC2tHeDIPoeq1zbOuhUf6RGKaOlUnBG309PPc3fsKurdhvhK9sHHQZQQ0BfqPy8K2PUSGr/TLxTorTbaqkfN8+0XYnomA446i8w6arhXYsDziB3GCXC4LzDiAHKRbYcsxai8ANZ7MyczBjOtlyOAuy8zuCpTf8PamjctK1B8tX8dkR68gE9o7sDTbOGD1RJhzzk8tUyngY3GcRw5mnzbd4ZMe83F3eOcS7PBRBd79hKFrO6NUKIesU8TCPJUAyHKoe4eK1PnrzXx5o=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72fb6e7b-9b8b-4987-b9a9-08d6ef35bff4
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 12:59:05.1665 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4274
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_055914_015222_A0DB4564 
X-CRM114-Status: GOOD (  34.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:611 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "festevam@gmail.com" <festevam@gmail.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andre,

> Subject: RE: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
> 
> Hi Andre,
> > Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
> >
> > On Mon, 3 Jun 2019 09:32:42 -0700
> > Florian Fainelli <f.fainelli@gmail.com> wrote:
> >
> > Hi,
> >
> > > On 6/3/19 1:30 AM, peng.fan@nxp.com wrote:
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
> > > > Modified from Andre Przywara's v2 patch
> > > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2F
> > > > lo
> > > >
> >
> re.kernel.org%2Fpatchwork%2Fpatch%2F812999%2F&amp;data=02%7C01%
> > 7Cpen
> > > >
> >
> g.fan%40nxp.com%7C15c4180b8fe5405d3de808d6ea81d5f1%7C686ea1d3bc
> > 2b4c6
> > > >
> > fa92cd99c5c301635%7C0%7C0%7C636954240720601454&amp;sdata=1Cp
> > WSgTH7lF
> > > > cBKxJnLeIDw%2FDAQJJO%2FVypV1LUU1BRQA%3D&amp;reserved=0
> > > >
> > > > Cc: Andre Przywara <andre.przywara@arm.com>
> > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > > ---
> > >
> > > [snip]
> > >
> > > +#define ARM_SMC_MBOX_USB_IRQ	BIT(1)
> > >
> > > That flag appears unused.
> > >
> > > > +static int arm_smc_mbox_probe(struct platform_device *pdev) {
> > > > +	struct device *dev = &pdev->dev;
> > > > +	struct mbox_controller *mbox;
> > > > +	struct arm_smc_chan_data *chan_data;
> > > > +	const char *method;
> > > > +	bool use_hvc = false;
> > > > +	int ret, irq_count, i;
> > > > +	u32 val;
> > > > +
> > > > +	if (!of_property_read_u32(dev->of_node, "arm,num-chans", &val)) {
> > > > +		if (val < 1 || val > INT_MAX) {
> > > > +			dev_err(dev, "invalid arm,num-chans value %u
> > of %pOFn\n", val,
> > > > +pdev->dev.of_node);
> >
> > Isn't the of_node parameter redundant, because dev_err() already takes
> > care of that?
> 
> I'll remove that.
> 
> >
> > > > +			return -EINVAL;
> > > > +		}
> > > > +	}
> > >
> > > Should not the upper bound check be done against UINT_MAX since val
> > > is an unsigned int?
> >
> > But wouldn't that be somewhat pointless, given that val is a u32? So I
> > guess we could just condense this down to:
> > ...
> > 		if (!val) {
> > ...
> 
> make sense.
> 
> >
> > > > +
> > > > +	irq_count = platform_irq_count(pdev);
> > > > +	if (irq_count == -EPROBE_DEFER)
> > > > +		return irq_count;
> > > > +
> > > > +	if (irq_count && irq_count != val) {
> > > > +		dev_err(dev, "Interrupts not match num-chans\n");
> > >
> > > Interrupts property does not match \"arm,num-chans\" would be more
> > correct.
> >
> > Given that interrupts are optional, do we have to rely on this?
> 
> If there is interrupt property, the interrupts should match channel counts.
> 
> Do we actually
> > need one interrupt per channel?
> 
> I thought about this, provide one interrupt for all channels.
> But there is no good way to let interrupt handlers know which channel
> triggers the interrupt. So I use one interrupt per channel.
> 
> >
> > > > +		return -EINVAL;
> > > > +	}
> > > > +
> > > > +	if (!of_property_read_string(dev->of_node, "method", &method)) {
> > > > +		if (!strcmp("hvc", method)) {
> > > > +			use_hvc = true;
> > > > +		} else if (!strcmp("smc", method)) {
> > > > +			use_hvc = false;
> > > > +		} else {
> > > > +			dev_warn(dev, "invalid \"method\" property: %s\n",
> > > > +				 method);
> > > > +
> > > > +			return -EINVAL;
> > > > +		}
> > >
> > > Having at least one method specified does not seem to be checked
> > > later on in the code, so if I omitted to specify that property, we
> > > would still register the mailbox and default to use "smc" since the
> > > ARM_SMC_MBOX_USE_HVC flag would not be set, would not we want to
> > make
> > > sure that we do have in fact a valid method specified given the
> > > binding documents that property as mandatory?
> > >
> > > [snip]
> > >
> > > > +	mbox->txdone_poll = false;
> > > > +	mbox->txdone_irq = false;
> > > > +	mbox->ops = &arm_smc_mbox_chan_ops;
> > > > +	mbox->dev = dev;
> > > > +
> > > > +	ret = mbox_controller_register(mbox);
> > > > +	if (ret)
> > > > +		return ret;
> > > > +
> > > > +	platform_set_drvdata(pdev, mbox);
> > >
> > > I would move this above mbox_controller_register() that way there is
> > > no room for race conditions in case another part of the driver
> > > expects to have pdev->dev.drvdata set before the mbox controller is
> registered.
> > > Since you use devm_* functions for everything, you may even remove
> > > that call.
> > >
> > > [snip]
> > >
> > > > +#ifndef _LINUX_ARM_SMC_MAILBOX_H_ #define
> > > > +_LINUX_ARM_SMC_MAILBOX_H_
> > > > +
> > > > +struct arm_smccc_mbox_cmd {
> > > > +	unsigned long a0, a1, a2, a3, a4, a5, a6, a7; };
> > >
> > > Do you expect this to be used by other in-kernel users? If so, it
> > > might be good to document how a0 can have a special meaning and be
> > > used as a substitute for the function_id?
> >
> > I don't think we should really expose this outside of the driver. From
> > a mailbox point of view this is just the payload, transported according to the
> SMCCC.
> > Also using "long" here sounds somewhat troublesome.

Long on ARM64 is 64bit, and 32bit on ARM32, so I use long.
Do you forsee any issues?

> >
> > Also, looking at the SMCCC, I only see six parameters in addition to
> > the function identifier. Shall we reflect this here?

a0 is used as function id, not no arm,func-ids provided in dts. a1-a7 are
also passed to smc.
If arm,func-ids is provided, a0 will be omitted just for consistency as above.

You mean write comments in the code for it?

Thanks,
Peng.

> 
> I could move it to driver code. Jassi, do you have any comments?
> 
> Thanks,
> Peng.
> 
> >
> > Cheers,
> > Andre.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
