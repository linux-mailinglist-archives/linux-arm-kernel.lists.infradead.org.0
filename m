Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F8CE0515
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 15:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GK4TcbZ1nHOeYZC+3NtQ3+rMtQGiU9z9Sz9KqEqzs4w=; b=iSlTMn+s8ak+0s
	m3t2Dbso4AwZpSV1EgYcRvZka6hgQldWBYayLEbjTbMnuLc8MJ72AdReg1GgIjVJLhDIpaamYn0AN
	T8Tt4wDmB8D8OW4pGOTshjjciAMeIZ5klv5L9vhFry3uJfo+IAIaCXJ7K7dFwrRTsl6AzlpHySsNm
	DHHb1QgLE2r64KNR2uGyJKxagIS7gRtZJdIU75PnrGKIhUVywGEXwxW5ubFOEZzq9NCCzvkW18MvE
	3Ww5TBUZDrINS2gQSN6vjyFEZzcys6lVmH8Z9b19wgR2+V9eYzJYcpYTjCw89F2WtZwVWjLz8VliK
	8VttosvqzFoZ5BRyVm9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMuFh-0000HL-U7; Tue, 22 Oct 2019 13:31:09 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMuEw-0008DK-T5; Tue, 22 Oct 2019 13:30:24 +0000
X-UUID: 10090e2c0de44ef0946339c3a63eac3b-20191022
X-UUID: 10090e2c0de44ef0946339c3a63eac3b-20191022
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 967298227; Tue, 22 Oct 2019 05:30:17 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 22 Oct 2019 06:30:16 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 22 Oct 2019 21:30:14 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 22 Oct 2019 21:30:13 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [RESEND, PATCH 1/1] arm: dts: mediatek: add mt7629 pwm support
Date: Tue, 22 Oct 2019 21:30:01 +0800
Message-ID: <1571751001-28588-2-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1571751001-28588-1-git-send-email-sam.shih@mediatek.com>
References: <1571751001-28588-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_063022_964544_347207EB 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sam Shih <sam.shih@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds pwm support for MT7629.
Used:
https://patchwork.kernel.org/patch/11160851/

Signed-off-by: Sam Shih <sam.shih@mediatek.com>
---
 arch/arm/boot/dts/mt7629.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/boot/dts/mt7629.dtsi b/arch/arm/boot/dts/mt7629.dtsi
index 9608bc2ccb3f..24375fc5f936 100644
--- a/arch/arm/boot/dts/mt7629.dtsi
+++ b/arch/arm/boot/dts/mt7629.dtsi
@@ -241,6 +241,21 @@
 			status = "disabled";
 		};
 
+		pwm: pwm@11006000 {
+			compatible = "mediatek,mt7629-pwm";
+			reg = <0x11006000 0x1000>;
+			interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&topckgen CLK_TOP_PWM_SEL>,
+				 <&pericfg CLK_PERI_PWM_PD>,
+				 <&pericfg CLK_PERI_PWM1_PD>;
+			clock-names = "top", "main", "pwm1";
+			assigned-clocks = <&topckgen CLK_TOP_PWM_SEL>;
+			assigned-clock-parents =
+					<&topckgen CLK_TOP_UNIVPLL2_D4>;
+			num-pwms = <1>;
+			status = "disabled";
+		};
+
 		i2c: i2c@11007000 {
 			compatible = "mediatek,mt7629-i2c",
 				     "mediatek,mt2712-i2c";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
