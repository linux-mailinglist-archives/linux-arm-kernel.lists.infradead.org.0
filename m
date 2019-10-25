Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24287E4499
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 09:35:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLB648LxlgNBH6wWxTNSzx5Xml7vMnUXQEAS438kPvo=; b=G/xK49Joiuv+sS
	LcKRzOKOoTCppaQzHEmbLiDGsZa4jGS9cfP7w/2KgqsK7Vh3uxPNxr8q3+dw+gsYCVkWhAAbY1k1x
	U0HG8ufClfAXc5swAx+B2XE4NftowpdautVMiLLo2+bjcsCO7Wyu1LekeQJmYJBcUvv5KYn2EYKVc
	IapRgZc+UtEpc90QogM3H90zRPx/VysZwf9H1uKtdySJnoKh4BtAtRndbcEgHpxhddd7Xfr6x1cl0
	Dj6RcFPcL2kEN+X7p4g2wF631mRox9FpqwIRHbdVSFKU0lNJTAJiFisaQUzUtfeo+2/v0VHKS4S+v
	WMihV9W6fyzxFO0eOpoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNu8A-0007au-AC; Fri, 25 Oct 2019 07:35:30 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNu7K-0007Ne-6N; Fri, 25 Oct 2019 07:34:39 +0000
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
IronPort-SDR: V2hd1pyqxd38PXeH2BqNkK+m6yZ+PUGOz56BXfR5aMrTIWdjtIl/RvupeW6KMbRLY5/0p/G8Qy
 8Wj5AWyu0/A+rs6AN1TWAqRGp5E8uhyG1HAnO9BJ5k4/h0OUg3pzyoiQI0v3zx7Rds9ZrcWidG
 joySauTyVhZIkqgoVTsDk1UTRE5DZHT5tds3JYcYlJhw23TEkDZaNxsHNmDcDSulndSUp/9VKY
 teA1GOfJn5G5OBlOKu/VBBb/rysPiqTSdwIZHFBFsOOvDzGnLmmAI8nUV9bsZDjff5AQGk2SWg
 uCY=
X-IronPort-AV: E=Sophos;i="5.68,227,1569308400"; d="scan'208";a="52932564"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Oct 2019 00:34:36 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 25 Oct 2019 00:34:34 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 25 Oct 2019 00:34:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m2cW8FYUTCnpA6dGrL6B0q9pKpndta0q8//kpWpnic9cS461AKd7JOlIs1n1XYunVQydiGZ6v9GGhoeOcltzCgrguUx/C1ejoubhLd0Q7PMWxKpIJNEN+QVimMpMJsBOd4llTrvQmXgZ4K5sA4rau9W974xN2r2aXpRU6gF95DBAtTdhJ7Nata8ZqYu/0bQ2d+WrvaxwxFL0+xW4HpG0/5DY+JZ03BJDWOEn4mxRCQuHVSwWvHXDRKk9olueCsxPYVnrrhMXLcufa+Pn+XQyW2jmJaJlHTyz4xZTNy4T2ECV9dKMHtO9dRPt8DUNlKUht/7gOyqvkiEaUVIJ61HZ5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r7SC8mMStlHEDZ5ri/e02ClS1jNHuD60CFazcfME7+s=;
 b=aPEqzsgK3ZTO40zDbbLLjF2Bqjep1SVcMXnrELOrffr+iGyssdHJyxt1ScVO0S2qzwuGviQ8RF3MuFAgcXbZKvGtFtvAARuV5CR/9p1HhMzZJycgLZu9eLQsjXAmxPxANwGyBi9S6PMJPjg/IYNIKsD1Q7YxE3qh42W7B63KteuwSnvkJ0koDS2QcFLLleACf6fyl6akw1nRaGId5mhbYJ7HCr8xe66a2ReHUIul635YTCpUPVJa3n3esYHpxguS6IqhBE4GLDRyArNZ44V1KhVcnegIs3VGAH6tby0LQfBnJUM5PEmAtwoJC1/c7xrVK27MKcG2B9eOnjMj3qCvYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r7SC8mMStlHEDZ5ri/e02ClS1jNHuD60CFazcfME7+s=;
 b=I5U5hBDvg19coXtfiIjLbyN5UkOngSBuQCQR6xjAk2dNwE79yz4nNcs5rySPRuJoqdA2S2ELKVEyug8RslLQzJOvK1cjFU5+BDXrYaxo6bQV9REFqmCfWxzwhlMtBuIw3iTH5SimCAP7NI3xCLc0cGYi0lW1uig9jR3mw/lXB7M=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3583.namprd11.prod.outlook.com (20.178.250.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Fri, 25 Oct 2019 07:34:30 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2347.030; Fri, 25 Oct 2019
 07:34:30 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 09/22] mtd: spi-nor: Fix retlen handling in sst_write()
