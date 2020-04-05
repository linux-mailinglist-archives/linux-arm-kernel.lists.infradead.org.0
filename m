Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA5619ED9D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 21:24:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hF2lB7oBGnP4Oawvt4dwiYhwHEgzkcIiZV/U0y8CpuM=; b=DMRgVQ6uNuL/kO
	0FkqSPq0aULw6+Qw3agqpiCuqsoe1JJSWv1ahqI2Bxe7h3DqUFw1BTqBorv2zohkK4YJrGWkKqIoN
	oo9ogPZOLGQ3vmT3M7UuQSRy+12jideFcVuE44dYXQKyQ+H0jeWwrS9ttd2OF00Pi6ANKOsdu0iti
	WUGA0o4VfanE0BmdRWkCuPRob5zZjGlm+P1yIxfPPCkXp3/OIhuSUEFKtwB0ieLz+PnrMi9Mob1Ii
	LleyNBPa1PF7BExZa6YHuRLCMftNzpj/D5Nk1iw2APJ6Ouo4NXwLzqP8CtsK3dmGpJyoJtqiP5aHc
	kAF2XCJTFKkb1N7lmq7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLAsj-0001rh-Vd; Sun, 05 Apr 2020 19:24:34 +0000
Received: from mail-bgr052101131072.outbound.protection.outlook.com
 ([52.101.131.72] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLArT-0000kb-85; Sun, 05 Apr 2020 19:23:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=akTP41vGgztHhcHTwU0FoM0e4CbC9A3RG4GcemjA+rFQsj/MsqXmw9RIToS+e1No2ZmdUtIb9j50+PV+ZbVCLiT/aslUksVarpje6UZ/2bIP2uivAzGQBhdoiqFB30vQEJ9D7pf4yo7uLZo+4M7iRA2aef4jDSiIezlVGwSw+HoANbIvciDXC96QUSH3xOUeiYrZW2DycpCwhYprRLn5DDTLiOVyYiPjc3A/2B7cOgpgUFKBvOt1C1lKRDk8lzG1IIejw7qNMEvSQhfJOe1CBexW3BpNtfQ9ICQ2LpP+IuXtrcr+95erOT7lmQSKkFJH+Q+n+r2QbSXPXVrK1pR3Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vMDljc1XcMyeVZSix1Qwfrw8eyfZsNZ2IivkuKdCQGg=;
 b=gqvo587Wpxi2Q93WCSZy5AXV5NqpyIsUu8JIx9SRsV8VsXeOvO+Qeuc0zlDtJpa9oT4YotEPAjE+GuAzlAYUd6/CMox0rkoa4bw5otphI/OLYjv7DmykLsQSeyH8WF0jmgyVxxA/Oew35wxQ5NiqPanv4ZMjazrypkIpvyu5PvnuugA3Qb6308tW0HkxaXh+jM7aWoOrdSC8mh/BAc2xmLwyvVUzpAPxsIqgBWLzerzdJD/7LwydRE+aznDXHD/peWOmwp5D53QhW+uILKbMFt9JqH1FCSiVdDwUFE3kToKRVdF2sYMsSQXCfJbsQl/PQER51pRETI/Lyu9rIxeB6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vMDljc1XcMyeVZSix1Qwfrw8eyfZsNZ2IivkuKdCQGg=;
 b=svJWsXNeFSwvirv8ikb9GbFisc2hSoo+Ur15NT589ITlpF98Oh7J86ICvIXdP1DhPOt0u1LQetB1wAC8GCOey/Mv6d/G9EXfYXOejBHRAvH/3SCgPOEPyfe1+nV5Kw/kRUk2U+uxM//wRrNfzvBd4GIgsEyXihESDdhZv0uMGEs=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (2603:10a6:802:1c::24)
 by VI1PR05MB5373.eurprd05.prod.outlook.com (2603:10a6:803:b1::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Sun, 5 Apr
 2020 19:23:00 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2%7]) with mapi id 15.20.2878.018; Sun, 5 Apr 2020
 19:23:00 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: devicetree@vger.kernel.org
