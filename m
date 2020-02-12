Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B741159F1E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 03:36:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a8rtoOQ+FzW6FNfoVn4yohsUlj5zt2/pCv5yM+Oy1Ps=; b=JknoPyLnV+/Tt2
	rwhJayasOcmLCIRtLzcgN7rTm5DicEynfZPCIk1CnJACyfOjLDtmk7EAYQC/TNreGSlFFIWUhm9pp
	WuNw44ZfhPLL5vxRQH+m7TIw8flRFVSfBKPU3LaMnppHC0pNcdqrw0orVnuxGVLc/wPzvQ332J8Io
	ZnVrIXg2dkUHz3woPq1TbflJFiUXQObIrnsHJIExlOc6HuyVPOzRu/BW5azdVlcrQu2LBLJ41wVox
	G2tSAcN8QSflo2owSlINzgIOM2ngIGQ2W3wdyv3HWTdvwgsr4nx5ZEntUF++MW2SwhIuA+9ErFtmI
	3mlSez4AJjrLiHlGe3kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ht0-0004Dm-0C; Wed, 12 Feb 2020 02:36:22 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1hsb-00044A-G1; Wed, 12 Feb 2020 02:35:59 +0000
X-UUID: 586584f01e624bea96638fea8f9867e1-20200211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=aC80HxRMBV0tY5Zddqx1ty1wteHBFoyprQsy+llvVXw=; 
 b=Ubwkk9ZHSd9fIz9ycqtJO/v2K5DKDZxo9gYISWSY6qyd4syAxfSzw/I4dntYjqBQCTpMM/2S5ztomtwZBfaPjsTg+B6EuimFKpIh7xnh28xXMmGLQnGmN/L9E1DjcPfh73GSJMbDp8tvFzb2ebFpAznHUdvtnBBzaAPduLKzXNs=;
X-UUID: 586584f01e624bea96638fea8f9867e1-20200211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 974526225; Tue, 11 Feb 2020 18:35:49 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Feb 2020 18:35:58 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Feb 2020 10:34:57 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 12 Feb 2020 10:34:49 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [RESEND,v2,1/1] arm: dts: mediatek: add mt7629 pwm support
Date: Wed, 12 Feb 2020 10:35:26 +0800
Message-ID: <1581474926-28633-2-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1581474926-28633-1-git-send-email-sam.shih@mediatek.com>
References: <1581474926-28633-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_183557_535475_6814FAB7 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Sam
 Shih <sam.shih@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds pwm support for MT7629.
Used:
https://patchwork.kernel.org/patch/11160851/

Change since v1:
remove unused property num-pwm

Signed-off-by: Sam Shih <sam.shih@mediatek.com>
---
 arch/arm/boot/dts/mt7629.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/mt7629.dtsi b/arch/arm/boot/dts/mt7629.dtsi
index 867b88103b9d..ce2a30a24017 100644
--- a/arch/arm/boot/dts/mt7629.dtsi
+++ b/arch/arm/boot/dts/mt7629.dtsi
@@ -241,6 +241,20 @@
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
