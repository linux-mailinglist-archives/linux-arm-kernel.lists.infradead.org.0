Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6095DE4C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 08:45:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rKTdmZj1R3qZ8z+tLATRUreGKMbnN7wp3/uTUoxfhkU=; b=NwZO9/9Qrwlsoje6a0HQXES2WE
	eITj5rvPa6guyLdT8YQrZNL3dVkLothrV3nug6VCIuqub1SBdd/a227zLlxC8tjWe+Tx6kJLE7Uhf
	6yOEq059l8K6mptFb82XYw5SN6Sty0ksg5OCtBNLQCaxIwtrjxM3egR5D+aRe2gRMdE+6/MfWmyAt
	Q+7SvLhWNEqkj3suRCth9TIJn6539kyLfjXRk+Zy+YRxgXmKjzWXQEHSXuPWsCz4jQrLVmXRHkT//
	WhwE/wXPLb3o9hv6KoWJ8phkLBfJjgBxKTkNCEVQH2x3MdG5XWdgZvm2+JncvjtASsGaLchuGEGx6
	yfOTDSfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMRR9-0003s2-UL; Mon, 21 Oct 2019 06:45:03 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMRQc-0003hT-02
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 06:44:31 +0000
Received: by mail-pf1-x441.google.com with SMTP id q7so7770489pfh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 23:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=P585Wb4GdNSdANLbtZBTejDHy0hzt6pLG6Y0SHAZ9bU=;
 b=o2UCcVa98LWeVYND0PE/v8hZfB6qvv7otuszYHpwOafbshMElcl2fopVc68goHvkSU
 4osSwuadu1/VmaP0pLtxQKWtvAHZjAbwXkJelhOa3PgwYAHDSwuEH9Ggv1L6RW1qguu1
 FWyVBRvOZbpj9GlVvA40GiIUh8M0+AJVzBXrFHzz9zAU1HElW1NHOHZctsx/WFe/jdQI
 3MjIj195CY/+vzsde3JHST48qEYNuagUXETObyQdmtnR6EfpH5aEy8B0HvhyYmbPmVgS
 9Ppwb539dHA3fbb/ONOn8qyo0Asm7y4sNhwbi6Eotg5qRu5+H/iYKdxJ7OsyHlLKFRc1
 V/9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=P585Wb4GdNSdANLbtZBTejDHy0hzt6pLG6Y0SHAZ9bU=;
 b=PGL1K1QZXbe5KHmbAlydz/dTDgOxgP/2iH18aC9vUn/0r0sCtpE8/ckupWhHc0kyHl
 UQ85BHoDdUSXpcpcXd/qUKqXBvRXVnw7QldUJST8c1o75FqB47NtRZwU7fUfIBO3x4MX
 2VrFcnPC0P6A2miCEdPiNo/FwaiOqRgkk22iWKaMO4c9+ukaBePwPQmAmsxn+JGR+XYA
 sSFiz5neWLyyOpYKxxRhJYHQrIx7GJxr5RR4jA7ml0WJNK2BiGY60RrX9CMjhBu+5bN9
 XztsvPTgqmC5W9dlLzv/L6zJMtenG5thIayAPcxSk1PTIDu+gF2HNGwHXKDkXQfuJfGd
 /3IQ==
X-Gm-Message-State: APjAAAXQZN7yDz8HGgRtgk4T2Cha+aj2ybAunzkJKBz4klHc9oMZlrr9
 UsHTL6hg/Qj1OAUfOqFGCxYX
X-Google-Smtp-Source: APXvYqzT1XpwNz5+vlVRLju+CTTRBtcnDqb2C9zsWzuD9d6oV4fIlpTWzzYHcDfIgijryYQagwybBA==
X-Received: by 2002:a63:a02:: with SMTP id 2mr106677pgk.389.1571640269210;
 Sun, 20 Oct 2019 23:44:29 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:700f:8db6:2442:890f:ac37:8127])
 by smtp.gmail.com with ESMTPSA id d4sm13156624pjs.9.2019.10.20.23.44.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Oct 2019 23:44:28 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v3 1/4] dt-bindings: gpio: Add devicetree binding for RDA
 Micro GPIO controller
Date: Mon, 21 Oct 2019 12:14:10 +0530
Message-Id: <20191021064413.19840-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021064413.19840-1-manivannan.sadhasivam@linaro.org>
References: <20191021064413.19840-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_234430_076074_2C4B6985 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-unisoc@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, orsonzhai@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add YAML devicetree binding for RDA Micro GPIO controller.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/gpio/gpio-rda.yaml    | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/gpio-rda.yaml

diff --git a/Documentation/devicetree/bindings/gpio/gpio-rda.yaml b/Documentation/devicetree/bindings/gpio/gpio-rda.yaml
new file mode 100644
index 000000000000..6ece555f074f
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/gpio-rda.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/gpio-rda.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RDA Micro GPIO controller
+
+maintainers:
+  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+
+properties:
+  compatible:
+    const: rda,8810pl-gpio
+
+  reg:
+    maxItems: 1
+
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+
+  ngpios:
+    description:
+      Number of available gpios in a bank.
+    minimum: 1
+    maximum: 32
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 2
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - gpio-controller
+  - "#gpio-cells"
+  - ngpios
+  - interrupt-controller
+  - "#interrupt-cells"
+  - interrupts
+
+additionalProperties: false
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
