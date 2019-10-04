Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 680FDCBCC0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDmfeWH1GVv0CubAOe//YeRH/C9bWCGDAv1XLVJvDKk=; b=DdZ2a19WYH1S6/
	cJIyZcH23LgPQuiNFyr4eFwuf0YztgRW1MLufOwdHhKxVTGuJCSVBL9s3DGkzEYMzcJX7LxH51bJQ
	mrnjUNw+WWfbahAd/W+rJ2mA815ssHdFgXo4xlpHi2YNKzGQK1618VSWM+ETVcPJlGm1xyNDiJFLt
	/5XKTg0NKHrjfvIlhvLYZZZq0J44vysRncqxdDYHxxEzo7lE8Z+W8aY11URCnN+7hRGe7Ar6lLrEX
	RQRQW+F7DYHWq3EGjI117U9wua7GTb/Gn8i2t2z7cGmBuGLRJ51KfulhXBEwfw7CvZk7PFoAD/ZE0
	8elYULhsW1iZ8PVTHGIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOJt-0006am-SX; Fri, 04 Oct 2019 14:12:33 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOJl-0006a8-W5
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:12:27 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: +aczMFSxtMpuODsl6eIy7vKg6rTU9e4B/LXSuiROc7p0gLcScs37Snyqe/BH4QyNo2PZ06kvZy
 zCANTzvo/YSYBqSPKU0UsMKnGla8Xfl2YZX/9sXVk3DMIkiq3raKSgCCFtT4xDfRJJpzDNJOyN
 x96txZBMAqcqLDd4P5DBqQqiESIvBEkjOHVQjl3204VlQnbFTyHBITrU+wK/nJzMJwebTodYsm
 Jfmq123/G2tK6O7Baf7GnYRocpfDyRYWBwleO3nvSIha+HyFp3r1SI27YM+48vxPO+cA44donh
 XbY=
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="50450186"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Oct 2019 07:12:21 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Oct 2019 07:12:21 -0700
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 4 Oct 2019 07:12:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zg/lROSeFGJIwUseqVd9BZnEgfzjqQqpfoSfLWPPlZOMFt29jp1+ZmoTTwsGtO40QXZQUhLwra9j0Dxg3TV6okEHr9LijZuSE5omEx/pmbL/WCDeggK6Z0z/rsgw76U2OkuRfCkmdO1/XCJZkdfGGslgFl065LnIZdQ3j7BORChxtNWM01ahilb5nhbda7hPV2xNGCZrtP/055pRvF+tlRggXevCx1PuTqmFNuvir0y0ijuyQf8oYr6aeYwy3O2/ij5Xmfiy3YyWSXGUVmohuOMc95jgGwl9q+Kk0qw/AicYmyYmZ6+fT79dhv6XadG8SHcyoZ7nygE9UOE/sQkVDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tsaGvO1vfdsKq2OApWIUGOIga0nBPhc++HQg/FOOUuQ=;
 b=L25yDWP6xZpnt9lFihNGkrZR8zRBqeDt72cn8PnoV0JIYx+hgY0OYZXZiPlFNnTAohfUL8OIvkpHhNuwwWgsvMNsF5FJ/wpoY9QkZJkmbFCdICrCtTqhIueQeANtpcXr/ZlWG9fgeSgTAp7jrSvC2bwNJXlExJuEKrNVhmXonOvHLT98kBvLPDz0MvR8Igb4mwh1QBWlhP9gknn0CjyxGzT0frFH1S7Z/DKs3SMXf01eGkiUuPZ1WQUDfB3JN1mwwocxLH7RpKDVZ7Yt+OyFe7lci+/Q8zbnKGVEXaZbNc+4yrpup3i2hCpCay11kZ742LxYv9kCaVBeixK2EV9RgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tsaGvO1vfdsKq2OApWIUGOIga0nBPhc++HQg/FOOUuQ=;
 b=X9nsUVXUsTWkYvYVhiv4NeWyiQft4tNBZ40aDHc9cr72zjqjAQtg0Xrc6dsVsIemG2sYSbzGic/HtEvkVYjYWqBKLtbbM1KjI9tnbK8/CFcTOV4zCfeZzUlOKSM0Gkuqn4uG2jCXM4ZWojGuTzue/IHSVROLGx+J5UdUdfebHBo=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3838.namprd11.prod.outlook.com (20.178.252.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Fri, 4 Oct 2019 14:12:19 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::340d:5a33:dc79:1184]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::340d:5a33:dc79:1184%5]) with mapi id 15.20.2305.023; Fri, 4 Oct 2019
 14:12:19 +0000
