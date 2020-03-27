Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E16419575D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 13:43:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0N4y0V0PepxDhO6EzqAJGfbgu5Z4B5/IujyEskoydXA=; b=OvKgxnPdr06QqZ
	7b5ovwerLAFPC80Uxk3+GFLMk7eILCrkiYVymlkcCxfR17Wt/h53UOrI2Ni489x3t3xJA4vrnWpKH
	stHjNlTj6oThcVKwR5Qa35rLFC4432wbTZ5G3O4d7Wpv7jQitMTZ/ZX58LFjnJQaBZUnhHl9/p1iI
	nXUs/P2JEmDm62X4b+5Zo63iyFf6DBHihH1xW/TH53cVG8vRVupiQZIFLfMzBFbRMufjS/9m7SYMl
	ORWbRIyOyrqdnLECinOsGM9CPgoER2DLAIVZfw7d/KzSq/l5e38CpVqwgTCT9y5Yd51bZwea/9jIx
	j/9NpGF56A8+G5LuQM7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHoKR-000717-Ir; Fri, 27 Mar 2020 12:43:15 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHoKD-00068E-UH
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 12:43:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jO3AEOHGLWCsFDNf6cHqRj7CpekldajyoJG25hdAXKs=; b=hblUMp10vf3hrNbow4vhnqFa7B
 u3+7EV+riwDjv8mAv7dEqMTPFlgbrQgh+P859RR3Sxkm3cKbkDlMFIB0WJ5kYShQCSGJJ2piOXlA0
 QLo6NfXeflc9dzLjHXO8PdSYbLFnvHkbiV+1no7x4ShYZ3d37YUfBDkiyN9AVtxB34rgq38DliyKd
 RMtQKpoIP+Tf4QZ3OW/JGcwGFr6rzebj7/szEOG8bYSjH1NbipkgqcGzq/gJ9sczzErJymz7p4/D9
 SOsy4uVUAX7Mtt6GCYHdIwXbzlbcM0WPErVbNLoVcwMHpM8NDwFSfE5TDN9TJyk8Op7DlzKXmDFmP
 pL9qasvw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:54840 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jHoHz-000149-B7; Fri, 27 Mar 2020 12:40:43 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jHoHy-0002Ep-IY; Fri, 27 Mar 2020 12:40:42 +0000
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Gregory Clement <gregory.clement@bootlin.com>
Subject: [PATCH] arm64: dts: update SolidRun Armada 8040 phy interface types
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1jHoHy-0002Ep-IY@rmk-PC.armlinux.org.uk>
Date: Fri, 27 Mar 2020 12:40:42 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_054301_987240_0E6199AA 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "Madalin Bucur \(OSS\)" <madalin.bucur@oss.nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the SolidRun Armada 8040 platforms phy interface types from the
old 10gbase-kr to the newer and more correct 10gbase-r.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts   | 2 +-
 arch/arm64/boot/dts/marvell/armada-8040-mcbin-singleshot.dts | 4 ++--
 arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts            | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
index 1e7b47affe26..006666272489 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -401,7 +401,7 @@
 /* SFP */
 &cp0_eth0 {
 	status = "okay";
-	phy-mode = "10gbase-kr";
+	phy-mode = "10gbase-r";
 	managed = "in-band-status";
 	phys = <&cp0_comphy2 0>;
 	sfp = <&sfp_cp0_eth0>;
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin-singleshot.dts b/arch/arm64/boot/dts/marvell/armada-8040-mcbin-singleshot.dts
index 26114d96d637..b44f4c029b78 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin-singleshot.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin-singleshot.dts
@@ -16,14 +16,14 @@
 
 &cp0_eth0 {
 	status = "okay";
-	phy-mode = "10gbase-kr";
+	phy-mode = "10gbase-r";
 	managed = "in-band-status";
 	sfp = <&sfp_eth0>;
 };
 
 &cp1_eth0 {
 	status = "okay";
-	phy-mode = "10gbase-kr";
+	phy-mode = "10gbase-r";
 	managed = "in-band-status";
 	sfp = <&sfp_eth1>;
 };
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts
index 087a5502631e..42741adf867b 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts
@@ -63,14 +63,14 @@
 	status = "okay";
 	/* Network PHY */
 	phy = <&phy0>;
-	phy-mode = "10gbase-kr";
+	phy-mode = "10gbase-r";
 };
 
 &cp1_eth0 {
 	status = "okay";
 	/* Network PHY */
 	phy = <&phy8>;
-	phy-mode = "10gbase-kr";
+	phy-mode = "10gbase-r";
 };
 
 &cp1_pinctrl {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
