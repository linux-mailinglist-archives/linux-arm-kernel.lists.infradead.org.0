Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7144515D24E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 07:39:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVG7IxVpzYGH12L9snSICFIDl+wQUsIPZpmPjUNi3oM=; b=ZcmzmX+hZIfUgj
	rykjzqmNSQ0Q+Z74TEOf8USVr81oPrNwCal4sMyutZedTfp7H7VT7Bs7cBc/rtvtUa9FUliMQ9qFB
	+u5Qud58I8vAoIi2x5TGZDCBB7xEt3txKH2T7wgcmTJi4fIHW8lqB+ltBHdYnUQZ89EJ2wKTi/zd9
	XGCt5+TANZQDB7P7tT36OKhIG9gGU5P6dMFQEOcwMVWXeHbtO3pdx9CdhnBw9O8CToy7YLILi3C1v
	hsp5thG2eDEiv1LGuwaHt8bI2BW+H1pUJgM39JzVptho/zumZQHeBHeBJtxhm3p+yiy462zYp9arD
	E0zUPPkRe+ELFLIQIlag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2UdW-0007tC-BA; Fri, 14 Feb 2020 06:39:38 +0000
Received: from mail-mw2nam12on2057.outbound.protection.outlook.com
 ([40.107.244.57] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2UdH-0007sG-Lb
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 06:39:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SLXE+SiU5HnDTNFgLQKzdeFvLqXwR1jphCzFODWwczlVCjJ6zV+8PTr90e1ntn/6esipmsvnWZ7NNN+zApI42RyGhCYgDB72olUxJm2JMmWOIEGXV9vcMGGptfn7PISbVuBoKw2OyBC0ZeaXxdwspQojteSWuFufrxSVU+Kjc3P/VQMgoiq6j2TAPF32x7cHTYUdU2RBE2c6k7UdenVq2JVpzxSzZEX41iIfvnCbEe9ZZ5dzRvnc8937c+WBbpw4kDiIAM5Gq7xrm6/eKRT5yUA70OWLk/L9s83F9Iy9Xqd3581XKNr9p3bg87xgLwJxhhkVlf2zGjsVPBJU648UDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SCOWw4kJR57tBvwIESJdXqxfccJf4YrL41v/u6y0dpc=;
 b=TuoEaCbZmmw3BEcJeeE0Wvej/ALOo9rY8VaX+emZhJaKKW3KUKg/I7+kjb8moF+oSQXH1AVMtYbMfHKwUL968UI/9gnQnAqDxFZGcgyHxBvyNnOSCbBKQ8sNaHTdYDrq7+S315bbZ8cmCF7j1xjqizzO4KX83Gkhr8eA9pO0EZRvbBVe000BwCfeaFnbO22smjUTjNpUwMQ7I4ed23Ebxhr3Ge+ah6t6EWIek20aHVzA2jvWW1nTi+zQIpHkok1Oog7sJz7pZwqBjDfY+65jkqfqVD10k8d6v2O87unfVszaI/nYWk+y3IlORNy23CbcFqWbqksx41oBtZETcZ9EdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SCOWw4kJR57tBvwIESJdXqxfccJf4YrL41v/u6y0dpc=;
 b=dzqR7OKj/03j84QNvjydr8QXO7s0IF9vFs/gDImLP3BK+UePx/opHUY+DmBmGcgrJOeDKKdgconspGrBEwJoMTOjP2kHzc/S5YPg6OeulFi6/Ky9OQt9383KgNWFCH/NXdcTbAhr78FBhdW+WtsQNvFUOYtiaV3z8H7lL0rVCiw=
Received: from DM6PR02MB4426.namprd02.prod.outlook.com (20.176.106.156) by
 DM6PR02MB4426.namprd02.prod.outlook.com (20.176.106.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Fri, 14 Feb 2020 06:39:17 +0000
Received: from DM6PR02MB4426.namprd02.prod.outlook.com
 ([fe80::c084:a7d0:ee5d:4673]) by DM6PR02MB4426.namprd02.prod.outlook.com
 ([fe80::c084:a7d0:ee5d:4673%6]) with mapi id 15.20.2729.025; Fri, 14 Feb 2020
 06:39:17 +0000
From: Manish Narani <MNARANI@xilinx.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: RE: [PATCH 0/4] Enhancements and Bug Fixes in ZynqMP SDHCI
Thread-Topic: [PATCH 0/4] Enhancements and Bug Fixes in ZynqMP SDHCI
Thread-Index: AQHV0ES+oJkeVmCLSEim2Z6Yhdi7uagZSiIAgAEX+cA=
Date: Fri, 14 Feb 2020 06:39:17 +0000
Message-ID: <DM6PR02MB4426401AE6322FBC2D12B849C1150@DM6PR02MB4426.namprd02.prod.outlook.com>
References: <1579602095-30060-1-git-send-email-manish.narani@xilinx.com>
 <CAPDyKFqS+9j++9RugFxNS4gKWuH_TpgbL-RXuudg92b-j_kvtQ@mail.gmail.com>
In-Reply-To: <CAPDyKFqS+9j++9RugFxNS4gKWuH_TpgbL-RXuudg92b-j_kvtQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MNARANI@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d6b12b72-98a1-48b3-29d1-08d7b1189d64
x-ms-traffictypediagnostic: DM6PR02MB4426:|DM6PR02MB4426:
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR02MB44264EDCF7B0DF444F1E6712C1150@DM6PR02MB4426.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03137AC81E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(39860400002)(366004)(189003)(199004)(2906002)(316002)(54906003)(5660300002)(7696005)(52536014)(8676002)(8936002)(107886003)(81156014)(81166006)(55016002)(86362001)(33656002)(66446008)(71200400001)(66556008)(478600001)(64756008)(4326008)(9686003)(53546011)(66946007)(66476007)(76116006)(6916009)(26005)(6506007)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4426;
 H:DM6PR02MB4426.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rc0yEmt9YpVn9kcH7y6XbbH+nKcY8hyHkZHe7n4DfxJzzCNueo3Tusaj7KO4FeK1ls83xDXwmkdp2o+T945I/PKOnYwezZFJZUGVe7+Mt3gN2mhK4hbuks2iDt8toUsNwHinwYs8/2PPeMIGYXLV7U8cKX49lzrloeiXkKq3r4QBCfTKbVFTp3peOwKV94IvR89pbr29qWTFBCMtYCUIXqzL8yQKWnjgZtPb2Q41zdoxuET+jNApfsxt0520/wAQAXfa9GJmmOK7g3XML8p+YqwotnH8/sRH+CVmF4FvacBFRYbAvP5ewLP7ZBXrYwhRDSlFzTV6vKY7CG6HEhsokIWBI+Q0YnuCSkfoeJ3nL/JuuFSN1iOov92D8qe7d4Sj4MFQkw8WUvlanBDIegKWZ0kIbrTcfXKdsaG29xFJOdcMMzLWaw+ghdhY7DRQGeyz
x-ms-exchange-antispam-messagedata: h7eoWiHWnYA15A9E+E14ISfLwM2jyULsyQpfhAlwSTcW0QV6kRQF4pTuNqHIC2FaLIshZQjfLsr9/dd2O3bLqIOq0bMr/QjojoAaB1z3p9cqsOXqAn/4Hei3eCCHQqtmNeDQRteKaGhwPIu+t1i07Q==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6b12b72-98a1-48b3-29d1-08d7b1189d64
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2020 06:39:17.3469 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b1RsC6PaThaoR+J38O+oomXextg3zbqSVis8zqbqtP6vU+n5fM4QfaiVrx3gl63sT2lz6cpPkMMC6IUU6ZPjTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4426
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_223923_709954_104672C2 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.57 listed in list.dnswl.org]
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nava kishore Manne <navam@xilinx.com>, Tejas Patel <TEJASP@xilinx.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jolly Shah <JOLLYS@xilinx.com>, Rajan Vaja <RAJANV@xilinx.com>,
 Michal Simek <michals@xilinx.com>, git <git@xilinx.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Uffe,

> -----Original Message-----
> From: Ulf Hansson <ulf.hansson@linaro.org>
> Sent: Thursday, February 13, 2020 7:26 PM
> To: Manish Narani <MNARANI@xilinx.com>
> Cc: Michal Simek <michals@xilinx.com>; Adrian Hunter
> <adrian.hunter@intel.com>; Jolly Shah <JOLLYS@xilinx.com>; Rajan Vaja
> <RAJANV@xilinx.com>; Nava kishore Manne <navam@xilinx.com>; Tejas
> Patel <TEJASP@xilinx.com>; Linux ARM <linux-arm-
> kernel@lists.infradead.org>; Linux Kernel Mailing List <linux-
> kernel@vger.kernel.org>; linux-mmc@vger.kernel.org
> Subject: Re: [PATCH 0/4] Enhancements and Bug Fixes in ZynqMP SDHCI
> 
> On Tue, 21 Jan 2020 at 11:21, Manish Narani <manish.narani@xilinx.com>
> wrote:
> >
> > This patch series includes:
> > -> Mark the Tap Delay Node as valid for ioctl calls
> > -> Add support for DLL reset in firmware driver
> > -> Add support to reset DLL from Arasan SDHCI driver for ZynqMP platform
> > -> Fix incorrect base clock reporting issue
> >
> > Manish Narani (4):
> >   firmware: xilinx: Add ZynqMP Tap Delay setup ioctl to the valid list
> >   firmware: xilinx: Add DLL reset support
> >   mmc: sdhci-of-arasan: Add support for DLL reset for ZynqMP platforms
> >   sdhci: arasan: Remove quirk for broken base clock
> >
> >  drivers/firmware/xilinx/zynqmp.c     |  2 +
> >  drivers/mmc/host/sdhci-of-arasan.c   | 59
> +++++++++++++++++++++++++++-
> >  include/linux/firmware/xlnx-zynqmp.h |  9 ++++-
> >  3 files changed, 68 insertions(+), 2 deletions(-)
> >
> > --
> > 2.17.1
> >
> 
> Applied for next, thanks!
Thanks a lot!

- Manish
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
