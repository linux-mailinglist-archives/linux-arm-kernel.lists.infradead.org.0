Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF47811E5D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 15:46:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kaG2L8ZHoAq9tNYPq78OU+hN5luJRD1oGNp6KL60eW8=; b=eZDTM8iH9lSeZh
	DKguspwPiYAoN6Z8L1HBAamFGotMXBORzSMnkN7nRjYGQt/wAlHjsrLHlzvJZfTVEEwIo/THwqT6P
	dSYUhI6dyHFaVzW7evGhSuttqGO4SIxIzZkcmp/UQyVQCSyGgNdVhsIaqeTVy4sNRNxw659GuX97g
	0Ypn3a2mEmDlIPqS/PVSM/bJz1rfj5b6X1SMMcLGCWuSnLezQF2jkjWgJPKrBbAhGJfHXTjAJENO+
	gciNJVDPkE7d2AfR3yszltdMAnNe40/kbyFWElrPGz6voMRafUUXrESh88Gj5qBx/49fovIPErUUu
	4I+9yrdL2W51FTONpi9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifmCd-0006eW-1k; Fri, 13 Dec 2019 14:45:59 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifmCS-0006dd-RY
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 14:45:51 +0000
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
IronPort-SDR: Ch8asyW/vEPABRO70V9qeeVjh/GmJAmHEEWd1z1QvYDjrI1Ws/ORpQXNSb6S/1GopSQUVN3p5h
 jTfGie0FL615s5UN6C6kREuHfyZTdzdDOFGXhv8P03l2tddFl51r+8QMHDm7ECUyY+N0w5fSW/
 pQo8DXQ/JbDlXHO+d0d4NqbhKKsuPkZAaOYfRASvqEjL8fU+TpVmPzXOs0FJzp9OQ6WtpQIboZ
 z8dy8uaUTJRyypwm2mXDqZdEfmL0hacFNA9TfESR67WIkkVE+6KueyhcyoBGVTh3XgOGnceYFR
 4/g=
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="59715413"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Dec 2019 07:45:46 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Dec 2019 07:45:46 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Dec 2019 07:45:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a5qjXRiI94UqmjeT+jMXDXmTBB3YMZf1UFKo7eDO/wJInMPPWfIf5b9BAeq0q2y+vAKG+7Ee5jz63wcevvT5NGPJpKoCxGIawPjE8/oR/gO8oREpbXnoTahi2aQ2E/snkDQa1ui64mAHR7D3t0hq1No1F5NP0W75xJRULtoaUmL2gtig2q/FCZmYjJC7i5U3VEv6+1ybTWNibdUfJ3z2SPd6Z3dP4mqDHVXJNUNKNKncBDhrRL/bfmVfY04U/s5jmlqMYEe4vCNAVBMvKCYmCC/LTji3IiqoidIaY7sTzZlEfBeeEMVmhy/+Cjd92RTUzaqX3LBv6Ged6e4xEOMCGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HGfvwJ9DrnnRpxDwVZRXLvOfnDbmqCcC+6yb+womu9g=;
 b=AOSW65KihgV+2yeOFn6LQnH7cCK7gnZAf1Tv64OQfMeIyZFT5vwvoDPosHDZlql39cH6VX5JwGyWFwulk+l3l5sxDDFDURCMBM7RKHeC5fAU0+FZN7yx25+ihYfxsykDwy4X9aH1/DiVp758ZyfNDYXYp8tQr0omRRYpFPAMzlumPfcn9h6wHGbwGepV0M/p/IEKZridJdSWnR5Bwn6CjGr8Mnc9UFYIV2IrU7hBZ+Czt8Og3X3XL4qr5BMzYDgBkltpkv9nL/Eo1iZUHCh4L+IMvIOGVYqhTAjkt2y2cwZRqadtFyXQ8FWORl1XfVsp+Uzbx8xdr2nmz9Ksu23Fgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HGfvwJ9DrnnRpxDwVZRXLvOfnDbmqCcC+6yb+womu9g=;
 b=kNHohwlHYBc9s3XZyuml4UhgPzJyoIhUbbieDT1xjLGgHa3vzI39Y1gTaXcSc2DXzP/hmmKlMqW5H2eJxoehALQFa8wIO3TVWZyhXWLBzfqVw6180aTvBnwhFfk3VVXUIREOQUty2RYvf4frS4r1zuP45VM8QWomY3E/mwF3mZY=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3997.namprd11.prod.outlook.com (10.255.181.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.14; Fri, 13 Dec 2019 14:45:44 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9%5]) with mapi id 15.20.2538.017; Fri, 13 Dec 2019
 14:45:44 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>, <dan.carpenter@oracle.com>
