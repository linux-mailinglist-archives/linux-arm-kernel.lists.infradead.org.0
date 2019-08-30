Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC06A2FDC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 08:28:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yF70gJNhD40nDYYPkohmfhJHl//QbZ3YsG5c/ql4ETQ=; b=rwwmP9//c8bpq7
	ruER9r+/fjHDtqOip+dSmDdzsJ1XA2C5alShjkQ4KDFEtVjeVWzX5ZU3s0ERrKVq7QtmojX3WAJyn
	FQEbN2SH8FsdMMGyD2EZNm2TjbkSFOHWkiDFXbubTeYbg5VGw6uMX2kBp/HgmVy0BpMPzE74hl/JK
	MdrqFzAYleVQA/RgYRMomJKQbfWbUfU81Y/HQR+3BFav7v2Vy2s2fHR5GbNVAWOPYvurAO0c0l0E0
	0zE/O+EubBAgk6c7iVjczG8MLgtvnKsY0PrkldCc1Q7/KLM24LTzlYp9taT8W6g3ZFQq1dDuEtfoe
	UM9U3ASVGLorYaMKbbbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3aOp-0002U9-TT; Fri, 30 Aug 2019 06:28:44 +0000
Received: from mail-eopbgr30084.outbound.protection.outlook.com ([40.107.3.84]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3aOb-0002Tn-MG
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 06:28:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=crRTbwKf6VMRvJ56G8HmMB4wCVmo6+OROkFwp+tDX1dTrzLPLxnPOmy99Fln43ZnQgfCTGSGhUy8CBx40aeWQbCZhH0J27h5l4vXOYVETTlxbbQY1vghRkmdSE1BQEQEA36yoL1eLuAJU93EK+nLCL0TF1ydLtkco/mx9Ffu6GY4+t+2mJwHHKwjc43P//Pfc5WY5zgPsa6EAD6XT4oppsIgZy4Ww9oQ6o2xHoW74+6oCG5+pyDjaK1wYlboRQA1wBSQYemDQpccP88cHDuXn0sTXwqpCF+8S/h13rn04gWld25V/IwvnEDiW15j/l6bO1ZyMDmB0OawbLGdRLC75Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CM2/nADU/eEWs6VGIYxw/PM9devWjm3BYg0tNV5LgFM=;
 b=XPgZp/qnpfXr97WM1MfdUNd4N4HexYzj9Mo7B8ys+lpFyZuLwDoa3eeSmKNeXisrhmvG/b0mLWF8OS+iN4U3a+ZE6HEsbQwp7JEdIaQfe+01DyATNDx8Zw9Tw3Cf9eBdrfnfl1NBeUJsVEoYM3J6ZHl0iuwFtbZqCQkQGjsDviiDIy1YACW+ZgjDATsiKycKXD3syjWo967D3UkKTk88lwqrDRnGsGFDc+DqEJ5YUB34QYDyJNvfbwnLwn8AvR57dyllDNCil/qfsRWG1f7DibJ/+AkSfzEVaLpP21YqfhSgtxuzTyS+SK3qEbg468hrhODI/AG/2Wvvd3e/wftJrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CM2/nADU/eEWs6VGIYxw/PM9devWjm3BYg0tNV5LgFM=;
 b=Sdes/EKiBwDmrSZWJioJelG+degJykwOg+jBwfAQpVTCPl42/Jdp7iNSi6FGjmnp6FSa/DZPlGJT80Zwzt1dGdCF3Y3UY8IYnylvMmLYYHFkirf8xf2uEhuXrLa61leMKiJLBhscmJBxsqqefiTmh3nRGwiDfgs86cecSgL2prY=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4882.eurprd04.prod.outlook.com (20.176.215.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.19; Fri, 30 Aug 2019 06:28:25 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.023; Fri, 30 Aug 2019
 06:28:25 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: RE: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Topic: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Index: AQHVXU0YJPArUxY1ok6XlIUgkri4VacTNWSAgAAFe+A=
Date: Fri, 30 Aug 2019 06:28:25 +0000
Message-ID: <AM0PR04MB4481785CABB44A8C71CFB8D788BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
 <CABb+yY2tRjazjaogpM7irqgTD+PdwsfqCxk5hP-_czrET3V5xQ@mail.gmail.com>
In-Reply-To: <CABb+yY2tRjazjaogpM7irqgTD+PdwsfqCxk5hP-_czrET3V5xQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5d5535e4-d9d5-4c39-8438-08d72d13433b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4882; 
x-ms-traffictypediagnostic: AM0PR04MB4882:|AM0PR04MB4882:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB488226DE775FD793E684BE5488BD0@AM0PR04MB4882.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0145758B1D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(396003)(136003)(346002)(376002)(199004)(189003)(66446008)(66556008)(66476007)(8936002)(66066001)(6246003)(64756008)(25786009)(4326008)(6436002)(44832011)(54906003)(7736002)(316002)(305945005)(74316002)(6916009)(8676002)(53936002)(99286004)(76116006)(33656002)(81156014)(81166006)(66946007)(55016002)(9686003)(256004)(14444005)(53546011)(5660300002)(6306002)(6506007)(86362001)(6116002)(14454004)(102836004)(71190400001)(71200400001)(26005)(52536014)(45080400002)(7696005)(478600001)(76176011)(486006)(2906002)(229853002)(11346002)(446003)(1411001)(476003)(3846002)(15650500001)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4882;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PQJECaHtk6s+CeWgIF5ziLDXPgE2IVUodyzG2jFuE0E1STFEY/k39YeW/pn0FO03K70ucYRLGL1ilNCyORxvGyObYQxTMAmGd5w382ldcF+YnD/hRTQytI4bknt1RXswj3vxldCPdjfD9kwjx/fGnv7lqTjSaRp0clU/Mni6sGRxAKRU1rSVbuGASdN8WJd6Red7cpFYN2yLJBd1XMV10n0oOuN2Ci7x2YZWOsA56dwL/l8qJ5wFrp0nb7VBzh1CZlbYmrNmPZ90fTM4HgtVEYcjlDY2AmA/mYkpMSyLl55mNGu8v5E9mEvsDncfoaKaq/6kv0BdJx+MPfgKDeYNBEUATfkYuUdSX5QBNrtCmc2m1wXSNfBDcHctuquZbwKR2J4YdSAXODIVI9jK3xsuljphn0BLSQjGJpjuoeNJNs4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d5535e4-d9d5-4c39-8438-08d72d13433b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2019 06:28:25.0727 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UH+7YmU+qJLq8aqGQT8g8UwGChRni3BQf+YAyyv/j0cm5d7KNhdH8S84FF5k5jbLk1rTbwzAgrpIkb63gdLRDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4882
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_232829_964915_3B0DCFB5 
X-CRM114-Status: GOOD (  30.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



Hi Jassi,

> Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
> SMC/HVC mailbox
> 
> On Tue, Aug 27, 2019 at 10:02 PM Peng Fan <peng.fan@nxp.com> wrote:
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
> >  .../devicetree/bindings/mailbox/arm-smc.yaml       | 125
> +++++++++++++++++++++
> >  1 file changed, 125 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > new file mode 100644
> > index 000000000000..f8eb28d5e307
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > @@ -0,0 +1,125 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause) %YAML 1.2
> > +---
> > +$id:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> >
> +cetree.org%2Fschemas%2Fmailbox%2Farm-smc.yaml%23&amp;data=02%7
> C01%7Cp
> >
> +eng.fan%40nxp.com%7C8aa671dfa4d04ba003b508d72d0f297f%7C686ea1d
> 3bc2b4c
> >
> +6fa92cd99c5c301635%7C0%7C1%7C637027415448196145&amp;sdata=xd
> nUObNqlRF
> > +lu8NiXSuc35fYrHIzR%2Fyak6IzW05Q3nA%3D&amp;reserved=0
> > +$schema:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> >
> +cetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Cpe
> ng.fan%
> >
> +40nxp.com%7C8aa671dfa4d04ba003b508d72d0f297f%7C686ea1d3bc2b4c6
> fa92cd9
> >
> +9c5c301635%7C0%7C1%7C637027415448196145&amp;sdata=wl%2Fdg09
> QMS%2FoHgI
> > +yD7ZBNpoIGXYxfFDRWhyYHogFd6A%3D&amp;reserved=0
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
> > +    items:
> > +      minimum: 1
> > +      maximum: 4096 # Should be enough?
> > +
> > +  method:
> > +    - enum:
> > +        - smc
> > +        - hvc
> > +
> > +  transports:
> > +    - enum:
> > +        - mem
> > +        - reg
> > +
> > +  arm,func-ids:
> > +    description: |
> > +      An array of 32-bit values specifying the function IDs used by each
> > +      mailbox channel. Those function IDs follow the ARM SMC calling
> > +      convention standard [1].
> > +
> > +      There is one identifier per channel and the number of supported
> > +      channels is determined by the length of this array.
> > +    $ref: /schemas/types.yaml#/definitions/uint32-array
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
> > +      cpu_scp_lpri: scp-shmem@0 {
> > +        compatible = "arm,scmi-shmem";
> > +        reg = <0x0 0x200>;
> > +      };
> > +
> > +      cpu_scp_hpri: scp-shmem@200 {
> > +        compatible = "arm,scmi-shmem";
> > +        reg = <0x200 0x200>;
> > +      };
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
> >
> SMC/HVC is synchronously(block) running in "secure mode", i.e, there can
> only be one instance running platform wide. Right?

I think there could be channel for TEE, and channel for Linux.
For virtualization case, there could be dedicated channel for each VM.

  That implies there is only
> one physical channel in the platform.

I don't think so, TEE/Linux should use different physical channels,
i.e, SRAM memory partitioned using TZASC.

 So if you need to initiate different
> functions (tx, rx), you call them sequentially by changing the func-id for each
> request. Why not?

I could not follow you clearly. Could you please share more details?

Thanks,
Peng.
> 
> -Jassi
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
