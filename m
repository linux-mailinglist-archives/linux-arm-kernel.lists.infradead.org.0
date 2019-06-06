Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A8C36A86
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 05:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KBrs93QcqPE7H0HF4RbT7V4kpyiwwqThEaVvgIVolNw=; b=naY0V6DpMbWV9P
	SdCArRawKqioEJ77+VLEFJqDpjhlqve0k2QFGKqu1G3xYpiAAoRfVm9F+OC56BloQJUU38lagRy4i
	MbYRm2wA6YLYBhk7VRR7xDeKgsHj+ccI1zzu0XMLQLapXmVz4zhg04t952ABO5qNRK7hHyKj6b3qf
	h06FSD+2OFcl+RAQuCZSlAwQhs/iBoueZay1B314ou/Uq4VeW550esxhXb1kOFdQ5U77gryyXFIki
	n9YYrLUfNOZTxFm0UliQnSU7bhzS45KMU/FV7k/Y7aqDUOdgWm2b29Bs/hGC+4AtY6STNJ7BL+mwZ
	W0FdEaj/h75csMKfWZMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYjBV-0002le-Au; Thu, 06 Jun 2019 03:35:25 +0000
Received: from mail-ve1eur02on0605.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::605]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYjBL-0002lA-HP
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 03:35:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kGscsX3OIJbzAHdAqp82TDK6y2DtFAkBLBWlJZig1Cw=;
 b=JfFzytL+Sxbtz8d2mnvrcXVu6vnbmolPuMslZAJBmy4AxjFeoqu9wXwt3uNobiIBkectreyfixMk77Kj/Ldw2e2Go38+jp+f1xR9UN7lvwHdQHHYyxU1BhSiCqzoQyi4ZjiTG612n2P0rDSOS2VMOGje0hUiR0nwSKNVA248clE=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4050.eurprd04.prod.outlook.com (52.134.91.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Thu, 6 Jun 2019 03:35:11 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6090:1f0b:b85b:8015]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6090:1f0b:b85b:8015%3]) with mapi id 15.20.1943.023; Thu, 6 Jun 2019
 03:35:11 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Florian Fainelli <f.fainelli@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com"
 <sudeep.holla@arm.com>
Subject: RE: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVGeZUO66GnquMY06cfK/cKOI4kaaKICEAgAPbFNA=
Date: Thu, 6 Jun 2019 03:35:11 +0000
Message-ID: <AM0PR04MB44816AA83C8B817F8E6DF6EB88170@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com>
 <866db682-785a-e0a6-b394-bb65c7a694c6@gmail.com>
