Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DD0170C42
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 00:06:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CJuXKOJ95PsbW37GxIIWsog8OGbr/CGduOeJIuypO7Y=; b=G5Il6NCkWI6V4TGWIvG/cIliJy
	U9wgl9SidikFUKr+O5ns6A4g6cxwTEAj778VTxSym4JZFGNZBJBtzLGZ4ZixVL8XJhwmG6afuU5xY
	eJaiGZof2rqSsmokVCw1N1gmyxU6r5UMyzYFQ4rwcECBipeaQ+QKDq9xf7dHZJiljt2IK5SJNnNp7
	wgCcy5Bm9EqxtB379ity111QcG6etwqwZ2ocYjX0QtTmoPAwtsf6dhUu4VtOm5TfUOjvwUqCjvsMl
	xEzmbdRfR89U/+Rhqz66mXafGNqH+2iframenW9tfwmDHtuVMvhLlKoCpFj+/7rJPCu7clZH7+54y
	NDildnxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j75ks-0005h3-Om; Wed, 26 Feb 2020 23:06:14 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j75ix-0002yQ-Ig
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 23:04:17 +0000
Received: by mail-pg1-x541.google.com with SMTP id u12so382694pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 15:04:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tCAa6W32aZ6QEKpToe4fyzvDQPNVxEnlp17UdPCzM6s=;
 b=CNQku0uc3KAdlVn5+f/fITVzFDBSHYXMdo+LQ+8BVaz5Ht/O9aBWdkHEyNAVEACBKV
 uICQYcmmIle6na4NfMwdwB+RIKkkOVmrN7OkS11Bji2m331jj6F3aYPwDOvGGNUHye3I
 mGRlKp62czjkuztPiHmWW+KkfYVJlg1iQdnTVUk+C37gPgHC7ghJ58Xpj4KGjGKMqVYv
 gDLWHwfkFWFqP7TYdRDYPDqxSTkiqnFKRFSuIwghiWJyyWL1t4ZQ7lVfpEkYKXj91wIE
 fBqi7TVT7I9r0FamqmLRcL1Ff4vCvLqYAQGY1ns0Ka9X9xeIi/tO/w0jnj6l1bjC62wc
 9RKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tCAa6W32aZ6QEKpToe4fyzvDQPNVxEnlp17UdPCzM6s=;
 b=eoEoo/wqkf2cjS1l4dg3Do5IKk7QEodSlavb/AKoneGoOWOdK4n+/3H5ITZivI2P6B
 lwrf87Ky3gzmo1w2NygdwULE28kF2KASVJHxjRudlufxKu+GxC7vKk+qwJ7cYlBF5YCQ
 Q1M9eFWAcLVYR6XCzagQTy87bei63zTk/B+Rkz9if7Ke5+1eVojTndniMihNFf4h+F5A
 HSSHpOXXTRjZIVVqC15sx9F79VzLpVz6rXv4lah19K7mF1nDfdkXJmGB4n+Bugzy/j9f
 KgkOmAXImaaacpD02SZJqalvGoUuZB2aPQe5QEx11b5z9NkVXZQ5FEuWcg8LAQIGxjWH
 yySw==
X-Gm-Message-State: APjAAAWdySYIOFesrZmCwOuTViKzRslN6ZVFUoeCpmIisWbpceahVc47
 9Lp+KE3pRFeL3RSpmmr9sqM=
X-Google-Smtp-Source: APXvYqxhOPuxfNONXmDQxDXVEgm8yFWi7DxNNyLfDQf3TB7RUJQjT+qTeMMjNtBejIG2YsmlSgqcvA==
X-Received: by 2002:aa7:9f90:: with SMTP id z16mr1025096pfr.161.1582758254295; 
 Wed, 26 Feb 2020 15:04:14 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::7:5ebf])
 by smtp.gmail.com with ESMTPSA id 3sm3912621pjg.27.2020.02.26.15.04.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 15:04:12 -0800 (PST)
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
Subject: [PATCH v4 7/7] dt-bindings: usb: add documentation for aspeed usb-vhub
Date: Wed, 26 Feb 2020 15:03:46 -0800
Message-Id: <20200226230346.672-8-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226230346.672-1-rentao.bupt@gmail.com>
References: <20200226230346.672-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_150415_630114_9E0FF989 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

Add device tree binding documentation for aspeed usb-vhub driver.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
---
 No change in v2/v3/v4:
   - the patch is added to the patch series since v4.

 .../bindings/usb/aspeed,usb-vhub.yaml         | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml

diff --git a/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
new file mode 100644
index 000000000000..6ebae46641e5
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
+  - Felipe Balbi <balbi@kernel.org>
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
