Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C26E215DA4B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:06:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FckUedq2Q9tP+38ED7Ve6kCLDxLazKWgwmJOYfQXiPk=; b=QEiHHCRzF6LhlR
	3laSkakCG5Uu2yeL016LpMxkXG4rFOLl88vI7Z5B2rCVjqqcoK+7yLLgHLxBEo4IHOMUbxv7Srkyx
	0UDPJ5/NpIJEZwqz6y16zM/DtulkJj2gd3apueknACIoi3QxdOMmpBx5cskrZEuY9gk0aLUqaDGCb
	3Q3GZlOKZBKX8kjzw/u32+zl2CMmg7asOh1JgdCeJ7TXrv71LmDIt9COFEYzWi5ls1TpLM16GlOVe
	r0G1joRTmR55CiJYd/cv0OyjrSnFYnsdF1vaSGaGrN4PjnIEvur5e7T6ANyBMNgSAr5F5ka1ANXm8
	htmv5BShr0a9MUnqDZjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2cXc-0001rm-Rg; Fri, 14 Feb 2020 15:06:05 +0000
Received: from mail-eopbgr60053.outbound.protection.outlook.com ([40.107.6.53]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2cXO-0001qn-7l
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:05:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RSM1USVGnkoFJOqYySJF3AwO1eD6YO2NSE8VkT+P0c+iyww3rDPqf+STZ+R33Uihz8yKs9+Aqkco7d/En4Bw4l3hKIxMPf3dHRKbq6SbTFQnliBgB/sXlJdC1Ya2y48b/scFT7HO9AkolCwJVSbfmPf1nNP4vFWOzjiY5yN/pJuixIezDoWPT+5UtK3YfScTA2IVAnP/e+NXVlYTTFh/0NwDN5HFkpHVle1qCaoDY6+33CGwX8Mq89UMVQKlIJbopE0/TfnklHKRTGOPo7KCI/j66c/U08REQ4TwY61URxqk79DRYY0ja3+lCoAsmxBomxCg5UeK2Jihjzpc0dwubw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LeWoqiZAXpxzaQZKOGkY/mVDAwn2lgaw6Yc3BR09c9c=;
 b=WO4bmmf0bSC5DI4ZCbt8SH/7hzOTH5018UNjyRZ4OAi5hYoUb+BARcNS+Tg1j1em2cGCRx9FgcWgcshf4eCX7DsCiVnY8D+a5lyTagXx3OBR4k809offFUUp7/6FtWL3/MZ4PQurQLkvVkpshgJ0Ln/sh+HtFhtBAOyw+DG9iUWfVF4trxoKPFGAseS+4sv1eV01zrR95bBq3A3ojLWqxcfd/mpchocxEVeDSXbMTAxeZ7niIOrO2IhOUOrLluOdtKM6NlKvyenYPbq4VytdFgBtzTePL00AbAhJkgFs6oiO/9BNqYBW4/sgkNpeX8AMqBOZ3dIbHUqz+axo4e763Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LeWoqiZAXpxzaQZKOGkY/mVDAwn2lgaw6Yc3BR09c9c=;
 b=ZMO1RxDcW8VkHC8O7NVOjF5M/VHHvxsdjYjGgU2lIYsSzhSOFNkFWRkGHL8jV0NY1Fl7pFh5pcmJfoJhaadm97UU8DhmFC1ZD2vsoCJhF/8pekHIrERVD1u8BA023Ho2xZ5KzMganRk4EEAoBrFCxi3NQ1zzEkVezL7pdDeQkVc=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2624.eurprd04.prod.outlook.com (10.168.66.8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.23; Fri, 14 Feb 2020 15:05:44 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::196a:28a9:bb9:2fae]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::196a:28a9:bb9:2fae%9]) with mapi id 15.20.2729.025; Fri, 14 Feb 2020
 15:05:44 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Marc Zyngier <maz@kernel.org>, 
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: RE: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Thread-Topic: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Thread-Index: AQHV1bJZgaFB40NXxUCtFFLRVXyi06f/610AgAStpQCAAAiuAIAAD1yAgBYviuA=
Date: Fri, 14 Feb 2020 15:05:44 +0000
Message-ID: <VI1PR0401MB249622CFA9B213632F1DE955F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
References: <1580198925-50411-1-git-send-email-makarand.pawagi@nxp.com>
 <20200128110916.GA491@e121166-lin.cambridge.arm.com>
 <DB8PR04MB7164DDF48480956F05886DABEB070@DB8PR04MB7164.eurprd04.prod.outlook.com>
 <12531d6c569c7e14dffe8e288d9f4a0b@kernel.org>
 <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
