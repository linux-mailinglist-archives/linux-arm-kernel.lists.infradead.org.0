Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0320EB528A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 18:10:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZaCN8I9uDZ7/YywbmJ5gNczh6QQz45xLlUDk++HfzAw=; b=UyPUr9l84WiS78
	37+VSdzcS5tjrn1kToyM49zthJR5UWh3AyHmKWyRmBGG04v8tAMFz57YRREJ69QHqaLp9dvuAIOjM
	VBg2FN8l/SliGWE9wgfBaWdsH78maneYHXQEIg2cEamMIUUt2DDbvtmwDtihy5sHdrswhYn8JZ8OW
	SlEftG0S62CtOUH1BxHLaOFV9pN+YfMy9Wz9gIL8PFp76/W36LRjYAC++vl0ubMvHun/BaRuvoXHf
	swNCriN29i48M/v22Pbpnu+88xHKcPjrfNkHE6odVaQfZeKwWu+/CKgdD3OgW0NVYJhap6gMpP3kX
	q/khxZMbaRGi4FG/zf+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAG38-0005U9-I4; Tue, 17 Sep 2019 16:09:54 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAFpa-00086y-53; Tue, 17 Sep 2019 15:55:57 +0000
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
IronPort-SDR: C8weWO7QAE8r2/o7cx9v/YUxZMv8cBOafVxHdTEwFiF95GpN5G2kFHFRj3/hVFtBsaDR6wvnSp
 o9y7XHTaVD+bNVkJ96yCiuW3xBkDyEXnwUUn28qtsZkY2Vf5AqbCkjk97QUYuAIhomMsC9qbSo
 GZN4NI+OE89L1s/Vzn2SS0KblRa9AgZBGB2vxVnKdH4MzbCk0daYmLFQwXYTwKgg4Fy9d+ilkK
 PqPZGobEFy+rgakmI8vSglZaP2GvGoc76E3YrABYaXrYRtHepRMVTe1P9TDzy0FiTrTWRYGjVA
 JkI=
X-IronPort-AV: E=Sophos;i="5.64,517,1559545200"; d="scan'208";a="49243122"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Sep 2019 08:55:53 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Sep 2019 08:55:53 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 17 Sep 2019 08:55:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nah0AIHEO9L9VQsnIQhCsIxpumbu16AqRbM0/z0IY5j571S9i66QOOeSYOQ4q0l21caiy4XiGItOt3p2KNzFwexyaXKgIvRm29WBaeLOQGrS3qSaIPrHyUYDLgOwk/QGE5kibBy/lUJoee2FkBMD4xDCZLb6kcS/yk4MF0tgC3OJ4OvfRfYao1uoibNQS3pdl9rgCCFUsc21RRHeBjqp0fixwkwuOiMQGN7/OrNfQunw8R5Cxr9tJdmGwoj3bVzbhfOmNqTgziCI5DW6qOFLDKTr+wfvJTQtGXYuYfGSySTzEH1wnmiDRbb7DX02XvcMc8KAZBUhKnLWKpsfgi8GxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q6Eh5SflJdb49TE8n1mGrQv1pKZlZDu8sMpPAvbFwBw=;
 b=S5CALi/xTHeCNTtF9hIZTyuAlANLwbiwY+L7qxcr436BKa9jL705URsq9bxQM4uf0/1TCLYSqKhRygVX+sb87eVCBQIlH1HkHHtQcroG6KI/NEYTXZ85SoZ4lPSgEO5huK8aA04fjV0nQj6L2bcShGU1+Szc0ENVKm0IxFASr9iZQtzeMvVrjaXvffhbEQJGPzHliA4sdL90PCQlDBD+oG+x4VGZKYGKGRs+WDP4SlUqq8lSzsm/ldOXCZ8Ud9+/R42pG2M8C0ZrAzEdtt1gmfzstEptZWBoUDkI/wRx6wVngfKKiZXzGX9b7Wcc9+pm6PNRZFcxLe3Oy5RFCG+EPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q6Eh5SflJdb49TE8n1mGrQv1pKZlZDu8sMpPAvbFwBw=;
 b=A4NhEF9mnz+bMaJOVkn3VgxkJDsA+S/sRCO0pS7assg13+Q7qvqabOgK/78NJAE08hSlKxJsa1GNeQJ2gTg4m5Na9JdZZfJQQJ9q3CgMemJHipn8we3fMLrhKsDIPc3QOHy9t5TO6xUB2fTuiv3o1XvBgwfCO5xeUqPYyzm2NWc=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3725.namprd11.prod.outlook.com (20.178.253.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.21; Tue, 17 Sep 2019 15:55:51 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2263.023; Tue, 17 Sep 2019
 15:55:51 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 22/23] mtd: spi-nor: Add Global Block Unlock support
