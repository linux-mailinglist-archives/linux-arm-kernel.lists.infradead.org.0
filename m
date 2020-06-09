Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 358AE1F3570
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 09:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQ2AKotpcC1WxcdK0N5HCP5xu84wCWLj2EOckJpDk4U=; b=Hq94ulYcKp2n44
	fqCjqaqZ5MY+mhVf04T0g2n26BTdIbF0SjyRsJuEuVWPNnDSvcZy/zn+8b+H3owDNaWs/50GXcwbE
	yCXdtDSHttFZxh7J2cQk5sbNAEG55z1PGWBM6fEoGYzxDT8Asa9wzRCHNkci9YpjzKqblJYZOL+Zo
	PhAnELZ2WfA3jqxTfKzrPAMfY6egz0/wPMsmMM993aLZe1KZVzI/OSyaA6JSsSsrcpiOX30Zm1hoH
	jC/Stf0ZxqXXI7IKIEV+R166lkAyMpRlSAui0gwHiKIaEHNAIzS1wy1CIJ8HGn/4pvw6Pz0ii5v78
	AN7I/Z3luXo4kmQM08pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiZ0V-0002Us-0Z; Tue, 09 Jun 2020 07:49:15 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiZ0N-0002Ty-Lw
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 07:49:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591688947; x=1623224947;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z9fxhQY3z4ehjLCF3109NrNvK62lTfFTjodG2LyrA/M=;
 b=Zw7gR6yc9IM3FBGzB+jGHFY/DqFb108rA/toHTVZvV8YRcNMheeBbg81
 hvjapV83HX0RddGKlJknpdLDylI7Zt7fIVPEw09kRY/yqAmOxsVXZpIyr
 4dS+nPRoK/+S+spUSEfkEr1AWQ5TPPoGg8ZY3McfMAo6lQjmd4z66lneL
 F2dOn05tXG4/V+yWe3taJ0kgZBbEIwRfGImAWTMsuuWO8FjKrlpjwuJ4D
 1Ywpq9lvtNCEzuugsQnnDk9q6E3WE+lFqyY+zwWG5uEAwePuLzVQLW8jC
 OdaZHz8IAgY6CoDEIPrnmlOMHQRJklEM1SQDoNWkHQtvzLDTe28VMryxr w==;
IronPort-SDR: TpvI0lSXmxb1sJfVs+cknweLXfAeBY11r03cwlBbUzm2OmL6NKuCWYbAxk5p32STuoT4DuO+Uk
 i21lDVrdXXdqWM8KQ8jw7My8fchB8Tbda4OPlIJk/BLHx/qyjN4+VJcMYcDzkIi7rEuLQZQqL3
 u6JEnr+zgelXlloQ0u/EAtr0/UcLHKu8fagNvwabOX8FOdJ87cI2dK/a6L0smKCSTZnTIH1mIi
 0zplBDVzwFZ5nlJygP+A+Jpo5WZ979uss4aHAtu9Gko/3aOgTsVi2Ri58w43sMDnyCTJB5vwK9
 36o=
X-IronPort-AV: E=Sophos;i="5.73,490,1583218800"; d="scan'208";a="75943736"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jun 2020 00:49:06 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Tue, 9 Jun 2020 00:49:06 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 9 Jun 2020 00:49:03 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Rob Herring <robh+dt@kernel.org>, Guenter Roeck <linux@roeck-us.net>
Subject: [PATCH v2 1/3] dt-bindings: hwmon: Add Sparx5 temperature sensor
Date: Tue, 9 Jun 2020 09:48:59 +0200
Message-ID: <20200609074859.9385-1-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200609072828.9088-1-lars.povlsen@microchip.com>
References: <20200609072828.9088-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_004907_786483_510241E0 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.154.123 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
2.27.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
