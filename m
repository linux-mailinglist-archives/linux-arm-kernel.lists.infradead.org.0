Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2E8B7E9C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 17:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nQFneZ36MLUOUAUFynZTfnbFAP2OcIIsRckvOJ0ab0w=; b=kSnXkQovXIgzlz
	DZEOn7BTVzjH0AOL92eA2zH2Ju/ifIueHfIpL2QRTwWYFlQXU1oeF6SggZTz06336dyJINhNrFt0l
	c2ayLhE9pfgwPvuZX5Nmlp6PyZt7y9p9NR3wU1zR1TeorYu4NM/cvf3p0x49crpG7W9RAUrOUgv+v
	YrcxJZSfj2M4s2+Wtp2rTwGIRpgbHPODK7ofsZEvdw9ZlHB7l22pfPwxCjEMpjtbHyOoxbINNkj5T
	4109RYdJk5p12E49cjJc6f9XMSuNFYnb+VH0sssfmJU/ZtmFZqEcjASdkv0gIUwFrHr2ppfgeCuZy
	aWdscQlz2W+LsojiUR/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAym7-0006yq-Lm; Thu, 19 Sep 2019 15:55:19 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAylj-0006x1-TA; Thu, 19 Sep 2019 15:54:57 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: uG3XXq3hZkH/QxyvTJBYqH0W9vM6Is/CidOWH92hUE+R+IKWq+qXmj+qNRsM7OYWriMl+U0Dkl
 rj+hpwtqBNpzS9yFbfkVpi61eIhxXE57wk+oN47+6jRT3qLlvXCQaYnRROwkKlsxMv0ZN3t1cO
 TotMPXazP+N48Th/NKYZJqRbM2O1SyA6USjHzcP4JQ9NoMpGIIxRsF0zHb8k4Er8dsgLYhEzsV
 Dn1D1gEP5alO3EcW5EPS9I7e19PdHnGHsmpyDy2N5YDdRYhdQkZFwu355GKEKVbVdUpIrKzoUP
 q7U=
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="49559752"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Sep 2019 08:54:53 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Sep 2019 08:54:53 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 19 Sep 2019 08:54:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HMbXIbZSDM5/o3m4JYCJ85rAk+CGGZDsfh84YSst+5kOJrp45C485fYNtpRIL6Cg9LVeagH8QW/duzQNnfnSyjraKP6176TyscvHWskKCHS3eJj+Ol7QuMkrv4M12nWdFNI5dJXxFLO5acTxYBobeBwP/xlImmUwucTIUv9GMvjLk3UQYKZjlm6Ij3vuJdSmviErbY5Hx+Omowzsh6OBqLrJ1xzLr4+2JvTNW7Btr823TGNAhDZEU4xWYp0YbbZ5b9PCYQWJtzy+sCYdRHqFmGCOrwwjF4Z6OFjxq83s6fTQ3XP8QCbBN1zIrq7bXcWqSq1yi0oNMYKM5XhY3RfLeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RvBqlTjjUjcU2RJnUhN/ybdRGZUNSe6dRYQbGHmm1aY=;
 b=HyWeNvoHEHMMRIbpx3MkfLvX49yUzTS835y1cp5Bk3W6bMerISaZfAeD86FMh3ooRfdu9U4+1Y83px6otdYLCENH+5+VKhkhFsGdQWbp4blZ0DAFlhTxq2GGnCvweCNfP+gJX3f6X569wbWNTDMB390AdEXASZEp7Dae03EficO2qC39TvzdSHjUIAyHDdmCJt4PiNJEZHfm+fkBQSBvOqaz/UHdBImx8tmg3fIXiWY1s3uQOE8DjBpzvlKO/7IV3zXN56BE3ZBq7H5WYoHAz05Vo6SHnIfb+JF58fWAS5exIvk652mZItZHnlj08mUd6migzU/0zHp1tBxWYeQbLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RvBqlTjjUjcU2RJnUhN/ybdRGZUNSe6dRYQbGHmm1aY=;
 b=lU8DoV05xdX1C/i3lEOzAbVBvzkzx9rJYizP0nL53y0OsdBHR2zC6mYwDLWPp6/1mEyJxEigrexeY1ZzYvZwpQxqhWqlCKWmPcS+1eJk7k6CQzMk0+v1oz9NS+9mMAczZqSFAT+BXrWDsVOpbycV0yzXw2hB5fIQtv43brnrP+s=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3565.namprd11.prod.outlook.com (20.178.250.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.13; Thu, 19 Sep 2019 15:54:52 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2263.023; Thu, 19 Sep 2019
 15:54:52 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>
Subject: Re: [PATCH 17/23] mtd: spi-nor: Fix clearing of QE bit on
 lock()/unlock()
Thread-Topic: [PATCH 17/23] mtd: spi-nor: Fix clearing of QE bit on
 lock()/unlock()
Thread-Index: AQHVbXBXffWwZrBoIkKrGGyrhA4/GaczE40AgAAWrYA=
Date: Thu, 19 Sep 2019 15:54:52 +0000
Message-ID: <b44e398a-037a-8f32-58dd-15b7f714a8a3@microchip.com>
References: <20190917155426.7432-1-tudor.ambarus@microchip.com>
 <20190917155426.7432-18-tudor.ambarus@microchip.com>
 <dceca616-2b98-9bc8-73e4-32fb06fc753d@ti.com>
In-Reply-To: <dceca616-2b98-9bc8-73e4-32fb06fc753d@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0601CA0032.eurprd06.prod.outlook.com
 (2603:10a6:800:1e::42) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.120.240.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d864dd75-6ef7-43f1-b1eb-08d73d19b529
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR11MB3565; 
x-ms-traffictypediagnostic: MN2PR11MB3565:
x-microsoft-antispam-prvs: <MN2PR11MB35653728F4E9B9C744509A04F0890@MN2PR11MB3565.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(376002)(396003)(346002)(366004)(189003)(199004)(2201001)(316002)(7736002)(66066001)(386003)(6116002)(53546011)(102836004)(36756003)(305945005)(7416002)(52116002)(54906003)(14454004)(2906002)(6486002)(5660300002)(6506007)(99286004)(86362001)(76176011)(31696002)(81166006)(256004)(8676002)(66476007)(66446008)(66946007)(81156014)(71200400001)(478600001)(25786009)(6436002)(26005)(110136005)(229853002)(486006)(64756008)(2501003)(3846002)(11346002)(66556008)(186003)(31686004)(6512007)(8936002)(2616005)(6246003)(4326008)(476003)(446003)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3565;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZM4OLvXnRBoH4hsXSleSV5Pms57QMkr/UZmqCE/g8If+16KIv/YovGT9jA+bXC1/2BpK+AhyxQ5F2jGSGSwGFkvfbqapvy2+ZcZmG1hJ1knOXWdt0tKa94GTQREwppdw2XrJDxIM19d+qi68cprp3rA1xDLhiZpRUaABWwfDfcLSuKpVf2DsL95zYI/ywqEX/66HqhdxuGJ8P2q728TLOxHJdnlh5/7HquCiI2hFjWA+DGWT9YNeiOBA2EAym8cZmPbC+Gm9Grtd/QjF4ikAE8UbZvJgnALaWw6FkWFNo2MHVOxICi5Um495hV+0vkErpzCihluETRE2Uxwl27P0khWcnw03QuNT1OZgCSykRr0WFUOB8xbIlsRKnkVS7E8zs31DvBiSGdu8NAoc09zSEfyH+pGECbV8aci3shgWvg8=
x-ms-exchange-transport-forked: True
Content-ID: <D3CB4932602AE44EB0B07313F1DB679F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d864dd75-6ef7-43f1-b1eb-08d73d19b529
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 15:54:52.1538 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jpQtW4wR+cplVTj5uECnldbPOZpTn4Pb+uJ3vkyn4Lwni9tOZBCiMcArC+xk3XNSYhSjEVsPGk/90UgoAlqnxJMMlmzCUMOSXV1bnCRYPgQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3565
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_085456_152722_06446027 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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



On 09/19/2019 05:33 PM, Vignesh Raghavendra wrote:
> Hi Tudor
> 

Hi, Vignesh,

> [...]
> 
> On 17-Sep-19 9:25 PM, Tudor.Ambarus@microchip.com wrote:
>> +static int spi_nor_write_16bit_sr_and_check(struct spi_nor *nor, u8 status_new,
>> +					    u8 mask)
>> +{
>> +	int ret;
>> +	u8 *sr_cr = nor->bouncebuf;
>> +	u8 cr_written;
>> +
>> +	/* Make sure we don't overwrite the contents of Status Register 2. */
>> +	if (!(nor->flags & SNOR_F_NO_READ_CR)) {
> Assuming SNOR_F_NO_READ_CR is not set...
> 
when SNOR_F_NO_READ_CR is not set, I read the Status Register 2 on the next line:

>> +		ret = spi_nor_read_cr(nor, &sr_cr[1]);
>> +		if (ret)
>> +			return ret;
>> +	} else if (nor->flash.quad_enable) {
>> +		/*
>> +		 * If the Status Register 2 Read command (35h) is not
>> +		 * supported, we should at least be sure we don't
>> +		 * change the value of the SR2 Quad Enable bit.
>> +		 *
>> +		 * We can safely assume that when the Quad Enable method is
>> +		 * set, the value of the QE bit is one, as a consequence of the
>> +		 * nor->flash.quad_enable() call.
>> +		 *
>> +		 * We can safely assume that the Quad Enable bit is present in
>> +		 * the Status Register 2 at BIT(1). According to the JESD216
>> +		 * revB standard, BFPT DWORDS[15], bits 22:20, the 16-bit
>> +		 * Write Status (01h) command is available just for the cases
>> +		 * in which the QE bit is described in SR2 at BIT(1).
>> +		 */

when SNOR_F_NO_READ_CR is set and nor->flash.quad_enable != NULL, Status
Register 2 (CR) is equal to CR_QUAD_EN_SPAN.

>> +		sr_cr[1] = CR_QUAD_EN_SPAN;
>> +	} else {

if SNOR_F_NO_READ_CR is set and nor->flash.quad_enable == NULL we don't need to
enable Quad Mode, so Status Register 2 is 0.

>> +		sr_cr[1] = 0;
>> +	}
>> +
> CR_QUAD_EN_SPAN will not be in sr_cr[1] when we reach here. So code
> won't enable quad mode.
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
