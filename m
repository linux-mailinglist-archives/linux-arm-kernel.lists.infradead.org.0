Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B5AFAF72
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 12:15:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v4gKcAzOLdSvxIXv8cPekGcI816uZ2YLa8BHknjihR4=; b=HYz1wM6PWfSNIP
	YJImjnUeSbH4OdwUz/4rUUwzn7jn+GnafMdt/tUrJL4/KVcFgoxlYys8gVdCYmyCniRHHQbjbSTQn
	rXjFQ4ei+Qgtyzy+KIek7Ev8YUnPVbUKesiP8+SQu2IWIPcz68KA/ucTxy+QDKfQHUpZf0rE16lPw
	kgm6Wz7TIJVCegNolPrCVnEU/AbCDsXttM+AmyWasRNwGbbVBg/UcqyyelDOmkn3zP2XQ540Lv6qL
	7yQZZGkjpcSjJksJtRdj1PEvUr3tYqWhgqW1AkHrSgsHRuRwndce0INDRi14yrvh0+JBN1u8590sl
	CFtv5RSktBBIV/ntw/jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUqcG-0002dZ-SS; Wed, 13 Nov 2019 11:15:16 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUqc9-0002c1-EQ
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 11:15:10 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Cwk9j49k05muuy61Ma9931YppjH7Ayw5PoG3tpIgKHi0Lf8FsrVMw95eKPZIHCQWlMqw5obidp
 MU/bx3YsW5FFtRbHDQF9GVahe76gE+lX3y6lnhOe+7x/k1zk9YCZq599DI9v124NCp48ejOj1G
 gWIHU6YPULHXGeySLcDY1eHFdmJLQOj+FUsqnwu8Im3JvvKTBC5J3tuwKCLtqRLyMkEDC5UZ9+
 fs3sUvQAw76aTL+vwaoW+5BkDyRtixrrwIxID/VeZwKhGCiG7MGYgrI3afcnf9QKG80DNmvpVm
 vMY=
X-IronPort-AV: E=Sophos;i="5.68,300,1569308400"; d="scan'208";a="56886588"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Nov 2019 04:15:08 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 Nov 2019 04:15:09 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 13 Nov 2019 04:15:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JZ/JPXfeRUrnwXVqEXsvVtd+LWm1j5b0gOj4mhTrpEkICNe03WTPeiWAsBOINpySKnrRHhGKOXEhhs4sVX2c94wGr+ySlvrVzemPXXzrAFVMqY6yUGuz60pPW0TvEqhDgMM81E7HF2doGW4pfXyFHbWTwBg2Cs499DiRSqtTINlWUNAFjGi7bMfPaSRMSVGvThHS7V4gssYkLFWHf5BmPyp3QIdpoGujC8LZgFg9GsqzRUKBq2roU0gAbffPgetCF5EeUUF+ZplHBaBMBQJrz1pMzrHiIH/HM0JioAiYtHg+WSm2xQZ7PqoBnO9yiko+e9Ih/Hc058Mk45F7qeuTOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y/AHet2aaRlIDLXgDuPutYNnU8mwg7TxExXu5iCyG8w=;
 b=cCkaG2IzCFSax7b7mv8fY9I8MLvbXDNXfXi9XUvzRC4K6/gi9GjdKF9lJH03+VeYKno8YsOpvse49tE3DeFc3SVerolbAcw080RKGk9H5gjyS+UIgSJ/wZ+d0j1YZgTAsAnsWEKACBXypmCwIQ+xFnOpL/+n4nhL8o28syT7VNY78Ejb6j4+ydeaV8ZgGfxv1SfGzgcSLdoljKrb0pOsZPBbbFYMG2Rz6bpOYEOWi3MqAo2upGu8GIdsmOPNv8DHQSCsWHyIvdvoX8jE8ji+Kvjkvhw1EHsNZyLhkaR6gBGbmY/qTEMrKb8WSWXhuRxxgjt3eMI8xMcMhkcw901MVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y/AHet2aaRlIDLXgDuPutYNnU8mwg7TxExXu5iCyG8w=;
 b=s6yDoIKFA8Ssj47FfVHp9D4lP1BDdz9kF5XylYuGDd4NJWXEj37wvnlXMMlG+b06km/4ge+Vx4GCNJn+ERaue/3FgmTLTxmp1gFf4/b0j4L0UdlK8K+rRxETph2n3mfPbeLubmdoQjCRnRgWZczlsnY8R97DNrt7jFRax7oWW0M=
Received: from BYAPR11MB3224.namprd11.prod.outlook.com (20.177.127.88) by
 BYAPR11MB3207.namprd11.prod.outlook.com (20.177.184.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Wed, 13 Nov 2019 11:15:07 +0000
Received: from BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::f4eb:2c83:7aec:ee98]) by BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::f4eb:2c83:7aec:ee98%3]) with mapi id 15.20.2430.023; Wed, 13 Nov 2019
 11:15:07 +0000
