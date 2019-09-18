Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B711DB5F9E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 10:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYUmwxOir8YpQqbpZEkUjpIMqQRAexyt8/BOPlptvwE=; b=H8l//s0zGJAEQa
	9p5Ej2lABUlv8HAW29Sc7xu4V93/11XL31rCVQXKx+4B6Yd+ljczccfyd11SqR80lJisrVvXUyulF
	USXpz6DIn+d2fQrUEIOyFW97E7C2z7ZM3BkqXBe6d4Li3Iy2JrTWwb496ITiG7FsKnc2whWGZwG1s
	OkJD++4qUauRB1cu4pOnmfSix5nHDSsns9cSdDUvKYyv/qIIw/X3WxQNoDHwkvcdgilwjEumU0opw
	c5WJIHM7UT7+F9hu+/9QpKnqHDD0yM778OcHAVzhMwK/3XIBcDttnd5trs+2dSDIpgWtaB1uLVN3h
	yIedS/DejxWOpJGVSdnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAViY-0007n5-FV; Wed, 18 Sep 2019 08:53:42 +0000
Received: from mail-he1eur02on060f.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::60f]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAViK-0007md-Tr
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 08:53:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZYNtbh4aBx6QG77auSdsLZJDthQ36xUUSBrW3VQWx8MyNU4f5VTLY6wA70XQWebaw1Gr8oTyRtyGN2joDASn4nN7tcnKe63hJjGGnUhvZjvyAFMUBmyMqJB2JQ30/iQhBV4b/J9EnGaRL35pNyuZ9NFEAu4boVdPZl/J/OL30cEdG+fgnojDdNRsRf3180l3fhaZjHm+FDvhTdadfQS8I/6e5tAz/H3Dm4324L+RZkZwEoVWIdEAJvyAwqjuYz2T1tY+I5YCGDfHBo5qSoAG36N/Y5ixxBy9R4Zyf7lqazAP1fd5D0/uZFLAKN6R2rzJwqS/H4AlodYMm4k4RmSR3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NcvuDeJwjetsh4uW9QCIEyqcsJ4NgJK8endiv5mDTZ0=;
 b=SIDm0PcVS8U3j3yfl6fU6cv6Msp7zmsxEeF1Y2BP1LsVjjMVdhKJoI31EB+Uup8YnLUeeTOG8Ny6c2C2o78/ajIji0Yi+o/s0uhPN3gwyvRM5GI48eDIARJCXb/6Pf+ayLaspLtvFW0rEg2dIrH6lOgfilmV5ImUMgGPhaVKp+R9D//N6YugXBMkKf/mi3Hu2vPhp6t/iZl988o538R7vzhqDTZnDoBixfiUxYckWQolhtZqLWgPC7NnpnT26fo58Yi9KURJQliEWYrxfYoxBSTzqV536d0iNrEb7JebEsYvlFVqrMJiLvRYTvUDmruSufQgeb1RFl+fFjkfyeeKsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NcvuDeJwjetsh4uW9QCIEyqcsJ4NgJK8endiv5mDTZ0=;
 b=lVxXxcZgtWvGwB0bXEzU2BIV5I9LP1x/givG6LlE+lUPz3ntYdsYeNX26+1DeJE35BCtbERd5DWRLw2UCE6uOV08qZtNDz8e4EG+m9qz425SbH/9ganPS0Bo7qEt6+hOp1AiFO8bqeZWBLFU69Bw/3Pg9X7wNmnPGp0oefBO0+k=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4771.eurprd04.prod.outlook.com (20.176.215.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.22; Wed, 18 Sep 2019 08:53:25 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2263.023; Wed, 18 Sep 2019
 08:53:25 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Andre Przywara
 <andre.przywara@arm.com>
Subject: RE: [PATCH V6 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Topic: [PATCH V6 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Index: AQHVbHNaBQCH9BWPL0mqFSSgcphDeqcwIoOAgADH+gCAADitQA==
Date: Wed, 18 Sep 2019 08:53:25 +0000
Message-ID: <AM0PR04MB44811AE46803D10FD8A5B8B0888E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1568626884-5189-1-git-send-email-peng.fan@nxp.com>
 <1568626884-5189-2-git-send-email-peng.fan@nxp.com>
 <20190917183115.3e40180f@donnerap.cambridge.arm.com>
 <CABb+yY2CP1i9fZMoPua=-mLCUpYrcO28xF5UXDeRD2XTYe7mEg@mail.gmail.com>
In-Reply-To: <CABb+yY2CP1i9fZMoPua=-mLCUpYrcO28xF5UXDeRD2XTYe7mEg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1eb15a5e-63f4-47cf-309e-08d73c15ab21
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR04MB4771; 
x-ms-traffictypediagnostic: AM0PR04MB4771:|AM0PR04MB4771:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB47713647B548940427BD7DC8888E0@AM0PR04MB4771.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01644DCF4A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(376002)(396003)(39860400002)(189003)(199004)(76176011)(45080400002)(76116006)(110136005)(64756008)(66946007)(4326008)(44832011)(478600001)(66446008)(25786009)(3846002)(14444005)(66556008)(476003)(11346002)(66476007)(15650500001)(305945005)(71200400001)(71190400001)(33656002)(14454004)(446003)(486006)(7736002)(52536014)(256004)(54906003)(6116002)(2906002)(7696005)(186003)(229853002)(99286004)(316002)(66066001)(8936002)(5660300002)(81166006)(102836004)(6436002)(6506007)(6306002)(81156014)(86362001)(74316002)(55016002)(9686003)(53546011)(26005)(8676002)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4771;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HYhwUgolFuGefPUuDlr9ySujbFY6GEAqn2JfS2oVyD3LUr9wGkLUatRrOwDTaFYa0EPj6TLEXtCxC2QKGO4Ti9WDUx9lQw84s2pjo9I0YTL//5A3S5IQwI/Ru6T1j2aeq1ijfr28B4tyzJ8xMDU5RaCAzl3U2fW3PmfWN0F8Z0fGubcmt9QX+H5xDLGNMAfVaY1fV6t+/aEYyKovs1rqLkST+FgmYHGDC1BrNLXOIOxUdn6uzVSF/SPAXeFojs3PtimfMIsHDqF8ZwDtrJY/ObMr7CCz6Lf+YxtWDqaHEA7K1cdMa9Bvx4xwONG0+SBPL+zSKPywEvTCmFWCxcBH4Jj7YDCQznzM6V2Y/A2m6Eul3uzbSEYx8YUC33ryxFnHH15A2caFkgeZAxDxIXlpoQqmmw8YrdM7CkDpBGOchic=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1eb15a5e-63f4-47cf-309e-08d73c15ab21
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2019 08:53:25.8004 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2+vbCLmHCgGFalhdv5eDtuf1X1iKR7FknxTWKpImuL8E55k70LVfa6iSIul+KB0w1sAIA22kXxDIdgsbu8URZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4771
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_015329_415316_D64ECED4 
X-CRM114-Status: GOOD (  36.19  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe05:0:0:0:60f listed in]
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jassi,

> Subject: Re: [PATCH V6 1/2] dt-bindings: mailbox: add binding doc for the
> ARM SMC/HVC mailbox
> 
> On Tue, Sep 17, 2019 at 12:31 PM Andre Przywara
> <andre.przywara@arm.com> wrote:
> >
> > On Mon, 16 Sep 2019 09:44:37 +0000
> > Peng Fan <peng.fan@nxp.com> wrote:
> >
> > Hi,
> >
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > The ARM SMC/HVC mailbox binding describes a firmware interface to
> > > trigger actions in software layers running in the EL2 or EL3 exception
> levels.
> > > The term "ARM" here relates to the SMC instruction as part of the
> > > ARM instruction set, not as a standard endorsed by ARM Ltd.
> > >
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> > >  .../devicetree/bindings/mailbox/arm-smc.yaml       | 96
> ++++++++++++++++++++++
> > >  1 file changed, 96 insertions(+)
> > >  create mode 100644
> > > Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > > b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > > new file mode 100644
> > > index 000000000000..bf01bec035fc
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > > @@ -0,0 +1,96 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause) %YAML 1.2
> > > +---
> > > +$id:
> > > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fde
> > >
> +vicetree.org%2Fschemas%2Fmailbox%2Farm-smc.yaml%23&amp;data=02%
> 7C01
> > >
> +%7Cpeng.fan%40nxp.com%7Cf8065d24dd474238baf008d73bf8dc7a%7C686
> ea1d3
> > >
> +bc2b4c6fa92cd99c5c301635%7C0%7C1%7C637043812342903260&amp;sd
> ata=vC3
> > >
> +S8hvYDxDhNbIQoC44hpO5bw1yYZdBwu%2B%2Fp8mV0hI%3D&amp;reserv
> ed=0
> > > +$schema:
> > > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fde
> > >
> +vicetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7C
> peng.
> > >
> +fan%40nxp.com%7Cf8065d24dd474238baf008d73bf8dc7a%7C686ea1d3bc2
> b4c6f
> > >
> +a92cd99c5c301635%7C0%7C1%7C637043812342903260&amp;sdata=IDHd
> vf1Mgw1
> > > +BR%2Bo4XJ%2BjQS%2Bx1pSBzADnW44B2hZLzKw%3D&amp;reserved=0
> > > +
> > > +title: ARM SMC Mailbox Interface
> > > +
> > > +maintainers:
> > > +  - Peng Fan <peng.fan@nxp.com>
> > > +
> > > +description: |
> > > +  This mailbox uses the ARM smc (secure monitor call) and hvc
> > > +(hypervisor
> >
> > I think "or" instead of "and" is less confusing.
> >
> > > +  call) instruction to trigger a mailbox-connected activity in
> > > + firmware,  executing on the very same core as the caller. The
> > > + value of r0/w0/x0  the firmware returns after the smc call is
> > > + delivered as a received  message to the mailbox framework, so
> > > + synchronous communication can be  established. The exact meaning
> > > + of the action the mailbox triggers as  well as the return value is
> > > + defined by their users and is not subject  to this binding.
> > > +
> > > +  One use case of this mailbox is the SCMI interface, which uses
> > > + shared
> >
> >      One example use case of this mailbox ...
> > (to make it more obvious that it's not restricted to this)
> >
> > > +  memory to transfer commands and parameters, and a mailbox to
> > > + trigger a  function call. This allows SoCs without a separate
> > > + management processor  (or when such a processor is not available
> > > + or used) to use this  standardized interface anyway.
> > > +
> > > +  This binding describes no hardware, but establishes a firmware
> interface.
> > > +  Upon receiving an SMC using one of the described SMC function
> > > + identifiers,
> >
> >                              ... the described SMC function
> > identifier,
> >
> > > +  the firmware is expected to trigger some mailbox connected
> functionality.
> > > +  The communication follows the ARM SMC calling convention.
> > > +  Firmware expects an SMC function identifier in r0 or w0. The
> > > + supported  identifiers are passed from consumers,
> >
> >      identifier
> >
> > "passed from consumers": How? Where?
> > But I want to repeat: We should not allow this.
> > This is a binding for a mailbox controller driver, not a generic firmware
> backdoor.
> >
> Exactly. The mailbox controller here is the  SMC/HVC instruction, which
> needs 9 arguments to work. The fact that the fist argument is always going to
> be same on a platform is just the way we use this instruction.
> 
> > We should be as strict as possible to avoid any security issues.
> >
> Any example of such a security issue?
> 
> > The firmware certainly knows the function ID it implements. The firmware
> controls the DT. So it is straight-forward to put the ID into the DT. The
> firmware could even do this at boot time, dynamically, before passing on the
> DT to the non-secure world (bootloader or kernel).
> >
> > What would be the use case of this functionality?
> >
> At least for flexibility and consistency.
> 
> > > or listed in the the arm,func-ids
> >
> >                        arm,func-id
> >
> > > +  properties as described below. The firmware can return one value
> > > + in
> >
> >      property
> >
> > > +  the first SMC result register, it is expected to be an error
> > > + value,  which shall be propagated to the mailbox client.
> > > +
> > > +  Any core which supports the SMC or HVC instruction can be used,
> > > + as long  as a firmware component running in EL3 or EL2 is handling
> these calls.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    oneOf:
> > > +      - description:
> > > +          For implementations using ARM SMC instruction.
> > > +        const: arm,smc-mbox
> > > +
> > > +      - description:
> > > +          For implementations using ARM HVC instruction.
> > > +        const: arm,hvc-mbox
> >
> > I am not particularly happy with this, but well ...
> >
> > > +
> > > +  "#mbox-cells":
> > > +    const: 1
> >
> > Why is this "1"? What is this number used for? It used to be the channel ID,
> but since you are describing a single channel controller only, this should be 0
> now.
> >
> Yes. I overlooked it and actually queued the patch for pull request.

In Documentation/devicetree/bindings/mailbox/mailbox.txt
#mbox-cells: Must be at least 1.

So I use 1 here, 0 not work. Because of_mbox_index_xlate expect at least 1 here.
So I need modify Documentation/devicetree/bindings/mailbox/mailbox.txt
and add xlate for smc mailbox?

Thanks,
Peng.

> But I think the bindings should not carry a 'fix' patch later. Also I realise this
> revision of binding hasn't been reviewed by Rob. Maybe I should drop the
> patch for now.
> 
> > > +
> > > +  arm,func-id:
> > > +    description: |
> > > +      An 32-bit value specifying the function ID used by the mailbox.
> >
> >          A single 32-bit value ...
> >
> > > +      The function ID follow the ARM SMC calling convention standard
> [1].
> >
> >                          follows
> >
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > +
> > > +required:
> > > +  - compatible
> > > +  - "#mbox-cells"
> > > +
> > > +examples:
> > > +  - |
> > > +    sram@93f000 {
> > > +      compatible = "mmio-sram";
> > > +      reg = <0x0 0x93f000 0x0 0x1000>;
> > > +      #address-cells = <1>;
> > > +      #size-cells = <1>;
> > > +      ranges = <0x0 0x93f000 0x1000>;
> > > +
> > > +      cpu_scp_lpri: scp-shmem@0 {
> > > +        compatible = "arm,scmi-shmem";
> > > +        reg = <0x0 0x200>;
> > > +      };
> > > +    };
> > > +
> > > +    smc_tx_mbox: tx_mbox {
> > > +      #mbox-cells = <1>;
> >
> > As mentioned above, should be 0.
> >
> > > +      compatible = "arm,smc-mbox";
> > > +      /* optional */
> >
> > First: having "optional" in a specific example is not helpful, just confusing.
> > Second: It is actually *not* optional in this case, as there is no other way of
> propagating the function ID. The SCMI driver as the mailbox client has
> certainly no clue about this.
> > I think I said this previously: Relying on the mailbox client to pass the
> function ID sounds broken, as this is a property of the mailbox controller driver.
> The mailbox client does not care about this mailbox communication detail, it
> just wants to trigger the mailbox.
> >
> Again, the mailbox controller here is the SMC/HVC _instruction_, which
> doesn't care what value the first argument carry.
> 
> Cheers!
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
