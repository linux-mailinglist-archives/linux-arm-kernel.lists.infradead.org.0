Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB5AE2539
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 23:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ibsEYQ7mhkkDF0y6ppRf1clbiO/4JE2bRGl3PA4i1Zc=; b=XIg2nBDqROo4A6
	ls0QHIVGWbWkTQqYwW5aLTV80GFanNIWkuNgqVabjThuk88J/6jzRudyP2wqpuWr/13MmgNiNugiT
	jnIDJU3/IU9XBMj2pEIQ8BDI6nlurAbRi1rKKYx0dE5CqGxbRt7SNFjHTleugzvoZxJpFhBvKZIbd
	An7BCTsobhn6VueJ2qnw5BDPY8PsfIfgL0vo9E8bEE/otg9dTRNOwP2xgnC+VtTefAYeKpEa6s4fs
	u15ujT1JPTUa+p455jnCsg7+neBmUMtTJkGo3TvHfVZnvpAfmuY/wkOQbDb+B+W0Na6Z65j3Gsdil
	Jsp6o2nBp8QfztvA1GEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNO8W-0002sV-Ce; Wed, 23 Oct 2019 21:25:44 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNO7o-0001Ke-DB; Wed, 23 Oct 2019 21:25:02 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: cE2YaGadm4jSx1aV3E2tdG5p12t4mbgQEQzocF9ScEXJyxotnvOjAWSpHJLXmHRVzS5HUdlgTW
 Da4l/u5kf2vZofZZnufGM2Z0lJc5LzbhW5pgn62P5aY/Gi5D2VzeG+2aSVzSjFYzyQ1Y+XvYSf
 8kR5rHcK628mqVjY9GfdOOGZvuyo1rFOt670ZIYQGr4RA4G0uyg1BGMY0MHf9f+DuVqYrBA9Xe
 T/y206WkEqwDGk6LyLPBk7rfKC8VQ5Ksl2mexKHPFgh8SDPsR2kDEaxZmFbtEAk9xnvb3ytZ8L
 2hg=
