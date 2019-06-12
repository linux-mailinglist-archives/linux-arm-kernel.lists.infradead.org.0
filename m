Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E50542C45
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 18:29:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ncJQP3n71C3ITLrU6VrFbasufBzIgHPbeKfX+JDOdHc=; b=mXPdP5nYWmzb5FMhMFxPLCEzyB
	Dd9EmziIyg5htS6dNB/8BW6V6f4LZVQaL4dt2Dac8+feoTndIB5aYIxIuZ4oBACCYVBzpGE2L3C6Q
	5mhJugjvdx8P42m/IloXNPgkvYFxAUQ6LTsURJLbp5iUWuzCLeHw8vvUxoYdYtGQL6o/JCwnQB3tY
	V7QTI15LmgxG3M9NGgIyQiXY+DJB4pzDOHCR1CP/nI6wxNzN4+03eUsjtSPx87ZDt3IGAyh49/GLc
	2zbshH0ctQRO8lveYG2DUHHYobhi5D2U4vBXwGdT91ozNYl6YbujAxeOW/OhJagQjixqCmO6MxUdv
	H2oubg2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb67o-0002gK-Q4; Wed, 12 Jun 2019 16:29:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb66z-0002CP-Qv
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 16:28:35 +0000
Received: by mail-pf1-x442.google.com with SMTP id r7so4081510pfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 09:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9ucWxJ6q9SaBb2GtuoCWauKcHmhMhNM9AVCq4M27NX8=;
 b=TOsdq0zEKlm1ovsLqsofSlAHa6P17YnxyTYaU0SrWx35AJQLEaLkF0+3Vu7rnet7kS
 QxkXWuUBzC5I9Ox8e5luKErNSTypQjGJ2Q1wWrmjeitE7qA8Jvi71xrtaEX1rh4Qwc+Y
 h3wSFAIKRAqmDhfys8Bm9Yu9mIrnwNwBvtrZcam657nib4HkVXSKKjfVlbGt3aFtYFGJ
 MyXlAAGV88Qyq+89N2CFLXgheOeSe6fDhHox3L8iSsiYAy77Lx7pUWaFRD3RCZ0tarbX
 Dxl6n6xUNhXMgoht0Lghj/t1sfKCR8htND5N8NfMAgKGBNPavYBTzy3lGAZJvT27clHh
 ugtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9ucWxJ6q9SaBb2GtuoCWauKcHmhMhNM9AVCq4M27NX8=;
 b=VGmEMEX3zjpwqU0fv6tFYkbGLmHw4qlwGqiGezBR4buhL34eM9I1/Lg472LeXUnsmV
 pVNzd7uJyz89VOY2EOuZ2y3tp4j5/bgkXbsOi/v/K0DhmOcNH5qP1IOXog9XdwxnX8kw
 /xFOgy121TKa5rfP/xeEENdNp6jaBe9mmQma1/uwQDKHMT/gOuSycAN72ou81nmX4gfG
 oHqeH6ZQsd3qjVQkkDVeNUnHAdbjaqRSUAXvuuhR0lJ3lxc9rImrcSavGp/dbQpjIdwh
 DAqZ+vpUGskc5ONM7Uq4EB0WsT6R3J+f0KMGZAeVBWS/kk27DXhxj3T6YMh94m22XtYH
 1BgQ==
X-Gm-Message-State: APjAAAUP4xdnGVOWrbVv9ZZox38eYLGVWVoQpjkeUDD/AxzYFK9mm8Qz
 yCquFNGLrAnTHUL3O97NBig=
X-Google-Smtp-Source: APXvYqx4AUVnFpEL1E+Qnsfwj4SRiJmLXGwFXB2fvIYC6OXMoah2zJ2Tiz3sgHkbW+X9oMz7oXpZhg==
X-Received: by 2002:a63:610d:: with SMTP id v13mr25531305pgb.341.1560356912884; 
 Wed, 12 Jun 2019 09:28:32 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id 201sm70299pfz.24.2019.06.12.09.28.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Jun 2019 09:28:32 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, maxime.ripard@bootlin.com, wens@csie.org,
 rjw@rjwysocki.net, davem@davemloft.net, mchehab+samsung@kernel.org,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com
