Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73764184FB8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:57:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xqM2B/HZ4sF6BeZVH77WEnmaS5p66V5owBVy8W8bxgo=; b=h99gc1s5EbSzMA
	v5m4buWqXm2tHWOwooP3ugYQi//98H+2Hl4TAI797hUG3lL4Zrc0LbGSrAYj1HHxA5ihcpd06o0hS
	dBARvii9zO2ba3Uvx9ICGWxoIOrmkQCSU92S1tztmHVgWs+L6JbODQ6gembg2u/i9EjpM5dzdjieK
	f+RF38D5TJJw4zKM/O/zkv7JQxvmRREhsobrXJA6ZET/xhiSoaZDSr9b/JuzEi2t/LLCuGS99ZBzn
	nM0+57WLIy42gbZdxIfL7hF9Glz73rBe8TzHgxYHtcpuW8PQGA7fwk350K2OPznvsqopfY0hZsudT
	NjNjUfBBd5xeiOFjE+9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqQW-0005qO-Gk; Fri, 13 Mar 2020 19:57:00 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqD3-0008Vq-GG; Fri, 13 Mar 2020 19:43:09 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: PglKVbgkW0hMHNcR3TgFFbcRXh3piamU/XdVPQEzBOLZCRrDyE/O7GaZPa9ab2EFoneDGjeGE8
 g5i1NpJnm9TPvtJ9hvJlPljWiaiTtKmUEmI41skqHF5GInkrorEryXpfUfcukfJpIMYrHetkJq
 l0RWID7l6s3uJsoJvSikkgctkvgNWWFDbrmZ5uy8EQ+iRYQOvAPugIZfKELh/wsPThWvwPXaOo
 mM5EaQrDnMZBm/pI/k2qrZpIpnb+XnGWp4jzyOeEWRHAwtRzdW/tWknsLdYDTQeJPtS5rsW9d9
 rRA=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="68809685"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:43:05 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:58 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 13 Mar 2020 12:42:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E2FsI3GN32LmxFnOsyZEiJlYvPR1ieevB03Js2Xau6sHmfPT6LWNEO7i4Eaxoay5vD2Lq2n5fznjWoXGKjWUGfuRSAKd3Oij4w0tcAg+mp8DP1lmswqZnCf6n+29JijT0k87rej8Cl0l9r2A/8QztBHu6Gm0L0hdF89/MNtruoTbpFlf9J4y4/hfFUrLmkDMe5prT4WaNKtL9RH6ngKgjl19p6pgLZXGeusxtvsI7u39oYVbBqA4er2gzF+FCDGkpde4TJ+r0WVdugQ0Vwvm2ShJFvwRYDk9G2u+HZyWQ1uk3RoCNHGg4mCWkxtOC7E1oHazUMv8ta1gj1Pl6aNY6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rNJKq++qtffCISW6MPPeFWBBq+63dO2BJUD+jTDMZy8=;
 b=V/mWgRHWA2vH+H2Q0+wlkMOfTsc2Wm3sNr/ZPgctu7HseHa9IxzcxlJPyUszh08xHonRLV930YAft2+rQU7a2UpaooilcRc/5dAe2x51gM83RnRVNNdMwFlEtf0/FzlAZEtDckjEq+zvM9YqvRVXp5Rxx1Za6ptJDbAKHcTesWXYl1CVX4JfQOG2M4bsdByINiAlEPjiuY4gf0eQA0E5KyseH+4zNrztClE7NkThGvu0vz4i4hPWX7dPlF15fVfjtzgod832P1OHeEtzEXD8nxr0RJFTP56A4S3wISe0KgrYqLRrmP6lhJqYutd9NQTs8flpGIgQKKzOE5rR1/i7QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rNJKq++qtffCISW6MPPeFWBBq+63dO2BJUD+jTDMZy8=;
 b=gGaxWqfgSuKYbfYT2T92mZp+IQJK2vCFPw5KlBjnS9yo4/pZ4V8uKMrmduLzydelmr5WZcWm1bIuS09vxApVFJ3QaepzDIzmx+mCBanwJBACNC925RHKbqW7IYUbRMxMOdMCF2AYt1IIhxzRagSLhEICKA3Hv9meVSlZ84QkznE=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB3872.namprd11.prod.outlook.com (2603:10b6:208:13f::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.14; Fri, 13 Mar
 2020 19:42:39 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:39 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 06/25] mtd: spi-nor: Add the concept of SPI NOR
 manufacturer driver
Thread-Topic: [PATCH v2 06/25] mtd: spi-nor: Add the concept of SPI NOR
 manufacturer driver
