Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2228419ED9A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 21:24:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/oTUOqF6Ruk1Rr93i0r4lXMNi6DXe2lK80Z6rhV7KF8=; b=pRwFP0PqSczvB+
	mE4hBid+pK8YbuKL8gJ90ueDjwt3CQTFarkeaWC1cMMidpdrEjNZ4cBdq4ra5qtZjPjJkoKfNGOv0
	Q1No9+EQBw9tVMOvs3KH4aYuWeJQezCPgu85npEa0EihoMCA8iLdcwFvTXbkUu2Z+8f76eGHb6kBT
	nFD04iiyczhRP31ZTNlVUIMvVQsEjkZ7eRcYZZjSP5/weX+D3xj1rWL3u3ilyKsdxIEpFBgWcanHK
	idC8rWPD3Nxzz3op0VY/aaY4wd04OYDBBCfrJkqiLMDsU53oglC5tYMBXTBa6ECW7PdhUPuaL+TdB
	EFqXiXe9isiPI5yVLXjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLAsR-0001bU-6l; Sun, 05 Apr 2020 19:24:15 +0000
Received: from mail-bgr052101131072.outbound.protection.outlook.com
 ([52.101.131.72] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLArQ-0000kb-W6; Sun, 05 Apr 2020 19:23:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GlprnCBFTCbGN6nvOLdRXb4W/gzkx8MjUad/gX5CKRpTM0IbT39HRspdE18EMIKJnzHDeKqpHD0kU9U2ZWjBv50hIICKhADh8s3pZwsFmNe+VpzveWSg9zTBzO3NLwxpYD5rO9g2mIGX6dmiM0aljOWAYDXxyf5JLdFAk4ffgmC9n5cFsa8Jyt7aoDc4Xcrw89wuHJQzIff3oTmcoX+2Mu1Wxxa60YncVLuH28FSDf2OjxtgrMTfQ4rXf0XuEdvr6MMp23/bk5xB2UmiVCwgo1OAT3J7pkWgp7V1JTT8lgSDrkx+6LPhwFt9QSX1LDvmSkrK7Tnu6GuMhvdPtRb4xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iOkPSnLpEY3RV6H3sW5ScnsoPQ0jQtXmv5Rbt1I9oY0=;
 b=SkWFkSoJZ1wQ9L/5C/Bxkzme9IHu3L8jbtyPLAexgnN50y/1SKWVcTu8Ye6LGf1bwLsN544hVkJRekLrcCacZFPaf1okzEPervCanYsBwCMdXUL4/+1rc0W0yWvpaMwND4c4g+aRCJKKZ5vaxn9TQ6Tvp4QyL8RUsABcwev7kG2LMLMZGJdcKOPE7+BeXkYhmSQyOk5z4S+luqfPzdqMRrDDNA/QayDthQPZHW1K57tODIyBY/fch64AEhdBLY9458t1df01HYfFIoycnTzaTCSruUNXQaSw1QH7iOX94LcarW93ZamaS80Mk03ofr5EvriifCUiJhCZ6O6laAIZig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iOkPSnLpEY3RV6H3sW5ScnsoPQ0jQtXmv5Rbt1I9oY0=;
 b=Y78B8K7qLBxERzkx/HyPgyjhnKp6FKEf5unM/1d8GRVUjkDgy7d1x3adMgi7mV6aI+uIbgYsYUkoje/DSZ4a35sXPk4Oj+d1wAJM2Frh9D6G5A6bFtw+XUoymCo15xtR25wkSh0WD0w/I/rHbR80ljg4Cuv12dvm6pZWhwgzM90=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (2603:10a6:802:1c::24)
 by VI1PR05MB5373.eurprd05.prod.outlook.com (2603:10a6:803:b1::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Sun, 5 Apr
 2020 19:22:59 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2%7]) with mapi id 15.20.2878.018; Sun, 5 Apr 2020
 19:22:58 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: devicetree@vger.kernel.org
Subject: [RFC PATCH v2 3/6] arm64: dts: pwm: replace flag 1 with
 PWM_POLARITY_INVERTED