Subject: [RESEND, PATCH v4 2/2] dt-bindings: cpufreq: Document allwinner,
 sun50i-h6-operating-points
Date: Wed, 12 Jun 2019 12:28:16 -0400
Message-Id: <20190612162816.31713-3-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190612162816.31713-1-tiny.windzz@gmail.com>
References: <20190612162816.31713-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_092833_967635_00F789EF 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner Process Voltage Scaling Tables defines the voltage and
frequency value based on the speedbin blown in the efuse combination.
The sunxi-cpufreq-nvmem driver reads the efuse value from the SoC to
provide the OPP framework with required information.
This is used to determine the voltage and frequency value for each
OPP of operating-points-v2 table when it is parsed by the OPP framework.

The "allwinner,sun50i-h6-operating-points" DT extends the
"operating-points-v2"
with following parameters:
- nvmem-cells (NVMEM area containig the speedbin information)
- opp-microvolt-<name>: voltage in micro Volts.
  At runtime, the platform can pick a <name> and matching
  opp-microvolt-<name> property.
                        HW:             <name>:
                        sun50i-h6      speed0 speed1 speed2

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../bindings/opp/sun50i-nvmem-cpufreq.txt     | 167 ++++++++++++++++++
 1 file changed, 167 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/opp/sun50i-nvmem-cpufreq.txt

