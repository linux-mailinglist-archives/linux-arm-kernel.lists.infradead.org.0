Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A428A17146E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 10:53:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Np6L1hs4CymjW3BMsUm7esyq1PjIqMIDy1UlPas2oM=; b=g5Xoe3II9PNZlX
	ptJRaxE8EBzo7/v1/dtYCgRE2itJyVBYZ/ifaSv12FYnZ/SFRUKsYgN95x9Ceua0r1IbMuux8+dxG
	2VWcTey89O/tRLLBH56qlq5P0NAWC+tZdf+qBvt93rAqrnCK93H5B806Gbnu5sp+w/betOzgtKxOB
	WFadSSLoP4M4y70bbfuNGfndTO0ymHoP+Ut1gJ6xZEG02FR688LU7TQtfCsYUAN98NNk4uUNZ6wwH
	Jsc8zfk2yazx9uKr88h/ORTlu9rTK5yThP7c4zlwHAyrR6I/wiQCgpl/GYhhyqQHrB0EErfDHNpNU
	6l1ZDt5m5OedXqQ1K92A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7FrK-00071K-Ra; Thu, 27 Feb 2020 09:53:34 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Fr0-0006pz-Fx
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 09:53:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4Dp7mkcUtdW2tERi+jH4BIpeVDMyk4miuASJrf/8YYI=; b=ZwsjtKIX0ZT+IcOxljKyal2CwR
 C2FUBo2NgHHukysc80HVUWJ7AAd4iq/azt/ArgcRFaSGvYASo5/n12o5x1NYWFcOxv0USnb9auRbZ
 3aIJEi01oPcGdIu6G4pym/r2+fDYHVwTY2FBHtsJRaJVVPzh1L4LnOmTnuOK2HGuUcyImrcUFVhhg
 pvIll5zpXLaozd6Ap9ya1LnQZtdDwd49NVlgkDJCzJff5E1+b9YG0dLCeCrlwW9GRgv3xdNVe9K0q
 v7iipUkxTBrA4gbc9RY8fzcFpvwo+Xko5N1vsfqlMK3f8XXlSvAnBo/sWM35zmPe2W0Ks8L4COSbx
 f96g2NiA==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:57842 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j7Fqc-0004kL-5v; Thu, 27 Feb 2020 09:52:50 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j7FqZ-0003tI-2A; Thu, 27 Feb 2020 09:52:47 +0000
In-Reply-To: <20200227095159.GJ25745@shell.armlinux.org.uk>
References: <20200227095159.GJ25745@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH net-next 3/3] arm64: dts: configure Macchiatobin 10G PHY LED
 modes
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1j7FqZ-0003tI-2A@rmk-PC.armlinux.org.uk>
Date: Thu, 27 Feb 2020 09:52:47 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_015314_582196_A3F240F3 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, netdev@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Configure the Macchiatobin 10G PHY LED modes to correct their polarity.
We keep the existing LED behaviours, but switch their polarity to
reflect how they are connected. Tweak the LED modes as well to be:

left:  off          = no link
       solid green  = RJ45 link up (not SFP+ cage)
       flash green  = traffic
right: off          = no link
       solid green  = 10G
       solid yellow = 1G
       flash green  = 100M
       flash yellow = 10M

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts
index d06f5ab7ddab..87a3149a4261 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dts
@@ -21,12 +21,14 @@
 		compatible = "ethernet-phy-ieee802.3-c45";
 		reg = <0>;
 		sfp = <&sfp_eth0>;
+		marvell,led-mode = /bits/ 16 <0x0129 0x095d 0x0855>;
 	};
 
 	phy8: ethernet-phy@8 {
 		compatible = "ethernet-phy-ieee802.3-c45";
 		reg = <8>;
 		sfp = <&sfp_eth1>;
+		marvell,led-mode = /bits/ 16 <0x0129 0x095d 0x0855>;
 	};
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
