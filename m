Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 010E1C9B2F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 11:55:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4G64q2FKpENky740TruXPThK7/8qyEoRlk2/JDNADXY=; b=u9dn4JrKivq5Ybt6N+hcZv6D4n
	m4L6X1UOiPXCCYojIIGTA1GYHkbysi8KC6U0hQl3B5cHBHP6VPxvQHkI53YbnHb3bKn+9d8ndc5un
	+3XcKQmcrB+H3YPaC+kti0jm3RtmI2lswmnI68n2aFjZoqVLlN0UBcZ9e6rSP3Sdu4Qshvs6Ydpjl
	XxJD0sB4iQ6uY4XpVADxV3aAFq4oRGeefetBBhe9z6NKw3TtL+eGl9YHwPNArS7RyDlkeHKPX+xsO
	PXbKXn6o9KWceTXolAnQ+/DwDD68Tyz3nVOJC2xnoKCbfBn/sL95Ga/XWulKrFkqmsoNbC3HHIVSH
	A+1f8dug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFxq1-0002Kp-2z; Thu, 03 Oct 2019 09:55:57 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFxpe-0002Dj-A0
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 09:55:35 +0000
Received: by mail-pf1-x441.google.com with SMTP id 205so1426031pfw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 02:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mF/OnrJ00SbahU15HvzXY+I7DAqSAdHto9JRdxhPxic=;
 b=LfdYYcFIQHIwaf5sUf2pjOpgY07IahMZdLDiRgn3d4b3XE8x3Hw3FollPplUWtmtx1
 jIrH3KxhGy7fnRVwJSDNTV1lJ6isrfOzQvmWEPHVUElCUYDsqVbaYPQZzVmIBL3XOpXF
 j/kimQ8aSE9ipOJ9dgqOCMmCkPKf9/Ai4i5YlIP2FSBABhmB3g4Ql76gyVhZ1APWiwG4
 nsRVTqIHbQgHDRuyYTTXt1Oi6NawFyeDtWNaNnVLWeddb6ZopOwAxeU2/Llh4JbtZfw0
 TkuoBx8hIl7R8rexQ7YAJiY4G3bSymX6NXtq8J+A0/z4/161bK4bRfu1XmjOkluxV7jf
 2Kpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mF/OnrJ00SbahU15HvzXY+I7DAqSAdHto9JRdxhPxic=;
 b=V7ZUu7OIaC6ZhymNSNv8caM4nZdDlGIT2wDbEut/DtVjE0sXLBeSu3ybAyS8XeNoD8
 1pwfcwKmhZaWt6ChhO8QXpg3O1jtM0u0r508Xp6VuFKoFhUIhwkfb3+mSw0AUshqQD79
 s78vI41ooDoP4YUn3i4JlPDhv0vZFmFF2ACZGc2MznnoJd3RE6EAe/4Zj5tmVZhfDP5q
 EioUFRciSXU0aEtdPhBwZr5iqFzbDFKssUKogzw+VJuJbC/rTvgbM3E1+Wi0esYU/OKe
 JD2TvQTC625FZTOCDkjE5dzpZ5HE2TTeA0qM/zu1UxDwGnauvPAUWE9Q2LkBy0EIo2dY
 IR7w==
X-Gm-Message-State: APjAAAVIzloK4zNAovelhMs5dWMovuFSpcXzqS7wMjJqVyySQpl6yzt/
 pXPF4ev2RKXr1/xYlgWvHOJA
X-Google-Smtp-Source: APXvYqwVL6jU1EIuGWRSFQLQqzB7ut3zFEA/Ujk3BGChKGNjrLA59u3xDa6jeqlx0a6IZhKVUV3zKA==
X-Received: by 2002:a62:7a94:: with SMTP id
 v142mr10259174pfc.121.1570096533516; 
 Thu, 03 Oct 2019 02:55:33 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:801:ac5d:fca3:6f38:70fb:67fc])
 by smtp.gmail.com with ESMTPSA id v3sm2346171pfn.18.2019.10.03.02.55.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 02:55:33 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH v4 1/2] dt-bindings: media: i2c: Add IMX290 CMOS sensor binding
Date: Thu,  3 Oct 2019 15:25:02 +0530
Message-Id: <20191003095503.12614-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191003095503.12614-1-manivannan.sadhasivam@linaro.org>
References: <20191003095503.12614-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_025534_392901_C7A1BA4C 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
