Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 010B6173C49
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:56:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o95cBE7taRNXNOscwIzQSeUCsfznp+8f698KwalgJTU=; b=ff8S4xo796D+R5
	9J5pIvHs6Hy67Pq/54NB2GdUpGy8ws5128CGv/hjNhdOLkI6bB7s/a/9HBemjc2s/lGMudYVijHaO
	M+fYU+GLSTgeNbccq1lzfkntaKUD0luo0GEWFQZicz3mp1DGFhXqGiizyflIRlgfj/zEsD+nscXQ7
	6BP36B8NmyPUMGiUgm31pt2gQVE/u/TWMmbYi3qfSMGv187KpIdXW++cYSY1ep9eWLDvfyFKWpr6E
	8oq6HcTDdHo4mm23O6BmXj7eABtfZx+t8MKOPAQTugY4gxQH7o7XGIc8AL2Xb57AK80WhldaFEwlr
	sx8tcOtyhtr5UKoQ5lMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hzc-000588-34; Fri, 28 Feb 2020 15:56:00 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hzQ-00057f-Gc
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 15:55:52 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: RMaS0FOf501JGnpmIWhULk3aJD4tHpBboPN4ePSrUUu8CpvOgwQEY3oh/4WQ4gX6x7GFblghwK
 1hkMslQmPa5DQGQoyVWbKZZkBkSB7PHuaSnOodIrseYNm6h6ef56OMvPyZNh3FTVexWQT092p2
 iZxK00dgy7Py6cO5S6Vz2i/7uJwlZ8z1cGX0PxEXqoEV3FQWvVQf+esFG0gKSbCHz343u7uLyw
 /KzqpQqiQ2nCX2Psq+vxNG1Y5nEzc8TTIfNGxiim0d9hvF745WvboXmysNsERnOk46X1AkQhOv
 tos=
X-IronPort-AV: E=Sophos;i="5.70,496,1574146800"; d="scan'208";a="70195308"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 Feb 2020 08:55:43 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 28 Feb 2020 08:55:36 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 28 Feb 2020 08:55:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BuexjJOrjojsaIYpBL4P14ZVNxtuLa3+xQnD5DKLr5c58MzdgkMxWryMy7nKf59aHrBkVA/w63+tpU2LKWxLWYW6iB+fukW+nUqnMWbt2hBeA3+D4s6EvXibjBAUO8ktDHrJtCJT9ZVWQK6D/vEmAvuosr7of2HQQbQ+jvHaq6aCHvbpafTikdM2cNElXBGTOJdh7oLSo00PJk7KKiNOGeXYJw+fd+AlQ16DGrWhSDwLJO1eEF/wUVK+tGf6Pvg9xvDFwrDR69nHYXslcUaZ+S1nVVogiJrMWZjuCiitd+V+hpDwisA7090XLqEHlLRlsTtLB9ipC7uGKNSd/75afQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fes4+aju9YtsQ1XRGSIDz3alUxJelE6iCOFWzIVnkbM=;
 b=k9mx/KCe845jQdyAJdp94N8pXBjih/6VXrGqtzaXrmPVKGawfIhZqFefesgYEHUGHhcsDM9zgZYbYd9aNGJy8Mr3Lm8+ktufzXtNP22Soiqn3VhoZJkLebj0OJJD4bh+eiQpE4AR6kUnRNWjicxAvISssm0/zttz4TtegNH0EHpfIGgrhZEPkek7kA10M00//9Rz8a3lXGGKQT0lL7OX2i15bmHJc9iSddUBtFUhH2USOFcbWEldO3tSV5He0KV/F5zRtC4u2zC2P7fGfmp9rfI+9nQtq077wP2Ad8IMdbh0toTQkuyrFu1BH4eRjN9ZnNl7xzUBj9yCAoNN4qwy/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fes4+aju9YtsQ1XRGSIDz3alUxJelE6iCOFWzIVnkbM=;
 b=THsR034YViplRUbJ4LVlKZg7f4rSLGSFIWBDz2dyBv12xYV78BzgRrD95qFC6rI0+mShAiKrY8g27d1ei9xrah4cQXqmil9VgbhQqCxM9Qd7+QOSnxBw73Ltz9ypivU8dxla3vwvEG5o4Vwtt++36l6iSqYqdLier6VRcgnnl5E=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4029.namprd11.prod.outlook.com (2603:10b6:208:155::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.16; Fri, 28 Feb
 2020 15:55:32 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2772.012; Fri, 28 Feb 2020
 15:55:32 +0000
From: <Tudor.Ambarus@microchip.com>
To: <broonie@kernel.org>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <linux-spi@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] spi: atmel-quadspi: fix possible MMIO window size overrun
Thread-Topic: [PATCH] spi: atmel-quadspi: fix possible MMIO window size overrun
Thread-Index: AQHV7k+BBwfvgtg7FEm+k3CHmHqO2w==
Date: Fri, 28 Feb 2020 15:55:32 +0000
Message-ID: <20200228155437.1558219-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ef5a3abc-72e3-4cda-4429-08d7bc66a422
x-ms-traffictypediagnostic: MN2PR11MB4029:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4029980FA7E5D3EBCA084E79F0E80@MN2PR11MB4029.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1148;
x-forefront-prvs: 0327618309
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(136003)(366004)(376002)(346002)(189003)(199004)(316002)(478600001)(26005)(5660300002)(64756008)(6506007)(2616005)(66476007)(66556008)(186003)(66446008)(110136005)(86362001)(91956017)(66946007)(76116006)(8936002)(6512007)(4326008)(2906002)(8676002)(1076003)(6486002)(36756003)(107886003)(71200400001)(81166006)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4029;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NVg5Ekn4i0T4/zt7Nr9jw+bb3w+FHOGNfrKTnFG5+CNQGZv39TAOca7MD5XQdHia4nLAUkPYQHrULcKXS9jKFUAOTZBSBF7rOv891rUjcMijc7vZVX5D1ORO4V4w3/gG+dKuiTf3VWUg1N1dJ36dkWOVpRa+z6AJR6x9fiaUiyTTrj9S+IX27q0irRRWY6zYEGhL7HMr3bKNmcVkwgFrfsASOZrCgv+IFTjU75RqURuLDpxSWc/rejsX3rF6E371Ojmss+MoSjAS7Ozxr05uE6TkZSjfSbcLPTQj4qnQdDFVl44NfhJc73hH6kuvkYVa6tm3WE2E+/wx7X9IIu5DAQshZ7dyythHbJIW3yuETnzquKxiCRRxmYs2jtdzEjhfdhL06yVlZl9P7EoBgOfN3IJi1/qMJ+g/AwmAVP0lgvDfoImI5E1/pg+s17fml3RA
x-ms-exchange-antispam-messagedata: 88y2kOB0sDQakjOe0mINRrUXsmuPovQuT2nOIjTHZNFbaty3wWK/13eKt1sVFABrufT/hgoYMZwK1ugNuGAkWr84urGvhdf4YgXc7z9gqwJ/eLwLVSRTM+6tCwu7kMRvgthLfc1n666V33TLf1DsLg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ef5a3abc-72e3-4cda-4429-08d7bc66a422
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2020 15:55:32.1970 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3rAjEpBaR+Drb4MmZD/nlKMuWp2lEVt+1JCeg90V9nL1AKKuqoKgjy7uaFeHkrBjJj4QFEbSN+vmb4j+4ocayNzBQjTCiAb44C83PzRUZrg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_075548_640204_DCAA6F13 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