Thread-Topic: [PATCH 22/23] mtd: spi-nor: Add Global Block Unlock support
Thread-Index: AQHVbXBheu9K74Z1fkSibrgIdv0WJQ==
Date: Tue, 17 Sep 2019 15:55:51 +0000
Message-ID: <20190917155426.7432-23-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 2433c8dd-e160-42ff-658e-08d73b8783a5
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR11MB3725; 
x-ms-traffictypediagnostic: MN2PR11MB3725:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3725BE14CA3A9E78CF75365AF08F0@MN2PR11MB3725.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01630974C0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(346002)(39860400002)(136003)(366004)(199004)(189003)(76176011)(52116002)(5660300002)(71190400001)(2616005)(6486002)(6512007)(476003)(11346002)(81166006)(6436002)(66556008)(386003)(6506007)(26005)(66446008)(66946007)(64756008)(186003)(66476007)(102836004)(316002)(446003)(2201001)(110136005)(54906003)(8936002)(107886003)(478600001)(50226002)(25786009)(2906002)(86362001)(81156014)(2501003)(6116002)(3846002)(256004)(305945005)(7736002)(7416002)(99286004)(36756003)(66066001)(14454004)(8676002)(71200400001)(4326008)(14444005)(1076003)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3725;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: t+joOixquXLMtq4rYZKdSugIpKyaEhIPNsTBM+wsasrOqDpPBLgAuFyyiRxqzBBeo4JVdoG+NCsi8q6Zm3TKGQSCZQc6cVgW2GBTU5MDadKaeUgox8/kqp0obrON0IWEuONomk943kOJYUhydm8tr4v1a6XKY5f0j0OEZwylg/B1ywhwddwsydS8akxq6xxRKadROP5tE+pqks+L1GBsDgiKb04OgkZBTwIEmUH5JbIYufQxs9Wem451Ian0BTXNwXlQf9QAcgKhJodNmTap57DrXQcJFy72P48nzsqHdzvt8T8qCYY1J1TSBla6sJ2DWy7wjmEi2Bzia/J7Jbx1kH5jyxKWuaUhmMUdUvdNh+buvXgyxyGpGorsH9EEs7bAIHxjJIB9dK/ctLjXQH9E50ZI/1BWpMuOwtdL6y0+e6s=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2433c8dd-e160-42ff-658e-08d73b8783a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 15:55:51.4641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rzyQAIFgw83cUJcYbCGbV7xdJaB3ULNjcw71Ycp8DYFmlOFlfcvDDD4BhXzQnrCA2TKS0HKtzd5ljZyLE/2+wFe6Nd6V8n9zAZGiH6xpmeA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3725
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_085555_577953_988A54C1 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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

Add Global Block Unlock support as an optimization for unlocking the
entire memory array. A Global Block-Protection Unlock command offers
a single command cycle that unlocks the entire memory array.

Status Register Block Protection support does not imply the support for
the Global Block Unlock Command. Microchip's SST26VF064B does support
the 98h command, but use dedicated registers for the individual block
protection, and not the Status Register, as in the stm_lock/unlock case.
Call spi_nor_unlock_global_block_protection() in spi_nor_unlock() as an
optimization for unlocking the entire memory array.

