Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A486083360
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 15:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b35f8TPYkIBoqadOFikPJVPRq3HGTYBWtZ5rP9tYo4M=; b=rYhpAnmPBHhg95
	7csRf7gqjhPB8O+jGV27LUNE+dw0JVetKBPvVA/BL1YVgnGJtcJmdRDG8M0HVABqwqTxhgGBjQVuo
	PkM6AmignvTP75zmHyUpGMawTsvSpE/oDQA7/mTZ8IXWOqFsonN6ubCONB1qtVaMYP6/N+bNkDh7E
	+2GHpT0MHy+hpAdBKAWvBZ7pP0l62bKxW99RpBYBtyFyGhLrCMfw8pkxqjym5V80ZqAmeLkvFjmQb
	hBcgIV53PNbsKfPwUSrsoxUnTwOex1Cr5kR6foQ2yGYYt7LzhwVmypEpXSPICZZtxhX+Jf1nyy9AM
	OmreuHK3v2P4wgBSdKaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huzvk-0006eT-6c; Tue, 06 Aug 2019 13:55:12 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huzva-00063f-1s
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 13:55:03 +0000
Received: by mail-lj1-x241.google.com with SMTP id v18so82261628ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 06:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IJ12Dy3JfyZ0l7CageHav/zHZkBqP0OCWfzKRPvmdoc=;
 b=p40EAZqxGwsk7cv76bOJBxNqqa0AeZzd3w3C2VYzbT8LY1ssw9DC7sCkwirZoazfZq
 BU5IMdW/tQtlFGdsGju93CFQ56bexUWSN13iJEImGWjA1aWQAPr/CX2AkBkiMuoRuV/M
 jplktamrvZRG/kWsC9EmW6QUaHibt/6YNQor+3USjTVm627JdrzSCt/S4LneRh0kervw
 qKfVB8b1pVbhIT5aiO1GCUSl9EYUa0AQ85wMqRRi6uCk9agFjrH5gDxoGFHzLR2FJ7Rk
 qo+mpMzKUQXjli74QUS9KnxIt50OYX+b/EY49TuDplwuT6HJuC5aTzw3OjM80NcsQdZG
 z7tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IJ12Dy3JfyZ0l7CageHav/zHZkBqP0OCWfzKRPvmdoc=;
 b=VkxRBXG9q4TGwKLdVOZk8JRIuHinaYeZ1MHUJoia8ck6AiWkbg/uk2F3mCPEbiXLMC
 JDmEMtv+NgCMRvinbqQ0Q6UCtgxuUJCDayB+o//HIlUs6CS7bzuCfZg5CZDq4LyJD22L
 9C8yy+nPIB0NQqPe8sh7Rd5x59CMsVdGSIryJy2PcRcWJRJB30oVYWFjGPcylvkbeyuE
 s1EpHg3helFJVwD2hRVCai9mOZ3ZIjS+W6SIj8sMbfkNiksLCmlOdIyv3OO8GLCpQf0Y
 CDMnngHrthb8sahpfGTnDeJcexzBYJ/K6AqNJqHiy6kRduhWIy2bm8qT3B9OFxt4SlKB
 IWCg==
X-Gm-Message-State: APjAAAVPCTftrlZ5CV23oeyF/GcV8OVwNifpEF21HWQd7uRFlHP8Zftn
 7CkGuI8GxnBUPMO3lXOms5b0ag==
X-Google-Smtp-Source: APXvYqxv8qeBsyp4+j8+tEUZfsnPoqeK+HtBmP4WRrTSf4gzVQpnVHOuB+aJZHmFKhJdaRZiGmjR4A==
X-Received: by 2002:a2e:7614:: with SMTP id r20mr1896078ljc.42.1565099700349; 
 Tue, 06 Aug 2019 06:55:00 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id u22sm20071875ljd.18.2019.08.06.06.54.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 06:54:59 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH 2/4 v3] drm/panel: simple: Add TI nspire panel bindings
Date: Tue,  6 Aug 2019 15:54:37 +0200
Message-Id: <20190806135437.7451-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_065502_112376_49A48FD4 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add bindings for the TI NSPIRE simple display panels.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChanegLog v2->v3:
- Switch to GPL-2.0-only OR BSD-2-Clause license
- Use a simple enum for the compatible
- Use the new nifty panel-common.yaml, tested on
  linux-next
ChangeLog v1->v2:
- New patch as bindings are required
- Let's use YAML
---
 .../bindings/display/panel/ti,nspire.yaml     | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ti,nspire.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml b/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml
new file mode 100644
index 000000000000..5c5a3b519e31
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/ti,nspire.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments NSPIRE Display Panels
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - ti,nspire-cx-lcd-panel
+      - ti,nspire-classic-lcd-panel
+  port: true
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    panel {
+        compatible = "ti,nspire-cx-lcd-panel";
+        port {
+            panel_in: endpoint {
+                remote-endpoint = <&pads>;
+            };
+        };
+    };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
