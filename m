Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5527F19ECEF
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 19:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kilcr6GM4BaFYG92BasuAmGw+d4v6RFnewfVQ4YA3K8=; b=YhYLNSSg4+xyJV
	2FCIZWsTIuMufGaemvrlE3zZ4ghh0MnDdSoWQ3i9ZcrrLlSq4AObaNFD0/XTchcMyVfQhqv+JWvQ1
	5PiuL2XKixP4Wj8wons16Or6pWod8fvPEsT2D5R7mRGsgi9mUGs9txBy+ruteNWPT9CROXPjBIWCd
	Cg6lyRqpyZi+1TwTRR6qYm966QIAHbnno/9Y2oCil0mlzNSCUJJJOatCIqwn2XQwuZ29TnW/fSB/M
	9TjLgbIsBDq8X+qC9sQOoEhKz4Uz07b4qA2McbGooL7PnQKCRJq/xtcYwTidcpygYZ20K0GhuJiIy
	znc9YXxHJUVS+hDSWQfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL9AC-0006ix-K5; Sun, 05 Apr 2020 17:34:28 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL99q-0006cV-Hm
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 17:34:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1586108040;
 s=strato-dkim-0002; d=gerhold.net;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=5eexSbKaD4PWK4+vSfn+rMLl0XvRZRi7o/XZA3aRFVw=;
 b=H+Dkt1rBQ+kqQNDvaN8zOCjCeGAc1nzK3X3cC1Qpr+M7ATI1lkG3cjGBBy3pi/Bx5P
 qxNgbv8wu3MnKyQ/dKlTsMykpHGIiLD3pEd+RFv4POtY/mQmF1nj2a1ZeABVBWMBo2Na
 RZzMZI1KTA1FYjoHwyx8MXrcggCFHvjqNA22ZCFq+utmGb9H3rU4tWa/G9MBveFfeyTp
 i/iPYaroqFfCMh8RjJy0EIBEVecFwftE2d6TaRmbAOtGlgrlosbrNEXD9JGyHmrarDRg
 ZrO8TcNKvwm3SJGjGP8r1R5a1mXpcoO8JlsbVm91Q3Y8sMGSFPCjU4ubJonmyDs6NOLE
 LH+A==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXS7IYBkLahKxB526NfqU="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 46.2.1 DYNA|AUTH)
 with ESMTPSA id u043b8w35HXqxmd
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Sun, 5 Apr 2020 19:33:52 +0200 (CEST)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 1/2] ARM: dts: ux500: samsung-golden: Add proximity sensor
Date: Sun,  5 Apr 2020 19:32:51 +0200
Message-Id: <20200405173252.67614-1-stephan@gerhold.net>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_103407_173934_44FC197C 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5301:0:0:9 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, ~postmarketos/upstreaming@lists.sr.ht,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

samsung-golden has the same sharp,gp2ap002s00f proximity sensor
that is also used in samsung-skomer.

A driver was added for it in
commit 97d642e23037 ("iio: light: Add a driver for Sharp GP2AP002x00F").

Now that it was merged we can add an entry for it in the device tree
for samsung-golden.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 .../arm/boot/dts/ste-ux500-samsung-golden.dts | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm/boot/dts/ste-ux500-samsung-golden.dts b/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
index 313f0ab16866..0e9e33f4ca3c 100644
--- a/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
+++ b/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
@@ -146,6 +146,32 @@ uart@80007000 {
 			pinctrl-1 = <&u2rxtx_c_1_sleep>;
 		};
 
+		i2c@80004000 {
+			status = "okay";
+
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&i2c0_a_1_default>;
+			pinctrl-1 = <&i2c0_a_1_sleep>;
+
+			proximity@44 {
+				compatible = "sharp,gp2ap002s00f";
+				reg = <0x44>;
+
+				/* GPIO146 (PS_INT) */
+				interrupt-parent = <&gpio4>;
+				interrupts = <18 IRQ_TYPE_EDGE_FALLING>;
+
+				vdd-supply = <&ab8500_ldo_aux1_reg>;
+				vio-supply = <&ab8500_ldo_aux8_reg>;
+
+				pinctrl-names = "default";
+				pinctrl-0 = <&proximity_default>;
+
+				sharp,proximity-far-hysteresis = <0x40>;
+				sharp,proximity-close-hysteresis = <0x0f>;
+			};
+		};
+
 		i2c@80128000 {
 			status = "okay";
 
@@ -375,6 +401,15 @@ golden_cfg1 {
 		};
 	};
 
+	proximity {
+		proximity_default: proximity_default {
+			golden_cfg1 {
+				pins = "GPIO146_D13";	/* PS_INT */
+				ste,config = <&gpio_in_nopull>;
+			};
+		};
+	};
+
 	imu {
 		imu_default: imu_default {
 			golden_cfg1 {
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
