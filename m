Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 223D783258
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 15:10:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T7/SpIlWN8YNqinvrFCeqBy3U1GwszgsrrtV8lumCiY=; b=QheMpQ+NoISYUjmpsECCpPKAYv
	lta6LZejKqNhxWyHWu6Yru1MkFyw8EVxb25SjSu/8eWhy35HKco3tQBJeg4DxDSLT2pbuU+8VCQOQ
	cbZIcpuXjIx5HNAQHI9Zo/pQkADtfI/4z/1b+eueHqWYWUfThppP/3ORsmJgJONGSd37C85Shj1rj
	syAbxdybFDYkWDwEoToJaw8U4/kARTkMrt6u5P1DM6f+bVAUqXar4taInGk91r7bcpc976qXAUsGg
	QThNeDCsrJQMwX+2OuX6oYXTKabNeIqGctZ2v0anY+2i/6gT1AK6Jnh/GhtwpMcswQibTuewMrrfN
	NZ/VzKqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huzEK-0003Th-Dx; Tue, 06 Aug 2019 13:10:20 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huzDw-0002va-O5
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 13:09:58 +0000
Received: by mail-pf1-x443.google.com with SMTP id 19so41483570pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 06:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=C4Azk3N1QldkmkijyZBaYZs0K+xeT/HqprwCHyNXS4g=;
 b=esx00ei9uxuWTFn3HN0Cfx7KK7QzWhNoYu3IVDf3Cd9cBS9onLD3xbhIAB5h+eoEXl
 KFHq1lVRB+oS5BGkF2ucwnScf1XKmbtFXJGZ8uYYYBS+pjAt9Iv8l9jyQDG1gXABXmM1
 HwAOhfVUBDGx2A7qQlOG0oigCdSnWsUxtmIn9WhUXke71aBLvQuJmAg9qplwpK+LWq27
 GfXmH1+AjWKH3tBU1XH22jOoJvCeJL/iibHxtdD+FlEx2qyfacdxDBlTtlFIFMhhirnZ
 NtxwY3O5HodQ6SKXPIhCX9z9j0/mVZdIVGo++hn9oFwBfclZqguc99dTOM+boDACcR1f
 xNEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=C4Azk3N1QldkmkijyZBaYZs0K+xeT/HqprwCHyNXS4g=;
 b=H3yYUgAtjyiCVYNkvg3XNl5sJahrhjchRhXeo5rl4TDc6uHYB3Rxb1MABWVHa7BcV+
 /ektBrxWRLeRbO+riZCeReVfUwXNu/elhbb8yBDK8qaYI4QL8MpCMmLKq5akIg+UW0iw
 YZR8k9JGa4S4OUnqR/MIAWM+HzMsGSqxnPWrd9YEgc1AZcdUPW0d6CFQ7el4ffs88EOi
 r7Y5hy0nHgXWl6l+H7KapayaDykNf31FfXmlTybSrkqVTO8lS68CN26Yy033TAOI8MW+
 1xvBXhVUewDKciJ/GBPzzQlj1rj6vZXtS1DwrO5NjLS/Xid3heRKZu3SdDe0RLNPfRVh
 bJTA==
X-Gm-Message-State: APjAAAVwQwS0HwkqdVL2Yyy0YaZsI0Cz/HGJph/935ucmtQEZ9WdnfSu
 TycIqTGmTDMnSYoA+/zxZXpz
X-Google-Smtp-Source: APXvYqyVw0eUyqoyVUidAiq1F670HWkNCzwAqJlQ+kXljU8Bn7Utb4NHlePOEGT0+QHolZwwFdAdGA==
X-Received: by 2002:aa7:9819:: with SMTP id e25mr3490211pfl.47.1565096995489; 
 Tue, 06 Aug 2019 06:09:55 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7180:928a:153d:caa0:477e:f9fd])
 by smtp.gmail.com with ESMTPSA id v8sm73715371pgs.82.2019.08.06.06.09.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 06:09:54 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org
Subject: [PATCH v2 1/3] dt-bindings: media: i2c: Add IMX290 CMOS sensor binding
Date: Tue,  6 Aug 2019 18:39:36 +0530
Message-Id: <20190806130938.19916-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806130938.19916-1-manivannan.sadhasivam@linaro.org>
References: <20190806130938.19916-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_060956_867758_247CF7C1 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 .../devicetree/bindings/media/i2c/imx290.txt  | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/imx290.txt

diff --git a/Documentation/devicetree/bindings/media/i2c/imx290.txt b/Documentation/devicetree/bindings/media/i2c/imx290.txt
new file mode 100644
index 000000000000..7535b5b5b24b
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/imx290.txt
@@ -0,0 +1,51 @@
+* Sony IMX290 1/2.8-Inch CMOS Image Sensor
+
+The Sony IMX290 is a 1/2.8-Inch CMOS Solid-state image sensor with
+Square Pixel for Color Cameras. It is programmable through I2C and 4-wire
+interfaces. The sensor output is available via CMOS logic parallel SDR output,
+Low voltage LVDS DDR output and CSI-2 serial data output.
+
+Required Properties:
+- compatible: Should be "sony,imx290"
+- reg: I2C bus address of the device
+- clocks: Reference to the xclk clock.
+- clock-names: Should be "xclk".
+- clock-frequency: Frequency of the xclk clock.
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
+Example:
+	&i2c1 {
+		...
+		imx290: imx290@1a {
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
+					clock-lanes = <1>;
+					data-lanes = <0 2 3 4>;
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
