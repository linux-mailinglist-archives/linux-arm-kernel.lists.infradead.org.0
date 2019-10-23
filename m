Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEE0E2721
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 01:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3gjAtf/TF6r+PePSpKWLeuDwGoVHxFuJibXZAQe9Ono=; b=iSe4M22SS2nXW6
	UTPJdAR8FhXmeDf2WVRL52K8hfptfdYsAsiiIPbRLcGoce7O2fCEih4FIaeUbT/J5ggIfU+JwFmn+
	Gi7xfwt2A1zRCH0OqONVAHCgwe5eqqlnrX68C/e/LuapcUBiG0s2yDDKGPzzCnVpNNzrmllUyQiLo
	Od+3pHq+0pDl2B6Uri8LT9laJjj63RatOyZQ5sa+dEkxHcdfolIiPPI/k18Z47xVw6FxoHPdd2ndY
	xB5n2+rZcv2B8PNvxbl5+i0oa5p2Yw8zEoSda8rjeaIJygfsYb0U+vr+kVctxx0kySnLSeP7B3IzV
	zHMQozP3GUo3QEEVQHKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNQEx-000303-EO; Wed, 23 Oct 2019 23:40:31 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNQE5-0002cC-NM; Wed, 23 Oct 2019 23:39:40 +0000
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
IronPort-SDR: jtrQPELkTf96hdPQFwQLLKv1VTH6hHSOmkYmgMdhioBFCtleChGC7Mr1K2U26WVkkW1mvgSohl
 m2x7AiZvv43+pCn/viZpvd+kbdtNZlI3T7zc1OFs4Ukno3o0mOogoon1nT7+K0PdpuUaqPjC6Q
 K4YGB9Fk2Br7eu4ew2jcehoIFqSWQ/+3fyrNpPslsrg1b2RPqpO8udiqLNyfF/mLtsyp9VnUOc
 EUGR9qpNhzpbKdSSCAp2jaJDUB8ktgxtHF6zCa4sO6j6MCIOevSa9HKk9p5qq16iVawWUcBCPY
 hpA=
X-IronPort-AV: E=Sophos;i="5.68,222,1569308400"; d="scan'208";a="52734423"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Oct 2019 16:39:33 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Oct 2019 16:39:32 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 23 Oct 2019 16:39:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ShH+UuYM/KjZFDbapbMUZKA2mSHNblMXwfLFlUMcbiJRoheyYlqvnjIm5fuN+0/Z+yNcLB0Y4CsJRokd5U0bCpcteRcDWfQ1y4TdLLk45wWHsH5sSdgUVeb/qWcEpQDGh3Rx1G1JKEChnsmmLyaXElUlyhfQfhX4q/f4SQpFREWWrauQ33hK+nFIpNKQ/BQenZeNMN3Vk8MNTKnmOZKMzbodshJ0qDovDg/L50Sn4h4pwISowZ2VNTd+Xso4I2uc4DP98yuzyzAomrWn0cQUGNVyuErRlJ9V6soLbFiuk+aYA4CE7aygR79/maCuVSMqIbA1bXWS9WPEFpQhlExSnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RdmjXG7420KWh8/jN2HQjnhf2Q2MrKeJCkhOu4lVcFs=;
 b=n7009cbBfR3UBMiuxSqgvgOkY8nIHRq3rqsed9eGmXJbVXGcI0hoxU1SjCgVbdE+w4JfejQte/bkIO9FxxNwIwSyMFD7qogepJi58kgQbFWIWawBYEOpPN5MLHq7wGM6kDqaEWzCyRWDMQNVFzOXx8xvrf9H8l23kOKxOOkkCttq5avcDO1Pr2OFB37y+nbdNAWICHnk8KNgPABjiKIljhWSQ4sbQ0+cZ6R2YJ3sp24InnlE4Yf4k9VdYmMrgzPqP59K0SZYPuX6++DIiuYWRZtdLM5+1fNFonGBWKDRqn2zOWqrlLZLWt/6woLfACDi14Aejft6FV8JU7XY9lSLJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RdmjXG7420KWh8/jN2HQjnhf2Q2MrKeJCkhOu4lVcFs=;
 b=dAnP4hD29ZS6e+D/es3FgFoWbFkS08H6El/QGvMp17npYACmdPs7//Ih/qZu0R/grdONNzBCMnonuHmL75brTtGxV4IroF3AV1FKwHTR+TPCWVJnXOHu/9vPWdvew+w8fVZ+10LxcWUzGQcWWeAxsPN8a58lVYZs8jxitOUHlLs=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3885.namprd11.prod.outlook.com (10.255.180.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 23 Oct 2019 23:39:31 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2347.029; Wed, 23 Oct 2019
 23:39:31 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 08/22] mtd: spi-nor: Rework write_enable/disable()
Thread-Topic: [PATCH v2 08/22] mtd: spi-nor: Rework write_enable/disable()
Thread-Index: AQHVcqwmGxayarzEFkyHj/sWgnNJNqdTkUSAgBV/k4A=
Date: Wed, 23 Oct 2019 23:39:31 +0000
Message-ID: <34fbb0d7-ee8f-a6d7-4a3e-d64f2f8555ff@microchip.com>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
 <20190924074533.6618-9-tudor.ambarus@microchip.com>
 <20191010092117.4c5018a8@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20191010092117.4c5018a8@dhcp-172-31-174-146.wireless.concordia.ca>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0701CA0045.eurprd07.prod.outlook.com
 (2603:10a6:800:90::31) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.120.239.29]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db2dfadd-4b5a-4438-19ac-08d75812407d
