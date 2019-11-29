Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 785C110D6B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 15:11:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sg8cWqX7mqosaRIcyLpZ9B3cI/HcxsMkjKzAPXXY/0Q=; b=szcSgqyG9J8AJP
	dInewB/GpH3QA73ZczTRjg98LyZnX+6XgFJn3QQthKZNDx7tAy9pRCDk8lNSFEkD3DBhXm6j0pJVD
	IwyUaEPqj9VS58Wep4fVjTFV9aSzIPQBGs1A97//nsKsTRcuDhpQzcWcnGHueOBrpZ4sqh1uJLcQq
	0YaGBr5XShaalgoH0T9yV8evc8Fl+Nm32FftrOT4nwA1zWZcAOqYjyYU4rLPlU829lRb5bN3feLBh
	13kNo4nYpWxupAK6D5IdAYPdyQLz1jxa/HLCqMtI57tPjTyI8b3j3V7qzQdj5i5SL1Z8J1p3GqPJV
	dtmGh0PtFSpba09okLmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iagzN-0006Ug-LF; Fri, 29 Nov 2019 14:11:17 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iagyu-0006Ki-BE
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 14:10:50 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: sWXEZOpJUCNWRBjzD0efO4WbbA6Mpz39fH3m/88R9aTmTRP6KPwKEB7les4HHDd79GALNYL+TR
 IwvbRUeq/PZtZ79FW24evApgnq9H9dZWc4XpkAlfPKiNR0nN8wXbEBec1FNE+IX3ydMN3TZRHC
 9WE0v7QBK6gl3J59u2vwP8aBuD6x4ZbOD7LD8D6glXPymnamRpVUencQz5a3T2Clnfby4Ka8Cs
 L4RFvbbLPCv5evMECXY45rkTLh92l2Lny4Y+/1fW5soJ1OFD40oNMM1A1UJU4/PTjdBj8lLrUJ
 4uA=
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="58274489"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Nov 2019 07:10:43 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 29 Nov 2019 07:10:43 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 29 Nov 2019 07:10:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WJCFFDGwO2M6RqmL8BW4S7DN8hduXm4Nc2LTJ2hB768r6pMcsPyN9VdgGE+4GzufGrSYwe6zYGu6fNcj5c238XeRW7Mb2gyruNKafNiAPoKPxxGnKGposCpDeANY3x9kd7TkK8S3K4ERDi6o3UC+I5m0Y0Hoy6ruh5DfxvPt3qJ1DL0nYDeQXMgvoqoN/JNJ5RK3tAtUCM2VdwSiaf51/o78LSOstykaYTUEKFUMVw/KePmt/NTP8Y5ta4F9KYkU4pjf45V2ixPVCmiwmj7GI3EXuv5RGLKKg3z97SjPBKV/ta1F78hviAlX+mbhWlJ4L2bab9MljgQbwpI6R857nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7KcY949h0ZVaxS7wV9+hihfL5uVisKoGF5OhOm6pq+4=;
 b=NAw0mwt63ZATEDLwwWBOMClN8Pfei3ILsvfD3RTCj6IYl6kLMUL3gauzdTIO0oCW4MXq6GS7mHsqv9gAwYMzp6VFgnDbCYMftIBAjLI5CnO7++BzRKGMnKd0P1UWO86CUhNlr8Dq2FO2F+WzoHSmtpD1AuMQIhy/UzEUQFp1V9uCtTbfnu99ScPknhO3LhvI8Q6dHfdPTCHLnFggKefu+zzk6qcKH+HUGYb41YlOA6f/LSEr6+dGKj6adxZyybE4z/MYQTRsc0LjNmLePQS+kkk40ozbIgRXY6YXNzPMDklgrerBlmG7PXvwHHHzhWaK45Uc4nVPFcRnDnPVlfYulg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7KcY949h0ZVaxS7wV9+hihfL5uVisKoGF5OhOm6pq+4=;
 b=fQ4/lIi/R2O8hKo7H9Fcgeu1txfVdPF2+sg7eO4ManJoq0AQQWq0CE7BikygeAkN6Z041Lc6pKKp79oAcEb9iKXulzvXlgswU2RogbxWMCyKbAES/+/10Ef+Gebdpk4ebP57Vv7V5tAo8HGQT+Tyd58EZUvMFtC0UOEOQ1dApvU=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1916.namprd11.prod.outlook.com (10.175.87.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.19; Fri, 29 Nov 2019 14:10:40 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2495.014; Fri, 29 Nov
 2019 14:10:40 +0000
From: <Eugen.Hristev@microchip.com>
To: <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/3] media: atmel: atmel-isi: add support for mono sensors,
 GRAY and Y16
Thread-Topic: [PATCH 1/3] media: atmel: atmel-isi: add support for mono
 sensors, GRAY and Y16
Thread-Index: AQHVpr7GvLIuZGJMNEmiKig2JR9Z7w==
Date: Fri, 29 Nov 2019 14:10:38 +0000
Message-ID: <1575036609-11381-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR07CA0017.eurprd07.prod.outlook.com
 (2603:10a6:208:ac::30) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e00bf316-bcb3-4c19-f6d1-08d774d5e924
