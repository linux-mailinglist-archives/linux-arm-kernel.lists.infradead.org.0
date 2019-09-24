Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9572BBC39E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 10:00:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bbEYjSBj8WKU+0GyDHLpCCxW/C5BG7AZrHHLDIg+JY=; b=RWyPl0w3S/nraI
	H9u0TutVy2jEMk+iVEeR6VqfWi4KClk05PCu6OIVYAkev5kimtjfEnFvvWpFqjedHZ7RSpqYSILff
	2MpdmGmvRCE11Nx6hyHe3+bt7LBwCrgaJ1l40jCmKnFz2/qzl6LdXUXz6bNlqqaCRFQ9Dqx1zSh8X
	mH/JA2YdFsC1QnWXhkTYWuMrWIm/UNFkagh6T2VVVkE/AGCUjYKKCNGzhDLF17Ae+haIsOy44+90Z
	UAHPa7B37LdOSNQghdgAXwleZAX0IiKbH6J9TZgVpCJaKoXYIIcnHoqqipsLqRpcxjHB47ETechwz
	LYEkrMBbLMYCHbsnByIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfkY-0001k3-Vy; Tue, 24 Sep 2019 08:00:43 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfXH-0004cI-C6; Tue, 24 Sep 2019 07:47:03 +0000
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
IronPort-SDR: Hr76gMfbJN+n84Ch1I3DLuL0P9QyNRnChty1LwUC7ZvS2piHLDmwfK24JwWp85J1KgQdqaNRSO
 SyQ2MwZeZjcF8b3d/YRvjGLfpAgu1dqMPgTg3KI214OOO3BWkxOVO2Iw0fbZoBxFmRzcCzddA4
 DUEki7fSzjMVED0/Jw9naJFXAXwhu9kxCV72K3M9v4wgNyDq5e4QQO0CmD4zobvepdVhXualEu
 CLGW7MXys4UQxBv3b9nbC3KUL2xTxItqzOSCuMUD28LfN9JfnoY15Q7WpSXRoh12xovjojaq16
 asI=