The QSPI controller memory space is limited to 128MB:
0x9000_00000-0x9800_00000/0XD000_0000--0XD800_0000.

There are nor flashes that are bigger in size than the memory size
supported by the controller: Micron MT25QL02G (256 MB).

Check if the address exceeds the MMIO window size. An improvement
would be to add support for regular SPI mode and fall back to it
when the flash memories overrun the controller's memory space.

Fixes: 0e6aae08e9ae ("spi: Add QuadSPI driver for Atmel SAMA5D2")
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/spi/atmel-quadspi.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
index fd8007ebb145..13def7f78b9e 100644
--- a/drivers/spi/atmel-quadspi.c
+++ b/drivers/spi/atmel-quadspi.c
@@ -149,6 +149,7 @@ struct atmel_qspi {
 	struct clk		*qspick;
 	struct platform_device	*pdev;
 	const struct atmel_qspi_caps *caps;
+	resource_size_t		mmap_size;
 	u32			pending;
 	u32			mr;
 	u32			scr;
@@ -329,6 +330,14 @@ static int atmel_qspi_exec_op(struct spi_mem *mem, const struct spi_mem_op *op)
 	u32 sr, offset;
 	int err;
 
+	/*
+	 * Check if the address exceeds the MMIO window size. An improvement
+	 * would be to add support for regular SPI mode and fall back to it
+	 * when the flash memories overrun the controller's memory space.
+	 */
+	if (op->addr.val + op->data.nbytes > aq->mmap_size)
+		return -ENOTSUPP;
+
 	err = atmel_qspi_set_cfg(aq, op, &offset);
 	if (err)
 		return err;
@@ -480,6 +489,8 @@ static int atmel_qspi_probe(struct platform_device *pdev)
 		goto exit;
 	}
 
+	aq->mmap_size = resource_size(res);
+
 	/* Get the peripheral clock */
 	aq->pclk = devm_clk_get(&pdev->dev, "pclk");
 	if (IS_ERR(aq->pclk))
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
