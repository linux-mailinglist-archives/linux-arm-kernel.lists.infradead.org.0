Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B92184F65
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:44:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rb60gneCA702E/fP0qoeYayvqWU5P28emnqQaOTWwHM=; b=RWpTVdCAMaNmJK
	sKXY3w6sXlwSJu0fYNgzIWrgOW3lM7LB76QRRXS0bnHYaLMzCslLbCW63pu/kgtq3gym5+VW1q61q
	MJUU/Zrj6Qr0SdGQNXS2WoE2owW3op9Yv8O8aK7sEa4zwR6EiJuf9UGcP8wv6DC9roLH9phGBxWG3
	DgPHb80AP2rXsYy77I9mY0A7rLnPeRQiTyNNn99QFLRj/Xis+eSvJNiR+41Lt5rLSDjPBukwlcfrK
	Bpvs1IQQt/uKKlj0pXXYXEVGwT49K24ylx199kjxrH4fHV4+qCeb6CGbjrYeP1ye9thgmAsAJqox+
	HxeRs1ik4BNauB8PVARA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqDy-0000P9-Mc; Fri, 13 Mar 2020 19:44:02 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqCj-0008HT-FG; Fri, 13 Mar 2020 19:42:48 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: KO5XY+eRFMwY/79xkrOMBW/2NUhsZaIle+oD1zDEFyFCQrL+Cly+aWIyjCEZaFbs5IHbtrMu0V
 padWIe1o6pnYG3g4DQTl+rO3G1UJYSLSsgMEIrf5qbvcKqEjcRIDuc/CVU8OnZ5fA0p0JDpyXp
 iqsKHLM5r8zcAThhGEZGDVxQCeB+bKSc2vsJh2rfj9lp/J40970f2WLRaQ6iZWY+DBY+qwCi/V
 RrBDPp1FG4wFbxV9bbqTRfijIAjFcAvcUpocG8OaFdx1xZQsZ3UnWFnfmrIjf7l55mdPwK7alY
 9C0=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; 
   d="scan'208";a="5602883"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:42:41 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:30 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Mar 2020 12:42:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EiIEVqqothnexolXbVU84fjedhYd8kyX2UJuuTr0OBKhDYHwh4OwoEAtA230/tuf5MJcqXNeh22TAW3u4LPRDdFDhCoc/ZPUxEvC5xNkIs1pTtwX8pl7ocgWVLqdaFpq+G7lBDD3mMZvLkfpOy9nsUjKL4z4OrzFTKMM5b1E6KXQI5U5fOh5olzgiJkeZ5Wk5sI/hQnxWl51VVM9bwwerOIx3xOBhG5S8EY0NAellw/YhEvc58VnEiYk2fyoqkP5Niaeqph50I3BqPRVfrL27CgXoH9vgx+QCxZXvMhUHVEpg7j5pJo3vj1+plboVH4wIQAfXjWYnusW/9hwxjxjdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iRmf7b+APXToBPd6P2LTydb5ldY1GMTGFdKFSZd5O98=;
 b=ANrPiHsud1B3IxaSxbrIeTRlt9kliX1qyzJV+Py63ilAa9itkqEcFFAYttzXoXJ+4f0HYm7qs/DydCu24aEBAuQ/oR9pq2ptUn9cmcRC+QYdK0mg5Ww6BSI3AeQvUTsaNHoKhKbecs2JByB6N5uSZMeQhAKJHJD5pDfLu6FYrRrQ8lbaI8zIYyVYcgJZlGNf+jpG88OOd75nWgXCCk6Zm4cSQEbWBPqabRbEVP0f4Lug7z8NQxyBBg6MQHM/Lpf2k6Y3ktsiJ00CwEQQw7Mr8RiO6XRKqnLmvFg+lwbK4irjeUJ+kRxlwY/DEfasN7CE8Mxtf0BbCn2a8QWuvqpEmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iRmf7b+APXToBPd6P2LTydb5ldY1GMTGFdKFSZd5O98=;
 b=e+uEnCApvoYlTRPYOS468DNzeZri/kLtLAsy9sxbTH/m8oENkcL9cAHyx6PeUliVHp4in9NSSYy4sHsT1iaDYWttucfCRJrwH++P2VjrLQ1XP25+yTpc+9KicnX+47a7d09YQ7PuZ8rtarWG4KTLjJRmOCEKPc6xdxZBalq1vj8=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4399.namprd11.prod.outlook.com (2603:10b6:208:17b::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Fri, 13 Mar
 2020 19:42:34 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:34 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 01/25] mtd: spi-nor: Stop prefixing generic functions with
 a manufacturer name
