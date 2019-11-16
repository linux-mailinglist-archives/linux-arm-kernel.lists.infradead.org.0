Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E583CFEBBC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 12:07:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=27g3lmihuTU977HO2XoXkg7oCckLzYsEFFYfW5JkPTA=; b=IiBcjAFRSUHt/C
	wduLaxMa0+et0Tcq2NqqyzMfI9OohUnIs2Uj85G3RfN9S0iRFcPA5cmR4H64Ravx3IVmTgWFKmSjc
	1ArBUvx/bmnmD36uPerryShso8RPVNqBccCY+xGx2dEzzJVwkgndZ3O8rdTdTk4vYR19bgQ5VgmKh
	McoZzMxbpv3kSKr7BanOAqiaGTY+r1VQBIm0kwe9vC/HhLMxu2NWkfxSLTHhe82BV/MIcYRDN1v9e
	W0rZTiGfSID1bWNJmAuTWs4BxUN6i4ug8XQs/8aFtfaDqRbLu0eyJ3gT0cSB8uaeyxg88W+bddplr
	HJ66FOXpgkCr9nER9Q5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVvvQ-0001Sl-3d; Sat, 16 Nov 2019 11:07:32 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVvvI-0001Mt-4K
 for linux-arm-kernel@lists.infradead.org; Sat, 16 Nov 2019 11:07:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1ABfceJ8v9HVoFdZuVH2Lb3YMt4FTQFcIcYcGq5Usew=; b=WgV3OSCtufHCSOCuUZoXpRA94e
 PpWaLUCsnRUAe1X5UA7Wu3axSopVk9EEnDw8r6SbKtfnma5IQKejdgRwSBs9y44BbRiXP7ka5R6Mt
 A8Jo+dzBS27B6KByXv8MPiZE92TLkhsFRRCKPi73p81RupTi1TMVMci04IIJZGG+jmX/sbNToIvJ+
 erhMnbprp9rVysI8XaFN5OJ46htP31tW2vo3SsWeAe5PCeEXknJ6J8KHg05KGS4OUC1tabEy7lAns
 VRz7f+nbvRCDJeQoRlOVhi3g54+122CGrb9wF+6gZ3c3hYV0dQep+KQzihYrxE9+IXeKOLymXDh4L
 fHTMM91w==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:37616 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1iVvur-000788-IY; Sat, 16 Nov 2019 11:06:57 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1iVvuq-0002sd-KR; Sat, 16 Nov 2019 11:06:56 +0000
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Vladimir Vid <vladimir.vid@sartura.hr>
Subject: [PATCH 1/2] arm64: dts: uDPU: fix broken ethernet
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1iVvuq-0002sd-KR@rmk-PC.armlinux.org.uk>
Date: Sat, 16 Nov 2019 11:06:56 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_030724_300273_01930462 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The uDPU uses both ethernet controllers, which ties up COMPHY 0 for
eth1 and COMPHY 1 for eth0, with no USB3 comphy.  The addition of
COMPHY support made the kernel override the setup by the boot loader
breaking this platform by assuming that COMPHY 0 was always used for
USB3.  Delete the USB3 COMPHY definition at platform level, and add
phy specifications for the ethernet channels.

Fixes: bd3d25b07342 ("arm64: dts: marvell: armada-37xx: link USB hosts with their PHYs")
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
index bd4aab6092e0..e31813a4f972 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
@@ -143,6 +143,7 @@
 	phy-mode = "sgmii";
 	status = "okay";
 	managed = "in-band-status";
+	phys = <&comphy1 0>;
 	sfp = <&sfp_eth0>;
 };
 
@@ -150,11 +151,14 @@
 	phy-mode = "sgmii";
 	status = "okay";
 	managed = "in-band-status";
+	phys = <&comphy0 1>;
 	sfp = <&sfp_eth1>;
 };
 
 &usb3 {
 	status = "okay";
+	phys = <&usb2_utmi_otg_phy>;
+	phy-names = "usb2-utmi-otg-phy";
 };
 
 &uart0 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
