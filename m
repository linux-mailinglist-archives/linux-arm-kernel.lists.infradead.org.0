Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30811172BFD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 00:07:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=v+7lnpm7CFVtaaTUbkBTlq3hKtzgD8zO2RkkXhJfzVQ=; b=BzESOotkTZxGsAmL5/eyeJUINI
	elW+KywA+LsVFRkRWeXC1BVRnLr+n9npsRLOdy2ORNFpt1j8VEKWxxukaeed28UlZMQzPwGO9Ai3c
	yYhhPhfYwmmoMAZSaHzVEU4ZrzPeGIt+pCPmtvtGwV4xWrWBxlRfGT72h2n+tlOh8TwjfsI2wwXYA
	6DxRvjwEG3vih9K6vaiOyC/bPe99z9w4OSR1w/80c3ObuJXhYr2v5HtR7vaTEjsTNdt3vQy44RGge
	4jWoxjcgl0q5zTYFV9NUOrOKPhBCJsQiXAmtGMz1nS2xrXYBGDv7vnG8evYhEvQaiazYU/bEKT0Jq
	eRSjMkBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7SFh-0000kM-Js; Thu, 27 Feb 2020 23:07:33 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7SDh-0007YD-8j
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 23:05:31 +0000
Received: by mail-pl1-x643.google.com with SMTP id q4so422452pls.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 15:05:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FOie+PWiSZiMJEo9veE/haA09vAP/gyvQzP/mDUUeLo=;
 b=bO5AUqx1exL98VPqoOr9m2rBzqwx+JG6jnpcqWyILDxgpHRf9ZyyeJMEyJ9U1ayxHn
 9juw1tR+uimsqKeNkLWZuoxdjCnRpdAjgKZfrwPUgSd+sxyGs9W67TF9JHGJgL//k3e+
 i6kdkjOemNfRQI0DiVYX0rtXpXnRdhkChqzzyZQjz+Oa4TfRtJ05kgvekhiUc8x5n4Rf
 Rqckjln5HiyBQJ66PntsPedMg052N+nOwUDKD1ormFdLCA3PxkXbNymHnJOmuxF7mNit
 JKAN2R4bzJqsRyGmZ3366Dy0WF9zIUmbqXuEVJd5eQ7OHKECLEktI90Rd1v/zXQQHffG
 TUew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FOie+PWiSZiMJEo9veE/haA09vAP/gyvQzP/mDUUeLo=;
 b=HM7/xaxhnnuYGeH5fIVnGuPdv+KjClYHnbmJZgUHsO+ns1SzaITL3rY+Kn7+ImtVRE
 F54l9KNzLE31y4CVYtMFGlRWpqLKxdY/+G1Ulri+xo1D/OZhVJwpl6jxvV+wPvFvJRGH
 +yBoOQ9PFDeuG5yEZeLvIC8jqDdI3u2il0kFq62+a33sy2GMjynVq5rd4xvCB7l/b630
 4zHzVDHkctCrTnPWk7X/+8fyBIePFPyZoWf85vSQronvLw1Elp0B23RcwnYvM8Yt42ql
 L82mtbZsgVyptaKo4Rtw39Ftw/8VWqRePrFvnuqjwarvjWCf/f0tCnArgkIhO/FTdJ/N
 Wcyg==
X-Gm-Message-State: APjAAAWZ/9xV2TAI4ar+TI4ZI2oPmCVgffNxEBOflGtt9NVFkfYLDIX3
 yFg4yMforYgNPpYZ2LnYyXQ=
X-Google-Smtp-Source: APXvYqxiM0Y8rvFyRXJfym2JxQVAYv9iF3d+OIytDy03RQI9STBUoMnSgqGcf++mM8Q/F4ywJd9n0Q==
X-Received: by 2002:a17:902:6504:: with SMTP id
 b4mr1072914plk.291.1582844727819; 
 Thu, 27 Feb 2020 15:05:27 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::4:d8f5])
 by smtp.gmail.com with ESMTPSA id w2sm8275975pfw.43.2020.02.27.15.05.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 15:05:27 -0800 (PST)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH v5 7/7] dt-bindings: usb: add documentation for aspeed usb-vhub
Date: Thu, 27 Feb 2020 15:05:07 -0800
Message-Id: <20200227230507.8682-8-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200227230507.8682-1-rentao.bupt@gmail.com>
References: <20200227230507.8682-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_150529_324296_6436113C 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

Add device tree binding documentation for the Aspeed USB 2.0 Virtual HUb
Controller.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
Reviewed-by: Joel Stanley <joel@jms.id.au>
---
 Changes in v5:
   - updated maintainer to Ben.
   - refined patch description per Joel's suggestion.
 No change in v2/v3/v4:
   - the patch is added to the patch series since v4.

 .../bindings/usb/aspeed,usb-vhub.yaml         | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml

diff --git a/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
new file mode 100644
index 000000000000..b8b1700c2423
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+# Copyright (c) 2020 Facebook Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/aspeed,usb-vhub.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ASPEED USB 2.0 Virtual Hub Controller
+
+maintainers:
+  - Benjamin Herrenschmidt <benh@kernel.crashing.org>
+
+description: |+
+  The ASPEED USB 2.0 Virtual Hub Controller implements 1 set of USB Hub
+  register and several sets of Device and Endpoint registers to support
+  the Virtual Hub's downstream USB devices.
+
+  Supported number of devices and endpoints vary depending on hardware
+  revisions. AST2400 and AST2500 Virtual Hub supports 5 downstream devices
+  and 15 generic endpoints, while AST2600 Virtual Hub supports 7 downstream
+  devices and 21 generic endpoints.
+
+properties:
+  compatible:
+    enum:
+      - aspeed,ast2400-usb-vhub
+      - aspeed,ast2500-usb-vhub
+      - aspeed,ast2600-usb-vhub
+
+  reg:
+    maxItems: 1
+    description: Common configuration registers
+
+  clocks:
+    maxItems: 1
+    description: The Virtual Hub Controller clock gate
+
+  interrupts:
+    maxItems: 1
+
+  aspeed,vhub-downstream-ports:
+    description: Number of downstream ports supported by the Virtual Hub
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+
+  aspeed,vhub-generic-endpoints:
+    description: Number of generic endpoints supported by the Virtual Hub
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+  - aspeed,vhub-downstream-ports
+  - aspeed,vhub-generic-endpoints
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/aspeed-clock.h>
+    vhub: usb-vhub@1e6a0000 {
+            compatible = "aspeed,ast2500-usb-vhub";
+            reg = <0x1e6a0000 0x300>;
+            interrupts = <5>;
+            clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&pinctrl_usb2ad_default>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
