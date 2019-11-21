Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 080E8104B05
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 08:09:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c2M722lLSfs87enJjSYXdSjx0yUG9682pEjmFM3K4e8=; b=HxblBbFCGtlw8O
	P0e2XA6L7A68DvWmD9LFSpPynp/I4xBRS+CmscSV44NI/dNKvt+DC1L7vD+WA84WVA0Rqs6abPQrP
	+37Mk/+FyrOlwDVGFZrYTO2SWrCuzQYUZy+xBkmrwb8Efc11a92UIwcGiYKq/GDmgrUbEXX61fjMy
	NgpTJVJhcF93N0mLVXjg/atRmRUmeizdqGL+gnNLe5UAln4u34jU1a3pC+o8DmWOqy6ibh/fUEppX
	AKPokJd2hoyiisG//296375y5fRwNPZRK/H5Pt9uVkch8lGDh+8lt1g6WxuEZMcIocq2KTve9+jyF
	o/dvCQlCu3SUEzb0nTjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXgaZ-00005Y-Ua; Thu, 21 Nov 2019 07:09:15 +0000
Received: from mail-eopbgr700087.outbound.protection.outlook.com
 ([40.107.70.87] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXgaP-0008Vx-Ky
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 07:09:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kzvmrc9miFUA0DMroZFtI9kO5PMwcCKfDX9Q9FZgNEPxoBCkGH6rp+Z8IHN0uqidjU3B6t3mC3WYhemcWbOcE3fUdndwur5Vxuiq7ZqpDLRHNteWbJeG2t2FwSlpD2sdpKqyU6j9dw7vroyBDGQc4+4BOQh/kYqI+2SqJLSSSDq9qknh6xG4i3cfkm3z6HPhMeuOT5gwA+lz90ZY216js14j0KOq+Fx8JBzCLMkNFQjOdjwydVXCojhOuR+kGlHdJUi1kGXkj1O+Yn6MDNlhF1tYR8UvAvnS36PyWRLI5loFQZ5BVvKq4PagLIWJkh/mqISQlk1fl9Wg5k90RsdphQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y6WlEpUSXxY/bCqzlPa9lhjhx2jppTVScHnwCz/HOJA=;
 b=TiSOhJVb4el6Duk4IjirFJktaa/7wQDCqrrBNnUIUQvA6QRH1QmKes5Jt9cI66oUy+9IImz+iuxBcaJXVHsUUItA+qYvkJT43K3M7QvsoiXU7S3+8g6rjI26UwsjrVnoGZe23z6ypr3Lbo7haXLRDjFQBb4aw4aQ18qCbOrwKqq8GoHOk9x/eNCOCYZgn9O0rajJ4SrIQ+Qp1Uh/k/y3rQAC0edum+TLxpndIgvpc/TnXt64IOuKEtlD1KJcxNxdRbqtgu6jpgQgvm1nX24NOOXxcXqOoYncE4hUNL1BQr6oY+/i/8O7ay5IHjha+VywkahKNg7CsOIxCF98//V8hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y6WlEpUSXxY/bCqzlPa9lhjhx2jppTVScHnwCz/HOJA=;
 b=A1whSk6CWVTO1a6dhKXrm6I9TYeyqiZuWu/Y0TjdQ1hqL8HAM0lOxbcX8r7klUkVNMaz/kgpQ2c9By77G3D3e+b0D7y/t6KLfmiXHREDyAZyyGiE+7yz+KV2JxNyF9ESzh8M5flLdhGKWPuGKrJ0iWYBvNamWFL0aGX157bMYMk=
Received: from MN2PR02MB6029.namprd02.prod.outlook.com (52.132.174.207) by
 MN2PR02MB6144.namprd02.prod.outlook.com (52.132.175.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Thu, 21 Nov 2019 07:08:57 +0000
Received: from MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::7c98:7d3:f15a:27f]) by MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::7c98:7d3:f15a:27f%3]) with mapi id 15.20.2451.032; Thu, 21 Nov 2019
 07:08:57 +0000
