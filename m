Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C379AC427
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 04:49:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNQkucLZgIVPj0rWxv9VRalc2GskS1Y3WU9dIWhPs+c=; b=UMT9SKlgsSxSHI
	NsryajSAWSSsObxpR/3AvCsOuoAuGPLEXp8LyMpuA5Fvt6jP5jq7VLFOeXUzgDiU5eRp/hRmRI/Ny
	ExxJQfjTM/h7uje5lk9Wawz6HUOdwOMNOUVsPwKyz8KUZrrvgDaV7WvBqTsd5a/GyyEb7GBsM4uKV
	k0qfRrBFdxbLMQJ0bXv4Hs6y/Az/Mz3RPOe5yDKKcxYxXvRVS5e2Z0skvUzHaQ8DJ6t0zGdN3FC0B
	xNe7pvU+Tif5s0wizI/M8Vro5rdJk4CNnrjFGkkip5cKbnKQO2LNTS0P/mX7hz6DmROgcT2ryIZ0p
	c+unIjX4eEKxYfuzC0Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Qmf-00065M-DS; Sat, 07 Sep 2019 02:49:05 +0000
Received: from mail-oln040092011055.outbound.protection.outlook.com
 ([40.92.11.55] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Qlr-0005jQ-Nk
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 02:48:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U5VbxKcGio0tbhnocMQ/OK1O7C0JyynYOnR4UeRcv8bcN/zDNkEIRKYqnIoDe/fHuJXwTQ8xsdk5ZFX2cRo/YXv/nkiS97LhN3sA0Go8vsyW2FZ/+LrgA5rlm0CsoTMgg0HNmQOlJ3IhgAZP+ZLkoUsj9dImEIOgzy1wMIkga/xBwBkoqzfc2OpXdHLMQq7+XVPX6IPDdakxsqgOEJG/eam+ILkexk4+aafblTefj1cx2BA6MaUNm9u8e7dAahsdsAZP9jVL0sZ1qIQvH4iNPxLC8SOd60q9QYstf/92IpKHzMVQHDqVJxqOFz98yIspp1yGIKU7zJMrQ5YsiBVEdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0t1KfvgIGmQLttJ4iXuwu2TaOFiBSAYd10Yge78icxI=;
 b=MkBbdzXulgtGkf6V3yvthFvD3m8l6U02mjiHsQ8/fCjzgPetqDpVEUu3cVEGM3thMS7yqKvhg2W3n6GB3XW9VzI6GWAj+Ql6ZG+vf1Bniu5qwuE929vksok8eRMGIv3QT48X5G5tYVtp/DFVTZbqJ1uaKkcXgVzOkuH29++JVC4GyPS1y6SirfxrRqgXPLcwoqgzBO5VlNhGjAFTWrcNUf185ODFSZUFLAETE+Fl+Ct6AhTTWNUCPyPoTDZBfh+ruQfTRrxoRmiQhbB0CzBGZunmCc4bYpShNZjiIgUXl/NCVyZsGcvaoUogL0OjB9eID/VzAEoyb37wHiQ84853hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0t1KfvgIGmQLttJ4iXuwu2TaOFiBSAYd10Yge78icxI=;
 b=PT2EKb4uAvF15EF9eJ/+EOUA+QBnXGb9cQSY/8Ka2j+/Hp91JO+Q4vLodfjvLTwAAGtcgWthaYFYYgbeg//dZIqGWBZ4e0Z+9BvvVX2ngZHD/D8LWrDHXpfVBb2uAI132PdZOZEIFULY7sVxvDLxi5s5ZIFFc+vbKpQAW+WacPhLhifLmlCej5tfg826tAVpQkP6MX/9U71Pb9D0AaF2+jiELhr5ch5fXpSwe0hAgA3KLFxJ/mDPedmJs++vLXJiA0BoeBgjL5f0xVHBW5nsP9tXYSd8S+ehJ30MdPUJuLYiiLeylsOUkapFtzvErIFrBDG9cUuhIJASPimGYOZ3OA==
Received: from CO1NAM04FT058.eop-NAM04.prod.protection.outlook.com
 (10.152.90.53) by CO1NAM04HT164.eop-NAM04.prod.protection.outlook.com
 (10.152.90.180) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2241.14; Sat, 7 Sep
 2019 02:48:13 +0000
Received: from BY5PR12MB3699.namprd12.prod.outlook.com (10.152.90.54) by
 CO1NAM04FT058.mail.protection.outlook.com (10.152.91.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14 via Frontend Transport; Sat, 7 Sep 2019 02:48:13 +0000
Received: from BY5PR12MB3699.namprd12.prod.outlook.com
 ([fe80::2429:2cff:48e7:4d89]) by BY5PR12MB3699.namprd12.prod.outlook.com
 ([fe80::2429:2cff:48e7:4d89%5]) with mapi id 15.20.2220.024; Sat, 7 Sep 2019
 02:48:13 +0000
From: Yao Lihua <ylhuajnu@outlook.com>
To: "krzk@kernel.org" <krzk@kernel.org>, "kgene@kernel.org"
 <kgene@kernel.org>, "linux-samsung-soc@vger.kernel.org"
 <linux-samsung-soc@vger.kernel.org>
Subject: [PATCH 2/2] ARM: dts: s3c64xx: specify dependency of clock providers
Thread-Topic: [PATCH 2/2] ARM: dts: s3c64xx: specify dependency of clock
 providers
Thread-Index: AQHVZSawZ7XCFhgCjkWYVFO8zRD/wA==
Date: Sat, 7 Sep 2019 02:48:12 +0000
Message-ID: <BY5PR12MB36991E62DD57AA6962C05420C4B50@BY5PR12MB3699.namprd12.prod.outlook.com>
References: <20190907024719.16974-1-ylhuajnu@outlook.com>
In-Reply-To: <20190907024719.16974-1-ylhuajnu@outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0096.apcprd03.prod.outlook.com
 (2603:1096:203:72::36) To BY5PR12MB3699.namprd12.prod.outlook.com
 (2603:10b6:a03:195::16)
x-incomingtopheadermarker: OriginalChecksum:097F3C24C639E9269188DE950C49C124939E403A9557C3DA252B57A3D7895F5D;
 UpperCasedChecksum:5FC647AE75773540DEE3C36220275F90BB7B75461BBA4727E37EBBB90AD5AA84;
 SizeAsReceived:7628; Count:50
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [faz39t3Ih1seSK+dvfR6yYdCiGEwm/X0]
x-microsoft-original-message-id: <20190907024719.16974-3-ylhuajnu@outlook.com>
x-ms-publictraffictype: Email
x-incomingheadercount: 50
x-eopattributedmessage: 0
x-ms-exchange-slblob-mailprops: gjx25WM8ZNV0HBxVxAjnTpLG6FuHyUvB2utPZ9Imm99fD0Ql5kGKJo17m6z5mgv9/Ni+cKb12LFoFSNWXg7p4quGwd+ueWBbjiarwWFr8sWn9ea2En4j/EqQbBvLU9fhiKO4MhabF9Q29WDVTqO262C0NO7k/QkFYicSqSciU/0ohNMBWboZhU8xo7X8KF65sKzCC0LbbI5tjQX3ai9D+ih6omLV440XHAioGdtymrCKorwZewx8/QVsJpCQa4VxEZkswA6EL1NjcQeyH2vLleHLxTA9Q06vFY1Ds5aLg61YH2eHG1kP05+YiMwP2jMZVtsLnkJaAjOq8+VHN7E0M3yV+bc9oZowi5K/YQDjdiO/BIuHHyme2GHK40M2WJPyDPUFslTGVpoLKZ6tJNtz4+4MUkb3JLgl1jZlRBK8yNcEJdgzlbEFBDBowRkW/wiXl6UCpXOm8/eqlq7tlHbfHqvb8qHDKlZar+DOwbpSfemqrRKQabqWUoHPbIZeN1AkXcet4IXnV3kbwiiI7Y5v7Vyn20SM6MSDLNhY0E8UllzW4o49XsFYd0wCR9DWqHLqypkaQBh6Bt8QMh9AV1hbaGi6yRJAxxX4nQ5/rCApo0BFpvzplvz4zhC/ZxoVcV7HhPngcJMljYkw4gvnGgVC0sdwhh4kWflgwciyHPOZOyZ5VdY1XR5lJOUUlRLtvPMjYumrneEq3YVgNUDAVkfD7hJSfPFjtZEjBLd4yh12zlU=
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(201702181274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:CO1NAM04HT164; 
x-ms-traffictypediagnostic: CO1NAM04HT164:
x-microsoft-antispam-message-info: pfCVX0aJox9BOIf8cDCWrfazXydnD9X0KOU8N+ClBg2M74gpPcdsiDjN1ZmPczhV8w2xyXiuPVdGxTTwOwHhlib2ZYRJvopNUVYeDOxq4KSZTaE53eWeUZvJ9cqUx6gTJDo5yQ0Pr6jJOHRiQeZDKOt2qV/SowlCKsNe2BwdofSPFAGt8LctqdS+3hG/wQNv
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: bb6296f0-4422-40cc-9545-08d7333dd2e7
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2019 02:48:12.9573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM04HT164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_194816_298055_6F0683FC 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.11.55 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ylhuajnu[at]outlook.com)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Yao Lihua <ylhuajnu@outlook.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lihua Yao <ylhuajnu@outlook.com>

fin_pll is the parent of clock-controller@7e00f000, specify
the dependency to ensure proper initialization order of clock
providers.

Fixes: 3f6d439f2022 ("clk: reverse default clk provider initialization order in of_clk_init()")
Signed-off-by: Lihua Yao <ylhuajnu@outlook.com>
---
 arch/arm/boot/dts/s3c6400.dtsi | 1 +
 arch/arm/boot/dts/s3c6410.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/s3c6400.dtsi b/arch/arm/boot/dts/s3c6400.dtsi
index 8c28e8a0c824..ef5a8fa3555c 100644
--- a/arch/arm/boot/dts/s3c6400.dtsi
+++ b/arch/arm/boot/dts/s3c6400.dtsi
@@ -34,5 +34,6 @@
 		compatible = "samsung,s3c6400-clock";
 		reg = <0x7e00f000 0x1000>;
 		#clock-cells = <1>;
+		clocks = <&fin_pll>;
 	};
 };
diff --git a/arch/arm/boot/dts/s3c6410.dtsi b/arch/arm/boot/dts/s3c6410.dtsi
index a766d6de696c..b201b71d45b5 100644
--- a/arch/arm/boot/dts/s3c6410.dtsi
+++ b/arch/arm/boot/dts/s3c6410.dtsi
@@ -38,6 +38,7 @@
 		compatible = "samsung,s3c6410-clock";
 		reg = <0x7e00f000 0x1000>;
 		#clock-cells = <1>;
+		clocks = <&fin_pll>;
 	};
 
 	i2c1: i2c@7f00f000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
