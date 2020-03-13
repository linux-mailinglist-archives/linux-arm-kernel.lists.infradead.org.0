Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A889184FBB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:57:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gGeDzehLZG5NG6eSwiZl2U+Of7QZnLFj0H5oBFH4vrk=; b=XccJlOrOefrrnK
	nWqP9zbqt+rvS+HjrW2giD+R5h2CVmOap8aYuM7b+9ETGSN5UyTuJ9lIQM/4RuJ5mLYZ3zEj2SSZ7
	t6awO4aetD1eyURQRDEg2k611PwE1NEaxqyJmGer7WYAnoY2Hjgy8cAP2TVfxtf60rIem/mHHf11H
	CVPdvTVScuRLdF/tAk8WJaILbwjsQlnaGnTBvZAmrnLdPXPW/4RthmSAcoAtmwhvdy/yjFH0f5hwZ
	ZSzOzZWqtwN9f9tmhZ5xJ93v9Sn8QQpLT75MXtDRiWEH7+Sdsa/NKOBOl++ofgeEEdQoeuImaUa6Z
	4ddq7+L7NbttTsYZp+6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqRC-0006N5-Fx; Fri, 13 Mar 2020 19:57:42 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqD4-0008U3-Pt; Fri, 13 Mar 2020 19:43:11 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: EcWEyQmJdMAI4ZsteOTF8uSLtOryDyvuQ4CjprfvCDkXS8boMe8NwGpoK+VVm6fCBVAA0/cETg
 t1fcRWyOOb8/Mz/PBenECFq0iHm4Zj4x6aL0k201YpxsjTjG9n8/uewotLajG79VBkBz6iOu4L
 BP+lobefNK01B887dVs8yJ/mTxMVJ4CKDvb/OJ48+7uMGUZ1lCh9UZbLofXRemDrGWIqoeX10B
 HQbW/zYgZqyvLfgorts/yihHviiqZ7y017h3zgEjT01r5xW6Xg9sU/ox/hWpw2dzPCrKxJFJ2O
 n/k=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="67134844"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:42:59 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:55 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Mar 2020 12:42:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JXVAUs0ExfSePL21FLJ43daLghVOUxVTCLdgQEIw1a59Vr0D+dXBBbMFvBMbO9jG/cJqQaWnYIWO9yyfFgCddeDElBJjdRtR/1jw5fDsBUelYbR64lyYYmbKodmBPG12F+UwxZpGyuy16nmnlPLy4AMSGlYYlwkmvxExCU/9pkolwFpIPabeUc3E36FWVYKswWCDiRzXeqY9F8cnlTY4HlvVAob18RpjjhoVSNxoKs/xcbRml1nV8W43+uwCCWVx3YMNTdGy9vXzqJmtuyaT3J20dsj5yUtCvd38IpBWA/mZFW5mOVTX6J7QFTTmhcSCz3Dr+AmgsO4Qyqt8MWusmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gR0MkzW7sL/lc4BdyTVgVBr7VAOBe+HwNC8S9PmIrgM=;
 b=HM7bdvO3VOqo3AaixljmrVDNMYKQYqogJV1sfwA8JJIwFe1d6EO7LG8NGTFielXeHLvXeuwOa3z9V2cxYq14TZSipODX2EBzTe99nih0qEZ6ZEkC4MitzlwB+U2j7ulkwxRyKkofwyvR1AoFfXQlTf0al6iPLWtTYSUQyF8fJpe1bCZ2++mEsEV4e8yWBKAU98qGh56QPReSt+7IRqwQyXJpmXr3zCEHF4sPHafEj4q6gdrf8MMU3Bg19+nPVU/im+6zXDgzPqCLT5lzAOyD4u5NH/qSwag4O5flzm+sscJRts+FQByd24yWCgbH/MoQ81Pq6p9QRHj4XaYffI6Epg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gR0MkzW7sL/lc4BdyTVgVBr7VAOBe+HwNC8S9PmIrgM=;
 b=ewLtuaMsU/qOY71yAzZDqKloCN9X73spznERYJz2FoapnUmWbzBTtWWaxP4lj6DD5o29/5W2RndcfzooZZ5513BLXCNGCMnQJp9tI+x4MtmCwF05vTKWp+r73wsssvjUl1KpcYP9v8Hfomr8/0iVNiu+sqBd0no1u1mLAhjJnqw=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by BYASPR01MB10.namprd11.prod.outlook.com (2603:10b6:a02:92::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 13 Mar
 2020 19:42:54 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:54 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 18/25] mtd: spi-nor: Move SST bits out of core.c
