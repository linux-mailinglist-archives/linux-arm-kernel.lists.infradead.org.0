Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3182F158B0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 09:07:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkBq+t0sZ3fkCS2nmW+yavdWMusAHFtJKd19FTe76Vg=; b=uFmufx/i4XKR5T
	f/u8EBBW3WqDKaC7TrB7tVahvc4iGSr2vJp4ipofGFXQ3Lxim6Y13FVlY0lVH5zI+3O/zgiiZl6KC
	awo6FJhPePWX/5n/4xdACcIWmfo7XCVXo7NA+TlEwNTZGSUokC/nPdkd1ergRyyHPEv2GCGx/uVo4
	jE4ekkB1gws9HYSKMMf0tF/s2FY46HagvtenOoCpx7+is8EBp8sBW9saRQbKbgHsVR6k2f7Hlvv99
	ZRq966J+QNargNPIGsAF84lXIWiYw14ysCx4gh57ssxYtAiPwEAPejQ2VhH/U8PH2kuWQG/4puVa8
	EUK0JVxuS4sV92XAasug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1QaD-0000WU-9e; Tue, 11 Feb 2020 08:07:49 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1QZs-0000N4-BL
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 08:07:29 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Et8IHCmdg3zJYmBY5YbZWcGHOZlrAYZAgj8UOaM4DccvsMhQgSb5kEeCWQ9xzc1oBswDxQ2U3j
 iCzu6seQsgBd1dLJ68gRXv8btJXovJT5eeCNRWMw0oTM6XJ/VcAzNkZSuvRxlkAgplyk2ndNsZ
 Iv/UvYsW5PRZ0A9y2+KsaZPcRaqlyvsfXIHiULeq5t2ctDq41kUlPtX7IQnBQg51XHqtLPGVz3
 g0nwLz7lD9Pw9Oiwk6J1kDtElSFDh5wXrsoyjELPrgNxAxmAYjGgTM81rjay4jH053KcxGrWx2
 4b4=
X-IronPort-AV: E=Sophos;i="5.70,428,1574146800"; d="scan'208";a="68013467"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Feb 2020 01:07:17 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 11 Feb 2020 01:07:16 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 11 Feb 2020 01:07:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y4Ja2YCdzr4g6nEcG8H7sXtjVlA7u2VIl0YcFCxgaPth6koO3HcgW9odP77okUgZ2L7/RSSnYX/QcByjSu2+mcj2JYBKIcQjUcCyo6IdfVv8qPQIgkksZJYTMjEonEZlVwsMStc6suAgRZy0J8xRhF4Zw8yv+aWEKU157Yb3Xqr4l4hO/OOC2jyRZCESAjWZ7zJBbDyzezHI1+LqvSeu6wbeBtE3+0ba2B1OBtjlgMs/sIHG5t0FI4+4LSwlTTjDFjM/MU7AvsCwxwvbh7m/KcikoN76wjL2zjsX+TbmE9PQsPowHiNK8rcigIEgRY5WE+lnms3B2wsb+yYP+YZgAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=86kk4qrZ2B2zknE3x8ycKe1XNJV/JmhikUI3khjl4VE=;
 b=fh+7w8cOXBkK8OIdxTQoa51iplfeThAZfI6a04I9rOZ3SP9MjrYPU5/FMeqnoiyhFnHs2NQzGG5DzhZyWhMcKIIrdnVpIhwbqcTRmlPRrH24o5FXasFZeapdGDEPLT6D/oNo3dQnv21fvspOmPCzzgyiHRvY9BcwPaKFLWLGp2jEaUVqNaH6+uFRAS8MKG90KlXRCjiT17QTt16Co1qyTlvuf/phNnmkLoo6PIIJLSKKUDwpEqkTSQHLK5mZWUlJtyWrFixxIfgCBbMmb6WJfL0O9LJlG3Qo4oLmc8qIoe03c24mHorJVwLff09tA2QBHetr7W1ysGP6D1lDHZ+sQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=86kk4qrZ2B2zknE3x8ycKe1XNJV/JmhikUI3khjl4VE=;
 b=W900ciI+xlO0HBn3csv5J9yVFGxs8J3fmn9bMcnkq0ab4CQ0T1Ar+0ei3yuURxazFOhrcHGhWrrVbnRqxkXnpgzkYM0OtqUNbh9jQUTZhdLMEVPL0micTchHYRofcQ7mK2hZob0mbz0JsEYmdPFPEKd5pI1skNI3D9BY6F4dBjs=
