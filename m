Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B58FF9F806
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 03:52:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pdZ7hSsEG0gdh1U6H6f9+/zeYWYrj4MFwkx6jgpZxoU=; b=YSfc/46u9KnFLB
	rOJ8Es18jikslSleJI/BeliTKRE5KOB1Y32MjWNiy5IACsyblS9lBBBzUGwLx9YYls8/YrLbQyCwY
	SZXhTT0BIYrN8LtpIabrVYPw8ZWiWQciUiigcTcoU09ptvccm6UQc7uC2aBiyHuI2Ms+UcAkeu/4N
	gqwoalSRr1D9SAyQnjuqgoVKT/5xFBjdIYEXN8cGNTKLJTda2GhGW1cbvJhtk3JxFB0zFzX0aiNBu
	cByHyCsL4BlLNfcJaj9oNKssnCmx9qm/ViV+awznP8y+LbIrFnk+kemFxBov0MDuTrI2RV7sukKAb
	6lrgiE4Ri0RIMaw6LHCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2n87-0006kq-9L; Wed, 28 Aug 2019 01:52:11 +0000
Received: from mail-eopbgr150089.outbound.protection.outlook.com
 ([40.107.15.89] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2n7t-0006kS-A5
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 01:51:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PrVnvch4NwfDfrOkvOtJs1JXhbarpcDDwtiPiqEGols6r8OayG4lJ68u3kQQnmEP7MLyHrtXEo0n83P2rf6uuGTq1Wgeh7beoQn2mM1FSW1xjxvdGWWKWk/hPPMee7WwqnGfsfMkM6+iFUIrPBaTdnB7f4NbUHfEXHpyK0dkUGF5gVVTJRiLH9+uhz8aun+fGxsubD9un2rTUqPzk6SbQR27kH6yUCE7JH7Z8S7CX2ls3K4b7/uTFCZ94Q75FgAM2q44UQBfuVHvoIOD0vY746d3DqQs/cBNRKhbeRe74vyul6CGim+xTlHLKAGhQJysUmxaG8GoSxQ7x7MLvVAgzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/UrvAGFiojcbRDmomNtNjcS5a4yioFXgy8bWFKU0qLg=;
 b=KYDpzYUsbGQO9gsCWkMv6rI1Sfn2aBvE/fBL/xoxDofwSpFXsegp2hgtQEu1/fgwTJbW6cALqsfZa/32YnT1uDehSX5yRgAXzrrLZcYhvtpgSvCe7jS0B0WvOpYuyMIc8nvFqnGKbqbDHm5iQfB4/3cIqPOl/puscldQgeTamWDXcx1RTlhAXw5BdP5NEQS0eNazLQCwLrBhEqbQMFUYMWAyfQsVrNcO3W8lIGwf/qIEG/d8I5Gvpfx556tR+Wg+pvCnRP6HTCFzn5jXH59lqdNJijZcomMrm8ClVfZd8IYZncLn2y5ppcfD+DW5HgnLS54tr97snd+jTr/cL1tORA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/UrvAGFiojcbRDmomNtNjcS5a4yioFXgy8bWFKU0qLg=;
 b=an0SUNwU0I7qiPh3/RmACrSpdOWjw1h5fLdP5MwvF8ZcdjTH/EMNsVAMfsJXo7fOOWFI1J4RuzBUIe9ILtlWqfHG1SH4KTsHAQ5Ik7RElNiAZ1Z7RVSoBw39M7Z8xSa+ZK17owoSUlS/450Zz+ShMLayJdbLcoQNeOeudO3MlfE=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5939.eurprd04.prod.outlook.com (20.178.112.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Wed, 28 Aug 2019 01:51:54 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.023; Wed, 28 Aug 2019
 01:51:54 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: RE: [PATCH v4 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Topic: [PATCH v4 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Index: AQHVXL0PhcurV8c5rUCEm7J1Y5VZmqcO+QqAgADTabA=
Date: Wed, 28 Aug 2019 01:51:54 +0000
Message-ID: <AM0PR04MB44813D2F6CCC3211F9AAE56788A30@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1566942646-18015-1-git-send-email-peng.fan@nxp.com>
 <1566942646-18015-2-git-send-email-peng.fan@nxp.com>
 <CAL_JsqK7xPTYFzSXt52m+Z0LRcFy2TUfa45XzY1YGH0-JRA-WQ@mail.gmail.com>
In-Reply-To: <CAL_JsqK7xPTYFzSXt52m+Z0LRcFy2TUfa45XzY1YGH0-JRA-WQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 31af3159-3af8-412a-b4fb-08d72b5a4d96
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5939; 
x-ms-traffictypediagnostic: AM0PR04MB5939:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5939E7F0C5A15ED2AA66F51388A30@AM0PR04MB5939.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(376002)(366004)(346002)(396003)(199004)(189003)(71190400001)(316002)(54906003)(14444005)(305945005)(256004)(25786009)(4326008)(7736002)(8936002)(5660300002)(14454004)(33656002)(8676002)(81156014)(81166006)(6506007)(45080400002)(6246003)(53546011)(102836004)(74316002)(53936002)(6436002)(476003)(44832011)(478600001)(71200400001)(99286004)(76176011)(7696005)(86362001)(446003)(6116002)(229853002)(3846002)(26005)(186003)(2906002)(76116006)(66446008)(64756008)(66556008)(66946007)(52536014)(66066001)(55016002)(11346002)(6306002)(15650500001)(486006)(9686003)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5939;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vZMrgU0KK0ZVxDuBMKcLU0tJYYkAm2BBS3+Z0KKV196Otr7dscfAotlfSmDWRkCgj4E8y1q2uEuZE2y0LXkyjn3n00tFoHG+5qAtZxyeXW/77Nr8jaPzgNbLuPyT4cGNuOC/1cHrsAa9i8yA2Huf44kxhq+/jBwPLjMII6L/VSh0TTEZB+Sy6yslS0Rt8QIDNmKYjRoC2deozzHDNKeTLkI838H+eEVXSDOCtatjhQv1wHqD07v7l9VyEnsc3Rl9zLXHSKhfpYpay8pwCKMmsXI5MMxBXxOzOUBGd1DE7EPF5A3lfXWhiz+Q4B5w9GsXWZNUWOHErLQIO4tXBl5RVN/em24Sxk+g6f5OZsTHy5eXmhi6mAE6QFqZ6gG+nvW4jRwegBdBNu/Brodotxno29c5yjAphiBlF0iRB2mUeX0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31af3159-3af8-412a-b4fb-08d72b5a4d96
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 01:51:54.3848 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tqVmPnd9Ym2ulPtqsOqD19UNnKL1yiyW2mRZbHo5CHzcfEpK+buDsmCYm1GvtJJD4JZv0JJA2J6zLpaDM55Sbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5939
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_185157_487820_4D202D02 
X-CRM114-Status: GOOD (  30.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

> Subject: Re: [PATCH v4 1/2] dt-bindings: mailbox: add binding doc for the ARM
> SMC/HVC mailbox
> 
> On Tue, Aug 27, 2019 at 4:51 AM Peng Fan <peng.fan@nxp.com> wrote:
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
> >  .../devicetree/bindings/mailbox/arm-smc.yaml       | 126
> +++++++++++++++++++++
> >  1 file changed, 126 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > new file mode 100644
> > index 000000000000..ae677e0c0910
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > @@ -0,0 +1,126 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause) %YAML 1.2
> > +---
> > +$id:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> >
> +cetree.org%2Fschemas%2Fmailbox%2Farm-smc.yaml%23&amp;data=02%7
> C01%7Cp
> >
> +eng.fan%40nxp.com%7C0e905f3fe89b4dc9ee0608d72af06e30%7C686ea1d
> 3bc2b4c
> >
> +6fa92cd99c5c301635%7C0%7C0%7C637025084458964761&amp;sdata=p8
> EeFkU5pW3
> > +D8bzpZu9IHCoFD%2F2ZBcSr6WyCsIK9LqU%3D&amp;reserved=0
> > +$schema:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> >
> +cetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Cpe
> ng.fan%
> >
> +40nxp.com%7C0e905f3fe89b4dc9ee0608d72af06e30%7C686ea1d3bc2b4c6
> fa92cd9
> >
> +9c5c301635%7C0%7C0%7C637025084458964761&amp;sdata=JFhz7meFyG
> ozMLnt4Jb
> > +RGneYty6cBSCKyxHpl26TAsI%3D&amp;reserved=0
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
> > +     minimum: 1
> > +     maximum: 4096 # Should be enough?
> > +
> > +  method:
> > +    items:
> 
> You can drop 'items' as this is a single entry.

Will fix in v5.

> 
> > +      - enum:
> > +          - smc
> > +          - hvc
> > +
> > +  transports:
> > +    items:
> 
> same here

Fix in v5.

> 
> > +      - enum:
> > +          - mem
> > +          - reg
> > +
> > +  arm,func-ids:
> 
> Needs a $ref to a type (uint32-array).

Fix in v5.

> 
> > +    description: |
> > +      An array of 32-bit values specifying the function IDs used by each
> > +      mailbox channel. Those function IDs follow the ARM SMC calling
> > +      convention standard [1].
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
> 
> Looks like some indentation problem...

Fix in v5.

> 
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
> 
> &smc_mbox and <> each entry.

Fix in v5.

> 
> > +        mbox-names = "tx", "rx";
> > +        shmem = <&cpu_scp_lpri &cpu_scp_hpri>;
> 
> <> each entry

Fix in v5.

Thanks,
Peng.

> 
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