Thread-Topic: [PATCH v2 01/25] mtd: spi-nor: Stop prefixing generic functions
 with a manufacturer name
Thread-Index: AQHV+W+KlPt51Ol/xU6uVKayMYQqaw==
Date: Fri, 13 Mar 2020 19:42:34 +0000
Message-ID: <20200313194130.342251-2-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d9faee14-b615-44f5-637b-08d7c786ad7a
x-ms-traffictypediagnostic: MN2PR11MB4399:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4399C4C41817150B0FF914EFF0FA0@MN2PR11MB4399.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(396003)(366004)(39860400002)(199004)(316002)(2616005)(186003)(71200400001)(81156014)(110136005)(26005)(86362001)(107886003)(8936002)(54906003)(6512007)(8676002)(76116006)(91956017)(66946007)(66556008)(66476007)(66446008)(64756008)(81166006)(478600001)(4326008)(5660300002)(1076003)(6506007)(6486002)(36756003)(2906002)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4399;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IihdAp4ZQ3N8XL7Xqeh5X3/g+T0T+eLJsBhoKnSLxsox+W9nK5v3T4iYSD/Ns/pCMsQ/peEE5AdCV73MS8caFf6PCGA6WWfd6ndLnU433fi5e4m0/dQ5ioBNp5kmgYaB7qhHd7/b8N1fH9O+MwEwGuhGZDI8uZ+3zTkjwL9/Bz274QsMRwJqDQMqvuLYp+SmXQvd7qR/4OBSzsFI/iuREae8EDVCUpHNINf0exzDKIyajEa2L5tYSvsQvLNp2tpDfsGm7Mnsc4jFsJt/gAZXPegWvon0whvvbQ//lrw3D7vo7APzkOvDAtFtnxwBG9pXbj4EFPczMXd88atF8vymLo/vJNNcoTQe6N+TeCJnJbGrv/O/LjtXIsZob9JUKoGOyRPbHk/Nq+cEUOmzIKSSGSRcYc5v+q3C1EPzjgiMy20lhA2sYwgk7smJTwKm/JRfRAvcl5MWcp7JwCYYbklwE4MCsTuU0sK2rNgRhcSn8UGmke7MFsIGRFBg4I8sLY0K
x-ms-exchange-antispam-messagedata: iiGR8TE39eGyBSElK/HDuRg3CeCUSqu7wqheb0dWi7T2cN/4Mfv6nWPShlxugmElJ86Ye/+eWjHbFFFxonsB9G73IxnGcJq+RdM1xFVnC2qQDXDBS79cWbUDqJ/0vJc75Y2UevPUn2seYObNRdtjDw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d9faee14-b615-44f5-637b-08d7c786ad7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:34.4889 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C5MVIGS8irJBJD4d8m81JtsR8UuKjZ91lzKoZWubXkQDQJ9VoMER5RTK7JcLe0ijvhmx4PHYNm4Vk7TyqSDvNz4VNkOmWf0Q7vKnIAzsf4o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4399
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124245_560350_67000424 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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

