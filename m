Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A6ED7DD7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rKTdmZj1R3qZ8z+tLATRUreGKMbnN7wp3/uTUoxfhkU=; b=LGH/Orwf2gjMJq/8QNsq/2lFNt
	klnJQGVSK+hi6QWuDe1pDgGTQ3Fwy+/rz12IRYegoKv6NSCwN03uRcomItiTpnzdnfQxdP0Ux7If4
	pB79tchdEH5VfrmzCWZHYZ3jKFFb8zty7fXy0dMscypUcOBYINIzHS2FfPKTcwIo6QBP9MpkHApsF
	8XrOqayhTdbRtxHk6dibJiANiB5jvUVqEQdpnjdUH2639ABmonn3P8LulBjyzYN5j+rqrMyyg1L6i
	cF27K4tWlXO6mCZQtAnY6iXpmX7Tikt+JW3Rk5jUcl2oq+53gJiN2h164zbmJJi9ezvY+dxb4GlOQ
	xReMRDtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQfe-0006d0-Tv; Tue, 15 Oct 2019 17:31:42 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQek-00069t-E9
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:30:48 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so12932844pfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 10:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=P585Wb4GdNSdANLbtZBTejDHy0hzt6pLG6Y0SHAZ9bU=;
 b=lpDLdyz6gnJaWTKjbVWSVfNBu6KMNSTe2jzE7hfZCBE/yhgGo3bcfsuo4VE0UxQoWT
 H75k5eMOlfLtO8A5ocoGCBC7WwIrGu5NhtVp7sU2OSO24qCzmwJDv9mjbf2XfFIjl7AP
 o0S59xqf2//C6qUa9OfgSXewKWN/9kN7P7YL82zLiYeepojPRIAT70xwjfgaY7nVRaaq
 MD5K5/WkIIMWT6vpdY5VfZPa9lGszMYcM9U188QDbEmSIifvhXo6ozxs2zk6P00wavPd
 x2Mtub+9nA8TRjOg44JFhRheRbLuOWlMlpV1hlNq3nE6bqeO8B0DoDLFYO+gjSMX4vyS
 W9qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=P585Wb4GdNSdANLbtZBTejDHy0hzt6pLG6Y0SHAZ9bU=;
 b=pI8SmuXr4ryKM7cxgV7tGEWGOn4KnUBkFQe8UNTUOoa7kMZsqnt31y/8U3A3xodatz
 eJVoGcszGmPKGvdMzLWd1e9rAoi5QIMjeYumKWvTxKepfZhB+/S0kQuZ44LGLBYcOP1r
 vpNAnXcHVZjZWrlRd7Raz//i1vsv39VtUsEs99UTRTveom2Zq+j0Tuq6l6zoA+bGyomh
 M5v9Ks2470hqEg8s9y8MDL7Po4wvX+cLGpEQnaaG/tCT0zIhhynsDzhiRtf9T57NzKnD
 Ui2GhRUPnv1cPexeXcy/WQnGk7cfyD/Ivq4PAcUYF/20LFLcoZi9EK+hJxAf13iP0TLx
 JtFw==
X-Gm-Message-State: APjAAAVJZMIpFG+BGKPx6SoQyE+dTGnb5RznP8p2eoP0n2x2JFcVuUMW
 ZFhSHGwre1eISaGY9NOlOEp0
X-Google-Smtp-Source: APXvYqwbCLpdmWKTZmSl1oTdfCb2flyajMLs6QMZwE38ftfHAg1sNcGjH12xadW0vkB52MaxPKYLhA==
X-Received: by 2002:aa7:8249:: with SMTP id e9mr38929777pfn.46.1571160645036; 
 Tue, 15 Oct 2019 10:30:45 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:6003:7cb8:25e8:2c45:fab2:b0c7])
 by smtp.gmail.com with ESMTPSA id w11sm28033563pfd.116.2019.10.15.10.30.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 10:30:44 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v2 1/4] dt-bindings: gpio: Add devicetree binding for RDA
 Micro GPIO controller
Date: Tue, 15 Oct 2019 23:00:23 +0530
Message-Id: <20191015173026.9962-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015173026.9962-1-manivannan.sadhasivam@linaro.org>
References: <20191015173026.9962-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_103046_495656_B5E6B79E 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
