Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FADE529B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 19:52:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9+dz4JlHvjFrgPMJxeJiRvj7ZUPlJ065VWyI7g2wJWY=; b=Up4VFwL2SmGLqD1ooHtfM8zZ20
	Eki1py2rR/JgScjw3WAZ4oRtyUJjWMRwK5g3SUGsDSeHqZ1TiobVle4Nfu9oLQSZ/ffboqU8dRzbj
	Px0mh2AGmw9+OeT+ITGaiGN4fANTeanBefTGH/CfNI81PJ1y8M15rUaR8pY1PPZJuWMHgg87EWeKX
	D+KeL7VDZ6pSX9KLPY3/eqJcg/kbTtmsBRuCKKmROp/9Hp1h2MemZnQO7uHVGyOTKxjKhWfgD/SoG
	2YkMjrxfTfiDZl32XinZQdTr2PgcPr8fvcQI317aaKOFw3uyPi2KJzFqtf039Z+BE8RfgORS2ted9
	V5Mr3QOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO3l2-0000Y5-MD; Fri, 25 Oct 2019 17:52:16 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO3kU-0000HR-RI
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 17:51:44 +0000
Received: by mail-pg1-x52a.google.com with SMTP id c8so2018638pgb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 10:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=h3QJdMfhJbfPOyUujEeH2uCMTYfYjj0kP8BVOZvY6vk=;
 b=yg3+cfhoMvzbNVLOYxlHpxK9zIstoIJ+vmFQRnolgRRIna9gktbKYtnBZ7RBVfRwKn
 hNHOI/2OChFg9xUnidYcX0AONc1idmHcSOFRAMx5zZgLAfR+omQFY5WcMVEQRO+8g1eP
 3uiUrvtY7t0ofUZUIevZNs/EuWWoRUXSp7eOaMHfGkS26igzuxLUnKHx7ArgeVNWWFTl
 5zepKRIYkT/HbMEWB/RIEzhUOX/IhjONMKVbB3KpOiAOs91pXkLpAwgNjikBQrkHRO7K
 C8awJpIDnRKpXJZNzDVCYoxv7jkI1DE0IzqQl0KVVx74h8VhH6pkLsqNvcVYfLSRzm/m
 /HlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=h3QJdMfhJbfPOyUujEeH2uCMTYfYjj0kP8BVOZvY6vk=;
 b=A+gXfD6edO+bkT50dQSi3IvEK06qNX/2x6/dXgtkjcwxpxZN7pqwBYlrer94+9f8Yl
 jbdl/YVpEK+UP024q3oR5TK8eJCohyBVf7hVowK+PBpxVIgh8GvLA+SaehgOJge8LRXK
 NOh/qUgVzxMKc9EQuV9bp5Oqtas4lMDgBP9NPbHk/IgrEYv2NL8nSah5zab4FOlrwYsA
 nsErWQXxWNmJMfIOmIuvCE/RdGucPcZmLCNVUYBPDqBbYqo/+SWUN6aU/Xrrt5wDWG1w
 0CZMxv1iQOYz71hB22eDh+NzSj3fDCbOG4jeK0Evk6OyZ5mS1QQwFuHboojneEu8VEP4
 vyrg==
X-Gm-Message-State: APjAAAUNZ0DUbtsuV3VtZAcqr8g3m35UJkB0Mzk4ATj80a8tWatJr9Ws
 BRZPyio+GYMsRfpdHHe6Zya9
X-Google-Smtp-Source: APXvYqyoCaci5yjaMYOinOTAO7wfDp4OzDWRoNXvt7YtfSuacvKl3MyK2mJVfrQraK7kLO0cDLgpiw==
X-Received: by 2002:a65:4907:: with SMTP id p7mr5957791pgs.429.1572025901575; 
 Fri, 25 Oct 2019 10:51:41 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7108:7f86:4131:5b00:9fc5:5eaa])
 by smtp.gmail.com with ESMTPSA id d14sm3916345pfh.36.2019.10.25.10.51.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 10:51:41 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH v2 1/2] dt-bindings: media: i2c: Add IMX296 CMOS sensor binding
Date: Fri, 25 Oct 2019 23:21:17 +0530
Message-Id: <20191025175118.13307-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191025175118.13307-1-manivannan.sadhasivam@linaro.org>
References: <20191025175118.13307-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_105142_933333_55C0F1B7 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
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
 .../devicetree/bindings/media/i2c/imx296.yaml | 98 +++++++++++++++++++
 1 file changed, 98 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/imx296.yaml b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
new file mode 100644
index 000000000000..646fe0236138
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
@@ -0,0 +1,98 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/imx296.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sony IMX296 1/2.8-Inch CMOS Image Sensor
+
+maintainers:
+  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+
+description: |-
+  The Sony IMX296 is a 1/2.9-Inch active pixel type CMOS Solid-state image
+  sensor with square pixel array and 1.58 M effective pixels. This chip
+  features a global shutter with variable charge-integration time. It is
+  programmable through I2C and 4-wire interfaces. The sensor output is
+  available via CSI-2 serial data output (1 Lane).
+
+properties:
+  compatible:
+    const: sony,imx296
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    description:
+      Input clock for the sensor.
+    items:
+      - const: mclk
+
+  clock-frequency:
+    description:
+      Frequency of the mclk clock in Hertz.
+    default: 37125000
+
+  vddo-supply:
+    description:
+      Definition of the regulator used as interface power supply.
+    maxItems: 1
+
+  vdda-supply:
+    description:
+      Definition of the regulator used as analog power supply.
+    maxItems: 1
+
+  vddd-supply:
+    description:
+      Definition of the regulator used as digital power supply.
+    maxItems: 1
+
+  reset-gpios:
+    description:
+      The phandle and specifier for the GPIO that controls sensor reset.
+    maxItems: 1
+
+  # See ./video-interfaces.txt for details
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - clock-frequency
+  - vddo-supply
+  - vdda-supply
+  - vddd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    imx296: camera-sensor@1a {
+        compatible = "sony,imx296";
+        reg = <0x1a>;
+        reset-gpios = <&msmgpio 35 GPIO_ACTIVE_LOW>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&camera_rear_default>;
+        clocks = <&gcc 90>;
+        clock-names = "mclk";
+        clock-frequency = <37125000>;
+        vddo-supply = <&camera_vddo_1v8>;
+        vdda-supply = <&camera_vdda_3v3>;
+        vddd-supply = <&camera_vddd_1v2>;
+
+        port {
+            imx296_ep: endpoint {
+                remote-endpoint = <&csiphy0_ep>;
+            };
+        };
+    };
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