Thread-Topic: [PATCH v2 18/25] mtd: spi-nor: Move SST bits out of core.c
Thread-Index: AQHV+W+SVliN5WpP1EiuZqNuM1hnAQ==
Date: Fri, 13 Mar 2020 19:42:47 +0000
Message-ID: <20200313194130.342251-19-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0e1cb05f-7b05-4b7d-f836-08d7c786b917
x-ms-traffictypediagnostic: BYASPR01MB10:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYASPR01MB106DA09EEE72B92E3AFE19F0FA0@BYASPR01MB10.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(39860400002)(396003)(366004)(376002)(199004)(478600001)(54906003)(107886003)(6512007)(110136005)(26005)(186003)(6486002)(4326008)(2616005)(316002)(71200400001)(6666004)(6506007)(86362001)(36756003)(8676002)(5660300002)(2906002)(30864003)(66476007)(66446008)(66556008)(76116006)(64756008)(91956017)(66946007)(1076003)(81166006)(81156014)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYASPR01MB10;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LTnHsgfp5gze+ECpffqYwG8AmEJeiz6zA8AuLL19vMSO6v0/HJSkJsxs4vD4K+dLEwqUqrZjXSenmRW9mXxa5xrrR25bUKKwqVbtZxPJdfbySHkXGzGCfR8JdnDLFgNAPocvFxWAxnJCMGOXnfeHG72ZsoZYfch3dO95bwuwUGxd5BaX5h7mb5bmlcXzO4bvSvNFlp49Lz6iRk8XBynt85YQee922C3hCywTsAMqWCTcVH4vxPIAAL+C6abPwwbhyBCr4Xax5PA4pjdFuo2rRrm9wotkYigODbt0zUV+9fvboHA6YaBN4OQJrw2azZAVtrSR/NAIs/TA4MF50SjOtFWvJ1aoQoa9nM4nNEFiYNaqqCYmAA8JbhsGbjohiuJtjOZBL+V34G7HXsva0nMvkThOxehCvUGtlq6IcMmfA5OtzXIfVRZz1H+qTdPC2vlT
x-ms-exchange-antispam-messagedata: 67pMiQDu6IHoDo6waTboH3JyGuZfg7PRwsUkHUYX2uvn/AsAQi6tqppkxcz6K/sw3zYssC5aItNiTKahgaVl9h8mr3sDsphOddw6u1/JmyMF8GUH/26SoiHH7RnFC4g97Ha42CHdcYiNbuS2HvfFpg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e1cb05f-7b05-4b7d-f836-08d7c786b917
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:47.6373 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X+sem+e9k8MWGTzQWOuanAiNlwta7OMnCj3/gz0O3f2tjk9lnKj8B7lAkrdah6LgzBUcXLG/+o2lsiETwTu1ceiuI6eOLmGEHtntllzCCdc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124307_062304_B4028A27 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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

Create a SPI NOR manufacturer driver for SST chips, and move the
SST definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile |   1 +
 drivers/mtd/spi-nor/core.c   | 123 +---------------------------
 drivers/mtd/spi-nor/core.h   |   1 +
 drivers/mtd/spi-nor/sst.c    | 151 +++++++++++++++++++++++++++++++++++
 4 files changed, 156 insertions(+), 120 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/sst.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index cb06ee50bf68..ef7afc654a15 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -12,4 +12,5 @@ spi-nor-objs			+= issi.o
 spi-nor-objs			+= macronix.o
 spi-nor-objs			+= micron-st.o
 spi-nor-objs			+= spansion.o
