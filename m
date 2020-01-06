Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BA2131A3C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 22:18:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obYDB5phLn9qwrK0RRnS6OBxDePx4uGMjSfNAZ4wrXQ=; b=JlHDl6LshdWRNL
	ygFy8qjRqjlV+zaeaFHMn2ZyXtqlwM+ZDZCGiF7eRLNiBlicBOKJ4sjcNDDLMAvoaQEM6jU4YNvDM
	MOq4t1UcVQoDc80O+nEZv3vKQNDJrAV1wa+SxkF3uXqU0WZooGfQrqyejGRryYQyu0WeIQaGPS++G
	3NQfV7tIS0RzoHDbor+qufrFgu+Yaku0qxBTjXeiy0H09TA3ldZxMSJd0yuOdO8mvh7dNn3oH+CPU
	AKJ5W3hHIv3D97d9NO1bS+Q4zpGBqIC2rUM/M76qTuvfrlOedDByqy9W1zNmiylisG5UI4cgZv6F9
	Zb2z7HeX1ORxXUxz3z9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZld-0000I1-NK; Mon, 06 Jan 2020 21:18:29 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZkW-0007ho-Nn; Mon, 06 Jan 2020 21:17:22 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1ioZkV-0001Yf-CK; Mon, 06 Jan 2020 22:17:19 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from roc-pc (pD9E89450.dip0.t-ipconnect.de [217.232.148.80])
 (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 006LHIt5032161
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 6 Jan 2020 22:17:18 +0100
From: Markus Reichl <m.reichl@fivetechno.de>
To: linux-rockchip@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 5/5] arm64: dts: rockchip: Enable mp8859 regulator on
 rk3399-roc-pc
Date: Mon,  6 Jan 2020 22:16:28 +0100
Message-Id: <20200106211633.2882-6-m.reichl@fivetechno.de>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200106211633.2882-1-m.reichl@fivetechno.de>
References: <20200106211633.2882-1-m.reichl@fivetechno.de>
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1578345440;
 b43aaf3b; 
X-HE-SMSGID: 1ioZkV-0001Yf-CK
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_131720_932139_199DABE1 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The rk3399-roc-pc uses a MP8859 DC/DC converter for 12V supply.
This supplies 5V only in default state after booting.
Now we can control the output voltage via I2C interface.
Add a node for the driver to reach 12V.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
 .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 32 +++++++++++--------
 1 file changed, 18 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 8e01b04144b7..9f225e9c3d54 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -110,20 +110,6 @@ vcc_vbus_typec0: vcc-vbus-typec0 {
 		regulator-max-microvolt = <5000000>;
 	};
 
-	/*
-	 * should be placed inside mp8859, but not until mp8859 has
-	 * its own dt-binding.
-	 */
-	dc_12v: mp8859-dcdc1 {
-		compatible = "regulator-fixed";
-		regulator-name = "dc_12v";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <12000000>;
-		regulator-max-microvolt = <12000000>;
-		vin-supply = <&vcc_vbus_typec0>;
-	};
-
 	/* switched by pmic_sleep */
 	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
 		compatible = "regulator-fixed";
@@ -546,6 +532,24 @@ fusb0: usb-typec@22 {
 		vbus-supply = <&vcc_vbus_typec0>;
 		status = "okay";
 	};
+
+	mp8859: regulator@66 {
+		compatible = "mps,mp8859";
+		reg = <0x66>;
+		dc_12v: mp8859_dcdc {
+			regulator-name = "dc_12v";
+			regulator-min-microvolt = <12000000>;
+			regulator-max-microvolt = <12000000>;
+			regulator-always-on;
+			regulator-boot-on;
+			vin-supply = <&vcc_vbus_typec0>;
+
+			regulator-state-mem {
+				regulator-on-in-suspend;
+				regulator-suspend-microvolt = <12000000>;
+			};
+		};
+	};
 };
 
 &i2s0 {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
