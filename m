Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48ABCB5282
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 18:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M7W6TgBkwl0dBpCF9Ev4TwMvwyPS0mJypFktXyXffUQ=; b=LeCAxoOXYgJ2xI
	NlZe9wK8bpmOinSZGqd7kBFHj3Tu4ETsCmcFeAho7NUpUPZJFBDLBsjHWWd8JDxVGQlrTynZdyrLG
	H5Yrubh55x0xvvDowFnY6LcgQL8gyjXIKgb52MPtY4RaNmh8Lz2mgABwvqokMTNcVWt49Y9ouvlnN
	JarbZFIK5/T/6SKTWvSHnP7avgjAkCLmSYptX3e5iVUCCvwq1TsCWfhDerAC3+xbLn78V2qdIiflB
	Wp91DVMTB7/SHLI/Jfab2CbE9CcOP2zLJPy6jBqcPI+SfaWmUGpLTxKlZBAaDfjq1FyDW03Z3RZNj
	iwGKfBMNAxs8Ql+Y3wXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAG2s-0005GR-07; Tue, 17 Sep 2019 16:09:38 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAFpP-00084M-4H; Tue, 17 Sep 2019 15:55:55 +0000
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
IronPort-SDR: H9I7MhTz/36Pub9gDzNS/F02QL9HsbEvIxXMixxogAePdmi9WcVEfelusgAS536qf48ei+8p3F
 CPFryjGjWqhwsD1QDnELxGvdzBWzMxYMgd5bjNomfHCWfNmTebqhgToB69dsAQ07oZlk/zwANv
 qhDUodZ+VVIrUl3kXuwRYDrPxG5B+N077Mvo82nsUZKHIoNt9cfYmQ7g2FZpmjaHibsFg3iXPA
 VQ5dHcZfme5OraCNd2z8GI6dnNWeKRKvkknpPrx9HdxuyZi2fxWNnvALb7C9fHoHnyG1N1pdJn
 MKY=
X-IronPort-AV: E=Sophos;i="5.64,517,1559545200"; d="scan'208";a="50797952"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Sep 2019 08:55:42 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Sep 2019 08:55:38 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 17 Sep 2019 08:55:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IXo6z8N9/V598ilppFo/22pkYkDZOGBozOT1kQd2X0r1bM+jIHP8O8Jh05Fkkjfk1jamdJ7ILaE795o8cFWrnQkBPLDDzvIAeDpwz1lLFDexdoBYYWN1snceFo/cSV9dj1hd0iMhi0umfFKZSGPOJZsf9OjYLlwuOyUWP/+HDzkpiqCZbHiULDoi9udT+hkkBYIvmZQmr9s6yAO5LOirfCh7PGTGbbcfEgX8n9cASIIJn78kiYveKFg4Gb1McAil4dR+5Q4ZcEBFwne6lW34czDVLWUMZerYm1JpJHbEiu0XpRId7LhYfEwdOAWTFPOqfngENe0GQLeOwVuH0/PjbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/ml0az2zd1ImeeMhwaZAOFfuoD0AXepiN6KCiBZXges=;
 b=mhDdi/zbGtWapxpfIsIEU01pz8lLL84Au33YVhhCz94lN9rGcdRgVJ6eZrNB0N30MRK+bB0PEnRONRUTK3inBZSHjDekGQbeFikByDYGj3eHPWQLIJaQv4APBfdJBnHq9Ly7UWqM/ZQHeA++lGcfeKZuJpTwp8ls7Ss4cm5KZAxKRSM1E91GxGDr4Vbtww5FrPzeoZt7yzy2OzaHE80LXYV+sIhPZBmFhSKfgvLlhbphkpv3xIjF6KL5+F989dP8o/JJqbcC6pwn3KZblgljTXmxCAohvSxf8tdrAHZaJ9fj2efISecp/gEYa6QPljIHMn6MhfC3dj0BqcOk3yINTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/ml0az2zd1ImeeMhwaZAOFfuoD0AXepiN6KCiBZXges=;
 b=HmgDdlbcJNbEKs2tz78sMphH/xS87g9i/tjEqgI9A0nxM2EHhBrC7+k4wjGQ0ifoURY3Qa3hXdqqAQeJOc+VELcbHP97IWD8DBdlW2NPxSY3rWiJvAfTSNw5ixauCncU66gBfFV0Kx/ArD/qn28cTSwtP4z8mKVvJ4LDMk73GO4=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3725.namprd11.prod.outlook.com (20.178.253.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.21; Tue, 17 Sep 2019 15:55:35 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2263.023; Tue, 17 Sep 2019
 15:55:35 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 17/23] mtd: spi-nor: Fix clearing of QE bit on lock()/unlock()
