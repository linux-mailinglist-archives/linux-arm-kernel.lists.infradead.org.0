Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 041DAD3824
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 05:57:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7Ybp7Io+xGkGI50nrmp4lP+0rsHSumAgLOIQc7UrNsQ=; b=uTz7d+u8ZcoXvizF+ths+yN9b5
	+lCVdbZ0suk/UcA4UKYqWCAMX2xq9M4B2vA4mdv18iDgNcb2kTjO8ljosqHjghrKTgaHi7ni8aLBW
	LfvPn3RRoknvsO6LoTma7kcog6nGHW5gy6FrPManMJ0gxquXxmL+jzewMrJOcwrHdaycQ68HwwfQy
	IL9mSGYNk4aaL8rPh77TShNrAle0h0/ZuwvUOP+YZMgK0kM9G1aXRm/jjZnFzE29bLga0qiIsRiAZ
	rzB0SiW3eVKN3TzobbrTQdYZ8xFoDIuO3sLlRKvPxlWTVuPJrj7/xnKTWNvrBhrQotHpT9rB85Vnv
	QwYMB8Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIm2y-0000uW-CD; Fri, 11 Oct 2019 03:56:56 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIm2b-0000kM-6p
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 03:56:34 +0000
Received: by mail-pl1-x641.google.com with SMTP id f21so3811283plj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 20:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1cUKYd2JGuOPb29vx0RY5RciC85cA8yW6+caoygW+J0=;
 b=aWuycG4LboxAq7KuhuLikokhD/yMdUvlgY6lN1NrGhIhuXttaZ/skjSMPHQ6DMHOcW
 f45MuDy63ux0Y0y0K4otxgKbPAS/acxq25kJzWDxNcEjUeQnqYUiKmGpXgUPhZqU46fd
 PI4rDcnM7AcOK2EOEuw82O2dmWvBIxDlPHu8l+Z2P3kKXmOo+KkIBhvWcs7lAwdRu73E
 nYR0AkaduIwE2d7Zg8X2Fy5SjQ4Yx4jTucCui11XylJseHg0lp6BN0ugdXalySWH6nij
 EFDcrwkc0AaatAdq6vXIgzxHYoYy325iFvP8nAG30i9R1pfJkdARxa76Nd/l1WZ5g0AJ
 oJbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1cUKYd2JGuOPb29vx0RY5RciC85cA8yW6+caoygW+J0=;
 b=VKxc8u6OV9mGdNDeM7wKGA5i3JfY0+aNPewMhXLpdJqJotUvKoCE1ICAZ3PTVdUPkK
 XAYQplTe6QtnjTPITukcOVTkZ1Di6zvKSOiS3VCRpkb5BFeXb8c33usUomEKjkgKwBCR
 U18yc7+anCvMOgrQlcSGTLKs1Ioym+VzQgexVcIPF1NmaiOVFF+tdYYaojfKAM+O0xsA
 udPFP1O5RrcBu/QZOwKpieDPgcIoybRXa/SzbO4smSncQvvrOPjx361M2J5WlI2FQgKh
 hbgs1pN10QW7EfskxUxBg/8hl/s3rQnOgvSPCLNlbHZ6Lx+A3Bm2eSlBSjiMrAW3i7f4
 XIsg==
X-Gm-Message-State: APjAAAV/W7eq5qq69s4OiXeJndA2zFq3XJMCzZSNbx+wEFgwGjFAMZi0
 oAoRnlTxzLV1xdv3G/XE5sVI
X-Google-Smtp-Source: APXvYqybv4dUMKgehLfH8auvSwt7/o2lRH+/cZX47WXX599yek7j6tmTPlwDYhmglObLBsJJ9dUh5g==
X-Received: by 2002:a17:902:904b:: with SMTP id
 w11mr11183843plz.182.1570766192428; 
 Thu, 10 Oct 2019 20:56:32 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:638c:660b:18a3:ff6e:e66c:65b0])
 by smtp.gmail.com with ESMTPSA id b185sm9534210pfg.14.2019.10.10.20.56.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 20:56:31 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH 1/2] dt-bindings: media: i2c: Add IMX296 CMOS sensor binding
Date: Fri, 11 Oct 2019 09:26:12 +0530
Message-Id: <20191011035613.13598-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011035613.13598-1-manivannan.sadhasivam@linaro.org>
References: <20191011035613.13598-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_205633_260789_29DEBAB9 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Add devicetree binding for IMX296 CMOS image sensor.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/media/i2c/imx296.txt  | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.txt

diff --git a/Documentation/devicetree/bindings/media/i2c/imx296.txt b/Documentation/devicetree/bindings/media/i2c/imx296.txt
new file mode 100644
index 000000000000..25d3b15162c1
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/imx296.txt
@@ -0,0 +1,55 @@
+* Sony IMX296 1/2.8-Inch CMOS Image Sensor
+
+The Sony IMX296 is a 1/2.9-Inch active pixel type CMOS Solid-state image
+sensor with square pixel array and 1.58 M effective pixels. This chip features
+a global shutter with variable charge-integration time. It is programmable
+through I2C and 4-wire interfaces. The sensor output is available via CSI-2
+serial data output (1 Lane).
+
+Required Properties:
+- compatible: Should be "sony,imx296"
+- reg: I2C bus address of the device
+- clocks: Reference to the mclk clock.
+- clock-names: Should be "mclk".
+- clock-frequency: Frequency of the mclk clock in Hz.
+- vddo-supply: Interface power supply.
+- vdda-supply: Analog power supply.
+- vddd-supply: Digital power supply.
+
+Optional Properties:
+- reset-gpios: Sensor reset GPIO
+
+The imx296 device node should contain one 'port' child node with
+an 'endpoint' subnode. For further reading on port node refer to
+Documentation/devicetree/bindings/media/video-interfaces.txt.
+
+Required Properties on endpoint:
+- data-lanes: check ../video-interfaces.txt
+- remote-endpoint: check ../video-interfaces.txt
+
+Example:
+	&i2c1 {
+		...
+		imx296: camera-sensor@1a {
+			compatible = "sony,imx296";
+			reg = <0x1a>;
+
+			reset-gpios = <&msmgpio 35 GPIO_ACTIVE_LOW>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&camera_rear_default>;
+
+			clocks = <&gcc GCC_CAMSS_MCLK0_CLK>;
+			clock-names = "mclk";
+			clock-frequency = <37125000>;
+
+			vddo-supply = <&camera_vddo_1v8>;
+			vdda-supply = <&camera_vdda_3v3>;
+			vddd-supply = <&camera_vddd_1v2>;
+
+			port {
+				imx296_ep: endpoint {
+					data-lanes = <1>;
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