Subject: [RFC PATCH v2 4/6] arm64: dts: pwm: replace flag 0 with PWM_NOFLAGS
Date: Sun,  5 Apr 2020 22:22:44 +0300
Message-Id: <20200405192246.3741784-5-oleksandr.suvorov@toradex.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200405192246.3741784-1-oleksandr.suvorov@toradex.com>
References: <20200405192246.3741784-1-oleksandr.suvorov@toradex.com>
X-ClientProxiedBy: ZR0P278CA0009.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:16::19) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (82.193.109.226) by
 ZR0P278CA0009.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:16::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.16 via Frontend Transport; Sun, 5 Apr 2020 19:23:00 +0000
X-Mailer: git-send-email 2.24.1
X-Originating-IP: [82.193.109.226]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bad32437-5332-4985-1b5f-08d7d996c127
X-MS-TrafficTypeDiagnostic: VI1PR05MB5373:|VI1PR05MB5373:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB5373FF1BFE3E4729CEB71DB4F9C50@VI1PR05MB5373.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 03648EFF89
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:5; SRV:;
 IPV:NLI; SFV:SPM; H:VI1PR05MB3279.eurprd05.prod.outlook.com; PTR:; CAT:OSPM;
 SFTY:;
 SFS:(10019020)(4636009)(346002)(376002)(366004)(396003)(39840400004)(136003)(54906003)(6486002)(55236004)(81156014)(2906002)(8676002)(508600001)(86362001)(30864003)(52116002)(6496006)(26005)(81166006)(316002)(8936002)(36756003)(6666004)(956004)(66946007)(2616005)(7406005)(7416002)(1076003)(186003)(16526019)(66556008)(66476007)(44832011)(6916009)(5660300002)(4326008)(23200700001);
 DIR:OUT; SFP:1501; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 83u1VFu+AIcAcj4XFG1ALJnkd9BWI3LG42zZ2zou/SHj8tlC9KkWNPQAkui+jvlGdywuFeOAUGVFeKIM7YWLQV4SBZ849nWiiQYHT5lrFJ2J00w+FBGQ7DZfbeUJz48UYdZ8SCBN1stJ0TxePWbA4SAIavcLqpqqd7sx3jBlp1kNgpo2+Cu02dQ3GwosjA2E+pQo6AaKFtBYzL4/DWYa2dXFvuCmRXm6Ujww6Z9Fm7bcUlPYIlnAGo5y2yN837foDUiVkx/ui7XwmYusH930tA+vluCGabbnntauHGBSH1u9HTxM/UO0uGhdU71yhLunDb748tXjJWY3qCmLgvvAOYAVfoKytNjl7k/S0oarH2BYU37L1HzcgaA46lpspvgnu0U/8EoO//cU0g1Dn7G7fLrYNcn0D664CpB4UZplMTSRXJqUfiyGSv4RQ5K7rWySgwLjsP17H1GZPOd9BcNtmwSPETnx/142P5lkOxkEUIuLmNDUaOrI4aSrpSN4tF7y5kJYo+SJwW8XGNc9okA8DRgsOU4KlQFxH9dT6POWNVKeqHxkVWsgA+x9O0W62CngM1Cl/yxbGn5nPfjmiTKqepK2Q1dhUeFak9s9G+cTzs2VqILZ0/Pd6n7f9dBB2DWuhGhKi/eMCcpOul6Jnt1xreqQippC8E4NObbdIaByc7UWpaJ6ZOqQZz+suIq19wp+95C34p+/65nynWNxhUxbuwrPy0KMqyAojMMbSlG1jWtf110an2Dm0ixCuFX901PrkJfTlM4G4RvmdU6ihg6/Iw==