Thread-Topic: [PATCH 17/23] mtd: spi-nor: Fix clearing of QE bit on
 lock()/unlock()
Thread-Index: AQHVbXBXffWwZrBoIkKrGGyrhA4/GQ==
Date: Tue, 17 Sep 2019 15:55:35 +0000
Message-ID: <20190917155426.7432-18-tudor.ambarus@microchip.com>
References: <20190917155426.7432-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190917155426.7432-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0302CA0007.eurprd03.prod.outlook.com
 (2603:10a6:800:e9::17) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b9009282-d9c6-4076-51a2-08d73b877a42
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR11MB3725; 
x-ms-traffictypediagnostic: MN2PR11MB3725:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB372544B31DDA38F5812EA562F08F0@MN2PR11MB3725.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01630974C0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(346002)(39860400002)(136003)(366004)(199004)(189003)(76176011)(52116002)(5660300002)(71190400001)(2616005)(6486002)(6512007)(476003)(11346002)(81166006)(6436002)(66556008)(386003)(6506007)(26005)(66446008)(66946007)(64756008)(186003)(66476007)(102836004)(316002)(446003)(2201001)(110136005)(54906003)(8936002)(107886003)(478600001)(50226002)(25786009)(2906002)(86362001)(81156014)(2501003)(6116002)(3846002)(256004)(305945005)(7736002)(7416002)(99286004)(36756003)(66066001)(14454004)(8676002)(71200400001)(4326008)(14444005)(1076003)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3725;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZbUdwpGGRw1omk4ci2mM/aq1ZRBjZJoddPVd3v5awYgr6XEgCzlG95xnpKviln6Kyev1bcbxRQUP5u9XFTV2HNaCgEbjdBAoIrf8TzVAv4VhuHcbyF0+I+JQF9DOrw2cZJjuVNO2W/BnA9LxSKOF06SAXY87aV7eOZbpibmoxddqxjgp8FM/Qww4Ii08rOMaScookBsJxZP4qHOoVjJhvfJhzwAgNDeddLDchq8iMFXe2o2iCEpMFOKETxZyUk+yDiaqYa1iOVhY0+fLQPWFBAdeUfJsaOFd/jNd6JMkV5DDYFu7lpnjnTFWeSmSgqDwmmur55pVjxTNR2ydkP/PQ9+VDswB+hs5UC5/jwR/dtEvODKH+kf/C6Fly2OUmmIR6GNMulbALrKT46MZKMvun/dDm/d2AexZNsIX3p1RW8k=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b9009282-d9c6-4076-51a2-08d73b877a42
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 15:55:35.7123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9zO3MdIaM+VomXy2nG9jXMUBsmfwAEO5c+ZHHG7WwcJ8Fi1YtGBnei0el+o3C7Y75v04VhuykVCCMpjw0AZd3RWB0U98fGeNgPSRpLupMcY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3725
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_085544_276963_3BDCD457 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, vz@mleia.com, linux-mediatek@lists.infradead.org,
 joel@jms.id.au, matthias.bgg@gmail.com, computersforpeace@gmail.com,
 dwmw2@infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Make sure that when doing a lock() or an unlock() operation we don't clear
the QE bit from Status Register 2.

JESD216 revB or later offers information about the *default* Status
Register commands to use (see BFPT DWORDS[15], bits 22:20). In this
standard, Status Register 1 refers to the first data byte transferred on a
Read Status (05h) or Write Status (01h) command. Status register 2 refers
to the byte read using instruction 35h. Status register 2 is the second
byte transferred in a Write Status (01h) command.

Industry naming and definitions of these Status Registers may differ.
The definitions are described in JESD216B, BFPT DWORDS[15], bits 22:20.
There are cases in which writing only one byte to the Status Register 1
has the side-effect of clearing Status Register 2 and implicitly the Quad
Enable bit. This side-effect is hit just by the
BFPT_DWORD15_QER_SR2_BIT1_BUGGY and BFPT_DWORD15_QER_SR2_BIT1 cases.

