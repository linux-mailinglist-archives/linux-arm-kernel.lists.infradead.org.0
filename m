Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0A3ABBC0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0NehPniy2cBX58xlystnmXLpI7TDjaFv4Q1i3w0pFO4=; b=j40TFzvGPMm7rT
	ZxUlCa48mMjehbTuRz8Pq/n5ocyRyPwu0E+jsfYUkGiMntTr7RBY25bZdUAKrO+tZq+O1cIV2VQwT
	w95p0IZplzYgyrocBrpD29yOtBq7+wcsJLPFpPmZ5hsdW5sfKoDCtNKHKgLH33QoEPlwh00v3obVB
	ZEws+E5tS1C1iop1YQ82eQvydsHpdKlnDzKxHhTyXdsIz0NeBpD2FZ1kvCcx2+CYp8CYeb1XV0S8F
	Y3veTqdBFywrtQGBX7d+stuwimWdkAvcZNquCk82gFfO7+JM7hw3PKGjupbNHcYvKn2N/9gA3Zb/l
	IiHncfthaVHg+0/COyUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6FpK-0006XH-GM; Fri, 06 Sep 2019 15:07:06 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Fp6-0006WP-Q3
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 15:06:56 +0000
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
IronPort-SDR: ixPM9k0Xx6/kH1us/OW3ASE2Uskwm9Kf5abJYFWYL12SBglkG51JRtNnsWb8lTzSUHQnrkzU4P
 czuNiVZgULECL3gxGTrZI6soHfcW0xrPE59DGbDuc6WJlFIIqc9fYJJA+zVWCeP4rnvcGhjxjL
 beWAV34ecHpfXSkrXnXDqsVdfovV5UyCfxreBBBm6zN30dowHOa/NpJ5LuiThCKPj7ZwMzFi6f
 MdUxxY+SaDBnux/1xH99fTNgt8yPVgI8Eb6wfBTk2Vh4F8c9dqljxVQgzWvXGK03CScOIwVwAM
 1gM=
