Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAF81621F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 09:03:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tksqR9GalfZiNfjJKGIWL89ZU4xl1YFOtQgQ3rR8jVI=; b=I6ELM620Q9R5Ae
	z/aWAAg3LtCfo/4B/IXXI9QoIJDSzDvbE8jkn7JwLp9nIGlORlmJCMrdgQ1qW56QnPFO5v0lxc7LU
	Bll3zUd+sLBEGfT2YaOGNZiDxS/5Mbxrv8U6l4dwqQKgLiwFMgc46pzsZ38a2wJerH7MLBwFhoxH7
	reN3l6F8avMKSS0dZ5BSTZHk7K9bjsOklsl7Vgu9zkOOKU3kbmnV5xjrWmeRqt6WQEMn9tIamanei
	f9nyEa8y+jz89eFnxFBNyHrOHl1L0zgOWskcqnATHL1cn3FGc/LNlJQIM1EXsQuV4ui1/VJ7JxqkW
	nQ8SPJji6CG3yqFghjtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3xqH-0007tZ-22; Tue, 18 Feb 2020 08:02:53 +0000
Received: from mail-eopbgr130053.outbound.protection.outlook.com
 ([40.107.13.53] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3xq8-0007t7-Mg
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 08:02:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JFgo+FvvNxYrEcMkdifG89brK8ghZhSkK3oGq7ORF7ce740UZwxUC833FchNSgec3liM/kOUob9eHUZPoXwuLnzIv2jCH0la20MHxm6k8naFt8ktD+0U59RQKdRLVh3M7uO4U/IsHPG0LaVCt5Fl0otVxcbupKgvsBphajZd4vCQiL+p1jbihjw6gmjsmBMUur3tEzPMbvd7SlVMj8+jHhnwZT4/5LINQ2BD1yPwMCliM38FBbngFtml9BhpTudqbwM9kMetzlxIq3JTIR5OpJn0Dp9pYEzI9xZoU4svc96pxrekJi3n0boP/UNwzoJce82t1ecUbksnmcG1Z/lWTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qlk1ZiZoBNb/lJ/o5xUare6dE2mny+C1umuC1cIS14M=;
 b=nOhlvY0dzvhs+8U5F4SgtYKmoI/8HInvnbRACbQ2tTBOv0Gjbz3NK3yR4Jebsa+jDlpKGkEox9ZRaR/1gvDq4aAocvpmeaqWJ6XZMOtRDdJWYqmyY1yxIkEGX3g8VUqtaH459BQuchJ7tIIkmljrNAY1mr7XwBqlQX/TYI/LbLwQ+XVSjuePl08dDOJZtXfluaQQMKuglYSiNtXgKmVytfcPCH/DGsoDPaWuXnYgY2cYDeTpXR/46kTp6GPz9+bkaw0s8DD7SBJPQ+WQA1M49RPgUxnRh0RygVsCLR/C3J+5DAKg/7K+8UriOi7m8aOn6J7p6rGp3D5YT1YO4t3hqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qlk1ZiZoBNb/lJ/o5xUare6dE2mny+C1umuC1cIS14M=;
 b=ARjyvK7mcpHzeSBG9kGsUGhQsb87FSf011e9yE2EXU0nvg1AtxQ8KoDZm0r0ut/NidJbJZakkX0EYVrHKbWLx3euhStp9/wqmXnqsza9sywWCs8+a85qjTMHDRpTxspCv78Rg+mK5hEk0I068cmRjZBv3smIaOgL2vuuwCBlo7I=
Received: from VI1PR04MB5135.eurprd04.prod.outlook.com (20.177.52.139) by
 VI1PR04MB5742.eurprd04.prod.outlook.com (20.178.127.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.24; Tue, 18 Feb 2020 08:02:41 +0000
Received: from VI1PR04MB5135.eurprd04.prod.outlook.com
 ([fe80::ed73:9d46:d34:5e19]) by VI1PR04MB5135.eurprd04.prod.outlook.com
 ([fe80::ed73:9d46:d34:5e19%6]) with mapi id 15.20.2729.032; Tue, 18 Feb 2020
 08:02:41 +0000
From: "Pankaj Bansal (OSS)" <pankaj.bansal@oss.nxp.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: RE: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Thread-Topic: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Thread-Index: AQHV1bJZgaFB40NXxUCtFFLRVXyi06f/610AgAStpQCAAAiuAIAAD1yAgBYviuCAABITAIAAAFRwgAAG0ICAAAEwoIAAF+uAgARaY6CAADQ7AIABFovw
Date: Tue, 18 Feb 2020 08:02:41 +0000
Message-ID: <VI1PR04MB51353FF263391E5FBD1629B5B0110@VI1PR04MB5135.eurprd04.prod.outlook.com>
References: <DB8PR04MB7164DDF48480956F05886DABEB070@DB8PR04MB7164.eurprd04.prod.outlook.com>
 <12531d6c569c7e14dffe8e288d9f4a0b@kernel.org>
 <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
 <VI1PR0401MB249622CFA9B213632F1DE955F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <7349fa0e6d62a3e0d0e540f2e17646e0@kernel.org>
 <VI1PR0401MB2496373E0C6D1097F22B3026F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <20200214161957.GA27513@e121166-lin.cambridge.arm.com>
 <VI1PR0401MB2496800C88A3A2CF912959E6F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <20200214174949.GA30484@e121166-lin.cambridge.arm.com>
 <VI1PR0401MB2496308C27B7DAA7A5396970F1160@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <20200217152518.GA18376@e121166-lin.cambridge.arm.com>
In-Reply-To: <20200217152518.GA18376@e121166-lin.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@oss.nxp.com; 
x-originating-ip: [92.120.1.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6d1d4080-59af-4156-6a4e-08d7b448edc2
x-ms-traffictypediagnostic: VI1PR04MB5742:|VI1PR04MB5742:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5742D38E40438767CA2D6237B0110@VI1PR04MB5742.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 031763BCAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(39860400002)(396003)(376002)(366004)(199004)(189003)(52536014)(86362001)(4326008)(8936002)(53546011)(478600001)(33656002)(2906002)(71200400001)(6506007)(7416002)(76116006)(186003)(26005)(6916009)(54906003)(316002)(55016002)(66556008)(64756008)(66446008)(66946007)(9686003)(7696005)(81156014)(81166006)(5660300002)(8676002)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5742;
 H:VI1PR04MB5135.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xrbotrZibDrXthDh1JClh3LW2N2vJd+SmahCKxwrCxFtHskQId13Lel8o1U2FKtmXKlJ4TwG836wdg65wJNRc1wvqBf7iVzRAlHorOR3OY8gDC7x074+dld3OUwaC4JlPTChUCOAa4eDfOvE3pEGM1hbdf1eBAjdPNCRG82nWXW7h2CDi5qRsPHo2ThbzWxSMK9yQKPvULYfgTa2Q6PMG13p+FliDBlZHEJwxsaHtYHxvaoyZEFmJN//HyYUjKtT67apwYXC0J0hCa4KfdfdhKm5+oNpF6LYH/DjGB5U3r8LB6ptDw5YjG+3TezUt+WH0fNK58VjEP/CyTVc2v47x84gFsYzazXVucLATnWWS34GRlsfwmD/hBjX81qzINFLWbzQ/qIhdGLdiju9uJO7qIva20QhQT2dGMU9zGejQ9TRGubo5UJ8nnBUqOjNxAOC
x-ms-exchange-antispam-messagedata: +656RCIVDCsnK6w1MW7Zg/IMnkpvU3wFkHOCQf/PczEiw00cB5A3kzJ1tY5AU0in2Wl8FDqDEEsf0U1ywn229DB9d8xYHFFE/XgEDDLqmRnewgUGG5D0Ofdh+9AiMDSiFhXg68cm1ulhjx25edj/JQ==
MIME-Version: 1.0
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d1d4080-59af-4156-6a4e-08d7b448edc2
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2020 08:02:41.4741 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aRZsIbLvRep0h0GSx886cB4/5el1kPYqVQaSRwmt6jX3/6cVK4c/3PdihmvG3PRuKp1xTNX67lAuEYe9PSO9EH77AEl8U1OHS9IHfsr/eNyetb2irxAxWK3tPcv6NJ/h
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5742
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_000244_740547_EDE8D405 
X-CRM114-Status: GOOD (  26.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
> Sent: Monday, February 17, 2020 8:55 PM
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
> On Mon, Feb 17, 2020 at 12:35:12PM +0000, Pankaj Bansal wrote:
> >
> >
> > > -----Original Message-----
> > > From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > Sent: Friday, February 14, 2020 11:20 PM
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
> > >
> > > On Fri, Feb 14, 2020 at 04:35:10PM +0000, Pankaj Bansal wrote:
> > >
> > > [...]
> > >
> > > > > -----Original Message-----
> > > > > From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > > > Sent: Friday, February 14, 2020 9:50 PM
> > > > > To: Pankaj Bansal <pankaj.bansal@nxp.com>
> > > > > Cc: Marc Zyngier <maz@kernel.org>; Ard Biesheuvel
> > > > > <ard.biesheuvel@linaro.org>; Makarand Pawagi
> > > <makarand.pawagi@nxp.com>;
> > > > > Calvin Johnson <calvin.johnson@nxp.com>; stuyoder@gmail.com;
> > > > > nleeder@codeaurora.org; Ioana Ciornei <ioana.ciornei@nxp.com>; Cristi
> > > > > Sovaiala <cristian.sovaiala@nxp.com>; Hanjun Guo
> > > <guohanjun@huawei.com>;
> > > > > Will Deacon <will@kernel.org>; jon@solid-run.com; Russell King
> > > > > <linux@armlinux.org.uk>; ACPI Devel Maling List <linux-
> > > acpi@vger.kernel.org>;
> > > > > Len Brown <lenb@kernel.org>; Jason Cooper <jason@lakedaemon.net>;
> > > Andy
> > > > > Wang <Andy.Wang@arm.com>; Varun Sethi <V.Sethi@nxp.com>;
> Thomas
> > > > > Gleixner <tglx@linutronix.de>; linux-arm-kernel <linux-arm-
> > > > > kernel@lists.infradead.org>; Laurentiu Tudor
> <laurentiu.tudor@nxp.com>;
> > > Paul
> > > > > Yang <Paul.Yang@arm.com>; netdev@vger.kernel.org; Rafael J. Wysocki
> > > > > <rjw@rjwysocki.net>; Linux Kernel Mailing List <linux-
> > > kernel@vger.kernel.org>;
> > > > > Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>;
> > > > > Sudeep Holla <sudeep.holla@arm.com>; Robin Murphy
> > > > > <robin.murphy@arm.com>
> > > > > Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
> > > Side note: would you mind removing the email headers (as above) in your
> > > replies please ?
> 
> Read the question above please.
> 
> [...]
> 
> > > > As stated above, in Linux MC is a bus (just like PCI bus, AMBA bus etc)
> > > > There can be multiple devices attached to this bus. Moreover, we can
> > > dynamically create/destroy these devices.
> > > > Now, we want to represent this BUS (not individual devices connected to
> bus)
> > > in IORT table.
> > > > The only possible way right now we see is that we describe it as Named
> > > components having a pool of ID mappings.
> > > > As and when devices are created and attached to bus, we sift through this
> pool
> > > to correctly determine the output ID for the device.
> > > > Now the input ID that we provide, can come from device itself.
> > > > Then we can use the Platform MSI framework for MC bus devices.
> > >
> > > So are you asking me if that's OK ? Or there is something you can't
> > > describe with IORT ?
> >
> > I am asking if that would be acceptable?
> > i.e. we represent MC bus as Named component is IORT table with a pool of IDs
> (without single ID mapping flag)
> > and then we use the Platform MSI framework for all children devices of MC
> bus.
> > Note that it would require the Platform MSI layer to correctly pass an input id
> for a platform device to IORT layer.
> 
> How is this solved in DT ? You don't seem to need any DT binding on top
> of the msi-parent property, which is equivalent to IORT single mappings
> AFAICS so I would like to understand the whole DT flow (so that I
> understand how this FSL bus works) before commenting any further.

In DT case, we create the domain DOMAIN_BUS_FSL_MC_MSI for MC bus and it's children.
And then when MC child device is created, we search the "msi-parent" property from the MC
DT node and get the ITS associated with MC bus. Then we search DOMAIN_BUS_FSL_MC_MSI
on that ITS. Once we find the domain, we can call msi_domain_alloc_irqs for that domain.

This is exactly what we tried to do initially with ACPI. But the searching DOMAIN_BUS_FSL_MC_MSI
associated to an ITS, is something that is part of drivers/acpi/arm64/iort.c.
(similar to DOMAIN_BUS_PLATFORM_MSI and DOMAIN_BUS_PCI_MSI)

> 
> > And IORT layer ought to retrieve the output id based on single ID mapping flag
> as well as input id.
> >
> > >
> > > Side note: can you explain to me please how the MSI allocation flow
> > > and kernel data structures/drivers are modeled in DT ? I had a quick
> > > look at:
> > >
> > > drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c
> > >
> > > and to start with, does that code imply that we create a
> > > DOMAIN_BUS_FSL_MC_MSI on ALL DT systems with an ITS device node ?
> >
> > Yes. It's being done for all DT systems having ITS node.
> 
> This does not seem correct to me, I will let Marc comment on
> the matter.
> 
> > The domain creation is handled in drivers/bus/fsl-mc/fsl-mc-msi.c
> 
> Thanks,
> Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
