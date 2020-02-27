Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A9C1716D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:09:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M/MdELI73DTThFHClODqZJs57AHI7zE6R/qCp35U4XU=; b=gYBlivaqXec7r+
	90MmdidKR2t/ESN4lpD7einpTCl/BOxeNkKYak0FvtxdM1LVhbi1pE5moazeH//VqFrt4rd39N0XA
	EEXB5g/Bt0zVymAJiI+3Nw3qbybsK5yddo9k9mh1A+eakBPYHQ7fMA2S6iQuK9GZ3cMnUHD8UuvDb
	kU9xtEO9BCG9EJUmd3elgWwGq2pW6jhsWQdcledTBJZzC0se44EEg/AYfSLV6puZOnFsjKqxg8+/S
	sS4FPD85N3WZrCRW3Ap2GkOoByTqfHhvfJWscCdafUTM4QgB/xmSze1kr2ZbmlI+/U7kr07y5S/Vj
	kfklbjafdJgBRdJIabcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Hym-0003rG-4K; Thu, 27 Feb 2020 12:09:24 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Hye-0003qZ-3v
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 12:09:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5B4D6mpsYsGTW/sG+nlpg8ge6vrS2Mwsuc7+EH4Q6pM=; b=y9HLVnwepohpL+nei0WwI4LB3e
 pMI0dHtVkOCWFbpezYvMe9Xuj0ffIKgUDx95aVX2mLxK6k9n2rtqGQquBrU01uLS80BL47PF7Dd8i
 GkrIsycFL7QyvTE8q8fM/mF7SUvPTkRVPXM0VZ3E6vVDXUF6FhSdO1QJJC+AXJXlE4aeCs/P+Y4wN
 TcodWT8ephDdcczAbt7XIqTlCGmnnkx5449Fbd0CH8FJ6663m5sLUdb2fgAg957zyzG7HkSdNzmAw
 ham6850blAjvIpkwRSwWypB29qv6ocbGmDve7Q2izPuaGXl0Toe7CnSGc5nmiSC7ly+qYaoteTUI0
 ZOLJw9+w==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:58338 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j7HyN-0005PT-7F; Thu, 27 Feb 2020 12:08:59 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j7HyM-0004Zc-HY; Thu, 27 Feb 2020 12:08:58 +0000
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Gregory Clement <gregory.clement@bootlin.com>
Subject: [PATCH] arm64: dts: mcbin: support 2W SFP modules
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1j7HyM-0004Zc-HY@rmk-PC.armlinux.org.uk>
Date: Thu, 27 Feb 2020 12:08:58 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_040916_194573_33E2A830 
X-CRM114-Status: UNSURE (   8.37  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allow the SFP cages to be used with 2W SFP modules.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
index 8a39908e584f..ba25650730c3 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
@@ -71,6 +71,7 @@
 		tx-fault-gpio  = <&cp1_gpio1 26 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&cp1_sfpp0_pins>;
+		maximum-power-milliwatt = <2000>;
 	};
 
 	sfp_eth1: sfp-eth1 {
@@ -83,6 +84,7 @@
 		tx-fault-gpio = <&cp0_gpio2 30 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&cp1_sfpp1_pins &cp0_sfpp1_pins>;
+		maximum-power-milliwatt = <2000>;
 	};
 
 	sfp_eth3: sfp-eth3 {
@@ -95,6 +97,7 @@
 		tx-fault-gpio = <&cp0_gpio2 19 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&cp0_sfp_1g_pins &cp1_sfp_1g_pins>;
+		maximum-power-milliwatt = <2000>;
 	};
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
