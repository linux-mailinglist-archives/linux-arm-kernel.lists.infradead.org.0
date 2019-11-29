Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD8F10D50F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 12:41:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E1VPNb7u4L9XB494mYP6SnsHvC2tmin/GO2HGhX08Uc=; b=ZyvQ/qk99RvHertSBt0Fr5mjn5
	HBabrmFz3wjNZDIhO0gudbYr9G6I1R8HeYGyrJ8P6wIsC0d/CV+0DjCjHG6TLA0CxHuXAxPTYKjGc
	vUtEOm4qMCA1IVURtGISWHbTvEimr2LLnOlj6tCpAbBc7pewTaY+KuSz1KN3r0Z8BKPF2/Ed1+6iS
	xyccAaI6IIit+Lv5N3culPw35eYa/0yWynypAYusDguOKB2rqk2optxhfp4eKqEkuNdX9XFNlX2XY
	vdzdbNh0H2XWHikhvgtsNlFhxL19CnblGUfs3P/t8BosqeZiHqNK0ctFR+edvE8D62GlIYUv8Ekqw
	dETLa5vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaee5-0007Gg-02; Fri, 29 Nov 2019 11:41:09 +0000
Received: from olimex.com ([2001:470:0:1f2::b869:4820])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaedB-0006af-Nq
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 11:40:16 +0000
Received: from localhost.localdomain ([94.155.250.134])
 by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 29 Nov 2019 03:39:59 -0800
From: Stefan Mavrodiev <stefan@olimex.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Allwinner sunXi SoC
 support), 
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2 2/3] arm64: dts: allwinner: a64: olinuxino: Add bank supply
 regulators
Date: Fri, 29 Nov 2019 13:39:40 +0200
Message-Id: <20191129113941.20170-3-stefan@olimex.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191129113941.20170-1-stefan@olimex.com>
References: <20191129113941.20170-1-stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_034013_783310_A770E898 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-sunxi@googlegroups.com, Stefan Mavrodiev <stefan@olimex.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner A64 SoC has separate supplies for PC, PD, PE, PG and PL. This
patch adds regulators for them to the pinctrl node.

Exception is PL which is used by the RSB bus. To avoid circular
dependencies, VCC-PL is omitted.

On boards with eMMC, VCC-PC is supplied by ELDO1, instead of DCDC1.

Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
---
 .../dts/allwinner/sun50i-a64-olinuxino-emmc.dts  |  4 ++++
 .../boot/dts/allwinner/sun50i-a64-olinuxino.dts  | 16 ++++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts
index 121e6cc4849b..12f8c62c4f52 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts
@@ -21,3 +21,7 @@
 	cap-mmc-hw-reset;
 	status = "okay";
 };
+
+&pio {
+	vcc-pc-supply = <&reg_eldo1>;
+};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
index 01a9a52edae4..ad3559c576dd 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
@@ -163,6 +163,22 @@
 	status = "okay";
 };
 
+&pio {
+	vcc-pc-supply = <&reg_dcdc1>;
+	vcc-pd-supply = <&reg_dcdc1>;
+	vcc-pe-supply = <&reg_aldo1>;
+	vcc-pg-supply = <&reg_dldo4>;
+};
+
+&r_pio {
+	/**
+	 * Do not add vcc-pl-supply, since PL0 and PL1 are used
+	 * by the RSB bus.
+	 *
+	 * vcc-pl-supply = <&reg_aldo2>;
+	 */
+};
+
 &r_rsb {
 	status = "okay";
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
