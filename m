Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2AE81970F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 00:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s/eeoCCNIJum5/8K/l9I5B/aslvuwOgQCgeGt0b8JxM=; b=s+NUIDAuiqR5zW
	dRRMtYIkhx/r0ZCiVFIb9se7MN4+UUaNwoeFjF91F/qEVEEJMzAH3rwOUYUGWEaKXMpeNQ+Wl7oIP
	HDwc0FCNDba7rDWWf6srtSDwq9eKNezcQl+bvVvLk6rA8pbOaW5EWPGIDozAViRE/h+njjZVJ+wkn
	c71Pj3F9nMDnbebXzjQFWwRB+yvWuiP5iyu1V//lxuqZx8N/GUZhfe7ix1HNuNBrngFRnSBTbO4Cy
	7xEDEUu+FL1nvHxTNk2RUKp14GtXxXJsXh2BstmlvK/ZROn+m09bFV12ddtMJwLycpDVDHNyQoWLX
	HL38fFmlWkLN3MRz92ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIgom-0006XC-IK; Sun, 29 Mar 2020 22:54:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIgoe-0006W9-38; Sun, 29 Mar 2020 22:54:05 +0000
X-UUID: dbfbd851ea8a4d02b54439a7c09eafe2-20200329
X-UUID: dbfbd851ea8a4d02b54439a7c09eafe2-20200329
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@kernel.org>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1195821715; Sun, 29 Mar 2020 14:53:57 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 29 Mar 2020 15:53:54 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Mar 2020 06:53:37 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 30 Mar 2020 06:53:42 +0800
From: Ryder Lee <ryder.lee@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] arm64: dts: mt7622: add built-in Wi-Fi device nodes
Date: Mon, 30 Mar 2020 06:53:40 +0800
Message-ID: <315346e1d6fa00e5a0d7a8216982bf723af8e985.1584862530.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_155404_138376_326CED30 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ryder Lee <ryder.lee@mediatek.com>

This enables built-in 802.11n Wi-Fi support. It's 2.4GHz only.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
 .../boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts     |  4 ++++
 arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts          |  4 ++++
 arch/arm64/boot/dts/mediatek/mt7622.dtsi              | 11 +++++++++++
 3 files changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts b/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
index 83e10591e0e5..d174ad214857 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
@@ -543,3 +543,7 @@
 	pinctrl-0 = <&watchdog_pins>;
 	status = "okay";
 };
+
+&wmac {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
index 3f783348c66a..0b4de627f96e 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
@@ -506,3 +506,7 @@
 	pinctrl-0 = <&watchdog_pins>;
 	status = "okay";
 };
+
+&wmac {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt7622.dtsi b/arch/arm64/boot/dts/mediatek/mt7622.dtsi
index dac51e98204c..03b14a5ab7f3 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7622.dtsi
@@ -699,6 +699,17 @@
 		status = "disabled";
 	};
 
+	wmac: wmac@18000000 {
+		compatible = "mediatek,mt7622-wmac";
+		reg = <0 0x18000000 0 0x100000>;
+		interrupts = <GIC_SPI 211 IRQ_TYPE_LEVEL_LOW>;
+
+		mediatek,infracfg = <&infracfg>;
+		status = "disabled";
+
+		power-domains = <&scpsys MT7622_POWER_DOMAIN_WB>;
+	};
+
 	ssusbsys: ssusbsys@1a000000 {
 		compatible = "mediatek,mt7622-ssusbsys",
 			     "syscon";
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
