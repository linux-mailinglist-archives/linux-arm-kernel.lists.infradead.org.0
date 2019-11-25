Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B96108AD6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 10:27:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ejJ0uoDREygZjRg1p6XSBoyqdNWeaMl6oG6DJHAiMCo=; b=bb0lK2V+NrLeKq
	ceBI00G0Nlvlbo1A9yWdoAU+3+Y1Pwl3D26d5w2vHbuPqbLvWg+ngeF6wj+UoLwxa9p+96ugvu3I/
	fr9j5vWgC53WdXmrt1D/7sU02IOjTQEeh/jKgvSetRRhKAuqS0uBNhY3f30GoRakEnb+0ajP1Ajac
	AXQhitftQyOQo9oCPjxwncSmPPltG9HgCL5IMr0beEb1rumvWgRcxA5VoelJDuX413404loY6rp7S
	NqnbvRQ6VV2u19/MSulghDh9vl/1HKe6YEIrpJfIFzJ7J7qDFZA0G2Ae37B9/1BFmpIHqE3YRF6XD
	rS/XI/pWzcbTTnk0nWQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZAez-0001Ei-9u; Mon, 25 Nov 2019 09:27:57 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZAep-0001EJ-50
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 09:27:48 +0000
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
IronPort-SDR: CtdzCWPGm4jR4X/fGVPPeB/VVLTj4bYTjZcNmh5xfXqpsGUqbjTzgOwM9Hr1JEJCViRaftZKyI
 1KFdu1vil4+p+ICWdc/NLxrox6RPx2mG9EcmyCGRL5a5GT1uYYPsbDob/3CDHmZriAoZ8cWgS5
 DzHqDjkGFbXl5RKYAElPnhOzqO4wXspz4FaocmSzIKWGaWNsnFdOqC0As+KNI6pFvmfGowwPp+
 lUNlne8/CbTJcmAMIuxU9YENPKbgzXpAApuIcYsb/d+B5OPybFNZsFRWjL6pCoMzaZi8MXP9BL
 io0=
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="57809965"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Nov 2019 02:27:46 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 Nov 2019 02:27:46 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 25 Nov 2019 02:27:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=msvenQ/3DCqOu+oCIqHS0uxxGcSMD6uglkwL6lou8f+T4R6E3X/cH98zenqLbD8TGyoYRYkHRvF5tXvYHX8i4ULXTSGsL6oxSA/69z/t6XZIA0FrqA+0sSBiqPf6j4EAMUdMCRZ7YkRa6ivIqoEnlac860pWsXE3iuW3SuICfHVvLGQCUFd4IClNQg3BSgpDOV9qg4eT/VwB0jM8fG85DpzEy9tFnbmMJ4u27S9pHOLmbFeXuIrSpzkZI0GrtTI+uezc1MJ6PB9sfnW/cjFexwiyLccKhOYb83qdlpCzVRmy1W5UP2CXU4yo64lwtgXIyzKg5+HrcJRd9wfJdtWzow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wLrfUKM1Y+7RqPl45h0e2q5ad8j9NDu0RYpBWqCBlBQ=;
 b=NlMT/zG5Vu6+NpYbTv3DZzyeKXz7IdL3+W7F26eNcPKZGHT+2PkFJHJRbiwnGAdgIOOInv46tmfHybO2qNAvTT7YG9q+dOuATmtYiU5KpB8X7KkmZkQrVwzFf6Y3sxbyyp8DHuBLTeYlLrttUz4+xr2FVN2zxKF1s5m4MGpUdvpAYWHv/n7aHrnD60UDV1xhChWPwNS72sf98OO9rwaeTcBo6MP+gUjg8bq3QeYUOj9BsDbVKdCHNqGeLo0u4K6jcwT+yhyeBTRbtslygitp3J/vftyRxOnYzBv0d8zowl2m2jmlHyYYRhdnLAAjvDDDiD1CXdgiMwSCdm62sXGY5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wLrfUKM1Y+7RqPl45h0e2q5ad8j9NDu0RYpBWqCBlBQ=;
 b=R5V+EThDkQeqe4RGevSwKrFv3mIqOuTm6+v7TGhytblrf/yowDMUXzCRtKQh5CJ3xFkMsXncSX2fJJzpScDN8zu6gMlRrrkQv9F43G71HSxyaaHrB2/OraEj1wQrRTIJ1WTPY/3p61kA/NxAOgbnN/1b0JHVOXAIRD//euag/RY=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1468.namprd11.prod.outlook.com (10.172.34.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Mon, 25 Nov 2019 09:27:41 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2474.023; Mon, 25 Nov
 2019 09:27:41 +0000
