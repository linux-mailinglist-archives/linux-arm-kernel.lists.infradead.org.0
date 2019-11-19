Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B49C1029E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 17:56:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LwiOVRT/AtIkL6DRY7hUbOQYk9i2lRN/i0hg7pqNz2I=; b=NIPN2kNYE9i1mQ
	qJSzUPUdClELN/z9J63NIrE3vGeB5+7Ls/ReLkb+KkG/v8K2KlQnFzk132zHKMYASa4+fa/d+H2zI
	bFOLldI+o1/i+hJhgCOHMd9P//nxxq7xkPQtmQ6TQ0WZ37HOmADy3IQnyX4L+rPZZg+TUcBuU+WDl
	FWZiV9ISZCrWtndlqyo/IKd9KW/ArkCADlpPZ+0PbCm9J/7r7pF2eJjCGGCcUKBH/snWSYFpI39Ff
	/OHZvjIN/LlS3kOHRQafsul86g71yCxPMq8XNcF89yFt6ZeXgmN4RnbWMNHvO4iPXYLr8HLgz8i4z
	jy3QQ8eAVZBrt3Oe+iFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX6o4-00011s-RL; Tue, 19 Nov 2019 16:56:48 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX6nu-00010a-Rv
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 16:56:40 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAJGtpWs000375; Tue, 19 Nov 2019 08:56:29 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=5psJY5oRd+BdV8GGSj8SFj9lpONmcHRW3/jk1UbNueg=;
 b=JbrWIpA2ZdsNFxHXjc36JxjZgzvv6+li81MNucoF7atNP3BNqid+zC8zjCIHO4+2XCQ+
 F7IsiuyeCBCdyx2Rzo6FY9tpDG+W0XZq26vAZ4ewvxSXDLNpUW/mxm20O5lEHA7zeAeD
 vDT1NifGia7OjDgoET2CYTOrjDb+WsGu6kcGhtT+4XLzuP57R1ooPQBr51o8XUBDcv2A
 yuWpJFkRiwSrCKw5aow3aXAYZRPPAQObWBXXC3iHsUDF9GrFQXPY3idGSGkkr3Ryu4O6
 DzyHDOf+Kzn6Zq6H57BE0ZHHD1jmWqb3wds5EcKwIhisaLT6mmc8XCTc+g6r8w81Jk+A Qg== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0a-0016f401.pphosted.com with ESMTP id 2wc8422y5c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 19 Nov 2019 08:56:29 -0800
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 19 Nov
 2019 08:56:27 -0800
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (104.47.32.51) by
 SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 19 Nov 2019 08:56:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VMvZix9vSHpqu1+VjzkkPE+74nKI6ZNQ9gKkNMLanbS1CoBZJ46ildm5FrjsxvhPCnq6Cm3WKzAfnF/n/34+8cLFqvmCmq3megcjUSS13fQU2H3J46oQ+liLhq63wyKlUQ2Oh4dbBWuDyVtYcm8uJopwdmbMhB6WGHv29JUxMRhPyEhMfqTFr5TBXTLhBf6jCU+HKlycHcKVZwbo5LiuVFzE5nF2LpolOUjHUKy6TbK6ha7ffjIWYJpEyij2dAP1UznCdzG9Wes3xcCcABU3UZWmWNsqi9fG5U4vCMC/P00AwMtJUU2Tvsh5j0NhtnYbfCGxAPBemuUFmvl0fLUKBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5psJY5oRd+BdV8GGSj8SFj9lpONmcHRW3/jk1UbNueg=;
 b=ebB/76Z03E0Em0CDd5CgyvlocWsVMZ2dtY0vggJVLWXyV7MmtMOph/tUXWNhHMFITsYfnZ9ZjupVkF5oZsGoOczs0qYwC9QrEvtmPfHhw+QSI9/eSphRairXZDepPDI2+xVZiJZxKO9RO3oPZ69YeLT/zaecOYvFIJ7lMM2ECaOquq89+8+GpVL/FbjvoJRiT7l3KuT4+PXQij/PhOi3KGNwIqad4hbjnr/7Y/xr4UZ3mjJIGsIGYZnZo9/mtrIkhB5aItLpsK/N21GGVkpuBwuWlRSGZC7QRDMhWFBappQfjntdGTB8rXvbG/YlOyFNwOMZBnOY6rpU+td49KNPPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5psJY5oRd+BdV8GGSj8SFj9lpONmcHRW3/jk1UbNueg=;
 b=VYvACJM+UXTrQ7NjNE96EiXoNO8g8uXjqGtwtTowZn9HmmtETc0aVlO4j/aJol2CDHDcL35KaUiY3exS0sPnhCU2nRe7WaKHEfMMty38PpNX3qbbNefEPj9FjcEMs6hjMXr5J8xNWCKOnyFaCV52q9/eAovzoerZRFU8CdzexHU=