Replace the manufacturer prefix by something describing more precisely
what those functions do.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
[tudor.ambarus@microchip.com: prepend spi_nor_ to all modified methods.]
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 70 +++++++++++++++++------------------
 1 file changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index caf0c109cca0..0b8fac0b0299 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -755,13 +755,13 @@ static int spi_nor_xread_sr(struct spi_nor *nor, u8 *sr)
 }
 
 /**
- * s3an_sr_ready() - Query the Status Register of the S3AN flash to see if the
- * flash is ready for new commands.
+ * spi_nor_xsr_ready() - Query the Status Register of the S3AN flash to see if
+ * the flash is ready for new commands.
  * @nor:	pointer to 'struct spi_nor'.
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int s3an_sr_ready(struct spi_nor *nor)
+static int spi_nor_xsr_ready(struct spi_nor *nor)
 {
 	int ret;
 
@@ -892,7 +892,7 @@ static int spi_nor_ready(struct spi_nor *nor)
 	int sr, fsr;
 
 	if (nor->flags & SNOR_F_READY_XSR_RDY)
-		sr = s3an_sr_ready(nor);
+		sr = spi_nor_xsr_ready(nor);
 	else
 		sr = spi_nor_sr_ready(nor);
 	if (sr < 0)
@@ -1784,8 +1784,8 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 	return ret;
 }
 
-static void stm_get_locked_range(struct spi_nor *nor, u8 sr, loff_t *ofs,
-				 uint64_t *len)
+static void spi_nor_get_locked_range_sr(struct spi_nor *nor, u8 sr, loff_t *ofs,
+					uint64_t *len)
 {
 	struct mtd_info *mtd = &nor->mtd;
 	u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
@@ -1813,8 +1813,8 @@ static void stm_get_locked_range(struct spi_nor *nor, u8 sr, loff_t *ofs,
  * Return 1 if the entire region is locked (if @locked is true) or unlocked (if
  * @locked is false); 0 otherwise
  */
-static int stm_check_lock_status_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
-				    u8 sr, bool locked)
+static int spi_nor_check_lock_status_sr(struct spi_nor *nor, loff_t ofs,
+					uint64_t len, u8 sr, bool locked)
 {
 	loff_t lock_offs;
 	uint64_t lock_len;
@@ -1822,7 +1822,7 @@ static int stm_check_lock_status_sr(struct spi_nor *nor, loff_t ofs, uint64_t le
 	if (!len)
 		return 1;
 
-	stm_get_locked_range(nor, sr, &lock_offs, &lock_len);
+	spi_nor_get_locked_range_sr(nor, sr, &lock_offs, &lock_len);
 
 	if (locked)
 		/* Requested range is a sub-range of locked range */
@@ -1832,16 +1832,16 @@ static int stm_check_lock_status_sr(struct spi_nor *nor, loff_t ofs, uint64_t le
 		return (ofs >= lock_offs + lock_len) || (ofs + len <= lock_offs);
 }
 
-static int stm_is_locked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
-			    u8 sr)
+static int spi_nor_is_locked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
+				u8 sr)
 {
-	return stm_check_lock_status_sr(nor, ofs, len, sr, true);
+	return spi_nor_check_lock_status_sr(nor, ofs, len, sr, true);
 }
 
-static int stm_is_unlocked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
-			      u8 sr)
+static int spi_nor_is_unlocked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
+				  u8 sr)
 {
-	return stm_check_lock_status_sr(nor, ofs, len, sr, false);
+	return spi_nor_check_lock_status_sr(nor, ofs, len, sr, false);
 }
 
 /*
@@ -1876,7 +1876,7 @@ static int stm_is_unlocked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
  *
  * Returns negative on errors, 0 on success.
  */