+spi-nor-objs			+= sst.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 1500951254d9..c81eac6e9731 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -1995,25 +1995,6 @@ int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* SST -- large erase sizes are "overlays", "sectors" are 4K */
-	{ "sst25vf040b", INFO(0xbf258d, 0, 64 * 1024,  8, SECT_4K | SST_WRITE) },
-	{ "sst25vf080b", INFO(0xbf258e, 0, 64 * 1024, 16, SECT_4K | SST_WRITE) },
-	{ "sst25vf016b", INFO(0xbf2541, 0, 64 * 1024, 32, SECT_4K | SST_WRITE) },
-	{ "sst25vf032b", INFO(0xbf254a, 0, 64 * 1024, 64, SECT_4K | SST_WRITE) },
-	{ "sst25vf064c", INFO(0xbf254b, 0, 64 * 1024, 128, SECT_4K) },
-	{ "sst25wf512",  INFO(0xbf2501, 0, 64 * 1024,  1, SECT_4K | SST_WRITE) },
-	{ "sst25wf010",  INFO(0xbf2502, 0, 64 * 1024,  2, SECT_4K | SST_WRITE) },
-	{ "sst25wf020",  INFO(0xbf2503, 0, 64 * 1024,  4, SECT_4K | SST_WRITE) },
-	{ "sst25wf020a", INFO(0x621612, 0, 64 * 1024,  4, SECT_4K) },
-	{ "sst25wf040b", INFO(0x621613, 0, 64 * 1024,  8, SECT_4K) },
-	{ "sst25wf040",  INFO(0xbf2504, 0, 64 * 1024,  8, SECT_4K | SST_WRITE) },
-	{ "sst25wf080",  INFO(0xbf2505, 0, 64 * 1024, 16, SECT_4K | SST_WRITE) },
-	{ "sst26wf016b", INFO(0xbf2651, 0, 64 * 1024, 32, SECT_4K |
-			      SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "sst26vf016b", INFO(0xbf2641, 0, 64 * 1024, 32, SECT_4K |
-			      SPI_NOR_DUAL_READ) },
-	{ "sst26vf064b", INFO(0xbf2643, 0, 64 * 1024, 128, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-
 	/* Winbond -- w25x "blocks" are 64K, "sectors" are 4KiB */
 	{ "w25x05", INFO(0xef3010, 0, 64 * 1024,  1,  SECT_4K) },
 	{ "w25x10", INFO(0xef3011, 0, 64 * 1024,  2,  SECT_4K) },
@@ -2114,6 +2095,7 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_micron,
 	&spi_nor_st,
 	&spi_nor_spansion,
+	&spi_nor_sst,
 };
 
 static const struct flash_info *
@@ -2214,92 +2196,6 @@ static int spi_nor_read(struct mtd_info *mtd, loff_t from, size_t len,
 	return ret;
 }
 
-static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
-		size_t *retlen, const u_char *buf)
-{
-	struct spi_nor *nor = mtd_to_spi_nor(mtd);
-	size_t actual = 0;
-	int ret;
-
-	dev_dbg(nor->dev, "to 0x%08x, len %zd\n", (u32)to, len);
-
-	ret = spi_nor_lock_and_prep(nor);
-	if (ret)
-		return ret;
-
-	ret = spi_nor_write_enable(nor);
-	if (ret)
-		goto out;
-
-	nor->sst_write_second = false;
-
-	/* Start write from odd address. */
-	if (to % 2) {
-		nor->program_opcode = SPINOR_OP_BP;
-
-		/* write one byte. */
-		ret = spi_nor_write_data(nor, to, 1, buf);
-		if (ret < 0)
-			goto out;
-		WARN(ret != 1, "While writing 1 byte written %i bytes\n", ret);
-		ret = spi_nor_wait_till_ready(nor);
-		if (ret)
-			goto out;
-
-		to++;
-		actual++;
-	}
-
-	/* Write out most of the data here. */
-	for (; actual < len - 1; actual += 2) {
-		nor->program_opcode = SPINOR_OP_AAI_WP;
-
-		/* write two bytes. */
-		ret = spi_nor_write_data(nor, to, 2, buf + actual);
-		if (ret < 0)
-			goto out;
-		WARN(ret != 2, "While writing 2 bytes written %i bytes\n", ret);
-		ret = spi_nor_wait_till_ready(nor);
-		if (ret)
-			goto out;
-		to += 2;
-		nor->sst_write_second = true;
-	}
-	nor->sst_write_second = false;
-
-	ret = spi_nor_write_disable(nor);
-	if (ret)
-		goto out;
-
-	ret = spi_nor_wait_till_ready(nor);
-	if (ret)
-		goto out;
-
-	/* Write out trailing byte if it exists. */
-	if (actual != len) {
-		ret = spi_nor_write_enable(nor);
-		if (ret)
-			goto out;
-
-		nor->program_opcode = SPINOR_OP_BP;
-		ret = spi_nor_write_data(nor, to, 1, buf + actual);
-		if (ret < 0)
-			goto out;
-		WARN(ret != 1, "While writing 1 byte written %i bytes\n", ret);
-		ret = spi_nor_wait_till_ready(nor);
-		if (ret)
-			goto out;
-
-		actual += 1;
-
-		ret = spi_nor_write_disable(nor);
-	}
-out:
-	*retlen += actual;
-	spi_nor_unlock_and_unprep(nor);
-	return ret;
-}
-
 /*
  * Write an address range to the nor chip.  Data must be written in
  * FLASH_PAGESIZE chunks.  The address range may be any size provided
@@ -2893,11 +2789,6 @@ static int spi_nor_setup(struct spi_nor *nor,
 	return nor->params.setup(nor, hwcaps);
 }
 
-static void sst_set_default_init(struct spi_nor *nor)
-{
-	nor->flags |= SNOR_F_HAS_LOCK;
-}
-
 static void winbond_set_default_init(struct spi_nor *nor)
 {
 	nor->params.set_4byte_addr_mode = winbond_set_4byte_addr_mode;
@@ -2912,10 +2803,6 @@ static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
 {
 	/* Init flash parameters based on MFR */
 	switch (JEDEC_MFR(nor->info)) {
-	case SNOR_MFR_SST:
-		sst_set_default_init(nor);
-		break;
-
 	case SNOR_MFR_WINBOND:
 		winbond_set_default_init(nor);
 		break;
@@ -3387,6 +3274,8 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	if (info->flags & SPI_NOR_HAS_LOCK)
 		nor->flags |= SNOR_F_HAS_LOCK;
 
+	mtd->_write = spi_nor_write;
+
 	/* Init flash parameters based on flash_info struct and SFDP */
 	spi_nor_init_params(nor);
 
@@ -3407,12 +3296,6 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 		mtd->_is_locked = spi_nor_is_locked;
 	}
 
-	/* sst nor chips use AAI word program */
-	if (info->flags & SST_WRITE)
-		mtd->_write = sst_write;
-	else
-		mtd->_write = spi_nor_write;
-
 	if (info->flags & USE_FSR)
 		nor->flags |= SNOR_F_USE_FSR;
 	if (info->flags & SPI_NOR_HAS_TB) {
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 470025131d47..e49a2200a90d 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -179,6 +179,7 @@ extern const struct spi_nor_manufacturer spi_nor_macronix;
 extern const struct spi_nor_manufacturer spi_nor_micron;
 extern const struct spi_nor_manufacturer spi_nor_st;
 extern const struct spi_nor_manufacturer spi_nor_spansion;
+extern const struct spi_nor_manufacturer spi_nor_sst;
 
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
diff --git a/drivers/mtd/spi-nor/sst.c b/drivers/mtd/spi-nor/sst.c
new file mode 100644
index 000000000000..e0af6d25d573
--- /dev/null
+++ b/drivers/mtd/spi-nor/sst.c
@@ -0,0 +1,151 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2005, Intec Automation Inc.
+ * Copyright (C) 2014, Freescale Semiconductor, Inc.
+ */
+
+#include <linux/mtd/spi-nor.h>
+
+#include "core.h"
+
+static const struct flash_info sst_parts[] = {
+	/* SST -- large erase sizes are "overlays", "sectors" are 4K */
+	{ "sst25vf040b", INFO(0xbf258d, 0, 64 * 1024,  8,
+			      SECT_4K | SST_WRITE) },
+	{ "sst25vf080b", INFO(0xbf258e, 0, 64 * 1024, 16,
+			      SECT_4K | SST_WRITE) },
+	{ "sst25vf016b", INFO(0xbf2541, 0, 64 * 1024, 32,
+			      SECT_4K | SST_WRITE) },
+	{ "sst25vf032b", INFO(0xbf254a, 0, 64 * 1024, 64,
+			      SECT_4K | SST_WRITE) },
+	{ "sst25vf064c", INFO(0xbf254b, 0, 64 * 1024, 128, SECT_4K) },
+	{ "sst25wf512",  INFO(0xbf2501, 0, 64 * 1024,  1,
+			      SECT_4K | SST_WRITE) },
+	{ "sst25wf010",  INFO(0xbf2502, 0, 64 * 1024,  2,
+			      SECT_4K | SST_WRITE) },
+	{ "sst25wf020",  INFO(0xbf2503, 0, 64 * 1024,  4,
+			      SECT_4K | SST_WRITE) },
+	{ "sst25wf020a", INFO(0x621612, 0, 64 * 1024,  4, SECT_4K) },
+	{ "sst25wf040b", INFO(0x621613, 0, 64 * 1024,  8, SECT_4K) },
+	{ "sst25wf040",  INFO(0xbf2504, 0, 64 * 1024,  8,
+			      SECT_4K | SST_WRITE) },
+	{ "sst25wf080",  INFO(0xbf2505, 0, 64 * 1024, 16,
+			      SECT_4K | SST_WRITE) },
+	{ "sst26wf016b", INFO(0xbf2651, 0, 64 * 1024, 32,
+			      SECT_4K | SPI_NOR_DUAL_READ |
+			      SPI_NOR_QUAD_READ) },
+	{ "sst26vf016b", INFO(0xbf2641, 0, 64 * 1024, 32,
+			      SECT_4K | SPI_NOR_DUAL_READ) },
+	{ "sst26vf064b", INFO(0xbf2643, 0, 64 * 1024, 128,
+			      SECT_4K | SPI_NOR_DUAL_READ |
+			      SPI_NOR_QUAD_READ) },
+};
+
+static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
+		     size_t *retlen, const u_char *buf)
+{
+	struct spi_nor *nor = mtd_to_spi_nor(mtd);
+	size_t actual = 0;
+	int ret;
+
+	dev_dbg(nor->dev, "to 0x%08x, len %zd\n", (u32)to, len);
+
+	ret = spi_nor_lock_and_prep(nor);
+	if (ret)
+		return ret;
+
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		goto out;
+
+	nor->sst_write_second = false;
+
+	/* Start write from odd address. */
+	if (to % 2) {
+		nor->program_opcode = SPINOR_OP_BP;
+
+		/* write one byte. */
+		ret = spi_nor_write_data(nor, to, 1, buf);
+		if (ret < 0)
+			goto out;
+		WARN(ret != 1, "While writing 1 byte written %i bytes\n", ret);
+		ret = spi_nor_wait_till_ready(nor);
+		if (ret)
+			goto out;
+
+		to++;
+		actual++;
+	}
+
+	/* Write out most of the data here. */
+	for (; actual < len - 1; actual += 2) {
+		nor->program_opcode = SPINOR_OP_AAI_WP;
+
+		/* write two bytes. */
+		ret = spi_nor_write_data(nor, to, 2, buf + actual);
+		if (ret < 0)
+			goto out;
+		WARN(ret != 2, "While writing 2 bytes written %i bytes\n", ret);
+		ret = spi_nor_wait_till_ready(nor);
+		if (ret)
+			goto out;
+		to += 2;
+		nor->sst_write_second = true;
+	}
+	nor->sst_write_second = false;
+
+	ret = spi_nor_write_disable(nor);
+	if (ret)
+		goto out;
+
+	ret = spi_nor_wait_till_ready(nor);
+	if (ret)
+		goto out;
+
+	/* Write out trailing byte if it exists. */
+	if (actual != len) {
+		ret = spi_nor_write_enable(nor);
+		if (ret)
+			goto out;
+
+		nor->program_opcode = SPINOR_OP_BP;
+		ret = spi_nor_write_data(nor, to, 1, buf + actual);
+		if (ret < 0)
+			goto out;
+		WARN(ret != 1, "While writing 1 byte written %i bytes\n", ret);
+		ret = spi_nor_wait_till_ready(nor);
+		if (ret)
+			goto out;
+
+		actual += 1;
+
+		ret = spi_nor_write_disable(nor);
+	}
+out:
+	*retlen += actual;
+	spi_nor_unlock_and_unprep(nor);
+	return ret;
+}
+
+static void sst_default_init(struct spi_nor *nor)
+{
+	nor->flags |= SNOR_F_HAS_LOCK;
+}
+
+static void sst_post_sfdp_fixups(struct spi_nor *nor)
+{
+	if (nor->info->flags & SST_WRITE)
+		nor->mtd._write = sst_write;
+}
+
+static const struct spi_nor_fixups sst_fixups = {
+	.default_init = sst_default_init,
+	.post_sfdp = sst_post_sfdp_fixups,
+};
+
+const struct spi_nor_manufacturer spi_nor_sst = {
+	.name = "sst",
+	.parts = sst_parts,
+	.nparts = ARRAY_SIZE(sst_parts),
+	.fixups = &sst_fixups,
+};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
