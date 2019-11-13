Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 199B1FB0EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 13:59:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Trdbb8OG0m4p1U8MvVp8KuYZZrV1NyAiEpElENp8/s=; b=T7rIlxbP/L4Yup
	AzmbJtO2pSqeXYkzs0DeRVcL0ady5QaGZtrC9LrCmLKk58NMbMYz5AvCuYFAi/jRgN0OZiEjZAo9Y
	zxLRIQQk/eYhH7J2JoSuMHJs+BW5SIZ9nV4bYOLXlWOnqDXhX/vPy+Gj9tX29+4NES/5J3nUgOv15
	z57x+B9xeiBlh3Rq0VTboOyS/gCLAh7bc0zi3Oes+alUM2Z1VswUdysdzHxFCE6aDu9AUX5f+e5II
	LwEVTCYg+97pR2rvjyj0yrnVhmrJQOTKOgPTO5KT5kBd1LbEjLbmZTbPnX2meo8Q8ltAEyNLSZdLq
	GMmZ60d29x22upjJlpRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUsFN-0000jX-Rs; Wed, 13 Nov 2019 12:59:45 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUsFC-0000iz-V9
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 12:59:36 +0000
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
IronPort-SDR: VrT1qDStd1I6DlrpEMYcEzm4edmFHsIKJ0iS2oU2kKI+QdP67TME53SOva6vpSRhXJZEwWR9Le
 R/9klp6RqD6aYmokZeeNrEvsNiRvR2jjfCQKo+rWDQQayIiq2jW3f3rWI2Z7eDqwf5IkgWrb86
 0nyB3rc6vneS0u475EbAQwqX5VoNWhD0oDTgE4LCnbQYlBMO754P3haOL4laJFN0qEUQ1ixBOP
 i3wGctuUUNMiuFbdaCanJA/eMP06QAdcEmqN53zZFf6L0uGnFHcmxGsnoAhaTiuyV1tnCPXVag
 56g=
X-IronPort-AV: E=Sophos;i="5.68,300,1569308400"; d="scan'208";a="56899821"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Nov 2019 05:59:29 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 Nov 2019 05:59:29 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 13 Nov 2019 05:59:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kK16Zi9TiuV+8LoLdMChby4a7O/befxJogCeS6RIaTfY4f6L6gg4JY6VMxwAJ7tMzOQfczHaXbFhr+gO5XkkmdNxurvrVFBy9y/cgQw4lZ+UNSw69wz6IzLZYxZcuxDuuWJZoZrsyhTRys5kjLmOwrJH11H75nn3nzenSO1qgJcRf+Ucr8rLEeOZFWO5C4CUuBXgS9iWy8PLJTHV++Em1EXdmbmXwP2pN2GSEYuOF4zS0xZc2H3Xp7NTBsgTmw3TGSh+8CWqNWSNHikf9+4e6d1FJ55fwbREdq1732wKUENXLBbtMG8H71o9tYwUYo4NItmh7BN+AfUYdtI1EmAI3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/X3u1tBOl4VNHDP9vTWVyWuXD7PV7dAaXkwH1zK+MRA=;
 b=mz0Fy8KsqU1U748O5vOrGhqEj6DjU2571sZBo+fJT2if42JyHFQdVG8IM0Vfa1SPUFvvwZgrMFl3O5N9zKwjFZsaGLtIc5woWuBiLYswr0NFV6mihRY4cjnb2/b7/HzxO3LZXQOFkLiylsGX1GluRHESrpWlMvx7EbVKUqt86dAurCFk5VvR4I9KUTxqOojFFk33OK6LyV+ePFmDBogdWsCkbCtgkRbMuv6/llpY2Bux9hLwx64/yvvJUWHhg/4A3iTYtMqQauqv3qyOT2F50M+PtWhCQ3L6wopGZpyky08yBedEStagRJhX6Z0tF5uztqcUdq4LikS5DjHs+UTHcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/X3u1tBOl4VNHDP9vTWVyWuXD7PV7dAaXkwH1zK+MRA=;
 b=CwGZXc4U5SLaAVC2Z1mkVtQXStlbzWZ2nmit5kSDLnS+Lman9oBvottFgYqRS8sK1GQvTiuZ/qksx+iEHEkydRNf7zurRAqtgnbJS7W7WgK2sKbp+gpnixCzkEjzTrLR5p40QqU/vcDdMoGYGBnEbF5xra9MT/R6JQPuwlZP1bo=
Received: from BY5PR11MB4435.namprd11.prod.outlook.com (10.255.89.94) by
 BY5PR11MB3893.namprd11.prod.outlook.com (10.255.72.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.25; Wed, 13 Nov 2019 12:59:26 +0000
Received: from BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::d128:6959:f7a2:9d17]) by BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::d128:6959:f7a2:9d17%4]) with mapi id 15.20.2451.023; Wed, 13 Nov 2019
 12:59:26 +0000
