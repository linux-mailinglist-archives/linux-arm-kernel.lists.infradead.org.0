Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025E75EC24
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 21:03:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2Q8pPklQtxqtWx54KDmRQ7jkG/apaSVZdXZc3pOSydw=; b=jDU7PBSK6z/OmalrF7lvVYjhPK
	J0I0nTJrPqfxa7EUOLwMyUvVaRMDSIL2FWoVZtp0jUCNuXO1MeFVIGp5KXBY7dMIehCepsK88Rxk2
	X1/oec3EUmYKOETyXCXgwLg9Dm4HIWZx2jTa5aZM/fUeZJAm07/vP4B5rqsfsnlbZQDfHqUSeY9Kn
	2h2u5zsm9H95BKEtjQKBzstID86ZCo5aDhPxwssdWTk5VCSdvJiaiACS/tD7w2Mb4OCWjZ2B9X6ug
	XhH1e6dGq3aTY1O8omW2bGAuG1jQuP/+OwOYYJrJQFljZrsDcJuUoY/nlvmrkh8wAPNdfuBziqw3/
	BmL9CTGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hikX9-0006Li-Je; Wed, 03 Jul 2019 19:03:11 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hikWp-0006D8-E1
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 19:02:52 +0000
Received: by mail-pf1-x441.google.com with SMTP id p184so1717083pfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 12:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=BC0nre0H3tvgyc6oXK8ECt6TQUf5AweD/WSSfFgWqFY=;
 b=ma8dAgiYcin9n/ZPxPg0zlPmu1i7ueMiEvkJWEG5PthI85vwAFigHVuv86JwJCsZrH
 nZtW+R7WO0y3zuoTbd4VKmDii5btn5hS33s+M6SuWcg9fXpOcpOvryrMEgjaNIxYeDoe
 hI47qE0VOD1BGNlC+VJz+7DLBhf5H4yS2uH1MkHjybGHFd1wNoB6RLuROyBMMoYP2m+9
 RmOOLVMTn+5cE6/MGQdtqwHpET3PlcR77+o86jLz3FCgGxWw+w3GRvFmbT/2vqnmO98W
 Jslm2GWQnc6pdf9Qzvd/pb216f1HjtfH2T2/Kz5TqH7hjdjhALYeYNrQ7fkI8ZPy0KQS
 klZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BC0nre0H3tvgyc6oXK8ECt6TQUf5AweD/WSSfFgWqFY=;
 b=Oe05XEAOUVFUodqGQP6Vt/AdWlC+tvhWxafeGXFJIZWPPM/fR6xeGgFatOkKLcuh8v
 D2Y/n7/C4vD4mAkdgdWWVAjZ+9kBrGiFUs9wnF1WArQCfG2geE4Ycc6TvhsG8ZkcKPOT
 C3Lss3xWZ1Nu8kvQfj/HNxC2xQSSw6InNSCpbhn9nphSCR/eOG8G5g8evDcG3h4j04Ep
 RyMDEaKUhasZGrPW3SLEGz+tpRuFo4i3mBBLzjNrYN5xgUdtH/fBYAqZeDQqCPc25zm9
 TETeL+1VIKnkuOygvs3Ce5DWHl/11F3wD/TQ5yfNrt8+Og1xbRfvpMJylxxUHMYFJubv
 hKmA==
X-Gm-Message-State: APjAAAXiuBXYxYMqe7wUe2KamN8ImnKuul0KQC+mdi/At6zICy7I9O92
 9G2D5dI2ayKg5Vu8zuVE+k3S
X-Google-Smtp-Source: APXvYqyufa3DkEExHyBid0gOffNH2ZRyxbIRfu+jKWfFJLJlxWgytv1PVRZo7b8pHu4aIkau6/cO7g==
X-Received: by 2002:a17:90a:d998:: with SMTP id
 d24mr11734240pjv.89.1562180569251; 
 Wed, 03 Jul 2019 12:02:49 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:117:d72f:1d34:d0bb:bb4e:3065])
 by smtp.gmail.com with ESMTPSA id j14sm3631503pfn.120.2019.07.03.12.02.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 12:02:48 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org
Subject: [PATCH 1/3] dt-bindings: media: i2c: Add IMX290 CMOS sensor binding
Date: Thu,  4 Jul 2019 00:32:28 +0530
Message-Id: <20190703190230.12392-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190703190230.12392-1-manivannan.sadhasivam@linaro.org>
References: <20190703190230.12392-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_120251_516001_8EDF93EC 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