Suggested-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 170 +++++++++++++++++++++++++++++++++++++-----
 include/linux/mtd/spi-nor.h   |   2 +
 2 files changed, 152 insertions(+), 20 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 303a7bcf3423..4a513ed13807 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -836,6 +836,132 @@ static int spi_nor_read_sr2(struct spi_nor *nor, u8 *sr2)
 	return ret;
 }
 
+/**
+ * spi_nor_write_sr1_and_check() - Write one byte to the Status Register and
+ * ensure the bits in the mask match the written value.
+ * @nor:	pointer to a 'struct spi_nor'.
+ * status_new:	byte value to be written to the Status Register.
+ * mask:	mask with which to check the written value.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_write_sr1_and_check(struct spi_nor *nor, u8 status_new,
+				       u8 mask)
+{
+	int ret;
+
+	nor->bouncebuf[0] = status_new;
+
+	ret = spi_nor_write_sr(nor, &nor->bouncebuf[0], 1);
+	if (ret)
+		return ret;
+
+	ret = spi_nor_read_sr(nor, &nor->bouncebuf[0]);
+	if (ret)
+		return ret;
+
+	if ((nor->bouncebuf[0] & mask) != (status_new & mask)) {
+		dev_err(nor->dev, "Read back test failed\n");
+		return -EIO;
+	}
+
+	return 0;
+}
+
+/**
+ * spi_nor_write_16bit_sr_and_check() - Write the Status Register 1 and the
+ * Status Register 2 in one shot. Ensure that the bits in the mask match the
+ * written value in the Status Register 1, and that the 16-bit Write did not
+ * affect what was already in the Status Register 2.
+ * @nor:	pointer to a 'struct spi_nor'.
+ * status_new:	byte value to be written to the Status Register 1.
+ * mask:	mask with which to check the written value on Status Register 1.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_write_16bit_sr_and_check(struct spi_nor *nor, u8 status_new,
+					    u8 mask)
+{
+	int ret;
+	u8 *sr_cr = nor->bouncebuf;
+	u8 cr_written;
+
+	/* Make sure we don't overwrite the contents of Status Register 2. */
+	if (!(nor->flags & SNOR_F_NO_READ_CR)) {
+		ret = spi_nor_read_cr(nor, &sr_cr[1]);
+		if (ret)
+			return ret;
+	} else if (nor->flash.quad_enable) {
+		/*
+		 * If the Status Register 2 Read command (35h) is not
+		 * supported, we should at least be sure we don't
+		 * change the value of the SR2 Quad Enable bit.
+		 *
+		 * We can safely assume that when the Quad Enable method is
+		 * set, the value of the QE bit is one, as a consequence of the
+		 * nor->flash.quad_enable() call.
+		 *
+		 * We can safely assume that the Quad Enable bit is present in
+		 * the Status Register 2 at BIT(1). According to the JESD216
+		 * revB standard, BFPT DWORDS[15], bits 22:20, the 16-bit
+		 * Write Status (01h) command is available just for the cases
+		 * in which the QE bit is described in SR2 at BIT(1).
+		 */
+		sr_cr[1] = CR_QUAD_EN_SPAN;
+	} else {
+		sr_cr[1] = 0;
+	}
+
+	sr_cr[0] = status_new;
+
+	ret = spi_nor_write_sr(nor, sr_cr, 2);
+	if (ret)
+		return ret;
+
+	cr_written = sr_cr[1];
+
+	ret = spi_nor_read_sr(nor, &sr_cr[0]);
+	if (ret)
+		return ret;
+
+	if ((sr_cr[0] & mask) != (status_new & mask)) {
+		dev_err(nor->dev, "Read back test failed\n");
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
+	if (cr_written != sr_cr[1]) {
+		dev_err(nor->dev, "Read back test failed\n");
+		return -EIO;
+	}
+
+	return 0;
+}
+
+/**
+ * spi_nor_write_sr_and_check() - Write the Status Register and ensure the bits
+ * in the mask match the written values.
+ * @nor:	pointer to a 'struct spi_nor'.
+ * status_new:	byte value to be written to the Status Register.
+ * mask:	mask with which to check the written values.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_write_sr_and_check(struct spi_nor *nor, u8 status_new,
+				      u8 mask)
+{
+	if (nor->flags == SNOR_F_HAS_16BIT_SR)
+		return spi_nor_write_16bit_sr_and_check(nor, status_new, mask);
+
+	return spi_nor_write_sr1_and_check(nor, status_new, mask);
+}
+
 static struct spi_nor *mtd_to_spi_nor(struct mtd_info *mtd)
 {
 	return mtd->priv;
@@ -1492,24 +1618,6 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 	return ret;
 }
 
-/* Write status register and ensure bits in mask match written values */
-static int write_sr_and_check(struct spi_nor *nor, u8 status_new, u8 mask)
-{
-	int ret;
-
-	nor->bouncebuf[0] = status_new;
-
-	ret = spi_nor_write_sr(nor, &nor->bouncebuf[0], 1);
-	if (ret)
-		return ret;
-
-	ret = spi_nor_read_sr(nor, &nor->bouncebuf[0]);
-	if (ret)
-		return ret;
-
-	return ((nor->bouncebuf[0] & mask) != (status_new & mask)) ? -EIO : 0;
-}
-
 static void stm_get_locked_range(struct spi_nor *nor, u8 sr, loff_t *ofs,
 				 uint64_t *len)
 {
@@ -1673,7 +1781,7 @@ static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 	if ((status_new & mask) < (status_old & mask))
 		return -EINVAL;
 
-	return write_sr_and_check(nor, status_new, mask);
+	return spi_nor_write_sr_and_check(nor, status_new, mask);
 }
 
 /*
@@ -1758,7 +1866,7 @@ static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 	if ((status_new & mask) > (status_old & mask))
 		return -EINVAL;
 
-	return write_sr_and_check(nor, status_new, mask);
+	return spi_nor_write_sr_and_check(nor, status_new, mask);
 }
 
 /*
@@ -3536,19 +3644,39 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 		break;
 
 	case BFPT_DWORD15_QER_SR2_BIT1_BUGGY:
+		/*
+		 * Writing only one byte to the Status Register has the
+		 * side-effect of clearing Status Register 2.
+		 */
+		/* fall through */
 	case BFPT_DWORD15_QER_SR2_BIT1_NO_RD:
+		nor->flags |= SNOR_F_HAS_16BIT_SR;
+		/*
+		 * Read Configuration Register (35h) instruction is not
+		 * supported.
+		 */
+		nor->flags |= SNOR_F_NO_READ_CR;
 		flash->quad_enable = spansion_no_read_cr_quad_enable;
 		break;
 
 	case BFPT_DWORD15_QER_SR1_BIT6:
+		nor->flags &= ~SNOR_F_HAS_16BIT_SR;
 		flash->quad_enable = macronix_quad_enable;
 		break;
 
 	case BFPT_DWORD15_QER_SR2_BIT7:
+		nor->flags &= ~SNOR_F_HAS_16BIT_SR;
 		flash->quad_enable = sr2_bit7_quad_enable;
 		break;
 
 	case BFPT_DWORD15_QER_SR2_BIT1:
+		/*
+		 * JESD216 rev B or later does not specify if writing only one
+		 * byte to the Status Register clears or not the Status
+		 * Register 2, so let's be cautious and keep the default
+		 * assumption of a 16-bit Write Status (01h) command.
+		 */
+		nor->flags |= SNOR_F_HAS_16BIT_SR;
 		flash->quad_enable = spansion_read_cr_quad_enable;
 		break;
 
@@ -4515,6 +4643,8 @@ static void spi_nor_info_init_flash_params(struct spi_nor *nor)
 	flash->quad_enable = spansion_read_cr_quad_enable;
 	flash->set_4byte = spansion_set_4byte;
 	flash->setup = spi_nor_default_setup;
+	/* Default to 16-bit Write Status (01h) Command */
+	nor->flags |= SNOR_F_HAS_16BIT_SR;
 
 	/* Set SPI NOR sizes. */
 	flash->size = (u64)info->sector_size * info->n_sectors;
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 12961b157743..fc3a8f5209f0 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -243,6 +243,8 @@ enum spi_nor_option_flags {
 	SNOR_F_4B_OPCODES	= BIT(6),
 	SNOR_F_HAS_4BAIT	= BIT(7),
 	SNOR_F_HAS_LOCK		= BIT(8),
+	SNOR_F_HAS_16BIT_SR	= BIT(9),
+	SNOR_F_NO_READ_CR	= BIT(10),
 };
 
 /**
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