Thread-Index: AQHV+W+NZJF4SzW8Skaqe4o9xqWL4w==
Date: Fri, 13 Mar 2020 19:42:39 +0000
Message-ID: <20200313194130.342251-7-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1755d551-3e7e-426a-b6f4-08d7c786b039
x-ms-traffictypediagnostic: MN2PR11MB3872:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3872FA279155D5A790B846F3F0FA0@MN2PR11MB3872.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(199004)(6486002)(81166006)(81156014)(8936002)(498600001)(86362001)(5660300002)(8676002)(76116006)(107886003)(91956017)(6512007)(1076003)(110136005)(54906003)(6506007)(66946007)(4326008)(66446008)(2906002)(66476007)(64756008)(71200400001)(36756003)(66556008)(26005)(186003)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3872;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PJM4oMQA48xYgvNYJkXyeUvwj73c4cLENKDP4RwASc3v6dLLPq1NJAedOmiUZQGpSla7GVhQiCWueqIZuYVElV3YMRpJ9HAYErrSAlMDNsO3H41F+hHBBZTp5uOBuhd4B1TLQEmMBpx9dB2lj4GnAyTKWZjiVmmp50py+B2SrqQUsdWyxG5QkVGnL8fmgB5QA7pTPGFqYKPBjydkPWMHGD/R7k9Cs3eQrbncFgPcvA4bzoyF7nokMTRMNjHrs8d7W4HhKewW2CXUQogCZ6WVV60I6Ux1lWX01N65oLdxF7IHb57QJFZAoIb0LHkMB1fmyx1qfpE67S7gLJKC4j6SyE9NF9i9TXgtxb7u8aF7Bp+QYVlnqlbiuAfjZnK/e12Z/J1KiWEo3Pd5tCq7rD6GMXyPZsdBPdedjysa8te8/WaeshApgMFyKsJEiu1HhLh2
x-ms-exchange-antispam-messagedata: J13DHna7PMtG1DmaRg/3Ks87oeqgeWrxQkBSYxd5J5Do94O4cpFHG/nAJAekEJ6yIKf92bmQ1ozjsN2x3NKe4Z+VtTW12oPuHMxbyFquNulyTUE8/MBCotib8Ig1feRF9o8v3GyJ403HMAeH2KeeUQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1755d551-3e7e-426a-b6f4-08d7c786b039
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:39.1312 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jgNhql2vi8CVlGJmEeMKfALgmaKZFUD/3mlaqH2tLrYtOf74lwmbmECFjJj6AZwtbsWNp6oOeik4hWMiS7sT++0pCHWXxvkokQY7JthH0kU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3872
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124305_626152_2A1DB1C0 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: richard@nod.at, Tudor.Ambarus@microchip.com, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Boris Brezillon <bbrezillon@kernel.org>

Declare a spi_nor_manufacturer struct and add basic building blocks to
move manufacturer specific code outside of the core.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 drivers/mtd/spi-nor/core.c  | 78 +++++++++++++++++++++++++++++++------
 drivers/mtd/spi-nor/core.h  | 14 +++++++
 include/linux/mtd/spi-nor.h |  8 ++++
 3 files changed, 89 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index aae94e4250f6..4494959cd937 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2474,8 +2474,26 @@ static const struct flash_info spi_nor_ids[] = {
 	{ },
 };
 
+static const struct spi_nor_manufacturer *manufacturers[0];
+
+static const struct flash_info *
+spi_nor_search_part_by_id(const struct flash_info *parts, unsigned int nparts,
+			  const u8 *id)
+{
+	unsigned int i;
+
+	for (i = 0; i < nparts; i++) {
+		if (parts[i].id_len &&
+		    !memcmp(parts[i].id, id, parts[i].id_len))
+			return &parts[i];
+	}
+
+	return NULL;
+}
+
 static const struct flash_info *spi_nor_read_id(struct spi_nor *nor)
 {
+	const struct flash_info *info;
 	u8 *id = nor->bouncebuf;
 	unsigned int i;
 	int ret;
@@ -2497,11 +2515,21 @@ static const struct flash_info *spi_nor_read_id(struct spi_nor *nor)
 		return ERR_PTR(ret);
 	}
 
-	for (i = 0; i < ARRAY_SIZE(spi_nor_ids) - 1; i++) {
-		if (spi_nor_ids[i].id_len &&
-		    !memcmp(spi_nor_ids[i].id, id, spi_nor_ids[i].id_len))
-			return &spi_nor_ids[i];
+	for (i = 0; i < ARRAY_SIZE(manufacturers); i++) {
+		info = spi_nor_search_part_by_id(manufacturers[i]->parts,
+						 manufacturers[i]->nparts,
+						 id);
+		if (info) {
+			nor->manufacturer = manufacturers[i];
+			return info;
+		}
 	}
+
+	info = spi_nor_search_part_by_id(spi_nor_ids,
+					 ARRAY_SIZE(spi_nor_ids) - 1, id);
+	if (info)
+		return info;
+
 	dev_err(nor->dev, "unrecognized JEDEC id bytes: %*ph\n",
 		SPI_NOR_MAX_ID_LEN, id);
 	return ERR_PTR(-ENODEV);
@@ -2987,6 +3015,16 @@ int spi_nor_post_bfpt_fixups(struct spi_nor *nor,
 			     const struct sfdp_bfpt *bfpt,
 			     struct spi_nor_flash_parameter *params)
 {
+	int ret;
+
+	if (nor->manufacturer && nor->manufacturer->fixups &&
+	    nor->manufacturer->fixups->post_bfpt) {
+		ret = nor->manufacturer->fixups->post_bfpt(nor, bfpt_header,
+							   bfpt, params);
+		if (ret)
+			return ret;
+	}
+
 	if (nor->info->fixups && nor->info->fixups->post_bfpt)
 		return nor->info->fixups->post_bfpt(nor, bfpt_header, bfpt,
 						    params);
@@ -3296,6 +3334,10 @@ static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
 		break;
 	}
 
+	if (nor->manufacturer && nor->manufacturer->fixups &&
+	    nor->manufacturer->fixups->default_init)
+		nor->manufacturer->fixups->default_init(nor);
+
 	if (nor->info->fixups && nor->info->fixups->default_init)
 		nor->info->fixups->default_init(nor);
 }
