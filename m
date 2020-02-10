Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D871571AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 10:28:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XItgk9pyoQeG7xwMp9lWP9/7sFg/ttrmWji/E9K99ZY=; b=a8iS6V3uXcpbX0
	Yvbljjn8DqecwWe14y/K5VRZye0Y9VF5xRQgIp0V5eCmw/yQ5qAGuKDYjqMRgTvRTsLv9usI5PsWT
	2Niv5vutPzoGOq2esYLnnrIgDr8ADYUTr925s77IJvCDL1YbinPF96GCU6Qglm4drqS0sKNaUYEB0
	0q2Z0Y1p1pPXuggj3hvIET5DlRrATFKzLBsXsc5Gfz2D11RWWkEUWT/7UdwT1b2i4QrhWkJthGWLP
	NAz3p7p3ri2tkb57UMzCbK1+LES338dbqjHn2WHg16PKExLlmDqjR0ZGCfW96bAE2MfIBJtFHQAtF
	FuqYCML23nFGzdjYpAfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15Mn-0007GN-HM; Mon, 10 Feb 2020 09:28:33 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15Lp-0006TM-GP
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 09:27:35 +0000
Received: by mail-lf1-x144.google.com with SMTP id v201so3632818lfa.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 01:27:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ypf2PVbAsW0uSJC/xuhYlQ/Mtj2shleLiZbK07EUwj0=;
 b=x0f3kBJfs1TQT26gIKmjgGSOqimBHYznHSoW11k0cYIjSbxkGJgkfStOtuYUhXTg/M
 Vz6iUQqe1sAUqwVk7R56B7wtEzBVNkrSJEPOWolB9SM3Lq57DGNbSXTLCVbPIbzrqoj9
 X1sVx7xCn7pKir1HJ9QZkjt6KaZpdiqOMDESW8l5L72W+iE1xot/1uigxxWqI3fjETfz
 Tk/7Qpw27/LMc/AwCAShiDCQW92vfPnAcKhGYEnTJc0EItMdBjO2OEGYr/CKcHOWul4G
 5R0p00zxAmWrl7iXvx2bUqqPnadg5Wt6uDiyh7/QF3LtqHXkaAKAyHfgHxNDQNc1kecG
 nKiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ypf2PVbAsW0uSJC/xuhYlQ/Mtj2shleLiZbK07EUwj0=;
 b=XZIDN4p+7NNLD4jQDttRQgHG4QXa6XibGqxe4es0uncqgD86iN8TDOICBzM/1BNHZi
 R70Xc0P+AhIoCdrgQHTx53IO8WYOr847u79hDcsY3REqH8tHQmTeXXo8PedemXADOJDE
 xMC+bpAlUC1E+PBRG+Zhq2dpMcBUR7Art6//WKaqZ+XNN2ObHO6NNge9TWPLOLDmbiUo
 qQI9elyqCAQYqkWQyN33C2Ug5r8OcAx74V85WtRDJBT4Dd2laURUP5oJsslR5esoXnNx
 CJ9lJ0gnyGEdyw0AdGEEeZfWOowENez8H8dksdM18/aq1VK5x+855mFO5l1wdUPcjDcH
 Mcgg==
X-Gm-Message-State: APjAAAWWoXmWkmtE/nElx+Crw65c9E6+N8atyYdDbPHZ/0cpgaNfad0R
 pjBQjJ3zpOtIP6eeBKIzO088nIe/eGY=
X-Google-Smtp-Source: APXvYqwQHaVhyh725IyFzPTM076vs4JVrzJ8l8B9fKRDiQUGK9CnZtXYrLQX4bxiC1FhaO5rQ2++UA==
X-Received: by 2002:a19:7015:: with SMTP id h21mr297087lfc.68.1581326851914;
 Mon, 10 Feb 2020 01:27:31 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id d9sm5989882lja.73.2020.02.10.01.27.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 01:27:31 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 4/7] dt-bindings: arm: Add Versatile YAML schema
Date: Mon, 10 Feb 2020 10:27:10 +0100
Message-Id: <20200210092713.279105-5-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200210092713.279105-1-linus.walleij@linaro.org>
References: <20200210092713.279105-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_012733_567516_823183ED 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This implements the top-level schema for the ARM Versatile
platforms.

Cc: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../bindings/arm/arm,versatile.yaml           | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,versatile.yaml

diff --git a/Documentation/devicetree/bindings/arm/arm,versatile.yaml b/Documentation/devicetree/bindings/arm/arm,versatile.yaml
new file mode 100644
index 000000000000..81fd010643f4
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/arm,versatile.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/arm,versatile.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM Versatile Boards Device Tree Bindings
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |+
+  The ARM Versatile boards are two variants of ARM926EJ-S evaluation boards
+  with various pluggable interface boards, in essence the Versatile PB version
+  is a superset of the Versatile AB version.
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: The ARM Versatile Application Baseboard (HBI-0118) is an
+          evaluation board specifically for the ARM926EJ-S. It can be connected
+          to an IB1 interface board for a touchscreen-type use case or an IB2
+          for a candybar phone-type use case. See ARM DUI 0225D.
+        items:
+          - const: arm,versatile-ab
+      - description: The ARM Versatile Platform Baseboard (HBI-0117) is an
+          extension of the Versatile Application Baseboard that includes a
+          PCI host controller. Like the sibling board, it is done specifically
+          for ARM926EJ-S. See ARM DUI 0224B.
+        items:
+          - const: arm,versatile-pb
+
+patternProperties:
+  "^core-module@[0-9a-f]+$":
+    type: object
+    description: the root node in the Versatile platforms must contain
+      a core module child node. They are always at physical address
+      0x10000000 in all the Versatile variants.
+    properties:
+      compatible:
+        contains:
+          const: arm,core-module-versatile
+        description: this node is the core module node, it can be compatible
+          with syscon and simple-bus as well
+
+    required:
+      - compatible
+      - reg
+
+  "^syscon@[0-9a-f]+$":
+    type: object
+    description: When fitted with the IB2 Interface Board, the Versatile
+      AB will present an optional system controller node which controls the
+      extra peripherals on the interface board.
+    properties:
+      compatible:
+        contains:
+          const: arm,versatile-ib2-syscon
+    required:
+      - compatible
+      - reg
+
+required:
+  - compatible
+  - core-module@10000000
+
+...
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
