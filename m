Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D3685D67
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 10:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUpzYA+PohJwRIlDl15UbU0AE1TADM6TyroytpHv8LI=; b=sAsYJ9SbMe19ti
	eunebxvNWbVM2LUvtq4Prgc4gKbNTpY3eJuphjFh/Bwt3MPDLE8EjxIZ3FhopCnbyGsPhArnQB3y+
	tZzFz3oUfHV+WrRhdR3YzEo2zyNI2TRwDShJILybCYxmvT/Ps/gZQm5pJi+VkgRaGaNDY1CxG7Dgy
	0Vr5Wq2wbS53WtCCP+dgIBuyI9Z5bJatDRVqGwQ3pc6fyQixhdvc+CV2I2b1NgQAxtoDOT+lIsha4
	kF46Oa+onFt7DvUbA3OQr2XH9Mkz0tm44E5qk6AUNjHdx4oeGkeCL1p/Q0pqKurKEkdyzRe2R+Zku
	V/FLnhDXNHMtkOvTKPkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveAh-0001iP-FR; Thu, 08 Aug 2019 08:53:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hve9B-0000Zm-Ct
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 08:51:50 +0000
Received: by mail-wm1-x342.google.com with SMTP id 207so1572714wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 01:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iW8tzeW7K0TPMYVtNZdzd/BRQ9VMD3jctm1FJGUZeSM=;
 b=U+1rSrOSBAVwD2xV5Wqi+JubfpOPj7BbfwOVl91eeioasasSohXj0vW+ehDEK6KX3g
 Apdr+8S9ShNA595Q/B7krCYRpiZ+SANfFtT+iy1Wzx2/Dqy3MHVIse3xg+DUXzSINhx9
 ZsLt6go7c7nyDTUViZqBCWaMQzo9gKUsDIi7wrS2UjoQMupj0pcBJf+8cKReAx0f2S9G
 m4ChFZYE74tC5/1A4e632qACSUVjcYfwrjj6Qm5Qvx/yx82YGYhhbDszrho/2fZJewRs
 43mOEHH8iPUniFsBMAGjoUdE85OvQ4HIYzMpCHriLN6goCvgTxhFMPZdQLPXtu4XcNhH
 Do9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iW8tzeW7K0TPMYVtNZdzd/BRQ9VMD3jctm1FJGUZeSM=;
 b=oh5eJC3B2Nyh0PHR936wNZ6MbaOvpO84QN8Wc4TPJ+XQyV5Cli0C04uYFqbRVM6U03
 ulvF2suzLilMPdjrOseAMuZCPcxin/KAbkdRNOX7F7bmSuhlUgQobOkN/5DSb/YTvswg
 MUKJqB6DDDCBCAnup6aB1eKLY6ivxeOlk1jhBOnkjA9jkKqIpGbFblkKFM9DWk+ek8q6
 wwPmlyOT3lxAIUjL0gJro09CqEAZIi7ne1qCGpgo1i6fdTXIs00qDmwczK2KcoQYy7kj
 H70wiT8l39DXEYsmOAbkbSjpM6SNHGA9UBAhQSJkirNto4p1CvKYMZ4dFY6vkxY0MR7w
 a5Tw==
X-Gm-Message-State: APjAAAW+9LuYbJRogG139nFSirqxxjcYxv1WfeF4JAR7iIy7fCsoo1ma
 b/EOSFncrw7YvRs6V0p5NQ0lr/0lWDyn7g==
X-Google-Smtp-Source: APXvYqxipG2kq0TWG7IP2yB2Dl9cz+yOGXnxw5hiCz4BM9W6aT6q0uSUV3H23Nad3CaZixRu55Cbug==
X-Received: by 2002:a1c:f914:: with SMTP id x20mr3170113wmh.142.1565254302735; 
 Thu, 08 Aug 2019 01:51:42 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id i66sm3360031wmi.11.2019.08.08.01.51.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 01:51:42 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [PATCH 1/9] dt-bindings: mailbox: meson-mhu: convert to yaml
Date: Thu,  8 Aug 2019 10:51:31 +0200
Message-Id: <20190808085139.21438-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808085139.21438-1-narmstrong@baylibre.com>
References: <20190808085139.21438-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_015145_459156_B314C9DA 
X-CRM114-Status: GOOD (  14.52  )
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 jassisinghbrar@gmail.com, Neil Armstrong <narmstrong@baylibre.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic MHU controller over to a YAML schemas.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../mailbox/amlogic,meson-gxbb-mhu.yaml       | 52 +++++++++++++++++++
 .../devicetree/bindings/mailbox/meson-mhu.txt | 34 ------------
 2 files changed, 52 insertions(+), 34 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml
 delete mode 100644 Documentation/devicetree/bindings/mailbox/meson-mhu.txt

diff --git a/Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml b/Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml
new file mode 100644
index 000000000000..319280563648
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/mailbox/amlogic,meson-gxbb-mhu.yaml#"
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
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