@@ -3455,6 +3497,10 @@ static void spi_nor_post_sfdp_fixups(struct spi_nor *nor)
 	if (nor->info->flags & SPI_S3AN)
 		s3an_post_sfdp_fixups(nor);
 
+	if (nor->manufacturer && nor->manufacturer->fixups &&
+	    nor->manufacturer->fixups->post_sfdp)
+		nor->manufacturer->fixups->post_sfdp(nor);
+
 	if (nor->info->fixups && nor->info->fixups->post_sfdp)
 		nor->info->fixups->post_sfdp(nor);
 }
@@ -3617,15 +3663,25 @@ void spi_nor_restore(struct spi_nor *nor)
 }
 EXPORT_SYMBOL_GPL(spi_nor_restore);
 
-static const struct flash_info *spi_nor_match_id(const char *name)
+static const struct flash_info *spi_nor_match_id(struct spi_nor *nor,
+						 const char *name)
 {
-	const struct flash_info *id = spi_nor_ids;
+	unsigned int i, j;
 
-	while (id->name) {
-		if (!strcmp(name, id->name))
-			return id;
-		id++;
+	for (i = 0; i < ARRAY_SIZE(spi_nor_ids) - 1; i++) {
+		if (!strcmp(name, spi_nor_ids[i].name))
+			return &spi_nor_ids[i];
 	}
+
+	for (i = 0; i < ARRAY_SIZE(manufacturers); i++) {
+		for (j = 0; j < manufacturers[i]->nparts; j++) {
+			if (!strcmp(name, manufacturers[i]->parts[j].name)) {
+				nor->manufacturer = manufacturers[i];
+				return &manufacturers[i]->parts[j];
+			}
+		}
+	}
+
 	return NULL;
 }
 
@@ -3672,7 +3728,7 @@ static const struct flash_info *spi_nor_get_flash_info(struct spi_nor *nor,
 	const struct flash_info *info = NULL;
 
 	if (name)
-		info = spi_nor_match_id(name);
+		info = spi_nor_match_id(nor, name);
 	/* Try to auto-detect if chip name wasn't specified or not found */
 	if (!info)
 		info = spi_nor_read_id(nor);
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index abec65081519..8599796dfc40 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -152,6 +152,20 @@ struct flash_info {
 		.addr_width = 3,					\
 		.flags = SPI_NOR_NO_FR | SPI_S3AN,
 
+/**
+ * struct spi_nor_manufacturer - SPI NOR manufacturer object
+ * @name: manufacturer name
+ * @parts: array of parts supported by this manufacturer
+ * @nparts: number of entries in the parts array
+ * @fixups: hooks called at various points in time during spi_nor_scan()
+ */
+struct spi_nor_manufacturer {
+	const char *name;
+	const struct flash_info *parts;
+	unsigned int nparts;
+	const struct spi_nor_fixups *fixups;
+};
+
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
 int spi_nor_set_4byte_addr_mode(struct spi_nor *nor, bool enable);
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 2b9717b0cd62..bf37bfc68797 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -554,6 +554,12 @@ struct spi_nor_flash_parameter {
  */
 struct flash_info;
 
+/**
+ * struct spi_nor_manufacturer - Forward declaration of a structure used
+ * internally by the core and manufacturer drivers.
+ */
+struct spi_nor_manufacturer;
+
 /**
  * struct spi_nor - Structure for defining a the SPI NOR layer
  * @mtd:		point to a mtd_info structure
@@ -564,6 +570,7 @@ struct flash_info;
  *                      layer is not DMA-able
  * @bouncebuf_size:	size of the bounce buffer
  * @info:		spi-nor part JDEC MFR id and other info
+ * @manufacturer:	spi-nor manufacturer
  * @page_size:		the page size of the SPI NOR
  * @addr_width:		number of address bytes
  * @erase_opcode:	the opcode for erasing a sector
@@ -591,6 +598,7 @@ struct spi_nor {
 	u8			*bouncebuf;
 	size_t			bouncebuf_size;
 	const struct flash_info	*info;
+	const struct spi_nor_manufacturer *manufacturer;
 	u32			page_size;
 	u8			addr_width;
 	u8			erase_opcode;
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
