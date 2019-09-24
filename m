Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AA6BC3AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 10:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=twFgmMCg475wtBPcyIlUwh91ScJ4Nbmnu51qjYSo6jw=; b=pck62oW79og/Pl
	9o6ofUAYeAnQa+oUv0Yqy6urdE9M9aIIt19LGX6xvIhrIs1VOf0tsaBQ+m0JOoFcsRqsxBSCunK0A
	HCLl4JCJMsDbnPAvGymS+9P0LguTOGYIUmFr+7JsjBvnbPl1kbKe5PB77EgwrH/X8RrmdsZFjn6OS
	NOCwvoSGMfcWCI/cyJKbzkMxVet7GSPxSZ4Ja3nekrZrqN/R2wIswH+HWnKmlAYWn144TuhK6S6eX
	gwFZUAGYdArZ0p8i1zhoWc32aQCaJXbazCjV2caB+p8yvsbcdU8Y5g2s//ATNPXkl09RroPHSOyzi
	jHxxIH1On3ViGr3m3Amg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCflh-0002ka-4i; Tue, 24 Sep 2019 08:01:53 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfXQ-0004ky-Rr; Tue, 24 Sep 2019 07:47:10 +0000
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
IronPort-SDR: QKYD17TC5pFncjX69zco6JFlP3oxTKOTAB53eYxgAwvHWasiK/JsBPLdH8T4V5LMoTy0iDuH8E
 p/62bsi/s5u3rtP6ncQ0aAx0ExBcpRp9Av5e+NFnMrn5BSL2Z0H4LtGtJg+PMy1CKpqQMp80Ri
 DDj1pMdRLAEvCjwjXcjWK8sLqAsDP34Li7oBUBYXxf2bWa+NgSmww8YWNt7GnKMSpj1sCQ0nD0
 zVMeM9poiwLe9rTk7fzGIG8SLdgUwWUAt5Dsbm8y0tYob22lQzmicKd9I9lhIXNOFpBOYEJmD9
 IgI=