X-MS-Exchange-AntiSpam-MessageData: WlZIyrxegFN7z9YeWT2MtNZyJUS/OnvjOrELxdcqtiGpDnMlasKyECT1XCFvVHWXb/AOiHtiABbvhRWq5e7GC2ZQjrzz+QHSN+4WKBjOASIZZTqATd4dwWEsnqKH6tKDr5OgpEumNBn1ZJ+4rAuM2Q==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bad32437-5332-4985-1b5f-08d7d996c127
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2020 19:23:00.8170 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WvUp4LZMlrdaD/+1GD+jBhHJVcRl7vUFFnVE9AZ+fKHeYSyV/4xjlRP/dhDIPq/dAKLumDe4JeW738nv88P89gvbWS5sjf0NhPlzc6x4mvk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5373
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_122315_449209_B2E9471B 
X-CRM114-Status: GOOD (  11.98  )
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>, Soeren Moch <smoch@web.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Hugh Cole-Baker <sigmaris@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Kevin Hilman <khilman@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Nick Xie <nick@khadas.com>, Maxime Ripard <mripard@kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Paul Barker <pbarker@konsulko.com>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andrius=20=C5=A0tikonas?= <andrius@stikonas.eu>,
 Igor Opaniuk <igor.opaniuk@toradex.com>, linux-kernel@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The raw value '0' in the 3rd cell of the "pwms" property means there are
no flags to be set.

This patch converts '0' flag into PWM_NOFLAGS.

Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
---

Changes in v2:
- Use PWM_NOFLAGS instead of PWM_POLARITY_NORMAL to avoid possible
  conflict with enum pwm_polarity in <linux/pwm.h>. Also, this name
  reflects the sense of this value more precisely.

 arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts      | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts       | 2 +-
 arch/arm64/boot/dts/amlogic/meson-axg-s400.dts             | 3 ++-
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi                 | 1 +
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi          | 1 +
 arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts          | 5 +++--
 arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts            | 2 +-
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts         | 5 +++--
 arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi    | 4 ++--
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts       | 4 ++--
 arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts       | 7 ++++---
 arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi        | 3 ++-
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi                  | 1 +
 arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts       | 3 ++-
 arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts     | 3 ++-
 arch/arm64/boot/dts/amlogic/meson-gxbb-p20x.dtsi           | 3 ++-
 arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi       | 3 ++-
 arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi          | 3 ++-
 arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts       | 3 ++-
 .../boot/dts/amlogic/meson-gxl-s905x-hwacom-amazetv.dts    | 3 ++-
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts | 2 +-
 .../arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts | 3 ++-
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi      | 3 ++-
 arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts      | 5 +++--
 arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts         | 3 ++-
 arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi         | 4 +++-
 arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts     | 2 +-
 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts           | 7 ++++---
 arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi      | 3 ++-
 arch/arm64/boot/dts/rockchip/px30-evb.dts                  | 2 +-
 arch/arm64/boot/dts/rockchip/px30.dtsi                     | 1 +
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts             | 2 +-
 arch/arm64/boot/dts/rockchip/rk3308.dtsi                   | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-evb.dts                | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi       | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi               | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi                   | 1 +
 44 files changed, 77 insertions(+), 51 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
