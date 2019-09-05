Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B988A9CD3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FFB8t4YKbYrCNU4Bphd63ADIC4R6ALCGRIbi3gHxf+Q=; b=LaZ
	GZbFQIcKrtGbJYRO6HCyb/pNPsAqZ+Iqjnql1Kgku5YeSUluEliZo0OY/Bz1MSkDDmoGhN66PXcqC
	2gnkMEZ37GuXJSYbXRfRmOzdA2a8qvWV5Oc6/E1mhlvWw9M+AE6fdOEmymKaMWchjIKEnlGgUhppn
	Cy+sJMCNzzSL5t2LUB2EYv9cq49/+BI2fiSZnQAZ/YNv/glBWhJgASoyNkdEAgDDa5QVWfKxoB02k
	lxPBI5L/lU//gBjmu6WhdYvtVNN8n7LWZqqCAF9eChmaERLwl0Yky1o6zbYMwjFrkX9StD3qjLFG3
	NxFzKyZlU6euvZHfNKDPBiANBvXMlRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5mzV-000244-3V; Thu, 05 Sep 2019 08:19:41 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5mzI-000230-7t
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 08:19:29 +0000
Received: by mail-pf1-x442.google.com with SMTP id q5so1215833pfg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 01:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=9/BdIi9v9vT+sjdaqY5A0ECHD5U3qpWLnzpWXvofxDY=;
 b=r1nLUBGcm0bfuZZ9Lr7GSA62KRvGRugvYiQ3s1TSi2oyWNKhdrBXHjTf2ZtGebVm1N
 sh7wZ2uUUHgw84Q64gm7NOKnM0JGC/frypk5e84p9I93pn5Id8i2RviYRI88bsveSHDY
 ceTGu6jIfXr9Le2TXdJ+7MVGNwyPmLaPPkUmHclpGnhzdzhdqP5K7uzohK6MqPjmYfoN
 cSif/IsIjUZQxbdq+gMqUnq0Fel1F2/dwk5Bg2aKRRTkuEgPUD0hhrEZmFnxelU/97z/
 tbLkUGImiJljqmi2Vnf1sUR9WIOiAuluSIlPrsiRQWDY+2lgmJqYpeo+dU8x/kpG06Lx
 Q2qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9/BdIi9v9vT+sjdaqY5A0ECHD5U3qpWLnzpWXvofxDY=;
 b=Cmw7CiAAzmlSplCeLISmyu2tvRVorUv+VcKfxva0wtB+SBY/B1vQ2x16II5gMLT7dW
 +/oz1/PnjmKwQrljYHzL5oFqPbYHi9eW4qQ0ZKvx7wKQwozoCvIQNKva+CRVeo2lL6zC
 t/IPRJGr7G43m3vMRAyo6VRnG0gTQ4Qt+N3zqm2W/9IUWq/h1Hdd9KW+xh/iuL1Or5bJ
 oApHRgK52geR8sZTbQ0aSlj+cBQY1MIfMBc7J5b5dM5G3SlhtkTaA96V4N6DQVqxhuCD
 /TMxbZcBxDem50cIIYKpnc223EFQxesRw4OWGhDmlGmcGzqpE663LzYLaApMCTJ6G4ED
 +Ibg==
X-Gm-Message-State: APjAAAVb+F2gg7SJusNwiPiujvsL4kFlKzLo6H2Hv/TJlyZ2S/N6Xb2o
 2PyDiJuUJY0SNGiBP/I3/d0=
X-Google-Smtp-Source: APXvYqxe1QnHt/X7OsIxUjVUHyE38n/yrBYayr07GhF9bIM7Bs1edEmFMoAIFICZevF1sqQC3j1bCw==
X-Received: by 2002:a63:e148:: with SMTP id h8mr2013798pgk.275.1567671565558; 
 Thu, 05 Sep 2019 01:19:25 -0700 (PDT)
Received: from localhost.localdomain ([49.216.8.243])
 by smtp.gmail.com with ESMTPSA id h9sm1170401pgh.51.2019.09.05.01.19.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 01:19:24 -0700 (PDT)
From: jamestai.sky@gmail.com
X-Google-Original-From: james.tai@realtek.com
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] dt-bindings: arm: Convert Realtek board/soc bindings to
 json-schema
Date: Thu,  5 Sep 2019 16:17:21 +0800
Message-Id: <20190905081721.1548-1-james.tai@realtek.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_011928_280473_2C0151A4 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jamestai.sky[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, "james.tai" <james.tai@realtek.com>,
 CY_Huang <cy.huang@realtek.com>, Phinex Hung <phinex@realtek.com>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "james.tai" <james.tai@realtek.com>

Convert Realtek SoC bindings to DT schema format using json-schema.

Signed-off-by: james.tai <james.tai@realtek.com>
---
 .../devicetree/bindings/arm/realtek.txt       | 22 -------------------
 .../devicetree/bindings/arm/realtek.yaml      | 17 ++++++++++++++
 2 files changed, 17 insertions(+), 22 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/realtek.txt
 create mode 100644 Documentation/devicetree/bindings/arm/realtek.yaml

diff --git a/Documentation/devicetree/bindings/arm/realtek.txt b/Documentation/devicetree/bindings/arm/realtek.txt
deleted file mode 100644
index 95839e19ae92..000000000000
--- a/Documentation/devicetree/bindings/arm/realtek.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-Realtek platforms device tree bindings
---------------------------------------
-
-
-RTD1295 SoC
-===========
-
-Required root node properties:
-
- - compatible :  must contain "realtek,rtd1295"
-
-
-Root node property compatible must contain, depending on board:
-
- - MeLE V9: "mele,v9"
- - ProBox2 AVA: "probox2,ava"
- - Zidoo X9S: "zidoo,x9s"
-
-
-Example:
-
-    compatible = "zidoo,x9s", "realtek,rtd1295";
diff --git a/Documentation/devicetree/bindings/arm/realtek.yaml b/Documentation/devicetree/bindings/arm/realtek.yaml
new file mode 100644
index 000000000000..ad9b13bc42f0
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/realtek.yaml
@@ -0,0 +1,17 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/realtek.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek platforms device tree bindings
+
+properties:
+  compatible:
+    oneOf:
+        items:
+          - enum:
+              - mele,v9
+              - probox2,ava
+              - zidoo,x9s
+          - const: realtek,rtd1295
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
