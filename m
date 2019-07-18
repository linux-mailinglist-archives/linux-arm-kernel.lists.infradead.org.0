Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 195C36C4A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 03:48:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfO03crCl82OSUbc8SlOs2K0YDKIwiBJjJPLtPH+mGk=; b=Pt0XCCrnUl+XEU
	6oi2KDh6Idv74N5clWCyDW4tvSIHDDXWte0YPewarzvEGKvbLueT/m0KKWOeuFcxEwff4HwOR1hPq
	CXoHKoXsJVPiDs/G/rSioKU7xdwME7V6RpI/rqC+Y1lp+49WGbi2YnXCCNo5cB6GYQ+Ym3QjU5EZp
	XfHDD1QcG8iWV5pBYVo/7osWlRYv0BhLSohA5jW6Yn2YQsgjxqa3qxDby3bqyLTK0la3Psq5zrCG7
	7o+CtnbuWTiNc8c2zlBLsKwxa0K3boif7ZrJO5VySKv5X3tfmbSp8wnJpPrAQq0YRseQ1mtd+4NJs
	R8mk8N/8B1lthIp+wSMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnvWq-0001mb-Ls; Thu, 18 Jul 2019 01:48:16 +0000
Received: from mail-eopbgr20071.outbound.protection.outlook.com ([40.107.2.71]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnvWc-0001m3-3a
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 01:48:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VFWST5xYZIImVrjanaptaRiR7f3ERCx5pNOulZrtVF7p47C8uCXNerjRgxaC+p9ee5af0oqSduLKOGz+bfGPyftKYCFYrJolf2op/bHHHpv/p6UuwHS1AOY3sUtP047h98JcqgLQ9C5NRtqTPf3VUB2QVwimP+XWWpY9T3ISvXvJo5xn+dchmS0fTPLS/YeyWMDnUuzcSvbqlCf/IYWGPcQHfCiVu/GvMmwnPv7OsophYvT6mi/e4J07XUmc9W9c59ckE6tf+H6TzcCku2ljfD0Qu5pUawEM9s3QBnJKEpoKL0PKUXhe2/WLUbgh6h7qTkstnOz4YlpMXptkwN4mJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2twZC6xFk/dBHz3GO9yhxJ+Mpi5UhgQXCDWFNfgxIUA=;
 b=gY1NddcrVBLEJY0oKMPoHoJaOUObm7hKK4jYtGvBiKmjFR2ErgAYlnhyrsUw81lkoq+r8eVC1opb13VPto0A0ZDrlLjI4RIK5Du7AMEfZeP7t+zYySmSTiVVV/gUSykakpZ9PCMPcvudlsgG6WtI8no1Z3ENzyhHLZnxmjnTPdzWTK/uw/utzuJS03YOeyVsqeFPcl9bHSpC9AbCLIp9LeXW25jXA7lGj658Dphrm3kXnJ2vxx6Ca94qdAGHj6EXAhbs0bLMFto60X9wSd1UGuG2SSXP0ZB7MsWJnzasbMb1vkXbE6UN+anhOQep6SUd8NOaoj9ID6rC7JJw53ib5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2twZC6xFk/dBHz3GO9yhxJ+Mpi5UhgQXCDWFNfgxIUA=;
 b=gBNLH2dThiGede1EohuQVk5gkTYYgEot62KstCrNB7LxCyx0xrFmiGgVtz7oX5En4poYyL+e+iWZXahM0skQOIUJgdl/PGaCcpSxMutWYsggeajwA4WzxEkslzI6oXsp1hI+dInncbPZuObgmsdSaeScD1kRsKJdfScTksYYfgc=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4434.eurprd04.prod.outlook.com (52.135.145.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.11; Thu, 18 Jul 2019 01:47:57 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47%5]) with mapi id 15.20.2094.011; Thu, 18 Jul 2019
 01:47:56 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH v3 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Topic: [PATCH v3 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Index: AQHVOvV8miufREPgWk29kTcXKZEuBabPFAyAgACKRHA=
Date: Thu, 18 Jul 2019 01:47:56 +0000
Message-ID: <AM0PR04MB448136F19FBE4674E56A7A4288C80@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1563184103-8493-1-git-send-email-peng.fan@nxp.com>
 <1563184103-8493-2-git-send-email-peng.fan@nxp.com>
 <20190717172801.GG18370@e107155-lin>
In-Reply-To: <20190717172801.GG18370@e107155-lin>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ee44e0cf-a5f6-496e-0efd-08d70b21f514
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4434; 
x-ms-traffictypediagnostic: AM0PR04MB4434:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB44347738AD325C39D804BE8888C80@AM0PR04MB4434.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01026E1310
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(376002)(366004)(346002)(199004)(189003)(186003)(7696005)(44832011)(26005)(68736007)(76176011)(486006)(99286004)(102836004)(6506007)(53936002)(15650500001)(14444005)(33656002)(6436002)(52536014)(3846002)(2906002)(64756008)(81156014)(256004)(476003)(11346002)(446003)(8676002)(55016002)(6306002)(9686003)(6116002)(54906003)(86362001)(14454004)(316002)(25786009)(478600001)(6246003)(7736002)(4326008)(6916009)(8936002)(229853002)(71200400001)(305945005)(76116006)(66556008)(5660300002)(81166006)(74316002)(66446008)(66946007)(66476007)(66066001)(71190400001)(45080400002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4434;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0NDOuc5lW4VFCnlE9V6+sZ37j4zQRirOXcOL80SIWoOfTSEz9vHNZTrEOvQ1oxWdOh6pI3rMiNa7LXJpPLZ841EqWDdB8l4OPADQElMvNTcyfHAWqsEDfpgcsAD6t2tmXi5Kkm+5QefaojeJ5DSgP2tSV47Q9i1yDye6J1iHeUQC6ODkEBLxsU2hvMLrP0N1JkFHUY4vA9mUp9WUUnPOwXdHv9tabyO+fN0FFoGNpR6FF55kLLuOrzPzyBtv2OkTOjf+vGAGDiYE27YnqmwhzA6yfWly+oADg+1egp+REThc+bbwdWIZ8fabGsddYW1moF4gIhHmSFYtCpfyonPf0R2s1JKkLij661Fb+7uv0+PyivulsOV49BY6ue6NDM8TjKRpsqLGktm/WmZCt7fHS6NuknCJ3WRgGJ81XvIGAEk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee44e0cf-a5f6-496e-0efd-08d70b21f514
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2019 01:47:56.9253 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4434
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_184802_159052_69436A2A 
X-CRM114-Status: GOOD (  33.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.71 listed in list.dnswl.org]
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
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

> Subject: Re: [PATCH v3 1/2] dt-bindings: mailbox: add binding doc for the ARM
> SMC/HVC mailbox
> 
> This looks much better now.
> 
> On Mon, Jul 15, 2019 at 10:10:10AM +0000, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > The ARM SMC/HVC mailbox binding describes a firmware interface to
> > trigger actions in software layers running in the EL2 or EL3 exception levels.
> > The term "ARM" here relates to the SMC instruction as part of the ARM
> > instruction set, not as a standard endorsed by ARM Ltd.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >
> > V3:
> >  Convert to yaml
> >  Drop interrupt
> >  Introudce transports to indicate mem/reg  The func id is still kept
> > as optional, because like SCMI it only  cares about message.
> >
> > V2:
> >  Introduce interrupts as a property.
> >
> >  .../devicetree/bindings/mailbox/arm-smc.yaml       | 124
> +++++++++++++++++++++
> >  1 file changed, 124 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > new file mode 100644
> > index 000000000000..da9b1a03bc4e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > @@ -0,0 +1,124 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause) %YAML 1.2
> > +---
> > +$id:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> >
> +cetree.org%2Fschemas%2Fmailbox%2Farm-smc.yaml%23&amp;data=02%7
> C01%7Cp
> >
> +eng.fan%40nxp.com%7Cb5039d50ce8c40928edb08d70adc20f9%7C686ea1
> d3bc2b4c
> >
> +6fa92cd99c5c301635%7C0%7C1%7C636989812923178414&amp;sdata=UT
> 7r2vOLX4a
> > +tv7Yfh750wdSXSh2ZPxeJOXLWl5yACK0%3D&amp;reserved=0
> > +$schema:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> >
> +cetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Cpe
> ng.fan%
> >
> +40nxp.com%7Cb5039d50ce8c40928edb08d70adc20f9%7C686ea1d3bc2b4c
> 6fa92cd9
> >
> +9c5c301635%7C0%7C1%7C636989812923178414&amp;sdata=3Gjn1NQtO
> PbvfTvyN3X
> > +b89%2BvvGO2ff6DpGQUQejGAzU%3D&amp;reserved=0
> > +
> > +title: ARM SMC Mailbox Interface
> > +
> > +maintainers:
> > +  - Peng Fan <peng.fan@nxp.com>
> > +
> > +description: |
> > +  This mailbox uses the ARM smc (secure monitor call) and hvc
> > +(hypervisor
> > +  call) instruction to trigger a mailbox-connected activity in
> > +firmware,
> > +  executing on the very same core as the caller. By nature this
> > +operation
> > +  is synchronous and this mailbox provides no way for asynchronous
> > +messages
> > +  to be delivered the other way round, from firmware to the OS, but
> > +  asynchronous notification could also be supported. However the
> > +value of
> > +  r0/w0/x0 the firmware returns after the smc call is delivered as a
> > +received
> > +  message to the mailbox framework, so a synchronous communication
> > +can be
> > +  established, for a asynchronous notification, no value will be returned.
> > +  The exact meaning of both the action the mailbox triggers as well
> > +as the
> > +  return value is defined by their users and is not subject to this binding.
> > +
> > +  One use case of this mailbox is the SCMI interface, which uses
> > + shared memory  to transfer commands and parameters, and a mailbox
> to
> > + trigger a function  call. This allows SoCs without a separate
> > + management processor (or when  such a processor is not available or
> > + used) to use this standardized  interface anyway.
> > +
> > +  This binding describes no hardware, but establishes a firmware
> interface.
> > +  Upon receiving an SMC using one of the described SMC function
> > + identifiers,  the firmware is expected to trigger some mailbox connected
> functionality.
> > +  The communication follows the ARM SMC calling convention.
> > +  Firmware expects an SMC function identifier in r0 or w0. The
> > + supported  identifiers are passed from consumers, or listed in the
> > + the arm,func-ids  properties as described below. The firmware can
> > + return one value in  the first SMC result register, it is expected
> > + to be an error value,  which shall be propagated to the mailbox client.
> > +
> > +  Any core which supports the SMC or HVC instruction can be used, as
> > + long as  a firmware component running in EL3 or EL2 is handling these
> calls.
> > +
> > +properties:
> > +  compatible:
> > +    const: arm,smc-mbox
> > +
> > +  "#mbox-cells":
> > +    const: 1
> > +
> > +  arm,num-chans:
> > +    description: The number of channels supported.
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +
> > +  method:
> > +    items:
> > +      - enum:
> > +          - smc
> > +          - hvc
> > +
> > +  transports:
> > +    items:
> > +      - enum:
> > +          - mem
> > +          - reg
> > +
> > +  arm,func-ids:
> > +    description: |
> > +      An array of 32-bit values specifying the function IDs used by each
> > +      mailbox channel. Those function IDs follow the ARM SMC calling
> > +      convention standard [1].
> > +
> > +      There is one identifier per channel and the number of supported
> > +      channels is determined by the length of this array.
> > +    minItems: 0
> > +    maxItems: 4096   # Should be enough?
> 
> I am new to yaml, is there a way to say the number of entries here must
> match arm,num-chans ? And not sure if min/maxItems matter then ?

I am also new to yaml, Rob might have ideas.

> 
> > +
> > +required:
> > +  - compatible
> > +  - "#mbox-cells"
> > +  - arm,num-chans
> > +  - transports
> > +  - method
> > +
> 
> Why is arm,func-ids optional ? Is there any standard arm,func-ids we can
> resort to. Sorry I know you expect ARM Ltd to answer that, but I just want to
> raise the point that we don't have one today and hence it can't be optional. Or
> I am missing something ?

In the v3 patchset, Jassi expected the id be passed from client firmware driver,
but you said scmi is expected a only message protocol. So here I still keep this
as optional, if specified in dts, the mailbox driver will use it. If not specificed
in dts, the mailbox driver expect the client firmware driver pass the func id to
mailbox driver.

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
