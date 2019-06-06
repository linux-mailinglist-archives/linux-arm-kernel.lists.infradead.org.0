Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB0636A7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 05:24:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MuemClImW6TSCkbbgfF7jfcfTXblPlb5kCnTOe1OwT4=; b=p7TFyHpARLwe/T
	l7IwHf9MjLyFNEWbGjhk4DgTLLKeJAlbgAHOiFiIa1Xct5HvEXYedwPC8Pb7A33T01xcnpdccrxXV
	74lhbH9RngtB7ZKnWAkBeJFgJNwBql6ePZ6nsV72LhAxw0ZYR4bOBZpj7vN0jJeqoWBbYya6Um/yt
	1Li+WUqAbZRtCE+QR20P6A7i8yMfZfQNEM6G6i7RGdUlKBqSzIcK9Tqi+dAvskx48Bg1PPVE3OBy0
	vwXo+csDockPiXjd6LJGsTN1fMwbEnldJyu6VCekeD0yCo3gR/skNIyRIZazY+PLJrdK6XslbyNQB
	5i0IP5AyLK/SXUf3hXLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYj1J-0007Et-Ia; Thu, 06 Jun 2019 03:24:53 +0000
Received: from mail-eopbgr80047.outbound.protection.outlook.com ([40.107.8.47]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYj1B-0007E5-DX
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 03:24:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NOOuwUCUiVc6WZkaFHa4DL/UnHk2vuFFTUvIS+XE/yM=;
 b=nHQPlhkitmnSLTH4moWsWcndSusPKuOpPyHadm23ouSdgc4pzjRV9vSQ1m7owB9aSQzwWdDUgwGKrgRs6oM9kpH5nhCyqGSDg5/C+Mo4M7wDaA/rnWGb2QQKmZwOX/Ya7++j8tIcy8lEx/fUSsXXBFmmxLn0AjNXcYOm8PogPRk=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6484.eurprd04.prod.outlook.com (20.179.253.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.13; Thu, 6 Jun 2019 03:24:38 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6090:1f0b:b85b:8015]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6090:1f0b:b85b:8015%3]) with mapi id 15.20.1943.023; Thu, 6 Jun 2019
 03:24:38 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Andre Przywara <andre.przywara@arm.com>, Sudeep Holla
 <sudeep.holla@arm.com>
Subject: RE: [PATCH V2 1/2] DT: mailbox: add binding doc for the ARM SMC
 mailbox
Thread-Topic: [PATCH V2 1/2] DT: mailbox: add binding doc for the ARM SMC
 mailbox
Thread-Index: AQHVGeZSRIOE2F02XEeufaIbr7CheqaKHTcAgAAJqoCAAAYrAIADzXeQ
Date: Thu, 6 Jun 2019 03:24:38 +0000
Message-ID: <AM0PR04MB4481632406DF235996719C0788170@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-2-peng.fan@nxp.com>
 <ae4c79f0-4aec-250e-e312-20aba5554665@gmail.com>
 <20190603165651.GA12196@e107155-lin>
 <20190603181856.34996aaa@donnerap.cambridge.arm.com>
