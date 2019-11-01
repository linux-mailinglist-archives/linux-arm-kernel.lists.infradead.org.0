Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DBAEC5EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 16:55:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jtpPJS6Ad24H68ob2L+0aKtuwf0te0OgOV/x90GDMnU=; b=oeiigFS806Xfpj
	XRBEtcvQ39uOETiGg5ZTaK3IkxMG3ssXnMWj4rXQkVUDKxNcJlaxIGXNG34ZxCIVsnIVUW9WVdSaJ
	TUYKnaI2RrcDYRR+SM0OffFniRe3ksjFxxAacZS6jC9S59bzZ7/ael4UQqURiDZy2MuAQKNV7v+3x
	wK49dCjn2k/d2DuFj4QmrbWM3XuzVJNKL6HiCAAR+pJ3BzWOy0BDViqIMc0XeqcCnJhIP/kBFNlth
	0HQ9S4YFcgrzQa0nejZYBspKMQ05WmlUTp5a5QrieNvKBn8x76nZ30aDBDUkWHqRDinSnWU0udXna
	xDdKRhYpthoozoF+JGng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZGq-0000gZ-A3; Fri, 01 Nov 2019 15:55:28 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZGS-0007sn-BZ; Fri, 01 Nov 2019 15:55:08 +0000
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
IronPort-SDR: 9xlI5ct+7fEVSOrqr624V0E+A3FHmz6NOgviF8b+lpjLYpeB/SboFKxeToieNy6Dtsi87eLJjO
 TOqLqsd9whrUjbkr8Yrtv0W7huUqLO+6PasaXrhRH2Sb7Fj0C0VxVpQiFh5FQFspfp56BpjHKh
 WB5CrzWJ4AwxEi+ulTiY6bh+JNCjDfGkAM+ZN7RZGTceAdNIsDbBTxtZCExVTWhTpflnU0kzNl
 Res52rUUD77yLQk9GuVVMxh68sWB1w7+JAzs4P7Vgjk7b0Ooq5NKdXyFOmE5d9u6/zsimUg3ZG
 M78=
X-IronPort-AV: E=Sophos;i="5.68,256,1569308400"; d="scan'208";a="56657132"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Nov 2019 08:55:02 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 1 Nov 2019 08:54:59 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 1 Nov 2019 08:55:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VyUUu9uRZcfkCSMa3VYDMhVyz77KUyILqZf5bL46lPHS9aK0PRHhIQOnYrKkByX8voAqNvHxAphzKSIseU7QhYDMDR/IBKKg6flLoMW6HcQGa2q14kLC7I3INeE0M3zI2OYtV+L5gS+K4acTZQYxDvIinEeNsaI3KgYNsfi9a5xFUK6bwyLFJZjw/N6HYY6oHxvueYbSOki9xAoRWFaNcG4OsLN21pn6CTGB9TiQkwJv87kY/6kGB7uNzq4nMu/0qQMxbWrlJKtONotnOaGvyBE0q+ZW/tgknPxey/qyWzEoQfgwkdGCTET/awLSXI399lt64JII85ELFW2RRc+CQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BxNitJxKhn/9cc0TcqfztTY4wTbAxVQZ8yqzYr0F1uE=;
 b=Arrw51zru4dcr4OfzU4sU1fExI8sK5n+T9bO7/sQX6Ik/RMwrISZBSCOisgYn3YGnBRTr1LCEeJl2BggZdQZ0AT9b9eh74qB6kzQ2Zb+ORzN44bNAJM9npwzRN0BIk64IsPs7OqFHR+UP4kpyut7MkFEblb7ETtulk6RfjavfCz2nWEzqX8ExsHyBXibdzj1yhqYExY2OSpwiSUC9uybisPQNdkEOagJ/WD4N/4wNvi/RHKHt7LsupvtKktzkNtqzNUdcRqpgm9KwtoxfGc8qO/OphaIKSsjXA7nIEY50xeGbBOW0+420N3rqfvWdI4kSQahLUrBi7nrR8i38IBJWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BxNitJxKhn/9cc0TcqfztTY4wTbAxVQZ8yqzYr0F1uE=;
 b=r8WvupAGrDv38qDxvGJQm0eLVH5fNRYG8fNXvIbWyGBIiMRQDXMv8pStIryfQaEyhgw5G1aN8oZzqPblNfVXN0qiZxotbQjmBt6/60OlBSTkcs3J2dxNQSxuUqbuhTGsWe/spm4IotztX5+HjpWTtiwlLZdW9DrX5Q4W1t3RMZo=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4272.namprd11.prod.outlook.com (10.255.90.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.23; Fri, 1 Nov 2019 15:55:01 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2408.018; Fri, 1 Nov 2019
 15:55:01 +0000
From: <Tudor.Ambarus@microchip.com>
To: <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v2 4/4] mtd: spi-nor: Add support for w25q256jw
Thread-Topic: [PATCH v2 4/4] mtd: spi-nor: Add support for w25q256jw
Thread-Index: AQHVjwDJaBck4npwFkmE20mgXgcXzqd2V+iAgAATnwCAAA/HAA==
Date: Fri, 1 Nov 2019 15:55:01 +0000
Message-ID: <beb8e7fc-02c2-8267-3612-20a526ac07fd@microchip.com>
References: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
 <20191030090124.24900-5-manivannan.sadhasivam@linaro.org>
 <87e0b459-8dbf-26cc-611f-1b1b5266aa55@microchip.com>
 <20191101145806.GB13101@Mani-XPS-13-9360>
