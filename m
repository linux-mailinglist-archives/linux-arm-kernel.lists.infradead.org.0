Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5057119AD97
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 16:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9eS2y2pFtybmdznnK8gt8sLbBvWENpmIG9z8RFGJ/wg=; b=jAjW8VX7YzYf4I
	FbEPidVYQ36KdrtjAYVisFR0/yZe9ynh+QjgDZ+Br3r20jxLdquYqTYm+9s888C6vo0G8hKIjUR8t
	f6xCmbcrFwzuJpzRHuhc88B6GnCEN2PpUVV8taBaOrb2m6aI3DJoGXSUUdrBdMtDP8Jh/i1LcUHma
	t4/9t91ltg0kxXK8w85FkrTmD6UvAZ8xxkd9rnx+tkax/HU57M/cbvWQypNyPjPYkucGdvuK4eEQu
	ZpDRNuCYZJ6L2X7k8rDPQQdCXIN/2xo4CWlnD8kkCl0lVzI8EKoQtzsHqYXKuyp4YKYLGcW1nKUHO
	08BnbefgodWyDB6vRQ2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJe9E-0000eh-Gu; Wed, 01 Apr 2020 14:15:16 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJe98-00007w-0B
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 14:15:11 +0000
Received: by mail-pl1-x644.google.com with SMTP id d24so5844470pll.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Apr 2020 07:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nigauri-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LEOmiIfnZf4UuskndEqwJK0t3v/ejJbeSlL/pR1DNyY=;
 b=H+s+nfy/mK20JNRHDfxWOWd+Eu1wky61/AsKXrnLiemzPhc0oG6THAVOQLhUN4ezbU
 nLEkYb1P6HSIMGxNNd8MvbzSKzDUqxlYLqbyoV6XGa+QcAdrl/DXnGVMdq7q947FyYju
 o6rdjgCKc7fpUgxjE7KHoGgd1tZOZcQuIA7k22VU0kDUPBs4IIpg+BCy9qW/uiN9fUSa
 54oEd2DXtNwycXx4WJouzTnOWNnvm1dry7hX8MsulEJU9xGBxDN4D1muHElbWFsme9KR
 XlVYMCrHajBoqBUDV4egDmJnWUZ3/p8j9W4JV1xK8bdnzNYzN9VdFbBfAeWsVt5wv5Lq
 QQVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LEOmiIfnZf4UuskndEqwJK0t3v/ejJbeSlL/pR1DNyY=;
 b=jBuTAOYdMO0/OFNfqUcDeThFc92SUFGWyYbZSgD7bNzGoipzpTG9pg8P964PtcWtGp
 bgVv3F3iAXKj1mpPo3X7VueieN8P70ar+fHy9lI5Vwz+o09ozGyDE71wp20nUvll5bw+
 YCYVq/rALr9CHUNqibzyGX2MC0InzkykohRriax6I9Iw9l5Kt8KkP8JtDfNIh579WLLj
 GsS/9YhJ22dgrGxfT0HJs3hI6cYxEdPFzz0KNhRJkmObkF1pFb8TnWl/ovQjM3xNEmA2
 a1O5//1uY7yFvGpXjGoCHCblmpH8fmmn3H7IiVwmD2TBTMN70Gymp3jr6aBka5zMZhth
 Qafg==
X-Gm-Message-State: AGi0PuZiOHDx8CU7KbCWioy3ggb6NjlngXuM6ERiHjlNwDuxZaEBGAQN
 CevB0ruQTjv7NB/DNybWwtae
X-Google-Smtp-Source: APiQypLNOzalB+9BmXgPPToTEm9YjtpcDjXL+lQ7eO0oK9Emyww38AV+GlPIy2FJZ++aU4Ft04axJA==
X-Received: by 2002:a17:90b:1888:: with SMTP id
 mn8mr5243859pjb.115.1585750509254; 
 Wed, 01 Apr 2020 07:15:09 -0700 (PDT)
Received: from localhost ([2405:6581:5360:1800:bf52:1f8e:88d2:6ec])
 by smtp.gmail.com with ESMTPSA id r59sm1805406pjb.45.2020.04.01.07.15.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Apr 2020 07:15:08 -0700 (PDT)
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: timer: cadence_ttc: Migrate timer-cadence-ttc
 documentation to YAML
Date: Wed,  1 Apr 2020 23:14:49 +0900
Message-Id: <20200401141449.66905-1-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_071510_061721_45269739 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The document was migrated to YAML format and renamed cdns,ttc.yaml.
And updated the example to the latest format.

Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
---
 .../bindings/timer/cadence,ttc-timer.txt      | 21 --------
 .../devicetree/bindings/timer/cdns,ttc.yaml   | 48 +++++++++++++++++++
 2 files changed, 48 insertions(+), 21 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/timer/cadence,ttc-timer.txt
 create mode 100644 Documentation/devicetree/bindings/timer/cdns,ttc.yaml

diff --git a/Documentation/devicetree/bindings/timer/cadence,ttc-timer.txt b/Documentation/devicetree/bindings/timer/cadence,ttc-timer.txt
deleted file mode 100644
index eeee6cd51e5ce..0000000000000
--- a/Documentation/devicetree/bindings/timer/cadence,ttc-timer.txt
+++ /dev/null
@@ -1,21 +0,0 @@
-Cadence TTC - Triple Timer Counter
-
-Required properties:
-- compatible : Should be "cdns,ttc".
-- reg : Specifies base physical address and size of the registers.
-- interrupts : A list of 3 interrupts; one per timer channel.
-- clocks: phandle to the source clock
-
-Optional properties:
-- timer-width: Bit width of the timer, necessary if not 16.
-
-Example:
-
-ttc0: ttc0@f8001000 {
-	interrupt-parent = <&intc>;
-	interrupts = < 0 10 4 0 11 4 0 12 4 >;
-	compatible = "cdns,ttc";
-	reg = <0xF8001000 0x1000>;
-	clocks = <&cpu_clk 3>;
-	timer-width = <32>;
-};
diff --git a/Documentation/devicetree/bindings/timer/cdns,ttc.yaml b/Documentation/devicetree/bindings/timer/cdns,ttc.yaml
new file mode 100644
index 0000000000000..c532b60b9c631
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/cdns,ttc.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/cdns,ttc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cadence TTC - Triple Timer Counter
+
+maintainers:
+  - Michal Simek <michal.simek@xilinx.com>
+
+properties:
+  compatible:
+    const: cdns,ttc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 3
+    maxItems: 3
+    description: |
+      A list of 3 interrupts; one per timer channel.
+
+  clocks:
+    maxItems: 1
+
+  timer-width:
+    $ref: "/schemas/types.yaml#/definitions/uint32"
+    description: |
+      Bit width of the timer, necessary if not 16.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+examples:
+  - |
+    ttc0: ttc0@f8001000 {
+        interrupt-parent = <&intc>;
+        interrupts = <0 10 4>, <0 11 4>, <0 12 4>;
+        compatible = "cdns,ttc";
+        reg = <0xF8001000 0x1000>;
+        clocks = <&cpu_clk 3>;
+        timer-width = <32>;
+    };
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
