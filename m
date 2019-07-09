Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD80E62D8D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 03:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+GRnxOPr34xX54qShXb86JLMH50iwlIRydoAsjzIURQ=; b=rjTSGgQ7nmIJ5v
	2kK+gtRpOItB+GfxFk2cNOFchNt5lXG4V+xbSYJB/ZcuFG+Aw977sCpdbyTDp18QiYFSDQ1PjDg1k
	0CG6wo5s5hQ0SL9eA3nHyoCl3/93xwbD9Y/6hqQzW7EhQoEBmh/rOhXHkEGAo3rXG/2s/+QJuK7O4
	Z3NiO+pshu6b0bmk+EnJAzX1At8w0++2MrphcA1CrZkYartci4lDrb1wjCUL5HR2pPSh/zFftKnko
	2EC/ZPEjY4UVPTi0wzDMtpLeEVcAgke9d7Z/IYi8aYvq1fpxoyB371UY5nhMsrR7QIgZxwEkuKhnH
	2fz1kGJ5FHA6H7b6Ns4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkf7u-0007GZ-78; Tue, 09 Jul 2019 01:41:02 +0000
Received: from mail-eopbgr80089.outbound.protection.outlook.com ([40.107.8.89]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkf7f-0007FU-9R
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 01:40:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hAYUNZqACxVsg1LbGPW+thCUDZSdznnMZMPyN61jD34=;
 b=rjCipubRR4UclVv3h8eLgufxtDjlIkog6MpAxM2YJFPCiueEPTMctnFyqfPQeNbWGmaG2wAwJQrtU9sFG1+5wby68cBZSkwvOK+Ljx9rztrTnKlsZgxJ/PoB0TPwDD8UujPs+N5C8XHp0CO99+wmvSY3p0IC1VkKGIlTgPjIIyg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5988.eurprd04.prod.outlook.com (20.178.115.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Tue, 9 Jul 2019 01:40:42 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::2023:c0e5:8a63:2e47%5]) with mapi id 15.20.2052.020; Tue, 9 Jul 2019
 01:40:42 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH V2 1/2] DT: mailbox: add binding doc for the ARM SMC
 mailbox
Thread-Topic: [PATCH V2 1/2] DT: mailbox: add binding doc for the ARM SMC
 mailbox
