Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 292A7B8A67
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 07:24:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6k2/k0BJOd4fMG4YQbMbsk+0nITs+Nz+ZwI/r+5Enc=; b=sqohSEtwBkP5A2
	CXqPLdrviaAts/raYrN88mwzavJYwnNv4vljx7+ivEiBv6pALYk8D3Kfj4Zy6/vE+kbcll45VqZ/c
	QZ8i8BMHKa5u9RHQnGI+gttM3B6VE+/2X8WzE19/RACrI4cOXojsWunRjrtpPRDlQqFU8joWaLdzF
	au6ibbD2xl1kn56bap3RfsS7gnoKP2F26UqjmYfr9ruDI+vJPF4QFOO7t+u1uHfNN8f98teYj2OlJ
	UfAhuRBgzowteUgrKh+Ha0nKmnKl7EoY2wdtZ00XIbeOYlUGfWDVIZTgScjdzxDeEW0sBB4AzlNh+
	34d90JTz20PKsA92i79w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBBOy-0005bQ-Ck; Fri, 20 Sep 2019 05:24:16 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBBOI-0005Zz-R9; Fri, 20 Sep 2019 05:23:37 +0000
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
IronPort-SDR: CPVOfobjbAvwT/NF9DlL7QYo/26jpxI75ES9vjrLrR35SoQhNvQFmnOWSSIAHXlHGDjIZc1OMd
 fpGDQ+tTVd267cRj/7ka8RlLgRgWrZ9dSZjVOfdMX7ck0RyEh9tBcdY28t19KlVH9zgG7u5CfW
 ZQJhuBzugx54SegJWykl1ZHgGalfhMcW9qWrcekpydekW3kADKWVBWV2BYZSnQxARoEbGiHsHc
 FRlAPjSdOnUSnGIUZah8yBQ4nstUMif4QgXjkoAUaT2jFHrBBVIoS3BAIfh+AxL2HapDYvyT+L
 nyU=