Note that the Global Block Unlock command has different names depending
on the manufacturer, but always the same command value: 98h. Macronix's
MX25U12835F names it Gang Block Unlock, Winbound's W25Q128FV names it
Global Block Unlock and Microchip's SST26VF064B names it Global Block
Protection Unlock.

We can't determine this support purely by manufacturer type and it's
not autodetectable by anything like SFDP, so make a new flag for it:
UNLOCK_GLOBAL_BLOCK. This flag can be set just at per-chip level, we
don't need a SNOR_F_ correspondent.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 47 +++++++++++++++++++++++++++++++++++++++++--
 include/linux/mtd/spi-nor.h   |  1 +
 2 files changed, 46 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 700b1700a7a1..19556a9dd3fa 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -196,7 +196,7 @@ struct flash_info {
 	u16		page_size;
 	u16		addr_width;
 
-	u16		flags;
+	u32		flags;
 #define SECT_4K			BIT(0)	/* SPINOR_OP_BE_4K works uniformly */
 #define SPI_NOR_NO_ERASE	BIT(1)	/* No erase command needed */
 #define SST_WRITE		BIT(2)	/* use SST byte programming */
@@ -233,6 +233,7 @@ struct flash_info {
 #define SPI_NOR_SKIP_SFDP	BIT(13)	/* Skip parsing of SFDP tables */
 #define USE_CLSR		BIT(14)	/* use CLSR command */
 #define SPI_NOR_OCTAL_READ	BIT(15)	/* Flash supports Octal Read */
+#define UNLOCK_GLOBAL_BLOCK	BIT(16)	/* Unlock global block protection */
 
 	/* Part specific fixup hooks. */
 	const struct spi_nor_fixups *fixups;
@@ -837,6 +838,44 @@ static int spi_nor_read_sr2(struct spi_nor *nor, u8 *sr2)
 }
 
 /**
+ * spi_nor_unlock_global_block_protection() - Unlock the Global Block Protection
+ * @nor:        pointer to a 'struct spi_nor'
+ *
+ * The Global Block-Protection Unlock command offers a single command cycle
+ * that unlocks the entire memory array.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_unlock_global_block_protection(struct spi_nor *nor)
+{
+	int ret;
+
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
+
+	if (nor->spimem) {
+		struct spi_mem_op op =
+			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_ULBPR, 1),
+				   SPI_MEM_OP_NO_ADDR,
+				   SPI_MEM_OP_NO_DUMMY,
+				   SPI_MEM_OP_NO_DATA);
+
+		ret = spi_mem_exec_op(nor->spimem, &op);
+	} else {
+		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_ULBPR,
+						     NULL, 0);
+	}
+
+	if (ret < 0) {
+		dev_err(nor->dev, "error %d on ULBPR\n", ret);
+		return ret;
+	}
+
+	return spi_nor_wait_till_ready(nor);
+}
+
+/**
  * spi_nor_write_sr1_and_check() - Write one byte to the Status Register and
  * ensure the bits in the mask match the written value.
  * @nor:	pointer to a 'struct spi_nor'.
@@ -1916,7 +1955,11 @@ static int spi_nor_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	if (ret)
 		return ret;
 
-	ret = nor->flash.locking_ops->unlock(nor, ofs, len);
+	if (nor->info->flags & UNLOCK_GLOBAL_BLOCK &&
+	    !ofs && len == nor->flash.size)
+		ret = spi_nor_unlock_global_block_protection(nor);
+	else
+		ret = nor->flash.locking_ops->unlock(nor, ofs, len);
 
 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_LOCK);
 	return ret;
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index ca650f895903..6812416ab013 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -66,6 +66,7 @@
 #define SPINOR_OP_CLFSR		0x50	/* Clear flag status register */
 #define SPINOR_OP_RDEAR		0xc8	/* Read Extended Address Register */
 #define SPINOR_OP_WREAR		0xc5	/* Write Extended Address Register */
+#define SPINOR_OP_ULBPR		0x98	/* Global Block Unlock Protection */
 
 /* 4-byte address opcodes - used on Spansion and some Macronix flashes. */
 #define SPINOR_OP_READ_4B	0x13	/* Read data bytes (low frequency) */
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
