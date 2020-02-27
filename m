Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 512E2171672
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 12:56:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xNFfXVAZl74xhum5kWnHwLbGz+Csyg5NFDYYPguLPtg=; b=ca6Vrz2SvMFBfN
	ap/wXyf7CJIhsiIWc9Osh/zP9Y0L9YRl8TL7PbQj27Ic/hhq69L52xkBmE2alRtwkJSjfyi6ZSJet
	rw7j2SBjHmR9gj55r3FO4yXDTesnaLmD/fDjoDViApE3oQz8exHbHJxaQneMjNJGlfgWN4Jvu29bH
	sAU/hr3RwMQrW5xXiwU8GNlOzMLxGPXYcvFWYBqPA5I0+USpzJJ5/497AdWucKe6HIQzV5RjWPf2y
	bHyyK8Mx+hUqeFb5vO+B+P8yDNTjFh3sSAwZjFVPgxsG0g1rG2R2SEHvUJzdgoLgV9a5mQL8DF+AU
	fm5soZJkTytJjPYngIzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Hle-0007az-8g; Thu, 27 Feb 2020 11:55:50 +0000
Received: from unicorn.mansr.com ([81.2.72.234])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7HlV-0007aA-9g
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 11:55:42 +0000
Received: by unicorn.mansr.com (Postfix, from userid 51770)
 id 48F8815EF6; Thu, 27 Feb 2020 11:55:28 +0000 (GMT)
From: Mans Rullgard <mans@mansr.com>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2] ARM: dts: sunxi: h3/h5: add r_pwm node
Date: Thu, 27 Feb 2020 11:55:26 +0000
Message-Id: <20200227115526.28075-1-mans@mansr.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_035541_497388_89B047F4 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a second PWM unit available in the PL I/O block.
Add a node and pinmux definition for it.

Signed-off-by: Mans Rullgard <mans@mansr.com>
---
Changed in v2:
- use singular name (pin vs pins) for pinmux group
- set pinmux in device node as there is only one choice
---
 arch/arm/boot/dts/sunxi-h3-h5.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
index 107eeafad20a..54b32537d6ae 100644
--- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
+++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
@@ -871,6 +871,21 @@
 				pins = "PL0", "PL1";
 				function = "s_i2c";
 			};
+
+			r_pwm_pin: r-pwm-pin {
+				pins = "PL10";
+				function = "s_pwm";
+			};
+		};
+
+		r_pwm: pwm@1f03800 {
+			compatible = "allwinner,sun8i-h3-pwm";
+			reg = <0x01f03800 0x8>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&r_pwm_pin>;
+			clocks = <&osc24M>;
+			#pwm-cells = <3>;
+			status = "disabled";
 		};
 	};
 };
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
