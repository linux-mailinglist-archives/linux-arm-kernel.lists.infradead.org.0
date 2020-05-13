Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C931D165E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTW+vFiKqyzR5JrXWFK700sGD755CdxffWehZptdns0=; b=Pn53LVkqbgGHVc
	PCKeyWk1ygOMdIIkVneb6FZ8kL9DSrqd5I7hL4/ho2UbqsFcHHaqttDCqKHBekUouE3SnenO6LzUS
	JyYmPaJzBZH0xHHr+FZm3oreCejQwDLp7fwN+GABDyASuT823s1jFDAlB6V06/SMWC0HvbWn1rOHF
	18KqmIXU1iUU8xNUaRgt9A2fsafJJtTnyARlMAkkbDv2j88bwyzD8BJ6gnEbOyamRSs79Xn7Qerht
	E6ExdYb1/Dkyar3sq0IkN6JepjktCrhEbjcIRcLeMvDrH3PB7TbgnbJL88WnOAiCVYDLA60bueB5s
	QR9QzEwJHLPU1sNJ0HJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrjx-0004Vp-FG; Wed, 13 May 2020 13:48:05 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrdv-0005Cw-4N
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:41:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589377311; x=1620913311;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qlFyZReVo2pHOVk2iDuspF2CVGNtSezC+5qbLU9vpWA=;
 b=oPmXxL8rawJz2aSeGa9B2iOUIoB5nCnhLp10FvDN/QAQMOwSWQhppxWH
 sE3iZn2wX6uwJVIynlVU9H4/sn6Z7xJM5YAGD6zcMVNomres3WALpBC53
 hbLM1pjl9jwpBT0QcVVT2H1lGwelQcSC4zmlAfSNElgJsdHjztWekdK25
 7vRW2mgBkLMVKi0GboL5QT5wYTGeDB43LsHa5/lvfD38/KOxyOTFKZumx
 cbCbKm6u2cSt+YXPG1v7ukKyBv39RSQIQH9eL62360tJwhssHeyyWASHd
 gxZpPElvIXT5hMAvVV1tRrjIOep5pXBgSAWu2Gsrk5wOITzPwWWKZAs61 g==;
IronPort-SDR: 3n7GItFr3OrwIchwpxNLWuuQkrXHfun+GhFttMmeaLVJMnOp9ZBHwobBZCyag9KxKTqnTiaiFS
 M0gd+bu2OZ5ln49vNO8xvQqP3xKN2++LVxFjwqq1JkiRPZOSL2gHjhU5+vlQbWT1XRy+Vz5nF4
 9N8LfTNwynF3unssGanacMGljwKV+F6t6eM045FIaFselBxXGR+VdUDuF88JBFiXSO2U9w3mw8
 4YT0Vqy+GGcknlv8ZIHBXeZXAsfWYrMUGJkJHipIU1/ya8X4I9JUrjBhEPJzAveapCDwfdSNjt
 Tro=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="79444211"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 06:41:50 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 06:41:52 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 06:41:50 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Guenter Roeck <linux@roeck-us.net>, SoC Team <soc@kernel.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 1/3] dt-bindings: hwmon: Add Sparx5 temperature sensor
Date: Wed, 13 May 2020 15:41:38 +0200
Message-ID: <20200513134140.25357-2-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513134140.25357-1-lars.povlsen@microchip.com>
References: <20200513134140.25357-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_064151_287420_B7EB3813 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This add the DT binding specification for the Sparx5 temperature
sensor.

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 .../bindings/hwmon/microchip,sparx5-temp.yaml | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/microchip,sparx5-temp.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/microchip,sparx5-temp.yaml b/Documentation/devicetree/bindings/hwmon/microchip,sparx5-temp.yaml
new file mode 100644
index 0000000000000..0df4813fd7b24
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/microchip,sparx5-temp.yaml
@@ -0,0 +1,39 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/microchip,sparx5-temp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip Sparx5 Temperature Monitor
+
+maintainers:
+  - Lars Povlsen <lars.povlsen@microchip.com>
+
+description: |
+  Microchip Sparx5 embedded temperature monitor
+
+properties:
+  compatible:
+    enum:
+      - microchip,sparx5-temp
+
+  reg:
+    maxItems: 1
+
+  '#thermal-sensor-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    tmon0: tmon@610508110 {
+        compatible = "microchip,sparx5-temp";
+        reg = <0x10508110 0xc>;
+        #thermal-sensor-cells = <0>;
+    };
+
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