In-Reply-To: <20191101145806.GB13101@Mani-XPS-13-9360>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR04CA0131.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::29) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.120.239.29]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b8125261-263e-48bd-66ab-08d75ee3da64
x-ms-traffictypediagnostic: MN2PR11MB4272:
x-microsoft-antispam-prvs: <MN2PR11MB427289AC235C1824A5F59278F0620@MN2PR11MB4272.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(376002)(396003)(136003)(346002)(366004)(39860400002)(189003)(199004)(14454004)(53546011)(76176011)(66066001)(102836004)(31696002)(6506007)(386003)(71200400001)(7416002)(86362001)(8936002)(81166006)(8676002)(229853002)(5660300002)(186003)(54906003)(6436002)(81156014)(26005)(6486002)(71190400001)(11346002)(7736002)(478600001)(476003)(486006)(305945005)(446003)(2616005)(2906002)(52116002)(6916009)(316002)(66446008)(64756008)(66556008)(66946007)(6116002)(3846002)(25786009)(256004)(36756003)(14444005)(6512007)(31686004)(4326008)(99286004)(6246003)(66476007)(138113003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4272;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lY61EpP2OcIHIr7rpElivG9liRtZeRgFf2/KBOAqpyhdWHYGawXbkuwTWWedg0GPfXcDkrIAQEJr8ezuz5Er8ry8+aK3RN6/cVPZijFYhCGsp/J1ZEb5CgaZKxLMMk9hTZDesKY5IyfY9MDT4qFo0PcXluvlbZWk8VPtApOJK4qIKHrxNisYqXvD/kRXp3zwjiviDNgDqh0mm1JhY0GEPfi2+Qii2XaFwuK9bqlOD2i5eGwiiPjOmUavN7nX2VqRDvVuZuIgvRYnCOBDwTMJ9XkGowJiVyZJpun/kHpbaPaISooHIPgePBDVDKGPLLWbnYxiaJtoWFJrd3TbWaFGNo0JX3a2BL4pzhXMc7vK8AAKkQ3FHs8PUTjofrlK8evACXy/kf1vfVK+KUqz3XaiBqlgTgKGzfiiomUeW4JT+IJ+1hrGzfDJEcwtojliecbO
x-ms-exchange-transport-forked: True
Content-ID: <26340E6D4F8B2B47A7889F0967A379DF@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b8125261-263e-48bd-66ab-08d75ee3da64
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 15:55:01.2693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T+ZwZ0L8ZWh8fVXlatockgfCPUXcwuxwc6plgh/q4bC8E61zChH0vOmu32zB+a1nLyCVjqFcSU9IEU7K3jVLjNMX5IIe5QLzV3R/4aZ2e9A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4272
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_085504_466339_2F59AE53 
X-CRM114-Status: GOOD (  10.81  )
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
Cc: devicetree@vger.kernel.org, richard@nod.at, marek.vasut@gmail.com,
 vigneshr@ti.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, darshak.patel@einfochips.com, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, linux-imx@nxp.com, kernel@pengutronix.de,
 miquel.raynal@bootlin.com, computersforpeace@gmail.com, festevam@gmail.com,
 dwmw2@infradead.org, linux-arm-kernel@lists.infradead.org,
 prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/01/2019 04:58 PM, Manivannan Sadhasivam wrote:
>>> Add MTD support for w25q256jw SPI NOR chip from Winbond. This chip
>>> supports dual/quad I/O mode with 512 blocks of memory organized in
>>> 64KB sectors. In addition to this, there is also small 4KB sectors
>>> available for flexibility. The device has been validated using Thor96
>>> board.
>>>
>>> Cc: Marek Vasut <marek.vasut@gmail.com>
>>> Cc: Tudor Ambarus <tudor.ambarus@microchip.com>
>>> Cc: David Woodhouse <dwmw2@infradead.org>
>>> Cc: Brian Norris <computersforpeace@gmail.com>
>>> Cc: Miquel Raynal <miquel.raynal@bootlin.com>
>>> Cc: Richard Weinberger <richard@nod.at>
>>> Cc: Vignesh Raghavendra <vigneshr@ti.com>
>>> Cc: linux-mtd@lists.infradead.org
>>> Signed-off-by: Darshak Patel <darshak.patel@einfochips.com>
>>> [Mani: cleaned up for upstream]
>> Can we keep Darshak's authorship? We usually change the author if we feel that
>> we made a significant change to what was originally published.
>>
>> If it's just about cosmetics, cleaning or rebase, you can specify what you did
>> after the author's S-o-b tag and then add your S-o-b, as you did above.
>>
> I'd suggest to keep Darshak's authorship since he did the actual change in
> the bsp. I have to clean it up before submitting upstream and I mentioned
> the same above.
> 

Ok, I'll amend the author when applying, it will be Darshak.

Thanks,
ta
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
