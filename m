Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A4819CFCE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 07:30:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wLZQLKPnWXx4y1AFscjJz0pLoX/Wb1N/FF5h8unApXA=; b=o7BXUPZWUSUPQP
	yKAB1KCgrwMMDyyw+WcodruQP0AOAMty4C1KzvoW0B5UAy+yqgMsuttwgb7MYxFSIjg+DYmAe8alZ
	LptVFSUTWMe+d36useR1zx23XaWDVCekxfI/ODlQ/LlDNMu2Lbxut6ljuDIMVexJwxMUsItvMInv+
	FHeOm2LBNVymxktnSgH4YCmIxLV1/H0uNXE2eLka0BvGWoE1umGHEC7BGY1A9a3EQPpIcfrijlT1n
	vm/22ZUjNNnZ+az1xa8vH30/y/GL7kXAU4tS/kZz2E7uQGc8T/LcqhOWX31k++/cLV/I6oo+hdaRO
	T+8ZLYvevZNWF+D3icEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKEtt-0004MV-Bk; Fri, 03 Apr 2020 05:29:53 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKEtb-0004Gc-G1
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 05:29:39 +0000
Received: by mail-pl1-x644.google.com with SMTP id h11so2260102plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 22:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KLw94QzOfrSlneIl66aJeqE3HkANlVSekWIjkWzxQvY=;
 b=PKt+VBA+Nj5QZwvU3VoVz05hn4VqZW6gsQSaHWePw1hDrG4uF2wyEYHvoL9axac+UT
 /SJjESrKpWKeoKV1kosEcWp57JDwWud2EhlhbUcvhu7yikFnAgLxg4CfGiHupmpsLtpj
 vUaLYeq+JaOBPdA4aX0sEgFpn/+obLlbfQDXI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KLw94QzOfrSlneIl66aJeqE3HkANlVSekWIjkWzxQvY=;
 b=e7rDQefV9MrtF9QaeG/T9DE7KiGmvxIb2TkSHEgaJKMFh1nUp2kbfNt41Zi0AG5bPS
 WQMfOLoKoBuzoKh+XpGP9ryrCPA6++O/vEMhKiWpenADxTi/M7svaV+N7MNFeftOy1ly
 qVovMkCIvTcNkPs+t33qbYYkgCk5KozrgtHC9Ogur+RKQUwWhH23xtqzErPK827TzPVn
 FfgdKPtJHQs3L1en2+kthjhYhpXuwPnymNnMoZrZ08RT5jeja255esImupUPY93BSeDj
 H1OZvttpwbpgAB/8aCpJYGeSo/bkeUxPzDi1Phpil1GnX0UFyzZGVf5GDlyDYZY6QbDW
 nL2A==
X-Gm-Message-State: AGi0PuZG3obujneeomeOh0dudl2xdHGss31GfeAZBToHiiYrn1eJprmY
 D1pJcbG0RNjE8Fg8kin4YoxxNQ==
X-Google-Smtp-Source: APiQypKFrq1hzvYHu1Gx2CYehefEsIunfver6DV/APN1vij1JYePG7Mnfe62OlzktNTKKCAUvDcPkg==
X-Received: by 2002:a17:902:ff14:: with SMTP id
 f20mr6049293plj.206.1585891774509; 
 Thu, 02 Apr 2020 22:29:34 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:1105:3e8a:838d:e326])
 by smtp.gmail.com with ESMTPSA id c21sm4452156pgn.84.2020.04.02.22.29.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 22:29:34 -0700 (PDT)
From: Evan Benn <evanbenn@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: watchdog: Add ARM smc wdt for mt8173
 watchdog
Date: Fri,  3 Apr 2020 16:28:59 +1100
Message-Id: <20200403162742.v2.1.Id96574f1f52479d7a2f3b866b8a0552ab8c03d7f@changeid>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
In-Reply-To: <20200403052900.258855-1-evanbenn@chromium.org>
References: <20200403052900.258855-1-evanbenn@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_222935_552659_98225DAD 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>, linux-watchdog@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-mediatek@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Evan Benn <evanbenn@chromium.org>, Guenter Roeck <linux@roeck-us.net>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, jwerner@chromium.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, xingyu.chen@amlogic.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This watchdog can be used on ARM systems with a Secure
Monitor firmware to forward watchdog operations to
firmware via a Secure Monitor Call.

Signed-off-by: Evan Benn <evanbenn@chromium.org>

---

Changes in v3:
- Change name back to arm

Changes in v2:
- Change name arm > mt8173

 .../bindings/watchdog/arm-smc-wdt.yaml        | 30 +++++++++++++++++++
 MAINTAINERS                                   |  6 ++++
 2 files changed, 36 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/arm-smc-wdt.yaml

diff --git a/Documentation/devicetree/bindings/watchdog/arm-smc-wdt.yaml b/Documentation/devicetree/bindings/watchdog/arm-smc-wdt.yaml
new file mode 100644
index 0000000000000..24968f199413b
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/arm-smc-wdt.yaml
@@ -0,0 +1,30 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/arm-smc-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM Secure Monitor Call based watchdog
+
+allOf:
+  - $ref: "watchdog.yaml#"
+
+maintainers:
+  - Julius Werner <jwerner@chromium.org>
+
+properties:
+  compatible:
+    enum:
+      - mediatek,mt8173-smc-wdt
+
+required:
+  - compatible
+
+examples:
+  - |
+    watchdog {
+      compatible = "mediatek,mt8173-smc-wdt";
+      timeout-sec = <15>;
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index a6fbdf354d343..af8842b998a93 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1421,6 +1421,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/interrupt-controller/amazon,al-fic.txt
 F:	drivers/irqchip/irq-al-fic.c
 
+ARM SMC WATCHDOG DRIVER
+M:	Julius Werner <jwerner@chromium.org>
+R:	Evan Benn <evanbenn@chromium.org>
+S:	Maintained
+F:	devicetree/bindings/watchdog/arm-smc-wdt.yaml
+
 ARM SMMU DRIVERS
 M:	Will Deacon <will@kernel.org>
 R:	Robin Murphy <robin.murphy@arm.com>
-- 
2.26.0.292.g33ef6b2f38-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