From: Manish Narani <MNARANI@xilinx.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: RE: [PATCH v6 0/8] Arasan SDHCI enhancements and ZynqMP Tap Delays
 Handling
Thread-Topic: [PATCH v6 0/8] Arasan SDHCI enhancements and ZynqMP Tap Delays
 Handling
Thread-Index: AQHVn25tGCkl+xQ8X0m6HeJEn7Tt8qeUBb8AgAEuXKA=
Date: Thu, 21 Nov 2019 07:08:56 +0000
Message-ID: <MN2PR02MB6029E25E0DC26BD79DA58A4EC14E0@MN2PR02MB6029.namprd02.prod.outlook.com>
References: <1574232449-13570-1-git-send-email-manish.narani@xilinx.com>
 <CAPDyKFprcjgrcbT3jpT7pyM+FFWL8RAm5AtFAjVLcPMDiDzUvA@mail.gmail.com>
In-Reply-To: <CAPDyKFprcjgrcbT3jpT7pyM+FFWL8RAm5AtFAjVLcPMDiDzUvA@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: 02644b03-d4cd-429c-dd8b-08d76e51ad30
x-ms-traffictypediagnostic: MN2PR02MB6144:|MN2PR02MB6144:
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR02MB61447645514E14D522B232C3C14E0@MN2PR02MB6144.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0228DDDDD7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(396003)(136003)(346002)(376002)(199004)(189003)(13464003)(53546011)(3846002)(256004)(6116002)(14454004)(86362001)(478600001)(33656002)(5660300002)(99286004)(76116006)(110136005)(4326008)(316002)(2906002)(6436002)(54906003)(14444005)(6246003)(107886003)(55016002)(9686003)(6506007)(446003)(8936002)(25786009)(229853002)(71190400001)(76176011)(74316002)(102836004)(71200400001)(26005)(66066001)(7696005)(305945005)(8676002)(7416002)(52536014)(81166006)(81156014)(7736002)(66446008)(66476007)(66946007)(66556008)(64756008)(11346002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6144;
 H:MN2PR02MB6029.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +qshEcglT9BEgl2Lbt/KxBDbXDdXScNSHAIpQHgDQJg9hgTgXg3YfB56+qSY0xo1devVBOpYHndAI0ZRk8zXryJ2S1DWasU5ytXPsZ0+OqqgnpuiN5ltBi1Qc+VW69bS/zy4OIP4mgci+zTPUOSEshFaipGB7ULJIXIUq7y+ga2VRfvTnZ/lpCCU4TZJR4sSnTrr3pN9jJUoqEXYYzxJSqH0casLCR7XAq+K3IiIq+fa0iT/xl+yYkMqvUkOD1XPGs6HML2gqwl06v7/IVN1ENM8E48mBqo4UFSgCieAM2tWnng/EwljfkB8ox0ehq+BDLAsl1TY9Vx3JqcWh43N3vFE787X3GfHFugkhkuPG4G1lI/W0e2jyxV5YA8Z52RTFZZLjJd0944U/u2frGzXtYz+jeX/Hqm4uzSSYi9zu4PznswPKEavKIr53J2ObKAA
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02644b03-d4cd-429c-dd8b-08d76e51ad30
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2019 07:08:56.8994 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: esj90CV8cMt+IhuNufaw9cwAphvri1QVIl48V8aJ67A/9ashd7p+3vuLxF7YjtFUtb3xW5elwM+7MjNBNFLrJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_230905_847782_13E4ABC0 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.87 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Nava kishore Manne <navam@xilinx.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jolly Shah <JOLLYS@xilinx.com>, Rajan Vaja <RAJANV@xilinx.com>,
 Michal Simek <michals@xilinx.com>, git <git@xilinx.com>,
 Moritz Fischer <mdf@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Uffe, Rob and Adrian,

> -----Original Message-----
> From: Ulf Hansson <ulf.hansson@linaro.org>
> Sent: Wednesday, November 20, 2019 6:29 PM
> To: Manish Narani <MNARANI@xilinx.com>
> Cc: Rob Herring <robh+dt@kernel.org>; Mark Rutland
> <mark.rutland@arm.com>; Adrian Hunter <adrian.hunter@intel.com>;
> Michal Simek <michals@xilinx.com>; Jolly Shah <JOLLYS@xilinx.com>; Rajan
> Vaja <RAJANV@xilinx.com>; Nava kishore Manne <navam@xilinx.com>;
> Moritz Fischer <mdf@kernel.org>; linux-mmc@vger.kernel.org; DTML
> <devicetree@vger.kernel.org>; Linux Kernel Mailing List <linux-
> kernel@vger.kernel.org>; Linux ARM <linux-arm-
> kernel@lists.infradead.org>; git <git@xilinx.com>
> Subject: Re: [PATCH v6 0/8] Arasan SDHCI enhancements and ZynqMP Tap
> Delays Handling
> 
> On Wed, 20 Nov 2019 at 07:47, Manish Narani <manish.narani@xilinx.com>
> wrote:
> >
> > This patch series does the following:
> >  - Reorganize the Clock Handling in Arasan SD driver
> >  - Adds new sampling clock in Arasan SD driver
> >  - Adds support to set Clock Delays in SD Arasan Driver
> >  - Add SDIO Tap Delay handling in ZynqMP firmware driver
> >  - Add support for ZynqMP Tap Delays setting in Arasan SD driver
> >
> > Changes in v2:
> >         - Replaced the deprecated calls to clock framework APIs
> >         - Added support for dev_clk_get() call to work for SD card clock
> >         - Separated the clock data struct
> >         - Fragmented the patch series in smaller patches to make it more
> >           readable
> >
> > Changes in v3:
> >         - Reverted "Replaced the deprecated calls to clock framework APIs"
> >         - Removed devm_clk_get() call which was added in v2
> >
> > Changes in v4:
> >         - Made the Phase Delay properties Arasan specific
> >
> > Changes in v5:
> >         - Made Clock Phase Delay properties common
> >         - Moved documentation of them to the common mmc documentation.
> >
> > Changes in v6:
> >         - Clubbed all Clk Phase Delay properties' into a pattern
> >           Property
> >
> > Manish Narani (8):
> >   mmc: sdhci-of-arasan: Separate out clk related data to another
> >     structure
> >   dt-bindings: mmc: arasan: Update Documentation for the input clock
> >   mmc: sdhci-of-arasan: Add sampling clock for a phy to use
> >   dt-bindings: mmc: Add optional generic properties for mmc
> >   mmc: sdhci-of-arasan: Add support to set clock phase delays for SD
> >   firmware: xilinx: Add SDIO Tap Delay nodes
> >   dt-bindings: mmc: arasan: Document 'xlnx,zynqmp-8.9a' controller
> >   mmc: sdhci-of-arasan: Add support for ZynqMP Platform Tap Delays Setup
> >
> >  .../devicetree/bindings/mmc/arasan,sdhci.txt  |  25 +-
> >  .../bindings/mmc/mmc-controller.yaml          |  13 +
> >  drivers/mmc/host/sdhci-of-arasan.c            | 478 +++++++++++++++++-
> >  include/linux/firmware/xlnx-zynqmp.h          |  13 +-
> >  4 files changed, 497 insertions(+), 32 deletions(-)
> >
> > --
> > 2.17.1
> >
> 
> Applied for next, assuming Rob is okay with patch4, otherwise you need
> to send a fix on top, thanks!
> 
> Kind regards
> Uffe

Thank you so much for your reviews and continuous support! :)
Looking forward to work more with you on this.

Regards,
Manish
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