In-Reply-To: <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-originating-ip: [49.36.135.121]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 14995233-0412-4610-c990-08d7b15f5d75
x-ms-traffictypediagnostic: VI1PR0401MB2624:|VI1PR0401MB2624:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0401MB2624D87791263780BCBC57CFF1150@VI1PR0401MB2624.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03137AC81E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(39860400002)(366004)(396003)(376002)(346002)(136003)(199004)(189003)(2906002)(7696005)(54906003)(478600001)(966005)(26005)(9686003)(53546011)(6506007)(110136005)(52536014)(44832011)(45080400002)(33656002)(66556008)(76116006)(8936002)(86362001)(5660300002)(71200400001)(316002)(186003)(55016002)(4326008)(81156014)(81166006)(8676002)(66946007)(66476007)(7416002)(64756008)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2624;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QWSDsgXuHdhjQdXaHHL/GTa3MbbHfW6zZB9no1LUKC3abVGqzGGLqxBwBgNcwYBLdAqvIwfhL2PurhkDgQPCMn49ar1cEhIKs0N9mh8tj4nDOi7//TmZ8MeLBpm79qcGcfJ7ZITP9Qxx0qDqNRyDnxSleFVnFIxtk+bqAgkG0Ffb1KTwkTJPWehT8Wz95fnrAgmPom5ihmeuhZZjxmrjmcXuoepyJcPJKQyojZ81z4IqwQ4jpC31PFmaSfHFEqahrdQt5PIvr1GgcjpDSpAvJZKJ21vX7zjottoT7NxEfvSqBZk9S9UPM2S9DahxCETp1DiTcYg4cRk4flxklxSHMPYIpTteC9hXWbCGg19pQntpECyC799csUlZlBoZcpoJ0utpIVqPxNRLAC1F0VFR1VkomQbOTB2MfZYQSbHKPVFkBF7rbgVi5cR3MHBPgpBBaWjkMsGd1FrWyKsoo/i6Ok9Y5x1V4swWHrri+GU5OPD5+sft5Smj994qC/0Lmv2ZHIxfsBXjYK5uqYGOyFIMpZbcFuLoO72o8wyhRLeJp9jl5kbgXTMzbPq3q2SVpWsxP0/cKyBeydr7nEVKnWFiw5xN7l+/G0UGNQPk+2uxCZeUYjX6c3Lc9Kf3vNsru61t
x-ms-exchange-antispam-messagedata: HNrqWFWma3rrZ7bUlBz9wffztDsAi7pOu0iCgJKWWZMbeWnABVH9tmLWof4Y5gkoc3CysmWLBhsSb+ogbRJAnmwVhgaT3CD7iIbUUhcMAaENmPaRKQXjO51jfYxUiF3Acs92/f8EMLcAwDfjpij1uQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14995233-0412-4610-c990-08d7b15f5d75
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2020 15:05:44.3224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1uQp0D4F3jagWnxS5Pbr1AMugXq7XBDzrUSgk7W3dSlQKoUn5/gFb9Gq3gzwR5aVJtar5dxi5KwebvuissRjGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2624
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_070550_455586_A3C769D3 
X-CRM114-Status: GOOD (  25.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.53 listed in list.dnswl.org]
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
 Will Deacon <will@kernel.org>, "jon@solid-run.com" <jon@solid-run.com>,
 Russell King <linux@armlinux.org.uk>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Len Brown <lenb@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Andy Wang <Andy.Wang@arm.com>, Makarand Pawagi <makarand.pawagi@nxp.com>,
 Varun Sethi <V.Sethi@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Paul Yang <Paul.Yang@arm.com>,
 "<netdev@vger.kernel.org>" <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Sent: Friday, January 31, 2020 5:32 PM
