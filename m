Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E914915E877
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 18:00:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ufWASMzFyjd2PVUzJ+1Zg10oV1QWRMc3Q1QAYLy/ktY=; b=rRij7ri86uJr2O
	rGxb3dd6yzUPp8K6uIZYLZ/ZMHf7SP7gbSb4BWvu67EeLw1OvGEClTbLeFgC53GMmRtWnDoZVLhLD
	lcWzbVU0Nyn+MJTtfJtJyt/TXJZ2zaa/WJWynJHvUAFDcHc8LkTq4XCKrkQi13jfHK9BvEfEgc6mW
	iCGI4kOhE0Z8kZJWjgSoCrU3RJp+iERfrBFaMXlJvNPxo5+NueMROyfDt2TokrX+7hxl4CRaS4qp1
	pPvgx78kXjTJwBbFqepVf6k3C4IIep4SMs5ZBISU/iq72c9WEhj9PHf/MX/P28cmT8/9bkHy49AOx
	r5kM2c/yPeWIn2V1Njiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2eKF-0000IT-8i; Fri, 14 Feb 2020 17:00:23 +0000
Received: from mail-am6eur05on2058.outbound.protection.outlook.com
 ([40.107.22.58] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dvt-0004Tn-Mu
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:35:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PqNugZmi2Q2vZfb1QtvNc35/bs+BYqlobyBaz/fTTcQWN5jJzpRJzoYry8SE1UUYrW4HH6SnKGGmedX00DkbNJx39R+L0bAmL1L0GUzGK7qCxh8IJyCKOCyCQd2lSwid0VhaOz0jyeezy0tHKGPow+9np3YnJwQK6J1gmaDcmLe4DQY7bdPFOA7PrTEpVZAUfXZ4KzZdlzeWZ83POvePD/tpD7JLCW4khc7DWqwxI/Ddu3cD5a0x3gyfXeiEOX5y2DTLxwx9jU//sEvGAWM5Ne4dxYdPcq1RfFBL6C30dpzAQYyEB6iGk69mzi1dvh9J+jTw7jeu7DLaCJScMod8Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b2kN3QfQUhxZgkhGzcKsQOEtUmZa44QdzyLpV9NnSac=;
 b=TFrwp/D5tNaOJcy9861Vp7Xkg5KhrbLYsrz1VXJX3GVhHJA3YMzYHToBMCqmwkdhZalSDFrLTfrhhgG2vATBU2DMRViIZ56W+nndYHbb88Dq9e6LOeP+Wg26CbTImqFQcik1Cs8NtAYnXWPjgMnWZyasaf4Fnmnb+hmQhUm3JI+0stThJET/NR9kkP7V7a60WJc+/7LP+E+sVJtj3/qCZ8l3xXxAe0KlYstistqgsI/MmqTdUk+2bvMKrcDrBPaRzkF/xc44ItPJ2YfTktFf+TzRQYv58W23JvEqmkRz46X3bGSKQeGOTdI1axP2HyMtH2sbKpgAeLANuCuZ1Foyuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b2kN3QfQUhxZgkhGzcKsQOEtUmZa44QdzyLpV9NnSac=;
 b=NCcxuzNLAexlyVcQfbTVIky+E2SKeIB0vx4yXjgQW3Ga6xroEIig5WcjNNlWZuCHaI7fhtllaua7PUucEXdkZzzUZ3DFKp8t11Wf4pHu3Epbh0tdYMB5d/ydZvRjseEe/bWwrMk1uSk49JZpWSBOvY1AhsMf4Uj75+25juPcVhA=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2639.eurprd04.prod.outlook.com (10.168.66.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.25; Fri, 14 Feb 2020 16:35:10 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::196a:28a9:bb9:2fae]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::196a:28a9:bb9:2fae%9]) with mapi id 15.20.2729.025; Fri, 14 Feb 2020
 16:35:10 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: RE: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Thread-Topic: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Thread-Index: AQHV1bJZgaFB40NXxUCtFFLRVXyi06f/610AgAStpQCAAAiuAIAAD1yAgBYviuCAABITAIAAAFRwgAAG0ICAAAEwoA==
Date: Fri, 14 Feb 2020 16:35:10 +0000
Message-ID: <VI1PR0401MB2496800C88A3A2CF912959E6F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
References: <1580198925-50411-1-git-send-email-makarand.pawagi@nxp.com>
 <20200128110916.GA491@e121166-lin.cambridge.arm.com>
 <DB8PR04MB7164DDF48480956F05886DABEB070@DB8PR04MB7164.eurprd04.prod.outlook.com>
 <12531d6c569c7e14dffe8e288d9f4a0b@kernel.org>
 <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
 <VI1PR0401MB249622CFA9B213632F1DE955F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <7349fa0e6d62a3e0d0e540f2e17646e0@kernel.org>
 <VI1PR0401MB2496373E0C6D1097F22B3026F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <20200214161957.GA27513@e121166-lin.cambridge.arm.com>
