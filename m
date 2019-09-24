Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD775BC3A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 10:01:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P24NGzxi8eHOSHckoJVWy4Eif+gV2R+xKBDDzpMAqsE=; b=Jp9/xp9Y8sdQHa
	qKXpdxBHZniuJmmDRUHgZq7FB9E+rjYZn+ZiwXl7g1aOT6peSqihTnRxZjIaFaxcW7DUpOrt3ipoe
	SuYs6oEI/zlp0QUPF76/wIT6/EYEX/LmHdfkYm3nYG0WKDc4FJPL2JSESEPoZYmoCLW6HV+iDffL/
	1oLQMfPTEjV1F/Gr4hHRp767XZCIkQ13Loh1vNpxQM57U0sYAeoDQ4mFSMic+WA6/en2SfFdE/Toi
	UkjeaI9ZbunHIPRD2Kqjj2KqFd970/0Er73R+dWh0irum3NzMwL+3SdfNZ/KDdGA8Ba79n0JNWskr
	Mqt66vV3P24/Z+4ntcOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCflD-0002H4-1o; Tue, 24 Sep 2019 08:01:23 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfXL-0004fr-6U; Tue, 24 Sep 2019 07:47:07 +0000
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
IronPort-SDR: f+bIJzFgMl9lo6A3SyoxVAtJG1+IaHVM+k0RPzp0GcLQ8rOboe0yxvGvgymxhdOakrNYRG8wW6
 SANCIlJp3PpxEaHPgIY7+diZeV6QNBQPzmqaAAQeyzBUPEmvSFVC8CDyuhP5/+oZLYf7mBnouX
 YXea0HN4yWnA7IBIa//pR+pzNUAXUoa/2ND50+FY5Jk4f8I1j92lhtBG59pnyP23mlJ9JGleYl
 9ETWV3GdZUW5yHzTYvwYVyhaCwcR5dJL8wGJVYti6if9HjN2Yw3qIZGPfRAqUmw7ip7NxjCAJG
 b2Y=
