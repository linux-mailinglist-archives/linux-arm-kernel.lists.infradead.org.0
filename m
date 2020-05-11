Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 019F01CDE39
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 17:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfgtIAGfyvvzaUSVZyeoqIuMiFy5aNdcbgjb3D3I/5M=; b=fDAoWP4R0Udt83
	yoY1TovvkzhfzIBU/gjZWk8IjOvu655y97H9nL9KYpam+hKtqppXqsJvWdmnbuopPn88K/FgAEXaN
	koWdl9a28WG9tK0rZp50e3E3RTd4bA09l8qHtsgz0988T6lBTAcjHQgu7sE+p4J62Z8z87w76S9UE
	mszbJ9wfL1gfB4hYhzlwYv0YZcVB8vnytv2kjbAzl9gx36T684C4w5+BmuAS6TP1bI7FY1HtbmW0D
	Ig3zsJs1Q2cVG59jS1PWsEv/Oiao42QUa03fWqMvwhTnTKe9kx5rH9AgqhkxEIFMhSKn56jUJOkcj
	EydTa9sBlb2Q0IL6yT4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYA3B-0002pf-IL; Mon, 11 May 2020 15:09:01 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYA2Y-0002H3-I7
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 15:08:24 +0000
Received: by mail-wr1-x442.google.com with SMTP id v12so11382264wrp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 08:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sewIQrOfMSMCFki5vvjbKoo8BkZz8WZa7NzooTrVnts=;
 b=q37ckKvI97gdW/9Qf733N08+axobkxxkecqbP8tELu1P7icQxfg3axOfLOYxiFCBwl
 oW05IYZCYgxJNYg+koCtaEP74kUPAP7PvkOTtmB8izDdFoqQ7hUPr6KHdo+QapU5fG+q
 okYraohC8Z+OVy+h3pew0mfKrvkCW5otHVTVv/M3aUqhjbBCgmNhqm0DjbiAtK+BOLLi
 J3u3/fW1XlTDrkKTN/e8xinBIg+wOmpGaGiK4N+T0FY9XJO2tq6hVKqSmb/ITP3KJx0m
 772YiDG8qWBy+CWk7PZaNjByABatlmXAblj8wCORl9qC2OeLAPGB+ni3oUS02zE0ASo0
 jDXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sewIQrOfMSMCFki5vvjbKoo8BkZz8WZa7NzooTrVnts=;
 b=uF+FerJFwIsbSwRT7JboRkaRYz8ia3KbRBDNM6obPqpLEDtoLBWv7QtPeNbIBr2aQY
 djKYlXOVHIdV4C/QLdn/fC93rwoe7MMSwxToTshRYPRBDSOLWKb7qCXIBh647mg06nvt
 rZv99BnZ97Xh/jm8n8RaqxACrn1p4bVrDr3IfmAUFomvqVU2X+wkQD+B2NOuRHKqsOVH
 VJ2VWKSCTTMhBGTWi0i0++evIRJfNO2lJ50icpXYih3NhSSv+hdoHPcqmXvIISqj0Fuz
 wvNFoaMZubKk6eKXj1pnBR+HFC/9cdg4zVPkiNMlk5vwlxj/XCFo8WaP0L8A5+HO7E1t
 tijA==
X-Gm-Message-State: AGi0PuaGpWfV2lKvjf/SVQk+5yMEK/stjJ3deh0vcM4hokQJ/5lzCHiH
 4tf7hm/8N4CY5FjqNBg/mNiCdA==
X-Google-Smtp-Source: APiQypJkabPSlSRTzxm2g+2Pcl2v8TJeYzS/3rcaydFEeD66RCudiytYlqP+kPoPaNBs86GUJFZHvA==
X-Received: by 2002:adf:f605:: with SMTP id t5mr19294913wrp.354.1589209700812; 
 Mon, 11 May 2020 08:08:20 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 94sm3514792wrf.74.2020.05.11.08.08.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 08:08:20 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 01/14] dt-bindings: arm: add a binding document for
 MediaTek PERICFG controller
Date: Mon, 11 May 2020 17:07:46 +0200
Message-Id: <20200511150759.18766-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200511150759.18766-1-brgl@bgdev.pl>
References: <20200511150759.18766-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_080822_595325_04C7215E 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

This adds a binding document for the PERICFG controller present on
MediaTek SoCs. For now the only variant supported is 'mt8516-pericfg'.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 .../arm/mediatek/mediatek,pericfg.yaml        | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
new file mode 100644
index 000000000000..74b2a6173ffb
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
@@ -0,0 +1,34 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/arm/mediatek/mediatek,pericfg.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: MediaTek Peripheral Configuration Controller
+
+maintainers:
+  - Bartosz Golaszewski <bgolaszewski@baylibre.com>
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+        - enum:
+          - mediatek,pericfg
+        - const: syscon
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    pericfg: pericfg@10003050 {
+        compatible = "mediatek,mt8516-pericfg", "syscon";
+        reg = <0 0x10003050 0 0x1000>;
+    };
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
