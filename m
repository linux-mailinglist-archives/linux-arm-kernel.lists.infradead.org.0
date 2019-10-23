Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A543E2532
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 23:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jfha7MJ9wrGAnbDJFO+5IkEN3Axq0gY478GlyjYMbdo=; b=aE9ymL1FNmj1Jy
	woiJ0cSkC5bdZV3EwRZ5GRInGJWm7bmozyjgS8Co1iRbpAfn0wbntKHc4l6HHYCt1iThze7opyd18
	z8fBZSi0QPqYLE7JeLrN7qOH454uv3k0OfZA8l4oAzDHOA9wzEUA0m9ZD8PZaqKujnUQ9bGZiVJmp
	2NuzXuPHIiXx9fap8dFUPzTUe5m6rKsKjO0xB9EfIFfS5iybITZqO2wKA69uLLjkmAGuVv6LNmckd
	72CxIw0a2/WzkQAkTkd002CEc4d/qERXn8kEM79BzZhpGgX9kNv/b3nFwR8PTqYwxnfFMCEb0H8MS
	ZacKBjouA7NKQ+M+rzkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNO7l-00014W-5C; Wed, 23 Oct 2019 21:24:57 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNO7D-0000og-HU; Wed, 23 Oct 2019 21:24:24 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: j/AhzFTE0SQ+JXZ+/6ePgBIjWwvlV/5pu7q20IU+ANCww2CWfsD4owePI3M18Uo1rnux7V7hpE
 AbnZnpEb03K4lssGxHI+yWMcZP7kZ8GR4hRCrlOyTYJ76FtF9QsZqBQ+MH6nu6YaTKSUo+Ewp5
 rjOlc9je3L6acLCVKEa/64FoKcikfdl3sAACXm2FH6ytS+fnIlH+6BC6d3xFL2BkEdNTl6apco
 GCsfMOtSeRLMFXSAAuCHPVgEHpJcigGeL2xftcNdvlakRJsmOm0f4q7y7xYCEseKyZCmTsDxMM
 yrA=
