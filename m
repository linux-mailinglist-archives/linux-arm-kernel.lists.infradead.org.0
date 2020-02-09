Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1248C156C92
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Feb 2020 22:20:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KbBd96ipUpzH3kVObdQHsjAbZhoAtx1t7mq+AyE4Tfk=; b=NLL2BEqDEOLwmC
	k7po+XN/M+IsigzW2HEY4ki1kDpVHT94o9pjOih2mFJ3OGsGbc3zBOYXpgHQzsfegRSCCj9jKMBUU
	i+NvkbcdG9d5DeUXiK04BaJw04qh/Ms28k9H8X82jDOmaHtslltKOOHDHFgZYKetIHqmQQc+5wYO/
	zGQsZ+4TGJIt2GI1HngLc+o+Sy/ZSswJEleYT1TANhVWwP2bfgLwcS+sRDWIvsZB/RasHKOt01/te
	E/DzYJY3L86RmUs2T+ImUKxCLmtS+3l46f5+KSDlPwXqX9EQfm2jsbzCpk3KIXdBBF43FS8kutgzI
	ort1ZzXCI+UQxyceC6cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0u0R-0006zR-CD; Sun, 09 Feb 2020 21:20:43 +0000
Received: from mail-eopbgr60096.outbound.protection.outlook.com ([40.107.6.96]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0u0K-0006yl-Sa
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Feb 2020 21:20:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RavNHJq0s157/ToJB5HiyLrJQmHGBIP8VqQT582EMWeFxDUfc+kQmIgVB6sCBh+VfqXCw0+LrD5Sw93vVnjEGtVXX6iaMVX7u7JHxfIbn7qxZNacGwlp3SQYsQbtCbigjJ4bHnFzF/6cv87qyT/X0G4yV4E01viWvVPhR8cTBQiJt5i0bblAsC0S+5f+ze3Umqt4v9fptAkAJ6RWl27xp25Ds3lFiYuOLeLlXqggBleXM2nmt6t0xS298UWKlBrSh1n1D5U9RJ8SSBvK9qzVUVAGIQbGyS1n2QRlt8KN1KtpErjVuGKj2d3Fr2IKwXfMLtENDOXPlp5AdLLtueywcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ygbonxBxs7baKFgHm0Cge+WGG8ChwiIayAL0tUiVHQ=;
 b=DUhlzC5G1DHiW1it28LXXXJkFDumGShAqzpJE8Fv98erT8FhVyZRIvPV235uR5lw4abEC3wVAf8JVcoqaTkvkG84+qOp+kfssqni1tEM+iUi+a+EhDtH+K8wwi98U7cGD3MHEdTQOT0HAoHKzj9cT8NT+O00JehvRtsaITzA732aKFPM6/Xh7t63k/uKLXDjm14vURx07qkBctDH7Xedmce+/V9CI7MelqVdgZtwwB2DjWVpyA1Nvdd2z1sM4wyn63Ijd5Ig/9LBRl4ciFmPCT8wkrZTtbefeZzW98PDIwmq+4bbx2Xf86C5Mj402knUMtEmNDSkoloIpEgBgRot9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=plvision.eu; dmarc=pass action=none header.from=plvision.eu;
 dkim=pass header.d=plvision.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=plvision.eu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ygbonxBxs7baKFgHm0Cge+WGG8ChwiIayAL0tUiVHQ=;
 b=oiT8xKiC4XIv7ho/Vta5qAFpEd2hAGpsDDXdib0r3yO+0hYlGkSDkp4LHdApBZULgv0lGhbXFeIHxYjw+Uc9JhBJOv63OAjruVhr05dJAw7XrsTCXpnhx2ojCbc/iD5HoBWUsK7kD9vR7/yb49U0tOYQooS89w4NHcdDBM8Z44w=
Received: from AM5P190MB0385.EURP190.PROD.OUTLOOK.COM (10.161.63.30) by
 AM5P190MB0290.EURP190.PROD.OUTLOOK.COM (10.161.92.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.25; Sun, 9 Feb 2020 21:20:30 +0000
Received: from AM5P190MB0385.EURP190.PROD.OUTLOOK.COM
 ([fe80::891e:661e:d3b2:705b]) by AM5P190MB0385.EURP190.PROD.OUTLOOK.COM
 ([fe80::891e:661e:d3b2:705b%5]) with mapi id 15.20.2707.028; Sun, 9 Feb 2020
 21:20:30 +0000
Received: from pc60716vkochan.x.ow.s (217.20.186.93) by
 AM6PR05CA0034.eurprd05.prod.outlook.com (2603:10a6:20b:2e::47) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21 via Frontend Transport; Sun, 9 Feb 2020 21:20:29 +0000
From: Vadym Kochan <vadym.kochan@plvision.eu>
To: Vadym Kochan <vadym.kochan@plvision.eu>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] arm64: dts: marvell: fix non-existed cpu referrence in
 armada-ap806-dual.dtsi
Thread-Topic: [PATCH] arm64: dts: marvell: fix non-existed cpu referrence in
 armada-ap806-dual.dtsi
Thread-Index: AQHV347B2j3P1pYbBU6vmfM/4HtQ8A==
Date: Sun, 9 Feb 2020 21:20:30 +0000
Message-ID: <20200209212016.27062-1-vadym.kochan@plvision.eu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6PR05CA0034.eurprd05.prod.outlook.com
 (2603:10a6:20b:2e::47) To AM5P190MB0385.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:206:19::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vadym.kochan@plvision.eu; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [217.20.186.93]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e6709b9b-f40c-4a74-5c0e-08d7ada5e3fb
x-ms-traffictypediagnostic: AM5P190MB0290:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM5P190MB029006E6EFAB039F7968E5DD951E0@AM5P190MB0290.EURP190.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0308EE423E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(136003)(396003)(366004)(376002)(39830400003)(199004)(189003)(36756003)(5660300002)(66946007)(26005)(956004)(44832011)(52116002)(2616005)(66476007)(6512007)(71200400001)(8936002)(2906002)(6666004)(16526019)(4326008)(110136005)(81156014)(8676002)(81166006)(186003)(66556008)(64756008)(66446008)(54906003)(1076003)(478600001)(6506007)(316002)(86362001)(6486002)(4744005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM5P190MB0290;
 H:AM5P190MB0385.EURP190.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: plvision.eu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R2UDYcRn0jDpkKsrzISIn/C8b487Gz1R2CR3E53p9UcVl8rtGrdjNKwuR005YdLD3N3TEqqCVnz4TuayGZUJ1ytNICYaI0UBP2JVyyMEfE8DHRxxPaQt9dwDVmF4VaqAkHy4GHEIVZM5mD7PmpD/ue8AACBaf1SHzYjPXfffWeBNPbexnqeR9Vgh3EI+TQ9ogZvh8qBJlWCs44U1wYOHEl8ejGDWqfsxxJPuDodridJTXB5mFlKLliMzASCKy5aM1HvBmszXVWTXPBWCRT9mYibOtATDDJEstENGM0fWT++STsRhnNAwru3WsahiV89AFkoW3cBg4Z5e3sNWPK1agtZQyBEb9GVk0hx2bgv18JvD5cTsxfyiQOla5EE/4utD+vnaGV+rH9cbsw4FP0kG12lVamVotH7/axpiYuJr8rOCzK/Iy/7inSeOcbwX6qBX
x-ms-exchange-antispam-messagedata: xM6n1IWe9Kih3hOo6M1N8pLFUNgEllcjeZEQheKgGyLN0BTXhLPQ/lu6fGg7UnZ86lEfc4EZ+7OQXhzdqI2RTB/fQl7l52jEj7FPFFm7bj+ashvvR860mNwNIrj3/sZzdKJo9F3TCBszgsmR7r/Bpg==
MIME-Version: 1.0
X-OriginatorOrg: plvision.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: e6709b9b-f40c-4a74-5c0e-08d7ada5e3fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2020 21:20:30.3853 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 03707b74-30f3-46b6-a0e0-ff0a7438c9c4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ELOtim09+S8CEimaxAN9/s8lrBkQLPGxKH9uCWowyNFrHX5/e/gPWcQkyoJIqpujzSUBhKThqf3//QFNs3joEDBI469hYtMCtCP/mgXVAtk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P190MB0290
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_132036_975870_27165EC3 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

armada-ap806-dual.dtsi includes armada-ap806.dtsi which describes
thermal zones for 4 cpus but only cpu0 and cpu1 only exists for dual
configuration, this makes dtb compilation fail. Fix it by removing
thermal zone nodes for non-existed cpus for dual configuration.

Signed-off-by: Vadym Kochan <vadym.kochan@plvision.eu>
---
 arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
index 09849558a776..fcab5173fe67 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
@@ -53,4 +53,9 @@
 			cache-sets = <512>;
 		};
 	};
+
+	thermal-zones {
+		/delete-node/ ap-thermal-cpu2;
+		/delete-node/ ap-thermal-cpu3;
+	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