From: <Claudiu.Beznea@microchip.com>
To: <linux@armlinux.org.uk>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: Re: [PATCH 00/13] add defconfig support for SAM9X60
Thread-Topic: [PATCH 00/13] add defconfig support for SAM9X60
Thread-Index: AQHVmhOaxsb1PFuwzEKI4243iHeyKA==
Date: Wed, 13 Nov 2019 11:15:07 +0000
Message-ID: <fe877350-d50c-c2d8-a07f-0c577de08358@microchip.com>
References: <1573635069-30883-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1573635069-30883-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR08CA0058.eurprd08.prod.outlook.com
 (2603:10a6:205:2::29) To BYAPR11MB3224.namprd11.prod.outlook.com
 (2603:10b6:a03:77::24)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191113131500526
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b9809fe8-3fc8-4495-194c-08d7682abd45
x-ms-traffictypediagnostic: BYAPR11MB3207:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB32074EE40873D3E4EA14813487760@BYAPR11MB3207.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(376002)(39860400002)(396003)(136003)(199004)(189003)(71200400001)(64756008)(186003)(86362001)(53546011)(66446008)(6116002)(6436002)(6486002)(54906003)(305945005)(66066001)(66946007)(66476007)(66556008)(102836004)(256004)(316002)(6246003)(31686004)(71190400001)(229853002)(110136005)(478600001)(6512007)(7736002)(52116002)(25786009)(6506007)(2616005)(76176011)(8936002)(486006)(31696002)(6636002)(81166006)(2501003)(14454004)(26005)(446003)(99286004)(11346002)(386003)(2906002)(4326008)(5660300002)(476003)(8676002)(36756003)(3846002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3207;
 H:BYAPR11MB3224.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7s50Zw0DHh5CGZaskgH9gsB+G+ny29tjwFHAK1sXYsk2LZ1A96i6PwKi+wEia7vyC6GmEYAQFOseVM9YTq1YjQePgRbkKxPVeDyGSJeXi/N/iiXzpxCi18WYJ0fVryASFrUnTYRvcSs2gDig2iFoIHOiHxdy2G5gXYcF1cOjBPFdpzIgCOc0hj0jXYc7wS0/lAjfs0nQO7+9UgXu01rzkj9EdE3yfj+QqjZsc8nXUcvw/iXQG5hb6A9bMM0T74t4QG3St7KLCrRzgCK6cQFGpBR26IdYR6ysUI4VIcK2AyGn5Ugwf0tEK+atbc9twHpxO/Ezn0Bwk9RVPd/5KgXLmzSYRmHIhIMXtIYAn/JEcEi/PymGri4AE8ljzM09CPGCuaoQ28S7KJe+Vgr/+3PhlJuw2133Q8sAQuC+KlXli1HFFt7uz7qe6DA+ovQj7Ick
Content-ID: <B43A231ABEF0FC4BA13AEAB52BFFEE83@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b9809fe8-3fc8-4495-194c-08d7682abd45
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 11:15:07.1700 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ub90rkXBAmeHpJ0nPPVZD76N1QAoYIkfMAlWDKbGxh+o8uj7mnONNfRIVdO6oGf2r8hO0Uqr+8wxSRdQR90X0NnpwDsY2GyamVLqA3JY7TE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3207
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_031509_538815_D680EBCA 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Please ignore this series for the moment.

Thank you,
Claudiu Beznea

On 13.11.2019 10:50, Claudiu Beznea wrote:
> Hi,
> 
> This series enables proper support for SAM9X60 in Kconfig and
> defconfig.
> 
> Thank you,
> Claudiu Beznea
> 
> Claudiu Beznea (8):
>   ARM: at91: Kconfig: add sam9x60 pll config flag
>   ARM: at91: Kconfig: add config flag for SAM9X60 SoC
>   ARM: at91/defconfig: use savedefconfig
>   ARM: at91/defconfig: add config option for SAM9X60 SoC
>   ARM: at91/defconfig: enable atmel maxtouch
>   ARM: at91/defconfig: enable SAMA5D2's SHDWC
>   ARM: at91/defconfig: enable flexcom
>   ARM: at91/defconfig: enable XDMAC
> 
> Codrin Ciubotariu (3):
>   ARM: at91/defconfig: Add I2S Multi-channel driver
>   ARM: at91/defconfig: Add driver for Audio PROTO board
>   ARM: at91/defconfig: enable CLASSD
> 
> Tudor Ambarus (2):
>   ARM: at91/defconfig: enable AT91_SAMA5D2_ADC
>   ARM: at91/defconfig: enable ATMEL_QUADSPI
> 
>  arch/arm/configs/at91_dt_defconfig | 56 ++++++++++++++++++--------------------
>  arch/arm/mach-at91/Kconfig         | 13 +++++++++
>  2 files changed, 39 insertions(+), 30 deletions(-)
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
