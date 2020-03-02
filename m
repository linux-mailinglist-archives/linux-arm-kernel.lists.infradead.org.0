Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FEA17620B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:10:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oCi2fzOp7eHa80+e4bOkfxx9UMY1HudXB9bDIMkTWgY=; b=cd8C/w0HJRHi8w
	CeKZxr3DImgoIB1gPR2eGLfgFUVyv1qLWDxdCTUomoLhuFX1RXfYsI7LbPCikkCMdBanZilWN/DiR
	RmVSQWpP42VXElL4PqRVgja4BmmwwRMUjDqRalBkOokdaxAdCiCZPgduVXF52N31oSYQE3M5iZXb7
	ODSftGHDqBTV6Ayu92NMMNZBM7WlV8awKEExwOgeVGmVSS21myZBRM8tP7VBB9BSTZJKDmLolTJyF
	9k+Qiw5A2AoCTmESznN3PfPTyu2P2b0CQiSp1PEK6Ig9B+MtgExEyqeUxXwPqZbEAtBwn4lRbjrMD
	/YAy9b6ki7/skG72ptRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8pW2-0004Md-15; Mon, 02 Mar 2020 18:10:06 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pTs-0002kf-5x; Mon, 02 Mar 2020 18:07:55 +0000
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
IronPort-SDR: HPeQzili6Vd210zJC1LxMw2K39zmUueDHCutulADMKeyXrzPgENDQk+vhaxwgpXfSOP7H0MSkc
 +7mSRDgo2detp6uMS8rAf5WG1XPjYB9ZFN0qLK67afiwRqYrUiYKcK4T7ZAZhoqV0sUn2iqJbt
 YHkFafEou07N+wSEaGmWl4QOSpF0HaLSND5/sIZjLfobCrEPMenBfKXiWENb6GSA0II96ZvcCO
 dAjHM0r/fbcQvimKPnJ/k2o+ys9H5LCJuwxJeOgrVpStCEqjNEyEb+pIFVFakXQjNmzlmXKyxG
 SIE=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; 
   d="scan'208";a="4204854"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 11:07:48 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 11:07:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 2 Mar 2020 11:08:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sfi5VTiEJ2DD5h/8ogchhHpXy7VXytPSV9Oi7pD9/gBPD6z4m2n8PmVkdcQv0kAu6pRCRLtB+XBExObdZXAjtr3HwRBR+DNL4F6zJcMyHOrRHfM6Y+9qCbboMspWBHJCMhlSkmyHr1bjp3SlcsDr2uLIXBSU25B1/02SeXkjYeuHQrbVPq31i98Q3dXkbrvbOZlEI4oY0efh/38nd/ZrAjyrs1T6/CmnjJQkbxqg/PSqFO323taV+o7HLkID1Ss7QaioBJYR7XqLYTHThqTHH85iwS1YRItyscRK5EPYpuoIW8MYn4KC29sKxgpUi5b97/YPbmUoiQ17te08pg+97w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xbVllX3YOhajiMNUHRnkeg4BAiYDSTHwf4Ya15PmZyg=;
 b=J1kL7WypcLXv2eg3lhcaa82t1vqSvQ+3ymkQ/1d2h/+hHDGQnMzbPfVZxTaWWKPA8S6MouzP0rVRVZLEendueaoOcYgQOwAxhmEWwEWCnAklmRuuLOze1o6pK6s65NdeMdh3mSLjixvVrjrpE6TvuGTYnqfcU5AH1Drz7KBqE5i0UiJQL69XD8skcDWBg4elVAZA0/iOwiu3lPpjs9E3l93837/TvQolorLQ+DwrGhnM8nz3zZ+cgzuQEWCgmpFqtfeQevEJIdLL9SumtCFXjTkIuMCk/3m6ZWBChbA0X4Owz7BkU5whzYHnOJv3R+bW32GsJ2CZIQCUEhNekoLE4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xbVllX3YOhajiMNUHRnkeg4BAiYDSTHwf4Ya15PmZyg=;
 b=bGSZWQhmQWYxa2etjTD7rVpgi2Pv7tBjybfbS30DOpErb/lq0PObOxzgokMufS4byPt7dmjSx5w0PQGrMGlYmiW4f0iSB6WAE270jWiO9ymv3dsG4fThQgFSK8lJOn+gciDrLsgBVe7UijO8MKk/BJVzE0cGCo4aDIFHJmysjRI=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4142.namprd11.prod.outlook.com (2603:10b6:208:135::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Mon, 2 Mar
 2020 18:07:45 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 18:07:45 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>, <linux-mtd@lists.infradead.org>
Subject: [PATCH 01/23] mtd: spi-nor: Stop prefixing generic functions with a
 manufacturer name
Thread-Topic: [PATCH 01/23] mtd: spi-nor: Stop prefixing generic functions
 with a manufacturer name
Thread-Index: AQHV8L153mkdeT8Yk06rHisgydrYfw==
Date: Mon, 2 Mar 2020 18:07:44 +0000
Message-ID: <20200302180730.1886678-2-tudor.ambarus@microchip.com>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 29edb9d2-be08-41d2-0c3e-08d7bed49bf3
x-ms-traffictypediagnostic: MN2PR11MB4142:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB41421CE86EFD686811921895F0E70@MN2PR11MB4142.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(39860400002)(136003)(396003)(376002)(189003)(199004)(36756003)(26005)(66446008)(107886003)(6486002)(186003)(2616005)(4326008)(478600001)(6512007)(91956017)(64756008)(66946007)(2906002)(71200400001)(76116006)(8936002)(316002)(86362001)(54906003)(6506007)(66556008)(5660300002)(66476007)(7406005)(1076003)(7416002)(81156014)(81166006)(110136005)(8676002)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4142;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vzNHmBfRbOS8kyakJ07ytOMfbAIAYwZvQ+c4S4M7aqqGofSwOvNLVv0YLsRKcd3Ulnp87sLCVqAKfU4DUjW0qiq8Ii+m68uznyfQwtciKw/3YyZ7zkwAMyIOcR9Hg45xSVIN4tK4FONqG13w84DEORfbxgJqQv2Yl7rtE6Z0elglfcaiEfoJjuhXgoNRRT+WsOrkhMaoREi6QNVnqu7D2G1PYaik6n3KbJeigquFtcgYKn2SD/vnG+h6j4FgTlcTPAlOzrKyfDo/JPn69e3l3OjRB3cwoiRzCSH37fL+YzbKg8k+OlzdZ0AIxBzuQibd0iLafys33S2vj5y3eGdKm5XFoHzvzlIFCIIg0kyTXFlhyAKyysmORctS/CoDXmKV3Uw1JptCS7G05ORZUcNTAWI2wcXzrRXc4V+DZ0B42mQdEpWonBHw++AQZP9NMeg4F60aCKOSzXEErxvMAGddueTQD0EYta8OfqVfCBv9JoC96VrwCAkYLGn1ePzT5i1r
x-ms-exchange-antispam-messagedata: 9zDqoaLC0BS1wCvkE3cNGnx9T618WAOTVjmmo7k4+isVNSB7cXm+RLCqSXyPWbnj20iR6XKk6tks9zrUQCPuMFdLueBuVzquJUyebrWbqfmYffsBSAP2wrfvIjVqtHgzd/8hG8i5Fr4uvnWqGDXv5w==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 29edb9d2-be08-41d2-0c3e-08d7bed49bf3
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 18:07:44.8159 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q0rmOW1+DlCaC+COxmqb3VG6ZOcZe1XLzUteGuTtpLSMYPTeEvDOOSoFbjWMaqHORFLdxZ6b1EmNtLhCrDpeSl2JM1xc2zjSWMbnVdCg5g8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_100752_410311_676DD555 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
Cc: kstewart@linuxfoundation.org, alexandre.belloni@bootlin.com,
 linux-aspeed@lists.ozlabs.org, thor.thayer@linux.intel.com,
 jethro@fortanix.com, rfontana@redhat.com, miquel.raynal@bootlin.com,
 opensource@jilayne.com, richard@nod.at, michal.simek@xilinx.com,
 Ludovic.Desroches@microchip.com, joel@jms.id.au, nishkadg.linux@gmail.com,
 Tudor.Ambarus@microchip.com, john.garry@huawei.com, vz@mleia.com,
 alexander.sverdlin@nokia.com, matthias.bgg@gmail.com, tglx@linutronix.de,
 swboyd@chromium.org, mika.westerberg@linux.intel.com, allison@lohutok.net,
 linux-arm-kernel@lists.infradead.org, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, dinguyen@kernel.org, michael@walle.cc,
 ludovic.barre@st.com, linux-mediatek@lists.infradead.org, info@metux.net
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
---
 drivers/mtd/spi-nor/spi-nor.c | 88 ++++++++++++++++++-----------------
 1 file changed, 45 insertions(+), 43 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index caf0c109cca0..b15e262765e1 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -568,14 +568,15 @@ static int spi_nor_read_cr(struct spi_nor *nor, u8 *cr)
 }
 
 /**
- * macronix_set_4byte() - Set 4-byte address mode for Macronix flashes.
+ * spi_nor_en4_ex4_set_4byte() - Enter/Exit 4-byte mode for Macronix like
+ * flashes.
  * @nor:	pointer to 'struct spi_nor'.
  * @enable:	true to enter the 4-byte address mode, false to exit the 4-byte
  *		address mode.
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int macronix_set_4byte(struct spi_nor *nor, bool enable)
+static int spi_nor_en4_ex4_set_4byte(struct spi_nor *nor, bool enable)
 {
 	int ret;
 
@@ -604,14 +605,15 @@ static int macronix_set_4byte(struct spi_nor *nor, bool enable)
 }
 
 /**
- * st_micron_set_4byte() - Set 4-byte address mode for ST and Micron flashes.
+ * spi_nor_en4_ex4_wen_set_4byte() - Set 4-byte address mode for ST and Micron
+ * flashes.
  * @nor:	pointer to 'struct spi_nor'.
  * @enable:	true to enter the 4-byte address mode, false to exit the 4-byte
  *		address mode.
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int st_micron_set_4byte(struct spi_nor *nor, bool enable)
+static int spi_nor_en4_ex4_wen_set_4byte(struct spi_nor *nor, bool enable)
 {
 	int ret;
 
@@ -619,7 +621,7 @@ static int st_micron_set_4byte(struct spi_nor *nor, bool enable)
 	if (ret)
 		return ret;
 
-	ret = macronix_set_4byte(nor, enable);
+	ret = spi_nor_en4_ex4_set_4byte(nor, enable);
 	if (ret)
 		return ret;
 
@@ -703,7 +705,7 @@ static int winbond_set_4byte(struct spi_nor *nor, bool enable)
 {
 	int ret;
 
-	ret = macronix_set_4byte(nor, enable);
+	ret = spi_nor_en4_ex4_set_4byte(nor, enable);
 	if (ret || enable)
 		return ret;
 
@@ -755,13 +757,13 @@ static int spi_nor_xread_sr(struct spi_nor *nor, u8 *sr)
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
 
@@ -892,7 +894,7 @@ static int spi_nor_ready(struct spi_nor *nor)
 	int sr, fsr;
 
 	if (nor->flags & SNOR_F_READY_XSR_RDY)
-		sr = s3an_sr_ready(nor);
+		sr = spi_nor_xsr_ready(nor);
 	else
 		sr = spi_nor_sr_ready(nor);
 	if (sr < 0)
@@ -1784,8 +1786,8 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 	return ret;
 }
 
-static void stm_get_locked_range(struct spi_nor *nor, u8 sr, loff_t *ofs,
-				 uint64_t *len)
+static void spi_nor_get_locked_range_sr(struct spi_nor *nor, u8 sr, loff_t *ofs,
+					uint64_t *len)
 {
 	struct mtd_info *mtd = &nor->mtd;
 	u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
@@ -1813,8 +1815,8 @@ static void stm_get_locked_range(struct spi_nor *nor, u8 sr, loff_t *ofs,
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
@@ -1822,7 +1824,7 @@ static int stm_check_lock_status_sr(struct spi_nor *nor, loff_t ofs, uint64_t le
 	if (!len)
 		return 1;
 
-	stm_get_locked_range(nor, sr, &lock_offs, &lock_len);
+	spi_nor_get_locked_range_sr(nor, sr, &lock_offs, &lock_len);
 
 	if (locked)
 		/* Requested range is a sub-range of locked range */
