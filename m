Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1711B070F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 13:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vjRMsLaFW8XIEdqiaD0ngjE87llXaZfUmpyzq0jYzuc=; b=OY4vcBGZzmRZ/L
	BYAKHuP2tNA3IZO6izxOnoE0X97r8LCmOL9PoUG13tMaJ+z8h9J4loOe3heUHA4CxjfyfK3bft2wr
	8Fxb81nq72nQ5KY7YqYEEJ+EJ8s7WOJRcTl8lGHbT0INGl2gpc8lgRFR+54Zsma6zjlImxbqMh3IJ
	Id0y37dmxkRiX/H9r3+EA6+jA/+eBhxri5B2BOwThkO261glZ2Wv2lcv07WebmbXsaHNJswSu4oTs
	rv+/8FQ3XXff2aAFbT7FFtVQHOjaGvsPJtXnkfjNLl5K4d/ThD7zv2uoIGuZX9D7OiUU06WPj60BZ
	6j76nmTBwG/eRKHBP8Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQUHl-0003sP-S1; Mon, 20 Apr 2020 11:08:21 +0000
Received: from lnfm1.sai.msu.ru ([93.180.26.255])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQUHc-0003p6-Fl
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 11:08:14 +0000
Received: from dragon.sai.msu.ru (dragon.sai.msu.ru [93.180.26.172])
 by lnfm1.sai.msu.ru (8.14.1/8.12.8) with ESMTP id 03KB7Z7j031036;
 Mon, 20 Apr 2020 14:07:40 +0300
Received: from oak.local (unknown [188.123.231.136])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by dragon.sai.msu.ru (Postfix) with ESMTPSA id 8DFB349CC;
 Mon, 20 Apr 2020 14:07:36 +0300 (MSK)
From: "Matwey V. Kornilov" <matwey@sai.msu.ru>
To: Rob Herring <robh+dt@kernel.org>, Michal Simek <michal.simek@xilinx.com>, 
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/ZYNQ ARCHITECTURE),
 linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] ARM: dts: zynq: Fix ethernet PHY for v5 schematics
Date: Mon, 20 Apr 2020 14:07:15 +0300
Message-Id: <20200420110715.12032-1-matwey@sai.msu.ru>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_040813_123452_E3F6A5E5 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [93.180.26.255 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, matwey.kornilov@gmail.com,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 "Matwey V. Kornilov" <matwey@sai.msu.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are at least two different versions existing for MYIR Zturn:

 * v4 schematics has Atheros AR8035 PHY at 0b000
     http://www.myirtech.com/download/Zynq7000/Z-TURNBOARD_schematic.pdf
 * v5 schematics has Micrel KSZ9031 PHY at 0b011
     v5 schematics available at DVD disk supplied with the board

Specify both PHYs to make ethernet interface working for any board
revision. This commit relies on of_mdiobus_register() behaviour.

Before the patch:

[   28.295002] macb e000b000.ethernet eth0: Could not attach PHY (-19)

After the patch:

[   28.257365] macb e000b000.ethernet eth0: PHY [e000b000.ethernet-ffffffff:00] driver [Micrel KSZ9031 Gigabit PHY] (irq=POLL)
[   28.257384] macb e000b000.ethernet eth0: configuring for phy/rgmii-id link mode

Signed-off-by: Matwey V. Kornilov <matwey@sai.msu.ru>
---
 arch/arm/boot/dts/zynq-zturn.dts | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/zynq-zturn.dts b/arch/arm/boot/dts/zynq-zturn.dts
index 5ec616ebca08..07da9cf60d02 100644
--- a/arch/arm/boot/dts/zynq-zturn.dts
+++ b/arch/arm/boot/dts/zynq-zturn.dts
@@ -67,10 +67,17 @@
 &gem0 {
 	status = "okay";
 	phy-mode = "rgmii-id";
-	phy-handle = <&ethernet_phy>;
 
-	ethernet_phy: ethernet-phy@0 {
-		reg = <0x0>;
+	ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0>;
+		max-speed = <1000>;
+	};
+
+	ethernet-phy@3 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <3>;
+		max-speed = <1000>;
 	};
 };
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
