Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD646BC390
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 09:59:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gL1hyYzsk9CriOQsmjO8n2Z+KUfVxIAzA7Mx+i5MtfQ=; b=MtE3KwO/QL5iM6
	Pf4YDTMj1OS8MQ7nKW80N/tEvUfoDlj05BGIN5wc2x6Lqn/dyFpRUIAKC0Gf/GMDcnDAXT9sVd7L3
	QIkyngY62VrHthMr0CNxi7kqPJo6ToPx0dGE2UDsoY5U68XQWuUThlxnfJ5AIZA2hP0N5CZZysFh7
	+R2IhetHwGn8ShoxqJtQvyqD8PnLNtE5yfIQIBlgmQGtiRvG+JCDGayyXFNRlE2FAD3Hn0nKGxwCz
	3HhmPxSuLefirB37ULJyDmpCbPjFZYabVow1BgWj9D4O0F25vLwcGCBoUTvbInPhjssSsuKH2Z/AW
	cAzhuNYbhoqGnB2B1UMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfj8-0007w2-Jc; Tue, 24 Sep 2019 07:59:14 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfX9-0004X9-2c; Tue, 24 Sep 2019 07:46:56 +0000
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
IronPort-SDR: yn9SyEcSYkBBLNBKHw1CpGPp8s6Flwxbxz3qA4MPZJuQJBBFr8vGgxBhiw47Q8+zunuLKBqxyj
 9xNm4rO7o4h6BHfq22Y90nGXAmv9kGBr0kNoGexisfgPD2vLvwaT44qxxsNrLzJfoZ/DFPjUGK
 OA/9M4w8ZthK8tDpaxaleMds50AR9kXofo8prqyi8vCRUW8n7SPSWb9IenKvtZTe6jEY6j48vA
 HSl+ILm9suKSkQybcVpA1o4sQ2a1wQvcgvkJlNB6WeoEqrMnenRUA6kRj1iJAbb5OkY4wPd38G
 t0M=