index 64b1c54f87c0..3aa0cc70eb9a 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
@@ -23,7 +23,7 @@ aliases {
 
 	backlight: backlight {
 		compatible = "pwm-backlight";
-		pwms = <&pwm 0 50000 0>;
+		pwms = <&pwm 0 50000 PWM_NOFLAGS>;
 		brightness-levels = <0 5 10 15 20 30 40 55 70 85 100>;
 		default-brightness-level = <2>;
 		enable-gpios = <&pio 3 23 GPIO_ACTIVE_HIGH>; /* PD23 */
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
index f5df5f705b72..0c493c662e19 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
@@ -21,7 +21,7 @@ aliases {
 
 	backlight: backlight {
 		compatible = "pwm-backlight";
-		pwms = <&pwm 0 50000 0>;
+		pwms = <&pwm 0 50000 PWM_NOFLAGS>;
 		power-supply = <&reg_dcdc1>;
 		brightness-levels = <0 5 7 10 14 20 28 40 56 80 112>;
 		default-brightness-level = <5>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts b/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts
index cb1360ae1211..6cdac1daf580 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts
@@ -356,7 +356,8 @@ wifi32k: wifi32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
 		clock-frequency = <32768>;
-		pwms = <&pwm_ab 0 30518 0>; /* PWM_A at 32.768KHz */
+		/* PWM_A at 32.768KHz */
+		pwms = <&pwm_ab 0 30518 PWM_NOFLAGS>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index aace3d32a3df..e536436f6306 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -10,6 +10,7 @@
 #include <dt-bindings/gpio/meson-axg-gpio.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/pwm/pwm.h>
 #include <dt-bindings/reset/amlogic,meson-axg-audio-arb.h>
 #include <dt-bindings/reset/amlogic,meson-axg-reset.h>
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 0882ea215b88..45b96bca4398 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -9,6 +9,7 @@
 #include <dt-bindings/clock/g12a-aoclkc.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/pwm/pwm.h>
 #include <dt-bindings/reset/amlogic,meson-g12a-reset.h>
 #include <dt-bindings/thermal/thermal.h>
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index b00d0468c753..7d85d4066397 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -141,7 +141,7 @@ vddcpu: regulator-vddcpu {
 
 		vin-supply = <&dc_in>;
 
-		pwms = <&pwm_AO_cd 1 1250 0>;
+		pwms = <&pwm_AO_cd 1 1250 PWM_NOFLAGS>;
 		pwm-dutycycle-range = <100 0>;
 
 		regulator-boot-on;
@@ -176,7 +176,8 @@ wifi32k: wifi32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
 		clock-frequency = <32768>;
-		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+		/* PWM_E at 32.768KHz */
+		pwms = <&pwm_ef 0 30518 PWM_NOFLAGS>;
 	};
 
 	sound {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
index a26bfe72550f..22f642664665 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
@@ -141,7 +141,7 @@ vddcpu: regulator-vddcpu {
 
 		vin-supply = <&main_12v>;
 
-		pwms = <&pwm_AO_cd 1 1250 0>;
+		pwms = <&pwm_AO_cd 1 1250 PWM_NOFLAGS>;
 		pwm-dutycycle-range = <100 0>;
 
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 1b07c8c06eac..4857fee0b48e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -141,7 +141,7 @@ vddcpu: regulator-vddcpu {
 
 		vin-supply = <&dc_in>;
 
-		pwms = <&pwm_AO_cd 1 1250 0>;
+		pwms = <&pwm_AO_cd 1 1250 PWM_NOFLAGS>;
 		pwm-dutycycle-range = <100 0>;
 
 		regulator-boot-on;
@@ -232,7 +232,8 @@ wifi32k: wifi32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
 		clock-frequency = <32768>;
-		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+		/* PWM_E at 32.768KHz */
+		pwms = <&pwm_ef 0 30518 PWM_NOFLAGS>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
index c33e85fbdaba..3250d3e12d46 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
@@ -22,7 +22,7 @@ vddcpu_a: regulator-vddcpu-a {
 
 		vin-supply = <&dc_in>;
 
-		pwms = <&pwm_ab 0 1250 0>;
+		pwms = <&pwm_ab 0 1250 PWM_NOFLAGS>;
 		pwm-dutycycle-range = <100 0>;
 
 		regulator-boot-on;
@@ -41,7 +41,7 @@ vddcpu_b: regulator-vddcpu-b {
 
 		vin-supply = <&vsys_3v3>;
 
-		pwms = <&pwm_AO_cd 1 1250 0>;
+		pwms = <&pwm_AO_cd 1 1250 PWM_NOFLAGS>;
 		pwm-dutycycle-range = <100 0>;
 
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 169ea283d4ee..68a47428ec68 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -127,7 +127,7 @@ vddcpu_a: regulator-vddcpu-a {
 
 		vin-supply = <&main_12v>;
 
-		pwms = <&pwm_ab 0 1250 0>;
+		pwms = <&pwm_ab 0 1250 PWM_NOFLAGS>;
 		pwm-dutycycle-range = <100 0>;
 
 		regulator-boot-on;
@@ -146,7 +146,7 @@ vddcpu_b: regulator-vddcpu-b {
 
 		vin-supply = <&main_12v>;
 
-		pwms = <&pwm_AO_cd 1 1250 0>;
+		pwms = <&pwm_AO_cd 1 1250 PWM_NOFLAGS>;
 		pwm-dutycycle-range = <100 0>;
 
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
index 325e448eb09c..841974b6474d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
@@ -109,7 +109,7 @@ vddcpu_a: regulator-vddcpu-a {
 
 		vin-supply = <&main_12v>;
 
-		pwms = <&pwm_ab 0 1250 0>;
+		pwms = <&pwm_ab 0 1250 PWM_NOFLAGS>;
 		pwm-dutycycle-range = <100 0>;
 
 		regulator-boot-on;
@@ -128,7 +128,7 @@ vddcpu_b: regulator-vddcpu-b {
 
 		vin-supply = <&main_12v>;
 
-		pwms = <&pwm_AO_cd 1 1250 0>;
+		pwms = <&pwm_AO_cd 1 1250 PWM_NOFLAGS>;
 		pwm-dutycycle-range = <100 0>;
 
 		regulator-boot-on;
@@ -282,7 +282,8 @@ wifi32k: wifi32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
 		clock-frequency = <32768>;
-		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+		/* PWM_E at 32.768KHz */
+		pwms = <&pwm_ef 0 30518 PWM_NOFLAGS>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
index 12d5e333e5f2..9da6ad85aff0 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
@@ -72,7 +72,8 @@ wifi32k: wifi32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
 		clock-frequency = <32768>;
-		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+		/* PWM_E at 32.768KHz */
+		pwms = <&pwm_ef 0 30518 PWM_NOFLAGS>;
 	};
 
 	sdio_pwrseq: sdio-pwrseq {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 03f79fe045b7..e00c045fb8a8 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -12,6 +12,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/pwm/pwm.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
index d6ca684e0e61..a4058ce97d75 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
@@ -79,7 +79,8 @@ wifi_32k: wifi-32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
 		clock-frequency = <32768>;
-		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+		/* PWM_E at 32.768KHz */
+		pwms = <&pwm_ef 0 30518 PWM_NOFLAGS>;
 	};
 
 	sdio_pwrseq: sdio-pwrseq {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
index 65ec7dea828c..30c900cf1d12 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
@@ -109,7 +109,8 @@ wifi32k: wifi32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
 		clock-frequency = <32768>;
-		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+		/* PWM_E at 32.768KHz */
+		pwms = <&pwm_ef 0 30518 PWM_NOFLAGS>;
 	};
 
 	sdio_pwrseq: sdio-pwrseq {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-p20x.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-p20x.dtsi
index e803a466fe4e..f10a90eb39f6 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-p20x.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-p20x.dtsi
@@ -83,7 +83,8 @@ wifi32k: wifi32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
 		clock-frequency = <32768>;
-		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+		/* PWM_E at 32.768KHz */
+		pwms = <&pwm_ef 0 30518 PWM_NOFLAGS>;
 	};
 
 	sdio_pwrseq: sdio-pwrseq {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
index 45cb83625951..ce91158d0aa9 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
@@ -77,7 +77,8 @@ wifi32k: wifi32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
 		clock-frequency = <32768>;
-		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+		/* PWM_E at 32.768KHz */
+		pwms = <&pwm_ef 0 30518 PWM_NOFLAGS>;
 	};
 
 	hdmi-connector {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
index dee51cf95223..281836e3e178 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
@@ -82,7 +82,8 @@ wifi32k: wifi32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
 		clock-frequency = <32768>;
-		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+		/* PWM_E at 32.768KHz */
+		pwms = <&pwm_ef 0 30518 PWM_NOFLAGS>;
 	};
 
 	sdio_pwrseq: sdio-pwrseq {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
index a1119cfb0280..4711fd911205 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
@@ -93,7 +93,8 @@ wifi32k: wifi32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
 		clock-frequency = <32768>;
-		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+		/* PWM_E at 32.768KHz */
+		pwms = <&pwm_ef 0 30518 PWM_NOFLAGS>;
 	};
 
 	sdio_pwrseq: sdio-pwrseq {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-hwacom-amazetv.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-hwacom-amazetv.dts
index c8d74e61dec1..71438f79e45f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-hwacom-amazetv.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-hwacom-amazetv.dts
@@ -72,7 +72,8 @@ wifi32k: wifi32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
 		clock-frequency = <32768>;
-		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+		/* PWM_E at 32.768KHz */
+		pwms = <&pwm_ef 0 30518 PWM_NOFLAGS>;
 	};
 
 	sdio_pwrseq: sdio-pwrseq {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
index 440bc23c7342..c3cda2db21a1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
@@ -47,7 +47,7 @@ pwmleds {
 
 		power {
 			label = "vim:red:power";
-			pwms = <&pwm_AO_ab 1 7812500 0>;
+			pwms = <&pwm_AO_ab 1 7812500 PWM_NOFLAGS>;
 			max-brightness = <255>;
 			linux,default-trigger = "default-on";
 		};
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts
index 62dd87821ce5..78bef1154f81 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts
@@ -72,7 +72,8 @@ wifi32k: wifi32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
 		clock-frequency = <32768>;
-		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+		/* PWM_E at 32.768KHz */
+		pwms = <&pwm_ef 0 30518 PWM_NOFLAGS>;
 	};
 
 	sdio_pwrseq: sdio-pwrseq {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi
index 6ac678f88bd8..a58d0cf277ad 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi
@@ -76,7 +76,8 @@ wifi32k: wifi32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
 		clock-frequency = <32768>;
-		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+		/* PWM_E at 32.768KHz */
+		pwms = <&pwm_ef 0 30518 PWM_NOFLAGS>;
 	};
 
 	sdio_pwrseq: sdio-pwrseq {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
index 27eeab71ec77..9b3eed29a5b5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
@@ -86,7 +86,7 @@ pwmleds {
 
 		power {
 			label = "vim:red:power";
-			pwms = <&pwm_AO_ab 1 7812500 0>;
+			pwms = <&pwm_AO_ab 1 7812500 PWM_NOFLAGS>;
 			max-brightness = <255>;
 			linux,default-trigger = "default-on";
 		};
@@ -143,7 +143,8 @@ wifi32k: wifi32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
 		clock-frequency = <32768>;
-		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+		/* PWM_E at 32.768KHz */
+		pwms = <&pwm_ef 0 30518 PWM_NOFLAGS>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
index 420a88e9a195..8442468bb0bc 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
@@ -81,7 +81,8 @@ wifi32k: wifi32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
 		clock-frequency = <32768>;
-		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+		/* PWM_E at 32.768KHz */
+		pwms = <&pwm_ef 0 30518 PWM_NOFLAGS>;
 	};
 
 	sdio_pwrseq: sdio-pwrseq {
diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
index 094ecf2222bb..68aedcbb2c93 100644
--- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
@@ -7,6 +7,7 @@
 
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/gpio/meson-g12a-gpio.h>
+#include <dt-bindings/pwm/pwm.h>
 
 / {
 	aliases {
@@ -165,7 +166,8 @@ wifi32k: wifi32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
 		clock-frequency = <32768>;
-		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+		/* PWM_E at 32.768KHz */
+		pwms = <&pwm_ef 0 30518 PWM_NOFLAGS>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
index dbbf29a0dbf6..21219d63362e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
@@ -25,7 +25,7 @@ vddcpu: regulator-vddcpu {
 
 		vin-supply = <&vsys_3v3>;
 
-		pwms = <&pwm_AO_cd 1 1250 0>;
+		pwms = <&pwm_AO_cd 1 1250 PWM_NOFLAGS>;
 		pwm-dutycycle-range = <100 0>;
 
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
index dfb2438851c0..016c8914e833 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
@@ -116,7 +116,7 @@ pwmleds {
 
 		power {
 			label = "sei610:red:power";
-			pwms = <&pwm_AO_ab 0 30518 0>;
+			pwms = <&pwm_AO_ab 0 30518 PWM_NOFLAGS>;
 			max-brightness = <255>;
 			linux,default-trigger = "default-on";
 			active-low;
@@ -187,7 +187,7 @@ vddcpu: regulator-vddcpu {
 
 		vin-supply = <&dc_in>;
 
-		pwms = <&pwm_AO_cd 1 1500 0>;
+		pwms = <&pwm_AO_cd 1 1500 PWM_NOFLAGS>;
 		pwm-dutycycle-range = <100 0>;
 
 		regulator-boot-on;
@@ -336,7 +336,8 @@ wifi32k: wifi32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
 		clock-frequency = <32768>;
-		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+		/* PWM_E at 32.768KHz */
+		pwms = <&pwm_ef 0 30518 PWM_NOFLAGS>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
index 250fc01de78d..f8bd886a7c0e 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
@@ -14,6 +14,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/pwm/pwm.h>
 #include <dt-bindings/sound/samsung-i2s.h>
 
 / {
@@ -913,7 +914,7 @@ charger_reg: CHARGER {
 		haptic: max77843-haptic {
 			compatible = "maxim,max77843-haptic";
 			haptic-supply = <&ldo38_reg>;
-			pwms = <&pwm 0 33670 0>;
+			pwms = <&pwm 0 33670 PWM_NOFLAGS>;
 			pwm-names = "haptic";
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 0a680257d9c2..e0257385105a 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -57,7 +57,7 @@ vol-up-key {
 
 	backlight: backlight {
 		compatible = "pwm-backlight";
-		pwms = <&pwm1 0 25000 0>;
+		pwms = <&pwm1 0 25000 PWM_NOFLAGS>;
 		power-supply = <&vcc3v3_lcd>;
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index f809dd6d5dc3..c792b011d2c4 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -9,6 +9,7 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/power/px30-power.h>
+#include <dt-bindings/pwm/pwm.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
 #include <dt-bindings/thermal/thermal.h>
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index 6ef851e7e16a..a33bd5b53840 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -22,7 +22,7 @@ ir_rx {
 
 	ir_tx {
 		compatible = "pwm-ir-tx";
-		pwms = <&pwm5 0 25000 0>;
+		pwms = <&pwm5 0 25000 PWM_NOFLAGS>;
 	};
 
 	leds {
diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index ac43bc3f7031..f3d0295a8046 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -9,6 +9,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/pwm/pwm.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
 #include <dt-bindings/thermal/thermal.h>
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
index 694b0d08d644..e831a29ed842 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
@@ -47,7 +47,7 @@ backlight: backlight {
 			240 241 242 243 244 245 246 247
 			248 249 250 251 252 253 254 255>;
 		default-brightness-level = <200>;
-		pwms = <&pwm0 0 25000 0>;
+		pwms = <&pwm0 0 25000 PWM_NOFLAGS>;
 	};
 
 	edp_panel: edp-panel {
@@ -72,7 +72,7 @@ clkin_gmac: external-gmac-clock {
 
 	vdd_center: vdd-center {
 		compatible = "pwm-regulator";
-		pwms = <&pwm3 0 25000 0>;
+		pwms = <&pwm3 0 25000 PWM_NOFLAGS>;
 		regulator-name = "vdd_center";
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1400000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index 5617a441e141..49164ad3093f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -20,7 +20,7 @@ chosen {
 	backlight: backlight {
 		compatible = "pwm-backlight";
 		enable-gpios = <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
-		pwms = <&pwm0 0 25000 0>;
+		pwms = <&pwm0 0 25000 PWM_NOFLAGS>;
 		brightness-levels = <
 			  0   1   2   3   4   5   6   7
 			  8   9  10  11  12  13  14  15
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
index 1384dabbdf40..775bca13b5d5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
@@ -50,7 +50,7 @@ ppvar_centerlogic_pwm: ppvar-centerlogic-pwm {
 		compatible = "pwm-regulator";
 		regulator-name = "ppvar_centerlogic_pwm";
 
-		pwms = <&pwm3 0 3337 0>;
+		pwms = <&pwm3 0 3337 PWM_NOFLAGS>;
 		pwm-supply = <&ppvar_sys>;
 		pwm-dutycycle-range = <100 0>;
 		pwm-dutycycle-unit = <100>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index 4373ed732af7..e8b105171b86 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -164,7 +164,7 @@ backlight: backlight {
 		enable-gpios = <&gpio4 21 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bl_en>;
-		pwms = <&pwm1 0 1000000 0>;
+		pwms = <&pwm1 0 1000000 PWM_NOFLAGS>;
 		pwm-delay-us = <10000>;
 	};
 
@@ -217,7 +217,7 @@ &ppvar_bigcpu {
 
 &ppvar_bigcpu_pwm {
 	/* On scarlet ppvar big cpu use pwm3 */
-	pwms = <&pwm3 0 3337 0>;
+	pwms = <&pwm3 0 3337 PWM_NOFLAGS>;
 	regulator-min-microvolt = <800074>;
 	regulator-max-microvolt = <1299226>;
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 2f3997740068..317b1bc9a018 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -101,7 +101,7 @@ ppvar_bigcpu_pwm: ppvar-bigcpu-pwm {
 		compatible = "pwm-regulator";
 		regulator-name = "ppvar_bigcpu_pwm";
 
-		pwms = <&pwm1 0 3337 0>;
+		pwms = <&pwm1 0 3337 PWM_NOFLAGS>;
 		pwm-supply = <&ppvar_sys>;
 		pwm-dutycycle-range = <100 0>;
 		pwm-dutycycle-unit = <100>;
@@ -130,7 +130,7 @@ ppvar_litcpu_pwm: ppvar-litcpu-pwm {
 		compatible = "pwm-regulator";
 		regulator-name = "ppvar_litcpu_pwm";
 
-		pwms = <&pwm2 0 3337 0>;
+		pwms = <&pwm2 0 3337 PWM_NOFLAGS>;
 		pwm-supply = <&ppvar_sys>;
 		pwm-dutycycle-range = <100 0>;
 		pwm-dutycycle-unit = <100>;
@@ -159,7 +159,7 @@ ppvar_gpu_pwm: ppvar-gpu-pwm {
 		compatible = "pwm-regulator";
 		regulator-name = "ppvar_gpu_pwm";
 
-		pwms = <&pwm0 0 3337 0>;
+		pwms = <&pwm0 0 3337 PWM_NOFLAGS>;
 		pwm-supply = <&ppvar_sys>;
 		pwm-dutycycle-range = <100 0>;
 		pwm-dutycycle-unit = <100>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index 47890757e866..9f606a6c01c9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -161,7 +161,7 @@ fan: pwm-fan {
 		cooling-levels = <0 150 200 255>;
 		#cooling-cells = <2>;
 		fan-supply = <&vsys_5v0>;
-		pwms = <&pwm0 0 40000 0>;
+		pwms = <&pwm0 0 40000 PWM_NOFLAGS>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
index e0d75617bb7e..f6f60274e5b8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
@@ -62,7 +62,7 @@ fan: pwm-fan {
 		cooling-levels = <0 12 18 255>;
 		#cooling-cells = <2>;
 		fan-supply = <&vcc12v0_sys>;
-		pwms = <&pwm1 0 50000 0>;
+		pwms = <&pwm1 0 50000 PWM_NOFLAGS>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index d9dad0f45564..e86932d9549a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -19,7 +19,7 @@ chosen {
 
 	backlight: backlight {
 		compatible = "pwm-backlight";
-		pwms = <&pwm0 0 25000 0>;
+		pwms = <&pwm0 0 25000 PWM_NOFLAGS>;
 	};
 
 	clkin_gmac: external-gmac-clock {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 5eedeae21189..e373277d39ca 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -58,7 +58,7 @@ fan: pwm-fan {
 		compatible = "pwm-fan";
 		#cooling-cells = <2>;
 		fan-supply = <&vcc12v_dcin>;
-		pwms = <&pwm1 0 50000 0>;
+		pwms = <&pwm1 0 50000 PWM_NOFLAGS>;
 	};
 
 	sdio_pwrseq: sdio-pwrseq {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
index 73e269a8ae0c..fa3b70d219ba 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
@@ -79,7 +79,7 @@ backlight: backlight {
 			248 249 250 251 252 253 254 255>;
 		default-brightness-level = <200>;
 		enable-gpios = <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
-		pwms = <&pwm0 0 25000 0>;
+		pwms = <&pwm0 0 25000 PWM_NOFLAGS>;
 		status = "okay";
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 74f2c3d49095..30943914bcfa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -9,6 +9,7 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/power/rk3399-power.h>
+#include <dt-bindings/pwm/pwm.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