In-Reply-To: <866db682-785a-e0a6-b394-bb65c7a694c6@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a89990ef-3fdf-409a-c846-08d6ea2ffb37
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4050; 
x-ms-traffictypediagnostic: AM0PR04MB4050:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR04MB405072379E522B3D22FB5F0B88170@AM0PR04MB4050.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(189003)(199004)(14454004)(498600001)(68736007)(45080400002)(44832011)(6436002)(99286004)(52536014)(7736002)(476003)(229853002)(7696005)(55016002)(6116002)(86362001)(76176011)(54906003)(6306002)(110136005)(9686003)(3846002)(102836004)(53546011)(6506007)(2201001)(2906002)(66066001)(64756008)(8936002)(7416002)(966005)(5660300002)(71190400001)(74316002)(66556008)(8676002)(26005)(81156014)(81166006)(486006)(305945005)(76116006)(11346002)(446003)(71200400001)(186003)(73956011)(2501003)(6246003)(256004)(25786009)(33656002)(4326008)(53936002)(15650500001)(66946007)(66476007)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4050;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yYd6AnxcBZLYnfJ73CeBX+2xmIdZI3Q749meM8xfJGORQb+Z3I1Hy7HLTIubd+uOjqXgVD7a86RMyVTlpJCmUrd/CruFgqZ+BN61YHstOqy7HgOZxZ1ZWgaJf4GzkWRzKJKT+kZXNHYpJ5U6j1DFhNUf9zM1KvXXHjIPO7MKcUGzAjG2hJtdyJg9FGEKCwUPPWZuV/mMjZXzGJ0AcLo1Ctu/0bfcGRx+/qrqjciVR1KCCnxW29f+TLJ+OITVUIKD7Bys+rQ3FjynfPOcL3gcKBpT+kr2u5EwAXS8nJe0RyE+k9qRdn2tvpSMJHxLtQtwkAg540ImlLG2XYyDu8timfT7nxCuEMMRMEtuFqTifYsfj4CIRQLhlbZnjZfzfTC0rmfKDZU53zPbojjirNQbAl9SurToL3G7EmXFfXifw5I=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a89990ef-3fdf-409a-c846-08d6ea2ffb37
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 03:35:11.7703 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_203515_682865_5AF2F480 
X-CRM114-Status: GOOD (  24.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:605 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
> 
> On 6/3/19 1:30 AM, peng.fan@nxp.com wrote:
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
> n%40nxp.com%7Caa396ba11ba244111fe408d6e8411fba%7C686ea1d3bc2b4
> c6fa92cd
> >
> 99c5c301635%7C0%7C0%7C636951763738548621&amp;sdata=UlNESNg7I7
> 4TM9xp%2F
> > VMce4CSbMuJ95lh68cQw%2FnQMOw%3D&amp;reserved=0
> >
> > Cc: Andre Przywara <andre.przywara@arm.com>
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> 
> [snip]
> 
> +#define ARM_SMC_MBOX_USB_IRQ	BIT(1)
> 
> That flag appears unused.

I'll remove this in V3.

> 
> > +static int arm_smc_mbox_probe(struct platform_device *pdev) {
> > +	struct device *dev = &pdev->dev;
> > +	struct mbox_controller *mbox;
> > +	struct arm_smc_chan_data *chan_data;
> > +	const char *method;
> > +	bool use_hvc = false;
> > +	int ret, irq_count, i;
> > +	u32 val;
> > +
> > +	if (!of_property_read_u32(dev->of_node, "arm,num-chans", &val)) {
> > +		if (val < 1 || val > INT_MAX) {
> > +			dev_err(dev, "invalid arm,num-chans value %u of %pOFn\n",
> val, pdev->dev.of_node);
> > +			return -EINVAL;
> > +		}
> > +	}
> 
> Should not the upper bound check be done against UINT_MAX since val is an
> unsigned int?

Fix in V3.

> 
> > +
> > +	irq_count = platform_irq_count(pdev);
> > +	if (irq_count == -EPROBE_DEFER)
> > +		return irq_count;
> > +
> > +	if (irq_count && irq_count != val) {
> > +		dev_err(dev, "Interrupts not match num-chans\n");
> 
> Interrupts property does not match \"arm,num-chans\" would be more
> correct.

Fix in V3.

> 
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (!of_property_read_string(dev->of_node, "method", &method)) {
> > +		if (!strcmp("hvc", method)) {
> > +			use_hvc = true;
> > +		} else if (!strcmp("smc", method)) {
> > +			use_hvc = false;
> > +		} else {
> > +			dev_warn(dev, "invalid \"method\" property: %s\n",
> > +				 method);
> > +
> > +			return -EINVAL;
> > +		}
> 
> Having at least one method specified does not seem to be checked later on in
> the code, so if I omitted to specify that property, we would still register the
> mailbox and default to use "smc" since the ARM_SMC_MBOX_USE_HVC flag
> would not be set, would not we want to make sure that we do have in fact a
> valid method specified given the binding documents that property as
> mandatory?

When arm_smc_send_data, it will check ARM_SMC_MBOX_USE_HVC,
you mean there are other places needs this flag check?

> 
> [snip]
> 
> > +	mbox->txdone_poll = false;
> > +	mbox->txdone_irq = false;
> > +	mbox->ops = &arm_smc_mbox_chan_ops;
> > +	mbox->dev = dev;
> > +
> > +	ret = mbox_controller_register(mbox);
> > +	if (ret)
> > +		return ret;
> > +
> > +	platform_set_drvdata(pdev, mbox);
> 
> I would move this above mbox_controller_register() that way there is no room
> for race conditions in case another part of the driver expects to have
> pdev->dev.drvdata set before the mbox controller is registered.

Right.

> Since you use devm_* functions for everything, you may even remove that
> call.

You mean remove " platform_set_drvdata(pdev, mbox);" ?

> 
> [snip]
> 
> > +#ifndef _LINUX_ARM_SMC_MAILBOX_H_
> > +#define _LINUX_ARM_SMC_MAILBOX_H_
> > +
> > +struct arm_smccc_mbox_cmd {
> > +	unsigned long a0, a1, a2, a3, a4, a5, a6, a7; };
> 
> Do you expect this to be used by other in-kernel users? If so, it might be good
> to document how a0 can have a special meaning and be used as a substitute
> for the function_id?

This was to address comments here:
https://lore.kernel.org/patchwork/patch/812999/#1010433

Thanks,
Peng.

> --
> Florian
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
