Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A92F7FF7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 20:31:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qlMAWIdzl0As/hmS9k2iM6yq0UmjQB1JIXtfBWkAHHU=; b=uxJjuVju9LC4Nr
	11c90+hvaHZ3teAIKVkzin+X5N21vWxghJ7nABzdRHJt38jWgSMP8apZ2khi62q24ebvkeqywBmPo
	aGhpbro9EWJW2uQ45h6cj/wdPkvYzv0RrfzKQblyKqhm1uNWrxj7i4Rjy7xlRrkUwYucHvLRbj+65
	EcLftPG6kiReiE0UJakaBrlpEggumROfEi+nI/mvFfYv2YAL//VoU/M8/9r+2ASwWQXyUuUqDKaJF
	0SmdyQhhX74TSr06zI12z+quC32PktlVzJsb3oNpuhGjT+D68DdudobKF4z8YAyd58Z7itiA1wVuz
	GISjgxbnIGZiG5bQXprw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFPg-0000pB-Lq; Mon, 11 Nov 2019 19:31:48 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFPJ-0000db-DR; Mon, 11 Nov 2019 19:31:26 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: FEfGy5qTihuC4jlkDyUBdR+auqca+2EHWxBPhrfBPDQrILroIdSpBd/tQ+1CblZ2OvCOKPRkVj
 +p4xSxcKLt5ooEFtGEmXQiBfmsvx8kPvZfQbJWB/y9Mpxrl3hzdhAuUxx0ZOWcufj9uqeLw/62
 14uQZJu3afIJW7zGOkiy8ymcLk6qES4ED2QzUb6d1694ZQRKQbhyn0VvvpcdLWM7uHPNPY5bm3
 zyH/fJxVH3XDdp/vga4+6L11d++dDtDic2NtobRKlPXfxigcs47th6NdjJB97qQZ94bJRP/n+w
 jeg=
X-IronPort-AV: E=Sophos;i="5.68,293,1569308400"; d="scan'208";a="53780624"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Nov 2019 12:31:08 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 11 Nov 2019 12:31:07 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 11 Nov 2019 12:31:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=atMcqY5HJB2gcBf1duuJt6CXoImVzh0TPlursD0dvKFjOOOKYCWR4AKV7+EqzX9u1xxcwS05/tGbQHwEtIGWvjW2nP9SGXZ3ZZUlmqxedxVgAbsYhtHOehIlShsVDkb848EBhL79xcAy4pxw/z4DBleiR71TZ8QdTVTuVLZWr3Dt+8jshyBKfm1hgVr2e/zkjTabdi7jQzq95jzMrgIkdKxoX0hguGZCERryQmvgZPEmXT95H6EMUsFHGRsn5F2t7p+SrQxcFA9uFu4irztgjxP8Sq5azjBHEwT4103L6YQTlnJsnY4Qp7XGf2rnEXS5045bd/Yu5s3frCDh3YU+KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nu7A3C6/rkD4IQ4w6cLmt9cxQoMeEbLnJco6IF3W4JM=;
 b=eRlJnjUbIQUhESNCfcPZEeEiCmh/WzJmyOO2tDXcaapneP67PVfPffGZxOsj7y8GAHO+XGDyVTFmrWTXZJ1TUWTTVX1rbNZuB7X8wWL1B5tpIWuN3JvplPaEF8ZjkV7Oi4ab/I/KXUj1wUdfar17QBRuelq50iEzK+/w5mjke1TAmACT5sUqF9YQJLP3y67CylElcpgeShd5V8JvLOcOECgOFC7uEx19LosGd7Kt2oWFFYsg9ptDQAbwAVypvSTmkjJD+8BAVtTJJk5RwjsjVusZ0ccwaYPgCkbsX7Kky6z13v1/q6lSh1/blx8WGC2FTw1tmzKwpEjJXgJt9ZCrdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nu7A3C6/rkD4IQ4w6cLmt9cxQoMeEbLnJco6IF3W4JM=;
 b=gOnjispq15ZcWRaMt4BXR9LWuRZSN1fB9oyCov/fBRGzYeMaG8PuKVqXAZ0OqlhsX8xile7G/MNOlOia1t67wy6gKa9ZOzsc0Ysst8yWHMvIWXmn2aVjm+WjUmhhUttL0sklqcu1tzVqWWRam3KbqVDt6aBiNn8sKmLQfmkWX0g=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4352.namprd11.prod.outlook.com (52.135.38.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22; Mon, 11 Nov 2019 19:31:07 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2430.027; Mon, 11 Nov 2019
 19:31:07 +0000
From: <Tudor.Ambarus@microchip.com>
To: <manivannan.sadhasivam@linaro.org>, <shawnguo@kernel.org>,
 <s.hauer@pengutronix.de>, <robh+dt@kernel.org>
Subject: Re: [PATCH v2 4/4] mtd: spi-nor: Add support for w25q256jw
Thread-Topic: [PATCH v2 4/4] mtd: spi-nor: Add support for w25q256jw
Thread-Index: AQHVjwDJaBck4npwFkmE20mgXgcXzqeGbxIA
Date: Mon, 11 Nov 2019 19:31:06 +0000
Message-ID: <6beea8ea-ff6e-033b-8670-5da7529587b5@microchip.com>
References: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
 <20191030090124.24900-5-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20191030090124.24900-5-manivannan.sadhasivam@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P194CA0044.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::33) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [5.12.60.46]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 39233312-8ab7-4a04-5a14-08d766ddb29e