Received: from MN2PR18MB3408.namprd18.prod.outlook.com (10.255.237.10) by
 MN2PR18MB2846.namprd18.prod.outlook.com (20.179.21.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.29; Tue, 19 Nov 2019 16:56:26 +0000
Received: from MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::657c:6c81:859d:106]) by MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::657c:6c81:859d:106%7]) with mapi id 15.20.2451.029; Tue, 19 Nov 2019
 16:56:26 +0000
From: Robert Richter <rrichter@marvell.com>
To: Arnd Bergmann <arnd@arndb.de>, arm soc <arm@kernel.org>
Subject: [PATCH 1/2] MAINTAINERS: Update Cavium ThunderX drivers
Thread-Topic: [PATCH 1/2] MAINTAINERS: Update Cavium ThunderX drivers
Thread-Index: AQHVnvpIKK4hXzo/9E+xV52+I9ZKJA==
Date: Tue, 19 Nov 2019 16:56:26 +0000
Message-ID: <20191119165549.14570-3-rrichter@marvell.com>
References: <20191119165549.14570-1-rrichter@marvell.com>
In-Reply-To: <20191119165549.14570-1-rrichter@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1P192CA0020.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:fe::30)
 To MN2PR18MB3408.namprd18.prod.outlook.com
 (2603:10b6:208:165::10)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [31.208.96.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fa644830-4a68-41d8-8053-08d76d116a7a
x-ms-traffictypediagnostic: MN2PR18MB2846:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR18MB2846D2CEC9481E5E890732CFD94C0@MN2PR18MB2846.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(366004)(39860400002)(136003)(376002)(199004)(189003)(186003)(6506007)(64756008)(478600001)(66446008)(386003)(6486002)(66946007)(476003)(486006)(2616005)(8676002)(6116002)(3846002)(14444005)(110136005)(54906003)(86362001)(316002)(36756003)(11346002)(99286004)(256004)(14454004)(7736002)(4326008)(305945005)(66066001)(25786009)(2906002)(81156014)(66556008)(66476007)(6436002)(102836004)(26005)(5660300002)(76176011)(52116002)(446003)(6306002)(6512007)(71200400001)(71190400001)(1076003)(50226002)(81166006)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB2846;
 H:MN2PR18MB3408.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IqUSUsDkxvAfrMax04RDtLDeML2lWkPZGzwLmSUz3iqxq5+0pjjjvg7QqcmGTYwmWlWh5faSrG+bBlwaXeHlT2R3zHkUiXucKRLFQRDeTlP4/2ILyTnHY2y9QqUkDqV/6K6HwPU5xqDYfe7iigjdzpsu3EcmyT9y54YT9S/cnMsoT04wrx2aFGmQifjCwIISIbJMIbA+kTurVVC3lEXzW6yynuHZpEnjaiX04zivc0spL5ez5A7ODxIQZNw3NDEwdka0n5f/sr39YaBf5lGyC+UoAo/RX8oneQarVVYEd8rZoWo6vr8FtYYICkNe2M0QKxrvorMqrEeRoQlQ6SWZGPAi7urH5zBJffQBKQisTqqO//b9cGdjMm9QzC3v7uuwuCRDgl4O1nXcj8Jm4eazyI4YW5rPeCPHNKt6b3Vy17bLetjFKNqCKXtklepdmUqc
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fa644830-4a68-41d8-8053-08d76d116a7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 16:56:26.6518 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dek3DRatfVu2jctZsi0uFclgHNrmvXvkC4t19DUsOWlQ+ME/o9Vd0+5G/Wow3zO31XeYvWpTjE9Ms/1BEMUuzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2846
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-19_05:2019-11-15,2019-11-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_085639_089841_0BCB9BD2 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jan Glauber <jglauber@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>, "soc@kernel.org" <soc@kernel.org>,
 George Cherian <gcherian@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Will Deacon <will@kernel.org>, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jan Glauber <jglauber@marvell.com>

Remove my maintainer entries for ThunderX drivers as I'm moving on
and won't have access to ThunderX hardware anymore and add Robert.
Also remove the obsolete addresses of David Daney and Steven Hill.

Add an entry to .mailmap for my various email addresses.

Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>
Cc: soc@kernel.org
Signed-off-by: Jan Glauber <jglauber@marvell.com>
Signed-off-by: Robert Richter <rrichter@marvell.com>
---
 MAINTAINERS | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index eb19fad370d7..2bef41729946 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3705,8 +3705,7 @@ S:	Maintained
 F:	drivers/net/wireless/ath/carl9170/
 
 CAVIUM I2C DRIVER
-M:	Jan Glauber <jglauber@cavium.com>
-M:	David Daney <david.daney@cavium.com>
+M:	Robert Richter <rrichter@marvell.com>
 W:	http://www.cavium.com
 S:	Supported
 F:	drivers/i2c/busses/i2c-octeon*
@@ -3722,9 +3721,7 @@ S:	Supported
 F:	drivers/net/ethernet/cavium/liquidio/
 
 CAVIUM MMC DRIVER
-M:	Jan Glauber <jglauber@cavium.com>
-M:	David Daney <david.daney@cavium.com>
-M:	Steven J. Hill <Steven.Hill@cavium.com>
+M:	Robert Richter <rrichter@marvell.com>
 W:	http://www.cavium.com
 S:	Supported
 F:	drivers/mmc/host/cavium*
@@ -5834,15 +5831,14 @@ F:	drivers/edac/highbank*
 
 EDAC-CAVIUM OCTEON
 M:	Ralf Baechle <ralf@linux-mips.org>
-M:	David Daney <david.daney@cavium.com>
+M:	Robert Richter <rrichter@marvell.com>
 L:	linux-edac@vger.kernel.org
 L:	linux-mips@vger.kernel.org
 S:	Supported
 F:	drivers/edac/octeon_edac*
 
 EDAC-CAVIUM THUNDERX
-M:	David Daney <david.daney@cavium.com>
-M:	Jan Glauber <jglauber@cavium.com>
+M:	Robert Richter <rrichter@marvell.com>
 L:	linux-edac@vger.kernel.org
 S:	Supported
 F:	drivers/edac/thunderx_edac*
@@ -12629,7 +12625,7 @@ F:	Documentation/devicetree/bindings/pci/axis,artpec*
 F:	drivers/pci/controller/dwc/*artpec*
 
 PCIE DRIVER FOR CAVIUM THUNDERX
-M:	David Daney <david.daney@cavium.com>
+M:	Robert Richter <rrichter@marvell.com>
 L:	linux-pci@vger.kernel.org
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Supported
@@ -16137,7 +16133,7 @@ S:	Maintained
 F:	drivers/net/thunderbolt.c
 
 THUNDERX GPIO DRIVER
-M:	David Daney <david.daney@cavium.com>
+M:	Robert Richter <rrichter@marvell.com>
 S:	Maintained
 F:	drivers/gpio/gpio-thunderx.c
 
@@ -17916,7 +17912,6 @@ F:	drivers/char/xillybus/
 
 XLP9XX I2C DRIVER
 M:	George Cherian <george.cherian@cavium.com>
-M:	Jan Glauber <jglauber@cavium.com>
 L:	linux-i2c@vger.kernel.org
 W:	http://www.cavium.com
 S:	Supported
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