diff --git a/Documentation/devicetree/bindings/opp/sun50i-nvmem-cpufreq.txt b/Documentation/devicetree/bindings/opp/sun50i-nvmem-cpufreq.txt
new file mode 100644
index 000000000000..7deae57a587b
--- /dev/null
+++ b/Documentation/devicetree/bindings/opp/sun50i-nvmem-cpufreq.txt
@@ -0,0 +1,167 @@
+Allwinner Technologies, Inc. NVMEM CPUFreq and OPP bindings
+===================================
+
+For some SoCs, the CPU frequency subset and voltage value of each OPP
+varies based on the silicon variant in use. Allwinner Process Voltage
+Scaling Tables defines the voltage and frequency value based on the
+speedbin blown in the efuse combination. The sun50i-cpufreq-nvmem driver
+reads the efuse value from the SoC to provide the OPP framework with
+required information.
+
+Required properties:
+--------------------
+In 'cpus' nodes:
+- operating-points-v2: Phandle to the operating-points-v2 table to use.
+
+In 'operating-points-v2' table:
+- compatible: Should be
+	- 'allwinner,sun50i-h6-operating-points'.
+- nvmem-cells: A phandle pointing to a nvmem-cells node representing the
+		efuse registers that has information about the speedbin
+		that is used to select the right frequency/voltage value
+		pair. Please refer the for nvmem-cells bindings
+		Documentation/devicetree/bindings/nvmem/nvmem.txt and
+		also examples below.
+
+In every OPP node:
+- opp-microvolt-<name>: Voltage in micro Volts.
+			At runtime, the platform can pick a <name> and
+			matching opp-microvolt-<name> property.
+			[See: opp.txt]
+			HW:		<name>:
+			sun50i-h6	speed0 speed1 speed2
+
+Example 1:
+---------
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			compatible = "arm,cortex-a53";
+			device_type = "cpu";
+			reg = <0>;
+			enable-method = "psci";
+			clocks = <&ccu CLK_CPUX>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+			operating-points-v2 = <&cpu_opp_table>;
+			#cooling-cells = <2>;
+		};
+
+		cpu1: cpu@1 {
+			compatible = "arm,cortex-a53";
+			device_type = "cpu";
+			reg = <1>;
+			enable-method = "psci";
+			clocks = <&ccu CLK_CPUX>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+			operating-points-v2 = <&cpu_opp_table>;
+			#cooling-cells = <2>;
+		};
+
+		cpu2: cpu@2 {
+			compatible = "arm,cortex-a53";
+			device_type = "cpu";
+			reg = <2>;
+			enable-method = "psci";
+			clocks = <&ccu CLK_CPUX>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+			operating-points-v2 = <&cpu_opp_table>;
+			#cooling-cells = <2>;
+		};
+
+		cpu3: cpu@3 {
+			compatible = "arm,cortex-a53";
+			device_type = "cpu";
+			reg = <3>;
+			enable-method = "psci";
+			clocks = <&ccu CLK_CPUX>;
+			clock-latency-ns = <244144>; /* 8 32k periods */
+			operating-points-v2 = <&cpu_opp_table>;
+			#cooling-cells = <2>;
+		};
+        };
+
+        cpu_opp_table: opp_table {
+                compatible = "allwinner,sun50i-h6-operating-points";
+                nvmem-cells = <&speedbin_efuse>;
+                opp-shared;
+
+                opp@480000000 {
+                        clock-latency-ns = <244144>; /* 8 32k periods */
+                        opp-hz = /bits/ 64 <480000000>;
+
+                        opp-microvolt-speed0 = <880000>;
+                        opp-microvolt-speed1 = <820000>;
+                        opp-microvolt-speed2 = <800000>;
+                };
+
+                opp@720000000 {
+                        clock-latency-ns = <244144>; /* 8 32k periods */
+                        opp-hz = /bits/ 64 <720000000>;
+
+                        opp-microvolt-speed0 = <880000>;
+                        opp-microvolt-speed1 = <820000>;
+                        opp-microvolt-speed2 = <800000>;
+                };
+
+                opp@816000000 {
+                        clock-latency-ns = <244144>; /* 8 32k periods */
+                        opp-hz = /bits/ 64 <816000000>;
+
+                        opp-microvolt-speed0 = <880000>;
+                        opp-microvolt-speed1 = <820000>;
+                        opp-microvolt-speed2 = <800000>;
+                };
+
+                opp@888000000 {
+                        clock-latency-ns = <244144>; /* 8 32k periods */
+                        opp-hz = /bits/ 64 <888000000>;
+
+                        opp-microvolt-speed0 = <940000>;
+                        opp-microvolt-speed1 = <820000>;
+                        opp-microvolt-speed2 = <800000>;
+                };
+
+                opp@1080000000 {
+                        clock-latency-ns = <244144>; /* 8 32k periods */
+                        opp-hz = /bits/ 64 <1080000000>;
+
+                        opp-microvolt-speed0 = <1060000>;
+                        opp-microvolt-speed1 = <880000>;
+                        opp-microvolt-speed2 = <840000>;
+                };
+
+                opp@1320000000 {
+                        clock-latency-ns = <244144>; /* 8 32k periods */
+                        opp-hz = /bits/ 64 <1320000000>;
+
+                        opp-microvolt-speed0 = <1160000>;
+                        opp-microvolt-speed1 = <940000>;
+                        opp-microvolt-speed2 = <900000>;
+                };
+
+                opp@1488000000 {
+                        clock-latency-ns = <244144>; /* 8 32k periods */
+                        opp-hz = /bits/ 64 <1488000000>;
+
+                        opp-microvolt-speed0 = <1160000>;
+                        opp-microvolt-speed1 = <1000000>;
+                        opp-microvolt-speed2 = <960000>;
+                };
+        };
+....
+soc {
+....
+	sid: sid@3006000 {
+		compatible = "allwinner,sun50i-h6-sid";
+		reg = <0x03006000 0x400>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		....
+		speedbin_efuse: speed@1c {
+			reg = <0x1c 4>;
+		};
+        };
+};
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