x-ms-traffictypediagnostic: MN2PR11MB4352:
x-microsoft-antispam-prvs: <MN2PR11MB435245304B00AAF0E2F2BDB6F0740@MN2PR11MB4352.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 0218A015FA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(396003)(39860400002)(366004)(376002)(199004)(189003)(6512007)(446003)(11346002)(26005)(186003)(66066001)(6116002)(3846002)(2906002)(52116002)(102836004)(476003)(486006)(386003)(6506007)(53546011)(71200400001)(2201001)(66476007)(7416002)(4326008)(6246003)(31696002)(99286004)(14454004)(71190400001)(478600001)(76176011)(2501003)(86362001)(2616005)(66946007)(110136005)(229853002)(316002)(305945005)(8676002)(31686004)(7736002)(66446008)(36756003)(6436002)(8936002)(54906003)(4744005)(5660300002)(64756008)(66556008)(6486002)(14444005)(256004)(81166006)(81156014)(25786009)(138113003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4352;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ywyUxNQumyI5GZbgbd3VgcwILYtFolLXZuAVl6QNlgKbkKPBYYQ228HFkra1SeelSntNue8cYgShoZWg3XnDiFdBXVG7PFdBmQqvIro1NxQobBd0eh2juHA5MrISWAAcYfCzwHNnexGkfbQvDTB/+6C3IqmsiZ49tDJcL9xUMtUh7RYj3OGu7m22N8jNJu6nzaFjfrzJFOjiPOvqdxM62SFvGM/Pg+6umAoMLV5v7L1Qf2l0GLqJb11IG1ra9UDjC9hikgl1zzDP6RigLB9VQfI3Yd+PAOfQ94QTQDUF6yg+53x5309GygaSFXjnzhX+hQ0FB4wKVUHtvWW2HEoUizC3BrU3/deq+H6YQtTsr4Usk0sDVZztWkbbzJRbYvPbvdB4wjuGV+LA/oepzw0J0y0RIhE7Ik0mhOQ3WgMBgK4NAjIk7PgP0+1G1kAKGx3c
x-ms-exchange-transport-forked: True
Content-ID: <561E7C717FA13647BC7CA59001417AB8@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 39233312-8ab7-4a04-5a14-08d766ddb29e
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 19:31:07.0030 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9KxwLrI9kO5a7tz2k30Qkfuj4DANSDugONC/K/LAe/4cJpwvwAZVyrHkIKEGNboBYIv88Kp2EQRjJr1ndtgwJ5ZHav8pz2rnHW0UdSetUjU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4352
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_113125_499709_71EF3FC1 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, richard@nod.at, marek.vasut@gmail.com,
 vigneshr@ti.com, dwmw2@infradead.org, linux-kernel@vger.kernel.org,
 darshak.patel@einfochips.com, linux-mtd@lists.infradead.org, linux-imx@nxp.com,
 kernel@pengutronix.de, miquel.raynal@bootlin.com, computersforpeace@gmail.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org,
 prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/30/2019 11:01 AM, Manivannan Sadhasivam wrote:
> Add MTD support for w25q256jw SPI NOR chip from Winbond. This chip
> supports dual/quad I/O mode with 512 blocks of memory organized in
> 64KB sectors. In addition to this, there is also small 4KB sectors
> available for flexibility. The device has been validated using Thor96
> board.
> 
> Cc: Marek Vasut <marek.vasut@gmail.com>
> Cc: Tudor Ambarus <tudor.ambarus@microchip.com>
> Cc: David Woodhouse <dwmw2@infradead.org>
> Cc: Brian Norris <computersforpeace@gmail.com>
> Cc: Miquel Raynal <miquel.raynal@bootlin.com>
> Cc: Richard Weinberger <richard@nod.at>
> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> Cc: linux-mtd@lists.infradead.org
> Signed-off-by: Darshak Patel <darshak.patel@einfochips.com>
> [Mani: cleaned up for upstream]
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied to spi-nor/next. Thanks.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