X-IronPort-AV: E=Sophos;i="5.64,543,1559545200"; d="scan'208";a="51606618"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Sep 2019 00:47:02 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 24 Sep 2019 00:47:01 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 24 Sep 2019 00:47:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QsRTTn12aDDuJMlqXAQ64RE8ilwnuxSzMgaCrPGfyur+XMMtyf9qIfqBjxypMvtb47KdTEDR3ghR1UfhR+0bMFMvkgUcQLSKz+OOBUlYNOkq3cZYRNXoQQ5rYokyaVHVI5enfEqlIEShcQET3FmeE35K4yoRAw2NaY+2t1C2/91qkDbRcHKZjv7/DytctUt2TjbJvSNRGpMZCu23syPbQ8w+N5KW/wLiFOtTKkPRlBrmgYrWL18Sos1fR6zi1clLKU3MlCHM/5LkJZimvHOPXx0+ZJ2kR6IS/KwSFy4TzBYPbJsNqu+lmrygheo9RnrZRu3VKP1wBnHlncuJM93hHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cz0Ea8zXNjo3GXbLVuGPvWLNLjEA53AIsoQ9wmDJ9aw=;
 b=WRGNqgtvq0oK3zl9FUYrtbWK37kR8D9MDQ6dVeFo7/ltHj3ToKZV129ogXjPJEOlrvWQeSIx0VaTwAr46FiecAub3FYOfnCHQr5c+Sksl3pB6hVP5JPr/8hhhWDUR8vOPRBrU/VT0T4LWX0oIgP3AZgssZ+hUrv0jo90gX1hgT+DMl3qClk7l/uApHRQxx+f/XBQVWbR4HidnEGSQ5W3KlM1fYKyRgYlxx1Oxk/3O62TTIPCeF59ZQEc6/rRvq0fjvW0lKLweHNW5ygyV0eb6ogbzUnzcli8u282VErqxdrUA50/P5C0pQ25hNGXADu7Cfw2Chf53KmZumfH8mdY7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cz0Ea8zXNjo3GXbLVuGPvWLNLjEA53AIsoQ9wmDJ9aw=;
 b=XucbNqGWJhyNS0ZtZ6y+sl61k+Q/p/ETYUffFJciXJjLfWxkVaOYB6YlXgZN3WkLDuJ8HJX7tWpBwTBX8s6ZH6WHJu/tnPsN6tm4EN7MUq3j0L4Rc3YKp6DnNI8v2+xccIChoG+muuL9Y3niTlgZT6L70WQtKGuWQXWaZnHizZc=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4319.namprd11.prod.outlook.com (52.135.39.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.26; Tue, 24 Sep 2019 07:47:00 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 07:47:00 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <linux-mtd@lists.infradead.org>,
 <geert+renesas@glider.be>, <jonas@norrbonn.se>
Subject: [PATCH v2 21/22] mtd: spi-nor: Update sr2_bit7_quad_enable()
Thread-Topic: [PATCH v2 21/22] mtd: spi-nor: Update sr2_bit7_quad_enable()
Thread-Index: AQHVcqw/7/hvqSeZZk2fV5BDSeD29Q==
Date: Tue, 24 Sep 2019 07:47:00 +0000
Message-ID: <20190924074533.6618-22-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: fb1f1616-d389-4068-23df-08d740c361be
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4319; 
x-ms-traffictypediagnostic: MN2PR11MB4319:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4319BF23102947491AF0C300F0840@MN2PR11MB4319.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(1496009)(366004)(396003)(136003)(346002)(39860400002)(376002)(189003)(199004)(5660300002)(2201001)(6436002)(256004)(86362001)(11346002)(14454004)(476003)(2501003)(305945005)(186003)(2616005)(26005)(386003)(102836004)(6506007)(25786009)(6486002)(8936002)(81156014)(2906002)(3846002)(81166006)(107886003)(7736002)(8676002)(6512007)(486006)(36756003)(52116002)(71200400001)(71190400001)(50226002)(446003)(66446008)(76176011)(99286004)(66946007)(4326008)(66476007)(64756008)(66556008)(6116002)(54906003)(110136005)(66066001)(316002)(1076003)(7416002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4319;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +G0gmzBE8dgKd0dGH/Rn45M6AHJD8vUFHIzmkFuHjuq3ZDWlQMVkcNLLbfubhI01Kt8wVGmA3BAuPdMdgne/gAymwpBJD8OszTd+eSrHuinzcCHDoTcFFXNnX70rz4oyru1d02sSIwBTt3q4cerTrcMqbB1uSChBi6SAZj/8Bv/dhRXgjCT2GMeKl5bCTSr3G8+jsSF7xNCWLOvTeErHEATuvGaIzoPj591Ke1j2lSnvX8Ju4gNLcwiGTiz+4nKZL0+w0KiB9YyADnq0khe7DGn238lT2QVf4fQXju+2hiUcUhHc9YbE6AazEQq/XF/yi9JmQcpyI7P6ZpjI3Yye0CCv7Em44h77Ju3gOTl98rTNw2wZ3VF/tMT4mQxAmGQ9IEHqYCvrq/UavC2ebIMDCK8/X5kJA7oUNbSUt27KqUo=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fb1f1616-d389-4068-23df-08d740c361be
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 07:47:00.0345 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4OnTv/Uw3Yigerlqbghs5kYug3w3zUGVFfWQ89hEWHOfu24M34lImaS8cH4hcJN/VxKCdDMZgIjbrKhXbM2guvLh5qUF+M0VfQycuduYPj0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4319
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_004703_364276_70CF1F07 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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

Rename the method to spi_nor_sr2_bit7_quad_enable(). Do the
read back test on all the eight bits of the Status Register,
not just the QE one.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 8fd1c04f75d9..a53e2cdc564c 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2038,7 +2038,7 @@ static int spi_nor_sr2_bit1_quad_enable(struct spi_nor *nor)
 }
 
 /**
- * sr2_bit7_quad_enable() - set QE bit in Status Register 2.
+ * spi_nor_sr2_bit7_quad_enable() - set QE bit in Status Register 2.
  * @nor:	pointer to a 'struct spi_nor'
  *
  * Set the Quad Enable (QE) bit in the Status Register 2.
@@ -2049,10 +2049,11 @@ static int spi_nor_sr2_bit1_quad_enable(struct spi_nor *nor)
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int sr2_bit7_quad_enable(struct spi_nor *nor)
+static int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
 {
 	u8 *sr2 = nor->bouncebuf;
 	int ret;
+	u8 sr2_written;
 
 	/* Check current Quad Enable bit value. */
 	ret = spi_nor_read_sr2(nor, sr2);
@@ -2069,13 +2070,15 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
 	if (ret)
 		return ret;
 
+	sr2_written = *sr2;
+
 	/* Read back and check it. */
 	ret = spi_nor_read_sr2(nor, sr2);
 	if (ret)
 		return ret;
 
-	if (!(*sr2 & SR2_QUAD_EN_BIT7)) {
-		dev_err(nor->dev, "SR2 Quad bit not set\n");
+	if (*sr2 != sr2_written) {
+		dev_err(nor->dev, "Read back test failed\n");
 		return -EIO;
 	}
 
@@ -3649,7 +3652,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 
 	case BFPT_DWORD15_QER_SR2_BIT7:
 		nor->flags &= ~SNOR_F_HAS_16BIT_SR;
-		flash->quad_enable = sr2_bit7_quad_enable;
+		flash->quad_enable = spi_nor_sr2_bit7_quad_enable;
 		break;
 
 	case BFPT_DWORD15_QER_SR2_BIT1:
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
