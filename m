Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD64B8A30
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 06:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SylDhPmOPwNhCRwx75zgCBQ4UV+fqyn66CXWPXAnYQQ=; b=O3v59iUAyhiDcv
	IQhb4fZIs/Q1zTDQvPNM48fDZysNGt36yuwzpWnO9FaxsyXMZZgk7AkXVcWk6L97sQtqaDM6gYtla
	7tbThYpMFQzYj6j1Xmv1vR0zyOqChHYkwq1l37m/2cJC/tFih2ypKLJH3XFBIa27F5VwuFDDQZCpx
	bk3hkjAumCxpIeYXyWJmR6PYh0o+HtNecyrygyDz24Q2THoctU+v2VDr0038kd2FXJmM/A9lIbFcr
	7EvDEbKiKHOV/c/aEH84uPONpuPtTGI0/3iLmzJEI0dkmDMoujJrmvhuSUrRuzKqWTK5yQOzrhliG
	+v4kyRsO2fezRLvWgxtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBAm4-0002E8-3I; Fri, 20 Sep 2019 04:44:04 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBAl4-0002CZ-K9; Fri, 20 Sep 2019 04:43:05 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: LIxxENpqWuRWV43cAx0uoDz5mVGs9Qcvo24Xv5fVpHCyhs816mZZMnpyFbonrNdgnfYoZSsI66
 20TlCBGLM/ouO07OHao1jAZ2d5xK4gGYAlc5d8CT7WTkaEp0lERbtitnxO9MVUP/Q+RykKZdUu
 SkARdvOwQRmxCRBM5Z+sHMOoxpDrGSLjbRMQkiQwXTqrWzp8qtKlMy0wwn+0SnX45GrkzzELZI
 d9gkbJThL1NhTAUPRlVtukfLxinkKYdqUlFcFEuyknV3Jjx9W+9QejNMUUQQotWJ7MYUg5KY1T
 NH0=