In-Reply-To: <20200214161957.GA27513@e121166-lin.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-originating-ip: [49.36.135.121]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6e1797b2-6528-425f-24c8-08d7b16bdbdf
x-ms-traffictypediagnostic: VI1PR0401MB2639:|VI1PR0401MB2639:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0401MB26390DD1BE89EDA895A2B72AF1150@VI1PR0401MB2639.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03137AC81E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(39860400002)(376002)(346002)(136003)(189003)(199004)(44832011)(316002)(55016002)(66446008)(86362001)(5660300002)(53546011)(6916009)(66476007)(26005)(6506007)(76116006)(66946007)(478600001)(54906003)(966005)(66556008)(64756008)(7696005)(8936002)(33656002)(7416002)(52536014)(81156014)(186003)(8676002)(2906002)(4326008)(71200400001)(9686003)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2639;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zQbBSiKy6Z+RKJBoqQZL2+9qhliT9jAjsjfnBl7Cn9vEFpFYhy4EbLoTBAVF3gZa9CFjVz97bxSjEUyfyNmbHVIOvH3jnuQN5+yyRopSVZ8VTREBEQIhBgcUMrvCtLDa42qI1dJW6PjxSnZuqxmG0vesX5YGDim2tXSUqfE0esH+Zpwl0Cj6CaVZH9Vsfx/Vo6jGVydfhQR8HBkHJhtBrp4hxuVciEDrW314SbxpF0isrOAx8gLQAGOFXMwcNW6bwysVaWwh8Jwvv+uqt9HuZEPjYojRgQpGiF0PWOBDw4GKtmGifBY8/rUIqxYIv1J4g3s1QqBw1WF7YBoAHrqArYuYiCZ5Zsv8eGVvZUPKPj0FkQkcJZ+DGl3Rwn8WFSDQwAuTPz8wfjhf8hGPDywxc0sY9bDzqJzVlk3EgkGQX5NrL8tD12NnKJf4qd2DGsj6M+VfOWpFyayn/eOVcV8wiNMjHXLW+U53AyXBuBeGrYPxVOmL1znZ6oRKw9ro7QIGgAXLFlpWQsdpsWOD47aqzw==
x-ms-exchange-antispam-messagedata: xFEKZHxu/6MtRhbutzPDO74S5Zc6ENV9FRZFLFUqsnl2w7vpmKE0yRcPSQ++oNZAX7Ei9CpxkIQ6ZWAGj1HPBdUo2rAqHsKxidsZ/vJB0ovDaAfBJX6zb1kGG0O9GuagAejyy41p8bKqMnFSx35S6g==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e1797b2-6528-425f-24c8-08d7b16bdbdf
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2020 16:35:10.2016 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OyzKbye/g6GQkpQJHYBuyYlY9SrxaicFEmKN138J2q73l0XpC8RMUFk3XbJ0rM0aIAmlhDoaMyxH9udusjpjng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2639
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_083514_203676_51424B2C 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
> Sent: Friday, February 14, 2020 9:50 PM
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
> On Fri, Feb 14, 2020 at 03:58:14PM +0000, Pankaj Bansal wrote:
> 
> [...]
> 
> > > Why should the device know about its own ID? That's a bus/interconnect
> thing.
> > > And nothing should be passed *to* IORT. IORT is the source.
> >
> > IORT is translation between Input IDs <-> Output IDs. The Input ID is still
> expected to be passed to parse IORT table.
> 
> Named components use an array of single mappings (as in entries with single
> mapping flag set) - Input ID is irrelevant.
> 
> Not sure what your named component is though and what you want to do with
> it, the fact that IORT allows mapping for named components do not necessarily
> mean that it can describe what your system really is, on that you need to
> elaborate for us to be able to help.

Details about MC bus can be read from here:
https://elixir.bootlin.com/linux/latest/source/Documentation/networking/device_drivers/freescale/dpaa2/overview.rst#L324

As stated above, in Linux MC is a bus (just like PCI bus, AMBA bus etc)
There can be multiple devices attached to this bus. Moreover, we can dynamically create/destroy these devices.
Now, we want to represent this BUS (not individual devices connected to bus) in IORT table.
The only possible way right now we see is that we describe it as Named components having a pool of ID mappings.
As and when devices are created and attached to bus, we sift through this pool to correctly determine the output ID for the device.
Now the input ID that we provide, can come from device itself.
Then we can use the Platform MSI framework for MC bus devices.

> 
> Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
