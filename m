Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA4D14EAAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 11:36:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2EWUs7B6pkRZFJ7oBQMvK6O5EQ+kGGTIVPweiZOKnI=; b=eDMZldII8Oqcyp
	mmbS5hyydTIJF8exVUHZVj+eeIPZaWfGP8OM20/VJGJGabZeG9lMBF2RYI0gnGW04gmy5ZdweFYP4
	DX88zbP+v1G1cUJ1hlkpGEl8YTgVp/JF97gF65F4ntjraNM0uizzyQHsNgziYeYHa9E+rzGzc/tRb
	5SLm5r/TG4r6gVrmOfyMDi9eMiIcY6NkYcegx7P+sf1xOaa7Ymy//RlioOfu84GY1bmWVGIsSrHnR
	UztgTD+d7WPFkFpmG5fpnZjXAnkQcNdT3nv4rSPrWmW3ZxkS7s6JeauWBI3UKesrMciieGT3UqKHS
	DRt1f6/edqbyOvDhGTqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixTec-0002nr-2L; Fri, 31 Jan 2020 10:36:02 +0000
Received: from mail-am6eur05on2063.outbound.protection.outlook.com
 ([40.107.22.63] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixTeU-0002nH-8j
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 10:35:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E5z6U1bbcTQAf2hTnCk5yZStX9c51rYUPDbS1K2uwnKJpUblcslijYX/1OgtD5Kl8a76prqTLcaQY29CdVODlnOjh1HepqT3wAHFwAWS7WMKLLyTyiPF82UqHaGBoPYDQ1td/KNQCKlPSZZMrfvlcqUOG9UF+PFidOAHbcSsmQg5Yzi9RGKnXLU7/vhnYBwuXo/5biY38QnjdPQhSMs0PBkJHfv2kmqS6zzLSulIfn6OAtVaL7X7A4aguMxiDLOnewlV+7ra8nSQG5OQdRm04sJvlFA+SMaxTWjIweW/IiGq6VWtqe44N7EgXzfeAV7ShR6/NdbC4fvaYoJXHECHIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QwppSEjk7ee/qM1UU3hToWmDih6IhHafyplqnNuLEs8=;
 b=LzgIQPCfTB9ius7U7Aj0DAoP7ut6MBEEjqlElReimAUm7RJ+QW12y6w3klJJZ4Mn8Z6EzU3mjL82u75cNjFudvHQxZM1K+Qa7lB1BMgwffE9lx0BgPptUN0D1+F6qlsOzgOfWwuuIHfFDgBxtApfA3RyBmjjnpI2vXGckQbJp62cyNkvj2J9Jc/yV3UzegVBPNdpMlerU774hsi5RSMuICSIL1OBrSofW7JTwCWRxbScR5ic5eN1/L11cM/3kPr1S0djkHnkkgGW1WIG6mRv+dnIFGdzZDurt1nLDnveFvkd+MW357/OOI/GYxe8jQQQjpbYeSsV4hIHxc7JJ73evQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QwppSEjk7ee/qM1UU3hToWmDih6IhHafyplqnNuLEs8=;
 b=NZ/KfNPc6Hohu6dt6EO7bnN1/XHsdWDXUvU9X6wKwKGcLgLTrp8C+S+m/gdgP6bAjZjl1oJ/pVNTu6olCtIqi+LaFRTMFNlaVVsA/UwKUPaHcHMxFGpv6N4y25Bgz6KD7Wd+PUYis4TWdxRENMCRGIQjMLt+9trFrX0nftxGvgg=
Received: from DB8PR04MB7164.eurprd04.prod.outlook.com (52.135.62.23) by
 DB8PR04MB7081.eurprd04.prod.outlook.com (10.141.120.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.29; Fri, 31 Jan 2020 10:35:48 +0000
Received: from DB8PR04MB7164.eurprd04.prod.outlook.com
 ([fe80::dc1f:d30c:afb8:789d]) by DB8PR04MB7164.eurprd04.prod.outlook.com
 ([fe80::dc1f:d30c:afb8:789d%5]) with mapi id 15.20.2665.027; Fri, 31 Jan 2020
 10:35:48 +0000
From: Makarand Pawagi <makarand.pawagi@nxp.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: RE: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Thread-Topic: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Thread-Index: AQHV1bJXocSJjYU2TkeOIM2eKr9F06f/610AgARn+SA=
Date: Fri, 31 Jan 2020 10:35:48 +0000
Message-ID: <DB8PR04MB7164DDF48480956F05886DABEB070@DB8PR04MB7164.eurprd04.prod.outlook.com>
References: <1580198925-50411-1-git-send-email-makarand.pawagi@nxp.com>
 <20200128110916.GA491@e121166-lin.cambridge.arm.com>
In-Reply-To: <20200128110916.GA491@e121166-lin.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=makarand.pawagi@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 08561246-569a-4957-5daf-08d7a6395650
x-ms-traffictypediagnostic: DB8PR04MB7081:|DB8PR04MB7081:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB70812AF111EF17AF71E31001EB070@DB8PR04MB7081.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 029976C540
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(346002)(396003)(366004)(189003)(199004)(2906002)(8936002)(7696005)(81156014)(81166006)(8676002)(71200400001)(7416002)(55016002)(54906003)(4326008)(316002)(6506007)(6916009)(186003)(66446008)(26005)(64756008)(86362001)(66946007)(66476007)(76116006)(66556008)(966005)(5660300002)(53546011)(478600001)(9686003)(52536014)(33656002)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB7081;
 H:DB8PR04MB7164.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 18mP1OXrqJuUIKBNR/f3R9xu4iGLY/0F6z+BCVISwNLdN9swiIR5hYFKslmjLJYamNrY3V2tchP1AzlQwNzAWjNbM/odVxhbMqHya1M0uGPbtuSFnjZIMGGpZcNkUXiR83Q8MkRbiSwzjeUqP3TV9W5jF1wV4II9OQcxYDSRqRrx4ZdgMwT7fnpB8LX4FTJRR2qrsJssu/X+i0JgveQlDDhbdsSC1rOaOqaTVI459eYGpMNo2ntQ1BS4EyZI3tas7N4EPmq1giH1V1cDdoBqzgsymBRfjhmtwEal1/uYyMuniNRHHluC83XCqXX+xMnndU4Mah6Oh66F6Ti0CpM5VEKg9Z42VuoQpLJQ3+iqNcHejZ7BN6cN54NVpPdAVLEA/Is6pTHCZdPab32JXeHBcBK7cxMPpT3ZB/S7TQFjo/uZYbYCEw938syb4qlMc2ZdNWj0cE6o3kcnZRnVxYOjR3PdFOTvoc33jsbSOjSMVSwQhUEiJxlGoH6Tzit8F9CycO3AJR9M0bcOdoIWgE9NDg==
x-ms-exchange-antispam-messagedata: /5kqVB6H4PRX5B6BUauFZlfojz4q6NrHYUQTXA+Xor7CaYlSJHS6ibeyVdFXXA6ErZeGxkbaJDIeTJrvsysaAZw9jzzAbAziCFxFmJD2r1Xxzv7UkQhaUeAW6Mfx3UmS2+fAEz3bAFCStVrKBvKfdg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08561246-569a-4957-5daf-08d7a6395650
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2020 10:35:48.6483 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XbDxYcCLtRcqlRKSofOnVNLRPaEqaU8K96MAWP04WbLNxpAHhhl/52b7D+soYVhFjMl1bCyNjFrYk/SiCtuDqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_023554_419326_46A5F734 
X-CRM114-Status: GOOD (  22.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.63 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 "guohanjun@huawei.com" <guohanjun@huawei.com>,
 "will@kernel.org" <will@kernel.org>, "maz@kernel.org" <maz@kernel.org>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, "jon@solid-run.com" <jon@solid-run.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "lenb@kernel.org" <lenb@kernel.org>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>, Andy Wang <Andy.Wang@arm.com>,
 Varun Sethi <V.Sethi@nxp.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Paul Yang <Paul.Yang@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "shameerali.kolothum.thodi@huawei.com" <shameerali.kolothum.thodi@huawei.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Sent: Tuesday, January 28, 2020 4:39 PM
> To: Makarand Pawagi <makarand.pawagi@nxp.com>
> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-acpi@vger.kernel.org; linux@armlinux.org.uk;
> jon@solid-run.com; Cristi Sovaiala <cristian.sovaiala@nxp.com>; Laurentiu
> Tudor <laurentiu.tudor@nxp.com>; Ioana Ciornei <ioana.ciornei@nxp.com>;
> Varun Sethi <V.Sethi@nxp.com>; Calvin Johnson <calvin.johnson@nxp.com>;
> Pankaj Bansal <pankaj.bansal@nxp.com>; guohanjun@huawei.com;
> sudeep.holla@arm.com; rjw@rjwysocki.net; lenb@kernel.org;
> stuyoder@gmail.com; tglx@linutronix.de; jason@lakedaemon.net;
> maz@kernel.org; shameerali.kolothum.thodi@huawei.com; will@kernel.org;
> robin.murphy@arm.com; nleeder@codeaurora.org
> Subject: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
> 
> Caution: EXT Email
> 
> On Tue, Jan 28, 2020 at 01:38:45PM +0530, Makarand Pawagi wrote:
> > ACPI support is added in the fsl-mc driver. Driver will parse MC DSDT
> > table to extract memory and other resorces.
> >
> > Interrupt (GIC ITS) information will be extracted from MADT table by
> > drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c.
> >
> > IORT table will be parsed to configure DMA.
> >
> > Signed-off-by: Makarand Pawagi <makarand.pawagi@nxp.com>
> > ---
> >  drivers/acpi/arm64/iort.c                   | 53 +++++++++++++++++++++
> >  drivers/bus/fsl-mc/dprc-driver.c            |  3 +-
> >  drivers/bus/fsl-mc/fsl-mc-bus.c             | 48 +++++++++++++------
> >  drivers/bus/fsl-mc/fsl-mc-msi.c             | 10 +++-
> >  drivers/bus/fsl-mc/fsl-mc-private.h         |  4 +-
> >  drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c | 71
> ++++++++++++++++++++++++++++-
> >  include/linux/acpi_iort.h                   |  5 ++
> >  7 files changed, 174 insertions(+), 20 deletions(-)
> >
> > diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> > index 33f7198..beb9cd5 100644
> > --- a/drivers/acpi/arm64/iort.c
> > +++ b/drivers/acpi/arm64/iort.c
> > @@ -15,6 +15,7 @@
> >  #include <linux/kernel.h>
> >  #include <linux/list.h>
> >  #include <linux/pci.h>
> > +#include <linux/fsl/mc.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/slab.h>
> >
> > @@ -622,6 +623,29 @@ static int iort_dev_find_its_id(struct device
> > *dev, u32 req_id,  }
> >
> >  /**
> > + * iort_get_fsl_mc_device_domain() - Find MSI domain related to a
> > +device
> > + * @dev: The device.
> > + * @mc_icid: ICID for the fsl_mc device.
> > + *
> > + * Returns: the MSI domain for this device, NULL otherwise  */ struct
> > +irq_domain *iort_get_fsl_mc_device_domain(struct device *dev,
> > +                                                     u32 mc_icid) {
> > +     struct fwnode_handle *handle;
> > +     int its_id;
> > +
> > +     if (iort_dev_find_its_id(dev, mc_icid, 0, &its_id))
> > +             return NULL;
> > +
> > +     handle = iort_find_domain_token(its_id);
> > +     if (!handle)
> > +             return NULL;
> > +
> > +     return irq_find_matching_fwnode(handle, DOMAIN_BUS_FSL_MC_MSI);
> > +}
> 
> NAK
> 
> I am not willing to take platform specific code in the generic IORT layer.
> 
> ACPI on ARM64 works on platforms that comply with SBSA/SBBR guidelines:
> 
> 
> https://developer.arm.com/architectures/platform-design/server-systems
>
> Deviating from those requires butchering ACPI specifications (ie IORT) and
> related kernel code which goes totally against what ACPI is meant for on ARM64
> systems, so there is no upstream pathway for this code I am afraid.
> 
Reason of adding this platform specific function in the generic IORT layer is 
That iort_get_device_domain() only deals with PCI bus (DOMAIN_BUS_PCI_MSI).

fsl-mc objects when probed, need to find irq_domain which is associated with
the fsl-mc bus (DOMAIN_BUS_FSL_MC_MSI). It will not be possible to do that
if we do not add this function because there are no other suitable APIs exported
by IORT layer to do the job.




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