X-IronPort-AV: E=Sophos;i="5.64,527,1559545200"; d="scan'208";a="48273344"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Sep 2019 21:42:58 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Sep 2019 21:42:56 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 19 Sep 2019 21:42:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i14/oZzAakvJPQVISzhZkpkQQ0SeZ+am45W2V/62/2rVvKHLTsoOwOCQq81GZn2OGqSjQDAAWj2tAjCeJvxuPb3y8eEWOblsLFBk6p4MU+eXydFYVTYnGfIR8qczGFgzRjqL7g3PmbQYVevudr7YLg/e1yLQDMrN03zP3T3AcU1SDHbVs/spg90ovRPgOzUA1O2BuoWbkPRCqbzKIaYrXXjltd+Gf40INencjc4/yPWNzKC1rckbfefyz/aDcWiWkq11Yd86/AUO/ugl07Bn/hNgj/gkeIJ9c6BeJQpMFGP7hhbRi5X9p0I/I5Y+jYwp0Tz+PTEC/A97RdwCwxOVdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1tQNxPEKjrYCnvC0Yrn3RhSnDeBBw6x4Bx5j2FIqAFA=;
 b=RBflWBL1H+TOYPIYw/PINzABAjymvjrntyVxmhuw99J6X2FQP29lobeEL74IAHOh3gnBc5vVRxTtsmi0+ojnmVv46fZ3q0LNAqwzaP4UDUMM5uLdqcnnoJnFNEKYfTWvW3gQl4VwFA91dR0tN8VHEXI2WjwqcfsPvkN46YheFHTcPWObXWxBnvvPj+TVvhZiZnVXqcjsyWQYGUMCXHdGXDkJwlSG/FKhFZHX8IZm1xL5fgDyIBAT6q2aG/tPjexcsf0KHPe++KRxUb/5ffseixGPaKJdllbXI48dXxbnG5ViOZBFh098cz/4xG2zsaT4nhpVDiUEHYq1Ixtknt9IIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1tQNxPEKjrYCnvC0Yrn3RhSnDeBBw6x4Bx5j2FIqAFA=;
 b=XoWHmMXtFUfPMGr3I51GKV+8GhgdBWMmpmShsbhCfnkd2tfOdA3N670v6lVp9JbEXVt5WYgDPuH4oLHYolDg7mqPwVlsYp3292GByGAlD3xkMVShDRVbsxsWySvrocxmWCvqTklnxZAlXluQJqRvAgWjFZGXk5bWPbKOxFo2CUY=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3695.namprd11.prod.outlook.com (20.178.252.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.19; Fri, 20 Sep 2019 04:42:55 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2263.023; Fri, 20 Sep 2019
 04:42:55 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>
Subject: Re: [PATCH 19/23] mtd: spi-nor: Rework
 spansion(_no)_read_cr_quad_enable()
Thread-Topic: [PATCH 19/23] mtd: spi-nor: Rework
 spansion(_no)_read_cr_quad_enable()
Thread-Index: AQHVbXBbffKexv8yJ0aKaPhVIe5RwqczRgmAgAC6x4A=
Date: Fri, 20 Sep 2019 04:42:55 +0000
Message-ID: <9aa3cc95-33f1-74b5-d739-d4e7ef92d242@microchip.com>
References: <20190917155426.7432-1-tudor.ambarus@microchip.com>
 <20190917155426.7432-20-tudor.ambarus@microchip.com>
 <f811a9a6-4b88-e017-5cc6-ad758edbcab3@ti.com>
In-Reply-To: <f811a9a6-4b88-e017-5cc6-ad758edbcab3@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0901CA0085.eurprd09.prod.outlook.com
 (2603:10a6:800:7e::11) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c5ba3ef4-8ed8-4cff-6be9-08d73d8500a8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3695; 
x-ms-traffictypediagnostic: MN2PR11MB3695:
x-microsoft-antispam-prvs: <MN2PR11MB36952425A353A9878BB3E73EF0880@MN2PR11MB3695.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0166B75B74
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(136003)(376002)(346002)(396003)(199004)(189003)(36756003)(110136005)(8936002)(54906003)(81166006)(4326008)(76176011)(81156014)(8676002)(446003)(11346002)(2906002)(5660300002)(478600001)(99286004)(229853002)(186003)(256004)(71190400001)(71200400001)(31686004)(2201001)(6116002)(316002)(31696002)(386003)(53546011)(86362001)(2501003)(305945005)(66556008)(66066001)(6486002)(7736002)(6246003)(102836004)(66946007)(25786009)(3846002)(66476007)(476003)(486006)(52116002)(26005)(14454004)(6506007)(66446008)(2616005)(6512007)(64756008)(7416002)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3695;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lpHRKGhtAGQ+DmkK9SrwEeEz3Dw7UEoBgfpQg1fNb1BRljd4dN7VsmMdaB8iaqJogaxSZC3zgvwnESMxhlu6dSChOHwwg4lflScMd+RjIYYAmifFwf8nLKkr74PtYNwZdHKjszdCcv6VwdTfE1A5/Kl9vXb/csX02Dd1QPsHZ0QNCmt/zTO1C0KNb8u9tBs5eopilNzC1Ed/b2LJXPwsYgkVy0BwWIWmW1/VzPTACR5Rj2/wvzr8erIzE1qiugCHBiTBexsswYR7KfAYh4gH2kYDmJNWTr87ihXTDbrcqpv6XFxZlYVBy+39Me1NA3yqpuo1zY5XB+tnXhWcamrW3D7x/30iuKfK4WwqikgTACNDqAfEREVCVvshNJNvz7p5je8JFR9kgV13x6AB1D7f5MhLUyj/aSAlG3l1Z9opkps=
x-ms-exchange-transport-forked: True
Content-ID: <24E54A8CF30EF742803303509F7A70A7@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c5ba3ef4-8ed8-4cff-6be9-08d73d8500a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2019 04:42:55.0634 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5uij9KwNbeFPEATt+34zvL7td4y5VVodem5GHTS6aGMexI6mk3Pq/LCemIyOm6eemDLikwTwwAf2tAz0LTzVGdHF0PWIJ52C5PqUl4iqzPk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3695
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_214302_725681_8CA601A5 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: linux-aspeed@lists.ozlabs.org, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, vz@mleia.com, linux-mediatek@lists.infradead.org,
 joel@jms.id.au, matthias.bgg@gmail.com, computersforpeace@gmail.com,
 dwmw2@infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/19/2019 08:34 PM, Vignesh Raghavendra wrote:
> 
> 
> On 17-Sep-19 9:25 PM, Tudor.Ambarus@microchip.com wrote:
>> From: Tudor Ambarus <tudor.ambarus@microchip.com>
>>
>> Merge:
>> spansion_no_read_cr_quad_enable()
>> spansion_read_cr_quad_enable()
>>
>> in spi_nor_sr2_bit1_quad_enable().
>>
>> Avoid duplication of code by using spi_nor_write_16bit_sr_and_check(),
>> the SNOR_F_NO_READ_CR case is treated there.
>>
>> We now do the Read Back test even for the old
>> spansion_no_read_cr_quad_enable() case.
>>
>> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
>> ---
>>  drivers/mtd/spi-nor/spi-nor.c | 89 ++++++++++---------------------------------
>>  include/linux/mtd/spi-nor.h   |  4 +-
>>  2 files changed, 22 insertions(+), 71 deletions(-)
>>
>> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
>> index 2f79923e7db5..8648666fb9bd 100644
>> --- a/drivers/mtd/spi-nor/spi-nor.c
>> +++ b/drivers/mtd/spi-nor/spi-nor.c
>> @@ -907,7 +907,7 @@ static int spi_nor_write_16bit_sr_and_check(struct spi_nor *nor, u8 status_new,
>>  		 * Write Status (01h) command is available just for the cases
>>  		 * in which the QE bit is described in SR2 at BIT(1).
>>  		 */
>> -		sr_cr[1] = CR_QUAD_EN_SPAN;
>> +		sr_cr[1] = SR2_QUAD_EN_BIT1;
>>  	} else {
>>  		sr_cr[1] = 0;
>>  	}
>> @@ -1963,81 +1963,34 @@ static int spi_nor_sr1_bit6_quad_enable(struct spi_nor *nor)
>>  }
>>  
>>  /**
>> - * spansion_no_read_cr_quad_enable() - set QE bit in Configuration Register.
>> + * spi_nor_sr2_bit1_quad_enable() - set the Quad Enable BIT(1) in the Status
>> + * Register 2.
>>   * @nor:	pointer to a 'struct spi_nor'
>>   *
>> - * Set the Quad Enable (QE) bit in the Configuration Register.
>> - * This function should be used with QSPI memories not supporting the Read
>> - * Configuration Register (35h) instruction.
>> - *
>> - * bit 1 of the Configuration Register is the QE bit for Spansion like QSPI
>> - * memories.
>> - *
>> - * Return: 0 on success, -errno otherwise.
>> - */
>> -static int spansion_no_read_cr_quad_enable(struct spi_nor *nor)
>> -{
>> -	u8 *sr_cr = nor->bouncebuf;
>> -	int ret;
>> -
>> -	/* Keep the current value of the Status Register. */
>> -	ret = spi_nor_read_sr(nor, &sr_cr[0]);
>> -	if (ret)
>> -		return ret;
>> -
>> -	sr_cr[1] = CR_QUAD_EN_SPAN;
>> -
>> -	return spi_nor_write_sr(nor, sr_cr, 2);
>> -}
>> -
>> -/**
>> - * spansion_read_cr_quad_enable() - set QE bit in Configuration Register.
>> - * @nor:	pointer to a 'struct spi_nor'
>> - *
>> - * Set the Quad Enable (QE) bit in the Configuration Register.
>> - * This function should be used with QSPI memories supporting the Read
>> - * Configuration Register (35h) instruction.
>> - *
>> - * bit 1 of the Configuration Register is the QE bit for Spansion like QSPI
>> - * memories.
>> + * Bit 1 of the Status Register 2 is the QE bit for Spansion like QSPI memories.
>>   *
>>   * Return: 0 on success, -errno otherwise.
>>   */
>> -static int spansion_read_cr_quad_enable(struct spi_nor *nor)
>> +static int spi_nor_sr2_bit1_quad_enable(struct spi_nor *nor)
>>  {
>> -	u8 *sr_cr = nor->bouncebuf;
>>  	int ret;
>>  
>> -	/* Check current Quad Enable bit value. */
>> -	ret = spi_nor_read_cr(nor, &sr_cr[1]);
>> -	if (ret)
>> -		return ret;
>> -
>> -	if (sr_cr[1] & CR_QUAD_EN_SPAN)
>> -		return 0;
>> +	if (!(nor->flags & SNOR_F_NO_READ_CR)) {
>> +		/* Check current Quad Enable bit value. */
>> +		ret = spi_nor_read_cr(nor, &nor->bouncebuf[0]);
>> +		if (ret)
>> +			return ret;
>>  
>> -	sr_cr[1] |= CR_QUAD_EN_SPAN;
>> +		if (nor->bouncebuf[0] & SR2_QUAD_EN_BIT1)
>> +			return 0;
>> +	}
>>  
>>  	/* Keep the current value of the Status Register. */
>> -	ret = spi_nor_read_sr(nor, &sr_cr[0]);
>> -	if (ret)
>> -		return ret;
>> -
>> -	ret = spi_nor_write_sr(nor, sr_cr, 2);
>> -	if (ret)
>> -		return ret;
>> -
>> -	/* Read back and check it. */
>> -	ret = spi_nor_read_cr(nor, &sr_cr[1]);
>> +	ret = spi_nor_read_sr(nor, &nor->bouncebuf[0]);
>>  	if (ret)
>>  		return ret;
>>  
>> -	if (!(sr_cr[1] & CR_QUAD_EN_SPAN)) {
>> -		dev_err(nor->dev, "Spansion Quad bit not set\n");
>> -		return -EIO;
>> -	}
>> -
>> -	return 0;
> 
> You need to set QE bit here before writing to CR register. This function
> does not do that.>
>> +	return spi_nor_write_16bit_sr_and_check(nor, nor->bouncebuf[0], 0xFF);>
> Neither does spi_nor_write_16bit_sr_and_check().

pff, you're right, I thought I did set it in spi_nor_write_16bit_sr_and_check(),
but in spi_nor_write_16bit_sr_and_check() I just read the CR, without setting
the QE bit. Will respin the entire series, thanks for catching this!

> We need a function that allows to modify SR2/CR register content as well
> so as to set QE bit right?
> 
> Regards
> Vignesh
> 
>>  }
>>  
>>  /**
>> @@ -2117,7 +2070,7 @@ static int spi_nor_clear_sr_bp(struct spi_nor *nor)
>>   *
>>   * Read-modify-write function that clears the Block Protection bits from the
>>   * Status Register without affecting other bits. The function is tightly
>> - * coupled with the spansion_read_cr_quad_enable() function. Both assume that
>> + * coupled with the spi_nor_sr2_bit1_quad_enable() function. Both assume that
>>   * the Write Register with 16 bits, together with the Read Configuration
>>   * Register (35h) instructions are supported.
>>   *
>> @@ -2138,7 +2091,7 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
>>  	 * When the configuration register Quad Enable bit is one, only the
>>  	 * Write Status (01h) command with two data bytes may be used.
>>  	 */
>> -	if (sr_cr[1] & CR_QUAD_EN_SPAN) {
>> +	if (sr_cr[1] & SR2_QUAD_EN_BIT1) {
>>  		ret = spi_nor_read_sr(nor, &sr_cr[0]);
>>  		if (ret)
>>  			return ret;
>> @@ -3642,7 +3595,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
>>  		 * supported.
>>  		 */
>>  		nor->flags |= SNOR_F_NO_READ_CR;
>> -		flash->quad_enable = spansion_no_read_cr_quad_enable;
>> +		flash->quad_enable = spi_nor_sr2_bit1_quad_enable;
>>  		break;
>>  
>>  	case BFPT_DWORD15_QER_SR1_BIT6:
>> @@ -3663,7 +3616,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
>>  		 * assumption of a 16-bit Write Status (01h) command.
>>  		 */
>>  		nor->flags |= SNOR_F_HAS_16BIT_SR;
>> -		flash->quad_enable = spansion_read_cr_quad_enable;
>> +		flash->quad_enable = spi_nor_sr2_bit1_quad_enable;
>>  		break;
>>  
>>  	default:
>> @@ -4626,7 +4579,7 @@ static void spi_nor_info_init_flash_params(struct spi_nor *nor)
>>  	u8 i, erase_mask;
>>  
>>  	/* Initialize legacy flash parameters and settings. */
>> -	flash->quad_enable = spansion_read_cr_quad_enable;
>> +	flash->quad_enable = spi_nor_sr2_bit1_quad_enable;
>>  	flash->set_4byte = spansion_set_4byte;
>>  	flash->setup = spi_nor_default_setup;
>>  	/* Default to 16-bit Write Status (01h) Command */
>> @@ -4844,7 +4797,7 @@ static int spi_nor_init(struct spi_nor *nor)
>>  	int err;
>>  
>>  	if (nor->clear_sr_bp) {
>> -		if (nor->flash.quad_enable == spansion_read_cr_quad_enable)
>> +		if (nor->flash.quad_enable == spi_nor_sr2_bit1_quad_enable)
>>  			nor->clear_sr_bp = spi_nor_spansion_clear_sr_bp;
>>  
>>  		err = nor->clear_sr_bp(nor);
>> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
>> index 3a835de90b6a..5590a36eb43e 100644
>> --- a/include/linux/mtd/spi-nor.h
>> +++ b/include/linux/mtd/spi-nor.h
>> @@ -144,10 +144,8 @@
>>  #define FSR_P_ERR		BIT(4)	/* Program operation status */
>>  #define FSR_PT_ERR		BIT(1)	/* Protection error bit */
>>  
>> -/* Configuration Register bits. */
>> -#define CR_QUAD_EN_SPAN		BIT(1)	/* Spansion Quad I/O */
>> -
>>  /* Status Register 2 bits. */
>> +#define SR2_QUAD_EN_BIT1	BIT(1)
>>  #define SR2_QUAD_EN_BIT7	BIT(7)
>>  
>>  /* Supported SPI protocols */
>>
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
