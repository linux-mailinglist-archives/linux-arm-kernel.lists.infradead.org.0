Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1EF818CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:04:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1cKDyxBPy85IRLE1zUYkAZOlLZpd+XoSptTfn7yFis=; b=s3ECXtDj2HLYFK
	Qcij3jEE2/kctxCPTpj/L0deqqkVFIohk7OtokfE6FeHVthLhKqoHUsUqLUFaSMOEcLWXAb1a826f
	bEf3ZpDzTZlGI6ObednpiWqItPHf7pAYnEXNrlwpI8HLccrm2c2Cbi/HDg+SeiGZM6IXuOU7T3CBd
	A9Wdc22/5B7wtsVpkr0Um0BaELw9tCzbfJBaml/fHUlPrYUVpcf6aowtpMuvPdr/xKVc3iNlGBAYa
	IfKbQNR4mL0zGgMDwsQUEFIjGC+DTKXWTWT+d3st2v0kvNXcOvxf7RTIrX8dsXpWbbR+TLUPAMQ+W
	zOlpoJeWZvM679eXUUvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubir-0003iN-3H; Mon, 05 Aug 2019 12:04:17 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubi4-00039R-Hx
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:03:31 +0000
Received: by mail-wr1-x443.google.com with SMTP id n9so59072730wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y9sKG2U7XCHY9N45/XGVAYDqTVfRZ5wagMI5lIUYmMc=;
 b=epA4UV4EgezeHzNn4PeRLlLbsYa9NR4F8yaH6ofs3Mt0Dx9Uj0VwZ4HJsJbeX/DYMH
 /uGazRtMLTcGZCP2gbV2HlksCG1/4+2EE2pVZLjMHhI9vKmTq1bIJQCIY90nZlBX4+ZQ
 0fpuroWX8/inOD0X9y6YJ5/1f016EBHq1QIaM/zN47aA6Z6aUgA/VyyUysXHtdHIV7KO
 WlxUcZ9CCGPSizt8MsubXYf36zS5793erBOl86Rv9WTjnr8jVcqvhlevq/1/hqedanHT
 l2Nfgo093Zx43kH4YgGnQktNGrXhym2xGajx9nPyvn0GScBebSryn6ISxu5HsDHvRcw+
 oLNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y9sKG2U7XCHY9N45/XGVAYDqTVfRZ5wagMI5lIUYmMc=;
 b=Fjdy6Lm+w0n5sJB0CubyoDs4ZzQQ7qOyYKsGvSIEid9smHcKA50s7f1ogtgRTvPOwC
 iJWEx9KyzFnjf0OXQUcbwtG15fWLhWJCEbeXA5E1qne9SqJ76rgmePhLkPlAYAnoOZCe
 LoX2/3r61geB1Nj7ADfYwpHULMYlny1OQr2wbuc93SllOiQCUtd3pwLLo09HfTs1/Lrr
 e7s0QXmz1YAsW/7n27HguMADSo4Jg29zHESvTp95m5u9aU7VENhGyU4yK7vSrH4IbrQ+
 I1xfSbPz8s2xNhw37hr+a4q1/jrCxPbg2fxlgQB4mOFhy7if6ToyiQPTEGtrUu4IxIYK
 r3Lw==
X-Gm-Message-State: APjAAAX4VCqWXiKpLrAzcVD7ssfwSJUDzu1Lc164eGgAAI5Os8pYQDXb
 BvDtaIeO+Y2R+dQjKZAEW9zjQYxu3Rudbg==
X-Google-Smtp-Source: APXvYqw3OD05u4AblrcjmCcYW/Bk5y/c3rSjEQEnj4ecStOu5l9vedoHEuUMqP9qe4bkr2QEfRACgA==
X-Received: by 2002:adf:dd51:: with SMTP id u17mr10783185wrm.218.1565006606374; 
 Mon, 05 Aug 2019 05:03:26 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x6sm88683668wrt.63.2019.08.05.05.03.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 05:03:25 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [RFCv2 1/9] dt-bindings: mailbox: meson-mhu: convert to yaml
Date: Mon,  5 Aug 2019 14:03:12 +0200
Message-Id: <20190805120320.32282-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190805120320.32282-1-narmstrong@baylibre.com>
References: <20190805120320.32282-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_050328_602662_BBD55FAB 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
 jassisinghbrar@gmail.com, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic MHU controller over to a YAML schemas.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../mailbox/amlogic,meson-gxbb-mhu.yaml       | 53 +++++++++++++++++++
 .../devicetree/bindings/mailbox/meson-mhu.txt | 34 ------------
 2 files changed, 53 insertions(+), 34 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml
 delete mode 100644 Documentation/devicetree/bindings/mailbox/meson-mhu.txt

diff --git a/Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml b/Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml
new file mode 100644
index 000000000000..2536a0082cff
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/mailbox/amlogic,meson-gxbb-mhu.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson Message-Handling-Unit Controller
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+description: |
+  The Amlogic's Meson SoCs Message-Handling-Unit (MHU) is a mailbox controller
+  that has 3 independent channels/links to communicate with remote processor(s).
+  MHU links are hardwired on a platform. A link raises interrupt for any
+  received data. However, there is no specified way of knowing if the sent
+  data has been read by the remote. This driver assumes the sender polls
+  STAT register and the remote clears it after having read the data.
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-gxbb-mhu
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 3
+    maxItems: 3
+    description:
+      Contains the interrupt information corresponding to each of the 3 links
+      of MHU.
+
+  "#mbox-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#mbox-cells"
+
+examples:
+  - |
+    mailbox@c883c404 {
+          compatible = "amlogic,meson-gxbb-mhu";
+          reg = <0xc883c404 0x4c>;
+          interrupts = <208>, <209>, <210>;
+          #mbox-cells = <1>;
+    };
+
diff --git a/Documentation/devicetree/bindings/mailbox/meson-mhu.txt b/Documentation/devicetree/bindings/mailbox/meson-mhu.txt
deleted file mode 100644
index a530310772b9..000000000000
--- a/Documentation/devicetree/bindings/mailbox/meson-mhu.txt
+++ /dev/null
@@ -1,34 +0,0 @@
-Amlogic Meson MHU Mailbox Driver
-================================
-
-The Amlogic's Meson SoCs Message-Handling-Unit (MHU) is a mailbox controller
-that has 3 independent channels/links to communicate with remote processor(s).
-MHU links are hardwired on a platform. A link raises interrupt for any
-received data. However, there is no specified way of knowing if the sent
-data has been read by the remote. This driver assumes the sender polls
-STAT register and the remote clears it after having read the data.
-
-Mailbox Device Node:
-====================
-
-Required properties:
---------------------
-- compatible:		Shall be "amlogic,meson-gxbb-mhu"
-- reg:			Contains the mailbox register address range (base
-			address and length)
-- #mbox-cells		Shall be 1 - the index of the channel needed.
-- interrupts:		Contains the interrupt information corresponding to
-			each of the 2 links of MHU.
-
-Example:
---------
-
-	mailbox: mailbox@c883c404 {
-		#mbox-cells = <1>;
-		compatible = "amlogic,meson-gxbb-mhu";
-		reg = <0 0xc883c404 0 0x4c>;
-		interrupts = <0 208 IRQ_TYPE_EDGE_RISING>,
-			     <0 209 IRQ_TYPE_EDGE_RISING>,
-			     <0 210 IRQ_TYPE_EDGE_RISING>;
-		#mbox-cells = <1>;
-	};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