-static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
+static int spi_nor_sr_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 {
 	struct mtd_info *mtd = &nor->mtd;
 	int ret, status_old, status_new;
@@ -1894,16 +1894,16 @@ static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 	status_old = nor->bouncebuf[0];
 
 	/* If nothing in our range is unlocked, we don't need to do anything */
-	if (stm_is_locked_sr(nor, ofs, len, status_old))
+	if (spi_nor_is_locked_sr(nor, ofs, len, status_old))
 		return 0;
 
 	/* If anything below us is unlocked, we can't use 'bottom' protection */
-	if (!stm_is_locked_sr(nor, 0, ofs, status_old))
+	if (!spi_nor_is_locked_sr(nor, 0, ofs, status_old))
 		can_be_bottom = false;
 
 	/* If anything above us is unlocked, we can't use 'top' protection */
-	if (!stm_is_locked_sr(nor, ofs + len, mtd->size - (ofs + len),
-				status_old))
+	if (!spi_nor_is_locked_sr(nor, ofs + len, mtd->size - (ofs + len),
+				  status_old))
 		can_be_top = false;
 
 	if (!can_be_bottom && !can_be_top)
@@ -1958,11 +1958,11 @@ static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 }
 
 /*
- * Unlock a region of the flash. See stm_lock() for more info
+ * Unlock a region of the flash. See spi_nor_sr_lock() for more info
  *
  * Returns negative on errors, 0 on success.
  */
-static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
+static int spi_nor_sr_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 {
 	struct mtd_info *mtd = &nor->mtd;
 	int ret, status_old, status_new;
@@ -1980,16 +1980,16 @@ static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 	status_old = nor->bouncebuf[0];
 
 	/* If nothing in our range is locked, we don't need to do anything */
-	if (stm_is_unlocked_sr(nor, ofs, len, status_old))
+	if (spi_nor_is_unlocked_sr(nor, ofs, len, status_old))
 		return 0;
 
 	/* If anything below us is locked, we can't use 'top' protection */
-	if (!stm_is_unlocked_sr(nor, 0, ofs, status_old))
+	if (!spi_nor_is_unlocked_sr(nor, 0, ofs, status_old))
 		can_be_top = false;
 
 	/* If anything above us is locked, we can't use 'bottom' protection */
-	if (!stm_is_unlocked_sr(nor, ofs + len, mtd->size - (ofs + len),
-				status_old))
+	if (!spi_nor_is_unlocked_sr(nor, ofs + len, mtd->size - (ofs + len),
+				    status_old))
 		can_be_bottom = false;
 
 	if (!can_be_bottom && !can_be_top)
@@ -2046,13 +2046,13 @@ static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 }
 
 /*
- * Check if a region of the flash is (completely) locked. See stm_lock() for
- * more info.
+ * Check if a region of the flash is (completely) locked. See spi_nor_sr_lock()
+ * for more info.
  *
  * Returns 1 if entire region is locked, 0 if any portion is unlocked, and
  * negative on errors.
  */
-static int stm_is_locked(struct spi_nor *nor, loff_t ofs, uint64_t len)
+static int spi_nor_sr_is_locked(struct spi_nor *nor, loff_t ofs, uint64_t len)
 {
 	int ret;
 
@@ -2060,13 +2060,13 @@ static int stm_is_locked(struct spi_nor *nor, loff_t ofs, uint64_t len)
 	if (ret)
 		return ret;
 
-	return stm_is_locked_sr(nor, ofs, len, nor->bouncebuf[0]);
+	return spi_nor_is_locked_sr(nor, ofs, len, nor->bouncebuf[0]);
 }
 
-static const struct spi_nor_locking_ops stm_locking_ops = {
-	.lock = stm_lock,
-	.unlock = stm_unlock,
-	.is_locked = stm_is_locked,
+static const struct spi_nor_locking_ops spi_nor_sr_locking_ops = {
+	.lock = spi_nor_sr_lock,
+	.unlock = spi_nor_sr_unlock,
+	.is_locked = spi_nor_sr_is_locked,
 };
 
 static int spi_nor_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
@@ -4895,7 +4895,7 @@ static void spi_nor_late_init_params(struct spi_nor *nor)
 	 * the default ones.
 	 */
 	if (nor->flags & SNOR_F_HAS_LOCK && !nor->params.locking_ops)
-		nor->params.locking_ops = &stm_locking_ops;
+		nor->params.locking_ops = &spi_nor_sr_locking_ops;
 }
 
 /**
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
