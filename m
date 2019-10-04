Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC85CC020
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 18:06:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=20qNqzgS6oEYek6DNbGX5nRUjcE6U9R4ABT4FAWTzM4=; b=KhLw124iBgkOZ/8r+/Qc8cIPpK
	decYrLv4uIZ3dspj04gDoZt5LLYgJCaA/nZLLvkoo8Fj7veIqVW4TTCRC2ohm5ITfrSejVnni5Bj9
	5wxmzI2mIIacEiSoNwM2DnO6EQH5f90rCft9FH4ybwVsyYDCfI8i4Wds5YXJsB5ZpIA6yt98taudK
	B/yoHoITJk97YtGNPwJJ1PQMGB1Y9la74hFPhiHJz6DKzkD4yZJnv4qcMlmXmc0F/p8g9+qx1eKqW
	q3IlJE53EYvwz39FK+W3p0EsWSNKBefCXrYyEITodJJmLCpVYXw3brX0Xt4a9GfbPk95BaEcFHsX4
	ws3tLFyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGQ5t-0005Vz-0n; Fri, 04 Oct 2019 16:06:13 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGQ5P-0005FY-CC
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 16:05:45 +0000
Received: by mail-pg1-x542.google.com with SMTP id v27so3979115pgk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 09:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GRyfXnoKWvtKyG57W37AUlln8akpvDYr2Xx/dz2ORHU=;
 b=uLdJG7tkav2IAy9bTjV+pwHZWiMRG+f1196ehm3mr8C+tpptuKOvJ8t5RtwkH8sm/K
 JLCyw34WX1e8crRwtm4vWkcCWccQtu4t/p3wJqjS0D3y9SeCG/jszGbU19Cuux/TBPff
 2pgUeb30c0Ma49RZTIGxdeCGWHVYNREf1t5yWrlJzKf5GCGJNQlKONs/oQiXHQMglGqx
 iwYI56jgL7YASZ6rACjQNf57dpH5dKWU43QE+WGSF3PTqiQapjHQho2JiDFbllWD8aBK
 d1G/JaPSeq3d4y+qaH+uwkl3U0KE0URG3TdxNy/KUYatcCng2vxA0zS2ZLRQ3tDCRQmM
 bbWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GRyfXnoKWvtKyG57W37AUlln8akpvDYr2Xx/dz2ORHU=;
 b=tcjs56Of6X3K7xiJyKqrKF+BEuQVAtRC9ooSRQIeAtAYRNjKogRNdOnbDrWotBgQZA
 Qr5E4gdhl51obRz+NelWNJ9l1dyDaZshqjvw3fcN/bYh1wyqj7+zRLEn29PbOCbLVXjX
 ldRC1BNGEdsKCkBqqDBX/YV8vFFGnbd2DKpsZoPOHi/LeX3zP7qAdJFwoEavQvzhiT+N
 YxvuYKDV6LmoXZNaknd2na8zXm/DyU8ADrVxJAzkoP8mkGeOHitxnmq3TyiM1f9qxzZQ
 MECsRTlQBDLIGBU7FQHSuwjcDrwTFYvLDJQKLR7X/1pZOD0HFVeiuyzOHaG0GU9oTa8t
 zOlA==
X-Gm-Message-State: APjAAAXUNbxACg0EgmqfOlyb07zJC+Zib4WZ2ov3F9bnpW2LQF/berGB
 NZVJc4ky3uaAv8fsBRMKJa1R
X-Google-Smtp-Source: APXvYqzeHVzT2teGBPgP2k+3EJkEPoCXJ5wbb81+QCX/AhHJ/bo6/WWAewIMF6WVKQKwIud7PVt8qw==
X-Received: by 2002:a17:90a:8d85:: with SMTP id
 d5mr17692406pjo.45.1570205142646; 
 Fri, 04 Oct 2019 09:05:42 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:648a:e40a:3174:4ae1:69ba:aabb])
 by smtp.gmail.com with ESMTPSA id b5sm5402254pgb.68.2019.10.04.09.05.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 09:05:41 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH v5 1/2] dt-bindings: media: i2c: Add IMX290 CMOS sensor binding
