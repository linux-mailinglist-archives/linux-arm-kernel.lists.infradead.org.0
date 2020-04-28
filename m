Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F28A91BBAA5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 12:04:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rlhg6lSQeZmH3xGx2VmuV6gtZ5uNqyaI/mA+6V/z4LU=; b=O31x4Qg77LlTnX
	Rwlfmmxx2an72sg3dw1Ln3sKS/wcOoIblaEkG1Yzq3SX8qmEN6ZC4GneQ2miVxFs16OYQ2+fuATAk
	UJlnxt9VNEGnSQbntYVXdMSNyU8ZfL4q5rYnoCRhio2WDtleGpojaBzl7mvwdlv8DcdcJzLmVKS1z
	4gtMoXDu2KVLlkdNrd+Gc0Phz7ZkNbc6If4DptV4TrfHHJGsWyeA8T3BPEjajzRbnows6ilFFpEXj
	e7qZO9Y52Sh/PgMSElFwdd/1OrvcUYJhhPRsXLcNItMMwMwxF806ILyq4bt4hOpXrivmdruH6WaS/
	93U6UyvXLz9sH56XheCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTN6a-00086t-VS; Tue, 28 Apr 2020 10:04:45 +0000
Received: from lnfm1.sai.msu.ru ([93.180.26.255])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTN6O-00083j-Ul
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 10:04:35 +0000
Received: from dragon.sai.msu.ru (dragon.sai.msu.ru [93.180.26.172])
 by lnfm1.sai.msu.ru (8.14.1/8.12.8) with ESMTP id 03SA3tiw019532;
 Tue, 28 Apr 2020 13:04:00 +0300
Received: from oak.local (unknown [188.123.231.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by dragon.sai.msu.ru (Postfix) with ESMTPSA id 1C034EB39;
 Tue, 28 Apr 2020 13:03:56 +0300 (MSK)
From: "Matwey V. Kornilov" <matwey@sai.msu.ru>
To: Rob Herring <robh+dt@kernel.org>, Michal Simek <michal.simek@xilinx.com>, 
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/ZYNQ ARCHITECTURE),
 linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2] ARM: dts: zynq: Fix ethernet PHY for v5 schematics
Date: Tue, 28 Apr 2020 13:03:49 +0300
Message-Id: <20200428100350.12699-1-matwey@sai.msu.ru>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <752db40d-5aed-4a97-a050-bc1376547f87@xilinx.com>
References: <752db40d-5aed-4a97-a050-bc1376547f87@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_030433_341135_DE28F0CA 
X-CRM114-Status: UNSURE (   9.73  )
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
revision. This commit relies on of_mdiobus_register() behavior.
When phy-handle is missed, every nested PHY node is considered,
while ENODEVs are ignored.

Before the patch:

[   28.295002] macb e000b000.ethernet eth0: Could not attach PHY (-19)

After the patch:

[   28.257365] macb e000b000.ethernet eth0: PHY [e000b000.ethernet-ffffffff:00] driver [Micrel KSZ9031 Gigabit PHY] (irq=POLL)
[   28.257384] macb e000b000.ethernet eth0: configuring for phy/rgmii-id link mode

Signed-off-by: Matwey V. Kornilov <matwey@sai.msu.ru>
---
Changes since v1:
 - reworded commit message

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