X-IronPort-AV: E=Sophos;i="5.64,543,1559545200"; d="scan'208";a="49066243"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Sep 2019 00:47:04 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 24 Sep 2019 00:46:58 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 24 Sep 2019 00:46:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XUHnYnIU5xFyc7FdRrFvLI8i98vKf6XlCFmtpXbftRc10rzxlw+uzvOwfOwBgESFXLM/AdA4dmV1kKLswn6E31PdMQEFQhF5xKQLW8iYtc270/xTlJRCcnnvpHSSGyqrLqjBB2SiB4k/+FFUntZfJSH9CMTtXWEmyirvkWON6h3PgcJk40LmFewQsdRnNp9F9GS4VQWaxz+hgDSU3zarK3z5Z0Ls9/ujyrGJ/bbfV2XEUicAZCMFivwr9KZ+cONlDWF1AuFmLgq56v/XwRM7lZGpyz3d3Bo37nzpsEKKT/tXt50rtiYQKCIh3IMWl2X4NMuoQXahzPH4JJuRMCRkbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HQkXDMU6SeytOoD7GisZLFHNIU2cfAH4FwVbHRJWo5c=;
 b=cw+AAGyIk71J9/3POtuXdLekM7lw+2GqaRYgGJ7iRpTGNTd1Ax9BkCdrVttKjlgvdfMBHw28GS/ey1HM6o02pvOayx1xEX+tYpAvAjFY/pLNpx1Bg3FJLeAa17U6zmGQwQaI26faTF1EFguek59s0S3zCqY9lufUsWRaPq4rekB4SbWtmQQBCXrvwa7b+PaC7U9f1e5ZoqgAYTDBcV9Rb5Hx9IF2052NxqLJHEJfmxnktEVGFaInXIrB8BC/lbpEsH9VIP2fqiJ9Srtpg/2+JZLb1WtGDwasQfdVXRnSb0K+Py/b3LbIWEdLOLhuQ2w3uODb90qdMiFjaCIGSjJHiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HQkXDMU6SeytOoD7GisZLFHNIU2cfAH4FwVbHRJWo5c=;
 b=ZWY2C4s80k0rflLB0qX0wksqJkZm8pNJ/Y7G+3slPUUtXPwNVCEzl/25z/fq/Z4HpMKYT/pArtRIlURou2BfBYi/Hc9eOXDn3oZCL/OX3QTaXglwQwYOBBEB+Rzo20OKfRSOPN74TMUVI3PejV3sRxm6/WlSTiQBpR3WXfSy6Wg=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4319.namprd11.prod.outlook.com (52.135.39.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.26; Tue, 24 Sep 2019 07:46:57 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 07:46:57 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <linux-mtd@lists.infradead.org>,
 <geert+renesas@glider.be>, <jonas@norrbonn.se>
Subject: [PATCH v2 20/22] mtd: spi-nor: Rework
 spansion(_no)_read_cr_quad_enable()
Thread-Topic: [PATCH v2 20/22] mtd: spi-nor: Rework
 spansion(_no)_read_cr_quad_enable()
Thread-Index: AQHVcqw9O8wrVibgKkm+8CqFsz6/Jw==
Date: Tue, 24 Sep 2019 07:46:56 +0000
Message-ID: <20190924074533.6618-21-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 27edcb96-9271-444c-304b-08d740c35feb
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4319; 
x-ms-traffictypediagnostic: MN2PR11MB4319:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4319E7977BFE935294B55620F0840@MN2PR11MB4319.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(1496009)(366004)(396003)(136003)(346002)(39860400002)(376002)(189003)(199004)(5660300002)(2201001)(6436002)(256004)(86362001)(11346002)(14454004)(476003)(2501003)(305945005)(186003)(2616005)(26005)(386003)(102836004)(6506007)(25786009)(6486002)(8936002)(81156014)(2906002)(3846002)(81166006)(107886003)(7736002)(8676002)(6512007)(486006)(36756003)(52116002)(71200400001)(71190400001)(50226002)(446003)(66446008)(76176011)(99286004)(66946007)(4326008)(66476007)(64756008)(66556008)(6116002)(54906003)(110136005)(66066001)(316002)(1076003)(7416002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4319;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xTo80QZOAf95Nd6iU2eXdpd+LDhYZVFq5Hwayfrn3bTDQcHh0zON62OkKfeuxKLDAXn1bmSKGEww56YBjfv9Mw3bTACwAirwKukvdQ1W1/3PN4xFYJgStJ8uZn0suResfHtppyG9JlHcKsl3isdQIgaA7msO1eLoYK8cuf/CA9skjMClFb8vs0Zde9bhpSdPK0vhOm32oivHqjwQLCpXwwgbNA8c+KoEN35zX9OgOjTz846qb5dDtjQ2cTQztuMQ8kbe59kteILVI+KQuQCeku8p2bOhMRJ/yOP9qXQ4jaeOQ1iFOSsgb9IG+Tz4SGir9Fg7LQkcRY9AcPCp84Xv1rsh6nEeYuRUcAwQBovWB/xp9uN0B7b6gsYkdeS64McQr+wXfZ1T6mjAT4E7gSoGyN+HwV7DZSJ2vNLVuV3HT54=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 27edcb96-9271-444c-304b-08d740c35feb
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 07:46:56.9632 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dG9Cxqe5zdOuLDeO4cfMSUo0/sUTqeLAeyomPykXIVjvU35+sAbPN+wVmzMER7k/TQ9M2EGV1zCuOptyaQ+jSuXIq0yXaUSUutBj73kwFGE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4319
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_004709_167462_DAA6F7AD 
X-CRM114-Status: GOOD (  17.74  )
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

Merge:
spansion_no_read_cr_quad_enable()
spansion_read_cr_quad_enable()

in spi_nor_sr2_bit1_quad_enable().

Introduce spi_nor_write_16bit_cr_and_check(). The Configuration Register
contains bits that can be updated in future: FREEZE, CMP. Provide a
generic method that allows updating all bits of the Configuration
Register.

Do the Read Back test even for the old spansion_no_read_cr_quad_enable()
case.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 136 +++++++++++++++++++++---------------------
 include/linux/mtd/spi-nor.h   |   4 +-
 2 files changed, 70 insertions(+), 70 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 112f93cec7ba..8fd1c04f75d9 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -903,7 +903,7 @@ static int spi_nor_write_16bit_sr_and_check(struct spi_nor *nor, u8 sr1)
 		 * Write Status (01h) command is available just for the cases
 		 * in which the QE bit is described in SR2 at BIT(1).
 		 */
-		sr_cr[1] = CR_QUAD_EN_SPAN;
+		sr_cr[1] = SR2_QUAD_EN_BIT1;
 	} else {
 		sr_cr[1] = 0;
 	}
@@ -941,6 +941,59 @@ static int spi_nor_write_16bit_sr_and_check(struct spi_nor *nor, u8 sr1)
 }
 
 /**
+ * spi_nor_write_16bit_cr_and_check() - Write the Status Register 1 and the
+ * Configuration Register in one shot. Ensure that the byte written in the
+ * Configuration Register match the received value, and that the 16-bit Write
+ * did not affect what was already in the Status Register 1.
+ * @nor:	pointer to a 'struct spi_nor'.
+ * @cr:		byte value to be written to the Configuration Register.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_write_16bit_cr_and_check(struct spi_nor *nor, u8 cr)
+{
+	int ret;
+	u8 *sr_cr = nor->bouncebuf;
+	u8 sr_written;
+
+	/* Keep the current value of the Status Register 1. */
+	ret = spi_nor_read_sr(nor, &sr_cr[0]);
+	if (ret)
+		return ret;
+
+	sr_cr[1] = cr;
+
+	ret = spi_nor_write_sr(nor, sr_cr, 2);
+	if (ret)
+		return ret;
+
+	sr_written = sr_cr[0];
+
+	ret = spi_nor_read_sr(nor, &sr_cr[0]);
+	if (ret)
+		return ret;
+
+	if (sr_written != sr_cr[0]) {
+		dev_err(nor->dev, "SR1: Read back test failed\n");
+		return -EIO;
+	}
+
+	if (nor->flags & SNOR_F_NO_READ_CR)
+		return 0;
+
+	ret = spi_nor_read_cr(nor, &sr_cr[1]);
+	if (ret)
+		return ret;
+
+	if (cr != sr_cr[1]) {
+		dev_err(nor->dev, "CR: read back test failed\n");
+		return -EIO;
+	}
+
+	return 0;
+}
+
+/**
  * spi_nor_write_sr_and_check() - Write the Status Register 1 and ensure that
  * the byte written match the received value without affecting other bits in the
  * Status Register 1 and 2.
@@ -1958,81 +2011,30 @@ static int spi_nor_sr1_bit6_quad_enable(struct spi_nor *nor)
 }
 
 /**
- * spansion_no_read_cr_quad_enable() - set QE bit in Configuration Register.
+ * spi_nor_sr2_bit1_quad_enable() - set the Quad Enable BIT(1) in the Status
+ * Register 2.
  * @nor:	pointer to a 'struct spi_nor'
  *
- * Set the Quad Enable (QE) bit in the Configuration Register.
- * This function should be used with QSPI memories not supporting the Read
- * Configuration Register (35h) instruction.
- *
- * bit 1 of the Configuration Register is the QE bit for Spansion like QSPI
- * memories.
+ * Bit 1 of the Status Register 2 is the QE bit for Spansion like QSPI memories.
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int spansion_no_read_cr_quad_enable(struct spi_nor *nor)
+static int spi_nor_sr2_bit1_quad_enable(struct spi_nor *nor)
 {
-	u8 *sr_cr = nor->bouncebuf;
 	int ret;
 
-	/* Keep the current value of the Status Register. */
-	ret = spi_nor_read_sr(nor, &sr_cr[0]);
-	if (ret)
-		return ret;
-
-	sr_cr[1] = CR_QUAD_EN_SPAN;
-
-	return spi_nor_write_sr(nor, sr_cr, 2);
-}
-
-/**
- * spansion_read_cr_quad_enable() - set QE bit in Configuration Register.
- * @nor:	pointer to a 'struct spi_nor'
- *
- * Set the Quad Enable (QE) bit in the Configuration Register.
- * This function should be used with QSPI memories supporting the Read
- * Configuration Register (35h) instruction.
- *
- * bit 1 of the Configuration Register is the QE bit for Spansion like QSPI
- * memories.
- *
- * Return: 0 on success, -errno otherwise.
- */
-static int spansion_read_cr_quad_enable(struct spi_nor *nor)
-{
-	u8 *sr_cr = nor->bouncebuf;
-	int ret;
+	if (nor->flags & SNOR_F_NO_READ_CR)
+		return spi_nor_write_16bit_cr_and_check(nor, SR2_QUAD_EN_BIT1);
 
 	/* Check current Quad Enable bit value. */
-	ret = spi_nor_read_cr(nor, &sr_cr[1]);
+	ret = spi_nor_read_cr(nor, &nor->bouncebuf[0]);
 	if (ret)
 		return ret;
 
-	if (sr_cr[1] & CR_QUAD_EN_SPAN)
+	if (nor->bouncebuf[0] & SR2_QUAD_EN_BIT1)
 		return 0;
 
-	sr_cr[1] |= CR_QUAD_EN_SPAN;
-
-	/* Keep the current value of the Status Register. */
-	ret = spi_nor_read_sr(nor, &sr_cr[0]);
-	if (ret)
-		return ret;
-
-	ret = spi_nor_write_sr(nor, sr_cr, 2);
-	if (ret)
-		return ret;
-
-	/* Read back and check it. */
-	ret = spi_nor_read_cr(nor, &sr_cr[1]);
-	if (ret)
-		return ret;
-
-	if (!(sr_cr[1] & CR_QUAD_EN_SPAN)) {
-		dev_err(nor->dev, "Spansion Quad bit not set\n");
-		return -EIO;
-	}
-
-	return 0;
+	return spi_nor_write_16bit_cr_and_check(nor, nor->bouncebuf[0]);
 }
 
 /**
@@ -2112,7 +2114,7 @@ static int spi_nor_clear_sr_bp(struct spi_nor *nor)
  *
  * Read-modify-write function that clears the Block Protection bits from the
  * Status Register without affecting other bits. The function is tightly
- * coupled with the spansion_read_cr_quad_enable() function. Both assume that
+ * coupled with the spi_nor_sr2_bit1_quad_enable() function. Both assume that
  * the Write Register with 16 bits, together with the Read Configuration
  * Register (35h) instructions are supported.
  *
@@ -2133,7 +2135,7 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
 	 * When the configuration register Quad Enable bit is one, only the
 	 * Write Status (01h) command with two data bytes may be used.
 	 */
