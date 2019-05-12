Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF4C1AB34
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 10:27:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bgBBX9QGRD+H4AuCX2X+pO3qH36GCvR+hIcQwUJcP7s=; b=mvDrnwcygqVkeh1nC78nzq3O06
	HvjwXQaNNMzPy52obsQLQihN35ITzM8LLntg9DuxwDUQM9durfVP7WmJgEZrQOSG2DtPvdivbuOab
	8FGgmAvPioOjza5xUFM077FJ7JaWFdPq8FAmtXzaqQx7oMdClxQd3KkPDg946LgaMjTNaX5bN7YNN
	rAXC0YWDUZqRw0b31herCdKMjJyq3QWScnLVTtFNmRXNA7vjyYPdrp2Lr+y42JQ7JDiShbRlnNklw
	TytC+msKe04SRoKpfb5yDwLcQSjiUmqe6DU/++nREANBVpHlU+2yQlO3VV2wKCcuoQNMv+RmYYulw
	0hV2gGkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPjp2-0001e1-Jz; Sun, 12 May 2019 08:27:04 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPjoS-00014B-I8
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 08:26:31 +0000
Received: by mail-pf1-x441.google.com with SMTP id g9so5489386pfo.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 01:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qI16oqs6X+YZXj2yLfBOsFJ0yl1UeyG9NZW0E4qFEjM=;
 b=aNTi/o2B+xeystVa+Q3aNwsJJV+tvjZ2fAEK/aibVWkK9S6v+PEwnez16nUwBe1qS8
 upiIjBaoImpcTzZmnd2zg+ZNfHl4G9Gtj9wJyx/MeMH4rvgv9jRjHDAHZKmjgaNCIoYt
 ZhPCrUXvEAxzeOJBttD9d/nSYnwcgncT0lfVkCX/P9rHPTfvzH+mvOBGyYQeIZ08+/nt
 E4wp+KD5lNwl2y/hcYcwzfFeoJB4i9BD21y1V5TjiL7xpZI54mI995MwBx7oRqjMPULL
 cyYzBD/jHpXbPMm6CdpkN9Y09H5KG/zNuginFXcFDxhxiBW5TdnlbZPVboQYf9AZDKQX
 +gTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qI16oqs6X+YZXj2yLfBOsFJ0yl1UeyG9NZW0E4qFEjM=;
 b=lc0yLczp/MTmM1eSqzco/hggQGXNS/ypdyarNN6UroqjU+2qP7delMoUd/vBPtcPSl
 p/bwrw5RlRKKLRo/Zifa6Ay+39gOd5YnxgEIrP0vZhMYu/hEDct+SuwUOuNTUnmTvgmC
 /XDddrye2Re4XJVW5t9liRbZ394VdFtkzQ5G0FypTT7y+45m1Gw4WNavbPETZs36uBLB
 rHdlDo7/6Y762LM4ZhYr9tYe5y4vUW0RxCh1mFD3axGQU9HBX1Q8yI0IO9pXOGUupVG9
 EQ2ysSJr7k4//K2MRTPdzvVcPA+wUMgpacIEb1Iz5n2101bvAEY62xcx0u0kTvjff4Wz
 96Bg==
X-Gm-Message-State: APjAAAU4bY8z8Kkx/7bkki0ReyDoPQofNmbnUdBcoUV9hZafaPhVC1ZD
 vrdFXZk2DtjQWIzeC+JJ1cg=
X-Google-Smtp-Source: APXvYqw0BUy0j28XMpYRMC1njFl6TsjR5ScQQirgG+92GPsuGEoaMq3sHF4jM3DGqBY3xKz/pGmRVQ==
X-Received: by 2002:a63:8dc9:: with SMTP id z192mr24480707pgd.6.1557649588155; 
 Sun, 12 May 2019 01:26:28 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id l21sm14297789pff.40.2019.05.12.01.26.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 12 May 2019 01:26:27 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: tiny.windzz@gmail.com, rui.zhang@intel.com, edubezval@gmail.com,
 daniel.lezcano@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 maxime.ripard@bootlin.com, wens@csie.org, catalin.marinas@arm.com,
 will.deacon@arm.com, davem@davemloft.net, mchehab+samsung@kernel.org,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com, andy.gross@linaro.org,
 olof@lixom.net, bjorn.andersson@linaro.org, jagan@amarulasolutions.com,
 marc.w.gonzalez@free.fr, stefan.wahren@i2se.com,
 enric.balletbo@collabora.com
Subject: [PATCH 3/3] dt-bindings: thermal: add binding document for h6 thermal
 controller
Date: Sun, 12 May 2019 04:26:14 -0400
Message-Id: <20190512082614.9045-4-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190512082614.9045-1-tiny.windzz@gmail.com>
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_012628_914543_F294E444 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds binding document for allwinner h6 thermal controller.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 .../bindings/thermal/sun50i-thermal.txt       | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/sun50i-thermal.txt

diff --git a/Documentation/devicetree/bindings/thermal/sun50i-thermal.txt b/Documentation/devicetree/bindings/thermal/sun50i-thermal.txt
new file mode 100644
index 000000000000..67eda7794262
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/sun50i-thermal.txt
@@ -0,0 +1,32 @@
+Binding for Thermal Sensor of Allwinner SOC.
+
+This describes the device tree binding for the Allwinner thermal controller
+which measures the on-SoC temperatures.
+
+Required properties:
+- compatible:
+  - "allwinner,sun50i-h6-ths" : For H6
+- reg: Address range of the thermal controller
+- clocks, clock-names: Clocks needed for the thermal controller.
+		       The required clocks for h6 are: "bus".
+- resets, reset-names: Reference to the reset controller controlling
+		       the thermal controller.
+- nvmem-cells: A phandle to the calibration data provided by a nvmem device. If
+	       unspecified default values shall be used.
+- nvmem-cell-names: Should be "calib"
+- #thermal-sensor-cells : For H6 Should be 1.
+			  See ./thermal.txt for a description.
+
+Example:
+
+	ths: ths@1c25000 {
+		compatible = "allwinner,sun50i-h6-ths";
+		reg = <0x05070400 0x100>;
+		clocks = <&ccu CLK_BUS_THS>;
+		clock-names = "bus";
+		resets = <&ccu RST_BUS_THS>;
+		reset-names = "bus";
+		nvmem-cells = <&tsen_calib>;
+		nvmem-cell-names = "calib";
+		#thermal-sensor-cells = <1>;
+	};
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