Subject: [PATCH] crypto: atmel-aes - Fix CTR counter overflow when multiple
 fragments
Thread-Topic: [PATCH] crypto: atmel-aes - Fix CTR counter overflow when
 multiple fragments
Thread-Index: AQHVscP/R3ZoerXL90ST/0ph9ePc0g==
Date: Fri, 13 Dec 2019 14:45:44 +0000
Message-ID: <20191213144529.9613-1-tudor.ambarus@microchip.com>
References: <20191213123800.dsnxfh4tja2q5kbv@kili.mountain>
In-Reply-To: <20191213123800.dsnxfh4tja2q5kbv@kili.mountain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR08CA0235.eurprd08.prod.outlook.com
 (2603:10a6:802:15::44) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [86.122.210.80]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f6a851e6-cac1-4c21-94ca-08d77fdb21dc
x-ms-traffictypediagnostic: MN2PR11MB3997:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB39973BD9DED9C36E74D95BCBF0540@MN2PR11MB3997.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0250B840C1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(346002)(396003)(366004)(376002)(189003)(199004)(26005)(8936002)(316002)(36756003)(2906002)(52116002)(6506007)(66556008)(66476007)(64756008)(66446008)(110136005)(71200400001)(186003)(66946007)(54906003)(6486002)(478600001)(8676002)(81156014)(2616005)(81166006)(1076003)(5660300002)(4326008)(107886003)(6512007)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3997;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZnvFF3BbDA69dF2EpNrhaqfutfVzfK4vsMUVhEZrAHoAwxPxWQ/6SDEX4LN4CHygTW6vjtqNPAj2T0+gPp0ZXPynPx85/YM3hK3VMMww4QDfs3J5V4xcKsivW9MDNehwNS6zQ7peO/GZe7yxLE8bMqKomHWlVHWffbQ6zLI2k+3qkiZfd7ungJm+lrA2pqyd72DaCLmNWdCgcj49aGZ8ckzZnlvkHtZTQqMHIZO97xKYI8DAb6hxw5F30GhAJ5G1N23ufjO9jq9Jns/9BMTUKxcItmO37w96cQYQyWUieP3F0T/10s6CEShRsP6RPG5lVmcO9YQSI4iTvdZhaBuwgU/Fn+fD8SuAs2vfaLhyMA0uN1PJ3buibtMBexoE2V2ruL704g1TUbDYt8AHMeefdRt6jnjpAhPGoa5MlFXbPvWD+TY5OWh3wDAl2QMiHGLU
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f6a851e6-cac1-4c21-94ca-08d77fdb21dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2019 14:45:44.3811 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aEOsxbB/JT0Tzkzn+ueskQCRp9Dq/RnDj2cKIY9HW81o8O5HHHoO0Qa9pwEScZWrhFiize050jRoq6b06LMNnyCw6cfIwsSD5uMmYgxmyas=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3997
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_064549_072904_E91D4A0B 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, Tudor.Ambarus@microchip.com,
 Ludovic.Desroches@microchip.com, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

The CTR transfer works in fragments of data of maximum 1 MByte because
of the 16 bit CTR counter embedded in the IP. Fix the CTR counter
overflow handling for messages larger than 1 MByte.

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Fixes: 781a08d9740a ("crypto: atmel-aes - Fix counter overflow in CTR mode")
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
Thanks, Dan.

 drivers/crypto/atmel-aes.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/crypto/atmel-aes.c b/drivers/crypto/atmel-aes.c
index 245d45f93b61..b001fdcd9d95 100644
--- a/drivers/crypto/atmel-aes.c
+++ b/drivers/crypto/atmel-aes.c
@@ -120,7 +120,7 @@ struct atmel_aes_ctr_ctx {
 	size_t			offset;
 	struct scatterlist	src[2];
 	struct scatterlist	dst[2];
-	u16			blocks;
+	u32			blocks;
 };
 
 struct atmel_aes_gcm_ctx {
@@ -527,6 +527,12 @@ static void atmel_aes_ctr_update_req_iv(struct atmel_aes_dev *dd)
 	unsigned int ivsize = crypto_skcipher_ivsize(skcipher);
 	int i;
 
+	/*
+	 * The CTR transfer works in fragments of data of maximum 1 MByte
+	 * because of the 16 bit CTR counter embedded in the IP. When reaching
+	 * here, ctx->blocks contains the number of blocks of the last fragment
+	 * processed, there is no need to explicit cast it to u16.
+	 */
 	for (i = 0; i < ctx->blocks; i++)
 		crypto_inc((u8 *)ctx->iv, AES_BLOCK_SIZE);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