x-ms-traffictypediagnostic: DM5PR11MB1916:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB191673F71B1D2701647EB3CEE8460@DM5PR11MB1916.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0236114672
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(346002)(396003)(39860400002)(376002)(199004)(189003)(66446008)(102836004)(6506007)(36756003)(71190400001)(386003)(316002)(99286004)(71200400001)(66946007)(6512007)(110136005)(66476007)(66556008)(64756008)(3846002)(5660300002)(6116002)(107886003)(14454004)(52116002)(186003)(14444005)(256004)(26005)(66066001)(478600001)(50226002)(2201001)(6436002)(2906002)(2501003)(8936002)(305945005)(2616005)(81156014)(81166006)(86362001)(6486002)(8676002)(4326008)(7736002)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1916;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 59bw2dUcx/KkZkJQU1w0ZKoP9py9aW27zXAcBR1ufnaIBthUKT754z/hAKUjbFJjqL1407eYxbcKj06+X+y9uz8r4sE1D0y1RtvuqNQrYT2X314ZdSxmdxYWWKyLnMvdmAREz6wbxbgiss/8irhoQMnqLS0/jOzqvISRVx4Q9+eJdUF62F5oPdzLOpPj6CBvy0l0ejlUny2WbSRUmSeB8fKo9PjO/Rab0nkTP+F+cnwkGiSOkjEyiB//ijwBo4WvRs5YqnXH45i04hN0fyZK2EK8C1MQCoRkPg8jaol3VAK39/J8/jRROb6Sam2o8RdQuT1D5VcETRFjWiM2K8SVNLQFrk2R91QgnTFcgBeGeVe5qRhUUvEbfP04Gh4huqYRT3r4I+gbMpUu1Yd74gsbF/CAmwsTRaq2tLLYJEEDd6pHP8zKNoCE7odVysRG1tri
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e00bf316-bcb3-4c19-f6d1-08d774d5e924
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2019 14:10:40.1416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YjwVOJwwwP5A1+rAhNAXNJnWkMy9sWDFPfAs2SXF4NbDF8LTAIt0yNzJ+B8s5YzZ0B4YuW0aeJ8Rma9vWzI2/S0RW0hmX1aoeIi/78HgJU4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1916
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_061048_420738_76EC76F9 
X-CRM114-Status: GOOD (  10.13  )
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

This adds support for GREY and Y16 formats, based on Y10 mbus codes.
Y16 needs to go through preview path in the ISI, with 2 pixels per word,
and it fits the Y16 format. The ISI data lines need to be MSB aligned with
the sensor data lines.
GREY format in 8 bits per pixel is done by dropping the 2 LSB bits
from the Y10 format, and packed as 4 pixels per word.

Suggested-by: Wenyou Yang <wenyou.yang@microchip.com>
Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/media/platform/atmel/atmel-isi.c | 13 ++++++++++++-
 drivers/media/platform/atmel/atmel-isi.h |  2 ++
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/atmel/atmel-isi.c b/drivers/media/platform/atmel/atmel-isi.c
index 428f117..35c1f1a 100644
--- a/drivers/media/platform/atmel/atmel-isi.c
+++ b/drivers/media/platform/atmel/atmel-isi.c
@@ -148,7 +148,8 @@ static void configure_geometry(struct atmel_isi *isi)
 	u32 fourcc = isi->current_fmt->fourcc;
 
 	isi->enable_preview_path = fourcc == V4L2_PIX_FMT_RGB565 ||
-				   fourcc == V4L2_PIX_FMT_RGB32;
+				   fourcc == V4L2_PIX_FMT_RGB32 ||
+				   fourcc == V4L2_PIX_FMT_Y16;
 
 	/* According to sensor's output format to set cfg2 */
 	cfg2 = isi->current_fmt->swap;
@@ -990,6 +991,16 @@ static const struct isi_format isi_formats[] = {
 		.mbus_code = MEDIA_BUS_FMT_VYUY8_2X8,
 		.bpp = 2,
 		.swap = ISI_CFG2_YCC_SWAP_MODE_1,
+	}, {
+		.fourcc = V4L2_PIX_FMT_GREY,
+		.mbus_code = MEDIA_BUS_FMT_Y10_1X10,
+		.bpp = 1,
+		.swap = ISI_CFG2_GS_MODE_2_PIXEL | ISI_CFG2_GRAYSCALE,
+	}, {
+		.fourcc = V4L2_PIX_FMT_Y16,
+		.mbus_code = MEDIA_BUS_FMT_Y10_1X10,
+		.bpp = 2,
+		.swap = ISI_CFG2_GS_MODE_2_PIXEL | ISI_CFG2_GRAYSCALE,
 	},
 };
 
diff --git a/drivers/media/platform/atmel/atmel-isi.h b/drivers/media/platform/atmel/atmel-isi.h
index 47a9108..7ad3895 100644
--- a/drivers/media/platform/atmel/atmel-isi.h
+++ b/drivers/media/platform/atmel/atmel-isi.h
@@ -62,6 +62,8 @@
 #define		ISI_CFG1_THMASK_BEATS_16	(2 << 13)
 
 /* Bitfields in CFG2 */
+#define ISI_CFG2_GS_MODE_2_PIXEL		(0 << 11)
+#define ISI_CFG2_GS_MODE_1_PIXEL		(1 << 11)
 #define ISI_CFG2_GRAYSCALE			(1 << 13)
 #define ISI_CFG2_COL_SPACE_YCbCr		(0 << 15)
 #define ISI_CFG2_COL_SPACE_RGB			(1 << 15)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