Date: Sun,  5 Apr 2020 22:22:43 +0300
Message-Id: <20200405192246.3741784-4-oleksandr.suvorov@toradex.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200405192246.3741784-1-oleksandr.suvorov@toradex.com>
References: <20200405192246.3741784-1-oleksandr.suvorov@toradex.com>
X-ClientProxiedBy: GV0P278CA0046.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:710:29::15) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (82.193.109.226) by
 GV0P278CA0046.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:29::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.15 via Frontend Transport; Sun, 5 Apr 2020 19:22:58 +0000
X-Mailer: git-send-email 2.24.1
X-Originating-IP: [82.193.109.226]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 60734f8b-7b30-414f-1e4f-08d7d996c00f
X-MS-TrafficTypeDiagnostic: VI1PR05MB5373:|VI1PR05MB5373:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB53738EEB362BF1F9A5B9E13CF9C50@VI1PR05MB5373.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-Forefront-PRVS: 03648EFF89
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:5; SRV:;
 IPV:NLI; SFV:SPM; H:VI1PR05MB3279.eurprd05.prod.outlook.com; PTR:; CAT:OSPM;
 SFTY:;
 SFS:(10019020)(4636009)(346002)(376002)(366004)(396003)(39840400004)(136003)(54906003)(6486002)(55236004)(81156014)(2906002)(8676002)(508600001)(86362001)(52116002)(6496006)(26005)(81166006)(316002)(8936002)(36756003)(6666004)(956004)(66946007)(2616005)(7416002)(1076003)(186003)(16526019)(66556008)(66476007)(44832011)(6916009)(5660300002)(4326008)(23200700001);
 DIR:OUT; SFP:1501; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZrgeAKfj9VjdcQTH47lH95FtpIrF6naza8D4bQutKa1cLqsgqqN/zkl1WCP1sujELglaon3tyRSgjH6bdlZsO8iPNicw/UC55qzeAzD/DZ9lx44731RKDghOEUvygQrPIuh5uQK/28+y7bDIzHvl3Hdb30QQvT/NUj0MrLY4xiDxV0Nwrw5+PNhOztvcCrPTF9VU9kF9pFmlx9LzQ+6PPELB5Sdbv8Sge2heEDt5iVFPW4E3ToSgXB/OiA9I/cSlbBC825NBAfpb1HpaYBNtOD9ZRKhv8rboILoLgWl7eES0w5JETZEiGYZFuaq1mQBDGgmakQUhvBUJopmN3nKCphxQEatRnrUL28IopaQqfD2vBzHK+hijxdMn1HALCD64t5ozArDEXUJ8nJ+8ObbogJrhLWk2Tz4H0G2bnaIRQDCSGdyuLJ3rjGaQ/gT5qkyl5oeFS2/vbuIk5TyGy/9rcWT3HU0cPqS/jkfF6bcX+WWA7QwKf5CCpd/hxg40i4n/YBtdEIk20htlDtXFqQbwJiJyiC+c4ZZG7kjVy70P907c68042SZ35m7yZXY8AoTVBfxu4BQylsA9WusK1FCiBbTXejuw9SL382HOyYJCbhtaxazh1u6wLO8tDP3W95vbERjoiFxUMP5P3wTlb4OI9srYbtfGNQIc/3B/Q8lxdgLKkLH9MgIFyYtuNch5dzkOwPtLN5F86AL/GcIYPFzdeZjemQBGfzUXU+SxxfFT8Jl+Mn9ogxdXCbe3L+Ogh3PZ7hwmWpq8Xp+XnlbElzzfxQ==
