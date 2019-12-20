Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFE8127B60
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 13:55:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tx54fwZpEPvKKZffkI5N6KCz7VyXDblT+tMWSddPup4=; b=XOb
	t4I8qP+dhz01PkXxG3d2X29toqYDUJSKMlQuDSnGbe9tNgSZhnsq/yf4ARVxLdcgtYTjm1bDVXrcC
	fIuR5bAeVkiGHuNveJjcRAz9pCv/C8a/EDO+HOC/gOmpzN3pPZPR1RsTN0aFqL6gMRXGUhyppizch
	XlY6SxXzqH2L4Z7Ujb9FkRaQmLCpAtvr30UbBszI0HrmD43z1NbLmyovFb7eiUPvNoSYD6FJ5tGZj
	aK4br3TucPPhaeUFvbrx3dDgNaXCtcqS/LzsBqFrQRenuvT8ctcCsIEkj0v1k6MFQHeULBqZNoPki
	IUNgqCbE3hc2ZydZSCJ8jlEga7PUAYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiHof-0002Ub-HM; Fri, 20 Dec 2019 12:55:37 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiHoW-0002Tz-H9; Fri, 20 Dec 2019 12:55:29 +0000
Received: by mail-wm1-x336.google.com with SMTP id p17so9157574wmb.0;
 Fri, 20 Dec 2019 04:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=47U1otsxYlinLNAscqJD75X6EAli96RR6XYpuDRuenk=;
 b=BYTTQMKllgycraKHarnwqJf8SP4/xmLzv9sqBRHH5Jlky2jdi7TsjV0FpyLasstZXX
 Gnz3BQ23iT6rF2wjm8aR/p2cANBU5xasgeSZacD8RBsWIOq+FzDUv4aX3n0gqaDQZSum
 0bv0gkqK2DxGD83GZfUu3FCfcCg4GCvwM7HfxIMewlav5ZsxG80YBOic1rrgmF6LbfdP
 2/JEsjMRO+HLj3QEzUSrSWYCnOFYmB9rnwpUQ26KXVdU+1otPKfeJEF8+av//+18iQfd
 FU6qDpqC/QcHo+mezj/JB4lnKNSZNeRmWCsmSt+2mhAYAsCOmN/QVffUnH/Di1JHXZSE
 UxeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=47U1otsxYlinLNAscqJD75X6EAli96RR6XYpuDRuenk=;
 b=gjMPHLLU2jyivAPd5I2Buw1UaX5k5ESVWgOw5I+j1WlhJ8+nIU4YYhMjBtPG+wTRIN
 +Tw/jnsTgAlWvdGsowzDTzfE8YmWnlaOK5S6IVpjfYJFdgH9InudIeHPbqg4IibPvM9B
 Yb5wIGjqSx/VuqLi3DxG2p1fkzFH/5tMuhqY6xS2mDPcYG0Xi+BwMw9JODZaEv+tUPPH
 ++5MPB9mDefU3ZILmFG25FVqT5p+4+lugL1CDjufpeIgdTDinzfrfcRAnVAe8pzgf9eg
 KFg0DH44l9yTAaLUJ4on61tyiFVvr6MZZoI7TMqk5g/lO+uLcBhz9lORJfEfVIl7R2NR
 J2zw==
X-Gm-Message-State: APjAAAUIlflUiYQmEoqLqc1SsOQ2ikHRZut/owR11VIrIghpv5twNXB6
 qmVNHKAAjWwmoSDAUgKpLEY=
X-Google-Smtp-Source: APXvYqyag6PPQfT7+x6ofkH7w6P6paES7VP6Wm61XxrDabaVQVUo7j2A4lOVwoTmjNVhlw0slPBRIg==
X-Received: by 2002:a7b:c1d8:: with SMTP id a24mr16446761wmj.130.1576846526989; 
 Fri, 20 Dec 2019 04:55:26 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id k16sm10148078wru.0.2019.12.20.04.55.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Dec 2019 04:55:26 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: rk3368-lion-haikou: remove identical
 &uart0 node
Date: Fri, 20 Dec 2019 13:55:20 +0100
Message-Id: <20191220125520.29871-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_045528_593681_61D33038 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove identical &uart0 node.
Sort nodes in alphabetical order.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../arm64/boot/dts/rockchip/rk3368-lion-haikou.dts | 76 ++++++++++------------
 1 file changed, 35 insertions(+), 41 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
index 8251f3c0d..93601fe05 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
@@ -64,47 +64,6 @@
 	};
 };
 
-&sdmmc {
-	bus-width = <4>;
-	cap-mmc-highspeed;
-	cap-sd-highspeed;
-	cd-gpios = <&gpio2 RK_PB3 GPIO_ACTIVE_LOW>;
-	disable-wp;
-	max-frequency = <25000000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
-	rockchip,default-sample-phase = <90>;
-	vmmc-supply = <&vcc3v3_baseboard>;
-	status = "okay";
-};
-
-&spi2 {
-	cs-gpios = <0>, <&gpio2 RK_PC3 GPIO_ACTIVE_LOW>;
-	status = "okay";
-};
-
-&uart0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
-	status = "okay";
-};
-
-&usb_otg {
-	dr_mode = "otg";
-	status = "okay";
-};
-
-&uart0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
-	status = "okay";
-};
-
-&uart1 {
-	/* alternate function of GPIO5/6 */
-	status = "disabled";
-};
-
 &pinctrl {
 	pinctrl-names = "default";
 	pinctrl-0 = <&haikou_pin_hog>;
@@ -144,3 +103,38 @@
 		};
 	};
 };
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio2 RK_PB3 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	max-frequency = <25000000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
+	rockchip,default-sample-phase = <90>;
+	vmmc-supply = <&vcc3v3_baseboard>;
+	status = "okay";
+};
+
+&spi2 {
+	cs-gpios = <0>, <&gpio2 RK_PC3 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
+	status = "okay";
+};
+
+&uart1 {
+	/* alternate function of GPIO5/6 */
+	status = "disabled";
+};
+
+&usb_otg {
+	dr_mode = "otg";
+	status = "okay";
+};
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