Thread-Topic: [PATCH v2 09/22] mtd: spi-nor: Fix retlen handling in sst_write()
Thread-Index: AQHVcqwocr2G1vTqBEOgTu/C0BezHKdTlJMAgBeTUIA=
Date: Fri, 25 Oct 2019 07:34:30 +0000
Message-ID: <7f23e9c0-0e9c-e365-e103-75ead47000a3@microchip.com>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
 <20190924074533.6618-10-tudor.ambarus@microchip.com>
 <20191010093308.2fe94974@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20191010093308.2fe94974@dhcp-172-31-174-146.wireless.concordia.ca>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0192.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1c::36) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.120.239.29]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 83b8bfcc-5d3a-4947-9a7b-08d7591dc5af
x-ms-traffictypediagnostic: MN2PR11MB3583:
x-microsoft-antispam-prvs: <MN2PR11MB35834DD9781A0747FDA5270DF0650@MN2PR11MB3583.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:883;
x-forefront-prvs: 02015246A9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(136003)(366004)(396003)(376002)(199004)(189003)(7416002)(31696002)(14454004)(316002)(6506007)(66066001)(256004)(6246003)(386003)(6916009)(478600001)(25786009)(2906002)(71200400001)(6512007)(71190400001)(31686004)(8936002)(11346002)(3846002)(76176011)(26005)(476003)(6116002)(6486002)(81156014)(53546011)(99286004)(81166006)(229853002)(8676002)(52116002)(446003)(102836004)(66946007)(66556008)(86362001)(4326008)(7736002)(54906003)(66476007)(305945005)(2616005)(486006)(36756003)(5660300002)(66446008)(64756008)(6436002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3583;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HoNcVBwx12ZaXfjSPsx3bnGWP9gMMSTKHyCo69kG0wbkt8GkHyE+i9LzNHtStmI8KMM1JUJHqFMRCAOm2UdcDyu5dYqctFgYIV1IJHkNZ6gpxs1FaG8grWSE1xPS7OAtCWpVjy9m26nLFd/XLAI1F9pc6t7dFBJL+RKGKnZeVDWWJb47YGbjFKLLPkf983xGP/dqd+n9gwMuxqKbG9xOi8ITxKkbECJR1lWB7f3rBHpSBxOagSjlLCSLu/C3Je47VyVvAqdG9Z5tkU8iguawX9xx2oAFdoQAim2h3klfyeYqkk/ynu8o4V6fTBnzKIFBAqDRzvAbd4U2P51XwjeUyZoXlVhmMI8/i4X/7WDtx4px5PR8LmZKcVQhV5vN8AtLWKKUDx5atXm2250hM+8GV4S+pgWj0Dm9WzrYi62SqPWOJ6Jn/6s8Bscwwn331JRK
x-ms-exchange-transport-forked: True
Content-ID: <45DA9D045FD26A47B1E5C2B4A28D6DC7@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 83b8bfcc-5d3a-4947-9a7b-08d7591dc5af
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2019 07:34:30.4346 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: akEJHOa8RD9C1ExePW1kvGmqf61Wi7oIbXkZAbTVcoN+PFzurYaIDppZ21O1QXT7TTwBQzmumnC/4or90AhR7PgTQnyeIiHCMKsV02XzvNw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3583
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_003438_270670_DD6832DD 
X-CRM114-Status: GOOD (  11.38  )
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
Cc: vigneshr@ti.com, geert+renesas@glider.be, andrew@aj.id.au, richard@nod.at,
 linux-kernel@vger.kernel.org, vz@mleia.com, marek.vasut@gmail.com,
 jonas@norrbonn.se, linux-mtd@lists.infradead.org, joel@jms.id.au,
 miquel.raynal@bootlin.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 computersforpeace@gmail.com, dwmw2@infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/10/2019 10:33 AM, Boris Brezillon wrote:

>>  drivers/mtd/spi-nor/spi-nor.c | 22 +++++++++++-----------
>>  1 file changed, 11 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
>> index 0aee068a5835..be5dee622d51 100644
>> --- a/drivers/mtd/spi-nor/spi-nor.c
>> +++ b/drivers/mtd/spi-nor/spi-nor.c
>> @@ -2665,12 +2665,12 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
>>  		/* write one byte. */
>>  		ret = spi_nor_write_data(nor, to, 1, buf);
>>  		if (ret < 0)
>> -			goto sst_write_err;
>> +			goto unlock_and_unprep;
>>  		WARN(ret != 1, "While writing 1 byte written %i bytes\n",
>>  		     (int)ret);
>>  		ret = spi_nor_wait_till_ready(nor);
>>  		if (ret)
>> -			goto sst_write_err;
>> +			goto unlock_and_unprep;
>>  	}
>>  	to += actual;
> Not sure we need this new label, we can just have:
> 
> 	actual = 0;
> 	/* Start write from odd address. */
> 	if (to % 2) {
> 		nor->program_opcode = SPINOR_OP_BP;
> 
> 		/* write one byte. */
> 		ret = spi_nor_write_data(nor, to, 1, buf);
> 		if (ret < 0)
> 			goto out;
> 		WARN(ret != 1, "While writing 1 byte written %i
> 		bytes\n", (int)ret);
> 		ret = spi_nor_wait_till_ready(nor);
> 		if (ret)
> 			goto out;
> 
> 		to++;
> 		actual++;
> 	}
> 

nice, thanks!
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
