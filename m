Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E354F5DAF
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 07:17:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zModV6xf/KlDvf6IMfAIKYvPb8fEP/COtpcGM6FgNK4=; b=pfv+6Ot65sxQOp
	BSBMQNfXe/zrLMb/+rOZUudAh0d60KRpEVTJ8TBTlefYWwO2L34M5f81PGgPkUcU1MVm0BcHATdTc
	PkQXz/rSzhL0UyuR75qRI7HH0Ql3Mjo2tmsBWHGjvkE91o7TJcB7d52pPmzxKUOhnhXs+ShYMGH36
	kCh+6LjFJIqEkOxEdF0AWdvLUCv/kVg5aoof6hbVuBl1WQL+0gduPXCTV40Vk+CZS+9bS0yoSoU78
	4ihMJL/RwKXFrI00CBqRRhdgfZUU0oqbI58OBITYRvaULoPWN//Fgd6/ypIXcvpJaoVk/4I/2nSKG
	t558IMg9Pwry2s0eVvwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTK3v-0001Xl-MP; Sat, 09 Nov 2019 06:17:31 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTK3l-0001XC-5J
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 06:17:23 +0000
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
IronPort-SDR: y9cs2Hoadp7XZ/Un2+rwXXIEG3KdHiXt+5d7fLutIMCSR8Z8RN9USSllml55T5Q9FW1wSKuhg/
 LLqXJ53E3yawAbTdEnNMIXDgyIrLORYGY/bREoA1b89AqkQglZfliBzL/ibxQXzyu5aYSz82L/
 epp078m3PlFD/XrOlWy1CuInw/NFGQ7TybylR4CnL3ycvYicBLWYlYqG/ELh/Xs+JjeiKvIRoo
 XM/BukFVI+e8aKYMtKd0O6iarDFKT6fTv0X/XRgY+CcGY7+y+j+iol8A6QKNuKdRUFaxQh2dRO
 YAE=