X-IronPort-AV: E=Sophos;i="5.68,222,1569308400"; d="scan'208";a="54151951"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Oct 2019 14:24:59 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Oct 2019 14:24:58 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 23 Oct 2019 14:24:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hWYnaJE6QOlfbAPlWtoPTxA0HzLRv5H8HY+g+yjsYXmD1UJlSaFdGFJ9xRWHhAmag5FYpMn3FzU0LdANvz7sQKaNPAgWunw/e/tkvo83qn/rH+spb0MyvZOJ/G8GO6xL++Ob2ZyeX6bQgLrh5DpuFnffD6OuglOANU4iei0JZ0ljWSw9+8uZvP8/Tr49muiK2YMRx+yB0qEjlJt02hsP46vCzG1q/PWtUJwbgFNQJLstgt8THyGM8H9IaR2l2n7pr5xTibGi9B9Iv+jcVQkFc2jZ2y9eXC1m1TMT4dsjjCmi5LoFKKPrBEXUl/JEzzl8XCx4SS25MBQ2IK3XGhfOmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rfQerkVRfO4/hdMv1w7iaxwJKKrsFgZjV92MIq9sa0Q=;
 b=YDKU/pBplpVlUbT7It4+WIqM6L6jKZRFyFSmBI/wXvjD3pc7wPhULhXakJxyDZYbQd1QxqTW+mtL+7/YsrLSZujH0FGPhf8eQEZ++ZioBiIip3CCG+HytY2fYpVcJvOwzzJHYFbOhQBGyDNtPMjZDKlMwCx5LnpuJVLZF0WHXDYYJLanaEbximPqEvaFc+2dr9LFyK7fmZ2phOCGJffz90dQaGhhMoLATEbhtLEDDsnCQBG/jsE/rQZf3NSZZen46LcFaeG8LEJ1J5cUzZgs+Z220riiyJuvqogJXQ3/xkozC88n8j+zcsEiTzISNB9Jm5E7rprOmlUNqtGj736hQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rfQerkVRfO4/hdMv1w7iaxwJKKrsFgZjV92MIq9sa0Q=;
 b=BPEYnKjXAsw4nGqfARKU2rGT6y7y2mZ/KjyA6SdBO+PZ5EYxqd3YXu2pOE3B6WtKtWJHMk0TDT5dZI6NGxicLI5xgRmoPeKeWYSvuAq82qZCjsgyvPnzAV13wflI+gVcCemHf9Q3TjbVxvXul3UnJ522nqm77Rh59p7bZZVyfhs=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3549.namprd11.prod.outlook.com (20.178.250.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Wed, 23 Oct 2019 21:24:57 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2347.029; Wed, 23 Oct 2019
 21:24:57 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <linux-mtd@lists.infradead.org>,
 <geert+renesas@glider.be>, <jonas@norrbonn.se>
Subject: Re: [PATCH v2 02/22] mtd: spi-nor: Introduce 'struct
 spi_nor_controller_ops'
Thread-Topic: [PATCH v2 02/22] mtd: spi-nor: Introduce 'struct
 spi_nor_controller_ops'
Thread-Index: AQHVcqwXvwt12P9zSEWzEDp8S155Aqdo6zKA
Date: Wed, 23 Oct 2019 21:24:57 +0000
Message-ID: <18ad9382-b081-9945-f981-5bf5ba1cde56@microchip.com>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
 <20190924074533.6618-3-tudor.ambarus@microchip.com>
In-Reply-To: <20190924074533.6618-3-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR06CA0096.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::25) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.120.239.29]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a36900a4-4399-4346-c136-08d757ff73f3
x-ms-traffictypediagnostic: MN2PR11MB3549:
x-microsoft-antispam-prvs: <MN2PR11MB35493C6D6608B44929760BBCF06B0@MN2PR11MB3549.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(346002)(376002)(396003)(366004)(199004)(189003)(6436002)(25786009)(2906002)(5660300002)(102836004)(26005)(64756008)(446003)(66556008)(8936002)(86362001)(2201001)(386003)(6506007)(66476007)(229853002)(66946007)(53546011)(36756003)(31696002)(81166006)(6116002)(81156014)(2501003)(8676002)(256004)(3846002)(14454004)(71200400001)(71190400001)(7416002)(110136005)(66066001)(52116002)(316002)(99286004)(6486002)(54906003)(76176011)(6512007)(31686004)(478600001)(11346002)(66446008)(6246003)(186003)(4326008)(305945005)(2616005)(486006)(476003)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3549;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PaMmgRfwTh7beEDA0C0eGbkflOWDE+3KA9ugF8Z1nFSEGqSkoZsNqCtt1a2WBiUSdjQ0eQX27zT1Y5jeGQJsM2Vd2J4yWour6867TPTXnRCWMUTvfBjEJmXhQ6iHsF0kSVO28hrTSu77U7Kjn6boK0T8/cg9inJrnU6Zd74Si3vdM6yFOFSpU8F/b2643l+rtFbK1NiNeKVaun4fCB3f6zYQMH+gD88vcHTK+uf/utcFF/kCYWvh0wsFIxDZVlQX2loSz6Hb62/HMud1DLBTFuGxJf86HtwGMkIl5CKJzAG0l33C0zuQV8Z2cTx9fi4NZB1LoIWvuWYvcwvOc11cZLYPaFSQyvRwHX+B9t4pHcLDMUg2dG7qOVtbbCG9egfMV0Z9Ka2/gm2X0EXPdLM/zb679oquXiCcL9nBCbmv4CVue3DNsNd13hoWmnp9RtN7
x-ms-exchange-transport-forked: True
Content-ID: <D377C1234231CD4495F1D287096B941D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a36900a4-4399-4346-c136-08d757ff73f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 21:24:57.1555 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: juTPhF0ai6dSVS7tx3Kis9XYsQMVpipmU4tHsKgRVWFHPccWDrsDgi3FgIoPEM4bFjCd4khkfleluN8S2q98XigGpEqbzQvft0kHwR3ur84=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3549
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_142500_517611_248E90F0 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-aspeed@lists.ozlabs.org, andrew@aj.id.au, richard@nod.at,
 linux-kernel@vger.kernel.org, vz@mleia.com, linux-mediatek@lists.infradead.org,
 joel@jms.id.au, miquel.raynal@bootlin.com, matthias.bgg@gmail.com,
 computersforpeace@gmail.com, dwmw2@infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/24/2019 10:45 AM, Tudor Ambarus - M18064 wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> Move all SPI NOR controller driver specific ops in a dedicated
> structure. 'struct spi_nor' becomes lighter.
> 
> Use size_t for lengths in 'int (*write_reg)()' and 'int (*read_reg)()'.
> Rename wite/read_buf to buf, the name of the functions are
> suggestive enough. Constify buf in int (*write_reg). Comply with these
> changes in the SPI NOR controller drivers.
> 
> Suggested-by: Boris Brezillon <boris.brezillon@collabora.com>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  drivers/mtd/spi-nor/aspeed-smc.c      | 23 ++++++-----
>  drivers/mtd/spi-nor/cadence-quadspi.c | 39 ++++++++++--------
>  drivers/mtd/spi-nor/hisi-sfc.c        | 22 +++++-----
>  drivers/mtd/spi-nor/intel-spi.c       | 24 ++++++-----
>  drivers/mtd/spi-nor/mtk-quadspi.c     | 25 +++++++-----
>  drivers/mtd/spi-nor/nxp-spifi.c       | 23 +++++++----
>  drivers/mtd/spi-nor/spi-nor.c         | 76 ++++++++++++++++++++---------------
>  include/linux/mtd/spi-nor.h           | 51 +++++++++++++----------
>  8 files changed, 166 insertions(+), 117 deletions(-)

Applied to spi-nor/next.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