From: <Tudor.Ambarus@microchip.com>
To: <ardb@kernel.org>, <linux-crypto@vger.kernel.org>
Subject: Re: [PATCH v4 09/29] crypto: atmel-tdes - switch to skcipher API
Thread-Topic: [PATCH v4 09/29] crypto: atmel-tdes - switch to skcipher API
Thread-Index: AQHVlyCrUyMVvOzH5kCRTAfrfAfH16eJFg6A
Date: Wed, 13 Nov 2019 12:59:26 +0000
Message-ID: <174aa3b2-6eba-14dd-8364-69543f967dba@microchip.com>
References: <20191109170954.756-1-ardb@kernel.org>
 <20191109170954.756-10-ardb@kernel.org>
In-Reply-To: <20191109170954.756-10-ardb@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR08CA0043.eurprd08.prod.outlook.com
 (2603:10a6:205:2::14) To BY5PR11MB4435.namprd11.prod.outlook.com
 (2603:10b6:a03:1ce::30)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a9db3152-0498-4004-3477-08d768395002
x-ms-traffictypediagnostic: BY5PR11MB3893:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB3893D6A7DDE39F07FC2FFBA9F0760@BY5PR11MB3893.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(346002)(136003)(376002)(39860400002)(199004)(189003)(102836004)(36756003)(6246003)(64756008)(8676002)(52116002)(99286004)(4326008)(76176011)(107886003)(66476007)(26005)(81166006)(31696002)(81156014)(6506007)(478600001)(53546011)(2501003)(71200400001)(386003)(25786009)(8936002)(66556008)(71190400001)(6486002)(6436002)(31686004)(110136005)(86362001)(229853002)(5660300002)(66066001)(66446008)(66946007)(2906002)(54906003)(6512007)(4744005)(2616005)(7736002)(6116002)(256004)(14454004)(476003)(446003)(305945005)(486006)(186003)(316002)(11346002)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB3893;
 H:BY5PR11MB4435.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o9InjO9kdchnDYhCYzMcTJdzirl4Bc2rrUhULcnA0hpcwqZqsY4WnvDQzYwGb0gwsscAD4mM/V3G1NCSP8t6o3lYRcbTlNRKw/JB0Ak+I0vG4Y5e+cc+Cc+4jLtV+w9bI4cEsWDBmLQS55GBdXn8EjjN8Q1w3FIh1LzhmxlZaG+fOco9N/1BQ/JfWTUov7yRSMmzA0QbUMqlbrzgxrBhzVT/OdPNcgX5cmJzSMHSsMMVHjStE2/42Tbd4v0M3ynh+pu3eh+2A4BfGLUrl6IbtIiXxQ1h7U4V25Rph/8OYloXJB+1Wl/q1PZ999fYv+bYpjBJGNruqoysYpZJo+VMYw+T52Dmq9NJR5YN/qIx8GkGXsLsHxrU1+yGc60r83Q0VgJ//9AKsvX6KLYqhux1y56gmrz0EKbSruXLGjFwDXcPOKkxQn8BjPmCHLxod+6Z
Content-ID: <D5A6D4674EC004479D5D8AF933D102D8@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a9db3152-0498-4004-3477-08d768395002
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 12:59:26.3569 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ng8TfABP6Hns5A6JKrJT7cZ2xfbz4mupD/Yj8SX2ABiwD2x8zKRN8u4gPTvePv2UELknJ9ez6ZS5UFAbmGhrw69b4vWfFJio2BzkrfEyZcU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3893
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_045935_015362_6FC5BBCB 
X-CRM114-Status: GOOD (  10.14  )
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
Cc: alexandre.belloni@bootlin.com, herbert@gondor.apana.org.au,
 ebiggers@google.com, Ludovic.Desroches@microchip.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/09/2019 07:09 PM, Ard Biesheuvel wrote:
> Commit 7a7ffe65c8c5 ("crypto: skcipher - Add top-level skcipher interface")
> dated 20 august 2015 introduced the new skcipher API which is supposed to
> replace both blkcipher and ablkcipher. While all consumers of the API have
> been converted long ago, some producers of the ablkcipher remain, forcing
> us to keep the ablkcipher support routines alive, along with the matching
> code to expose [a]blkciphers via the skcipher API.
> 
> So switch this driver to the skcipher API, allowing us to finally drop the
> ablkcipher code in the near future.
> 
> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> Tested-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Reviewed-by: Tudor Ambarus <tudor.ambarus@microchip.com>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
