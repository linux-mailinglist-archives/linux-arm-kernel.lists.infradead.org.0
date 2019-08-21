Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB85096FAC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:41:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7hzhJ2geRS60ldEeZvfdGboAgkVUVljM1Rl1NpmYFBE=; b=kkfQD/HpodyxX965/62sOs91E1
	DNoIyEIXnB6iELLqQjRqvsbWb8cG64S2zN2TeOl7nbtXqzPsMd5p1AS7fKk/jcAbPz5yHyXjgu5Ar
	Yr2PCRa94T+MNTpo+4rUKQjEKQOZ5XlS/J/M86a7VVkImL7msfQt82Jjw2N3zj7rPljTIAtXP8ag1
	ccV+K3GJFjCi3EOGrhaghGMcJG8RAdsnDgU3QmhhmBxNTnEo4rMxIbG2gMtiMhM6ChND4zqHHBmpF
	hESfmtlewFvIwtp5a5RW9LWb9CHZsgucg2mb+IRjj+OZEed+w/VnmhSfz3CTvN2QPpfDomvtVsbnn
	OGZjY/uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0GYn-0005nR-Cm; Wed, 21 Aug 2019 02:41:17 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0GYL-0005Sf-6P
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:40:50 +0000
Received: by mail-pl1-x643.google.com with SMTP id m12so475108plt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 19:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=66HDQRzZHdTqJMzuH6Ul2StzM+H88/d/kw2iTDPPxiw=;
 b=IEJF5hUtFv+y59Inx8n1xsEI0wZhB+RMvwdTwBQEdA27ffmbh2cr4lEkXcrFjtzAyo
 ZakWSuBTFoOP6BSvKmpi8PFPHY8Hkd3B46AFxHMPz2qPRgWvcgJPfkyWXJoAsoDkopa9
 QMKBVl/HjnyAyzfnMla8jkO/81dxcLtkjIuoHzs4opQn5HknuO0ckgRYFSnhI+op4kHb
 o3XVP+PpfhdbMQ41zImtOVlBZ0NpC3tQ4ZTTfA8u3omIQ06Ly+c2QxWzSof5Qyh1DNfD
 b1h5TuSeMBgRZMaOdKtOedjKed2gPlhbAVkhlJqJu8vNJQrupu7WV9+uSeITUoATjX9k
 E2qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=66HDQRzZHdTqJMzuH6Ul2StzM+H88/d/kw2iTDPPxiw=;
 b=fyxwxMRiIKIfLTQmKPdHDpaZPFiYmdMggB3QJKThxbLyo6cvvdvcwD7YT8Y+5WBc8T
 Egz0UZ0ZBakdNPGXZs4h3YuwnaAV6j/iZOGbdyURZCDU6fFrqd/GkTKO2z9FKo26C2D5
 rvIP0ZchIK8t9Vj3REUgdNYiYpfZa8kYnLGit5GFmINWvuwR9Ukd46pYtwuBihSfesVg
 5+jmdLYjtTquq1hxjamap8/+YjJJDJtkVoLDEZ34IfHh28xgL6UCJa7xBPIaKNIcX1SQ
 ZoQAowoLsJdZiTUay24j8/onG9D1nXWY9+778VokOLRcYU6H01XCFOit4IMWbG9h0AbR
 tLcA==
X-Gm-Message-State: APjAAAX00vIU5R41PsnntFEe9558OCOfsoyfYzVu7YPIFXz8yWH+wAA+
 lJhSO+yh4u82ldVtGGgr5XN1
X-Google-Smtp-Source: APXvYqw4z1lUeLa7hhwNhxLpxYMtmgc2ZQdhZdONdZIKJ46sgEl2aFe3EpqIHVClUxJqKgthgh+yVg==
X-Received: by 2002:a17:902:8d95:: with SMTP id
 v21mr32091053plo.267.1566355247485; 
 Tue, 20 Aug 2019 19:40:47 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7101:175:ddd7:6c31:ebc7:37e8])
 by smtp.gmail.com with ESMTPSA id
 b126sm26091608pfa.177.2019.08.20.19.40.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 19:40:46 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH v2 2/7] dt-bindings: mmc: Add Actions Semi SD/MMC/SDIO
 controller binding
Date: Wed, 21 Aug 2019 08:10:09 +0530
Message-Id: <20190821024014.14070-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821024014.14070-1-manivannan.sadhasivam@linaro.org>
References: <20190821024014.14070-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_194049_337063_C56A4B93 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree YAML binding for Actions Semi Owl SoC's SD/MMC/SDIO
controller.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/mmc/owl-mmc.yaml      | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/owl-mmc.yaml

diff --git a/Documentation/devicetree/bindings/mmc/owl-mmc.yaml b/Documentation/devicetree/bindings/mmc/owl-mmc.yaml
new file mode 100644
index 000000000000..f7eff4c43017
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/owl-mmc.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/owl-mmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Actions Semi Owl SoCs SD/MMC/SDIO controller
+
+allOf:
+  - $ref: "mmc-controller.yaml"
+
+maintainers:
+  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+
+properties:
+  "#address-cells": true
+  "#size-cells": true
+
+  compatible:
+    const: actions,owl-mmc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+
+  resets:
+    maxItems: 1
+
+  dmas:
+    maxItems: 1
+
+  dma-names:
+    const: mmc
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - resets
+  - dmas
+  - dma-names
+
+examples:
+  - |
+    mmc0: mmc@e0330000 {
+        compatible = "actions,owl-mmc";
+        reg = <0x0 0xe0330000 0x0 0x4000>;
+        interrupts = <0 42 4>;
+        clocks = <&cmu 56>;
+        resets = <&cmu 23>;
+        dmas = <&dma 2>;
+        dma-names = "mmc";
+        bus-width = <4>;
+    };
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
