Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE344AD42
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 23:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f9kxFYGB+9TdVVJGlH980b05fdLZpydOHbBLlltM8gU=; b=jhSKtCfsGjI61l
	w8BwIzjQuQe3mBi0T+CgAKLubcFpUhtDe7ll8B9PxXY+AVNhRLI2DlxWJqbTImSgrM63MH5VFdzba
	jUgqRXfBVoNJoS9uo7tGFhTBXX7P7lpvOWPr/544P+LDl4iRoTC3KPKdzHNa2RhsNywuj0UEFxAEW
	ha4RgSHnLiZP1aEINWZYHYHLCsq1uyiB/BQ0ksAmQUNCGTdxYZ29Nax5V21xRqWchWgESZiUIf3Ja
	PhnLzgc45DRa3qe0Z8+FXjTzPiId8g+flDpEV1MU+OpZNQqCiXy9+2rV0FTVFZ6lHnivWOvUSQUiM
	ju54IwXVEknUASv+jWCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdLZX-0000SG-65; Tue, 18 Jun 2019 21:23:19 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdLYp-0008Sx-4k
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 21:22:37 +0000
Received: by mail-io1-f67.google.com with SMTP id k8so3103068iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 14:22:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dvwy0NMWxkK7T26JupGv0ID5o5uJQIlL2sATl6Jklow=;
 b=tcfNLy1G/XeJZcnuk3KeUlQX8Pe9dy8pH+I5fRR9HpGMQ5fwtnyJGjavjYP1GbUGIv
 2+1KOuN6Sb4ajIKfNlKY7Mw9Jaz5EXEU4pxuCOWH0qQDvWH1W0T0Zm4PPOT+3Kx2Aveb
 1OGFyPyT9w9g0z+8iMztenNv7qtwowoMoom2d3H21xXjLiSHVKrC0qej6tj6E5vaAxlZ
 oFrD+0ktA+aaCUhdgI23AOSFze9gWi5g7NCwk70bFbOt0dGvpqH9KwJJb23X+1D6zn+U
 xA61xFcw8BuH1pIuhjGocsVcoEO8ry3lHstkbnHupm8t7B83tSDQUrQX4Jtg8/dAenH6
 uydQ==
X-Gm-Message-State: APjAAAXj3slDwV5Uacfw7WTfowjFmmnp5CatvTDpnKDIy5OepSHL3T59
 lINYYIaXWutC++kM8FYfJg==
X-Google-Smtp-Source: APXvYqztriW9tUx63PRiKS0KvYK2a5w/3Dh7nfnzkb3ISW+UTzHjmsH4zl36EQRlRNgAFnk61ivllg==
X-Received: by 2002:a6b:7f0b:: with SMTP id l11mr80712311ioq.282.1560892954485; 
 Tue, 18 Jun 2019 14:22:34 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.192])
 by smtp.googlemail.com with ESMTPSA id p9sm13233480ioj.49.2019.06.18.14.22.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 14:22:33 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: arm: Convert NXP LPC32xx board/soc bindings to
 json-schema
Date: Tue, 18 Jun 2019 15:22:27 -0600
Message-Id: <20190618212229.32302-3-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_142235_178225_6642B509 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Roland Stigge <stigge@antcom.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert NXP LPC32xx SoC bindings to DT schema format using json-schema.

Cc: Roland Stigge <stigge@antcom.de>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/nxp/lpc32xx.txt   |  8 ------
 .../devicetree/bindings/arm/nxp/lpc32xx.yaml  | 25 +++++++++++++++++++
 2 files changed, 25 insertions(+), 8 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/nxp/lpc32xx.txt
 create mode 100644 Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml

diff --git a/Documentation/devicetree/bindings/arm/nxp/lpc32xx.txt b/Documentation/devicetree/bindings/arm/nxp/lpc32xx.txt
deleted file mode 100644
index 56ec8ddc4a3b..000000000000
--- a/Documentation/devicetree/bindings/arm/nxp/lpc32xx.txt
+++ /dev/null
@@ -1,8 +0,0 @@
-NXP LPC32xx Platforms Device Tree Bindings
-------------------------------------------
-
-Boards with the NXP LPC32xx SoC shall have the following properties:
-
-Required root node property:
-
-compatible: must be "nxp,lpc3220", "nxp,lpc3230", "nxp,lpc3240" or "nxp,lpc3250"
diff --git a/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml b/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml
new file mode 100644
index 000000000000..07f39d3eee7e
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml
@@ -0,0 +1,25 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/nxp/lpc32xx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP LPC32xx Platforms Device Tree Bindings
+
+maintainers:
+  - Roland Stigge <stigge@antcom.de>
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - nxp,lpc3220
+          - nxp,lpc3230
+          - nxp,lpc3240
+      - items:
+        - enum:
+            - ea,ea3250
+            - phytec,phy3250
+        - const: nxp,lpc3250
+
+...
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
