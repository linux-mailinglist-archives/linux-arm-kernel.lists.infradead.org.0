Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C061CB5FBD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 11:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=74ec9BWzGHSQIpKoFLjfsVWTMpLfN5O8054is85NDDQ=; b=jP/pfpfT9BrhPE
	CPZSVCM37vS3epx7DIUQqf9ADxODQtUyd7ZBOCowX8vPnPx5/XZQxo7z92fY6C0uAFGLgW60klpS0
	r0iRiWlqXReEWHs9hfSez783I17DkW1DZFV0OopIziRKCS0nc5ZyYtWimXsde033l9vOks9ls5M4A
	YtRWDNh0irdJZT5s6ZGwWUsyIrUL7ejP+tXJVS2WO5bZ5J0kKHEcpLQUOVGPAG0dl07BKS4cil0a9
	FWCN36uyqPTGrX81YvrdsApGssV8bKvGEdgsuHI/s+9eC0wiZ2oKfasCc44BTfSCk99fjxXrgkQPp
	mcZ7feOUHbAxeUUgq/eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAVr4-0003Jr-0D; Wed, 18 Sep 2019 09:02:30 +0000
Received: from mail-ve1eur03on0602.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::602]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAVqs-0003J8-Ci
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 09:02:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XWVMizDwpvy3eGrL4/lehOUighWVvyiQ7cKRp/XMVA6B27O28vJ+SVMS7psGqNY/NViqrgi28gTxCB6HVCdGdnNGsvyYeqdO91NC6ILiH8hrtfaxv6iKQNq3ojzKGJB45CsKutbCTm4+dmiiV6M42Oictjk/H1F/DTM92UmUwR9/uc4SwWqKjJPamWh1wDejQBt49br03cuj6t4Y2+MyPJDRpxRG45xcP/8laKpXCmFG8IRZuwzzJ9s6Y95WfJ9VIpRQ8fZ5LeAsb3HQyQH8S6Ue3AFQTQmZs81mrKdZyOKaFHdN/SRR1eRmLV3xToRGOs1/tFwh/N9fHcYxPIOlNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I4fSV2tK8pdHXIYRyPRhXGYhtYsJjWXL4yj5Zbs1qvM=;
 b=hmupNI7mpixQ34s4mfJbIXIbo7hFQZTJv+T2k8PhXTpAbLB6K/SYDQSbC/4MsPenXuFNGc0MpdGKaf9LKMuQOOuXR9zUA55vtuprhRFxSRIaVL+WHbIfg7TfB0Fm/SLg+J5ZEuBHcIYQb+v8rc2tigrzVtBJaDFpgQ2lzTt1N5zVU56OYoE3I1HVLAd8E/WRjBAK3rFk+z6pNqcy79JUjnvfBM0+giLxmNDknLZvKFAX2nfWf98L449KT7hLXIcrXQ9nPehKHx1EwOx4L6jhylMi0oyNjT58/1mAdw2iMFRxEVHEY5x99+G0vVHyC7ffZsqATBQJYgW37SCH7bnc9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I4fSV2tK8pdHXIYRyPRhXGYhtYsJjWXL4yj5Zbs1qvM=;
 b=AmWlcTiokpeqzFnegJvKTXXgPuJB5477TJE0bGvERWdr8Jpt1D9IT3vk+QgcJxKsiG0MJvvxcNxNwZmf9rVSPhHwxk7wMTqT3+9DrDB69kXugMyClgae0cYI/c+vDktm9xfCPhiSs+tdNL6sAQnfIXS4KmYuzgcTMu9GWNcONDY=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6772.eurprd04.prod.outlook.com (52.132.214.200) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.18; Wed, 18 Sep 2019 09:02:15 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2263.023; Wed, 18 Sep 2019
 09:02:15 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: RE: [PATCH V6 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Topic: [PATCH V6 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Index: AQHVbHNaBQCH9BWPL0mqFSSgcphDeqcwIoOAgAEBqzA=
Date: Wed, 18 Sep 2019 09:02:15 +0000
Message-ID: <AM0PR04MB4481E07A2DD996703EE9FADD888E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1568626884-5189-1-git-send-email-peng.fan@nxp.com>
 <1568626884-5189-2-git-send-email-peng.fan@nxp.com>
 <20190917183115.3e40180f@donnerap.cambridge.arm.com>
In-Reply-To: <20190917183115.3e40180f@donnerap.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 167818a7-99aa-4d43-2843-08d73c16e69b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR04MB6772; 
x-ms-traffictypediagnostic: AM0PR04MB6772:|AM0PR04MB6772:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB677277224147B1ED17EBCF12888E0@AM0PR04MB6772.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01644DCF4A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(39860400002)(366004)(346002)(136003)(189003)(199004)(476003)(446003)(54906003)(52536014)(66066001)(9686003)(11346002)(66556008)(66476007)(66946007)(64756008)(66446008)(4326008)(6246003)(45080400002)(229853002)(99286004)(14454004)(25786009)(478600001)(6436002)(33656002)(26005)(7696005)(102836004)(76176011)(76116006)(6506007)(186003)(55016002)(486006)(71200400001)(71190400001)(86362001)(44832011)(15650500001)(6306002)(81166006)(305945005)(14444005)(8676002)(256004)(81156014)(74316002)(8936002)(7736002)(2906002)(6116002)(3846002)(5660300002)(316002)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6772;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: evn6Da4DNsV0gQc/Z/FSp6ItD1wzkEvwFtWSh5ZAaqXBo4akA0vwXPkSvmgAQ+zlxhqa+Vul5C8cEjT5r0dEmZct1Mx7SJnaU3GG9FWQ0v9zl+kjNSTUaAt76KR5n+MuTC019tWPO2113mgj7QwDcl203m6J+sES3Bpq/e31SGbpH+Rk0PfPA2btQCcEnMiuBn/IMF2cAP3rk9aPgGUqv2YMN8ZzUcj7p4m5XGFxr69MvrufZ2IswBmbjinExN1J6u8ogQ1p2Eye7nJHlhX/PI9J13CLuK7PpFhesQMXXbU0ojmNVzBJZNjJzqM4M6kDLCwJgFkDKdI8WBYseBBWImvSlqvI2+PJGdll1Pgn66UYe7nGq2MWy17QciR32rlGrdGgoAFfvMWoniVNVIybpPlFqfkUK1H7Ed4Q+w7CeWY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 167818a7-99aa-4d43-2843-08d73c16e69b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2019 09:02:15.0620 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /XQ7U6WOyW/uqUL9c+lm7jRvIrhW+LwdQRfLJoZrq4O8XqbCA816hFJsBtPqRvaaTyQXZIfC81k04RYOr3ZUHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_020218_441647_F3266D4C 
X-CRM114-Status: GOOD (  34.26  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:602 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
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

> Subject: Re: [PATCH V6 1/2] dt-bindings: mailbox: add binding doc for the
> ARM SMC/HVC mailbox
> 
> On Mon, 16 Sep 2019 09:44:37 +0000
> Peng Fan <peng.fan@nxp.com> wrote:
> 
> Hi,
> 
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > The ARM SMC/HVC mailbox binding describes a firmware interface to
> > trigger actions in software layers running in the EL2 or EL3 exception levels.
> > The term "ARM" here relates to the SMC instruction as part of the ARM
> > instruction set, not as a standard endorsed by ARM Ltd.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  .../devicetree/bindings/mailbox/arm-smc.yaml       | 96
> ++++++++++++++++++++++
> >  1 file changed, 96 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > new file mode 100644
> > index 000000000000..bf01bec035fc
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > @@ -0,0 +1,96 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause) %YAML 1.2
> > +---
> > +$id:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> >
> +cetree.org%2Fschemas%2Fmailbox%2Farm-smc.yaml%23&amp;data=02%7
> C01%7Cp
> >
> +eng.fan%40nxp.com%7Cff378bc3d622436c39ba08d73b94dfcc%7C686ea1d
> 3bc2b4c
> >
> +6fa92cd99c5c301635%7C0%7C1%7C637043382928045369&amp;sdata=rnx
> KdDGjPPd
> > +8VBI5WmgnZ3jxIjL2hcRYzbljfFxDkA0%3D&amp;reserved=0
> > +$schema:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> >
> +cetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Cpe
> ng.fan%
> >
> +40nxp.com%7Cff378bc3d622436c39ba08d73b94dfcc%7C686ea1d3bc2b4c6
> fa92cd9
> >
> +9c5c301635%7C0%7C1%7C637043382928045369&amp;sdata=R02nWzpp9
> %2BrDYG9tA
> > +ot4pdWb8tGGHet1MOjrD0dEjwA%3D&amp;reserved=0
> > +
> > +title: ARM SMC Mailbox Interface
> > +
> > +maintainers:
> > +  - Peng Fan <peng.fan@nxp.com>
> > +
> > +description: |
> > +  This mailbox uses the ARM smc (secure monitor call) and hvc
> > +(hypervisor
> 
> I think "or" instead of "and" is less confusing.

ok

> 
> > +  call) instruction to trigger a mailbox-connected activity in
> > + firmware,  executing on the very same core as the caller. The value
> > + of r0/w0/x0  the firmware returns after the smc call is delivered as
> > + a received  message to the mailbox framework, so synchronous
> > + communication can be  established. The exact meaning of the action
> > + the mailbox triggers as  well as the return value is defined by
> > + their users and is not subject  to this binding.
> > +
> > +  One use case of this mailbox is the SCMI interface, which uses
> > + shared
> 
>      One example use case of this mailbox ...
> (to make it more obvious that it's not restricted to this)

ok

> 
> > +  memory to transfer commands and parameters, and a mailbox to
> > + trigger a  function call. This allows SoCs without a separate
> > + management processor  (or when such a processor is not available or
> > + used) to use this  standardized interface anyway.
> > +
> > +  This binding describes no hardware, but establishes a firmware
> interface.
> > +  Upon receiving an SMC using one of the described SMC function
> > + identifiers,
> 
>                              ... the described SMC function identifier,

ok

> 
> > +  the firmware is expected to trigger some mailbox connected
> functionality.
> > +  The communication follows the ARM SMC calling convention.
> > +  Firmware expects an SMC function identifier in r0 or w0. The
> > + supported  identifiers are passed from consumers,
> 
>      identifier

ok

> 
> "passed from consumers": How? Where?
> But I want to repeat: We should not allow this. This is a binding for a mailbox
> controller driver, not a generic firmware backdoor.

As Jassi suggested the function identifier as an optional for mailbox driver.
The driver should support function id passed from consumers.
Currently there is no users for such case that passed from consumers,
so I have no idea how.

> We should be as strict as possible to avoid any security issues.
> The firmware certainly knows the function ID it implements. The firmware
> controls the DT. So it is straight-forward to put the ID into the DT. The
> firmware could even do this at boot time, dynamically, before passing on the
> DT to the non-secure world (bootloader or kernel).
> 
> What would be the use case of this functionality?
> 
> > or listed in the the arm,func-ids
> 
>                        arm,func-id

ok
> 
> > +  properties as described below. The firmware can return one value in
> 
>      property
ok
> 
> > +  the first SMC result register, it is expected to be an error value,
> > + which shall be propagated to the mailbox client.
> > +
> > +  Any core which supports the SMC or HVC instruction can be used, as
> > + long  as a firmware component running in EL3 or EL2 is handling these
> calls.
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - description:
> > +          For implementations using ARM SMC instruction.
> > +        const: arm,smc-mbox
> > +
> > +      - description:
> > +          For implementations using ARM HVC instruction.
> > +        const: arm,hvc-mbox
> 
> I am not particularly happy with this, but well ...
> 
> > +
> > +  "#mbox-cells":
> > +    const: 1
> 
> Why is this "1"? What is this number used for? It used to be the channel ID,
> but since you are describing a single channel controller only, this should be 0
> now.

Mailbox bindings requires it at least 1, as replied to Jassi in the other mail.

> 
> > +
> > +  arm,func-id:
> > +    description: |
> > +      An 32-bit value specifying the function ID used by the mailbox.
> 
>          A single 32-bit value ...
> 
> > +      The function ID follow the ARM SMC calling convention standard
> [1].
> 
>                          follows
> 
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +
> > +required:
> > +  - compatible
> > +  - "#mbox-cells"
> > +
> > +examples:
> > +  - |
> > +    sram@93f000 {
> > +      compatible = "mmio-sram";
> > +      reg = <0x0 0x93f000 0x0 0x1000>;
> > +      #address-cells = <1>;
> > +      #size-cells = <1>;
> > +      ranges = <0x0 0x93f000 0x1000>;
> > +
> > +      cpu_scp_lpri: scp-shmem@0 {
> > +        compatible = "arm,scmi-shmem";
> > +        reg = <0x0 0x200>;
> > +      };
> > +    };
> > +
> > +    smc_tx_mbox: tx_mbox {
> > +      #mbox-cells = <1>;
> 
> As mentioned above, should be 0.
> 
> > +      compatible = "arm,smc-mbox";
> > +      /* optional */
> 
> First: having "optional" in a specific example is not helpful, just confusing.
> Second: It is actually *not* optional in this case, as there is no other way of
> propagating the function ID. The SCMI driver as the mailbox client has
> certainly no clue about this.

I'll drop "/*optinal*/" since it is required in the example.

> I think I said this previously: Relying on the mailbox client to pass the function
> ID sounds broken, as this is a property of the mailbox controller driver. The
> mailbox client does not care about this mailbox communication detail, it just
> wants to trigger the mailbox.
> 
> > +      arm,func-id = <0xc20000fe>;
> > +    };
> > +
> > +    firmware {
> > +      scmi {
> > +        compatible = "arm,scmi";
> > +        mboxes = <&smc_tx_mbox 0>;
> 
> ... and here just <&smc_tx_mbox>; would suffice.

Mailbox requires mbox-cells at least 1, it must have one arg.
Otherwise of_mbox_index_xlate not work.

Thanks,
Peng.

> 
> > +        mbox-names = "tx";
> > +        shmem = <&cpu_scp_lpri>;
> > +      };
> > +    };
> > +
> > +...
> 
> Cheers,
> Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