X-IronPort-AV: E=Sophos;i="5.68,222,1569308400"; d="scan'208";a="55426318"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Oct 2019 14:24:22 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Oct 2019 14:24:22 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 23 Oct 2019 14:24:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RaFVxuqH08NmchCIp+w40Q+xgbAKf4qC794149nAg3j7bqWuBDJTX283F1MipmMfddTFIMTLxUIfSodqdqcmrDYt4WGUkFWxJKjYz6OyRCOpcVk0xSkjbPbJH3O9zRlxyEPncXdhdgFTcUhvEbwL3PWQEgebtkBP+tqOzk99sGWEs/1+ROR2gdvL9eV89UdNJRWc6WPKvJprVAorHwzL0v2wa95mBRVmW5Fj4l3ZIbrv7Ko1W/LMDpsX/jxWaCnMiCDiYAdxWoFk9cEwORhddrdKldhWZ5wfAenx5QpQ9Iv7DseGKOt3fs1JHkMvAiwjgCl6iDt4zJ1P2wAzkbDN1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3knNZvqL1SmhbRlJUc/cv+yQePIKH3AEGD4WupMLLmw=;
 b=mTIVc351EoE1GVpwGFViZj455/nACDoUh/WFeN8bhmB7GuoW1ih9B4O2mQV5t/sgBk2bWK9nriK0/hl2gpG19rAiLsn2zIdzR1TztlBGMxS3M7z2/9FYiUi505PLYZ44vKCH1XBJpJrAAGD2JsrQFqNdT1oGdoEmgWDhrH79qO67U0PRD/PVKqmnROjCIxD3ldwZS5iur6GbZs7ShGUYk64tM0dOYaTFAHvlSZARXSpnQ/TNdxh9k0KBkFfiOzJrvNLe3t++3xQJ7pzwu9ab1JElygNAC9EpIQu72tLiSZb9ZYpziOpv04q3DvyTE/Wvt8WeDr4+dN2SYm22OVmA8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3knNZvqL1SmhbRlJUc/cv+yQePIKH3AEGD4WupMLLmw=;
 b=ewS+aft2/zjog+CM7lncP/zgvoNVkyFe+CEBqEgWBq/kFn94MgQovLJSfI/T+r3MqASWTXtNHmWDlMtRO5ALwRBrR/Hip0MmgJFgvR1yxbIGha2nAEVEMVfAq9cJs4vEtanfKjOWXOcFnUIX4bvK/TqTlzvLkfnhSXPXPDt38ZQ=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3549.namprd11.prod.outlook.com (20.178.250.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Wed, 23 Oct 2019 21:24:20 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2347.029; Wed, 23 Oct 2019
 21:24:20 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <linux-mtd@lists.infradead.org>,
 <geert+renesas@glider.be>, <jonas@norrbonn.se>
Subject: Re: [PATCH v2 01/22] mtd: spi-nor: hisi-sfc: Drop nor->erase NULL
 assignment
Thread-Topic: [PATCH v2 01/22] mtd: spi-nor: hisi-sfc: Drop nor->erase NULL
 assignment
Thread-Index: AQHVcqwVF5z/4vjY/Uups9rQY4HRbado6xAA
Date: Wed, 23 Oct 2019 21:24:20 +0000
Message-ID: <74f62a70-13ef-6faf-c73d-790166240557@microchip.com>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
 <20190924074533.6618-2-tudor.ambarus@microchip.com>
In-Reply-To: <20190924074533.6618-2-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR06CA0088.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::17) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.120.239.29]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 396e353a-1002-41e1-f447-08d757ff5dfc
x-ms-traffictypediagnostic: MN2PR11MB3549:
x-microsoft-antispam-prvs: <MN2PR11MB3549474A738B77B70641ADBAF06B0@MN2PR11MB3549.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1443;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(346002)(376002)(396003)(366004)(199004)(189003)(6436002)(25786009)(2906002)(5660300002)(102836004)(26005)(64756008)(446003)(66556008)(8936002)(86362001)(2201001)(386003)(6506007)(66476007)(229853002)(66946007)(53546011)(558084003)(36756003)(31696002)(81166006)(6116002)(81156014)(2501003)(8676002)(256004)(14444005)(3846002)(14454004)(71200400001)(71190400001)(7416002)(110136005)(66066001)(52116002)(316002)(99286004)(6486002)(54906003)(76176011)(6512007)(31686004)(478600001)(11346002)(66446008)(6246003)(186003)(4326008)(305945005)(2616005)(486006)(476003)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3549;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8Q9GuCXN8MalUchu7BOVTnC2UdrcTgih8DzG249rSx41ZATPIJd3CAiwjnRDM8qEAvWAHEeGGZobYTtYxYeaLciqoi90MN9Dsnr5aUMSeAJlLJb/5w6TLh32OpLUFDlzaS9Z5j2WZpJvqqOChy5XDRbhk/cj5+IuLlKejQyztEY2VCWptgRMVcTdkk5pFKZ7Bv2JYt/ESYuPLWjdK6QE/TOHLzSP2ncPWpsSRVNDyea9slboEBnxm7JKV5GY97ZA/9SqjqQ1Ouixs24Z/cBedlZEZF+FVm7aow2bk8DPezxaj8peqlyRgjtRfbf5i5L4epA3AghZXjAhpvyyaLo+K4APJvWR4qlCCQOEkGxNN0IZlGOTeKYPKPzALHBEKjrYSkRG8Gb4iFNEulB0TrbO058EWSjd5N/8GGT0vNx0F6Sq/V+E9kHXNEC/0g2EVWbV
x-ms-exchange-transport-forked: True
Content-ID: <F9416E0E644E724EA63A11A4BD8BB44F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 396e353a-1002-41e1-f447-08d757ff5dfc
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 21:24:20.3768 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9dF6UDg7bJKMhhiF9inN+lCZFyhZM7R6Oce5t/2hsuzGHA6D3Lk7071kKLHnukRoGJ/6MzuI/ksIKTj+QLX3/KSe01vkB1hWvJ30CVrYwac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3549
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_142423_594199_B53742F9 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
> The pointer to 'struct spi_nor' is kzalloc'ed above in the code.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  drivers/mtd/spi-nor/hisi-sfc.c | 1 -
>  1 file changed, 1 deletion(-)
> 

Applied to spi-nor/next.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
