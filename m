Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1241B6C463
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 03:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yvk27mvlqi3DAU5VHiDELv+uwO8fkOEB02rFAgL08bw=; b=Ych0roTrfal0Ge
	OyZjAVjPgOiogvZoSQ4zkLC+Fb5xql4ouayHM2U0DqgaATwQo64iielx9yXUAdDw5c+T7agKOedoi
	7CXo/h06JgzT6/Fx47/0LpFQ8/aUsEg6z5rwkabtdQUh6iDuLBeygVkljEoRiVmnSIglAXZTERuNv
	qrI3EmoHG4PvQrxQwmPjdtUsq7a03QLzdVPx5PnnwELF5ppqq2k1K8xw1F9DkRWEtepJzSwjsv0i+
	ogqgmxGot8Fj7skGfYqyyshRdYlB0i+9mzTFDXiilT49jdvdBjoatHTUdcIJTYR8r9ZhbHTyOuqqQ
	ZerAqaMLZB6dVjW1gwQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnvRy-00086P-U2; Thu, 18 Jul 2019 01:43:15 +0000
Received: from mail-eopbgr10067.outbound.protection.outlook.com ([40.107.1.67]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnvRm-00085O-Dq
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 01:43:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=On+J+56MN0+7umQWgArBfdK3LAUlyWGe4C+2HAORAKDWLeMydNrxgl2xSgoWmJ+duyHURFELRNB8V+xuOVBGT/jyCXqzt2KXeMAOMNS0PiGuByqBAqkg6KbpK38P7YYhR+yuI7+isIAfBsZ3jfOtymyHSo+7amuN3uOz0k7tDrqkYlR6UaGn+hWhppyCcxPD4Cx2a0cNLVT/pad+qeFS+hFPag++/71Wi6VnyGRKYQJqparbbrqWID3b4bsi41Vzzwp36U1DZdFuDXUGMtBfQRtr3FlSulbUTEJDqddhRejz7LLxUSQBeY8V/zXgY7Z/3VvXAk0/ymkmis48Y7OtiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p/0gsWW2r9nUPujKn+CUXWuDZt7h3TiMWe7F8dTj2xw=;
 b=CoRbN/+C55J2u/94ldHm2wixbWilyEanDf6OzGnN9+YQXAAF/D24gzoTHtbxS4D34rxt/SbW08pXZLnRg5+B9DGa9hWym3FKLaebz6ZS9mndzvJc5fHzSfNZfVqFO8HiLX71Bkdu5qeAER5yHUG2x7ONiVdQa7DRBt2Bn94tjuXPL7UbxjwfXsyQSAWmhhmVsnBZGT76/aWGq6qN30XOsGUd0W9i8WSi3wWGOPVXdoA/wdeTbb2zSlaIgRIFcDUPonkpsTvpyn37n68hMYPPCICHzN9VAp7A2AGCuDCtFLkrUVk6M+dwIRpuzHfXJVCxE/RY/mGA8zf6iWPLk9ypHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p/0gsWW2r9nUPujKn+CUXWuDZt7h3TiMWe7F8dTj2xw=;
 b=Ub2C+/NuL0XHYMrcxyKatb02gQYHekhxspcGOYfLpRPVGURBiUaLxNR0pOV9+gBcrzy3yxh60/15Ud8yQwBVE7cf54FzSvW4qLAVh0FcEsycOFXV30Rjn/zW/z2EHZQh2kF6E1uIXR2IA2+ubaVH4O7bFWwwfMZEJOzgL02B644=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4434.eurprd04.prod.outlook.com (52.135.145.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.11; Thu, 18 Jul 2019 01:42:53 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47%5]) with mapi id 15.20.2094.011; Thu, 18 Jul 2019
 01:42:53 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: RE: [PATCH v3 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Topic: [PATCH v3 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Index: AQHVOvV8miufREPgWk29kTcXKZEuBabL6GiAgAO0YqA=
Date: Thu, 18 Jul 2019 01:42:52 +0000
Message-ID: <AM0PR04MB44816D1B4251E7DDE34C5BDE88C80@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1563184103-8493-1-git-send-email-peng.fan@nxp.com>
 <1563184103-8493-2-git-send-email-peng.fan@nxp.com>
 <CAL_JsqJkt7pX9F9NggL2EXxS=2oiF07VJCOqVTvF-Zwz=cjmvg@mail.gmail.com>
In-Reply-To: <CAL_JsqJkt7pX9F9NggL2EXxS=2oiF07VJCOqVTvF-Zwz=cjmvg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c05f2507-53f7-4350-5972-08d70b213ff6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4434; 
x-ms-traffictypediagnostic: AM0PR04MB4434:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB44345D11C9EE48D4CDDD60A588C80@AM0PR04MB4434.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01026E1310
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(376002)(366004)(346002)(199004)(189003)(186003)(7696005)(44832011)(26005)(68736007)(76176011)(486006)(99286004)(102836004)(6506007)(53936002)(53546011)(15650500001)(14444005)(33656002)(6436002)(52536014)(3846002)(2906002)(64756008)(81156014)(256004)(476003)(11346002)(446003)(8676002)(55016002)(6306002)(9686003)(6116002)(54906003)(86362001)(14454004)(316002)(25786009)(478600001)(6246003)(7736002)(4326008)(8936002)(229853002)(71200400001)(305945005)(76116006)(66556008)(5660300002)(81166006)(74316002)(66446008)(66946007)(66476007)(66066001)(71190400001)(45080400002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4434;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OraqSPcUiNVQFMPUjigpl7L2hcZKsVn7mUavw+EKN9wBtJHCwMo2dgqRyc1cIRjlHgVIuimR2GR97JZfrgDG5nZ7pOFVPmw7kHdW0lzds2o1y4YlMktR4KRiYyHgSKmocaparUq6LhUgqi7uGyDU/CNUHTbnyh2/QfT8rjbDl965hPZgaGqa8qeZAm+zQ9Sv/FcENumC+jXkN1WhH5yVW0DQQfrCmgq8+VU+S5M7FrmaZRoe3MszAWBUGZdsHORZF8giI/z0x4YmB4au7bZ10xv9kbZyUYv7DJhaNxZ+6ppc0D3t8CHld+RhOJSbPyJTIFrIhorDeqg793U03+eRtvkCvOHMmk0LyuqTkJOQYL+9Pgfk08szeB+rVP/eS+aLz8+jvhW9rculLJfYcJ10yfPlXRP4LDKiq7NqFnJH7u8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c05f2507-53f7-4350-5972-08d70b213ff6
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2019 01:42:52.9910 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4434
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_184302_942178_87E65FEE 
X-CRM114-Status: GOOD (  32.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.67 listed in list.dnswl.org]
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
 dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

> Subject: Re: [PATCH v3 1/2] dt-bindings: mailbox: add binding doc for the ARM
> SMC/HVC mailbox
> 
> On Mon, Jul 15, 2019 at 4:10 AM Peng Fan <peng.fan@nxp.com> wrote:
> >
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
> +eng.fan%40nxp.com%7C424e0d1c19c344406b6008d709465591%7C686ea1
> d3bc2b4c
> >
> +6fa92cd99c5c301635%7C0%7C0%7C636988070002772705&amp;sdata=DV
> stQ%2FhuN
> > +c67%2Bt08yXibQrX7sIeocHziYp3dkkeRoJ4%3D&amp;reserved=0
> > +$schema:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> >
> +cetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Cpe
> ng.fan%
> >
> +40nxp.com%7C424e0d1c19c344406b6008d709465591%7C686ea1d3bc2b4
> c6fa92cd9
> >
> +9c5c301635%7C0%7C0%7C636988070002782698&amp;sdata=D%2Fa2SU
> W%2FCqclJdy
> > +RbFggqqL%2BAEumER0K3rAaisY2bMc%3D&amp;reserved=0
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
> 
> Constraints? 0 is valid? 2^32?

0 is not valid. There should be limited channels, but depends on firmware design.

> 
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
> 
> What if someone wants to configure this per channel? Perhaps #mbox-cells
> should be 2 and this can be a client parameter.

I need to check. Currently I only use one type. There might be people
want to use different transports for each channels.

> 
> Minimally, this needs a 'arm' vendor prefix if it stays.

"arm,transports" in v4.

> 
> > +
> > +  arm,func-ids:
> > +    description: |
> > +      An array of 32-bit values specifying the function IDs used by each
> > +      mailbox channel. Those function IDs follow the ARM SMC calling
> > +      convention standard [1].
> 
> What's the default if not specified? Or this should be required?

If not specified, it means the client firmware driver will pass it to mailbox driver.

Thanks,
Peng.

> 
> > +
> > +      There is one identifier per channel and the number of supported
> > +      channels is determined by the length of this array.
> > +    minItems: 0
> > +    maxItems: 4096   # Should be enough?
> > +
> > +required:
> > +  - compatible
> > +  - "#mbox-cells"
> > +  - arm,num-chans
> > +  - transports
> > +  - method
> > +
> > +examples:
> > +  - |
> > +    sram@910000 {
> > +      compatible = "mmio-sram";
> > +      reg = <0x0 0x93f000 0x0 0x1000>;
> > +      #address-cells = <1>;
> > +      #size-cells = <1>;
> > +      ranges = <0 0x0 0x93f000 0x1000>;
> > +
> > +        cpu_scp_lpri: scp-shmem@0 {
> > +          compatible = "arm,scmi-shmem";
> > +          reg = <0x0 0x200>;
> > +        };
> > +
> > +        cpu_scp_hpri: scp-shmem@200 {
> > +          compatible = "arm,scmi-shmem";
> > +          reg = <0x200 0x200>;
> > +        };
> > +    };
> > +
> > +    firmware {
> > +      smc_mbox: mailbox {
> > +        #mbox-cells = <1>;
> > +        compatible = "arm,smc-mbox";
> > +        method = "smc";
> > +        arm,num-chans = <0x2>;
> > +        transports = "mem";
> > +        /* Optional */
> > +        arm,func-ids = <0xc20000fe>, <0xc20000ff>;
> > +      };
> > +
> > +      scmi {
> > +        compatible = "arm,scmi";
> > +        mboxes = <&mailbox 0 &mailbox 1>;
> > +        mbox-names = "tx", "rx";
> > +        shmem = <&cpu_scp_lpri &cpu_scp_hpri>;
> > +      };
> > +    };
> > +
> > +...
> > --
> > 2.16.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
