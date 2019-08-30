Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B5EA33A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:20:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4G64q2FKpENky740TruXPThK7/8qyEoRlk2/JDNADXY=; b=o+JuJQ8Azj6f16+B+4hovqURFw
	VS896WDEsG1DXkf9wGkt85V5Psi0k/Ld7vhxy2nZc3zDfFSGFVG3Rn/kmpnyoU3KszbPdMAk8UBIy
	6k6+ws6tVZXNjcnnpochtXBTWnWJX65OQaqMjDSUDqtO0A0H14Bg/7oo+MdLHeSZsrzff3gHF/1Fw
	YZ7N9qrlSeoa0QX253o9HeaxcQpmEU9gXMFS6UOHJzfwshQorVLfQkH0wb7PkKJIOfblyRdjbYP8J
	kxC9QnY05aBHG6htgJ9/h5cIzpJNr438HkMp2MD2WWg+BZIWKEAQPkk501UfZEUttnYAealsQi1DL
	Gez2e9qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3d5A-00014g-3A; Fri, 30 Aug 2019 09:20:36 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3d4d-00084F-97
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:20:04 +0000
Received: by mail-pl1-x641.google.com with SMTP id t14so3081981plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 02:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mF/OnrJ00SbahU15HvzXY+I7DAqSAdHto9JRdxhPxic=;
 b=Ux+jFtwdTk9Ronis0odb2Ycgp0S8vbePlVivVxngSn0nWhes+7VjYfxqI7v38XNJAq
 z+L5xNuAA2giKtmAcBW78A7RMcdyvoy57MuKHKukH36N/z4WPVhWysQdDAkW9LuCdz2T
 XUxGYTUK0VAhAHj20aNla4/UKJDnBUqLk0xWFFI5oSDzx48wqtTtk0xJtMvqvpkgurNM
 eHqQVSWE9gqvLdAJh4mZvqpqiEoYLVJGLLtBLQKuwy0g0U9crR/G+hqVjqQNXO9K+0Wh
 uWonQsDM7nfyk96SON7K1ri2/YJhyEOSS5yQNm2NVphighYDB8AvbP6A2BJdlAaKfjtY
 XIXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mF/OnrJ00SbahU15HvzXY+I7DAqSAdHto9JRdxhPxic=;
 b=TpAKivira7Q0eJFPZSH3wPdIkrAcngTLb/nDPmROFdWw4/w6iQLbVJHfogrOt7yfcc
 GW4wcsEHh6nogrO2Tw0vpE1tb+yQUf5+iA4jVaJIPGEx0RKJ3M510qes90JnOD9XQBum
 fZuqimzYT7I9sizQ4rpf7XwSJBBNPm6nbRZkA17Dy8DdU9K1+kk6l9JsO+Is/FS1e2ko
 /pFMoV0xoUKkngc340iocxJ/IjSBhyCRned3cbzokLarpFveM5eoWa+3Sd9dSD4my+4d
 NKeRT2onPWkYz1JiWBR5WCvYrB76U/moVrExHl5NCpuIJkuKtltI3UJWq4rqZYGeqzl9
 /oxQ==
X-Gm-Message-State: APjAAAVSBlzicYmaUJqaCSZItZzw0uxpJxpF7HP+dIcJeOZD74ecPzO2
 jl5QjPRDSgeQdkNvGA7P61Th
X-Google-Smtp-Source: APXvYqz5A+CcX7gq9fWKGI9UWFItRu3q1idaB7iqtUj4bbysDpItsyNSNqG0GqxsFoPU+L2K5PUflw==
X-Received: by 2002:a17:902:e506:: with SMTP id
 ck6mr14969628plb.132.1567156801843; 
 Fri, 30 Aug 2019 02:20:01 -0700 (PDT)
Received: from localhost.localdomain ([103.59.132.163])
 by smtp.googlemail.com with ESMTPSA id
 g202sm3142676pfb.155.2019.08.30.02.19.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 02:20:01 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH v3 1/3] dt-bindings: media: i2c: Add IMX290 CMOS sensor binding
Date: Fri, 30 Aug 2019 14:49:41 +0530
Message-Id: <20190830091943.22646-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830091943.22646-1-manivannan.sadhasivam@linaro.org>
References: <20190830091943.22646-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_022003_399394_060C52D8 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree binding for IMX290 CMOS image sensor.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/media/i2c/imx290.txt  | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)
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
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
