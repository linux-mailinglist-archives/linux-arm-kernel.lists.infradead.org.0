Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15480184FCD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:59:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEQwYZLlmiRW3QeR6rz3Qlw24ZTnPDBIlMkmNviJhb0=; b=gTVFqW7OTqnaJf
	1ehunl06ndjVKoTB/GODAJW9mwFxlZCIZfFE36/jdDNrq/U4ETXoLFPeOSjAVchY6Dso9JFZG6iUd
	FHB8xf4gvnpNJT/Gud3ov5sk0gA3egoNMuCUKA+PVeHeQ+VwP38eLFiUt/DpTFqtJp93evKV5AAD6
	lybTEA2jrC9acAK4/FAEucLouHAwpVh2S+espalkfeW7o1vKvD+GRu/rqoZ+8Brlr2UYUtDU8ls03
	+X68/FNkt509JQalUb1W6reR9YcEpDIX4shwfd/IpCrBt693TuEOQg8yZbmKXa8CNeTfRkKoAcdd3
	O/IMKOhZNMWYBCUOEVhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqT9-00005h-K6; Fri, 13 Mar 2020 19:59:43 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqD3-0008Qz-3E; Fri, 13 Mar 2020 19:43:14 +0000
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
IronPort-SDR: RKwKH6NEWwAoAKM7cfEcxic08dL2Ho/9vav4mcc78KA6RH7fDO/05IlpQrrf0oZBzWSgyL/s4P
 YqmxGncA3mJsLpAY7Kg0wAfsD1bF6abLHMyA1wlmBi1xI+yMYv45n2i6/avU+6kKP3ECElTt6N
 ECFPCO+dr7f5yi6cs9KzN7kigHPBRxeev5elVDsabeV/Dh/0l+HPF86VId2iWfAw/ytKLsmqAI
 xraSfzlsdGMWOBhWS6JoobUVXINSFQtJYm0FpA32vwODef3d6NjhA0kcad3WEz8aGjmjOepncX
 eYw=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="68809683"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:43:02 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:55 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 13 Mar 2020 12:42:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AAOjSgv82MK5NXH8+cJX80j7LFYV52jNz4ARO1UFslex2exPhJuUF3RTxpeMb2QiJsohvtD3TCiptXe7o+dbghq5QFikzXZBMr91CUdztC8ZHzDiVQAq+lRduHi3FyunQIDugiYCeLABigOB/weRPmk5Q5c/Grl7FubmXJpX7t94hcchyDztaFecAqeEH9WdYAuaSX5PSImJeE6ZsBGF81o6l8q4IttVzHgp//utNi6kXPpu14uf3/VhnmkL3fD7Li10H9rPyr4a1wanLCX8jdpD1J2sr4cq7shJ2H+RPv+g+lrBh5Xf8c/38ysUZXe4K0qxUepa+QgUs5wvGaSCrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/3PLBmTcbmj5YqYFHebvz0hw2gBS+1T1a09yz1WVn9g=;
 b=N0q12bW51afiUs+gKk8fFqOpYLpyPm4tL78pfTZQcjIhOuh6ws8qKucoHh4tp161QHxVwxuinKUd4/sDDoTDfjowYRwDwNPQTzuNwteV2yhyThWZ1jWIPr8NJs+tELV6CA5F0tkQGs24AQTx4QYoRxNrol0bFRzs1Nb1wBI1sLy1KgjqWi1q1E0Q5i5/kp0WRuAgLpfMzh+IkqY20d7hRNY+GZR97GYC+E78toVsffBsXXbH+03JGb/venUaQ2i2pF5Ex17M5CoMyTSKxYHFseelQ6iOyKhu7hPGfFFx9VbBMVCkOVsYRyUtsGjC0afQ6mY3AQSf3nKXWxUjomC+HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/3PLBmTcbmj5YqYFHebvz0hw2gBS+1T1a09yz1WVn9g=;
 b=epp/fyLBHztYGamDv/F9643qokZFnMgUHUhJiaJtbeTCF7MOlfHSXtPJ7cAfMGHqARrFo2HmERq5/QBx2bUCBs29xAFrwk5sWHnoP36u//XCgxuRhBTfo3vhScXPyKA2i0r1UUCzKeDq1FdwKOLutxqI/jMGWUNPmPJ2XG56e6c=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4399.namprd11.prod.outlook.com (2603:10b6:208:17b::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Fri, 13 Mar
 2020 19:42:58 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:58 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 25/25] mtd: spi-nor: Trim what is exposed in spi-nor.h
