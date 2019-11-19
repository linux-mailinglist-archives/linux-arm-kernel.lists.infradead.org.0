Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD6C102A04
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 17:57:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eoMh706bjOiVVnjnYbDL1wkYtnoOSHbz2Z6on1WTHG8=; b=GhM5evjc8SfoZs
	DDxSI/xCo9WaPZhrD0tjkla9DVNj82c+2CoE4nHys5zwcR/nGdhTKhTeShDTAN7qSEx+r658gRlLT
	heeKMAs9jrlujXH0JjF/syRbBhTRHP/c2rhEA2P4cwxEqW2095dgInZocRSODEdroB+/snmG4ks8+
	wW8Sqg2LFYHbdhJC+K9MsuxBIPPL9aiRPwX6DCuE4HKcHHb8CO9qJuUrsab4YGvsj42C9TU6F4xAw
	mPNWxEvmo+dXLkrYSPenUW0rZuajQ1Jlld3Uhh+P4oI2j+ngB0wanVy3y3DnSzDv/IkWkkvRHPneu
	3g80hEXYAojZnxAE8P3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX6p5-0001nz-1N; Tue, 19 Nov 2019 16:57:51 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX6nv-00010c-KP
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 16:56:42 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAJGtBKm011541; Tue, 19 Nov 2019 08:56:33 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=duNQs1RPDRJfTFvqqCxlH5FF92FFj3b28ORUHjWCLn8=;
 b=jl2CULGPSAGt/n7bag1WU/FJn2az0h4VlolkzoI14ueqbxGG61HysuJSZQBSIOHb/TBd
 NarckkYLIAc6KAaUBJWsZnvtgLM2s//X0hdS6tX/WnCSpEK0Xlh18XCr2YvJNGwbHi8S
 kgSZlIYQpfNfDMtSzD4O5TQoOqjBXwTgwyMExQHTrP/DvSKve/Xtt0YL/TjuxayDHoa0
 6xfloP8AvWWAh3uOd1p/zEqbkipT/EFJwFvc6+gDYlae6FmPZPkuGEaGm5m0Yh+nLZJa
 BRLdVCSG2Z/LjJOIlZVVw8oLh+PLDMCUFpRZPuEfYWEQux7e+tH2s7iFuiR/eZr35Bl5 vQ== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2wc82vjwf9-11
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 19 Nov 2019 08:56:33 -0800
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 19 Nov
 2019 08:56:31 -0800
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (104.47.32.57) by
 SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 19 Nov 2019 08:56:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KOEa8Y+KSDYx/KO91NFoZpbGlAJJ8VnLpjWfHKkhmSoYOnjDiJMxCnceyOr+cekSKm/x4yLjB6lDwslrXzd7Te1X5GEr0RsCoNvA6jWI9dtjxpLVcO1/N6oshVOIfILHAOin/vmPmyV0L7uD8t3N//WPUhrblSbB/y7BF33ks8GgW1vo4YENQ3vM6MH18eAxgTbwSBxBxxQo6q/RmVaVu0Mj6uk4/i29M9enxMAw5tXug3q+r7szNCXEAkuwcGM/2urxvZn5kDopO862EWcHDy41x+MshIqvJhlIjkmz/dIEOdXoWj81yedSzN2CFn0+ywUHZVIM+GU5KKrK2hXp/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=duNQs1RPDRJfTFvqqCxlH5FF92FFj3b28ORUHjWCLn8=;
 b=djv9C2exsSqIp9tsIyioUBdPuGdO4keAJa7N5HtYL3870zlwLinYB7DSakUSCi+pC16JEkR4FuRtNIPMnYoU1/Tsq9qiiduN4YMprG9Yn4+gBoIMmSsffsMGTcHW5SCP3emT+79yMdySAosBLUUP/fknKvYXtt9T3n+lWFHLP+2muGkDGd4m0jmHF4zsJ8SIptzhksHG2crX3ZpXnTvmjKpmWGRJ0A7I+K96z7UQGUiklHQ7RGt9tjaw0cjpvZ7SwEYM5drCetdRwaAQmBbMLGnDIcvd4Z4Qd4ZXBdKoCdyFNuv93IBuRe3qoUn6+nNqLkezISoYrp/yJWg7ZZW1cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=duNQs1RPDRJfTFvqqCxlH5FF92FFj3b28ORUHjWCLn8=;
 b=IfTxxnW2O5rxOqZbcb16axTzKGI4SNb/RRGMR5PLeNxw+lhb6TvPpOIFzwwyxf0qXYR8mOckGFDB/hR8DRWE1USHrprLpwhoO5I/bUbWtPqr8md4VR3trzfb50rATJDu67/xNfUmfyMgotCHQ0I6F7Oq6jYQeZcP4MT81JNOyTg=
Received: from MN2PR18MB3408.namprd18.prod.outlook.com (10.255.237.10) by
 MN2PR18MB2846.namprd18.prod.outlook.com (20.179.21.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.29; Tue, 19 Nov 2019 16:56:29 +0000
Received: from MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::657c:6c81:859d:106]) by MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::657c:6c81:859d:106%7]) with mapi id 15.20.2451.029; Tue, 19 Nov 2019
 16:56:29 +0000
