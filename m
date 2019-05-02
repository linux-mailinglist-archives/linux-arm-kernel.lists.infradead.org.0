Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D0311A47
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 15:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J4RmjqL9UgyTZHdVU83obRlKxCXj6vN8nmHES4RxHkU=; b=exGbLf0FqxykLb0mb0qla9VG/u
	zScurJczuwoUNVv4dBQc6KkAsYYYqAhO19XVzbqaMMZ/cIw3wlrq2YOlhO5BblFmfR9Zkc8v2Bh9V
	1ex58Fw8hon803OooO8jv26Xytxby/B4YsfaB4AuSDOUXRroBg27WzhxdDTGkQ0+p9Jo7lYD12poI
	EkVj6aD6ywBXGJLA4vTwyhuOlc6DZnN3/SPEsowKznHO1y8OKjYZTX+bC/5eS/Twb8U8aBFMq1dw1
	nyFGFjQtlDC/AMdWKZr20XBuALuRgXZI8FoBIBGyw2SasxhKSVuPCV+1gpyuTXAdy7i0Ojj8A3hos
	/UiYiq+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMBrI-0001z3-FY; Thu, 02 May 2019 13:34:44 +0000
Received: from mail2.sp2max.com.br ([138.185.4.9])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMBqf-0001Jx-LD
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 13:34:07 +0000
Received: from pgsop.sopnet.com.ar (unknown [179.40.38.12])
 (Authenticated sender: pablo@fliagreco.com.ar)
 by mail2.sp2max.com.br (Postfix) with ESMTPA id 4E0727B05A2;
 Thu,  2 May 2019 10:34:02 -0300 (-03)
From: Pablo Greco <pgreco@centosproject.org>
To: linux-sunxi@googlegroups.com
Subject: [PATCH v6 3/5] ARM: dts: sun8i: v40: bananapi-m2-berry: Enable HDMI
 output
Date: Thu,  2 May 2019 10:33:47 -0300
Message-Id: <1556804030-25291-4-git-send-email-pgreco@centosproject.org>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1556804030-25291-1-git-send-email-pgreco@centosproject.org>
References: <1556804030-25291-1-git-send-email-pgreco@centosproject.org>
X-SP2Max-MailScanner-Information: Please contact the ISP for more information
X-SP2Max-MailScanner-ID: 4E0727B05A2.A06A0
X-SP2Max-MailScanner: Sem Virus encontrado
X-SP2Max-MailScanner-SpamCheck: nao spam, SpamAssassin (not cached,
 escore=-2.9, requerido 6, autolearn=not spam, ALL_TRUSTED -1.00,
 BAYES_00 -1.90)
X-SP2Max-MailScanner-From: pgreco@centosproject.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_063405_868669_AA6A55E6 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Pablo Greco <pgreco@centosproject.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the hdmi nodes to the Bananapi M2 Berry, the same way it
was done to the Bananapi M2 Ultra

Signed-off-by: Pablo Greco <pgreco@centosproject.org>
---
 arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts | 29 +++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts b/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
index 0dfde58..1f4f51f9 100644
--- a/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
+++ b/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
@@ -58,6 +58,17 @@
 		stdout-path = "serial0:115200n8";
 	};
 
+	connector {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -88,6 +99,10 @@
 	};
 };
 
+&de {
+	status = "okay";
+};
+
 &ehci1 {
 	/* Terminus Tech FE 1.1s 4-port USB 2.0 hub here */
 	status = "okay";
@@ -109,6 +124,16 @@
 	};
 };
 
+&hdmi {
+	status = "okay";
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -208,6 +233,10 @@
 	regulator-name = "vcc-wifi";
 };
 
+&tcon_tv0 {
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_pb_pins>;
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
