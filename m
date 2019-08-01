Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6111A7DD00
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 15:57:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LjUTuCysPvq/cJnOyvlMxtuPzk23r2gFHL83l0i2beg=; b=JovFTDP8Vgpo8b
	dQW7Uu4t8+34fSyo/BhT9gg+cu+sO0kcwr4tqw858tbId41SglWW+u4an5ZT5obC11+hjf7QUCyt/
	pBI6aqNgSP+qLwZa0jDp/Z9TcsokgD4p6qBixqpEy0BdRSssPK4nUcLoydP2zy8tM5aXxsR+HXDGu
	JafA7kAsLg6AIN/d9KX9EMoq2Oq3INatGAfuhWuEjrHKc2JND29YNM620YXhtNZzQ+u8kAOqnhod3
	oYNXLaS8zbD9YI9AQmrcpQiec+3huJmgCvEMKTPMPqNkBto1Qnhf7A5bnyJb0PJQW/C5LZHa8jAhF
	a/Jy7UsWXBAJpfQi7MTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htBaG-0001Wt-2M; Thu, 01 Aug 2019 13:57:32 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htBZa-0000zd-Ol
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 13:56:54 +0000
Received: by mail-wm1-x342.google.com with SMTP id h19so3735429wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 06:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pSLblDT1YKW8Afz4DjDElhvTYG2p3Mxb+10IzzVXgtY=;
 b=ucI0/5rQdHTSxdJdYemT9PDdqOARI3UUZkH6O0xd7g8wM48+t9yXTvlgzxD7g2R24E
 lLZ78/XiwJfnNa4MJ/OafucujFyV0Gn8lJdLGwKq2RtOXvAdBzALsB1rgo+xHG6LwGwI
 s3L8u9aycO26fTsHxnIx/tf/eEnkyL+/5JkWmb21o3/C6biyg0lSjXjwlNJXC3eieNIn
 xOcItVB3gKdG6VaHVj2t5pL5GohWo3w3FUZS1t1121B9Jkc90ujqeHaLnMc/Le2XM1A1
 vdDhE5iexQkHFXsLrhBHx+sS4Ua7LDUlN7QtVRZcj7VPVxOD075d4wHK8VxxA9tKVqJG
 O+2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pSLblDT1YKW8Afz4DjDElhvTYG2p3Mxb+10IzzVXgtY=;
 b=LYgJoU0YnjZD7jX6nr0PZv4Oozs22gTm1QWklaglO0/1dtWPynwjgXJUr7BJyfqWjR
 Mx65F4eE01So1b1hWxiQZJrDRXKMOXVqKHxneYyiiGDUiItCqjMSd249opkHlrhjrVUQ
 i0tRkhikQ0mK2JXMgziu+tLb4OsXtWbOHHcwlEADEt0g27YnP/zRmC+Uyh5ZJolvRlUb
 /5JjkCkU+3VWuGpi9ptBnzKq5i64nVZ3hZrOfp11bVMHgQ0vBA/8yJwp7pP/w5dq09U6
 DFsrO2icifcLOY5A+/Wnk2N2JvIR7XpKE0TWxICRJMBfvDmEqxmQslLtR8Sj4JRe2ZUU
 nOVA==
X-Gm-Message-State: APjAAAV//tdnagX7tmK1XPNtiIeVr+2q2gq/8C8hoz/sprOYiZYa5q4I
 RiUhyhi+W5ufn5WeucvrEZmIP9RnXDk=
X-Google-Smtp-Source: APXvYqxXU06So5Pals1RaZnKSyC27tttAB15Zd1eoyj2ze5k4q4HC26blumIHYeeqBiyLih9oLDmgA==
X-Received: by 2002:a1c:6a17:: with SMTP id f23mr54493426wmc.91.1564667808925; 
 Thu, 01 Aug 2019 06:56:48 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id u6sm69659952wml.9.2019.08.01.06.56.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 06:56:48 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [RFC 1/9] dt-bindings: mailbox: meson-mhu: convert to yaml
Date: Thu,  1 Aug 2019 15:56:36 +0200
Message-Id: <20190801135644.12843-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190801135644.12843-1-narmstrong@baylibre.com>
References: <20190801135644.12843-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_065650_805722_13A4A844 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 jassisinghbrar@gmail.com, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../devicetree/bindings/mailbox/meson-mhu.txt | 34 ------------
 .../bindings/mailbox/meson-mhu.yaml           | 53 +++++++++++++++++++
 2 files changed, 53 insertions(+), 34 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mailbox/meson-mhu.txt
 create mode 100644 Documentation/devicetree/bindings/mailbox/meson-mhu.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/meson-mhu.txt b/Documentation/devicetree/bindings/mailbox/meson-mhu.txt
deleted file mode 100644
index a530310772b9..000000000000
--- a/Documentation/devicetree/bindings/mailbox/meson-mhu.txt
+++ /dev/null
@@ -1,34 +0,0 @@
-Amlogic Meson MHU Mailbox Driver
-================================
-
-The Amlogic's Meson SoCs Message-Handling-Unit (MHU) is a mailbox controller
-that has 3 independent channels/links to communicate with remote processor(s).
-MHU links are hardwired on a platform. A link raises interrupt for any
-received data. However, there is no specified way of knowing if the sent
-data has been read by the remote. This driver assumes the sender polls
-STAT register and the remote clears it after having read the data.
-
-Mailbox Device Node:
-====================
-
-Required properties:
---------------------
-- compatible:		Shall be "amlogic,meson-gxbb-mhu"
-- reg:			Contains the mailbox register address range (base
-			address and length)
-- #mbox-cells		Shall be 1 - the index of the channel needed.
-- interrupts:		Contains the interrupt information corresponding to
-			each of the 2 links of MHU.
-
-Example:
---------
-
-	mailbox: mailbox@c883c404 {
-		#mbox-cells = <1>;
-		compatible = "amlogic,meson-gxbb-mhu";
-		reg = <0 0xc883c404 0 0x4c>;
-		interrupts = <0 208 IRQ_TYPE_EDGE_RISING>,
-			     <0 209 IRQ_TYPE_EDGE_RISING>,
-			     <0 210 IRQ_TYPE_EDGE_RISING>;
-		#mbox-cells = <1>;
-	};
diff --git a/Documentation/devicetree/bindings/mailbox/meson-mhu.yaml b/Documentation/devicetree/bindings/mailbox/meson-mhu.yaml
new file mode 100644
index 000000000000..b84c4c05e176
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/meson-mhu.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/mailbox/meson-mhu.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson Message-Handling-Unit Controller
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+description: |
+  The Amlogic's Meson SoCs Message-Handling-Unit (MHU) is a mailbox controller
+  that has 3 independent channels/links to communicate with remote processor(s).
+  MHU links are hardwired on a platform. A link raises interrupt for any
+  received data. However, there is no specified way of knowing if the sent
+  data has been read by the remote. This driver assumes the sender polls
+  STAT register and the remote clears it after having read the data.
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-gxbb-mhu
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 3
+    maxItems: 3
+    description:
+      Contains the interrupt information corresponding to each of the 3 links
+      of MHU.
+
+  "#mbox-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#mbox-cells"
+
+examples:
+  - |
+    mailbox@c883c404 {
+          compatible = "amlogic,meson-gxbb-mhu";
+          reg = <0xc883c404 0x4c>;
+          interrupts = <208>, <209>, <210>;
+          #mbox-cells = <1>;
+    };
+
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
