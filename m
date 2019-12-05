Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5264113EDC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:57:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GEpMFVMFAlzNOY3oDQQcrUF9fAf724yzWHRUuyrOUPU=; b=cgFp1mybKWbTHm
	o898K5d3UoNOUeVUNY2dtqkIzHSpDw8kwpSSwRdtF2iyhLDfPG6iZh6ZnN9LOOQO859MZpgHsoBVG
	8DWEu4UEOSdjmOvb2222KOeidssOYdnKJnqh7Ht5yQVNKivNfDU1tKhpbhP9Z1J9YnmFpPneXhZ7W
	mBgHV43YnEuk54d3NnLhnDPTekn5pKX3p1vulR5UovU+FQ9ah2Uf/vmr5Rt32S1nojjaN1916xl6t
	z699TzwViLviOaKiXvLjbzMK7JAAfD/WwYntcQr0dPbmpQ2YjGbmq35YypY/QXAP8Es1IdFzAPbhz
	+aYLOoRpGx+c2KAV2gKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icnt7-0007Zh-9N; Thu, 05 Dec 2019 09:57:33 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icnpn-0002xF-51
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 09:54:10 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
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
IronPort-SDR: lSZ+IrP9n24Y1eQ56aHOAd1RyzlLXB3jxiGbR1u0NZXgaPb/3xFtemyN9BScbktffbEI19Ye1l
 6Tlg44uIdbNAkle/aUtZKNUJxZX16fap9Be4CCPJ0JsFuA1VUTEwTUGtbZ9dwIu281VqTbIwKL
 Lv4o1J27oUXU8kZly0pB0XuzFG26oqItyukHyTpsH/4lZjd8dgZJxIKL6kk6sNUJIMWB+c/jNa
 EPW7jLzZWEA9kJEvietvLiXzvHw9x6Od+Dgr7qOCm7k20LVoFyXnDsIjX8wErWquUD1hcdcnjN
 n/U=
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="58828903"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Dec 2019 02:54:06 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Dec 2019 02:54:03 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 5 Dec 2019 02:54:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PUWKj3z6KE0Pd9rX+VEJ9NXmGN5dFd8vNVjUERmZ/dQR/N5yyhbZQ62BpzDyrmpPQaVdEGfW4cTscfy2UzlF2MJHxvmj7APFPWT/uB0XinV78WNnTnd8Wrrjw+D8DQw8DQ0Q3gOdvg0Sw6MoIf43HhLa0O9RVXQLYANq133G6yNROnWmc1VoT/zL6clwOeobYyuFg38epTptuCRR9PqLbaSNKT6p1LxYuQWSAaGfwH/WnE74EGUzU5GgerBgk5kcTu6UDNJSyf8WjDJhJgriadB01hrqiVOiGlqy4jamKuHQAyGb3dxmZS4ViPvlgQuhMM6RCkGHvgxyYbuA4RIM4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2tyS+CXzT6/IJlaa+dUvn2lYyE/Fm7pzodVKpWkRVRA=;
 b=fbBBQgqFbswsLVbK6ecIjNk226frOh6HsevHXSw39cMP0PRUy/x1JPV0SQ+wB8NaISOOJxZmPoXQ6AcUhgeV8Qp4bwVt3AoMIwB0QdHC4Yfwrwpsr/Csk7ENpgCK3MKPDoyJ5/T9O0pwczpbBYYqi8EcO9xxG6jdS3PM/aLvTg4qvsLy5yD9KtfvrJshLVL0cU5M95SV2RJ8V9T+I2qQVGKgdIrSuAn0xNryUPkJQYnKoRUTcxu7/iELVmeGA1SDzx6jekCqJvzeL/bbx6LXa1XNtAQUhdZHs2xWt+JvwzL6mtQ/dAt5ZiZFcyDOxAafvalwRpvUAFdKvtYFFrJn2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2tyS+CXzT6/IJlaa+dUvn2lYyE/Fm7pzodVKpWkRVRA=;
 b=K1bow8IRw35nMFjZJt0e5tF2tgQDC/pl3UqEYA5kiOtJqLbEJHgg3bKdC6zyOtx1HS/5ggk0Ihlu5Ab10uJU4ZOoNvfqFtTSP0hbswqOUyLAHbPR94XA39Li57mRyao+g2zt74oDtWN1AY+3BPVo26BzQQ3V442Vfow3vfSus68=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3677.namprd11.prod.outlook.com (20.178.253.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Thu, 5 Dec 2019 09:54:01 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9%5]) with mapi id 15.20.2495.026; Thu, 5 Dec 2019
 09:54:01 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>
