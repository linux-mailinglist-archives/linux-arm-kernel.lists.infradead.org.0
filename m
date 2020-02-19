Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05881163B5A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 04:33:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O8Zu7xcnc5fmQDfPs9F9WOAmNuLZJkd6cjRSSxHIxN8=; b=u/+7uVMGn0CoMd
	5ZrBcMKLe+KJPGhP82Itx/xn+mUdLQa8ebrPzKuRYIeRsPTYvu6QHlMQEPahpFdAxc4r24LKH3rCP
	TopmBkTG4k4majnOmvo8VPCiv2rvwNrQ2nw7nWnOd4jhAxxoQykzuBL9eZxwnyvMKm+yUEnr3XFzw
	/x+YgqqnvuR09uUvw30HlPm0WNFG77eRersMVVV+DATpoeQg7hn15mrwy0v848VDUKk4AdZZ05U2w
	ZL2XPqUVG5t0ThgTKRm3HoSLvD/xTqjVlB2YvcGcGINC5iyVh+R8SN877ZeYBnH8Hl7YLrA+XQXWa
	IulOxH/UtV5g2NpkL9WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4G74-0004jW-5q; Wed, 19 Feb 2020 03:33:26 +0000
Received: from mail-eopbgr60045.outbound.protection.outlook.com ([40.107.6.45]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4G6v-0004it-Vx
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 03:33:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X+gbAtjPTXlnK66ayBUTiK9tYc47vYQS8/LlO+RjAIxrDxgAYnf7unDH5AhKpMmYmQSqb6qiJ5xqA2p5+CPqmuTYeiG0rX9j7g/jt9IYkp1iPPh4DDUvTlkKGtfHRJrha9vhTX9M30Nj9R+gVR+LWoPvBcMDB6rPzwZHOVwPUX6D3uKr4yofJOxzeDdJmgLz0vMNa9fvGer79cVTRBfmjaoCePT7oQxIpcpy+HIj/Ee/tQ9Im/MZWPqV7TZSse58/X5ZBuQ5jLdBxpNkZaKHxWdDdA/zoE7ocyB2/5aiI9wpUta+UGKdYID/ht7XakXErAX0vM49YiIE544/ihs/tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6mrPv+sGnrjaACQFiTR4yTigFZSFQnNuor7YcAu1iAs=;
 b=A2DJ9BaV/rBs3TJW9ZWGGyKpEVmuHpPxDX+LL4br9+nNqNM6sc89/FQWMUFCWvMkPxqz/Kgj96Msw+SRwNpzWdwPw+1DobRqJdW/CMOJnIHetDoimq09q1awCFYDdPUrhzRMFwUsj5SFM7BcSvHOoD7AzUYApYL24P0wl9DOQAh+ao+tf2Jy83h7xeHaIgwN93SqAp3uqEBIFoqq0nrf7XXzQ43E+6R1N5tlEsiQoLYGMBENEBLofy+o0PlffUFY4+aPlfC8YFRK9ShwEr4X0ooTCdRo7hy6t+2ddOVxEGM/rejKYbuYL9REWtI4IKA/z+C50tA3L2v/6XPfvGjdjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6mrPv+sGnrjaACQFiTR4yTigFZSFQnNuor7YcAu1iAs=;
 b=b9vy0uLGPlrl04Blpy7INr4fs1FW+qTwb3emAiqsAd3u4ewiWb4MQfxAJjDrQs1IDAPw1rw/0Iah+sZg137KMFum2jd4lVtZkOjFckZNJzdpjpjcPC18hzqRMsDMLQnQsoaJGaYUS2LTETscXSgIKj7Joyl1cwHQ9drwKIs1euY=
Received: from VI1PR04MB5135.eurprd04.prod.outlook.com (20.177.52.139) by
 VI1PR04MB3071.eurprd04.prod.outlook.com (10.170.225.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Wed, 19 Feb 2020 03:33:14 +0000
Received: from VI1PR04MB5135.eurprd04.prod.outlook.com
 ([fe80::ed73:9d46:d34:5e19]) by VI1PR04MB5135.eurprd04.prod.outlook.com
 ([fe80::ed73:9d46:d34:5e19%6]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 03:33:14 +0000
From: "Pankaj Bansal (OSS)" <pankaj.bansal@oss.nxp.com>
To: Robin Murphy <robin.murphy@arm.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>
Subject: RE: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Thread-Topic: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Thread-Index: AQHV5lZ7Xi36FCZsh0O+fGt3c05hNagg5R2wgAAiuoCAAAf0gIAAzAKA
Date: Wed, 19 Feb 2020 03:33:14 +0000
Message-ID: <VI1PR04MB51357487F1AD6987B3641356B0100@VI1PR04MB5135.eurprd04.prod.outlook.com>
References: <VI1PR04MB5135D7D8597D33DB76DA05BDB0110@VI1PR04MB5135.eurprd04.prod.outlook.com>
 <615c6807-c018-92c9-b66a-8afdda183699@huawei.com>
 <VI1PR04MB513558BF77192255CBE12102B0110@VI1PR04MB5135.eurprd04.prod.outlook.com>
 <20200218144653.GA4286@e121166-lin.cambridge.arm.com>
 <2762bb26-967d-3410-d250-a63d8d755d76@arm.com>
In-Reply-To: <2762bb26-967d-3410-d250-a63d8d755d76@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@oss.nxp.com; 
x-originating-ip: [49.36.133.139]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 63ffd350-140b-4393-c015-08d7b4ec73e8
x-ms-traffictypediagnostic: VI1PR04MB3071:|VI1PR04MB3071:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB3071DE26A534E0F7313ADC67B0100@VI1PR04MB3071.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(346002)(376002)(396003)(199004)(189003)(9686003)(966005)(55016002)(7696005)(71200400001)(2906002)(478600001)(86362001)(52536014)(66476007)(316002)(4326008)(110136005)(7416002)(33656002)(8676002)(8936002)(54906003)(26005)(76116006)(66946007)(66556008)(81156014)(53546011)(5660300002)(66446008)(6506007)(64756008)(81166006)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3071;
 H:VI1PR04MB5135.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: spGuswZD3WwO2Yx248+S4MvsblKdWKBq4TDvkdiRayNbH06gRgu/lpPg7NYVR58QycR6ra9c2P7UMLOXoc2orZUAs8qrYs/X4fsYcxdBSWI1oZVDKBHCW0FozTi1okrinjmFo+4uliF1glY2kG6D+Ym6Wlh1i8RLPB0KPxun1h5aznaAx11KivHvNkicS9Rl70YxM9HMGBRHCvefb5NouHevE+ekGc9zW3QyCZVwUDgtz3N+jXHpags/Zk5K4OWVloMHah1kUFVmhhwCOgqIp96fqFMHw/78hLS6ToCI1PTKFJhddARg7rfrh6p0E6VM4I0hLQdCZTk7uk/ekVhi4wiF4rzub65HDwt/Krsm+mskRqInCBCIvWp9i15RFeV6ibqhbUTP0yxMd8rKnoUKsV8slmedVp7XZT0NOfPYOYzJ2Z8LFF5WUtNq7K8L1vIj7uRDLMoAyvmjJrpMPH1ldbwLbzwFLuZyyvGWj9hunLVNZovAOBXy//yuZFw1h+YEZEILTs9BNPwM43bFKDUdWw==
x-ms-exchange-antispam-messagedata: feS4RcDvJvoruNhCRlnb2jJEs6B85LEDk5sYrtBNUw/6eWgUqIrob1n/tfqgnHTUJG0JtqKIVWtztyIOfrmOiBOUIfoHO/oYNb1xK2+0xa10ivSjqlrCZ1VadINyXCbs8rO0XOh+yKq7EJJjn7g7/A==
MIME-Version: 1.0
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63ffd350-140b-4393-c015-08d7b4ec73e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 03:33:14.5150 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0o03Sb9w+ZD7GGMUePcp8kEkt/XbzU6E4ZNcVB4g3N01khmv3585+jJRT72cdHXQAQpETn5kB7otz24XxusWREsXLVVp3Z10m1zxghAATL+8ZF72+6WTU94eQf9X3e5v
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_193318_087028_D33ABD0A 
X-CRM114-Status: GOOD (  32.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Hanjun Guo <guohanjun@huawei.com>, Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, "jon@solid-run.com" <jon@solid-run.com>,
 Russell King <linux@armlinux.org.uk>,
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
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> On 18/02/2020 2:46 pm, Lorenzo Pieralisi wrote:
> > On Tue, Feb 18, 2020 at 12:48:39PM +0000, Pankaj Bansal (OSS) wrote:
> >
> > [...]
> >
> >>>> In DT case, we create the domain DOMAIN_BUS_FSL_MC_MSI for MC bus
> and
> >>> it's children.
> >>>> And then when MC child device is created, we search the "msi-parent"
> >>> property from the MC
> >>>> DT node and get the ITS associated with MC bus. Then we search
> >>> DOMAIN_BUS_FSL_MC_MSI
> >>>> on that ITS. Once we find the domain, we can call msi_domain_alloc_irqs
> for
> >>> that domain.
> >>>>
> >>>> This is exactly what we tried to do initially with ACPI. But the searching
> >>> DOMAIN_BUS_FSL_MC_MSI
> >>>> associated to an ITS, is something that is part of drivers/acpi/arm64/iort.c.
> >>>> (similar to DOMAIN_BUS_PLATFORM_MSI and DOMAIN_BUS_PCI_MSI)
> >>>
> >>> Can you have a look at mbigen driver (drivers/irqchip/irq-mbigen.c) to see if
> >>> it helps you?
> >>>
> >>> mbigen is an irq converter to convert device's wired interrupts into MSI
> >>> (connecting to ITS), which will alloc a bunch of MSIs from ITS platform MSI
> >>> domain at the setup.
> >>
> >> Unfortunately this is not the same case as ours. As I see Hisilicon IORT table
> >> Is using single id mapping with named components.
> >>
> >> https://github.com/tianocore/edk2-
> platforms/blob/master/Silicon/Hisilicon/Hi1616/D05AcpiTables/D05Iort.asl#L30
> 0
> >>
> >> while we are not:
> >>
> >> https://source.codeaurora.org/external/qoriq/qoriq-components/edk2-
> platforms/tree/Platform/NXP/LX2160aRdbPkg/AcpiTables/Iort.aslc?h=LX2160_
> UEFI_ACPI_EAR1#n290
> >>
> >> This is because as I said, we are trying to represent a bus in IORT
> >> via named components and not individual devices connected to that bus.
> >
> > I had a thorough look into this and strictly speaking there is no
> > *mapping* requirement at all, all you need to know is what ITS the FSL
> > MC bus is mapping MSIs to. Which brings me to the next question (which
> > is orthogonal to how to model FSL MC in IORT, that has to be discussed
> > but I want to have a full picture in mind first).
> >
> > When you probe the FSL MC as a platform device, the ACPI core,
> > through IORT (if you add the 1:1 mapping as an array of single
> > mappings) already link the platform device to ITS platform
> > device MSI domain (acpi_configure_pmsi_domain()).
> >
> > The associated fwnode is the *same* (IIUC) as for the
> > DOMAIN_BUS_FSL_MC_MSI and ITS DOMAIN_BUS_NEXUS, so in practice
> > you don't need IORT code to retrieve the DOMAIN_BUS_FSL_MC_MSI
> > domain, the fwnode is the same as the one in the FSL MC platform
> > device IRQ domain->fwnode pointer and you can use it to
> > retrieve the DOMAIN_BUS_FSL_MC_MSI domain through it.
> >
> > Is my reading correct ?
> >
> > Overall, DOMAIN_BUS_FSL_MC_MSI is just an MSI layer to override the
> > provide the MSI domain ->prepare hook (ie to stash the MC device id), no
> > more (ie its_fsl_mc_msi_prepare()).
> >
> > That's it for the MSI layer - I need to figure out whether we *want* to
> > extend IORT (and/or ACPI) to defined bindings for "additional busses",
> > what I write above is a summary of my understanding, I have not made my
> > mind up yet.
> 
> I'm really not sure we'd need to go near any bindings - the IORT spec
> *can* reasonably describe "giant black box of DPAA2 stuff" as a single
> named component, and that's arguably the most accurate abstraction
> already, even when it comes to the namespace device. This isn't a bus in
> any traditional sense, it's a set of accelerator components with an
> interface to dynamically configure them into custom pipelines, and the
> expected use-case seems to be for userspace to freely reconfigure
> whatever virtual network adapters it wants at any given time. Thus I
> don't see that it's logical or even practical for firmware itself to be
> involved beyond describing "here's your toolbox", and in particular,
> basing any decisions on the particular way that DPAA2 has been
> shoehorned into the Linux driver model would almost certainly be a step
> in the wrong direction.
> 
> IMO the scope of this issue belongs entirely within the
> implementation(s) of Linux's own abstraction layers.

I agree. I think first we ought to get the consensus on how to represent the MC
bus in IORT table. And it should not be based on the fact that "that's how we have
handled IORT in linux". Once this is done, then we can move forward on how to
handle that in linux.

> 
> Robin.
> 
> > As for the IOMMU code, it seems like the only thing needed i
> > extending named components configuration to child devices,
> > hierarchically.
> >
> > As Marc already mentioned, IOMMU and IRQ code must be separate for
> > future postings but first we need to find a suitable answer to
> > the problem at hand.
> >
> > Lorenzo
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