From: Robert Richter <rrichter@marvell.com>
To: Arnd Bergmann <arnd@arndb.de>, arm soc <arm@kernel.org>
Subject: [PATCH 2/2] MAINTAINERS: Switch to Marvell addresses
Thread-Topic: [PATCH 2/2] MAINTAINERS: Switch to Marvell addresses
Thread-Index: AQHVnvpJSIV4IqWmOEenzge5de3N4w==
Date: Tue, 19 Nov 2019 16:56:29 +0000
Message-ID: <20191119165549.14570-4-rrichter@marvell.com>
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
x-ms-office365-filtering-correlation-id: fc7029ef-6a40-4126-1dfb-08d76d116c14
x-ms-traffictypediagnostic: MN2PR18MB2846:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR18MB28460E02DB87E71C7180A088D94C0@MN2PR18MB2846.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(366004)(39860400002)(136003)(376002)(199004)(189003)(186003)(6506007)(64756008)(478600001)(66446008)(386003)(6486002)(66946007)(476003)(486006)(2616005)(8676002)(6116002)(3846002)(110136005)(54906003)(86362001)(316002)(36756003)(11346002)(99286004)(256004)(14454004)(7736002)(4326008)(305945005)(66066001)(25786009)(2906002)(81156014)(66556008)(66476007)(6436002)(102836004)(26005)(5660300002)(76176011)(52116002)(446003)(6306002)(6512007)(71200400001)(71190400001)(1076003)(50226002)(81166006)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB2846;
 H:MN2PR18MB3408.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: W5EVsFdfM2B+Y0PVwnfdGbIDn8Rr4j0ZHTEiIELD0Fabo4DOgDsl/YBYeJtiKWaOp+jVaneABFwri/X0vBVcqDu8PIRfDErHgXqkxybYWkzHCtkqRQw485f/XJf6oJtONJ18nBX0XT5Zgkw3YS7BDxnBbNbhL8NBxcG61tkC7aPDhN9ufQfnhUZ7FGYHSCsk6IWMGLrpZA2Y41vtDivBiEa1Th5MmdQzWrMrUmMABYZwBlKxuLAjU/ukzspNEmuAcJMLl2DfQ2SkTNbNoKH4rLIl6A4jqtKTQyLP0TCykJdYgJZvzkqHtb7fcGVobJW4Sf32blaDpp6EhHBwRlAklRgj2IPyu56690PtcqL/8745JwPy9EwTOYX7iKmQUva7eYK84B8u0lRGcMsk2PDfyZ59YQvVDZknEqCwX3q8ySzP2ukzJ9Var0akHIux1K10
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fc7029ef-6a40-4126-1dfb-08d76d116c14
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 16:56:29.4122 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c3jQneLlerGbvjFsPzD4jgF5m1pr/W+OV6YpyrozUvM8vLzqtqUl44sbmpxIwABieMuIM9YO9KO+84A4XiHGVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2846
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-19_05:2019-11-15,2019-11-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_085639_792482_83F6D6EA 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
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

Switch all addresses from @cavium.com to @marvell.com.

On that occasion, switching also to my Marvell address for all my
Cavium/Marvell entries.

Cc: Sunil Goutham <sgoutham@marvell.com>
Cc: George Cherian <gcherian@marvell.com>
Cc: soc@kernel.org
Signed-off-by: Robert Richter <rrichter@marvell.com>
---
 MAINTAINERS | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2bef41729946..e1d8c905521a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1547,8 +1547,8 @@ S:	Maintained
 F:	arch/arm/mach-cns3xxx/
 
 ARM/CAVIUM THUNDER NETWORK DRIVER
-M:	Sunil Goutham <sgoutham@cavium.com>
-M:	Robert Richter <rric@kernel.org>
+M:	Sunil Goutham <sgoutham@marvell.com>
+M:	Robert Richter <rrichter@marvell.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Supported
 F:	drivers/net/ethernet/cavium/thunder/
@@ -3727,14 +3727,14 @@ S:	Supported
 F:	drivers/mmc/host/cavium*
 
 CAVIUM OCTEON-TX CRYPTO DRIVER
-M:	George Cherian <george.cherian@cavium.com>
+M:	George Cherian <gcherian@marvell.com>
 L:	linux-crypto@vger.kernel.org
 W:	http://www.cavium.com
 S:	Supported
 F:	drivers/crypto/cavium/cpt/
 
 CAVIUM THUNDERX2 ARM64 SOC
-M:	Robert Richter <rrichter@cavium.com>
+M:	Robert Richter <rrichter@marvell.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm64/boot/dts/cavium/thunder2-99xx*
@@ -17911,7 +17911,7 @@ S:	Supported
 F:	drivers/char/xillybus/
 
 XLP9XX I2C DRIVER
-M:	George Cherian <george.cherian@cavium.com>
+M:	George Cherian <gcherian@marvell.com>
 L:	linux-i2c@vger.kernel.org
 W:	http://www.cavium.com
 S:	Supported
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
