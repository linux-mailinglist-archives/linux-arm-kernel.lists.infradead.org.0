Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF8C15E053
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:13:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6O7F+e8jsdrdH4BiSbisG1NbtkpYpiOv5agJohP2ZdA=; b=TBRJAaEb79jwx4
	T76zcWJw9yleghUxkmlMOODRqmYsKVGuyXqs6S55k+njjklyedrwTF2SYBWGj1RGvuRrzwvfVsEyF
	RXLYDkB7WMKPgoSoyKpsYk5yswifAVQ65VKF+lJcqUpFziUuboVHJ31AA77byAmHpWFIPGeeduhxp
	txEesnTKPNYlFGDfutgoqSRhIaBXBVKW3+v7f8Alfu/g+yRHkaz04jjrsOAeN+77DfsaXHPIJc5Ov
	BgdTDMF93zV4L8cpy3nVszClXQuex2Ni03pj2J4FCM0Hle5Z+tKtyDAAqC3RQzU6wuWlN/sYQq7B6
	rCDfTAveRFQdEPS1OrQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dau-0005HY-RM; Fri, 14 Feb 2020 16:13:32 +0000
Received: from mail-eopbgr70041.outbound.protection.outlook.com ([40.107.7.41]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dMA-0003NG-TM
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:58:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XeOurSnizYlEomrbnm7qUi8zM+UvxrW7C15ejFfZOEecOBOBAKY3Z8k2Gi9HPZtlsTP3M9fSuAtLmxs0Y6AXQNhjOqIi7VAjbQDlUgB4RIl/3svUqGLggJPxQYZuyGtHtq5TTPgbY8rLYEu2+9nuMhq4cgd2vMhxStzFLJBl+9PeF04OaBHveoba0o9BnJkxjx22Bwj+rvSMo0xZwulaNp018Czz+GzAS/3WbC4J/Sg0m+1fgw+qLMvinRB+sA4todArt1y6eoemfjnQph5E45gCY3xrfV0Em6Z2/7FxEc99bWngqEABG9w5icS0nQYzeXBKiDJK3IDCclJciFZmiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c3lHtC1ahzSRQOGx6ECwEE/Dbl+A9cP8ZDXwPjXvLw8=;
 b=aI006rcNwuiLfABbHFXQo1gJrI0pIP19mKWAETzXyuIfA7G1UNPU9eeIgd1Sh42HYfV71j4dKWX2BcLe6tFZ23Bd4ZmfLjY3HEMcuI87iD84+7MnjCq2lkPWllpvGcQfaPmdzpGC9iyhHZebRgDNb2wlSdZ+lCaPBOIgqWm/K0XxdC42t/4Mm0RcgkfaLiAnvMcQO+p1ErPkwVAOTGCPVzP8HGc9dKY8I4JuyFmiryFKmk0dx7pJx10t+Li5czqY7J7zVloB520r/l9LPNXOYKrlqr+bMpG9Y71UsVsd462icIqDl+CQlce8HUjfLGWS8Bj98A7mcIRKpMps7eTlbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c3lHtC1ahzSRQOGx6ECwEE/Dbl+A9cP8ZDXwPjXvLw8=;
 b=iTgLqqkuvyTtBENUr8nqw/3S6v/JKnU5c3rbPEfQglqALaHEKKZbKHV8W2JseCof9ASTQPZ07UKfA0s85VTE4n2IvoNABdAPY8MonRNJccA4eIXg6GeLfP0XczlYn0qwkMEgPn6O3JRZIgd8LbHML9EDmWqFBSdUfI/fw76HIrI=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2350.eurprd04.prod.outlook.com (10.169.134.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Fri, 14 Feb 2020 15:58:14 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::196a:28a9:bb9:2fae]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::196a:28a9:bb9:2fae%9]) with mapi id 15.20.2729.025; Fri, 14 Feb 2020
 15:58:14 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Thread-Topic: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Thread-Index: AQHV1bJZgaFB40NXxUCtFFLRVXyi06f/610AgAStpQCAAAiuAIAAD1yAgBYviuCAABITAIAAAFRw