Thread-Topic: [PATCH v2 25/25] mtd: spi-nor: Trim what is exposed in spi-nor.h
Thread-Index: AQHV+W+WLANxNh6rXEO0MSZypJkgkg==
Date: Fri, 13 Mar 2020 19:42:53 +0000
Message-ID: <20200313194130.342251-26-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ccecb8e1-d1b3-4eab-f0d8-08d7c786bbd3
x-ms-traffictypediagnostic: MN2PR11MB4399:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4399BC4D96992EFE2740669CF0FA0@MN2PR11MB4399.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(396003)(366004)(39860400002)(199004)(316002)(2616005)(186003)(71200400001)(81156014)(6666004)(110136005)(26005)(86362001)(8936002)(30864003)(54906003)(6512007)(8676002)(76116006)(91956017)(66946007)(66556008)(66476007)(66446008)(64756008)(81166006)(478600001)(4326008)(5660300002)(1076003)(6506007)(6486002)(36756003)(2906002)(31153001)(559001)(579004)(309714004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4399;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 83YaBCD0cy14r9qJwgPpt3QMxY+j7N0qTdER6M+icvcoOMndUaQjvd2ANmPV5yp4svcWFOx2sKT/5EP24SLf8HHtzy7B2cveOMhK7jUo+M6+MX/70PISePOUUrgcJxlpNYrUJJAOIh+Vzn74RtLhWiQ4CHE0R8VtHzL6NnqnVH0P1K1ufxZEmDBP67ReqkLDXSh/E188VsagWoCQBlxgKM+UJH+brGXZjaE2rIrwB2Uz21wYR/f6VPF9in0jHu6JtdQJQMUI2SMIT2qv0YhH3RiumZ2pTgV9qf81qtQB0N/vuZQc/SNJuxFGLk+I0+JuIRybqKqfKgl2boMNbBU/toqW4NiLtQN4uSS45AKSf4jpm0PXafJvzo0J/YFOVMaRWsrVvT07phSaYBJmtefJTmP3p2o/NqlWzLgVOj9j0UBnDkQiwItQ+X/3qV0t7SIeOAcue9+y62B5RorMUcLW4aLoFOQwyj7yBBlu4VFpjkm+044sSqvHTpaJPhxkTWK4fGhVSVdIheYGXgPkxcK7vw==
x-ms-exchange-antispam-messagedata: U1p695q7/rLGfCHgm9cwhYKjNAWPkctZAOw+Z4/8aYDUxhPeUwZ9GYyibYPI2i6oQxR4llIlxIZPvJpKbedOHQbtxygFxrr8IOmAsmnxQWnk5GzpeE4wSLGHNwpbOIzat2R05vnxI5KvMhsIVGqkOA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ccecb8e1-d1b3-4eab-f0d8-08d7c786bbd3
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:53.0971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DaoFdWM+ohEfaRFYUpOLu2ptf0Yyguq8kVYmOvAGcwi8JcjXbZad2GGs4ClUoENty+zDeGcTIE4aeH/6DxX0Dm1wJK5LdFfnu0SiGiEWhC4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4399
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124305_633139_095833BD 
X-CRM114-Status: GOOD (  13.98  )
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
Cc: Tudor.Ambarus@microchip.com, richard@nod.at, boris.brezillon@collabora.com,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

The SPI NOR controllers drivers must not be able to use structures that
are meant just for the SPI NOR core.

struct spi_nor_flash_parameter is filled at run-time with info gathered
from flash_info, manufacturer and sfdp data. struct spi_nor_flash_parameter
should be opaque to the SPI NOR controller drivers, make sure it is.

spi_nor_option_flags, spi_nor_read_command, spi_nor_pp_command,
spi_nor_read_command_index and spi_nor_pp_command_index are defined for the
core use, make sure they are opaque to the SPI NOR controller drivers.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 drivers/mtd/spi-nor/core.c       |  86 ++++++----
 drivers/mtd/spi-nor/core.h       | 214 +++++++++++++++++++++++++
 drivers/mtd/spi-nor/gigadevice.c |   2 +-
 drivers/mtd/spi-nor/issi.c       |   2 +-
 drivers/mtd/spi-nor/macronix.c   |   4 +-
 drivers/mtd/spi-nor/micron-st.c  |   4 +-
 drivers/mtd/spi-nor/sfdp.c       |  10 ++
 drivers/mtd/spi-nor/spansion.c   |   2 +-
 drivers/mtd/spi-nor/winbond.c    |   2 +-
 drivers/mtd/spi-nor/xilinx.c     |   4 +-
 include/linux/mtd/spi-nor.h      | 260 +------------------------------
 11 files changed, 294 insertions(+), 296 deletions(-)

diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index b07e66f10995..877557dbda7f 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -778,7 +778,7 @@ static int spi_nor_write_16bit_sr_and_check(struct spi_nor *nor, u8 sr1)
 		ret = spi_nor_read_cr(nor, &sr_cr[1]);
 		if (ret)
 			return ret;
-	} else if (nor->params.quad_enable) {
+	} else if (nor->params->quad_enable) {
 		/*
 		 * If the Status Register 2 Read command (35h) is not
 		 * supported, we should at least be sure we don't
@@ -786,7 +786,7 @@ static int spi_nor_write_16bit_sr_and_check(struct spi_nor *nor, u8 sr1)
 		 *
 		 * We can safely assume that when the Quad Enable method is
 		 * set, the value of the QE bit is one, as a consequence of the
-		 * nor->params.quad_enable() call.
+		 * nor->params->quad_enable() call.
 		 *
 		 * We can safely assume that the Quad Enable bit is present in
 		 * the Status Register 2 at BIT(1). According to the JESD216
@@ -1051,6 +1051,11 @@ static u8 spi_nor_convert_3to4_erase(u8 opcode)
 				      ARRAY_SIZE(spi_nor_3to4_erase));
 }
 
+static bool spi_nor_has_uniform_erase(const struct spi_nor *nor)
+{
+	return !!nor->params->erase_map.uniform_erase_type;
+}
+
 static void spi_nor_set_4byte_opcodes(struct spi_nor *nor)
 {
 	nor->read_opcode = spi_nor_convert_3to4_read(nor->read_opcode);
@@ -1058,7 +1063,7 @@ static void spi_nor_set_4byte_opcodes(struct spi_nor *nor)
 	nor->erase_opcode = spi_nor_convert_3to4_erase(nor->erase_opcode);
 
 	if (!spi_nor_has_uniform_erase(nor)) {
-		struct spi_nor_erase_map *map = &nor->params.erase_map;
+		struct spi_nor_erase_map *map = &nor->params->erase_map;
 		struct spi_nor_erase_type *erase;
 		int i;
 
@@ -1095,10 +1100,10 @@ void spi_nor_unlock_and_unprep(struct spi_nor *nor)
 
 static u32 spi_nor_convert_addr(struct spi_nor *nor, loff_t addr)
 {
-	if (!nor->params.convert_addr)
+	if (!nor->params->convert_addr)
 		return addr;
 
-	return nor->params.convert_addr(nor, addr);
+	return nor->params->convert_addr(nor, addr);
 }
 
 /*
@@ -1203,6 +1208,16 @@ spi_nor_find_best_erase_type(const struct spi_nor_erase_map *map,
 	return NULL;
 }
 
+static u64 spi_nor_region_is_last(const struct spi_nor_erase_region *region)
+{
+	return region->offset & SNOR_LAST_REGION;
+}
+
+static u64 spi_nor_region_end(const struct spi_nor_erase_region *region)
+{
+	return (region->offset & ~SNOR_ERASE_FLAGS_MASK) + region->size;
+}
+
 /**
  * spi_nor_region_next() - get the next spi nor region
  * @region:	pointer to a structure that describes a SPI NOR erase region
@@ -1307,7 +1322,7 @@ static int spi_nor_init_erase_cmd_list(struct spi_nor *nor,
 				       struct list_head *erase_list,
 				       u64 addr, u32 len)
 {
-	const struct spi_nor_erase_map *map = &nor->params.erase_map;
+	const struct spi_nor_erase_map *map = &nor->params->erase_map;
 	const struct spi_nor_erase_type *erase, *prev_erase = NULL;
 	struct spi_nor_erase_region *region;
 	struct spi_nor_erase_command *cmd = NULL;
@@ -1793,7 +1808,7 @@ static int spi_nor_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	if (ret)
 		return ret;
 
-	ret = nor->params.locking_ops->lock(nor, ofs, len);
+	ret = nor->params->locking_ops->lock(nor, ofs, len);
 
 	spi_nor_unlock_and_unprep(nor);
 	return ret;
@@ -1808,7 +1823,7 @@ static int spi_nor_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	if (ret)
 		return ret;
 
-	ret = nor->params.locking_ops->unlock(nor, ofs, len);
+	ret = nor->params->locking_ops->unlock(nor, ofs, len);
 
 	spi_nor_unlock_and_unprep(nor);
 	return ret;
@@ -1823,7 +1838,7 @@ static int spi_nor_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	if (ret)
 		return ret;
 
-	ret = nor->params.locking_ops->is_locked(nor, ofs, len);
+	ret = nor->params->locking_ops->is_locked(nor, ofs, len);
 
 	spi_nor_unlock_and_unprep(nor);
 	return ret;
@@ -2288,7 +2303,7 @@ static int spi_nor_spimem_check_pp(struct spi_nor *nor,
 static void
 spi_nor_spimem_adjust_hwcaps(struct spi_nor *nor, u32 *hwcaps)
 {
-	struct spi_nor_flash_parameter *params =  &nor->params;
+	struct spi_nor_flash_parameter *params = nor->params;
 	unsigned int cap;
 
 	/* DTR modes are not supported yet, mask them all. */
@@ -2387,7 +2402,7 @@ static int spi_nor_select_read(struct spi_nor *nor,
 	if (cmd < 0)
 		return -EINVAL;
 
-	read = &nor->params.reads[cmd];
+	read = &nor->params->reads[cmd];
 	nor->read_opcode = read->opcode;
 	nor->read_proto = read->proto;
 
@@ -2418,7 +2433,7 @@ static int spi_nor_select_pp(struct spi_nor *nor,
 	if (cmd < 0)
 		return -EINVAL;
 
-	pp = &nor->params.page_programs[cmd];
+	pp = &nor->params->page_programs[cmd];
 	nor->program_opcode = pp->opcode;
 	nor->write_proto = pp->proto;
 	return 0;
@@ -2479,7 +2494,7 @@ spi_nor_select_uniform_erase(struct spi_nor_erase_map *map,
 
 static int spi_nor_select_erase(struct spi_nor *nor)
 {
-	struct spi_nor_erase_map *map = &nor->params.erase_map;
+	struct spi_nor_erase_map *map = &nor->params->erase_map;
 	const struct spi_nor_erase_type *erase = NULL;
 	struct mtd_info *mtd = &nor->mtd;
 	u32 wanted_size = nor->info->sector_size;
@@ -2528,7 +2543,7 @@ static int spi_nor_select_erase(struct spi_nor *nor)
 static int spi_nor_default_setup(struct spi_nor *nor,
 				 const struct spi_nor_hwcaps *hwcaps)
 {
-	struct spi_nor_flash_parameter *params = &nor->params;
+	struct spi_nor_flash_parameter *params = nor->params;
 	u32 ignored_mask, shared_mask;
 	int err;
 
@@ -2589,10 +2604,10 @@ static int spi_nor_default_setup(struct spi_nor *nor,
 static int spi_nor_setup(struct spi_nor *nor,
 			 const struct spi_nor_hwcaps *hwcaps)
 {
-	if (!nor->params.setup)
+	if (!nor->params->setup)
 		return 0;
 
-	return nor->params.setup(nor, hwcaps);
+	return nor->params->setup(nor, hwcaps);
 }
 
 /**
@@ -2622,13 +2637,13 @@ static void spi_nor_sfdp_init_params(struct spi_nor *nor)
 {
 	struct spi_nor_flash_parameter sfdp_params;
 
-	memcpy(&sfdp_params, &nor->params, sizeof(sfdp_params));
+	memcpy(&sfdp_params, nor->params, sizeof(sfdp_params));
 
 	if (spi_nor_parse_sfdp(nor, &sfdp_params)) {
 		nor->addr_width = 0;
 		nor->flags &= ~SNOR_F_4B_OPCODES;
 	} else {
-		memcpy(&nor->params, &sfdp_params, sizeof(nor->params));
+		memcpy(nor->params, &sfdp_params, sizeof(*nor->params));
 	}
 }
 
@@ -2639,7 +2654,7 @@ static void spi_nor_sfdp_init_params(struct spi_nor *nor)
  */
 static void spi_nor_info_init_params(struct spi_nor *nor)
 {
-	struct spi_nor_flash_parameter *params = &nor->params;
+	struct spi_nor_flash_parameter *params = nor->params;
 	struct spi_nor_erase_map *map = &params->erase_map;
 	const struct flash_info *info = nor->info;
 	struct device_node *np = spi_nor_get_flash_node(nor);
@@ -2758,8 +2773,8 @@ static void spi_nor_late_init_params(struct spi_nor *nor)
 	 * NOR protection support. When locking_ops are not provided, we pick
 	 * the default ones.
 	 */
-	if (nor->flags & SNOR_F_HAS_LOCK && !nor->params.locking_ops)
-		nor->params.locking_ops = &spi_nor_sr_locking_ops;
+	if (nor->flags & SNOR_F_HAS_LOCK && !nor->params->locking_ops)
+		nor->params->locking_ops = &spi_nor_sr_locking_ops;
 }
 
 /**
@@ -2799,8 +2814,12 @@ static void spi_nor_late_init_params(struct spi_nor *nor)
  * ->default_init() hook or the SFDP parser do not set specific params.
  *		spi_nor_late_init_params()
  */
-static void spi_nor_init_params(struct spi_nor *nor)
+static int spi_nor_init_params(struct spi_nor *nor)
 {
+	nor->params = devm_kzalloc(nor->dev, sizeof(*nor->params), GFP_KERNEL);
+	if (!nor->params)
+		return -ENOMEM;
+
 	spi_nor_info_init_params(nor);
 
 	spi_nor_manufacturer_init_params(nor);
@@ -2812,6 +2831,8 @@ static void spi_nor_init_params(struct spi_nor *nor)
 	spi_nor_post_sfdp_fixups(nor);
 
 	spi_nor_late_init_params(nor);
+
+	return 0;
 }
 
 /**
@@ -2822,14 +2843,14 @@ static void spi_nor_init_params(struct spi_nor *nor)
  */
 static int spi_nor_quad_enable(struct spi_nor *nor)
 {
-	if (!nor->params.quad_enable)
+	if (!nor->params->quad_enable)
 		return 0;
 
 	if (!(spi_nor_get_protocol_width(nor->read_proto) == 4 ||
 	      spi_nor_get_protocol_width(nor->write_proto) == 4))
 		return 0;
 
-	return nor->params.quad_enable(nor);
+	return nor->params->quad_enable(nor);
 }
 
 /**
@@ -2844,7 +2865,7 @@ static int spi_nor_quad_enable(struct spi_nor *nor)
 static int spi_nor_unlock_all(struct spi_nor *nor)
 {
 	if (nor->flags & SNOR_F_HAS_LOCK)
-		return spi_nor_unlock(&nor->mtd, 0, nor->params.size);
+		return spi_nor_unlock(&nor->mtd, 0, nor->params->size);
 
 	return 0;
 }
@@ -2875,7 +2896,7 @@ static int spi_nor_init(struct spi_nor *nor)
 		 */
 		WARN_ONCE(nor->flags & SNOR_F_BROKEN_RESET,
 			  "enabling reset hack; may not recover from unexpected reboots\n");
-		nor->params.set_4byte_addr_mode(nor, true);
+		nor->params->set_4byte_addr_mode(nor, true);
 	}
 
 	return 0;
@@ -2899,7 +2920,7 @@ void spi_nor_restore(struct spi_nor *nor)
 	/* restore the addressing mode */
 	if (nor->addr_width == 4 && !(nor->flags & SNOR_F_4B_OPCODES) &&
 	    nor->flags & SNOR_F_BROKEN_RESET)
-		nor->params.set_4byte_addr_mode(nor, false);
+		nor->params->set_4byte_addr_mode(nor, false);
 }
 EXPORT_SYMBOL_GPL(spi_nor_restore);
 
@@ -3004,7 +3025,6 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	struct device *dev = nor->dev;
 	struct mtd_info *mtd = &nor->mtd;
 	struct device_node *np = spi_nor_get_flash_node(nor);
-	struct spi_nor_flash_parameter *params = &nor->params;
 	int ret;
 	int i;
 
@@ -3055,7 +3075,9 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	mtd->_write = spi_nor_write;
 
 	/* Init flash parameters based on flash_info struct and SFDP */
-	spi_nor_init_params(nor);
+	ret = spi_nor_init_params(nor);
+	if (ret)
+		return ret;
 
 	if (!mtd->name)
 		mtd->name = dev_name(dev);
@@ -3063,12 +3085,12 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	mtd->type = MTD_NORFLASH;
 	mtd->writesize = 1;
 	mtd->flags = MTD_CAP_NORFLASH;
-	mtd->size = params->size;
+	mtd->size = nor->params->size;
 	mtd->_erase = spi_nor_erase;
 	mtd->_read = spi_nor_read;
 	mtd->_resume = spi_nor_resume;
 
-	if (nor->params.locking_ops) {
+	if (nor->params->locking_ops) {
 		mtd->_lock = spi_nor_lock;
 		mtd->_unlock = spi_nor_unlock;
 		mtd->_is_locked = spi_nor_is_locked;
@@ -3091,7 +3113,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 		mtd->flags |= MTD_NO_ERASE;
 
 	mtd->dev.parent = dev;
-	nor->page_size = params->page_size;
+	nor->page_size = nor->params->page_size;
 	mtd->writebufsize = nor->page_size;
 
 	if (of_property_read_bool(np, "broken-flash-reset"))
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 2bc620708d6f..3ce826b35ad1 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -11,6 +11,220 @@
 
 #define SPI_NOR_MAX_ID_LEN	6
 
+enum spi_nor_option_flags {
+	SNOR_F_USE_FSR		= BIT(0),
+	SNOR_F_HAS_SR_TB	= BIT(1),
+	SNOR_F_NO_OP_CHIP_ERASE	= BIT(2),
+	SNOR_F_READY_XSR_RDY	= BIT(3),
+	SNOR_F_USE_CLSR		= BIT(4),
+	SNOR_F_BROKEN_RESET	= BIT(5),
+	SNOR_F_4B_OPCODES	= BIT(6),
+	SNOR_F_HAS_4BAIT	= BIT(7),
+	SNOR_F_HAS_LOCK		= BIT(8),
+	SNOR_F_HAS_16BIT_SR	= BIT(9),
+	SNOR_F_NO_READ_CR	= BIT(10),
+	SNOR_F_HAS_SR_TB_BIT6	= BIT(11),
+};
+
+struct spi_nor_read_command {
+	u8			num_mode_clocks;
+	u8			num_wait_states;
+	u8			opcode;
+	enum spi_nor_protocol	proto;
+};
+
+struct spi_nor_pp_command {
+	u8			opcode;
+	enum spi_nor_protocol	proto;
+};
+
+enum spi_nor_read_command_index {
+	SNOR_CMD_READ,
+	SNOR_CMD_READ_FAST,
+	SNOR_CMD_READ_1_1_1_DTR,
+
+	/* Dual SPI */
+	SNOR_CMD_READ_1_1_2,
+	SNOR_CMD_READ_1_2_2,
+	SNOR_CMD_READ_2_2_2,
+	SNOR_CMD_READ_1_2_2_DTR,
+
+	/* Quad SPI */
+	SNOR_CMD_READ_1_1_4,
+	SNOR_CMD_READ_1_4_4,
+	SNOR_CMD_READ_4_4_4,
+	SNOR_CMD_READ_1_4_4_DTR,
+
+	/* Octal SPI */
+	SNOR_CMD_READ_1_1_8,
+	SNOR_CMD_READ_1_8_8,
+	SNOR_CMD_READ_8_8_8,
+	SNOR_CMD_READ_1_8_8_DTR,
+
+	SNOR_CMD_READ_MAX
+};
+
+enum spi_nor_pp_command_index {
+	SNOR_CMD_PP,
+
+	/* Quad SPI */
+	SNOR_CMD_PP_1_1_4,
+	SNOR_CMD_PP_1_4_4,
+	SNOR_CMD_PP_4_4_4,
+
+	/* Octal SPI */
+	SNOR_CMD_PP_1_1_8,
+	SNOR_CMD_PP_1_8_8,
+	SNOR_CMD_PP_8_8_8,
+
+	SNOR_CMD_PP_MAX
+};
+
+/**
+ * struct spi_nor_erase_type - Structure to describe a SPI NOR erase type
+ * @size:		the size of the sector/block erased by the erase type.
+ *			JEDEC JESD216B imposes erase sizes to be a power of 2.
+ * @size_shift:		@size is a power of 2, the shift is stored in
+ *			@size_shift.
+ * @size_mask:		the size mask based on @size_shift.
+ * @opcode:		the SPI command op code to erase the sector/block.
+ * @idx:		Erase Type index as sorted in the Basic Flash Parameter
+ *			Table. It will be used to synchronize the supported
+ *			Erase Types with the ones identified in the SFDP
+ *			optional tables.
+ */
+struct spi_nor_erase_type {
+	u32	size;
+	u32	size_shift;
+	u32	size_mask;
+	u8	opcode;
+	u8	idx;
+};
+
+/**
+ * struct spi_nor_erase_command - Used for non-uniform erases
+ * The structure is used to describe a list of erase commands to be executed
+ * once we validate that the erase can be performed. The elements in the list
+ * are run-length encoded.
+ * @list:		for inclusion into the list of erase commands.
+ * @count:		how many times the same erase command should be
+ *			consecutively used.
+ * @size:		the size of the sector/block erased by the command.
+ * @opcode:		the SPI command op code to erase the sector/block.
+ */
+struct spi_nor_erase_command {
+	struct list_head	list;
+	u32			count;
+	u32			size;
+	u8			opcode;
+};
+
+/**
+ * struct spi_nor_erase_region - Structure to describe a SPI NOR erase region
+ * @offset:		the offset in the data array of erase region start.
+ *			LSB bits are used as a bitmask encoding flags to
+ *			determine if this region is overlaid, if this region is
+ *			the last in the SPI NOR flash memory and to indicate
+ *			all the supported erase commands inside this region.
+ *			The erase types are sorted in ascending order with the
+ *			smallest Erase Type size being at BIT(0).
+ * @size:		the size of the region in bytes.
+ */
+struct spi_nor_erase_region {
+	u64		offset;
+	u64		size;
+};
+
+#define SNOR_ERASE_TYPE_MAX	4
+#define SNOR_ERASE_TYPE_MASK	GENMASK_ULL(SNOR_ERASE_TYPE_MAX - 1, 0)
+
+#define SNOR_LAST_REGION	BIT(4)
+#define SNOR_OVERLAID_REGION	BIT(5)
+
+#define SNOR_ERASE_FLAGS_MAX	6
+#define SNOR_ERASE_FLAGS_MASK	GENMASK_ULL(SNOR_ERASE_FLAGS_MAX - 1, 0)
+
+/**
+ * struct spi_nor_erase_map - Structure to describe the SPI NOR erase map
+ * @regions:		array of erase regions. The regions are consecutive in
+ *			address space. Walking through the regions is done
+ *			incrementally.
+ * @uniform_region:	a pre-allocated erase region for SPI NOR with a uniform
+ *			sector size (legacy implementation).
+ * @erase_type:		an array of erase types shared by all the regions.
+ *			The erase types are sorted in ascending order, with the
+ *			smallest Erase Type size being the first member in the
+ *			erase_type array.
+ * @uniform_erase_type:	bitmask encoding erase types that can erase the
+ *			entire memory. This member is completed at init by
+ *			uniform and non-uniform SPI NOR flash memories if they
+ *			support at least one erase type that can erase the
+ *			entire memory.
+ */
+struct spi_nor_erase_map {
+	struct spi_nor_erase_region	*regions;
+	struct spi_nor_erase_region	uniform_region;
+	struct spi_nor_erase_type	erase_type[SNOR_ERASE_TYPE_MAX];
+	u8				uniform_erase_type;
+};
+
+/**
+ * struct spi_nor_locking_ops - SPI NOR locking methods
+ * @lock:	lock a region of the SPI NOR.
+ * @unlock:	unlock a region of the SPI NOR.
+ * @is_locked:	check if a region of the SPI NOR is completely locked
+ */
+struct spi_nor_locking_ops {
+	int (*lock)(struct spi_nor *nor, loff_t ofs, uint64_t len);
+	int (*unlock)(struct spi_nor *nor, loff_t ofs, uint64_t len);
+	int (*is_locked)(struct spi_nor *nor, loff_t ofs, uint64_t len);
+};
+
+/**
+ * struct spi_nor_flash_parameter - SPI NOR flash parameters and settings.
+ * Includes legacy flash parameters and settings that can be overwritten
+ * by the spi_nor_fixups hooks, or dynamically when parsing the JESD216
+ * Serial Flash Discoverable Parameters (SFDP) tables.
+ *
+ * @size:		the flash memory density in bytes.
+ * @page_size:		the page size of the SPI NOR flash memory.
+ * @hwcaps:		describes the read and page program hardware
+ *			capabilities.
+ * @reads:		read capabilities ordered by priority: the higher index
+ *                      in the array, the higher priority.
+ * @page_programs:	page program capabilities ordered by priority: the
+ *                      higher index in the array, the higher priority.
+ * @erase_map:		the erase map parsed from the SFDP Sector Map Parameter
+ *                      Table.
+ * @quad_enable:	enables SPI NOR quad mode.
+ * @set_4byte_addr_mode: puts the SPI NOR in 4 byte addressing mode.
+ * @convert_addr:	converts an absolute address into something the flash
+ *                      will understand. Particularly useful when pagesize is
+ *                      not a power-of-2.
+ * @setup:              configures the SPI NOR memory. Useful for SPI NOR
+ *                      flashes that have peculiarities to the SPI NOR standard
+ *                      e.g. different opcodes, specific address calculation,
+ *                      page size, etc.
+ * @locking_ops:	SPI NOR locking methods.
+ */
+struct spi_nor_flash_parameter {
+	u64				size;
+	u32				page_size;
+
+	struct spi_nor_hwcaps		hwcaps;
+	struct spi_nor_read_command	reads[SNOR_CMD_READ_MAX];
+	struct spi_nor_pp_command	page_programs[SNOR_CMD_PP_MAX];
+
+	struct spi_nor_erase_map        erase_map;
+
+	int (*quad_enable)(struct spi_nor *nor);
+	int (*set_4byte_addr_mode)(struct spi_nor *nor, bool enable);
+	u32 (*convert_addr)(struct spi_nor *nor, u32 addr);
+	int (*setup)(struct spi_nor *nor, const struct spi_nor_hwcaps *hwcaps);
+
+	const struct spi_nor_locking_ops *locking_ops;
+};
+
 /**
  * struct spi_nor_fixups - SPI NOR fixup hooks
  * @default_init: called after default flash parameters init. Used to tweak
diff --git a/drivers/mtd/spi-nor/gigadevice.c b/drivers/mtd/spi-nor/gigadevice.c
index 7930e4490dab..447d84bb2128 100644
--- a/drivers/mtd/spi-nor/gigadevice.c
+++ b/drivers/mtd/spi-nor/gigadevice.c
@@ -16,7 +16,7 @@ static void gd25q256_default_init(struct spi_nor *nor)
 	 * indicate the quad_enable method for this case, we need
 	 * to set it in the default_init fixup hook.
 	 */
-	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
+	nor->params->quad_enable = spi_nor_sr1_bit6_quad_enable;
 }
 
 static struct spi_nor_fixups gd25q256_fixups = {
diff --git a/drivers/mtd/spi-nor/issi.c b/drivers/mtd/spi-nor/issi.c
index 3a1c34c41388..ffcb60e54a80 100644
--- a/drivers/mtd/spi-nor/issi.c
+++ b/drivers/mtd/spi-nor/issi.c
@@ -68,7 +68,7 @@ static const struct flash_info issi_parts[] = {
 
 static void issi_default_init(struct spi_nor *nor)
 {
-	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
+	nor->params->quad_enable = spi_nor_sr1_bit6_quad_enable;
 }
 
 static const struct spi_nor_fixups issi_fixups = {
diff --git a/drivers/mtd/spi-nor/macronix.c b/drivers/mtd/spi-nor/macronix.c
index c9b6b45d8f99..ab0f963d630c 100644
--- a/drivers/mtd/spi-nor/macronix.c
+++ b/drivers/mtd/spi-nor/macronix.c
@@ -82,8 +82,8 @@ static const struct flash_info macronix_parts[] = {
 
 static void macronix_default_init(struct spi_nor *nor)
 {
-	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
-	nor->params.set_4byte_addr_mode = spi_nor_set_4byte_addr_mode;
+	nor->params->quad_enable = spi_nor_sr1_bit6_quad_enable;
+	nor->params->set_4byte_addr_mode = spi_nor_set_4byte_addr_mode;
 }
 
 static const struct spi_nor_fixups macronix_fixups = {
diff --git a/drivers/mtd/spi-nor/micron-st.c b/drivers/mtd/spi-nor/micron-st.c
index 9d32ee0ef5a5..3874a62d8b47 100644
--- a/drivers/mtd/spi-nor/micron-st.c
+++ b/drivers/mtd/spi-nor/micron-st.c
@@ -130,8 +130,8 @@ static void micron_st_default_init(struct spi_nor *nor)
 {
 	nor->flags |= SNOR_F_HAS_LOCK;
 	nor->flags &= ~SNOR_F_HAS_16BIT_SR;
-	nor->params.quad_enable = NULL;
-	nor->params.set_4byte_addr_mode = st_micron_set_4byte_addr_mode;
+	nor->params->quad_enable = NULL;
+	nor->params->set_4byte_addr_mode = st_micron_set_4byte_addr_mode;
 }
 
 static const struct spi_nor_fixups micron_st_fixups = {
diff --git a/drivers/mtd/spi-nor/sfdp.c b/drivers/mtd/spi-nor/sfdp.c
index c162015d19b1..df967f1f4951 100644
--- a/drivers/mtd/spi-nor/sfdp.c
+++ b/drivers/mtd/spi-nor/sfdp.c
@@ -734,6 +734,16 @@ static const u32 *spi_nor_get_map_in_use(struct spi_nor *nor, const u32 *smpt,
 	return ret;
 }
 
+static void spi_nor_region_mark_end(struct spi_nor_erase_region *region)
+{
+	region->offset |= SNOR_LAST_REGION;
+}
+
+static void spi_nor_region_mark_overlay(struct spi_nor_erase_region *region)
+{
+	region->offset |= SNOR_OVERLAID_REGION;
+}
+
 /**
  * spi_nor_region_check_overlay() - set overlay bit when the region is overlaid
  * @region:	pointer to a structure that describes a SPI NOR erase region
diff --git a/drivers/mtd/spi-nor/spansion.c b/drivers/mtd/spi-nor/spansion.c
index 16683983a20e..6756202ace4b 100644
--- a/drivers/mtd/spi-nor/spansion.c
+++ b/drivers/mtd/spi-nor/spansion.c
@@ -74,7 +74,7 @@ static const struct flash_info spansion_parts[] = {
 
 static void spansion_post_sfdp_fixups(struct spi_nor *nor)
 {
-	if (nor->params.size <= SZ_16M)
+	if (nor->params->size <= SZ_16M)
 		return;
 
 	nor->flags |= SNOR_F_4B_OPCODES;
diff --git a/drivers/mtd/spi-nor/winbond.c b/drivers/mtd/spi-nor/winbond.c
index 3f8c568091d3..17deabad57e1 100644
--- a/drivers/mtd/spi-nor/winbond.c
+++ b/drivers/mtd/spi-nor/winbond.c
@@ -97,7 +97,7 @@ static int winbond_set_4byte_addr_mode(struct spi_nor *nor, bool enable)
 
 static void winbond_default_init(struct spi_nor *nor)
 {
-	nor->params.set_4byte_addr_mode = winbond_set_4byte_addr_mode;
+	nor->params->set_4byte_addr_mode = winbond_set_4byte_addr_mode;
 }
 
 static const struct spi_nor_fixups winbond_fixups = {
diff --git a/drivers/mtd/spi-nor/xilinx.c b/drivers/mtd/spi-nor/xilinx.c
index fcf635d89f65..1138bdbf4199 100644
--- a/drivers/mtd/spi-nor/xilinx.c
+++ b/drivers/mtd/spi-nor/xilinx.c
@@ -70,7 +70,7 @@ static int xilinx_nor_setup(struct spi_nor *nor,
 		nor->mtd.erasesize = 8 * nor->page_size;
 	} else {
 		/* Flash in Default addressing mode */
-		nor->params.convert_addr = s3an_convert_addr;
+		nor->params->convert_addr = s3an_convert_addr;
 		nor->mtd.erasesize = nor->info->sector_size;
 	}
 
@@ -79,7 +79,7 @@ static int xilinx_nor_setup(struct spi_nor *nor,
 
 static void xilinx_post_sfdp_fixups(struct spi_nor *nor)
 {
-	nor->params.setup = xilinx_nor_setup;
+	nor->params->setup = xilinx_nor_setup;
 }
 
 static const struct spi_nor_fixups xilinx_fixups = {
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 2f7725525460..e656858b50a5 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -210,110 +210,6 @@ static inline u8 spi_nor_get_protocol_width(enum spi_nor_protocol proto)
 	return spi_nor_get_protocol_data_nbits(proto);
 }
 
-enum spi_nor_option_flags {
-	SNOR_F_USE_FSR		= BIT(0),
-	SNOR_F_HAS_SR_TB	= BIT(1),
-	SNOR_F_NO_OP_CHIP_ERASE	= BIT(2),
-	SNOR_F_READY_XSR_RDY	= BIT(3),
-	SNOR_F_USE_CLSR		= BIT(4),
-	SNOR_F_BROKEN_RESET	= BIT(5),
-	SNOR_F_4B_OPCODES	= BIT(6),
-	SNOR_F_HAS_4BAIT	= BIT(7),
-	SNOR_F_HAS_LOCK		= BIT(8),
-	SNOR_F_HAS_16BIT_SR	= BIT(9),
-	SNOR_F_NO_READ_CR	= BIT(10),
-	SNOR_F_HAS_SR_TB_BIT6	= BIT(11),
-
-};
-
-/**
- * struct spi_nor_erase_type - Structure to describe a SPI NOR erase type
- * @size:		the size of the sector/block erased by the erase type.
- *			JEDEC JESD216B imposes erase sizes to be a power of 2.
- * @size_shift:		@size is a power of 2, the shift is stored in
- *			@size_shift.
- * @size_mask:		the size mask based on @size_shift.
- * @opcode:		the SPI command op code to erase the sector/block.
- * @idx:		Erase Type index as sorted in the Basic Flash Parameter
- *			Table. It will be used to synchronize the supported
- *			Erase Types with the ones identified in the SFDP
- *			optional tables.
- */
-struct spi_nor_erase_type {
-	u32	size;
-	u32	size_shift;
-	u32	size_mask;
-	u8	opcode;
-	u8	idx;
-};
-
-/**
- * struct spi_nor_erase_command - Used for non-uniform erases
- * The structure is used to describe a list of erase commands to be executed
- * once we validate that the erase can be performed. The elements in the list
- * are run-length encoded.
- * @list:		for inclusion into the list of erase commands.
- * @count:		how many times the same erase command should be
- *			consecutively used.
- * @size:		the size of the sector/block erased by the command.
- * @opcode:		the SPI command op code to erase the sector/block.
- */
-struct spi_nor_erase_command {
-	struct list_head	list;
-	u32			count;
-	u32			size;
-	u8			opcode;
-};
-
-/**
- * struct spi_nor_erase_region - Structure to describe a SPI NOR erase region
- * @offset:		the offset in the data array of erase region start.
- *			LSB bits are used as a bitmask encoding flags to
- *			determine if this region is overlaid, if this region is
- *			the last in the SPI NOR flash memory and to indicate
- *			all the supported erase commands inside this region.
- *			The erase types are sorted in ascending order with the
- *			smallest Erase Type size being at BIT(0).
- * @size:		the size of the region in bytes.
- */
-struct spi_nor_erase_region {
-	u64		offset;
-	u64		size;
-};
-
-#define SNOR_ERASE_TYPE_MAX	4
-#define SNOR_ERASE_TYPE_MASK	GENMASK_ULL(SNOR_ERASE_TYPE_MAX - 1, 0)
-
-#define SNOR_LAST_REGION	BIT(4)
-#define SNOR_OVERLAID_REGION	BIT(5)
-
-#define SNOR_ERASE_FLAGS_MAX	6
-#define SNOR_ERASE_FLAGS_MASK	GENMASK_ULL(SNOR_ERASE_FLAGS_MAX - 1, 0)
-
-/**
- * struct spi_nor_erase_map - Structure to describe the SPI NOR erase map
- * @regions:		array of erase regions. The regions are consecutive in
- *			address space. Walking through the regions is done
- *			incrementally.
- * @uniform_region:	a pre-allocated erase region for SPI NOR with a uniform
- *			sector size (legacy implementation).
- * @erase_type:		an array of erase types shared by all the regions.
- *			The erase types are sorted in ascending order, with the
- *			smallest Erase Type size being the first member in the
- *			erase_type array.
- * @uniform_erase_type:	bitmask encoding erase types that can erase the
- *			entire memory. This member is completed at init by
- *			uniform and non-uniform SPI NOR flash memories if they
- *			support at least one erase type that can erase the
- *			entire memory.
- */
-struct spi_nor_erase_map {
-	struct spi_nor_erase_region	*regions;
-	struct spi_nor_erase_region	uniform_region;
-	struct spi_nor_erase_type	erase_type[SNOR_ERASE_TYPE_MAX];
-	u8				uniform_erase_type;
-};
-
 /**
  * struct spi_nor_hwcaps - Structure for describing the hardware capabilies
  * supported by the SPI controller (bus master).
@@ -389,61 +285,7 @@ struct spi_nor_hwcaps {
 #define SNOR_HWCAPS_ALL		(SNOR_HWCAPS_READ_MASK |	\
 				 SNOR_HWCAPS_PP_MASK)
 
-struct spi_nor_read_command {
-	u8			num_mode_clocks;
-	u8			num_wait_states;
-	u8			opcode;
-	enum spi_nor_protocol	proto;
-};
-
-struct spi_nor_pp_command {
-	u8			opcode;
-	enum spi_nor_protocol	proto;
-};
-
-enum spi_nor_read_command_index {
-	SNOR_CMD_READ,
-	SNOR_CMD_READ_FAST,
-	SNOR_CMD_READ_1_1_1_DTR,
-
-	/* Dual SPI */
-	SNOR_CMD_READ_1_1_2,
-	SNOR_CMD_READ_1_2_2,
-	SNOR_CMD_READ_2_2_2,
-	SNOR_CMD_READ_1_2_2_DTR,
-
-	/* Quad SPI */
-	SNOR_CMD_READ_1_1_4,
-	SNOR_CMD_READ_1_4_4,
-	SNOR_CMD_READ_4_4_4,
-	SNOR_CMD_READ_1_4_4_DTR,
-
-	/* Octal SPI */
-	SNOR_CMD_READ_1_1_8,
-	SNOR_CMD_READ_1_8_8,
-	SNOR_CMD_READ_8_8_8,
-	SNOR_CMD_READ_1_8_8_DTR,
-
-	SNOR_CMD_READ_MAX
-};
-
-enum spi_nor_pp_command_index {
-	SNOR_CMD_PP,
-
-	/* Quad SPI */
-	SNOR_CMD_PP_1_1_4,
-	SNOR_CMD_PP_1_4_4,
-	SNOR_CMD_PP_4_4_4,
-
-	/* Octal SPI */
-	SNOR_CMD_PP_1_1_8,
-	SNOR_CMD_PP_1_8_8,
-	SNOR_CMD_PP_8_8_8,
-
-	SNOR_CMD_PP_MAX
-};
-
-/* Forward declaration that will be used in 'struct spi_nor_flash_parameter' */
+/* Forward declaration that is used in 'struct spi_nor_controller_ops' */
 struct spi_nor;
 
 /**
@@ -474,74 +316,13 @@ struct spi_nor_controller_ops {
 	int (*erase)(struct spi_nor *nor, loff_t offs);
 };
 
-/**
- * struct spi_nor_locking_ops - SPI NOR locking methods
- * @lock:	lock a region of the SPI NOR.
- * @unlock:	unlock a region of the SPI NOR.
- * @is_locked:	check if a region of the SPI NOR is completely locked
- */
-struct spi_nor_locking_ops {
-	int (*lock)(struct spi_nor *nor, loff_t ofs, uint64_t len);
-	int (*unlock)(struct spi_nor *nor, loff_t ofs, uint64_t len);
-	int (*is_locked)(struct spi_nor *nor, loff_t ofs, uint64_t len);
-};
-
-/**
- * struct spi_nor_flash_parameter - SPI NOR flash parameters and settings.
- * Includes legacy flash parameters and settings that can be overwritten
- * by the spi_nor_fixups hooks, or dynamically when parsing the JESD216
- * Serial Flash Discoverable Parameters (SFDP) tables.
- *
- * @size:		the flash memory density in bytes.
- * @page_size:		the page size of the SPI NOR flash memory.
- * @hwcaps:		describes the read and page program hardware
- *			capabilities.
- * @reads:		read capabilities ordered by priority: the higher index
- *                      in the array, the higher priority.
- * @page_programs:	page program capabilities ordered by priority: the
- *                      higher index in the array, the higher priority.
- * @erase_map:		the erase map parsed from the SFDP Sector Map Parameter
- *                      Table.
- * @quad_enable:	enables SPI NOR quad mode.
- * @set_4byte_addr_mode: puts the SPI NOR in 4 byte addressing mode.
- * @convert_addr:	converts an absolute address into something the flash
- *                      will understand. Particularly useful when pagesize is
- *                      not a power-of-2.
- * @setup:              configures the SPI NOR memory. Useful for SPI NOR
- *                      flashes that have peculiarities to the SPI NOR standard
- *                      e.g. different opcodes, specific address calculation,
- *                      page size, etc.
- * @locking_ops:	SPI NOR locking methods.
- */
-struct spi_nor_flash_parameter {
-	u64				size;
-	u32				page_size;
-
-	struct spi_nor_hwcaps		hwcaps;
-	struct spi_nor_read_command	reads[SNOR_CMD_READ_MAX];
-	struct spi_nor_pp_command	page_programs[SNOR_CMD_PP_MAX];
-
-	struct spi_nor_erase_map        erase_map;
-
-	int (*quad_enable)(struct spi_nor *nor);
-	int (*set_4byte_addr_mode)(struct spi_nor *nor, bool enable);
-	u32 (*convert_addr)(struct spi_nor *nor, u32 addr);
-	int (*setup)(struct spi_nor *nor, const struct spi_nor_hwcaps *hwcaps);
-
-	const struct spi_nor_locking_ops *locking_ops;
-};
-
-/**
- * struct flash_info - Forward declaration of a structure used internally by
- *		       spi_nor_scan()
+/*
+ * Forward declarations that are used internally by the core and manufacturer
+ * drivers.
  */
 struct flash_info;
-
-/**
- * struct spi_nor_manufacturer - Forward declaration of a structure used
- * internally by the core and manufacturer drivers.
- */
 struct spi_nor_manufacturer;
+struct spi_nor_flash_parameter;
 
 /**
  * struct spi_nor - Structure for defining a the SPI NOR layer
@@ -596,7 +377,7 @@ struct spi_nor {
 
 	const struct spi_nor_controller_ops *controller_ops;
 
-	struct spi_nor_flash_parameter params;
+	struct spi_nor_flash_parameter *params;
 
 	struct {
 		struct spi_mem_dirmap_desc *rdesc;
@@ -606,35 +387,6 @@ struct spi_nor {
 	void *priv;
 };
 
-static u64 __maybe_unused
-spi_nor_region_is_last(const struct spi_nor_erase_region *region)
-{
-	return region->offset & SNOR_LAST_REGION;
-}
-
-static u64 __maybe_unused
-spi_nor_region_end(const struct spi_nor_erase_region *region)
-{
-	return (region->offset & ~SNOR_ERASE_FLAGS_MASK) + region->size;
-}
-
-static void __maybe_unused
-spi_nor_region_mark_end(struct spi_nor_erase_region *region)
-{
-	region->offset |= SNOR_LAST_REGION;
-}
-
-static void __maybe_unused
-spi_nor_region_mark_overlay(struct spi_nor_erase_region *region)
-{
-	region->offset |= SNOR_OVERLAID_REGION;
-}
-
-static bool __maybe_unused spi_nor_has_uniform_erase(const struct spi_nor *nor)
-{
-	return !!nor->params.erase_map.uniform_erase_type;
-}
-
 static inline void spi_nor_set_flash_node(struct spi_nor *nor,
 					  struct device_node *np)
 {
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
