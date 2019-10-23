Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A454E225A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 20:11:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3yXZ3pgYDvGFEiVO6+zo0bhyVQBGj6J5cf2rRsgAh34=; b=GO1r5KN2WdT/eU
	rSqnbMue5993gZUjuhRh/WNMIPPqYs7Eg2pc0Hmcff4cUcYdWReq25Jawrx2Y5vlrTkjTcWghOlm0
	eeiQQMds28PI9nUioLKmatTt4hlXhwwWrs5XFGq6j+z1lRdxpl/rG8tbWjkEmYqg9+uTtX7ulW+QT
	4J8NSScy7SittoNpeSzN1dyQwhhOyhFYFaszkntv7UXr4TFqJUTyKRcxULq2js2pmH/tgRsDH2lfy
	WKI6GgWY7+eO36rqq0E8lKxRylj+TUsuLhutgE+WNwMC1KcF3oRgyWeIA6wenj7ahsAMXn4R5w6P1
	oimtGLzwukNEkXok2ZiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNL6J-00026c-1l; Wed, 23 Oct 2019 18:11:15 +0000
Received: from mail-eopbgr780041.outbound.protection.outlook.com
 ([40.107.78.41] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNL68-000263-Qv
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 18:11:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e1lBPeXIruzJUoE56hhvTOpP925PV7W1vL6CCGWPbjE9L4YYxbsSITvDw5y4ZxC7dbAEPxOId5WZPaK9E4fUrHgbNP/Cf0JHzBUkqUPQd/s6Icu6iNmypGBRG5eHgWRdHP2fim2rpKhCgkz6vs0+DpV0MegM7MZT5vPqLqtkxfETtQOWP9o5F30IEE4HVt433O5Rmgi2QRnypULeVdbPMYug7MnqwvOG1nQueczw1rmuwzRoN15kaeNcYcZdIq3AWqNCgdtzjmGU68TxzofLv4cq7spTERRbfpL0VyFo5iNIzrymPFkbnk1p064BW4j3k6BRdwG5wupVcFTkx+SRtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7NMsuqIwaAEEKS4y59Hy5Y9lvmPNuJhv+jAdCdVzmEo=;
 b=FFdkXGqRizB/7REoUiUmEH+y4xSoIwcVVXc1aiqeqtbkL2e3/xWtPDmtEzIOWi7s+xhDKYpe0wB8MW2HrobW7+3WAM1D8pFX8S4kVRIA56607V+A3KB9eh1hYUgtxse6NCfh0Z81M5xQ2+hGJwkn2ZIvc4SvaSNKPFrNXmgJP5OjT+UurdoueXqSAAdxlOYOqZlV5xZx6toRlCtl9VJFj1G4pVNys0rPM9j3fvdomsiReArHjPSvoHfsobo0kwEb3FG+VuxRsg5FK0kgsFa8+dU8Cyh9sbQD8/MaHbL0QlkNhYKnkwYu84q2sW7IODutWbiSie1M4POKXpgFZ+4pSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7NMsuqIwaAEEKS4y59Hy5Y9lvmPNuJhv+jAdCdVzmEo=;
 b=brfVqafBwZFyoZvNaBd9GJDbTs5+V6tvUbxfForlNJ5ZZt3z7pvJiu1vlRkdKZp1KGU47LHpYa3KpXQi42Q6Dgj9/AyOFnoheUnDXlzNZTR7dvm9EarY/71HPmNVo0o7gFg2+JmN05y85MATUsQ+tWy9Jl+dsUhlDCRg9euE6ho=
Received: from CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) by
 CH2PR02MB6838.namprd02.prod.outlook.com (20.180.16.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.22; Wed, 23 Oct 2019 18:11:01 +0000
Received: from CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::701f:f4b3:5a98:dbf2]) by CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::701f:f4b3:5a98:dbf2%7]) with mapi id 15.20.2347.030; Wed, 23 Oct 2019
 18:11:01 +0000
From: Radhey Shyam Pandey <radheys@xilinx.com>
To: Jakub Kicinski <jakub.kicinski@netronome.com>, Michal Simek
 <michals@xilinx.com>
Subject: RE: [PATCH v2 net-next] net: axienet: In kconfig add ARM64 as
 supported platform
Thread-Topic: [PATCH v2 net-next] net: axienet: In kconfig add ARM64 as
 supported platform
Thread-Index: AQHVh/jtYKDvt7dDPUahZ0r1UKsFy6dlJByAgAHIkQCAAZQXkA==
Date: Wed, 23 Oct 2019 18:11:01 +0000
Message-ID: <CH2PR02MB700016B63363FA06AA9AA907C76B0@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <1571653110-20505-1-git-send-email-radhey.shyam.pandey@xilinx.com>
 <cbdd6608-804a-086c-1892-1903ec4a7d80@xilinx.com>
 <20191022102952.09211971@cakuba.netronome.com>
