Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA7616122F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 13:36:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WqyIM3Q7kWsuEjJtN2F9fJEOGAXIhmixf7a+/LsL/Gw=; b=nor48wkVBjbX+N
	2h8MfGOyryHXEiAPjM4YVdjSg8Lqf6P5mn38zlSlJv9WsfIWceYbYI74Ub8E2Eg/ISB2XwHyMdkxa
	uhd1S7oDvwlDD0Fpn4fvyTv6wWQDZMR+8uqJlBtMlekaorSa3AfVjBZQrJkwzZ0XHrHSIyuj0TKF0
	3ncqKpo06l1NsmRG0Zlv7c5dzjstYK5W/GTejTX9WOy2TVFg/iXEsLUWjXf2sOLXx6ayZO27kXcwt
	DQMRL9gY4cnw1lOya7Hs0dm6kW7g5qbSfPxUCnIo/+MLi81bGpXNW7QxqwxqlIpg7T1x+wd9C4+sI
	bD0ZyFO3hh6Wg4c+E8XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3fd9-0003Zd-QC; Mon, 17 Feb 2020 12:36:07 +0000
Received: from mail-eopbgr60053.outbound.protection.outlook.com ([40.107.6.53]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fcK-00032P-7j
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 12:35:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vw+dT+9sWa91y2sGR9hK4gANUfOpJoRPgD91sE3huyQvZ3Yo6ULLKERMTDfEBqmfGMpwBVVuUgHyWHh5n3y41cGGsNzgXymSXZi52snOg/Ld+Fa+EcuG8h65C9+iSdeRNlx/lfZj3kXYw4tXtT1SBa4orID1yx7CQjc471E3x1VHBcweA3yISSCarfm8DGMtQfPjTXoHsnqdyfiCk120tREuEOecvLUcbuI3P7CKaUZ/5Q5bDzEtN88UW6gu2Wx59EAk9Z7VpAkpIxtaph7M/ZGw9JuiONRO3WTWTta9eQZbqyHMeC32fuUFD7xhb60LY//vNNjIYtFojuxdvzv0ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O+0vORzd3WBwY9d2eryCv4ThvMYc8u/GiLxU4zQTmy8=;
 b=PP4X7k66vWo/kV+OM6KOGKoMEoJZeCzs7ke7hHR/TXLt98PpxiF5/OZ2nK3CAr87MIQIJBEqa+2oyA0mcsu7CZdpYZjEtWG50H/3KnZmCZewIzYLNmyvQojICBMO84EL2CJEm161PlQn481hfb8otIJAN4anJETVLb9izCd0iMvAWB1HlxmFCxbeGciSJ5ZnR0ZjbXMo6vt+mSRB2iqKIDyDlBxFrcDc50lXr99iabod2/CkxHjg0iWVRJ3sv/fC7jF+gnTV8eKyg32d3GoJ2O7S6oGxuA3HyvlTVMx2qTQ2Jniy8u3GbIoRo4xyBKhmNJIOyVJwX+IXa4nEe6Q3VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O+0vORzd3WBwY9d2eryCv4ThvMYc8u/GiLxU4zQTmy8=;
 b=AYlebW98JYLX/U6vEap8g0PmfbgEJXuCWcvUQkrEj1f3NGB3rm+u+/RTSYNhYPrW/1mUUypJu0qvxbDCYitiiuXMRJGYnZaCV5c/sFIwT2Lc8MVjdVaNBxCw872UnhsPJ3+LkkyYN6Hpm6YQ6Mrt50K3Q4dUZI8NKFZy20IVUFs=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2336.eurprd04.prod.outlook.com (10.169.132.145) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Mon, 17 Feb 2020 12:35:13 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::196a:28a9:bb9:2fae]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::196a:28a9:bb9:2fae%9]) with mapi id 15.20.2729.032; Mon, 17 Feb 2020
 12:35:13 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: RE: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Thread-Topic: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Thread-Index: AQHV1bJZgaFB40NXxUCtFFLRVXyi06f/610AgAStpQCAAAiuAIAAD1yAgBYviuCAABITAIAAAFRwgAAG0ICAAAEwoIAAF+uAgARaY6A=