X-IronPort-AV: E=Sophos;i="5.64,527,1559545200"; d="scan'208";a="51221959"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Sep 2019 22:23:28 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Sep 2019 22:23:28 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 19 Sep 2019 22:23:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BCbPi9aLFQs4TTtyFJC8Drdc69m9emXYsWxD1mV1SkN1c8JIClf/JV7VbSN+2ei8xp5QVZTD2BiGX7ajwJF3XSJl5Junhb+IFn9ioI4Heif65HTpAhD2tTEHeYVY0EsePTjrtJEWXnHBekel4UyrFn7U+ztbn0rpA9MIH6a0p0UF5vZ3LGfxMBmNJZXt+0AmIX7Octyo8y79KAHQLTtgb7X4r+w1xvsxy0bvZiDvbZ4MHfSTOlbyvywXbRHHb4FV7Q4c3yRXWTBrkLXvQRtXI2zCebaE0+k3V0UPyWyBzzwN4pVp/w9nMTmXSsNKl14U+C8hB9rT7URqvoWyusgszg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AaOemcgOXJ1MG2hxzAouc6CXqsDMmP0ta0KYa6QkY7I=;
 b=lCF01A1xXZNHFx3Wb1hvu2ToxpCDVGRBT/0EeaLSxtAZFspGXGNNuL5HKHFed2qlHD4Qv1hD5Qf7SCVRINh2AVKaueq6FYFR+56LNK+jTFWQGSrw6EpRCt6/bWpe7s0WMgjakFSSwaUNRVDxBqSOX3vK2MSHK8UY4BV7Z5QU7gNJbYaFbITAi3W5H8Q9MBhl3EJ4bUXH+kVuyc377VZ96yO9YfMxI7KRMRX0qwX1796eHWO7oa/hSFDdEveZyt9hxk8dWWvTR2FMXzHyJ+9q0miAkAMDvti9hmjI8ibOF7GHs18MnrzdtYFgQ3nvEK721G+puHR5LdZo6JoYYPi1Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AaOemcgOXJ1MG2hxzAouc6CXqsDMmP0ta0KYa6QkY7I=;
 b=WubN7XfzN64R49QaAIUaK0LhmoRqO4xZMAXhEOI16PPGMNeuiJVs26VgHBNazSNabH80r2p/Qkhs6GdKnmmweZnHkADq48h6WpBruVYcodH3HpQUyIg+qPDNpufqnaQLNLL0IhI0ky5+t9eZKt2W3l2VnyZAJfIG6COtR4heKcM=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3790.namprd11.prod.outlook.com (20.178.253.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Fri, 20 Sep 2019 05:23:26 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2263.023; Fri, 20 Sep 2019
 05:23:26 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>
Subject: Re: [PATCH 17/23] mtd: spi-nor: Fix clearing of QE bit on
 lock()/unlock()
Thread-Topic: [PATCH 17/23] mtd: spi-nor: Fix clearing of QE bit on
 lock()/unlock()
Thread-Index: AQHVbXBXffWwZrBoIkKrGGyrhA4/GaczE40AgAD4lQA=
Date: Fri, 20 Sep 2019 05:23:26 +0000
Message-ID: <06a6e4e8-6802-3f85-ec3c-6295cd703c85@microchip.com>
References: <20190917155426.7432-1-tudor.ambarus@microchip.com>
 <20190917155426.7432-18-tudor.ambarus@microchip.com>
 <dceca616-2b98-9bc8-73e4-32fb06fc753d@ti.com>
In-Reply-To: <dceca616-2b98-9bc8-73e4-32fb06fc753d@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR08CA0186.eurprd08.prod.outlook.com
 (2603:10a6:800:d2::16) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c0cac818-8de3-4874-6805-08d73d8aa9f9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3790; 
x-ms-traffictypediagnostic: MN2PR11MB3790:
x-microsoft-antispam-prvs: <MN2PR11MB37900B6CB67A8F69ED04A320F0880@MN2PR11MB3790.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0166B75B74
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(136003)(376002)(346002)(366004)(199004)(189003)(54906003)(71200400001)(316002)(6506007)(3846002)(386003)(476003)(102836004)(446003)(71190400001)(186003)(53546011)(486006)(229853002)(66446008)(99286004)(2616005)(6246003)(6116002)(52116002)(305945005)(11346002)(31686004)(7736002)(4326008)(66556008)(5660300002)(2501003)(6436002)(86362001)(66476007)(81156014)(81166006)(8936002)(110136005)(14454004)(25786009)(2201001)(256004)(7416002)(66066001)(6512007)(36756003)(8676002)(76176011)(26005)(14444005)(64756008)(2906002)(478600001)(66946007)(31696002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3790;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZvOAhhsGaIPRHiKwLZyw5Kj+71YuARSIsiUQE2y8O/gyJc1HpjD6YTc20hQySt29uyO9Ne/HXSlH7jbyplXAPUeFp7WO9KGPpgAy40e4syIQC7nnhjk0VVW1Nz4T6DJIFnLBeJOT/yWuyMA9vJB4LeJ/9NPlsOp4WHgQAYc05y5JjbJ4dHZdwwlHgbTKgJ9mjzZ5Pa3Ji+Hm//npbqPH3GKTA8wR9kQIDblD5OHGJIiwpCzs6+DKrBNydXo4S09WngUNl2dxVLuLjr6z5dHQYdTT53v+BvBBBra6NcjHsvoGYGpVCNVf+czL4imv0s/LZ68hruo6J7HmEumXrGo+Wlp3g0dXLYs6PT3f5I0MGi/nUrujZTZhaNyA+W9i5fSkz22aKUxSgZptsEanvMfkCwT9n5AtNvLPxGxlzngo8fA=
x-ms-exchange-transport-forked: True
Content-ID: <C2F6B467087FEE42995F694D31906562@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c0cac818-8de3-4874-6805-08d73d8aa9f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2019 05:23:26.4389 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9PzirPctoByOqdv7vJqix1HJ7MgDqMLB7PSmQPXDFmcT7pS/udGktDjkuqVlL99g68j6C6rH043rutTyZrKqkAbsxP8hWlx44UaOfOEf0QM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3790
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_222335_103199_08CFD28A 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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

Hi, Vignesh,

On 09/19/2019 05:33 PM, Vignesh Raghavendra wrote:
> External E-Mail
> 
> 
> Hi Tudor
> 
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
> 
> Assuming SNOR_F_NO_READ_CR is not set...
> 
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
>> +		sr_cr[1] = CR_QUAD_EN_SPAN;
>> +	} else {
>> +		sr_cr[1] = 0;
>> +	}
>> +
> 
> CR_QUAD_EN_SPAN will not be in sr_cr[1] when we reach here. So code
> won't enable quad mode.
> 

I get the problem now. spi_nor_write_16bit_sr_and_check() does not modify the
value of the QE bit, which is good in the lock/unlock() case. We want to
lock/unlock() without enabling or disabling the Quad Mode.

As you found, the problem comes later in spi_nor_sr2_bit1_quad_enable() because
I use there spi_nor_write_16bit_sr_and_check() which keeps the value of the QE
bit, without setting it to one, so the spi_nor_sr2_bit1_quad_enable() did not
enable the Quad Mode if not previously enabled.

What I'll do is to introduce a new argument to:
static int spi_nor_write_16bit_sr_and_check(struct spi_nor *nor, u8 status_new,
					    u8 mask, bool set_quad_enable)

and do a
if (set_quad_enable)
	sr_cr[1] |= CR_QUAD_EN_SPAN;
after initializing sr_cr[1]

The lock/unlock() methods will call the function with set_quad_enable being
false (we don't want to modify the QE value), and the
spi_nor_sr2_bit1_quad_enable() will call it with set_quad_enable being true, we
want to set QE to one (we don't care of the QE bit previous value).

We'll avoid code duplication, lock/unlock() and spi_nor_sr2_bit1_quad_enable()
calling the same method.

Cheers,
ta
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