Date: Fri, 14 Feb 2020 15:58:14 +0000
Message-ID: <VI1PR0401MB2496373E0C6D1097F22B3026F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
References: <1580198925-50411-1-git-send-email-makarand.pawagi@nxp.com>
 <20200128110916.GA491@e121166-lin.cambridge.arm.com>
 <DB8PR04MB7164DDF48480956F05886DABEB070@DB8PR04MB7164.eurprd04.prod.outlook.com>
 <12531d6c569c7e14dffe8e288d9f4a0b@kernel.org>
 <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
 <VI1PR0401MB249622CFA9B213632F1DE955F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <7349fa0e6d62a3e0d0e540f2e17646e0@kernel.org>
In-Reply-To: <7349fa0e6d62a3e0d0e540f2e17646e0@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-originating-ip: [49.36.135.121]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8cf76f07-d0f4-4c31-7b99-08d7b166b33e
x-ms-traffictypediagnostic: VI1PR0401MB2350:|VI1PR0401MB2350:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0401MB23504C7D42F5C77C7E4047D5F1150@VI1PR0401MB2350.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 03137AC81E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(396003)(39860400002)(366004)(346002)(136003)(376002)(199004)(189003)(7416002)(5660300002)(52536014)(86362001)(66556008)(26005)(7696005)(64756008)(66446008)(8936002)(6916009)(81156014)(44832011)(66946007)(76116006)(186003)(33656002)(66476007)(8676002)(81166006)(45080400002)(2906002)(478600001)(316002)(966005)(55016002)(71200400001)(4326008)(9686003)(6506007)(54906003)(53546011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2350;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3pT8ohj4DJovAVkoJV08hUmZrIpLq9Tid5KxxH+jK3gOPjUag2d9LDk2ZOPQcPkkg8ECVIKzquC6J5wj1RpMyG4/wo35yT4vg3zXaJc6a4aPqDnoakLPGUerKPGKwxADYGzciSP8plEqcYbg4Xc5e++RlmjlPNXzWxqSKXXJVHFUXPW83Sm2gX7NhudY5UgD0QQJhBh5uvgDRhTp3PFbQe2CCN57+IUdsT32HNTAv/Vr/bY4rDm7pfJxD5ZbfrgkbBnkBfL8hsy0LPB35NXNy/GHLkvnWIw54zdV+J2uhxz5ZucHlRKLrKw992SsikDJ08+ZsPr07DEueRDB6jy/Lxk4j2tw4Ly0bfxuoFOhq8A5mC0Tt05tnvTGP65ZVQX6y/1rMjwMY5NpYHq/HLXbsKkjj3NVfc1WjYlgWNXLHrTDi9bXBlx6IWvAZhCpXDMBzpwh2L1MrUb63QEBfh0awZVmhEVX4JjCHsDpmruV9E2EBXA5z6YCZQHCMNNlRoK12e14CS35Sh/3zbiNU9CyWjETBKflNNfxlL0dR1xVB+m2IRyz7TZ98qmmAZcai49lzN5Qhh/1vVxj59sWPEBQlLY+dmMwBqPVVQKNpeF4fMNo+/5vBxT/wTlC6cU82TrA
x-ms-exchange-antispam-messagedata: sjnGYhL0YJbqCfqiCu6u+y1kzBXKp7tCiWeVT3am6hyYQDC0TnJHMRVd/ETc3+R1R/+NcBbqnM1y4ZdL/rwtZ7yHXLCm1omSCilvkqY/fyFoZha5QBvoNbyzn+6P8CEppKa1nzV6Gok2E37RsJhrjQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cf76f07-d0f4-4c31-7b99-08d7b166b33e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2020 15:58:14.7002 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o+SaG7AmEUoHxlMK4s9DIBfiurtsSsMbLd6+KPN9fAtgaYY8hrzTbgVqH1Am4LNyTMlEHy3WSCz+Q+85FTdfTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2350
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_075819_128430_C3F1119A 
X-CRM114-Status: GOOD (  27.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.41 listed in list.dnswl.org]
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
 Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
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
> From: Marc Zyngier <maz@kernel.org>
> Sent: Friday, February 14, 2020 9:24 PM
> To: Pankaj Bansal <pankaj.bansal@nxp.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>; Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com>; Makarand Pawagi <makarand.pawagi@nxp.com>;
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
> On 2020-02-14 15:05, Pankaj Bansal wrote:
> >> -----Original Message-----
> >> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> >> Sent: Friday, January 31, 2020 5:32 PM
> >> To: Marc Zyngier <maz@kernel.org>
> >> Cc: Makarand Pawagi <makarand.pawagi@nxp.com>; Calvin Johnson
> >> <calvin.johnson@nxp.com>; stuyoder@gmail.com; nleeder@codeaurora.org;
> >> Ioana Ciornei <ioana.ciornei@nxp.com>; Cristi Sovaiala
> >> <cristian.sovaiala@nxp.com>; Hanjun Guo <guohanjun@huawei.com>; Will
> >> Deacon <will@kernel.org>; Lorenzo Pieralisi
> >> <lorenzo.pieralisi@arm.com>; Pankaj Bansal <pankaj.bansal@nxp.com>;
> >> jon@solid-run.com; Russell King <linux@armlinux.org.uk>; ACPI Devel
> >> Maling List <linux-acpi@vger.kernel.org>; Len Brown
> >> <lenb@kernel.org>; Jason Cooper <jason@lakedaemon.net>; Andy Wang
> >> <Andy.Wang@arm.com>; Varun Sethi <V.Sethi@nxp.com>; Thomas Gleixner
> >> <tglx@linutronix.de>; linux-arm-kernel <linux-arm-
> >> kernel@lists.infradead.org>; Laurentiu Tudor
> >> <laurentiu.tudor@nxp.com>; Paul Yang <Paul.Yang@arm.com>;
> >> <netdev@vger.kernel.org> <netdev@vger.kernel.org>; Rafael J. Wysocki
> >> <rjw@rjwysocki.net>; Linux Kernel Mailing List
> >> <linux-kernel@vger.kernel.org>; Shameerali Kolothum Thodi
> >> <shameerali.kolothum.thodi@huawei.com>; Sudeep Holla
> >> <sudeep.holla@arm.com>; Robin Murphy <robin.murphy@arm.com>
> >> Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for
> >> fsl-mc
> >>
> >> On Fri, 31 Jan 2020 at 12:06, Marc Zyngier <maz@kernel.org> wrote:
> >> >
> >> > On 2020-01-31 10:35, Makarand Pawagi wrote:
> >> > >> -----Original Message-----
> >> > >> From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> >> > >> Sent: Tuesday, January 28, 2020 4:39 PM
> >> > >> To: Makarand Pawagi <makarand.pawagi@nxp.com>
> >> > >> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org;
> >> > >> linux-arm- kernel@lists.infradead.org;
> >> > >> linux-acpi@vger.kernel.org; linux@armlinux.org.uk;
> >> > >> jon@solid-run.com; Cristi Sovaiala <cristian.sovaiala@nxp.com>;
> >> > >> Laurentiu Tudor <laurentiu.tudor@nxp.com>; Ioana Ciornei
> >> > >> <ioana.ciornei@nxp.com>; Varun Sethi <V.Sethi@nxp.com>; Calvin
> >> > >> Johnson <calvin.johnson@nxp.com>; Pankaj Bansal
> >> > >> <pankaj.bansal@nxp.com>; guohanjun@huawei.com;
> >> > >> sudeep.holla@arm.com; rjw@rjwysocki.net; lenb@kernel.org;
> >> > >> stuyoder@gmail.com; tglx@linutronix.de; jason@lakedaemon.net;
> >> > >> maz@kernel.org; shameerali.kolothum.thodi@huawei.com;
> >> > >> will@kernel.org; robin.murphy@arm.com; nleeder@codeaurora.org
> >> > >> Subject: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for
> >> > >> fsl-mc
> >> > >>
> >> > >> Caution: EXT Email
> >> > >>
> >> > >> On Tue, Jan 28, 2020 at 01:38:45PM +0530, Makarand Pawagi wrote:
> >> > >> > ACPI support is added in the fsl-mc driver. Driver will parse
> >> > >> > MC DSDT table to extract memory and other resorces.
> >> > >> >
> >> > >> > Interrupt (GIC ITS) information will be extracted from MADT
> >> > >> > table by drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c.
> >> > >> >
> >> > >> > IORT table will be parsed to configure DMA.
> >> > >> >
> >> > >> > Signed-off-by: Makarand Pawagi <makarand.pawagi@nxp.com>
> >> > >> > ---
> >> > >> >  drivers/acpi/arm64/iort.c                   | 53 +++++++++++++++++++++
> >> > >> >  drivers/bus/fsl-mc/dprc-driver.c            |  3 +-
> >> > >> >  drivers/bus/fsl-mc/fsl-mc-bus.c             | 48 +++++++++++++------
> >> > >> >  drivers/bus/fsl-mc/fsl-mc-msi.c             | 10 +++-
> >> > >> >  drivers/bus/fsl-mc/fsl-mc-private.h         |  4 +-
> >> > >> >  drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c | 71
> >> > >> ++++++++++++++++++++++++++++-
> >> > >> >  include/linux/acpi_iort.h                   |  5 ++
> >> > >> >  7 files changed, 174 insertions(+), 20 deletions(-)
> >> > >> >
> >> > >> > diff --git a/drivers/acpi/arm64/iort.c
> >> > >> > b/drivers/acpi/arm64/iort.c index 33f7198..beb9cd5 100644
> >> > >> > --- a/drivers/acpi/arm64/iort.c
> >> > >> > +++ b/drivers/acpi/arm64/iort.c
> >> > >> > @@ -15,6 +15,7 @@
> >> > >> >  #include <linux/kernel.h>
> >> > >> >  #include <linux/list.h>
> >> > >> >  #include <linux/pci.h>
> >> > >> > +#include <linux/fsl/mc.h>
> >> > >> >  #include <linux/platform_device.h>  #include <linux/slab.h>
> >> > >> >
> >> > >> > @@ -622,6 +623,29 @@ static int iort_dev_find_its_id(struct
> >> > >> > device *dev, u32 req_id,  }
> >> > >> >
> >> > >> >  /**
> >> > >> > + * iort_get_fsl_mc_device_domain() - Find MSI domain related
> >> > >> > +to a device
> >> > >> > + * @dev: The device.
> >> > >> > + * @mc_icid: ICID for the fsl_mc device.
> >> > >> > + *
> >> > >> > + * Returns: the MSI domain for this device, NULL otherwise
> >> > >> > +*/ struct irq_domain *iort_get_fsl_mc_device_domain(struct device
> *dev,
> >> > >> > +                                                     u32 mc_icid) {
> >> > >> > +     struct fwnode_handle *handle;
> >> > >> > +     int its_id;
> >> > >> > +
> >> > >> > +     if (iort_dev_find_its_id(dev, mc_icid, 0, &its_id))
> >> > >> > +             return NULL;
> >> > >> > +
> >> > >> > +     handle = iort_find_domain_token(its_id);
> >> > >> > +     if (!handle)
> >> > >> > +             return NULL;
> >> > >> > +
> >> > >> > +     return irq_find_matching_fwnode(handle,
> >> > >> > +DOMAIN_BUS_FSL_MC_MSI); }
> >> > >>
> >> > >> NAK
> >> > >>
> >> > >> I am not willing to take platform specific code in the generic
> >> > >> IORT layer.
> >> > >>
> >> > >> ACPI on ARM64 works on platforms that comply with SBSA/SBBR
> >> > >> guidelines:
> >> > >>
> >> > >>
> >> > >> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%
> >> > >> 2Fd
> >> > >> eveloper.arm.com%2Farchitectures%2Fplatform-design%2Fserver-syst
> >> > >> ems
> >> > >>
> >>
> &amp;data=02%7C01%7Cpankaj.bansal%40nxp.com%7Cdb56d889d85646277ee
> >> 30
> >> > >>
> >>
> 8d7a64562fa%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C6371606
> >> 892
> >> > >>
> >>
> 50769265&amp;sdata=C7nCty8%2BVeuq6VhcEUXCwiAinN01rCfe12NRVnXJCIY%
> >> 3D
> >> > >> &amp;reserved=0
> >> > >>
> >> > >> Deviating from those requires butchering ACPI specifications (ie
> >> > >> IORT) and related kernel code which goes totally against what
> >> > >> ACPI is meant for on ARM64 systems, so there is no upstream
> >> > >> pathway for this code I am afraid.
> >> > >>
> >> > > Reason of adding this platform specific function in the generic
> >> > > IORT layer is That iort_get_device_domain() only deals with PCI
> >> > > bus (DOMAIN_BUS_PCI_MSI).
> >> > >
> >> > > fsl-mc objects when probed, need to find irq_domain which is
> >> > > associated with the fsl-mc bus (DOMAIN_BUS_FSL_MC_MSI). It will
> >> > > not be possible to do that if we do not add this function because
> >> > > there are no other suitable APIs exported by IORT layer to do the job.
> >> >
> >> > I think we all understood the patch. What both Lorenzo and myself
> >> > are saying is that we do not want non-PCI support in IORT.
> >> >
> >>
> >> IORT supports platform devices (aka named components) as well, and
> >> there is some support for platform MSIs in the GIC layer.
> >>
> >> So it may be possible to hide your exotic bus from the OS entirely,
> >> and make the firmware instantiate a DSDT with device objects and
> >> associated IORT nodes that describe whatever lives on that bus as
> >> named components.
> >>
> >> That way, you will not have to change the OS at all, so your hardware
> >> will not only be supported in linux v5.7+, it will also be supported
> >> by OSes that commercial distro vendors are shipping today. *That* is
> >> the whole point of using ACPI.
> >>
> >> If you are going to bother and modify the OS, you lose this
> >> advantage, and ACPI gives you no benefit over DT at all.
> >
> > I am replying to old message in this conversation, because the
> > discussion got sidetracked from IORT table to SFP/QSFP/devlink stuff
> > from this point onwards, which is not related to IORT.
> > I will only focus on representing the MC device in IORT and using the
> > same in linux.
> > As Ard said:
> > "IORT supports platform devices (aka named components) as well, and
> > there is some support for platform MSIs in the GIC layer."
> >
> > We can represent MC bus as named component in IORT table and use
> > platform MSIs.
> > The only caveat is that with current implementation of platform MSIs,
> > the Input id of a device is not considered.
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Felix
> > ir.bootlin.com%2Flinux%2Flatest%2Fsource%2Fdrivers%2Firqchip%2Firq-gic
> > -v3-its-platform-
> msi.c%23L50&amp;data=02%7C01%7Cpankaj.bansal%40nxp.co
> >
> m%7Ce18eca3d0494432f73e608d7b1662bdb%7C686ea1d3bc2b4c6fa92cd99c5c
> 30163
> >
> 5%7C0%7C1%7C637172924698903527&amp;sdata=N44g3HIK3AL3Gx6%2BlbW
> %2B0QnWE
> > 4LPqzrL9uuhRFIy5Lc%3D&amp;reserved=0
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Felix
> >
> ir.bootlin.com%2Flinux%2Flatest%2Fsource%2Fdrivers%2Facpi%2Farm64%2Fio
> >
> rt.c%23L464&amp;data=02%7C01%7Cpankaj.bansal%40nxp.com%7Ce18eca3d0
> 4944
> >
> 32f73e608d7b1662bdb%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7
> C63717
> >
> 2924698903527&amp;sdata=LoWA6lxY4N%2FidPNaDs2DEqETxYGMdFJsDnr%2B
> xGjGUB
> > 0%3D&amp;reserved=0
> 
> I don't understand what you mean. Platform MSI using IORT uses the DevID of
> end-points. How could the ITS could work without specifying a DevID?
> See for example how the SMMUv3 driver uses platform MSI.

DevID is input ID for PCIe devices. BUT what would be the input ID for platform device? Are we saying that Platform devices can't specify an Input ID ?

> 
> > While, IORT spec doesn't specify any such limitation.
> >
> > we can easily update iort.c to remove this limitation.
> > But, I am not sure how the input id would be passed from platform MSI
> > GIC layer to IORT.
> > Most obviously, the input id should be supplied by dev itself.
> 
> Why should the device know about its own ID? That's a bus/interconnect thing.
> And nothing should be passed *to* IORT. IORT is the source.

IORT is translation between Input IDs <-> Output IDs. The Input ID is still expected to be passed to parse IORT table.

> 
> > Any thoughts?
> 
> I think that in this thread, we have been fairly explicit about what our train of
> though was.
> 
>          M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