Date: Fri,  4 Oct 2019 21:35:24 +0530
Message-Id: <20191004160525.16716-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191004160525.16716-1-manivannan.sadhasivam@linaro.org>
References: <20191004160525.16716-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_090543_457583_B4BCD024 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree binding for IMX290 CMOS image sensor. Let's also
add MAINTAINERS entry for the binding and driver.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/media/i2c/imx290.txt  | 57 +++++++++++++++++++
 MAINTAINERS                                   |  8 +++
 2 files changed, 65 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/imx290.txt

diff --git a/Documentation/devicetree/bindings/media/i2c/imx290.txt b/Documentation/devicetree/bindings/media/i2c/imx290.txt
new file mode 100644
index 000000000000..a3cc21410f7c
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/imx290.txt
@@ -0,0 +1,57 @@
+* Sony IMX290 1/2.8-Inch CMOS Image Sensor
+
+The Sony IMX290 is a 1/2.8-Inch CMOS Solid-state image sensor with
+Square Pixel for Color Cameras. It is programmable through I2C and 4-wire
+interfaces. The sensor output is available via CMOS logic parallel SDR output,
+Low voltage LVDS DDR output and CSI-2 serial data output. The CSI-2 bus is the
+default. No bindings have been defined for the other busses.
+
+Required Properties:
+- compatible: Should be "sony,imx290"
+- reg: I2C bus address of the device
+- clocks: Reference to the xclk clock.
+- clock-names: Should be "xclk".
+- clock-frequency: Frequency of the xclk clock in Hz.
+- vdddo-supply: Sensor digital IO regulator.
+- vdda-supply: Sensor analog regulator.
+- vddd-supply: Sensor digital core regulator.
+
+Optional Properties:
+- reset-gpios: Sensor reset GPIO
+
+The imx290 device node should contain one 'port' child node with
+an 'endpoint' subnode. For further reading on port node refer to
+Documentation/devicetree/bindings/media/video-interfaces.txt.
+
+Required Properties on endpoint:
+- data-lanes: check ../video-interfaces.txt
+- link-frequencies: check ../video-interfaces.txt
+- remote-endpoint: check ../video-interfaces.txt
+
+Example:
+	&i2c1 {
+		...
+		imx290: camera-sensor@1a {
+			compatible = "sony,imx290";
+			reg = <0x1a>;
+
+			reset-gpios = <&msmgpio 35 GPIO_ACTIVE_LOW>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&camera_rear_default>;
+
+			clocks = <&gcc GCC_CAMSS_MCLK0_CLK>;
+			clock-names = "xclk";
+			clock-frequency = <37125000>;
+
+			vdddo-supply = <&camera_vdddo_1v8>;
+			vdda-supply = <&camera_vdda_2v8>;
+			vddd-supply = <&camera_vddd_1v5>;
+
+			port {
+				imx290_ep: endpoint {
+					data-lanes = <1 2 3 4>;
+					link-frequencies = /bits/ 64 <445500000>;
+					remote-endpoint = <&csiphy0_ep>;
+				};
+			};
+		};
diff --git a/MAINTAINERS b/MAINTAINERS
index f7c84004187d..0ee261fca602 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14962,6 +14962,14 @@ S:	Maintained
 F:	drivers/media/i2c/imx274.c
 F:	Documentation/devicetree/bindings/media/i2c/imx274.txt
 
+SONY IMX290 SENSOR DRIVER
+M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+L:	linux-media@vger.kernel.org
+T:	git git://linuxtv.org/media_tree.git
+S:	Maintained
+F:	drivers/media/i2c/imx290.c
+F:	Documentation/devicetree/bindings/media/i2c/imx290.txt
+
 SONY IMX319 SENSOR DRIVER
 M:	Bingbu Cao <bingbu.cao@intel.com>
 L:	linux-media@vger.kernel.org
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