X-IronPort-AV: E=Sophos;i="5.64,543,1559545200"; d="scan'208";a="48724269"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Sep 2019 00:46:56 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 24 Sep 2019 00:46:55 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 24 Sep 2019 00:46:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b98OJxfkjGJKm0TcZbDSrgQfj6GLY3TumTiXArkFA2/LFSngAse+WPmSiFkSS8/vkYa87R2ja/T0jiKJN+prxybVC+cvC0owtlALJRkYf4FcKrXmSvk9rbFVRKDaiL5fZ5q0qPbmLsr4604UnKn0U/XkcBARroOzFmy9qC7hnL/jY5xUPAthN0JsVWXLdSJs577yYFDQheBek37VlNEQul4Ko1rzmQ6yAR80orl7rswr1B545xQJj67JqmL03AfjuhCydSifIZyWTp44HUjjJf2Wa0RyJ6mzvr7AJ13YN4OKCOfK2Vub84UgYIuJlgFoofl9x2bbjRUnDsYVLOayow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ba1ut5hlHFjEcBUt735mZVv7gT6ntPLaC/FQzevqd7g=;
 b=R5r42WLzWJVCuTobT+nLZJOxmXQbAD475+y7cc0IkPxtjfIg70yyDqXfIryGm/Wp09kxuuF6sUv/W71ytSAiy5urE10bUowTfNHBgAY8eXOK0LQKgEo3xdM4CgNCHMbgiEGcAc99rCAuuCPVDX9OOR80Zkr9pCrIwnJDSzZRWfDcI9oErxzS1sbufb8rYst0JxJ018AkhnzFF4yxtDuMpdcG6duvhVDl8cBy84ewKsKar76mkrL/4Czk9Yx+bPgpWHt4+NJybGg2gYcdDTGCVnCj1FG5qSfm2GQZ9ovPj8Ih25I+7n1YTC6qgZDaU2ZEoYYYSEJ777AcKIHutcQwsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ba1ut5hlHFjEcBUt735mZVv7gT6ntPLaC/FQzevqd7g=;
 b=voXdZDLZJ+o0VuUqJaaOGUinP3v7tfzh0rXESsHlfxLpQmBeSTkJu9DzXGcvFytahK2rwoWT/rV61Kn49at8I8+OmyVEJdUNonFQzEPNq422neJtpTcuLWAfh1nTLA6ug1Kz+yl5vvIpV7AqF322dT73F8cg7Kom3DdAiMJYkyI=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4319.namprd11.prod.outlook.com (52.135.39.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.26; Tue, 24 Sep 2019 07:46:53 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 07:46:53 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <linux-mtd@lists.infradead.org>,
 <geert+renesas@glider.be>, <jonas@norrbonn.se>
Subject: [PATCH v2 19/22] mtd: spi-nor: Rework macronix_quad_enable()
Thread-Topic: [PATCH v2 19/22] mtd: spi-nor: Rework macronix_quad_enable()
Thread-Index: AQHVcqw7P/9sl7z6ZEKxStZP5t76TA==
Date: Tue, 24 Sep 2019 07:46:53 +0000
Message-ID: <20190924074533.6618-20-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 2b037601-84fc-4856-7ad9-08d740c35e05
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4319; 
x-ms-traffictypediagnostic: MN2PR11MB4319:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4319D1196C5C1ED4CC54A7F0F0840@MN2PR11MB4319.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(1496009)(366004)(396003)(136003)(346002)(39860400002)(376002)(189003)(199004)(14444005)(5660300002)(2201001)(6436002)(256004)(86362001)(11346002)(14454004)(476003)(2501003)(305945005)(186003)(2616005)(26005)(386003)(102836004)(6506007)(25786009)(6486002)(8936002)(81156014)(2906002)(3846002)(81166006)(107886003)(7736002)(8676002)(6512007)(486006)(36756003)(52116002)(71200400001)(71190400001)(50226002)(446003)(66446008)(76176011)(99286004)(66946007)(4326008)(66476007)(64756008)(66556008)(6116002)(54906003)(110136005)(66066001)(316002)(1076003)(7416002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4319;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iLMNGg4PVH9HYvqjfkrL+tHFtjEAtDUlcHRx86sejQzRganHRC9tJ4vZbQbVCa25A00GoS7dXSvnoIc7INWnCH86mBoC1H5NtzBBF9DwVDS/KI76xD0LtH0dwAlhV7Eui4Chc7Uxkxxi3i1NmrKg8PZJjWYw816jf1pslhzA5xLlZdwedGM8j0spCLuDcmBPnRlUnyHJwYCSeA4oyE1+BI6TE5rXByiGINqGoxS1coph5NF1QmEp9sCmdzUZbHOCXMCxT+jRXNWG42OwiXhFH4Us7C86xNFMLZfsXR58wKBecXb3DKHupi5Ei8JRvHklIJmWEazixWMeHXGOZbZOYchVVbBhX26nVO8qwGqNvwsSr4k+ayR/HGKtNPzpGPgX25wD+jqdzzfbgJ8q647Hq4v9dXstUDRADxEl+53IHsE=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b037601-84fc-4856-7ad9-08d740c35e05
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 07:46:53.8121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FhbEWtwYk70Xp6lcHql1jNAvZFS0ZVB9hBqSFgOdlU+sDwMIBmy4splJrEsG4L/DBZIN8q70KsjoBB1MYIQlOFmLJHu2EgGpi/vpfilhJc8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4319
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_004659_623097_FA45BF35 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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

Rename method to a generic name: spi_nor_sr1_bit6_quad_enable().

Use spi_nor_write_sr1_and_check(). Now we check the validity of all
the eight bits of the Status Register, not just of the SR1_QUAD_EN_BIT6.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 34 ++++++++++------------------------
 include/linux/mtd/spi-nor.h   |  2 +-
 2 files changed, 11 insertions(+), 25 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 8ada2003f1c9..112f93cec7ba 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1933,16 +1933,15 @@ static int spi_nor_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 }
 
 /**
- * macronix_quad_enable() - set QE bit in Status Register.
+ * spi_nor_sr1_bit6_quad_enable() - Set the Quad Enable BIT(6) in the Status
+ * Register 1.
  * @nor:	pointer to a 'struct spi_nor'
  *
- * Set the Quad Enable (QE) bit in the Status Register.
- *
- * bit 6 of the Status Register is the QE bit for Macronix like QSPI memories.
+ * Bit 6 of the Status Register 1 is the QE bit for Macronix like QSPI memories.
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int macronix_quad_enable(struct spi_nor *nor)
+static int spi_nor_sr1_bit6_quad_enable(struct spi_nor *nor)
 {
 	int ret;
 
@@ -1950,25 +1949,12 @@ static int macronix_quad_enable(struct spi_nor *nor)
 	if (ret)
 		return ret;
 
-	if (nor->bouncebuf[0] & SR_QUAD_EN_MX)
+	if (nor->bouncebuf[0] & SR1_QUAD_EN_BIT6)
 		return 0;
 
-	nor->bouncebuf[0] |= SR_QUAD_EN_MX;
+	nor->bouncebuf[0] |= SR1_QUAD_EN_BIT6;
 
-	ret = spi_nor_write_sr(nor, &nor->bouncebuf[0], 1);
-	if (ret)
-		return ret;
-
-	ret = spi_nor_read_sr(nor, &nor->bouncebuf[0]);
-	if (ret)
-		return ret;
-
-	if (!(nor->bouncebuf[0] & SR_QUAD_EN_MX)) {
-		dev_err(nor->dev, "Macronix Quad bit not set\n");
-		return -EIO;
-	}
-
-	return 0;
+	return spi_nor_write_sr1_and_check(nor, nor->bouncebuf[0]);
 }
 
 /**
@@ -2272,7 +2258,7 @@ static void gd25q256_default_init(struct spi_nor *nor)
 	 * indicate the quad_enable method for this case, we need
 	 * to set it in the default_init fixup hook.
 	 */
-	nor->flash.quad_enable = macronix_quad_enable;
+	nor->flash.quad_enable = spi_nor_sr1_bit6_quad_enable;
 }
 
 static struct spi_nor_fixups gd25q256_fixups = {
@@ -3656,7 +3642,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 
 	case BFPT_DWORD15_QER_SR1_BIT6:
 		nor->flags &= ~SNOR_F_HAS_16BIT_SR;
-		flash->quad_enable = macronix_quad_enable;
+		flash->quad_enable = spi_nor_sr1_bit6_quad_enable;
 		break;
 
 	case BFPT_DWORD15_QER_SR2_BIT7:
@@ -4553,7 +4539,7 @@ static int spi_nor_setup(struct spi_nor *nor,
 
 static void macronix_set_default_init(struct spi_nor *nor)
 {
-	nor->flash.quad_enable = macronix_quad_enable;
+	nor->flash.quad_enable = spi_nor_sr1_bit6_quad_enable;
 	nor->flash.set_4byte = macronix_set_4byte;
 }
 
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index fc3a8f5209f0..3a835de90b6a 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -133,7 +133,7 @@
 #define SR_E_ERR		BIT(5)
 #define SR_P_ERR		BIT(6)
 
-#define SR_QUAD_EN_MX		BIT(6)	/* Macronix Quad I/O */
+#define SR1_QUAD_EN_BIT6	BIT(6)
 
 /* Enhanced Volatile Configuration Register bits */
 #define EVCR_QUAD_EN_MICRON	BIT(7)	/* Micron Quad I/O */
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