Subject: [PATCH 11/16] crypto: atmel-aes - Fix counter overflow in CTR mode
Thread-Topic: [PATCH 11/16] crypto: atmel-aes - Fix counter overflow in CTR
 mode
Thread-Index: AQHVq1HrgNe4xzeSBkCXNcTWtRVkYQ==
Date: Thu, 5 Dec 2019 09:54:01 +0000
Message-ID: <20191205095326.5094-12-tudor.ambarus@microchip.com>
References: <20191205095326.5094-1-tudor.ambarus@microchip.com>
In-Reply-To: <20191205095326.5094-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: FR2P281CA0018.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::28) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.14.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cf590f9a-521b-415d-6b93-08d779690e55
x-ms-traffictypediagnostic: MN2PR11MB3677:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3677FB352D5042329CD31544F05C0@MN2PR11MB3677.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(376002)(346002)(396003)(189003)(199004)(2616005)(66556008)(305945005)(66476007)(66446008)(102836004)(64756008)(11346002)(5660300002)(52116002)(76176011)(99286004)(36756003)(66946007)(2906002)(54906003)(26005)(6916009)(6506007)(1076003)(8676002)(6486002)(4326008)(50226002)(1730700003)(8936002)(14454004)(81156014)(186003)(86362001)(81166006)(5640700003)(478600001)(6512007)(71200400001)(25786009)(316002)(71190400001)(14444005)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3677;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cHd+5S4rpOlXzMKHQQmyCM7RlIVZ+kBv8zj4pzGYgvLzOAwVIb8Fo3gwYRkhkxUrBohSdousnkpk0FyWkk1zvISYv4N/XzlBSe4lfKYtL2roZeRfd8edLPlbPYPo7z0PEWHmwVOAK7UruWHVXxvKwBMZOlyJEbQJ/kkw3u6N1ZSxY4n1zLFSOix7+Qmbb2l+GkXlYI8IyrvakOvBtWl+1SpubHaQY9NRgBfw6lj9M+nxEVdPPfcExifAMBi2Hn34TlrEnl1/I+xpo+tSmYSwiH8zBRL8dZ08QClwS68duvfY3t6au40S6aRsz0sItrDpq/+GUeH8IFdUgPrsts3WKJVKG96fETFrLq97XTrZUtYMeX/2JK4kFxRsg1Vy/7gKOIokNU9ORrk58p2/9FZQ/y2PD2Pt0XXASJsauN6Lkk6LSxPHOea+/lAnrYtF6v+o
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: cf590f9a-521b-415d-6b93-08d779690e55
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 09:54:01.6809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ihf5VX6kY5C8P4wXKlggBf2fEzCpvIDDIfA+7GkT6yC16fG85cs2YO6oeZtW5xBQqfwzz3UCPKNBhpJLmxJ3pjuI3ZhCjiGefpLHunCSxJQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3677
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_015407_269441_66365A50 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -1.8 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.5 PDS_BTC_ID             FP reduced Bitcoin ID
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
Cc: alexandre.belloni@bootlin.com, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

32 bit counter is not supported by neither of our AES IPs, all implement
a 16 bit block counter. Drop the 32 bit block counter logic.

Fixes: fcac83656a3e ("crypto: atmel-aes - fix the counter overflow in CTR mode")
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/crypto/atmel-aes.c | 37 ++++++++++++-------------------------
 1 file changed, 12 insertions(+), 25 deletions(-)