X-MS-Exchange-AntiSpam-MessageData: vNZVWWOoJybCB/djMZ4Tm1Ey+YYyNEj/eLDzZJjwqihfyQ9KtU4UI/NKyNMJo4fapF8uTs5Ixjrs0Fx2LxJpH238MHueIyixKo9pUCvbwsLJhKu3uDJSedvAQ0/75oxg4lURFsq48gfDbNBEGvcxDQ==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60734f8b-7b30-414f-1e4f-08d7d996c00f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2020 19:22:58.9341 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6OzTja0fYmNiI/T3J1P0udUwhIjIgbNMUySXokrkPupkspV9jQQRKvKca4lPLVgbhggiFv1JBJfqiourdnkobanHMywnvsc7WnfSKmqxJ9o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5373
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_122313_079882_59E107D1 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.101.131.72 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [52.101.131.72 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Alexis Ballier <aballier@gentoo.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>, Soeren Moch <smoch@web.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hugh Cole-Baker <sigmaris@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Tobias Schramm <t.schramm@manjaro.org>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Markus Reichl <m.reichl@fivetechno.de>, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Vicente Bergas <vicencb@gmail.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Paul Barker <pbarker@konsulko.com>, Rob Herring <robh+dt@kernel.org>,
 Akash Gajjar <akash@openedev.com>, Johan Jonker <jbx6244@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andrius=20=C5=A0tikonas?= <andrius@stikonas.eu>,
 Igor Opaniuk <igor.opaniuk@toradex.com>, linux-kernel@vger.kernel.org,
 "Matwey V. Kornilov" <matwey@sai.msu.ru>, Andy Yan <andy.yan@rock-chips.com>,
 Robin Murphy <robin.murphy@arm.com>, Vivek Unune <npcomplete13@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Flag '1' in the 3rd cell of the "pwms" property means the inverted
polarity.

This patch converts '1' flag into macro PWM_POLARITY_INVERTED.

Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
---

Changes in v2: None

 arch/arm64/boot/dts/rockchip/rk3308-evb.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi    | 2 +-
 12 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-evb.dts b/arch/arm64/boot/dts/rockchip/rk3308-evb.dts
index 9b4f855ea5d4..8a198676cef3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-evb.dts
@@ -155,7 +155,7 @@ vcc5v0_host: vcc5v0-host {
 
 	vdd_core: vdd-core {
 		compatible = "pwm-regulator";
-		pwms = <&pwm0 0 5000 1>;
+		pwms = <&pwm0 0 5000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_core";
 		regulator-min-microvolt = <827000>;
 		regulator-max-microvolt = <1340000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index aa256350b18f..6ef851e7e16a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -96,7 +96,7 @@ vcc_sd: vcc-sd {
 
 	vdd_core: vdd-core {
 		compatible = "pwm-regulator";
-		pwms = <&pwm0 0 5000 1>;
+		pwms = <&pwm0 0 5000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_core";
 		regulator-min-microvolt = <827000>;
 		regulator-max-microvolt = <1340000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index d63faf38cc81..5617a441e141 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -202,7 +202,7 @@ vcc_sys: vcc-sys {
 
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index aee484a05181..5c590f99d80e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -115,7 +115,7 @@ vcc5v0_usb: vcc5v0-usb {
 
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		pwm-supply = <&vcc_sys>;
 		regulator-name = "vdd_log";
 		regulator-min-microvolt = <800000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index e87a04477440..47890757e866 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -73,7 +73,7 @@ vcc5v0_host: vcc5v0-host-regulator {
 
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
index 73be38a53796..d6c069c6e195 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
@@ -95,7 +95,7 @@ vcc5v0_sys: vcc5v0-sys {
 
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index f9f7246d4d2f..bf9976346c0b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -158,7 +158,7 @@ vcc_sys: vcc-sys {
 
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 5ea281b55fe2..5884968cd5b4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -228,7 +228,7 @@ regulator-state-mem {
 	/* RK3399 logic supply */
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 9f225e9c3d54..d9dad0f45564 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -191,7 +191,7 @@ vcc_sys: vcc-sys {
 
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
index 3923ec01ef66..5e4f535ef607 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
@@ -122,7 +122,7 @@ regulator-state-mem {
 
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 9bca25801260..5eedeae21189 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -163,7 +163,7 @@ vcc5v0_usb: vcc5v0-usb {
 
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 1bc1579674e5..9391110b788f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -127,7 +127,7 @@ vcc_sys: vcc-sys {
 
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