@@ -1832,16 +1834,16 @@ static int stm_check_lock_status_sr(struct spi_nor *nor, loff_t ofs, uint64_t le
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
@@ -1876,7 +1878,7 @@ static int stm_is_unlocked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
  *
  * Returns negative on errors, 0 on success.
  */
-static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
+static int spi_nor_sr_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 {
 	struct mtd_info *mtd = &nor->mtd;
 	int ret, status_old, status_new;
@@ -1894,16 +1896,16 @@ static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
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
@@ -1958,11 +1960,11 @@ static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
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
@@ -1980,16 +1982,16 @@ static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
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
@@ -2046,13 +2048,13 @@ static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
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
 
@@ -2060,13 +2062,13 @@ static int stm_is_locked(struct spi_nor *nor, loff_t ofs, uint64_t len)
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
@@ -4655,7 +4657,7 @@ static void issi_set_default_init(struct spi_nor *nor)
 static void macronix_set_default_init(struct spi_nor *nor)
 {
 	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
-	nor->params.set_4byte = macronix_set_4byte;
+	nor->params.set_4byte = spi_nor_en4_ex4_set_4byte;
 }
 
 static void sst_set_default_init(struct spi_nor *nor)
@@ -4668,7 +4670,7 @@ static void st_micron_set_default_init(struct spi_nor *nor)
 	nor->flags |= SNOR_F_HAS_LOCK;
 	nor->flags &= ~SNOR_F_HAS_16BIT_SR;
 	nor->params.quad_enable = NULL;
-	nor->params.set_4byte = st_micron_set_4byte;
+	nor->params.set_4byte = spi_nor_en4_ex4_wen_set_4byte;
 }
 
 static void winbond_set_default_init(struct spi_nor *nor)
@@ -4895,7 +4897,7 @@ static void spi_nor_late_init_params(struct spi_nor *nor)
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
