Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 109901FB037
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 14:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8LoRaAwn81ZBgoqAXntBEUZG1wVm1D9w4FnCgxCOzXw=; b=ERe/PShqUHCgAW
	cIRDH9kGLIEuomTMhl2l2xVRV/3sMoK0uQXLlbPLluxA3rI0SdaR43FgD1IwidmRVheaU4HM4fWd0
	O2MoXxbTY/i/C3xmzzO4RRec8Bp+9ks26QRGHdHAEWU4DCBvQMJrLGlAfMdB0uL6t5qX+DMjAZ6Lg
	h3Qptz2rJJGkUepnWz+GN1Fw/lmtxkbdZpIgNHXRDeqRjNjRzN5d0HKAG/Lo4tIUDi001ZHQqthBD
	b0zbs+wedQ2XzKz7h6F2i/fBUz1ekFuQbZ5qIUhv//JnsJ3Ip6j9HWigs3pPjHVnawKxD9QVygySX
	DtvVQwcDMHcUfr4BvU+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlAYq-0001n5-0w; Tue, 16 Jun 2020 12:19:28 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlAWt-0000NY-79
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 12:17:28 +0000
Received: by mail-pg1-x543.google.com with SMTP id t7so9151552pgt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 05:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WPc9wn7ciRL1/w7YcmkKxstKF3mhNYu9SS7UDFpaIkA=;
 b=pRHoQGOibAbZ1yZhGC1VjydH6LsawBp9BOxAXHkYUj73VL61nHAE9LWaxMS5BnRLQD
 U09DfnmpkPud8r6/qyDr6JHMNsS4fUKvpjRC9Ju7IeBMQu9uoxQdwH92a7pKmcZ8PSzP
 EGhL6bYdu+H641fbEeINue5LO6RHJYIz8c0IM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WPc9wn7ciRL1/w7YcmkKxstKF3mhNYu9SS7UDFpaIkA=;
 b=n7e6KCyA4+jwujWKREi984HEZ/0UuS9bLNqUV38wHvtb4ie9Uvzh6+Z5U2r0mN7i9x
 upytNzVaAJaALcuGMz1QhwtSfV+SJMTjarj4cqzL51YiL4IbIcGbMiTv9dl0iFAwiyJE
 isRUhQJf2Dsrb8fll2KyPxrP7UIdFsHbGx/Wv3C3aI2Dk3XjA9Cr/GWSXL1TrMtbCROV
 TPStkMRtY4aMS683XTipNl0BiK5onkRsF+4WVYXf7J/nnm1lZ2Zoa7Naa89jt8TQQvDJ
 kDQzGEVOdw/uNEXOXXUhpEWnXQ6GFzYBgclV0fmViZwSpDIOmOwOV3yf7rrIua9YEL7S
 qp5g==
X-Gm-Message-State: AOAM533Kexm9p5JsaIJu80JDL1fqWvqD8nXW2tsRLAsUIZfZLMJSIUdh
 Q5Pjbof6sr3ghvDfhh+HJDwgorRgAdo=
X-Google-Smtp-Source: ABdhPJwFji2rq0/TQPbi6zc2IyYD8PpzBsMwAjXHb3n4En8XrRpu37zMMSxM+h6TlaeDuyV620XM9A==
X-Received: by 2002:a63:3e8d:: with SMTP id l135mr1833340pga.230.1592309845671; 
 Tue, 16 Jun 2020 05:17:25 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id f23sm2360703pja.8.2020.06.16.05.17.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 05:17:25 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 07/12] ARM: mstar: Add binding details for mstar,l3bridge
Date: Tue, 16 Jun 2020 21:15:20 +0900
Message-Id: <20200616121525.1409790-8-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200616121525.1409790-1-daniel@0x0f.com>
References: <20200612130032.3905240-2-daniel@0x0f.com>
 <20200616121525.1409790-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_051727_335063_635D2476 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Daniel Palmer <daniel@0x0f.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a YAML description of the l3bridge node needed by the
platform code for the MStar/SigmaStar Armv7 SoCs.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 .../bindings/misc/mstar,l3bridge.yaml         | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/mstar,l3bridge.yaml

diff --git a/Documentation/devicetree/bindings/misc/mstar,l3bridge.yaml b/Documentation/devicetree/bindings/misc/mstar,l3bridge.yaml
new file mode 100644
index 000000000000..cb7fd1cdfb1a
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/mstar,l3bridge.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2020 thingy.jp.
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/misc/mstar,l3bridge.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: MStar/SigmaStar Armv7 SoC l3bridge
+
+maintainers:
+  - Daniel Palmer <daniel@thingy.jp>
+
+description: |
+  MStar/SigmaStar's Armv7 SoCs have a pipeline in the interface
+  between the CPU and memory. This means that before DMA capable
+  devices are allowed to run the pipeline must be flushed to ensure
+  everything is in memory.
+
+  The l3bridge region contains registers that allow such a flush
+  to be triggered.
+
+  This node is used by the platform code to find where the registers
+  are and install a barrier that triggers the required pipeline flush.
+
+properties:
+  compatible:
+    items:
+      - const: mstar,l3bridge
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
+    l3bridge: l3bridge@1f204400 {
+        compatible = "mstar,l3bridge";
+        reg = <0x1f204400 0x200>;
+    };
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