From: <Eugen.Hristev@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <robh+dt@kernel.org>
Subject: [PATCH] ARM: dts: at91: sama5d27_som1_ek: add i2c filters properties
Thread-Topic: [PATCH] ARM: dts: at91: sama5d27_som1_ek: add i2c filters
 properties
Thread-Index: AQHVo3KV0xMhN6t/20m55125H3GPJA==
Date: Mon, 25 Nov 2019 09:27:41 +0000
Message-ID: <1574674036-5589-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CWLP123CA0087.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:401:5b::27) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 931124ed-af91-4e0c-c467-08d77189b81a
x-ms-traffictypediagnostic: DM5PR11MB1468:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB14682F8FC89E2352142F5227E84A0@DM5PR11MB1468.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(136003)(376002)(366004)(396003)(199004)(189003)(6486002)(71190400001)(256004)(102836004)(6436002)(71200400001)(6506007)(6512007)(386003)(107886003)(186003)(54906003)(2616005)(52116002)(4326008)(110136005)(316002)(99286004)(26005)(5660300002)(4744005)(81156014)(3846002)(6116002)(66946007)(64756008)(66556008)(66446008)(66476007)(86362001)(50226002)(8936002)(66066001)(478600001)(2906002)(2501003)(25786009)(7736002)(8676002)(14454004)(36756003)(81166006)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1468;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xpcMd/2Ns51EI/K70uoU419+i3ZgvbvMvMRTkzRbpsjj6qk/bpsqfjqVAKL2ViaX/M68JKcV7dBNr0gHk0Ng0OvMXI/D+4LBzC4KF8dzft+lsagM9kcJL0esmd1PeY3LR4Nh5JBzDgZLynHjF5qawnJTZvZ1U/JMGx0GuLXC4rQCXZiO/BHtRJFT2vYXif5/M2QPARQPHDgMQ9MtE8QIA87hsS/jCjsJeAu0OPbmvR8rUvTbMPvNuJukZzDYXMYT1fQwfA/km/h0nsb+TAFnYZPCb0gFmGGFTyAkOpmFVrb1B526CMSCVSEqB6uajogsl1QTqvaTv+Tu2nqtGZVsGcWC0Euh+6sZVWx0Es6FXgzCLKE0ruGfV3NZ9+hyMcX0+V8I5kfYTMUecYmdZpJLGRYBOIQogd7AOOmKhLdNPn7li2+vfFU/SyNO+slC9Jwl
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 931124ed-af91-4e0c-c467-08d77189b81a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 09:27:41.2603 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dy5E6hWASnOYJ1+egIhf+H6RrtnoIGZeCOSDbg44CST01kGzsrLUbw0G8O3SDtYukOMkNRYU+cifkCpTBXuYf1pM8WkyzYtjT25irFruVeg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1468
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_012747_231094_8A0EFF0C 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Eugen.Hristev@microchip.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Add properties for i2c filters for i2c0 and i2c1 on sama5d27_som1_ek.
Noise is affecting communication on i2c for example when connecting i2c
camera sensors.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d27_som1_ek.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
index fca5716..b6a22bb 100644
--- a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
@@ -123,6 +123,9 @@
 
 			flx1: flexcom@f8038000 {
 				atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_TWI>;
+				i2c-analog-filter;
+				i2c-digital-filter;
+				i2c-digital-filter-width-ns = <35>;
 				status = "okay";
 
 				i2c2: i2c@600 {
@@ -246,6 +249,9 @@
 
 			i2c1: i2c@fc028000 {
 				dmas = <0>, <0>;
+				i2c-analog-filter;
+				i2c-digital-filter;
+				i2c-digital-filter-width-ns = <35>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_i2c1_default>;
 				status = "okay";
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