diff --git a/drivers/crypto/atmel-aes.c b/drivers/crypto/atmel-aes.c
index d7e28ec456ff..cbfe6ccd2a0d 100644
--- a/drivers/crypto/atmel-aes.c
+++ b/drivers/crypto/atmel-aes.c
@@ -89,7 +89,6 @@
 struct atmel_aes_caps {
 	bool			has_dualbuff;
 	bool			has_cfb64;
-	bool			has_ctr32;
 	bool			has_gcm;
 	bool			has_xts;
 	bool			has_authenc;
@@ -1019,8 +1018,9 @@ static int atmel_aes_ctr_transfer(struct atmel_aes_dev *dd)
 	struct atmel_aes_ctr_ctx *ctx = atmel_aes_ctr_ctx_cast(dd->ctx);
 	struct skcipher_request *req = skcipher_request_cast(dd->areq);
 	struct scatterlist *src, *dst;
-	u32 ctr, blocks;
 	size_t datalen;
+	u32 ctr;
+	u16 blocks, start, end;
 	bool use_dma, fragmented = false;
 
 	/* Check for transfer completion. */
@@ -1032,27 +1032,17 @@ static int atmel_aes_ctr_transfer(struct atmel_aes_dev *dd)
 	datalen = req->cryptlen - ctx->offset;
 	blocks = DIV_ROUND_UP(datalen, AES_BLOCK_SIZE);
 	ctr = be32_to_cpu(ctx->iv[3]);
-	if (dd->caps.has_ctr32) {
-		/* Check 32bit counter overflow. */
-		u32 start = ctr;
-		u32 end = start + blocks - 1;
-
-		if (end < start) {
-			ctr |= 0xffffffff;
-			datalen = AES_BLOCK_SIZE * -start;
-			fragmented = true;
-		}
-	} else {
-		/* Check 16bit counter overflow. */
-		u16 start = ctr & 0xffff;
-		u16 end = start + (u16)blocks - 1;
-
-		if (blocks >> 16 || end < start) {
-			ctr |= 0xffff;
-			datalen = AES_BLOCK_SIZE * (0x10000-start);
-			fragmented = true;
-		}
+
+	/* Check 16bit counter overflow. */
+	start = ctr & 0xffff;
+	end = start + blocks - 1;
+
+	if (blocks >> 16 || end < start) {
+		ctr |= 0xffff;
+		datalen = AES_BLOCK_SIZE * (0x10000 - start);
+		fragmented = true;
 	}
+
 	use_dma = (datalen >= ATMEL_AES_DMA_THRESHOLD);
 
 	/* Jump to offset. */
@@ -2538,7 +2528,6 @@ static void atmel_aes_get_cap(struct atmel_aes_dev *dd)
 {
 	dd->caps.has_dualbuff = 0;
 	dd->caps.has_cfb64 = 0;
-	dd->caps.has_ctr32 = 0;
 	dd->caps.has_gcm = 0;
 	dd->caps.has_xts = 0;
 	dd->caps.has_authenc = 0;
@@ -2549,7 +2538,6 @@ static void atmel_aes_get_cap(struct atmel_aes_dev *dd)
 	case 0x500:
 		dd->caps.has_dualbuff = 1;
 		dd->caps.has_cfb64 = 1;
-		dd->caps.has_ctr32 = 1;
 		dd->caps.has_gcm = 1;
 		dd->caps.has_xts = 1;
 		dd->caps.has_authenc = 1;
@@ -2558,7 +2546,6 @@ static void atmel_aes_get_cap(struct atmel_aes_dev *dd)
 	case 0x200:
 		dd->caps.has_dualbuff = 1;
 		dd->caps.has_cfb64 = 1;
-		dd->caps.has_ctr32 = 1;
 		dd->caps.has_gcm = 1;
 		dd->caps.max_burst_size = 4;
 		break;
-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
