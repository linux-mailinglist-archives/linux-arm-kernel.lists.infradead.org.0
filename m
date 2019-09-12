Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF64B070E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 05:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AxxC+uFv7Lg5xLlrbj2fI2aZDhhLfXuEnD5ituCKZuU=; b=fSluFhw+Ugfp02
	yQYA9mAvsdVbAFh7HS7BVQMXNCsOk1QOxH9gqVAgTwh28+WP+Foi9BWVPTh0PWhnnzwATPjidEh5u
	j/PrwG8xcGKPecA5M1ji8mFg30Tsh9aHp3+B87ZIV8Y1xZHV4HZPZET58alehUZin/h4eFJH4XVtM
	bS/ERJtp2ULzIUpgrNdNwIiQ9mIsewS+Jniw22aqnpxbxlSKmDkXlekFBJQ0JZblx21Z2A6kXqLzr
	6hK3Y8ArKikiBpGk9m44463i/8ilLSEdfWVlVyrWDa2EZBGZn29wfuVl+8D2vG7V5KLYQBWvorZaB
	fsG6sfLIGdIE9g6Kfndw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8FQk-0007kw-DD; Thu, 12 Sep 2019 03:05:58 +0000
Received: from mail-db3eur04on0631.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::631]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8FQX-0007kP-3Q
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 03:05:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LsleQXr0+y5LrTeNAO3dR17DwC0iJF4vObQ49mthFYutfqH/f4n7MVu8+PyyG/MmR+vezMbzBQscoKGUtYqpcaBrmPNmzusNldn162c1DnvbzqStj3QsGqspAByCH/v39q6AxYtZddYuqiq+coPFRz472tAcgE7sHHkC3UszWOBRyDjrz6wykWs9/dwVxLwU3NE0f76lPGc1PhW3ivVq5LSLYbIF8yGQDG9QOgRE6FnNqExFzFRSN3W3nW2Y9bEsq9cDNg4EU1UaHY1mXuY7CaajPrEzXmzh+Oo8exTq27JZUctDepAc16Wh8cCgyanUs4lD/oEbuZ5z+SaPwd30fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ReJAlDDRtsij5AsPyTqjt4ZhZa95sZBco3hFfLI0zVg=;
 b=eTr9CxhfnfHfvYXFAlwZDUvAuxefhoOssp0NK8ty6u0zoJDmpVjq54g1TJZL1svE5IhAtZCbDijNl2bNaf5OCUc5IfwdPn3RpfDrKo1W+qWLAtWqJZjCqpzvOoKSM6GrX0DG+tjq68oPUdiZs3s7ixjxmwForNorQtScI4IHTNjr4RgW16LIy/GD/EHavIlcl/CqKowixRAT1QC+qV+iDhmoMFFo4j8ibuIUseKEmY3QVOihkSxu3l+OER23nKzEIlbBMMZc3cwS3F2aiPRokmSaxtuCQOPu0JeGhQG6346Z+rtz56aOrCKZrQsftJtp43b69asFpgSHIZ5y8fzNwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ReJAlDDRtsij5AsPyTqjt4ZhZa95sZBco3hFfLI0zVg=;
 b=ZuDgyc3GykeNL5AY8wglI7tT0N7EZNjZt4zyXiEDQ58+a1UNWK2by07BCKJudMwM9HwIaO5It3opx/MFMC6OktJI9zrMPEVXsFCsmtWNZ/g7XMc7fV5elSEZGqVOoQg4RmpjDzeyPtIK/eMDIjg6ep7SkW32to+QvOHT0V8zjho=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5699.eurprd04.prod.outlook.com (20.178.119.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Thu, 12 Sep 2019 03:05:40 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2241.022; Thu, 12 Sep 2019
 03:05:40 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Andre Przywara
 <andre.przywara@arm.com>
Subject: RE: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Topic: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Index: AQHVXU0YJPArUxY1ok6XlIUgkri4Vacjj6wAgAJLToCAAM52AIAAH0yAgACplHA=
Date: Thu, 12 Sep 2019 03:05:39 +0000
Message-ID: <AM0PR04MB4481538B358440C42EC4041B88B00@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
 <20190909164208.6605054e@donnerap.cambridge.arm.com>
 <CABb+yY2rppSOgqMy+R294d94xwi5UPR55Eo-WB8KA6m11nG3iQ@mail.gmail.com>
 <20190911160308.30878cc3@donnerap.cambridge.arm.com>
 <CABb+yY1oZxvX+mRNmObAHsGoBfN0F4GO+9PSj06EFaF3DsnstA@mail.gmail.com>
In-Reply-To: <CABb+yY1oZxvX+mRNmObAHsGoBfN0F4GO+9PSj06EFaF3DsnstA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 246858d8-beaa-4dff-1cb1-08d7372e17bb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5699; 
x-ms-traffictypediagnostic: AM0PR04MB5699:|AM0PR04MB5699:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5699A8995DC2B5119A00805588B00@AM0PR04MB5699.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01583E185C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(376002)(39860400002)(136003)(189003)(199004)(486006)(26005)(74316002)(186003)(76176011)(305945005)(15650500001)(14454004)(7736002)(54906003)(110136005)(66066001)(102836004)(6506007)(53546011)(7696005)(11346002)(446003)(316002)(66476007)(66556008)(64756008)(66446008)(66946007)(76116006)(33656002)(478600001)(8936002)(81166006)(81156014)(8676002)(52536014)(2906002)(9686003)(53936002)(6246003)(25786009)(229853002)(6436002)(3846002)(6116002)(71200400001)(71190400001)(86362001)(99286004)(14444005)(44832011)(256004)(4326008)(55016002)(476003)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5699;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0Vjn6MNrZ9XcinDZBGcNudmPjQNRX1mozj0eMWfRyrr9+5tcZOgXR6IvodtQtClKnl2kkMYrH8hVx8GPAD/xKQ32O43A1roiJBOwZf1+bOyEVigyyVAnTNTJBehDifrYAqcMOS6t61tV18TAKsL7n9/GvXViIvag4OVpjPqU2nKdTHCthKOm+jGJDLui0nOaXFGLuYHsDGbc6OqnMrlFUpKHJde/TXmcHgS0qA58XZbQpFBipPGuqukjgVZSvgztXXom4GxvI0ioe6cme9/DJK+0U5rMM3K+UHlWzhyuaO3b3P/cPayn5Vs3yKjLTRzyrWEPxEv/1iFa0LZIX/Uu/V0aXrr1IbicxDY4szJ48zh0DUkGpnV/st8Ts9NxT0vUPj3Q6q/bZIH3jM7GlF01GiNvnsQi/yIHT+lbax4nlhw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 246858d8-beaa-4dff-1cb1-08d7372e17bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2019 03:05:40.1217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UVC1l9pYHgKuwsLPz0+nT/4fMcaHQ1XoTK3IbtfNBALL0dNxpLktPuKwfWxazPj8GHzBoInDRw2zNP8easEIiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5699
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_200545_151308_A0D664DA 
X-CRM114-Status: GOOD (  34.31  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:631 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
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

> Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
> SMC/HVC mailbox
> 
> On Wed, Sep 11, 2019 at 10:03 AM Andre Przywara
> <andre.przywara@arm.com> wrote:
> >
> > On Tue, 10 Sep 2019 21:44:11 -0500
> > Jassi Brar <jassisinghbrar@gmail.com> wrote:
> >
> > Hi,
> >
> > > On Mon, Sep 9, 2019 at 10:42 AM Andre Przywara
> <andre.przywara@arm.com> wrote:
> > > >
> > > > On Wed, 28 Aug 2019 03:02:58 +0000 Peng Fan <peng.fan@nxp.com>
> > > > wrote:
> > > >
> > [ ... ]
> > > >
> > > > > +
> > > > > +  arm,func-ids:
> > > > > +    description: |
> > > > > +      An array of 32-bit values specifying the function IDs used by
> each
> > > > > +      mailbox channel. Those function IDs follow the ARM SMC
> calling
> > > > > +      convention standard [1].
> > > > > +
> > > > > +      There is one identifier per channel and the number of
> supported
> > > > > +      channels is determined by the length of this array.
> > > >
> > > > I think this makes it obvious that arm,num-chans is not needed.
> > > >
> > > > Also this somewhat contradicts the driver implementation, which allows
> the array to be shorter, marking this as UINT_MAX and later on using the first
> data item as a function identifier. This is somewhat surprising and not
> documented (unless I missed something).
> > > >
> > > > So I would suggest:
> > > > - We drop the transports property, and always put the client provided
> data in the registers, according to the SMCCC. Document this here.
> > > >   A client not needing those could always puts zeros (or garbage) in
> there, the respective firmware would just ignore the registers.
> > > > - We drop "arm,num-chans", as this is just redundant with the length of
> the func-ids array.
> > > > - We don't impose an arbitrary limit on the number of channels. From
> the firmware point of view this is just different function IDs, from Linux' point
> of view just the size of the memory used. Both don't need to be limited
> artificially IMHO.
> > > >
> > > Sounds like we are in sync.
> > >
> > > > - We mark arm,func-ids as required, as this needs to be fixed, allocated
> number.
> > > >
> > > I still think func-id can be done without. A client can always pass
> > > the value as it knows what it expects.
> >
> > I don't think it's the right abstraction. The mailbox *controller* uses a
> specific func-id, this has to match the one the firmware expects. So this is a
> property of the mailbox transport channel (the SMC call), and the *client*
> should *not* care about it. It just sees the logical channel ID (if we have one),
> which the controller translates into the func-ID.
> >
> arg0 is special only to the client/protocol, otherwise it is simply the first
> argument for the arm_smccc_smc *instruction* controller.
> arg[1,7] are already provided by the client, so it is only neater if
> arg0 is also taken from the client.
> 
> But as I said, I am still ok if func-id is passed from dt and arg0 from client is
> ignored because we have one channel per controller design and we don't have
> to worry about number of channels there can be dedicated to specific
> functions.

Ok, so I'll make it an optional property.

> 
> > So it should really look like this (assuming only single channel controllers):
> > mailbox: smc-mailbox {
> >     #mbox-cells = <0>;
> >     compatible = "arm,smc-mbox";
> >     method = "smc";
> >
> Do we want to do away with 'method' property and use different 'compatible'
> properties instead?
>  compatible = "arm,smc-mbox";     or    compatible = "arm,hvc-mbox";

I am ok, just need add data in driver to differentiate smc/hvc.
Andre, are you ok?

Thanks,
Peng.

> 
> >     arm,func-id = <0x820000fe>;
> > };
> > scmi {
> >     compatible = "arm,scmi";
> >     mboxes = <&smc_mbox>;
> >     mbox-names = "tx"; /* rx is optional */
> >     shmem = <&cpu_scp_hpri>;
> > };
> >
> > If you allow the client to provide the function ID (and I am not saying this is
> a good idea): where would this func ID come from? It would need to be a
> property of the client DT node, then. So one way would be to use the func ID
> as the Linux mailbox channel ID:
> > mailbox: smc-mailbox {
> >     #mbox-cells = <1>;
> >     compatible = "arm,smc-mbox";
> >     method = "smc";
> > };
> > scmi {
> >     compatible = "arm,scmi";
> >     mboxes = <&smc_mbox 0x820000fe>;
> >     mbox-names = "tx"; /* rx is optional */
> >     shmem = <&cpu_scp_hpri>;
> > };
> >
> > But this doesn't look desirable.
> >
> > And as I mentioned this before: allowing some mailbox clients to provide
> the function IDs sound scary, as they could use anything they want, triggering
> random firmware actions (think PSCI_CPU_OFF).
> >
> That paranoia is unwarranted. We have to keep faith in kernel-space code
> doing the right thing.
> Either the illegitimate function request should be rejected by the firmware or
> client driver be called buggy.... just as we would call a block device driver
> buggy if it messed up the sector numbers in a write request.
> 
> thnx.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