Received: from DM6PR11MB4123.namprd11.prod.outlook.com (20.176.125.204) by
 DM6PR11MB4011.namprd11.prod.outlook.com (20.176.127.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Tue, 11 Feb 2020 08:07:14 +0000
Received: from DM6PR11MB4123.namprd11.prod.outlook.com
 ([fe80::85db:d80e:e645:ac17]) by DM6PR11MB4123.namprd11.prod.outlook.com
 ([fe80::85db:d80e:e645:ac17%2]) with mapi id 15.20.2707.030; Tue, 11 Feb 2020
 08:07:14 +0000
From: <Eugen.Hristev@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH 2/3] ARM: dts: at91: sam9x60ek: enable watchdog node
Thread-Topic: [PATCH 2/3] ARM: dts: at91: sam9x60ek: enable watchdog node
Thread-Index: AQHV4LJF1Hog0kspA0eb3pDFUsn70g==
Date: Tue, 11 Feb 2020 08:07:14 +0000
Message-ID: <1581408369-14469-2-git-send-email-eugen.hristev@microchip.com>
References: <1581408369-14469-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1581408369-14469-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 17f47edc-9e83-4f2a-36c3-08d7aec967ca
x-ms-traffictypediagnostic: DM6PR11MB4011:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4011381169572AD102006720E8180@DM6PR11MB4011.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 0310C78181
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(136003)(346002)(376002)(39860400002)(189003)(199004)(107886003)(5660300002)(6506007)(6636002)(86362001)(26005)(110136005)(54906003)(71200400001)(478600001)(6512007)(186003)(316002)(36756003)(8676002)(4326008)(8936002)(66476007)(66946007)(81156014)(64756008)(66446008)(66556008)(2906002)(2616005)(6486002)(81166006)(76116006)(4744005)(91956017);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB4011;
 H:DM6PR11MB4123.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KUc4HAiPMUhaGnFxqPFBjPeDYVJteG3SdHIRi4FxhRuHNrGAU5tffrJbu7y8e0iq9tx/XF6mOKvnepYIqJEFU+LL2K+z4swLRUYp7mMK69As/XG4v9avyZS9YhEsiuaz9qNyE3i8A/a4WcBHY47i/hYF0z+sWFio0JMaIjOc/ohrJtJwNqm6rwelF4UvJkffWH9df8ukpaUzqCg+++ebl9yDwnrvm44GJH1JikcwF57dTtkD1xp5TLLmpJSUr1bDvbJFgwasGGvU2W1nuzOenUbScvrnewDqHGGvaEBrobeqIrRgigNASCio6teU7ZAMiK/5Ji+aDMYWOEQhoI/mRsir0qZ1W/khkrwYuwygThbIL1C7OW2IVmOhvOSogSVIcvRTlzhWe3zdcQSqRQLJ2JzgcEPfjoWO4ilSMqaIqal7zPsy2581/KmkW4Ue0ZCk
x-ms-exchange-antispam-messagedata: yiQsI8Jb/EIOGNqMfUfkiYSbeEGEfaaROdhRoUMoEuTU8TTxifCd4eSw8eTS/40lhp8OP8T0Mohf3KJXLyb8rxdazvV9lbctXXmgZPpVBDXenVxT6aPoYxMge66b4G6qb7t0emUCjJHHOypXR2P6Jg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 17f47edc-9e83-4f2a-36c3-08d7aec967ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2020 08:07:14.8300 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XZuxVFkWwOL2xW0l/dwsIFsLqR3v+HRTCXKAwp0zCDUtThyLCyeHWo0Liu8xb1pH9FbqLLm8SPbfNArVtGi3UxzqF6m+CLvbKGXwwc2Q01I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_000728_397471_73596463 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Eugen.Hristev@microchip.com, Claudiu.Beznea@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Enable node for watchdog timer

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 arch/arm/boot/dts/at91-sam9x60ek.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts b/arch/arm/boot/dts/at91-sam9x60ek.dts
index 9f30132..b484745 100644
--- a/arch/arm/boot/dts/at91-sam9x60ek.dts
+++ b/arch/arm/boot/dts/at91-sam9x60ek.dts
@@ -645,3 +645,8 @@
 &usb2 {
 	status = "okay";
 };
+
+&watchdog {
+	status = "okay";
+};
+
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