Thread-Index: AQHVGeZSRIOE2F02XEeufaIbr7CheqbBgrOAgAA3osA=
Date: Tue, 9 Jul 2019 01:40:41 +0000
Message-ID: <AM0PR04MB44816C38C43A3C8E09E8FFF588F10@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-2-peng.fan@nxp.com> <20190708221947.GA13552@bogus>
In-Reply-To: <20190708221947.GA13552@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 42ec24e4-e0d3-4b63-e910-08d7040e741e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5988; 
x-ms-traffictypediagnostic: AM0PR04MB5988:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB598855F981999A8D8B9363D588F10@AM0PR04MB5988.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(366004)(376002)(396003)(199004)(189003)(8936002)(68736007)(66066001)(11346002)(99286004)(4326008)(446003)(33656002)(6116002)(3846002)(71190400001)(74316002)(14454004)(476003)(6916009)(15650500001)(2906002)(14444005)(71200400001)(44832011)(81166006)(229853002)(64756008)(6246003)(55016002)(6306002)(9686003)(26005)(6436002)(256004)(66476007)(7416002)(66446008)(53936002)(66556008)(305945005)(7736002)(66946007)(81156014)(8676002)(76116006)(73956011)(86362001)(52536014)(316002)(54906003)(7696005)(186003)(25786009)(102836004)(45080400002)(76176011)(486006)(5660300002)(6506007)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5988;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6NqkskxAMPb2EUyQIGQuK27+AabGMhVGbiND4/ZC2eIdV0UnvIEhef0tYarcRR+mz64xaNdNQsK1WnLBNMoDO5KPpT2j/k1raGxvCgFtQXfUwTD7223jTka3k2KONw/ldFu1x/4tbDPZTbpYIix3yz/3LsQmZLb2DsEvKKcHu9u5k12BmjsMMhKsoVwh8+TzkqwJQYe7cmT6wAxKOadebYOadLxiqBnLnWi5GVvzXwJGOk8PZOzMgF1u2BlEDGBqSQwlcCM4crQ3PWJnAS7xfwhijujLPYv5pcj7YJ84LKFHOI8g6l0peg7me+vYHuk/qZuEgYHpN0NsFY5mm0B6jaFqq0mRNz3x1VyAM+2l+H7GY8+v8xPqTdtK5mYgmfYhEkqky5/uGfZmqrWh9E9tScRkBMtGgOji1XC+7/+tGSg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42ec24e4-e0d3-4b63-e910-08d7040e741e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 01:40:41.8421 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5988
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_184047_423110_1EBD1026 
X-CRM114-Status: GOOD (  31.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

> Subject: Re: [PATCH V2 1/2] DT: mailbox: add binding doc for the ARM SMC
> mailbox
> 
> On Mon, Jun 03, 2019 at 04:30:04PM +0800, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > The ARM SMC mailbox binding describes a firmware interface to trigger
> > actions in software layers running in the EL2 or EL3 exception levels.
> > The term "ARM" here relates to the SMC instruction as part of the ARM
> > instruction set, not as a standard endorsed by ARM Ltd.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >
> > V2:
> > Introduce interrupts as a property.
> >
> > V1:
> > arm,func-ids is still kept as an optional property, because there is
> > no defined SMC funciton id passed from SCMI. So in my test, I still
> > use arm,func-ids for ARM SIP service.
> >
> >  .../devicetree/bindings/mailbox/arm-smc.txt        | 101
> +++++++++++++++++++++
> >  1 file changed, 101 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/mailbox/arm-smc.txt
> >
> > diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.txt
> > b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
> > new file mode 100644
> > index 000000000000..401887118c09
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
> > @@ -0,0 +1,101 @@
> > +ARM SMC Mailbox Interface
> > +=========================
> > +
> > +This mailbox uses the ARM smc (secure monitor call) instruction to
> > +trigger a mailbox-connected activity in firmware, executing on the
> > +very same core as the caller. By nature this operation is synchronous
> > +and this mailbox provides no way for asynchronous messages to be
> > +delivered the other way round, from firmware to the OS, but
> > +asynchronous notification could also be supported. However the value
> > +of r0/w0/x0 the firmware returns after the smc call is delivered as a
> > +received message to the mailbox framework, so a synchronous
> > +communication can be established, for a asynchronous notification, no
> > +value will be returned. The exact meaning of both the action the
> > +mailbox triggers as well as the return value is defined by their users and is
> not subject to this binding.
> > +
> > +One use case of this mailbox is the SCMI interface, which uses shared
> > +memory to transfer commands and parameters, and a mailbox to trigger
> > +a function call. This allows SoCs without a separate management
> > +processor (or when such a processor is not available or used) to use
> > +this standardized interface anyway.
> > +
> > +This binding describes no hardware, but establishes a firmware interface.
> > +Upon receiving an SMC using one of the described SMC function
> > +identifiers, the firmware is expected to trigger some mailbox connected
> functionality.
> > +The communication follows the ARM SMC calling convention[1].
> > +Firmware expects an SMC function identifier in r0 or w0. The
> > +supported identifiers are passed from consumers, or listed in the the
> > +arm,func-ids properties as described below. The firmware can return
> > +one value in the first SMC result register, it is expected to be an
> > +error value, which shall be propagated to the mailbox client.
> > +
> > +Any core which supports the SMC or HVC instruction can be used, as
> > +long as a firmware component running in EL3 or EL2 is handling these calls.
> > +
> > +Mailbox Device Node:
> > +====================
> > +
> > +This node is expected to be a child of the /firmware node.
> > +
> > +Required properties:
> > +--------------------
> > +- compatible:		Shall be "arm,smc-mbox"
> > +- #mbox-cells		Shall be 1 - the index of the channel needed.
> > +- arm,num-chans		The number of channels supported.
> > +- method:		A string, either:
> > +			"hvc": if the driver shall use an HVC call, or
> > +			"smc": if the driver shall use an SMC call.
> > +
> > +Optional properties:
> > +- arm,func-ids		An array of 32-bit values specifying the function
> > +			IDs used by each mailbox channel. Those function IDs
> > +			follow the ARM SMC calling convention standard [1].
> > +			There is one identifier per channel and the number
> > +			of supported channels is determined by the length
> > +			of this array.
> > +- interrupts		SPI interrupts may be listed for notification,
> > +			each channel should use a dedicated interrupt
> > +			line.
> > +
> > +Example:
> > +--------
> > +
> > +	sram@910000 {
> > +		compatible = "mmio-sram";
> > +		reg = <0x0 0x93f000 0x0 0x1000>;
> > +		#address-cells = <1>;
> > +		#size-cells = <1>;
> > +		ranges = <0 0x0 0x93f000 0x1000>;
> > +
> > +		cpu_scp_lpri: scp-shmem@0 {
> > +			compatible = "arm,scmi-shmem";
> > +			reg = <0x0 0x200>;
> > +		};
> > +
> > +		cpu_scp_hpri: scp-shmem@200 {
> > +			compatible = "arm,scmi-shmem";
> > +			reg = <0x200 0x200>;
> > +		};
> > +	};
> > +
> > +	smc_mbox: mailbox {
> 
> This should be a child of 'firmware' node at least and really a child of the
> firmware component that implements the feature.

I checked other mbox driver, including the mbox used by ti sci, mbox used by
i.MX8QXP. both mbox dts node not a child a firmware node,
I am not sure why put mbox node into a child a firmware node here.

Thanks,
Peng.

> 
> > +		#mbox-cells = <1>;
> > +		compatible = "arm,smc-mbox";
> > +		method = "smc";
> > +		arm,num-chans = <0x2>;
> > +		/* Optional */
> > +		arm,func-ids = <0xc20000fe>, <0xc20000ff>;
> > +	};
> > +
> > +	firmware {
> > +		scmi {
> > +			compatible = "arm,scmi";
> > +			mboxes = <&mailbox 0 &mailbox 1>;
> > +			mbox-names = "tx", "rx";
> > +			shmem = <&cpu_scp_lpri &cpu_scp_hpri>;
> > +		};
> > +	};
> > +
> > +
> > +[1]
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Finfo
> >
> +center.arm.com%2Fhelp%2Findex.jsp%3Ftopic%3D%2Fcom.arm.doc.den002
> 8a%2
> >
> +Findex.html&amp;data=02%7C01%7Cpeng.fan%40nxp.com%7Cd8cf8b81b4f
> b49be5
> >
> +97c08d703f26576%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7
> C63698221
> >
> +1931902513&amp;sdata=RtHkNN07b%2FuzdJkiu0QujeJ6czrcwOwEI6Y6JW
> VpPkY%3D
> > +&amp;reserved=0
> > --
> > 2.16.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