-	if (sr_cr[1] & CR_QUAD_EN_SPAN) {
+	if (sr_cr[1] & SR2_QUAD_EN_BIT1) {
 		ret = spi_nor_read_sr(nor, &sr_cr[0]);
 		if (ret)
 			return ret;
@@ -3637,7 +3639,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 		 * supported.
 		 */
 		nor->flags |= SNOR_F_NO_READ_CR;
-		flash->quad_enable = spansion_no_read_cr_quad_enable;
+		flash->quad_enable = spi_nor_sr2_bit1_quad_enable;
 		break;
 
 	case BFPT_DWORD15_QER_SR1_BIT6:
@@ -3658,7 +3660,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 		 * assumption of a 16-bit Write Status (01h) command.
 		 */
 		nor->flags |= SNOR_F_HAS_16BIT_SR;
-		flash->quad_enable = spansion_read_cr_quad_enable;
+		flash->quad_enable = spi_nor_sr2_bit1_quad_enable;
 		break;
 
 	default:
@@ -4621,7 +4623,7 @@ static void spi_nor_info_init_flash_params(struct spi_nor *nor)
 	u8 i, erase_mask;
 
 	/* Initialize legacy flash parameters and settings. */
-	flash->quad_enable = spansion_read_cr_quad_enable;
+	flash->quad_enable = spi_nor_sr2_bit1_quad_enable;
 	flash->set_4byte = spansion_set_4byte;
 	flash->setup = spi_nor_default_setup;
 	/* Default to 16-bit Write Status (01h) Command */
@@ -4839,7 +4841,7 @@ static int spi_nor_init(struct spi_nor *nor)
 	int err;
 
 	if (nor->clear_sr_bp) {
-		if (nor->flash.quad_enable == spansion_read_cr_quad_enable)
+		if (nor->flash.quad_enable == spi_nor_sr2_bit1_quad_enable)
 			nor->clear_sr_bp = spi_nor_spansion_clear_sr_bp;
 
 		err = nor->clear_sr_bp(nor);
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 3a835de90b6a..5590a36eb43e 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -144,10 +144,8 @@
 #define FSR_P_ERR		BIT(4)	/* Program operation status */
 #define FSR_PT_ERR		BIT(1)	/* Protection error bit */
 
-/* Configuration Register bits. */
-#define CR_QUAD_EN_SPAN		BIT(1)	/* Spansion Quad I/O */
-
 /* Status Register 2 bits. */
+#define SR2_QUAD_EN_BIT1	BIT(1)
 #define SR2_QUAD_EN_BIT7	BIT(7)
 
 /* Supported SPI protocols */
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