x-ms-traffictypediagnostic: MN2PR11MB3885:
x-microsoft-antispam-prvs: <MN2PR11MB38855D5FA398C4BCF80AE2F2F06B0@MN2PR11MB3885.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(366004)(346002)(136003)(396003)(39860400002)(376002)(189003)(199004)(486006)(476003)(316002)(71190400001)(71200400001)(5660300002)(6246003)(2616005)(11346002)(4326008)(186003)(76176011)(66556008)(53546011)(66066001)(6506007)(64756008)(66946007)(66476007)(52116002)(8936002)(6436002)(66446008)(386003)(3846002)(6116002)(2906002)(229853002)(14454004)(8676002)(6486002)(25786009)(99286004)(256004)(31686004)(7416002)(14444005)(478600001)(81156014)(81166006)(26005)(54906003)(305945005)(6916009)(6512007)(7736002)(86362001)(102836004)(31696002)(446003)(36756003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3885;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RoF+qe9VXtq5vCez5ZjO0w2sNTfz/0qSw8msjJjS6KE+om8VBLPx0UzhyJVhJObHFHvbrzJQQeEFX+3mpu+pVR4pWn168uAY+rkCDC6qtcfuVO+F/Triufov8g2Y176D0H9AVniF092XlkJmICQeSfyu3KylZ6KgMtnlz8GApEBZPVPC6uLBMHnbvj0W/elDmahoxQkI8y0OFm5UVfdHgv7uYEi04fZSA/09x0BZ++zZGIWIet0cbZ9D+93vGBREAQgN7O1KKJOYfONcblYNlFQ0xQ3NwsUHsyueMOgciH0vCYoGbL/HzjoCTFk1PyVKKuCrME5qZQFM+3/eib6cBw4dwhX2Mgyyx/LQbwyW6ub2ZP976L/Xuuubfs02iVou76/mfs09og5Lp2ZRRaI1pyWTkdC0sh67znm3Yov37DM3C2/6JRa78dFg0Na/dArx
x-ms-exchange-transport-forked: True
Content-ID: <E7DCA71C3CF6514FA144E9772E45EACA@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: db2dfadd-4b5a-4438-19ac-08d75812407d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 23:39:31.2479 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NcBQ6/P57dwA9YCpIDu0F6D7LeB/T0uBDkH+TDVGNGAHSrU8VO0t6b06anD+MY95WwXh6ebjK/UlifSsXQqd5vxJSLESR0V+E2feusfMsKM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3885
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_163937_851286_86885850 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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



On 10/10/2019 10:21 AM, Boris Brezillon wrote:
> External E-Mail
> 
> 
> On Tue, 24 Sep 2019 07:46:18 +0000
> <Tudor.Ambarus@microchip.com> wrote:
> 
>> From: Tudor Ambarus <tudor.ambarus@microchip.com>
>>
>> static int write_enable(struct spi_nor *nor)
>> static int write_disable(struct spi_nor *nor)
>> become
>> static int spi_nor_write_enable(struct spi_nor *nor)
>> static int spi_nor_write_disable(struct spi_nor *nor)
>>
>> Check for errors after each call to them. Move them up in the
>> file as the first SPI NOR Register Operations, to avoid further
>> forward declarations.
> 
> Same here, split that in 3 patches please.

:)

> 
>>
>> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
>> ---
>>  drivers/mtd/spi-nor/spi-nor.c | 175 +++++++++++++++++++++++++++++-------------
>>  1 file changed, 120 insertions(+), 55 deletions(-)
>>
>> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
>> index 0fb124bd2e77..0aee068a5835 100644
>> --- a/drivers/mtd/spi-nor/spi-nor.c
>> +++ b/drivers/mtd/spi-nor/spi-nor.c
>> @@ -389,6 +389,64 @@ static ssize_t spi_nor_write_data(struct spi_nor *nor, loff_t to, size_t len,
>>  }
>>  
>>  /**
>> + * spi_nor_write_enable() - Set write enable latch with Write Enable command.
>> + * @nor:        pointer to 'struct spi_nor'
>> + *
>> + * Return: 0 on success, -errno otherwise.
>> + */
>> +static int spi_nor_write_enable(struct spi_nor *nor)
>> +{
>> +	int ret;
>> +
>> +	if (nor->spimem) {
>> +		struct spi_mem_op op =
>> +			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WREN, 1),
>> +				   SPI_MEM_OP_NO_ADDR,
>> +				   SPI_MEM_OP_NO_DUMMY,
>> +				   SPI_MEM_OP_NO_DATA);
>> +
>> +		ret = spi_mem_exec_op(nor->spimem, &op);
>> +	} else {
>> +		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_WREN,
>> +						     NULL, 0);
>> +	}
>> +
>> +	if (ret)
>> +		dev_err(nor->dev, "error %d on Write Enable\n", ret);
> 
> Do we really need these error messages? I mean, if there's an error it
> should be propagated to the upper layer, so maybe we should use
> dev_dbg() here.
> 

I find them useful. On error conditions, I would like to see what were the
difficulties when interacting with the hardware.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
