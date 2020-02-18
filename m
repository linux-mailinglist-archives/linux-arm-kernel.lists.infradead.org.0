Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FDF16266E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 13:48:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6VJMg7w3pws9Fug8QXNWZvxedo+1Q5PfnUZy2DUVoc=; b=CS/SYRoJ6cibm3
	eLlqiMcAIAsSUSQa7B4CUt5rE8dUssDId3OTOhGCW4MmXu+P6+LT5KK48kS032E89Wi3ayrq9Q/lr
	GR3mtuH+8B0mBcXjOlcvaSgfFZaE6MbH27XWjzkbhEEwaLeBBgepRMLLqqb6Octq3NI8kQE2XuYuG
	fobNTZsj+PaYl2s5/zVvA26a342fus3eDEB5LbHtjPSH8g55UErnECpKvzfugjxlgM4iPLZ7YgqDL
	YI3Al38s4tcrjk/ptSD/f/WWedC6WqBdw/lYo2T6754VIY86i5WytoeEz7u2i2C3xkzkAji8e+3Ie
	UPXGPA1o8bLoDH/GDL7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j42J0-0002vu-NH; Tue, 18 Feb 2020 12:48:50 +0000
Received: from mail-eopbgr30080.outbound.protection.outlook.com ([40.107.3.80]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j42Is-0002vN-M8
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 12:48:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NEe0EMAcyAMDNpXzHeiMBqDpK71YlRR6y/yxOWK3j9ZwrcYrufOulYJKzN7MZj1rrrEIWJmTeyTZ6b1JRwgFPvpDPWdzm1hG2duuiiYncHSZr7hPawGVkpyyc+ZVnnrb6XTsB6F4LWvqHTLM4vtfvYBweaCIP+JgBxDK5W9odB3PWjf/26qkIY949CEB9G19fepeZX2Aw+0LvXTK2NS35NkFmSj3T0/kmX8i+XMHaOocY12y0wBLqye14gG5HQ6EbQsleUxxuU3tfOw2ZEG/cP1f14shuZ2mbmPypZzb2FdOp2T+BXyU1kbdv6DuVJK0d35+pKP7VNSFt1BXBAq2tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dYcVTViYBGsSqB+VO5DjojJV6+iGDxqjCfxruYX/JdY=;
 b=NWRt9pzPiS74XW0AmbzjHJvesfCietJ7jCG4wIkoIJYLJF/qWhDvQwh7BHmxX++PUHwqMr+w0XCNgMzNd2jc5J/qfPQheBP9AU8BotRMsHrsDjdZNH8yVMV4Gz7jewk4tUkYzvCY8Y23tC8Q252I4qJL8Un8cERYSNRzHsYOsl/F6d9L+RmKyPyvz53yYGGo0eMwHyrTdtqdZ71i3jgFbr9qFMYazjH+ckevNbqryEHXN6chP2S2xmAhd02vcWO/BxCl8P2GwDMOVEFDBeZL+HNe5lLR8Ixc2ru6qsVJwXsNCywlu1/c6oUwsjUaE428E1qbdjrdyIQrD7ia5ggHeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dYcVTViYBGsSqB+VO5DjojJV6+iGDxqjCfxruYX/JdY=;
 b=b27rHQmlgvoGfMDQtq7+dnrRFfeB5KHCYLj9k6gy0tEVmwhhTNtCsJL1W90SHL3ol/2wXDlS7pXAsTN+I0OVn8ZAnrc3gS60EYt6u+yUBnyT817cw8qyzyE2821WKEyK2RLm/5X/Y1ZIzwg1TamoDnuvL6kM//ChSb8YefBZ0BU=
Received: from VI1PR04MB5135.eurprd04.prod.outlook.com (20.177.52.139) by
 VI1PR04MB5679.eurprd04.prod.outlook.com (20.178.204.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Tue, 18 Feb 2020 12:48:39 +0000
Received: from VI1PR04MB5135.eurprd04.prod.outlook.com
 ([fe80::ed73:9d46:d34:5e19]) by VI1PR04MB5135.eurprd04.prod.outlook.com
 ([fe80::ed73:9d46:d34:5e19%6]) with mapi id 15.20.2729.032; Tue, 18 Feb 2020
 12:48:39 +0000
From: "Pankaj Bansal (OSS)" <pankaj.bansal@oss.nxp.com>
To: Hanjun Guo <guohanjun@huawei.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>
Subject: RE: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Thread-Topic: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Thread-Index: AQHV5lZ7Xi36FCZsh0O+fGt3c05hNagg5R2w
Date: Tue, 18 Feb 2020 12:48:39 +0000
Message-ID: <VI1PR04MB513558BF77192255CBE12102B0110@VI1PR04MB5135.eurprd04.prod.outlook.com>
References: <VI1PR04MB5135D7D8597D33DB76DA05BDB0110@VI1PR04MB5135.eurprd04.prod.outlook.com>
 <615c6807-c018-92c9-b66a-8afdda183699@huawei.com>
In-Reply-To: <615c6807-c018-92c9-b66a-8afdda183699@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@oss.nxp.com; 
x-originating-ip: [92.120.1.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d8bd4d1f-a583-4669-b0fe-08d7b470e07b
x-ms-traffictypediagnostic: VI1PR04MB5679:|VI1PR04MB5679:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5679B6B06B0F91EE268FB452B0110@VI1PR04MB5679.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 031763BCAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(396003)(376002)(346002)(136003)(199004)(189003)(55016002)(966005)(66446008)(7416002)(9686003)(66556008)(478600001)(71200400001)(64756008)(33656002)(52536014)(66946007)(86362001)(76116006)(186003)(81166006)(26005)(4326008)(5660300002)(66476007)(81156014)(8676002)(8936002)(110136005)(2906002)(54906003)(7696005)(6506007)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5679;
 H:VI1PR04MB5135.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kDBi4HWLhLrIsPrOxANEvgNUiF4Bdn8K7zs9lwscGyxVUFo/PbpohUFUNAELTxXVUCNMCmeqX9m/zGmjxhQrS+WUbJ7L4lqCHM5DGT8wLmWTcPzHcfaYrIQsLFtQAui2nmSivVFr+zT6c6S/hFv7jrnQUcX89LSwX7Y/6rRKoJ3FjwgC6Y1y+rqHyQ2q/zCFLxdjOZKE0MD5cbZsp5LiVFGSKbvgIju1BWBY1gDKPqnloKM/iIssIfZspXQxktvOf5ArCcZdcXfdUs7x/Zk4ZaGMeHwHR3pCNSZh2wn3tFs+r9e22LRRPKP1DHkmQgVKu8TkrhB9CPDbKP8NsL7pskiCbOv79LFZGdCAGXqlXhRnG0a2R0SWBsh0D9tsh/SYX9rAUpGhZgWpMHbqPosrgTrT+ORy25BBX4raKzRnv+RkxK6Hor4KxjMirbd3fCtWypEMCIOLh8VO3GRraLIVKPKV+DAM03nkXwbnexUiugan/HGGxdf98d0NnVZrRyiXCiG9NPSXVuTvBLim2JWToA==
x-ms-exchange-antispam-messagedata: Yse2htim+PlHP/Mc4MP47q3uJbQn93CcinVMGKRxuv7NscsspTwh3EKoGODpAlljjU41kHyaB0iV62j/giEQIJsw38auv/+FbBCxyYy+2e/QZON74fe9B/cfbXkLjTMenT0+Y0deoTl4FXPGPio1Hw==
MIME-Version: 1.0
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8bd4d1f-a583-4669-b0fe-08d7b470e07b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2020 12:48:39.0794 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tRsOruYEPEGwXSOol6bOT0B9vVcJumAvGr4kZDTIVRQWZ9j0ZF8bAAXK5/VvmxJbqqAhzO1n0I3LPGooAmTaBwheGT79UB1GjCUhXD9leJHVYR60+/Dexu9fLakhsA8k
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5679
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_044842_790341_A9E15D00 
X-CRM114-Status: GOOD (  21.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.80 listed in list.dnswl.org]
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
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
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
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> >>>>> As stated above, in Linux MC is a bus (just like PCI bus, AMBA bus etc)
> >>>>> There can be multiple devices attached to this bus. Moreover, we can
> >>>> dynamically create/destroy these devices.
> >>>>> Now, we want to represent this BUS (not individual devices connected to
> >> bus)
> >>>> in IORT table.
> >>>>> The only possible way right now we see is that we describe it as Named
> >>>> components having a pool of ID mappings.
> >>>>> As and when devices are created and attached to bus, we sift through this
> >> pool
> >>>> to correctly determine the output ID for the device.
> >>>>> Now the input ID that we provide, can come from device itself.
> >>>>> Then we can use the Platform MSI framework for MC bus devices.
> >>>>
> >>>> So are you asking me if that's OK ? Or there is something you can't
> >>>> describe with IORT ?
> >>>
> >>> I am asking if that would be acceptable?
> >>> i.e. we represent MC bus as Named component is IORT table with a pool of
> IDs
> >> (without single ID mapping flag)
> >>> and then we use the Platform MSI framework for all children devices of MC
> >> bus.
> >>> Note that it would require the Platform MSI layer to correctly pass an input
> id
> >> for a platform device to IORT layer.
> >>
> >> How is this solved in DT ? You don't seem to need any DT binding on top
> >> of the msi-parent property, which is equivalent to IORT single mappings
> >> AFAICS so I would like to understand the whole DT flow (so that I
> >> understand how this FSL bus works) before commenting any further.
> >
> > In DT case, we create the domain DOMAIN_BUS_FSL_MC_MSI for MC bus and
> it's children.
> > And then when MC child device is created, we search the "msi-parent"
> property from the MC
> > DT node and get the ITS associated with MC bus. Then we search
> DOMAIN_BUS_FSL_MC_MSI
> > on that ITS. Once we find the domain, we can call msi_domain_alloc_irqs for
> that domain.
> >
> > This is exactly what we tried to do initially with ACPI. But the searching
> DOMAIN_BUS_FSL_MC_MSI
> > associated to an ITS, is something that is part of drivers/acpi/arm64/iort.c.
> > (similar to DOMAIN_BUS_PLATFORM_MSI and DOMAIN_BUS_PCI_MSI)
> 
> Can you have a look at mbigen driver (drivers/irqchip/irq-mbigen.c) to see if
> it helps you?
> 
> mbigen is an irq converter to convert device's wired interrupts into MSI
> (connecting to ITS), which will alloc a bunch of MSIs from ITS platform MSI
> domain at the setup.

Unfortunately this is not the same case as ours. As I see Hisilicon IORT table
Is using single id mapping with named components.

https://github.com/tianocore/edk2-platforms/blob/master/Silicon/Hisilicon/Hi1616/D05AcpiTables/D05Iort.asl#L300

while we are not:

https://source.codeaurora.org/external/qoriq/qoriq-components/edk2-platforms/tree/Platform/NXP/LX2160aRdbPkg/AcpiTables/Iort.aslc?h=LX2160_UEFI_ACPI_EAR1#n290

This is because as I said, we are trying to represent a bus in IORT via named components and
not individual devices connected to that bus.

> 
> Thanks
> Hanjun

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