> To: Marc Zyngier <maz@kernel.org>
> Cc: Makarand Pawagi <makarand.pawagi@nxp.com>; Calvin Johnson
> <calvin.johnson@nxp.com>; stuyoder@gmail.com; nleeder@codeaurora.org;
> Ioana Ciornei <ioana.ciornei@nxp.com>; Cristi Sovaiala
> <cristian.sovaiala@nxp.com>; Hanjun Guo <guohanjun@huawei.com>; Will
> Deacon <will@kernel.org>; Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>;
> Pankaj Bansal <pankaj.bansal@nxp.com>; jon@solid-run.com; Russell King
> <linux@armlinux.org.uk>; ACPI Devel Maling List <linux-acpi@vger.kernel.org>;
> Len Brown <lenb@kernel.org>; Jason Cooper <jason@lakedaemon.net>; Andy
> Wang <Andy.Wang@arm.com>; Varun Sethi <V.Sethi@nxp.com>; Thomas
> Gleixner <tglx@linutronix.de>; linux-arm-kernel <linux-arm-
> kernel@lists.infradead.org>; Laurentiu Tudor <laurentiu.tudor@nxp.com>; Paul
> Yang <Paul.Yang@arm.com>; <netdev@vger.kernel.org>
> <netdev@vger.kernel.org>; Rafael J. Wysocki <rjw@rjwysocki.net>; Linux Kernel
> Mailing List <linux-kernel@vger.kernel.org>; Shameerali Kolothum Thodi
> <shameerali.kolothum.thodi@huawei.com>; Sudeep Holla
> <sudeep.holla@arm.com>; Robin Murphy <robin.murphy@arm.com>
> Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
> 
> On Fri, 31 Jan 2020 at 12:06, Marc Zyngier <maz@kernel.org> wrote:
> >
> > On 2020-01-31 10:35, Makarand Pawagi wrote:
> > >> -----Original Message-----
> > >> From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > >> Sent: Tuesday, January 28, 2020 4:39 PM
> > >> To: Makarand Pawagi <makarand.pawagi@nxp.com>
> > >> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org;
> > >> linux-arm- kernel@lists.infradead.org; linux-acpi@vger.kernel.org;
> > >> linux@armlinux.org.uk; jon@solid-run.com; Cristi Sovaiala
> > >> <cristian.sovaiala@nxp.com>; Laurentiu Tudor
> > >> <laurentiu.tudor@nxp.com>; Ioana Ciornei <ioana.ciornei@nxp.com>;
> > >> Varun Sethi <V.Sethi@nxp.com>; Calvin Johnson
> > >> <calvin.johnson@nxp.com>; Pankaj Bansal <pankaj.bansal@nxp.com>;
> > >> guohanjun@huawei.com; sudeep.holla@arm.com; rjw@rjwysocki.net;
> > >> lenb@kernel.org; stuyoder@gmail.com; tglx@linutronix.de;
> > >> jason@lakedaemon.net; maz@kernel.org;
> > >> shameerali.kolothum.thodi@huawei.com; will@kernel.org;
> > >> robin.murphy@arm.com; nleeder@codeaurora.org
> > >> Subject: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
> > >>
> > >> Caution: EXT Email
> > >>
> > >> On Tue, Jan 28, 2020 at 01:38:45PM +0530, Makarand Pawagi wrote:
> > >> > ACPI support is added in the fsl-mc driver. Driver will parse MC
> > >> > DSDT table to extract memory and other resorces.
> > >> >
> > >> > Interrupt (GIC ITS) information will be extracted from MADT table
> > >> > by drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c.
> > >> >
> > >> > IORT table will be parsed to configure DMA.
> > >> >
> > >> > Signed-off-by: Makarand Pawagi <makarand.pawagi@nxp.com>
> > >> > ---
> > >> >  drivers/acpi/arm64/iort.c                   | 53 +++++++++++++++++++++
> > >> >  drivers/bus/fsl-mc/dprc-driver.c            |  3 +-
> > >> >  drivers/bus/fsl-mc/fsl-mc-bus.c             | 48 +++++++++++++------
> > >> >  drivers/bus/fsl-mc/fsl-mc-msi.c             | 10 +++-
> > >> >  drivers/bus/fsl-mc/fsl-mc-private.h         |  4 +-
> > >> >  drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c | 71
> > >> ++++++++++++++++++++++++++++-
> > >> >  include/linux/acpi_iort.h                   |  5 ++
> > >> >  7 files changed, 174 insertions(+), 20 deletions(-)
> > >> >
> > >> > diff --git a/drivers/acpi/arm64/iort.c
> > >> > b/drivers/acpi/arm64/iort.c index 33f7198..beb9cd5 100644
> > >> > --- a/drivers/acpi/arm64/iort.c
> > >> > +++ b/drivers/acpi/arm64/iort.c
> > >> > @@ -15,6 +15,7 @@
> > >> >  #include <linux/kernel.h>
> > >> >  #include <linux/list.h>
> > >> >  #include <linux/pci.h>
> > >> > +#include <linux/fsl/mc.h>
> > >> >  #include <linux/platform_device.h>  #include <linux/slab.h>
> > >> >
> > >> > @@ -622,6 +623,29 @@ static int iort_dev_find_its_id(struct
> > >> > device *dev, u32 req_id,  }
> > >> >
> > >> >  /**
> > >> > + * iort_get_fsl_mc_device_domain() - Find MSI domain related to
> > >> > +a device
> > >> > + * @dev: The device.
> > >> > + * @mc_icid: ICID for the fsl_mc device.
> > >> > + *
> > >> > + * Returns: the MSI domain for this device, NULL otherwise  */
> > >> > +struct irq_domain *iort_get_fsl_mc_device_domain(struct device *dev,
> > >> > +                                                     u32 mc_icid) {
> > >> > +     struct fwnode_handle *handle;
> > >> > +     int its_id;
> > >> > +
> > >> > +     if (iort_dev_find_its_id(dev, mc_icid, 0, &its_id))
> > >> > +             return NULL;
> > >> > +
> > >> > +     handle = iort_find_domain_token(its_id);
> > >> > +     if (!handle)
> > >> > +             return NULL;
> > >> > +
> > >> > +     return irq_find_matching_fwnode(handle,
> > >> > +DOMAIN_BUS_FSL_MC_MSI); }
> > >>
> > >> NAK
> > >>
> > >> I am not willing to take platform specific code in the generic IORT
> > >> layer.
> > >>
> > >> ACPI on ARM64 works on platforms that comply with SBSA/SBBR
> > >> guidelines:
> > >>
> > >>
> > >> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fd
> > >> eveloper.arm.com%2Farchitectures%2Fplatform-design%2Fserver-systems
> > >>
> &amp;data=02%7C01%7Cpankaj.bansal%40nxp.com%7Cdb56d889d85646277ee
> 30
> > >>
> 8d7a64562fa%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C6371606
> 892
> > >>
> 50769265&amp;sdata=C7nCty8%2BVeuq6VhcEUXCwiAinN01rCfe12NRVnXJCIY%
> 3D
> > >> &amp;reserved=0
> > >>
> > >> Deviating from those requires butchering ACPI specifications (ie
> > >> IORT) and related kernel code which goes totally against what ACPI
> > >> is meant for on ARM64 systems, so there is no upstream pathway for
> > >> this code I am afraid.
> > >>
> > > Reason of adding this platform specific function in the generic IORT
> > > layer is That iort_get_device_domain() only deals with PCI bus
> > > (DOMAIN_BUS_PCI_MSI).
> > >
> > > fsl-mc objects when probed, need to find irq_domain which is
> > > associated with the fsl-mc bus (DOMAIN_BUS_FSL_MC_MSI). It will not
> > > be possible to do that if we do not add this function because there
> > > are no other suitable APIs exported by IORT layer to do the job.
> >
> > I think we all understood the patch. What both Lorenzo and myself are
> > saying is that we do not want non-PCI support in IORT.
> >
> 
> IORT supports platform devices (aka named components) as well, and
> there is some support for platform MSIs in the GIC layer.
> 
> So it may be possible to hide your exotic bus from the OS entirely,
> and make the firmware instantiate a DSDT with device objects and
> associated IORT nodes that describe whatever lives on that bus as
> named components.
> 
> That way, you will not have to change the OS at all, so your hardware
> will not only be supported in linux v5.7+, it will also be supported
> by OSes that commercial distro vendors are shipping today. *That* is
> the whole point of using ACPI.
> 
> If you are going to bother and modify the OS, you lose this advantage,
> and ACPI gives you no benefit over DT at all.

I am replying to old message in this conversation, because the discussion got sidetracked from IORT
table to SFP/QSFP/devlink stuff from this point onwards, which is not related to IORT.
I will only focus on representing the MC device in IORT and using the same in linux.
As Ard said:
"IORT supports platform devices (aka named components) as well, and
there is some support for platform MSIs in the GIC layer."

We can represent MC bus as named component in IORT table and use platform MSIs.
The only caveat is that with current implementation of platform MSIs, the Input id of a device is not considered.
https://elixir.bootlin.com/linux/latest/source/drivers/irqchip/irq-gic-v3-its-platform-msi.c#L50
https://elixir.bootlin.com/linux/latest/source/drivers/acpi/arm64/iort.c#L464

While, IORT spec doesn't specify any such limitation.

we can easily update iort.c to remove this limitation.
But, I am not sure how the input id would be passed from platform MSI GIC layer to IORT.
Most obviously, the input id should be supplied by dev itself.

Any thoughts?

If we go by this path, I think we can remove special handling for fsl-mc for of* cases altogether.
https://elixir.bootlin.com/linux/latest/source/drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c

Regards,
Pankaj Bansal
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