In-Reply-To: <20190603181856.34996aaa@donnerap.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9a62be9d-0f03-48e8-cd66-08d6ea2e81bf
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6484; 
x-ms-traffictypediagnostic: AM0PR04MB6484:
x-microsoft-antispam-prvs: <AM0PR04MB6484A7483A3A2076490127C788170@AM0PR04MB6484.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(376002)(366004)(346002)(396003)(199004)(189003)(7696005)(33656002)(186003)(53546011)(102836004)(26005)(3846002)(6116002)(7416002)(6506007)(76176011)(66066001)(229853002)(6436002)(6246003)(8676002)(14454004)(15650500001)(74316002)(316002)(110136005)(5660300002)(54906003)(478600001)(71200400001)(71190400001)(99286004)(52536014)(4326008)(66556008)(25786009)(7736002)(256004)(53936002)(55016002)(2906002)(81156014)(86362001)(81166006)(8936002)(14444005)(68736007)(486006)(44832011)(446003)(11346002)(476003)(66476007)(66946007)(76116006)(73956011)(64756008)(66446008)(9686003)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6484;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: EANI2+MuLpqHK8Wycwtqs5ea69v7RjMfu3vwMzfrGpE/mf9lLQlFUK0CFJPD/VQ+WaMUhE/Dvgo6bLDEZXm7XayHXMzth84b0p2BVTK1/zQXBox8Njn9M9YVTagkV5ZvX4R1lB8x+tjhu2yXvdVRlWfPfnkaDahKKf8YXC0eI+a9uuFvuSqjGuRCDL/apRGRADEX/sE5mtqqYWuD6lTW4ejuKGwqr9NX6F5x8ytBzjwYVkgkl2syYN3PuPpZY1CSt9yuGwMarXitsJ7XOgUyg3L5XlJWP9A6PzjMXy1eDljjsOvRH9qus0i4nnL+bIkK/wS8wq4608JCgablQIPdDopUDiuHzx/Eazo+oMy8/yjM5pOeIQd/0pPB3w4YMFtE44B6xmlK+Fq8FFrsfbl3aNGIrQgMnHluxAnfxx7gxH8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a62be9d-0f03-48e8-cd66-08d6ea2e81bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 03:24:38.4930 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6484
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_202445_463116_3D6133FA 
X-CRM114-Status: GOOD (  30.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH V2 1/2] DT: mailbox: add binding doc for the ARM SMC
> mailbox
> 
> On Mon, 3 Jun 2019 17:56:51 +0100
> Sudeep Holla <sudeep.holla@arm.com> wrote:
> 
> Hi,
> 
> > On Mon, Jun 03, 2019 at 09:22:16AM -0700, Florian Fainelli wrote:
> > > On 6/3/19 1:30 AM, peng.fan@nxp.com wrote:
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > >
> > > > The ARM SMC mailbox binding describes a firmware interface to
> > > > trigger actions in software layers running in the EL2 or EL3 exception
> levels.
> > > > The term "ARM" here relates to the SMC instruction as part of the
> > > > ARM instruction set, not as a standard endorsed by ARM Ltd.
> > > >
> > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > > ---
> > > >
> > > > V2:
> > > > Introduce interrupts as a property.
> > > >
> > > > V1:
> > > > arm,func-ids is still kept as an optional property, because there
> > > > is no defined SMC funciton id passed from SCMI. So in my test, I
> > > > still use arm,func-ids for ARM SIP service.
> > > >
> > > >  .../devicetree/bindings/mailbox/arm-smc.txt        | 101
> +++++++++++++++++++++
> > > >  1 file changed, 101 insertions(+)  create mode 100644
> > > > Documentation/devicetree/bindings/mailbox/arm-smc.txt
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.txt
> > > > b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
> > > > new file mode 100644
> > > > index 000000000000..401887118c09
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.txt
> > > > @@ -0,0 +1,101 @@
> >
> > [...]
> >
> > > > +Optional properties:
> > > > +- arm,func-ids		An array of 32-bit values specifying the function
> > > > +			IDs used by each mailbox channel. Those function IDs
> > > > +			follow the ARM SMC calling convention standard [1].
> > > > +			There is one identifier per channel and the number
> > > > +			of supported channels is determined by the length
> > > > +			of this array.
> > > > +- interrupts		SPI interrupts may be listed for notification,
> > > > +			each channel should use a dedicated interrupt
> > > > +			line.
> > >
> > > I would not go about defining a specific kind of interrupt, since
> > > SPI is a GIC terminology, this firmware interface could be used in
> > > premise with any parent interrupt controller, for which the concept
> > > of a SPI/PPI/SGI may not be relevant.
> > >
> >
> > While I agree the binding document may not contain specifics, I still
> > don't see how to use SGI with this. Also note it's generally reserved
> > for OS future use(IPC) and using this for other than IPC may be bit
> > challenging IMO. It opens up lots of questions.
> 
> Well, a PPI might be possible to use, although it's somewhat dodgy to hijack
> the GIC's (re-)distributor from EL3 to write to GICD_ISPENDR<n>. Need to ask
> Marc about his feelings towards this. But it's definitely possible from a
> hypervisor to inject arbitrary interrupts into a guest.
> 
> But more importantly: is there any actual reason this needs to be a GIC
> interrupt? 

No. I just test ATF with SPI when I posting out this. Should not restrict to be GIC.

If I understand the code correctly, this could just be any interrupt,
> including one of an interrupt combiner or a GPIO chip. So why not just use the
> standard wording of: "exactly one interrupt specifier for each channel"?

Agree.

> 
> By the way: Shouldn't new bindings use the YAML format instead?

I'll convert to YAML in next version.

Thanks,
Peng.

> 
> Cheers,
> Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