From: <Tudor.Ambarus@microchip.com>
To: <kamel.bouhara@bootlin.com>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v4] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Topic: [PATCH v4] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Index: AQHVeq7eyy/f7dzI40KY5F/V7zU0DadKhhAA
Date: Fri, 4 Oct 2019 14:12:19 +0000
Message-ID: <307020c9-8bd7-8aa7-1b04-bf080ac4240a@microchip.com>
References: <20191004122445.14447-1-kamel.bouhara@bootlin.com>
In-Reply-To: <20191004122445.14447-1-kamel.bouhara@bootlin.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P194CA0045.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::34) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 92eacb18-e38e-4942-3ee2-08d748d4de40
x-ms-traffictypediagnostic: MN2PR11MB3838:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3838B7F4729CB460819806FEF09E0@MN2PR11MB3838.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 018093A9B5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(396003)(346002)(376002)(189003)(199004)(25786009)(31686004)(2616005)(66946007)(11346002)(446003)(66476007)(64756008)(66556008)(476003)(486006)(14454004)(110136005)(478600001)(66446008)(316002)(6246003)(8676002)(31696002)(186003)(36756003)(4326008)(26005)(4744005)(2906002)(256004)(386003)(6506007)(6512007)(6436002)(102836004)(81166006)(81156014)(71190400001)(99286004)(71200400001)(5660300002)(2501003)(86362001)(76176011)(7736002)(305945005)(6116002)(3846002)(8936002)(52116002)(6486002)(229853002)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3838;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RSLt+Z3Z+8r3tjT5n5uDp9et6uAmCtuULPzXveINc0f9bsZD34EaCym/u6ULNEyjxd/z4urOXHgJcpbmh6ltxR/diYRGz8S3tc1xnT69qbbozJDHb3WGQx63gk9tAjqhlIa2xmU5WxqWFML2+308espYMZ6uuARZtaAvsUBjO6Fov+CeYPDke27+srNXJ81qjoqAQUw3xa9WJcogLdgksUJHna8uqXQzrRGoLBj2AQudxZmNITmzdZEHQEwOHGeZXEyIDdkjHAH3JCyGHJ9gXI0iRWBDmWpnqsc0OV7zk7sMe7CYgjBpWuduGqVfXpPEYfq7/6G2wSeOvX9ehBRc63PMQrPb6OdYAh2bLp4cRmBO/h1wxUs5nny93fDfFaHvPeGn27xiQBeBD7AQzw+/TmTT9oRAEqtX5f9+dpPkRjg=
Content-ID: <0DAD0E0370E29F4D8DB53E85B9BCB864@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 92eacb18-e38e-4942-3ee2-08d748d4de40
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2019 14:12:19.7312 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LutXK/cs3TSSwiKFgxJIe66wbFYVLNnjYBHWGod8W8ereOY1Gc5Mlg1oQ5NtT2u4K/ZXpuB6G996fE9fzzBFVOePQ9zN6M2gEe6bcytbHg0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3838
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_071226_201405_24E72DF9 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: thomas.petazzoni@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> +++ b/drivers/soc/atmel/sfr.c

cut

> +
> +static int atmel_sfr_read(void *context, unsigned int offset,
> +			  void *buf, size_t bytes)
> +{
> +	struct atmel_sfr_priv *priv = context;
> +	size_t len = bytes / 4;
> +	int ret;
> +
> +	ret = regmap_bulk_read(priv->regmap, SFR_SN0 + offset,
> +				buf, len);
> +	if (ret == 0)
> +		add_device_randomness(buf, len);

this should be done at probe time, check drivers/nvmem/sunxi_sid.c for an example.

cut

> +MODULE_LICENSE("GPL v2");
> +

please don't forget about this line

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
