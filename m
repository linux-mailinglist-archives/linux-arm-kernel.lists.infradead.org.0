Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3255E7DD08
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 15:58:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YRskKPHDac9XZWSL14DmOpHjwwXYLf+JfwklyJw+a/A=; b=e1MMIFEftb+E8h
	GyjD6Ksq+wD7duPFFhjQaSO4norOFfGMqZ+r89KTB/01QhpCcw2dnWppqf4qAp2QNNLuIdxMp37GY
	rQ/4YYZ5GrRqgm/EIi0oAO6pwDYkov7bjdEWYzgho5Sh39CV5LOK57ECaS+D6nYZs0KoBsgRV+lP3
	ckGwBoeldI2CVDFZyL/NDRUzuFMkHhTwPt0JYtPiTc5ePOhc6G/NpltyzP+ZrlliUqccED9dtOTpS
	uIRZ4A6kzeVxQLnOeH7zT6VR+ZCxpg94g6GlDHxno4789LWrAuFQg/8gTqnmeo7Sm0T0+BPHQnaSH
	sG2X9YXT862ai0eDhYQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htBal-0002BF-I4; Thu, 01 Aug 2019 13:58:03 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htBZc-00010v-Lc
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 13:56:56 +0000
Received: by mail-wm1-x32f.google.com with SMTP id f17so63272825wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 06:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FZwarWOpNsfuBiNZZzA2jg0GZdzk9/OxZhy/FP0yQ7I=;
 b=jGmz044jcrShOXq7CzTm7BxILFJc768gBT775ECewrSwU9tfB1EhhhESHHaAOMEPI9
 c5VUFoqxlIkkGYVGlqz4ahJc9dgEFju/iJRqCEm0fCEPdm0NaQEehFtrFUunyFPUATjE
 EsQ2eD+zsdnBbjnrlAF8lPnmNpgwDABwageVh7wvetyc5RARTGlx2PczcEfqUcZd4/MY
 QGOTHxvSuv/YT87sNQR9SdJYL9eqWDiSVwMx2oTAU3Soux69viI+mW0Da7Kg8pFH6XYO
 PDYlwVUpf7dYPqrzQHP960592DagEL86TUKuPRKKh9Ocg9Ea+evLn0X3Wa83ufc79lz+
 gyRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FZwarWOpNsfuBiNZZzA2jg0GZdzk9/OxZhy/FP0yQ7I=;
 b=d/kkWfHeClP0agDiEepZVg3H7pzmKCV7KnodLeRu+MFYmBd8j2Gx5zJvtAieGp8/Br
 t4iTR18Akq05RcYCAv/tjfWwDAcKbua1We9cJwUDkH47Hk+mdW+OO2fhtP97JafrMzx/
 hARGMRiBSbfxkTy17bS/j6MzmJi4khhBuqimdI0kqT1BEkFl3KCTD7fYnqZldNv2ceQx
 UPb6iVomXazA/XmVqw4egD/qI2BAXfzKw6SMm5c3/XRI7n8l3NUT0HzsELxpeM+5H1l4
 Pfus3tm4ix9/R5QuACd/8U93X4ZJv0kEf5W7NIlbCQAXvJxiazadwhzqwVynz+J2d3Hf
 sXDQ==
X-Gm-Message-State: APjAAAUbJoDkdyTFb1GvEUkiput1x5pR8ee+uSRQjCZnoLXrITjjeYr5
 VXoc4ptdnz7KkSzi21l16PzuuTxOd50=
X-Google-Smtp-Source: APXvYqxIBCJNuUpkuBySMJgg64UolSv7bllV7knpcysRMFeaE4PZjgGi0kujrQ5yqkvJRph35LtR5w==
X-Received: by 2002:a05:600c:254b:: with SMTP id
 e11mr108630801wma.171.1564667810828; 
 Thu, 01 Aug 2019 06:56:50 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id u6sm69659952wml.9.2019.08.01.06.56.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 06:56:50 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [RFC 4/9] dt-bindings: reset: amlogic,meson-reset: convert to yaml
Date: Thu,  1 Aug 2019 15:56:39 +0200
Message-Id: <20190801135644.12843-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190801135644.12843-1-narmstrong@baylibre.com>
References: <20190801135644.12843-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_065652_730445_D013F888 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/reset/amlogic,meson-reset.txt    | 19 ---------
 .../bindings/reset/amlogic,meson-reset.yaml   | 40 +++++++++++++++++++
 2 files changed, 40 insertions(+), 19 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt
 create mode 100644 Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml

diff --git a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt
deleted file mode 100644
index 28ef6c295c76..000000000000
--- a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-Amlogic Meson SoC Reset Controller
-=======================================
-
-Please also refer to reset.txt in this directory for common reset
-controller binding usage.
-
-Required properties:
-- compatible: Should be "amlogic,meson8b-reset", "amlogic,meson-gxbb-reset" or
-	"amlogic,meson-axg-reset".
-- reg: should contain the register address base
-- #reset-cells: 1, see below
-
-example:
-
-reset: reset-controller {
-	compatible = "amlogic,meson-gxbb-reset";
-	reg = <0x0 0x04404 0x0 0x20>;
-	#reset-cells = <1>;
-};
diff --git a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
new file mode 100644
index 000000000000..dd211bf84f25
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/reset/amlogic,meson-reset.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson SoC Reset Controller
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+properties:
+  compatible:
+    oneOf:
+     - enum:
+       - amlogic,meson8b-reset
+     - enum:
+       - amlogic,meson-gxbb-reset
+     - enum:
+       - amlogic,meson-axg-reset
+
+  reg:
+    maxItems: 1
+
+  "#reset-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - "#reset-cells"
+
+examples:
+  - |
+    reset-controller@c884404 {
+          compatible = "amlogic,meson-gxbb-reset";
+          reg = <0xc884404 0x20>;
+          #reset-cells = <1>;
+    };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