X-IronPort-AV: E=Sophos;i="5.64,543,1559545200"; d="scan'208";a="49066210"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Sep 2019 00:46:50 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 24 Sep 2019 00:46:49 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 24 Sep 2019 00:46:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TAn/coOfQLs33RXey0oyfiqnoJBTEtPnCi2LuGcCC+4LveoTEd4sz1u+BAXvXNIDNKpvLdvB06E52arECdeN3F6t9X1+SsMMf2Qz+HqYzxgFtzFH2hD1GGUkB284g0vbGxYS0lt07T1LRMZFQF8c/+G0IOBsn4PUGtUH8PKSmE/TwM/WHUgPow73L7I9UmJG02SgxjtHvr/B6QwKqQRkzmcEL2wmOICy8UasRXoVw9uh5z2TC8cTZbDHePyfSCFTbqtqDfBkLMv7n0CfX24g2NfuDAYlpXxGWXZT1FCewZJAUUAsMDcLuJrxvSuQf4siTU7TfaxhMp3N/BAuPf0hHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G2o5iROGa2/nMzbRlyxWi6Ag/9MU+bYyU3SOvimX1Dg=;
 b=HFr3A7vo8aK18m7V0x3qWFQ1+CDnD8HE9Ji+j8TUgoP6D8vo5nLBtuAoXs6dk6lsi+RElweW/b2LoOY3oJEEZNx3XeYfTJ9oG7NZTYb85nOvW5rFPgJkDEC7q6yYd0zOfgwQGgoqts7dO391jVHfrNbTLJ8+jaY2axChDEfv+af0u7fw3fPfu8lrvZBmqaPnfNxTqTpmD4OLYZVGh4LlJsUDZgsJT5fyQ5DBt/I7/uNpdykbutT1nd0Tut1rKz/0HZtrama7mBEai57tcggzdBVYzGqdCTfz4FJpjzFb1NaSSISAwu7IGOcdzaGlUGOFtUp5m/WhvvoM8wNUWqdq3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G2o5iROGa2/nMzbRlyxWi6Ag/9MU+bYyU3SOvimX1Dg=;
 b=iTPyGhDS1ycxBdJZOAaWKd5uIlOFfC9DCnH8vGV7HjfndbUYTp+Daoan34u70UVntEgiwP84uAJea2xfPt3sVPW1DTuBhs0PgOrqFd8WRQ00JnfTKb5Lbptwtmd9FcyEArJnm4h4z49SQbj+QAeLy+MHJaoTckdxfP2WubpxI7k=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4319.namprd11.prod.outlook.com (52.135.39.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.26; Tue, 24 Sep 2019 07:46:47 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 07:46:47 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <linux-mtd@lists.infradead.org>,
 <geert+renesas@glider.be>, <jonas@norrbonn.se>
Subject: [PATCH v2 17/22] mtd: spi-nor: Check all the bits written, not just
 the BP ones
Thread-Topic: [PATCH v2 17/22] mtd: spi-nor: Check all the bits written, not
 just the BP ones
Thread-Index: AQHVcqw3dowCcvyq1024oXdWsYKuzA==
Date: Tue, 24 Sep 2019 07:46:47 +0000
Message-ID: <20190924074533.6618-18-tudor.ambarus@microchip.com>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190924074533.6618-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0101CA0082.eurprd01.prod.exchangelabs.com
 (2603:10a6:800:1f::50) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2716c3aa-20ab-484f-179a-08d740c35a48
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4319; 
x-ms-traffictypediagnostic: MN2PR11MB4319:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4319DB8755963A8A3D862DC0F0840@MN2PR11MB4319.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(1496009)(366004)(396003)(136003)(346002)(39860400002)(376002)(189003)(199004)(14444005)(5660300002)(2201001)(6436002)(256004)(86362001)(11346002)(14454004)(476003)(2501003)(305945005)(186003)(2616005)(26005)(386003)(102836004)(6506007)(25786009)(6486002)(8936002)(81156014)(2906002)(3846002)(81166006)(107886003)(7736002)(8676002)(6512007)(486006)(36756003)(52116002)(71200400001)(71190400001)(50226002)(446003)(66446008)(76176011)(99286004)(66946007)(4326008)(66476007)(64756008)(66556008)(6116002)(54906003)(110136005)(66066001)(316002)(1076003)(7416002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4319;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VicxnCLdsyMhwib03iNCzCJ7ceqnuKpS6m80Vb749LVDXXhRvBqbmUvXMfUWMLuX1jhRnWZnViaaGgIjkotlYvEAwKIkWNTunlYX7oSSQfMPtYUu0e0WRtLbQPo0E/76AxcGNJVGcy5gi63v0cU86lhxpOsXBz5wB0/FrAnRQREU0VhqlgsPWnayRTdJbfCCMsU6AxlfD9KOIVKK0mQRNYTwpVvfHaTSsCVzpQinI+XokAzE5mgsLdm7NRlUHIYGQ5USzaC7QsONZ4yhyG2H45SNZ2ZvZOtPSDDRNmfq7s/wIO6Tqlt1rsa66EyqHqtzbIgoIt4EoaVJNb+4rpaGwUl9PiwlRvgGGOyqKe/lX1+D5pu3zOy6FOWuB9eDl2nXYLC/vgNy1BYjphIwtKolja1CgGldkY7Y3pUfbKcBYE4=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2716c3aa-20ab-484f-179a-08d740c35a48
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 07:46:47.4928 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ut9AA2x27VUnXW19LO2+fdN4H6JIbNKf8hUIPZgYHdhwxg6FoF0VR+T65SN8c4cO8g64URejucS9ViolC4Nbt5wPKQdDr7l7I+R2y9cVndU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4319
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_004651_183373_DC8645C0 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-aspeed@lists.ozlabs.org, Tudor.Ambarus@microchip.com, andrew@aj.id.au,
 richard@nod.at, linux-kernel@vger.kernel.org, vz@mleia.com,
 linux-mediatek@lists.infradead.org, joel@jms.id.au, miquel.raynal@bootlin.com,
 matthias.bgg@gmail.com, computersforpeace@gmail.com, dwmw2@infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Check that all the bits written in the write_sr_and_check() method
match the status_new received value. Failing to write the other bits
is dangerous too, extend the check.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 6429c855547e..48bcb2ee1be5 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1493,7 +1493,7 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 }
 
 /* Write status register and ensure bits in mask match written values */
-static int write_sr_and_check(struct spi_nor *nor, u8 status_new, u8 mask)
+static int write_sr_and_check(struct spi_nor *nor, u8 status_new)
 {
 	int ret;
 
@@ -1507,7 +1507,7 @@ static int write_sr_and_check(struct spi_nor *nor, u8 status_new, u8 mask)
 	if (ret)
 		return ret;
 
-	return ((nor->bouncebuf[0] & mask) != (status_new & mask)) ? -EIO : 0;
+	return (nor->bouncebuf[0] != status_new) ? -EIO : 0;
 }
 
 static void stm_get_locked_range(struct spi_nor *nor, u8 sr, loff_t *ofs,
@@ -1673,7 +1673,7 @@ static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 	if ((status_new & mask) < (status_old & mask))
 		return -EINVAL;
 
-	return write_sr_and_check(nor, status_new, mask);
+	return write_sr_and_check(nor, status_new);
 }
 
 /*
@@ -1758,7 +1758,7 @@ static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 	if ((status_new & mask) > (status_old & mask))
 		return -EINVAL;
 
-	return write_sr_and_check(nor, status_new, mask);
+	return write_sr_and_check(nor, status_new);
 }
 
 /*
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
