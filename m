Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 004CC176F60
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 07:26:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LRLfwwrudfX36k3d2HHRDMB0KUTO8U2UqDPVJwcUrj8=; b=OEVrg781nHMqPqBHS1kNNlLYmu
	Tou30zKDs3BxexkFv1Cv67D/sgKOcIG4jvntb+p4EdwFr+OBXsPyPcf1G8aZSaIpk3NBgD91aAG/D
	j1GkIg/J4MGO6exaZSlkUxYCrrDlesaV9RoKPy5wlvd0Zk1Lu7Arwf1g8Dy9r3yMWtl4kczFtIb3b
	nW8/MEKXVzzTv7En0Z9lu/bBpMacQ4mRN5htFT7kfaZMiqkFtZQJ7MOU5Y87mC+lSROp06WodDtzR
	UcEXVX3+J/37HsbBc4NQ9a/gRigGSfg+f2CnxjLqvLIneCby4jh5vezFfl6KWi0bMYusOPuNwuxd3
	DX3gcZ1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9107-0004HD-O2; Tue, 03 Mar 2020 06:25:55 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j90yC-0001GN-JF
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 06:23:58 +0000
Received: by mail-pj1-x1042.google.com with SMTP id lt1so888256pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 22:23:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tPHP3U0sPqM0DsBy+RwsfJsD5yoax7+mg4Fx4kOx2W4=;
 b=gftyhLtY6oe+dn0zlfQ7x0MmGSUQca0tvt55/8WA2xk/vxzdERSYbaaz8E7aT0Yzmc
 Adg+2vx9e5GRvHOpcYixr0DG0yNktt0MCMoVHyibSNWapnAe0mxYH212d3T36PRdmG04
 DKGN0o7KELYMVsglOonaLIMkNWl8dP+ASS+61GpSDm1sxGeS/whvaZB22vzRBodOMLP5
 YT7dZRH3xz+3VZa1OrXjnSdyWzhcxtBElsvXFLKQXVr4GL7YNc6tnUlM3w8vKEzLMXpm
 nKcpSxR/ccgRxRPcSwAQS00famorFheSDrWLOhTjCd/3FqA3fW8HqKuUnu7K10LABHWY
 IyIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tPHP3U0sPqM0DsBy+RwsfJsD5yoax7+mg4Fx4kOx2W4=;
 b=a2VKpGeYkEDZi0SPBF7YTXG8nKEsqOrDmHpOdWd/fLwmGNCbJMQ0aKqGMrIBt721md
 7ZNZ7yrLE8C+wlFtcqbqtybTUHT0m44MpiIXm6RLOYP8e4UpBMsyf6i1p8zgRH0Blczu
 MBfBlEkflJzapdMGh36NZW1n115N2g5PVEhprwqdGzIVy7huIsVLtwHIR9yChj7LNpDn
 bghhyag+rLxj5TtXQIuHQg3lz/w9iAelx9rf9AZ31VskutB0mDhjNl5LDC0VFrmqjaqO
 s86ETATXg8t8e6Lz3C3pBHomc8toGlLdQ+hQH6t3HD8Brczod1BB69pCPibUh9qNcrRK
 b6ig==
X-Gm-Message-State: ANhLgQ1jVAJ4mARbO6bMu10vTWX85cQVZnxl6MSZXCRaF9QT76A78vNX
 TWsXCo5NA1d2y+FY8hJxXb4=
X-Google-Smtp-Source: ADFU+vswS8WZqh3XC80WYcxue2Wxbx8TtqPDEj+caARAlRMTrLaMq4b71T3x6WkBwXt9L3CUtE3sYw==
X-Received: by 2002:a17:90a:9a89:: with SMTP id
 e9mr2411465pjp.116.1583216635621; 
 Mon, 02 Mar 2020 22:23:55 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 (c-24-4-25-55.hsd1.ca.comcast.net. [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id k5sm7453526pfp.66.2020.03.02.22.23.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 22:23:55 -0800 (PST)
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
Subject: [PATCH v7 7/7] dt-bindings: usb: add documentation for aspeed usb-vhub
Date: Mon,  2 Mar 2020 22:23:36 -0800
Message-Id: <20200303062336.7361-8-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200303062336.7361-1-rentao.bupt@gmail.com>
References: <20200303062336.7361-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_222356_681312_3A091D08 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Add device tree binding documentation for the Aspeed USB 2.0 Virtual HUb
Controller.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
Reviewed-by: Joel Stanley <joel@jms.id.au>
---
 Changes in v7:
   - updated to dual license.
   - removed description for "reg" and "clocks" properties.
   - Added constraints (minimum/maximum/default) for vendor specific
     properties.
 Changes in v6:
   - added 2 required properties into example and passed "make
     dt_binding_check".
 Changes in v5:
   - updated maintainer to Ben.
   - refined patch description per Joel's suggestion.
 No change in v2/v3/v4:
   - the patch is added to the patch series since v4.

 .../bindings/usb/aspeed,usb-vhub.yaml         | 77 +++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml

diff --git a/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
new file mode 100644
index 000000000000..06399ba0d9e4
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
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
+
+  clocks:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  aspeed,vhub-downstream-ports:
+    description: Number of downstream ports supported by the Virtual Hub
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - default: 5
+        minimum: 1
+        maximum: 7
+
+  aspeed,vhub-generic-endpoints:
+    description: Number of generic endpoints supported by the Virtual Hub
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - default: 15
+        minimum: 1
+        maximum: 21
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
+            aspeed,vhub-downstream-ports = <5>;
+            aspeed,vhub-generic-endpoints = <15>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&pinctrl_usb2ad_default>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