Date: Mon, 17 Feb 2020 12:35:12 +0000
Message-ID: <VI1PR0401MB2496308C27B7DAA7A5396970F1160@VI1PR0401MB2496.eurprd04.prod.outlook.com>
References: <1580198925-50411-1-git-send-email-makarand.pawagi@nxp.com>
 <20200128110916.GA491@e121166-lin.cambridge.arm.com>
 <DB8PR04MB7164DDF48480956F05886DABEB070@DB8PR04MB7164.eurprd04.prod.outlook.com>
 <12531d6c569c7e14dffe8e288d9f4a0b@kernel.org>
 <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
 <VI1PR0401MB249622CFA9B213632F1DE955F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <7349fa0e6d62a3e0d0e540f2e17646e0@kernel.org>
 <VI1PR0401MB2496373E0C6D1097F22B3026F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <20200214161957.GA27513@e121166-lin.cambridge.arm.com>
 <VI1PR0401MB2496800C88A3A2CF912959E6F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <20200214174949.GA30484@e121166-lin.cambridge.arm.com>
In-Reply-To: <20200214174949.GA30484@e121166-lin.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-originating-ip: [92.120.1.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7afcdbc2-24e9-46b4-bd36-08d7b3a5d5b4
x-ms-traffictypediagnostic: VI1PR0401MB2336:|VI1PR0401MB2336:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0401MB23368FB53DD9C3321C4AB30AF1160@VI1PR0401MB2336.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0316567485
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(396003)(39860400002)(366004)(376002)(199004)(189003)(55016002)(66556008)(71200400001)(64756008)(478600001)(7416002)(966005)(9686003)(66446008)(33656002)(86362001)(52536014)(66946007)(76116006)(81156014)(8676002)(8936002)(2906002)(53546011)(7696005)(81166006)(26005)(4326008)(186003)(44832011)(5660300002)(45080400002)(66476007)(6916009)(54906003)(316002)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2336;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IK7evDv3gQEmnw/PqX+rcRcqeLXpg8cDaO8JKiQFSodr2ycDtGbJRc1XYoX08HFPX4NGVUmllGaWMzjM0PR3tI1hgQ4Uudmj/2TgGq/R4Bj72LJFqT69k2TtapxiPBn6rEMcckQj4RhgLT42wyjG6uhcSOHM4a1k2f4dbljXE+ke3ifEQkXoQ9MMGv9Gi0rXpAWYjwyfPzttr/2YxjwcToU8aQQAVDJKkDfnNCzacD44xCbYNCu6q6b4nRHSX5dKeaOOWI2DustwRI6M4TWa2Hpgaf0XLd4lcYUKHs9z3H3QfRXPXXPHTBbM9TEJZyHEt3nc3jX1r79rna7t/3wEzwPSLiMVLryxbZSLVwid4mv2v6XUb7Ckhhc42wMRuV7UpYQrtW2sTXY/AEe8NTYQv76xnBuuPl7ojqLy3A0Er7sG5ozR0CqlDlSQqIZTot32CSq98UjfO/g5ZNkf1kisYmcUnOnaTsNWiD3nj42TDqFZpiu3PyfFpG6TYcPJw6nl7JGBC8ul6GXEIP+ZCJ35hQ==
x-ms-exchange-antispam-messagedata: WL1esRRsJNpjC1ZxMgx5rEuikYBKXwmOku0V9Lc6QCtkvkUY7UtPxJ0aRiGlEoYKE5qYPdvLX8ssaIwZ561pmcrAJIzB7aVOzFx0mCuGyz/D35YXmv9bTapxSiSFp916ZEr4rTBX1JWo+Zjt8ZsibQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7afcdbc2-24e9-46b4-bd36-08d7b3a5d5b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2020 12:35:12.8763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C+z7EWfZEe/Kx6T3CKCm/SPRsyitkwdP+amUlBAxiCoReiSbVaSVBdoQsoSLzPxdGGVavNWgWB7gRQfS6N7u6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2336
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_043516_431052_310483AD 
X-CRM114-Status: GOOD (  24.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Calvin Johnson <calvin.johnson@nxp.com>,
 "stuyoder@gmail.com" <stuyoder@gmail.com>,
 "nleeder@codeaurora.org" <nleeder@codeaurora.org>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>, Hanjun Guo <guohanjun@huawei.com>,
 Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
 "jon@solid-run.com" <jon@solid-run.com>, Russell King <linux@armlinux.org.uk>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Len Brown <lenb@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Andy Wang <Andy.Wang@arm.com>, Makarand Pawagi <makarand.pawagi@nxp.com>,
 Varun Sethi <V.Sethi@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Paul Yang <Paul.Yang@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Sent: Friday, February 14, 2020 11:20 PM
> To: Pankaj Bansal <pankaj.bansal@nxp.com>
> Cc: Marc Zyngier <maz@kernel.org>; Ard Biesheuvel
> <ard.biesheuvel@linaro.org>; Makarand Pawagi <makarand.pawagi@nxp.com>;
> Calvin Johnson <calvin.johnson@nxp.com>; stuyoder@gmail.com;
> nleeder@codeaurora.org; Ioana Ciornei <ioana.ciornei@nxp.com>; Cristi
> Sovaiala <cristian.sovaiala@nxp.com>; Hanjun Guo <guohanjun@huawei.com>;
> Will Deacon <will@kernel.org>; jon@solid-run.com; Russell King
> <linux@armlinux.org.uk>; ACPI Devel Maling List <linux-acpi@vger.kernel.org>;
> Len Brown <lenb@kernel.org>; Jason Cooper <jason@lakedaemon.net>; Andy
> Wang <Andy.Wang@arm.com>; Varun Sethi <V.Sethi@nxp.com>; Thomas
> Gleixner <tglx@linutronix.de>; linux-arm-kernel <linux-arm-
> kernel@lists.infradead.org>; Laurentiu Tudor <laurentiu.tudor@nxp.com>; Paul
> Yang <Paul.Yang@arm.com>; netdev@vger.kernel.org; Rafael J. Wysocki
> <rjw@rjwysocki.net>; Linux Kernel Mailing List <linux-kernel@vger.kernel.org>;
> Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>;
> Sudeep Holla <sudeep.holla@arm.com>; Robin Murphy
> <robin.murphy@arm.com>
> Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
> 
> On Fri, Feb 14, 2020 at 04:35:10PM +0000, Pankaj Bansal wrote:
> 
> [...]
> 
> > > -----Original Message-----
> > > From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > Sent: Friday, February 14, 2020 9:50 PM
> > > To: Pankaj Bansal <pankaj.bansal@nxp.com>
> > > Cc: Marc Zyngier <maz@kernel.org>; Ard Biesheuvel
> > > <ard.biesheuvel@linaro.org>; Makarand Pawagi
> <makarand.pawagi@nxp.com>;
> > > Calvin Johnson <calvin.johnson@nxp.com>; stuyoder@gmail.com;
> > > nleeder@codeaurora.org; Ioana Ciornei <ioana.ciornei@nxp.com>; Cristi
> > > Sovaiala <cristian.sovaiala@nxp.com>; Hanjun Guo
> <guohanjun@huawei.com>;
> > > Will Deacon <will@kernel.org>; jon@solid-run.com; Russell King
> > > <linux@armlinux.org.uk>; ACPI Devel Maling List <linux-
> acpi@vger.kernel.org>;
> > > Len Brown <lenb@kernel.org>; Jason Cooper <jason@lakedaemon.net>;
> Andy
> > > Wang <Andy.Wang@arm.com>; Varun Sethi <V.Sethi@nxp.com>; Thomas
> > > Gleixner <tglx@linutronix.de>; linux-arm-kernel <linux-arm-
> > > kernel@lists.infradead.org>; Laurentiu Tudor <laurentiu.tudor@nxp.com>;
> Paul
> > > Yang <Paul.Yang@arm.com>; netdev@vger.kernel.org; Rafael J. Wysocki
> > > <rjw@rjwysocki.net>; Linux Kernel Mailing List <linux-
> kernel@vger.kernel.org>;
> > > Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>;
> > > Sudeep Holla <sudeep.holla@arm.com>; Robin Murphy
> > > <robin.murphy@arm.com>
> > > Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
> Side note: would you mind removing the email headers (as above) in your
> replies please ?
> 
> > > On Fri, Feb 14, 2020 at 03:58:14PM +0000, Pankaj Bansal wrote:
> > >
> > > [...]
> > >
> > > > > Why should the device know about its own ID? That's a bus/interconnect
> > > thing.
> > > > > And nothing should be passed *to* IORT. IORT is the source.
> > > >
> > > > IORT is translation between Input IDs <-> Output IDs. The Input ID is still
> > > expected to be passed to parse IORT table.
> > >
> > > Named components use an array of single mappings (as in entries with single
> > > mapping flag set) - Input ID is irrelevant.
> > >
> > > Not sure what your named component is though and what you want to do
> with
> > > it, the fact that IORT allows mapping for named components do not
> necessarily
> > > mean that it can describe what your system really is, on that you need to
> > > elaborate for us to be able to help.
> >
> > Details about MC bus can be read from here:
> >
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Felixir.boo
> tlin.com%2Flinux%2Flatest%2Fsource%2FDocumentation%2Fnetworking%2Fdev
> ice_drivers%2Ffreescale%2Fdpaa2%2Foverview.rst%23L324&amp;data=02%7C0
> 1%7Cpankaj.bansal%40nxp.com%7Cf1bcfc907a42463b617408d7b1764f0f%7C6
> 86ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637172993997763634&am
> p;sdata=fPcC2UfsHoS25oYGmxJmsbPXxb1brKxP1i2qJfPdRpk%3D&amp;reserved
> =0
> >
> > As stated above, in Linux MC is a bus (just like PCI bus, AMBA bus etc)
> > There can be multiple devices attached to this bus. Moreover, we can
> dynamically create/destroy these devices.
> > Now, we want to represent this BUS (not individual devices connected to bus)
> in IORT table.
> > The only possible way right now we see is that we describe it as Named
> components having a pool of ID mappings.
> > As and when devices are created and attached to bus, we sift through this pool
> to correctly determine the output ID for the device.
> > Now the input ID that we provide, can come from device itself.
> > Then we can use the Platform MSI framework for MC bus devices.
> 
> So are you asking me if that's OK ? Or there is something you can't
> describe with IORT ?

I am asking if that would be acceptable?
i.e. we represent MC bus as Named component is IORT table with a pool of IDs (without single ID mapping flag)
and then we use the Platform MSI framework for all children devices of MC bus.
Note that it would require the Platform MSI layer to correctly pass an input id for a platform device to IORT layer.
And IORT layer ought to retrieve the output id based on single ID mapping flag as well as input id.

> 
> Side note: can you explain to me please how the MSI allocation flow
> and kernel data structures/drivers are modeled in DT ? I had a quick
> look at:
> 
> drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c
> 
> and to start with, does that code imply that we create a
> DOMAIN_BUS_FSL_MC_MSI on ALL DT systems with an ITS device node ?

Yes. It's being done for all DT systems having ITS node.
The domain creation is handled in drivers/bus/fsl-mc/fsl-mc-msi.c

> 
> I *think* you have a specific API to allocate MSIs for MC devices:
> 
> fsl_mc_msi_domain_alloc_irqs()
> 
> which hook into the IRQ domain created in the file above that handles
> the cascading to an ITS domain, correct ?

We associate the above created domain with dpaa2 device here:
https://elixir.bootlin.com/linux/latest/source/drivers/bus/fsl-mc/dprc-driver.c#L640

Then fsl_mc_msi_domain_alloc_irqs, retrieves the domain associated with device and calls the msi_prepare
API from its_fsl_mc_msi_prepare.

> 
> Thanks,
> Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