X-IronPort-AV: E=Sophos;i="5.64,473,1559545200"; d="scan'208";a="47979632"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Sep 2019 08:06:43 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 6 Sep 2019 08:06:43 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 6 Sep 2019 08:06:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TEMFTrHODMPgGeIgWU8RRj1Zd94a1wZjQafX6kXByd5WqvPU4EZjOUhZumhbRgAue5UgOSaQZWDu0yptqq22gsCjBs3m12CBKVwxqjdQMlWRiHLsr23/tBz8A5GDrXy7THjYpQsR6JXnid+VCPo6OkVKfZCvtwZ+l5RDDPr+rEHNs31Xs4sdg0iqHrGUhVt/cbWwiLxENrx1zQt+/+m29RT269QZKyNRvOU+AVxxuRSGNX8aDbekbVu9CRGpYBE7xvq8zoN2f8DP8XYCd+b6OYk8hYa09vWoshud35LTrxcmWdZTyJ8Xwm/KU+LYw85Bdl1IrhtFefWitxUfFepRiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uNfLd2utraeGL6ncv+dL8RQ6T3mhSs4DbZX0BDNyKYg=;
 b=lrOIGITW7xokWsMGL4qvC8BMlQrJwbZ6akmvvIgFpBMIOMBK8alUo67sxhOqbreFeQkmh0JbDi/QPxekkJX8V50qDeWs9zuRf31yfh/jzOKZ2eXijxxP6kvX4SNCuJv9fmG69X33D3dkUuYLBfRidTPUEQcqQRop27kdI7u5ktwd/SWQcp17adb3W5ugHx2QhNFa6xTQrP7vQRMBBB1LVxbX3NULvBapvuXHZ7Tfhu6ONqGuz+CYXGSWVXPLbfSg67ltOaKYE9XeIxZQ5z/kQ+Yzq3PbTET9zrQieu3K0tp3W+FGO4rzdA1J46NZ2CaAHvUtZJAbhQplATSu8kQM4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uNfLd2utraeGL6ncv+dL8RQ6T3mhSs4DbZX0BDNyKYg=;
 b=jKDEyTeeF8vyjynEp8so2k863RWkUFqmQmnUWkqtO2/JkOR2aajpU6BzJAQALihpilUmd0j1EdP14fcMB+dg36q61l2dBvpfiF0e4S+UJv0y3vd+aONfjNm0qA8p7diS8I718H5huzLomfvqaszgr6v1DUraedQzbjijkD/VY+g=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3567.namprd11.prod.outlook.com (20.178.251.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.19; Fri, 6 Sep 2019 15:06:41 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2220.024; Fri, 6 Sep 2019
 15:06:41 +0000
From: <Tudor.Ambarus@microchip.com>
To: <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <Ludovic.Desroches@microchip.com>, <lee.jones@linaro.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [RESEND PATCH] memory: atmel-ebi: move NUM_CS definition inside EBI
 driver
Thread-Topic: [RESEND PATCH] memory: atmel-ebi: move NUM_CS definition inside
 EBI driver
Thread-Index: AQHVZMSw199+5/MIRkK0XEZtFVsM3g==
Date: Fri, 6 Sep 2019 15:06:41 +0000
Message-ID: <20190906150632.19039-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR04CA0046.eurprd04.prod.outlook.com
 (2603:10a6:802:2::17) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 665264df-f608-4ad9-312e-08d732dbd2c2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3567; 
x-ms-traffictypediagnostic: MN2PR11MB3567:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3567ADB83C2A58C996917725F0BA0@MN2PR11MB3567.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0152EBA40F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(136003)(346002)(366004)(396003)(199004)(189003)(86362001)(6436002)(71190400001)(71200400001)(1076003)(305945005)(7736002)(14454004)(2201001)(478600001)(2906002)(25786009)(50226002)(81156014)(8676002)(81166006)(4326008)(6116002)(3846002)(6512007)(53936002)(2501003)(107886003)(8936002)(2616005)(486006)(66446008)(66946007)(64756008)(66476007)(66556008)(476003)(36756003)(26005)(66066001)(256004)(5660300002)(110136005)(102836004)(52116002)(386003)(99286004)(6506007)(6486002)(316002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3567;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MKMFtuDbjRPEC77v0zmCNPs3anxkiablxDBMOo7bUgcJIyiD28yq/8cBwOgyiiJsDTWbKlHycHIzv6kUERuMc8H8cK3RxefnJ5DXHXB3wRtuCxTw5b5jo/NGRiv8mZXPuzPyGTBANUb6vl9FHA/lss3+tjS357/60KOrtHbNvEvJ5wrVvLRThwvkCwIvntUL1dIyCEt45HFIJA0xyEip1eWhVbjifsPNItfDDSCH5jrCkF9Y9pEjbSgh6o4183fyVZ+FyyfwGtJLj9NKJEZGSQ5xgmw2sywdZ9yp2FFXk6Zo4c+HuTyHkEn3WFzIJVv4/+iTduPyM/juFzBLoWVslMuhLdM1kJh9kt80UgXXvYuE3aUnEYAEOISaScPGpynPrSl385e5l7QTIuvoX4oLxsRnJDWNHGRjF1iqFrVvpwU=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 665264df-f608-4ad9-312e-08d732dbd2c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2019 15:06:41.3611 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SP4KqWPFWSBJGHxLxjpwOUqa7zcVqtNzAhJBs0u6ikWlIbPSJYlc3wGvQJSMb4JRTE0uHHV2PUR+PfwPEdpgpnlRvxExWlaMYIZh+81yZtI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3567
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_080652_876661_36A2CA94 
X-CRM114-Status: UNSURE (   9.23  )
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
Cc: Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

The total number of EBI CS lines is described by the EBI controller
and not by the Matrix. Move the definition for the number of CS
inside EBI driver.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/memory/atmel-ebi.c              | 6 ++++--
 include/linux/mfd/syscon/atmel-matrix.h | 1 -
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/memory/atmel-ebi.c b/drivers/memory/atmel-ebi.c
index d0cd57aaebb4..111e09a5b4e9 100644
--- a/drivers/memory/atmel-ebi.c
+++ b/drivers/memory/atmel-ebi.c
@@ -19,6 +19,8 @@
 #include <linux/regmap.h>
 #include <soc/at91/atmel-sfr.h>
 
+#define AT91_EBI_NUM_CS		8
+
 struct atmel_ebi_dev_config {
 	int cs;
 	struct atmel_smc_cs_conf smcconf;
@@ -314,7 +316,7 @@ static int atmel_ebi_dev_setup(struct atmel_ebi *ebi, struct device_node *np,
 		if (ret)
 			return ret;
 
-		if (cs >= AT91_MATRIX_EBI_NUM_CS ||
+		if (cs >= AT91_EBI_NUM_CS ||
 		    !(ebi->caps->available_cs & BIT(cs))) {
 			dev_err(dev, "invalid reg property in %pOF\n", np);
 			return -EINVAL;
@@ -345,7 +347,7 @@ static int atmel_ebi_dev_setup(struct atmel_ebi *ebi, struct device_node *np,
 		apply = true;
 
 	i = 0;
-	for_each_set_bit(cs, &cslines, AT91_MATRIX_EBI_NUM_CS) {
+	for_each_set_bit(cs, &cslines, AT91_EBI_NUM_CS) {
 		ebid->configs[i].cs = cs;
 
 		if (apply) {
diff --git a/include/linux/mfd/syscon/atmel-matrix.h b/include/linux/mfd/syscon/atmel-matrix.h
index 8293c3e2a82a..1e2cd118e4e3 100644
--- a/include/linux/mfd/syscon/atmel-matrix.h
+++ b/include/linux/mfd/syscon/atmel-matrix.h
@@ -110,7 +110,6 @@
 #define AT91_MATRIX_DDR_IOSR			BIT(18)
 #define AT91_MATRIX_NFD0_SELECT			BIT(24)
 #define AT91_MATRIX_DDR_MP_EN			BIT(25)
-#define AT91_MATRIX_EBI_NUM_CS			8
 
 #define AT91_MATRIX_USBPUCR_PUON		BIT(30)
 
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