In-Reply-To: <20191022102952.09211971@cakuba.netronome.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=radheys@xilinx.com; 
x-originating-ip: [183.83.141.5]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bbd74536-742d-4816-e8a2-08d757e45ccd
x-ms-traffictypediagnostic: CH2PR02MB6838:|CH2PR02MB6838:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB6838CF1A2B42A07B5D8A6A75C76B0@CH2PR02MB6838.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(39860400002)(396003)(376002)(366004)(346002)(136003)(13464003)(189003)(199004)(86362001)(186003)(81166006)(8936002)(6506007)(53546011)(8676002)(5660300002)(81156014)(476003)(11346002)(446003)(26005)(7696005)(76176011)(99286004)(102836004)(3846002)(25786009)(486006)(2906002)(6116002)(256004)(52536014)(110136005)(478600001)(66066001)(66476007)(76116006)(14454004)(66946007)(55016002)(66556008)(66446008)(71200400001)(71190400001)(64756008)(33656002)(6436002)(229853002)(54906003)(316002)(6246003)(6636002)(4326008)(9686003)(7736002)(74316002)(305945005)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6838;
 H:CH2PR02MB7000.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KHnDePeTzKUOkg7/E+c0mqS07s03KmEnrHyv2QiF4djc7lL+yalD00ObpQbN0szEP6/Va0cpz+zo4ND7Y3T6qcuCAxsfgja5ddmq+Cy5t0M47J0ZYaT2+i7A4qDBqF7ikJYrnz+7Wr/x3jHB3/SzL7LJx/QmNJAonEVLjBW+b2XIawXYz9pX14sZwnDyItgoAJDFb2OoaHtzQOP8vGL/sw2U6pJCWBn5rq5JM3f/PUQR2MDe9ySQ0KQNP93FBb7jMqC3LHXhPrOod84/yhXMcUTRd14Fmb5iuePzqmpG4fTGei6y5P6aNtjbFSVUS8ZjB83P9wRPtMVgDufSgN1LLNqUSh215flkzCnKVpqJlbf6rcvKQqOalP3AYr/3hLqydUy0Dg2sJg1Im9m0slvh5mLwxoHRkIwusZ85BveLSYvhMc7oTOzGxIAeoAZ/UybY
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbd74536-742d-4816-e8a2-08d757e45ccd
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 18:11:01.5759 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JA6d1Z5DEer99xzJc8UpXNzlWV/ko/AQJG3crD7bPJNgAwAkGDC+RcV0HJmlW1s/copUAKGwtDfSFw7XwrBb1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6838
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_111104_875407_2AE384F2 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mchehab+samsung@kernel.org" <mchehab+samsung@kernel.org>,
 Anirudha Sarangi <anirudh@xilinx.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 John Linn <linnj@xilinx.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Jakub Kicinski <jakub.kicinski@netronome.com>
> Sent: Tuesday, October 22, 2019 11:00 PM
> To: Michal Simek <michals@xilinx.com>
> Cc: Radhey Shyam Pandey <radheys@xilinx.com>; davem@davemloft.net;
> netdev@vger.kernel.org; Anirudha Sarangi <anirudh@xilinx.com>; John Linn
> <linnj@xilinx.com>; mchehab+samsung@kernel.org;
> gregkh@linuxfoundation.org; nicolas.ferre@microchip.com; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH v2 net-next] net: axienet: In kconfig add ARM64 as
> supported platform
> 
> On Mon, 21 Oct 2019 16:15:45 +0200, Michal Simek wrote:
> > On 21. 10. 19 12:18, Radhey Shyam Pandey wrote:
> > > xilinx axi_emac driver is supported on ZynqMP UltraScale platform.
> > > So enable ARCH64 in kconfig. It also removes redundant ARCH_ZYNQ
> > > dependency. Basic sanity testing is done on zu+ mpsoc zcu102
> > > evaluation board.
> > >
> > > Signed-off-by: Radhey Shyam Pandey
> <radhey.shyam.pandey@xilinx.com>
> > > ---
> > > Changes for v2:
> > > Remove redundant ARCH_ZYNQ dependency.
> > > Modified commit description.
> > > ---
> > >  drivers/net/ethernet/xilinx/Kconfig | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/xilinx/Kconfig
> b/drivers/net/ethernet/xilinx/Kconfig
> > > index 8d994ce..da11876 100644
> > > --- a/drivers/net/ethernet/xilinx/Kconfig
> > > +++ b/drivers/net/ethernet/xilinx/Kconfig
> > > @@ -6,7 +6,7 @@
> > >  config NET_VENDOR_XILINX
> > >  	bool "Xilinx devices"
> > >  	default y
> > > -	depends on PPC || PPC32 || MICROBLAZE || ARCH_ZYNQ || MIPS ||
> X86 || ARM || COMPILE_TEST
> > > +	depends on PPC || PPC32 || MICROBLAZE || MIPS || X86 || ARM ||
> ARM64 || COMPILE_TEST
> > >  	---help---
> > >  	  If you have a network (Ethernet) card belonging to this class, say Y.
> > >
> > > @@ -26,11 +26,11 @@ config XILINX_EMACLITE
> > >
> > >  config XILINX_AXI_EMAC
> > >  	tristate "Xilinx 10/100/1000 AXI Ethernet support"
> > > -	depends on MICROBLAZE || X86 || ARM || COMPILE_TEST
> > > +	depends on MICROBLAZE || X86 || ARM || ARM64 || COMPILE_TEST
> > >  	select PHYLINK
> > >  	---help---
> > >  	  This driver supports the 10/100/1000 Ethernet from Xilinx for the
> > > -	  AXI bus interface used in Xilinx Virtex FPGAs.
> > > +	  AXI bus interface used in Xilinx Virtex FPGAs and Soc's.
> > >
> > >  config XILINX_LL_TEMAC
> > >  	tristate "Xilinx LL TEMAC (LocalLink Tri-mode Ethernet MAC) driver"
> > >
> >
> > Acked-by: Michal Simek <michal.simek@xilinx.com>
> >
> > But I can image that others could prefer to remove all dependencies.
> 
> Yes, we'd much rather see this litany of architectures removed.

Yes, I can build test on all mentioned architectures and see how it goes.

> Is there any reason it's there in the first place?
Looking into past few commits, this dependency list was incrementally
extended for each platform. In case there are no real dependencies
we can get rid of arch list.

> 
> Most drivers are tested on just a few architectures, but as long
> as correct APIs are used they are assumed to work across the board.
> Otherwise 75% of our drivers would be x86 only. Don't be shy.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