X-IronPort-AV: E=Sophos;i="5.68,283,1569308400"; d="scan'208";a="57658683"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Nov 2019 23:17:18 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 8 Nov 2019 23:17:16 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 8 Nov 2019 23:17:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YFU/oJSN82dXv4tK56abzflTxbKfFXoprmsXuGMDArgG2MvvamktYnNbvMLfYEcrojNjFVvCjCTCwuoGJCGq97IVbxk9yxlhwa5T7pvp8X/zjEtzI62iVo79394jReCfjsImWu3iLtBrXEWNb911xzq3c83big5islFD9CuDSaMH3Wv4CikLb182aXLDvL/wjX0aQADRFSHMHKjufbbL7vrFIuvD5ct70hPyoe2yHb9GidfPhZ2j5TyifJeUNeUpWIrvdh4ebPT3w3D7T4xQdS9BbxgfbKGs5NkfbZc2hm0PMO5VVLbYW0hp1cZ6H1d2r2cx151JR+9o+RN7thYHvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Kmagvn7nV6sSDSgnw4oXYs1P7kYkfwJkcJhLJyvKQc=;
 b=XytTnW6Y7GiNWCY7J0pcsWE1Kgt5nVzuAwUBfw6AjHXzoY78Yj6U+jrCp3pkJOUarf1gSJ8/TPMR4ZKkxvX4Zj58o9aO4eMSuyRCrBp5QRwpcNKsvzBqpt3JPopOQY9G+87DJPX1XVfn6LlUSRenuV5N+pChV7BfnnC4hC6XZptkLToZiNsTMKo+O6ArpjxPY+/a7giyv6XgMuSsxuc7TjyqQIEar0SvkjdJYka0ccG5kIgHmV5TY4tRQvwaIdzcGRG7GoJ1Wzn4G5uvZACCQ1sQMFCbQmRrXJa2IVehdeUUfVZSZhZhPDlGDjVD8k8gPqhBFV96HUTOSloa1gDL/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Kmagvn7nV6sSDSgnw4oXYs1P7kYkfwJkcJhLJyvKQc=;
 b=lJq60OyeU9HAQicxhcKSp3hCHnN7Vn7UzIxK170M5ZQlLKAwji1fwRu6UJ/N19waP0lciys1ZYCi/7RpsN55yi1Gj4X40PN8AI1omvwvwGViGT/XP9nQ7geaVdfeJKtWQV1oimFCbiKGq0du2CSVrrUziV5ZwJBq1/6LOPcD4ZA=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4381.namprd11.prod.outlook.com (52.135.37.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.25; Sat, 9 Nov 2019 06:17:13 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2430.023; Sat, 9 Nov 2019
 06:17:13 +0000
From: <Tudor.Ambarus@microchip.com>
To: <ardb@kernel.org>, <linux-crypto@vger.kernel.org>
Subject: Re: [PATCH v3 09/29] crypto: atmel-tdes - switch to skcipher API
Thread-Topic: [PATCH v3 09/29] crypto: atmel-tdes - switch to skcipher API
Thread-Index: AQHVk90I7pi7OUKBQkSZy2whdLCRX6eCYuOA
Date: Sat, 9 Nov 2019 06:17:13 +0000
Message-ID: <53f2e6e9-a55b-4b0b-0d72-0e9c58f21c9f@microchip.com>
References: <20191105132826.1838-1-ardb@kernel.org>
 <20191105132826.1838-10-ardb@kernel.org>
In-Reply-To: <20191105132826.1838-10-ardb@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0202CA0014.eurprd02.prod.outlook.com
 (2603:10a6:803:14::27) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [5.12.60.46]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: edfc1816-f02c-4c4f-41f3-08d764dc760b
x-ms-traffictypediagnostic: MN2PR11MB4381:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4381A4051E6A4DEEE61D5BEBF07A0@MN2PR11MB4381.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 021670B4D2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(396003)(376002)(366004)(39860400002)(199004)(189003)(4744005)(66556008)(25786009)(256004)(2906002)(5660300002)(4326008)(2501003)(66446008)(52116002)(31696002)(31686004)(64756008)(66476007)(478600001)(76176011)(6246003)(8936002)(86362001)(14454004)(107886003)(66066001)(8676002)(81156014)(66946007)(316002)(102836004)(71200400001)(71190400001)(26005)(81166006)(99286004)(110136005)(305945005)(6512007)(386003)(6506007)(53546011)(54906003)(186003)(476003)(486006)(11346002)(446003)(2616005)(6436002)(3846002)(6116002)(6486002)(229853002)(36756003)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4381;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Hjr2Cld9UHkQlojvJ77K6JbTQ1J+jKcXzBXcH6UTxU64ewQBWG2fxTARZRcEvXo17SHG5OhFgQc1RGuni8cJgcrTrosBmU38awSekvQIJ1aCW/OrcNmS5K3pep+HejAfSA94WoZEcNWH35lGvomalw550IHCCHGjTrRc8aR4rGnxqUkYyuHbPk1bUuK3TuEHKazQyFZYXUZtZi73vl90IvzNKSrwBTWRNfADU5u03DNEWeI25Trfb0OFPe9ec/9S9qdETybNdnpzj57QkbjzqXltebdqKphR1Riu2TQwhOPcCKW+4oPubMJriYbrMDofwZg2URmkdnJiRqb3dORTiBergBk11lLroJrbbNyWgQAaMmLFW/rykfDgS8Hfx5SP7GIVUiwGCMRf/XuRcnBGhYs7aQkC53aFoZth6jH87WkoaNmT2C8C1nkD4TUCJ0bz
Content-ID: <6F0CA05DD26C7C4E9F38134BCCCB9662@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: edfc1816-f02c-4c4f-41f3-08d764dc760b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2019 06:17:13.4994 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kq2+f0tLE76sMGBED44JQhaVw0CkSY+EGDNVzqXT3dLHZ3aLBddXrbc7Ch3bWCtYxkx73bl81xY7NrQwWh3tHuksQGFY56HDrgRUqjNsWS0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4381
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_221721_298181_4BDE7F3B 
X-CRM114-Status: UNSURE (   9.91  )
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
Cc: alexandre.belloni@bootlin.com, herbert@gondor.apana.org.au,
 ebiggers@google.com, Ludovic.Desroches@microchip.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/05/2019 03:28 PM, Ard Biesheuvel wrote:
> Commit 7a7ffe65c8c5 ("crypto: skcipher - Add top-level skcipher interface")
> dated 20 august 2015 introduced the new skcipher API which is supposed to
> replace both blkcipher and ablkcipher. While all consumers of the API have
> been converted long ago, some producers of the ablkcipher remain, forcing
> us to keep the ablkcipher support routines alive, along with the matching
> code to expose [a]blkciphers via the skcipher API.
> 
> So switch this driver to the skcipher API, allowing us to finally drop the
> blkcipher code in the near future.
> 
> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Tested-by: Tudor Ambarus <tudor.ambarus@microchip.com>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
