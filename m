Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4374AD47
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 23:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9cxQZjJlGh0lbJqZiBvvjrcpAFD0AWKaeGAZu4NJUkw=; b=FL0l9emVP8XH8v
	2et/OH6/WXFrUP9JSECnyWUwf8TZfKZzFDc5FTG760zyTqe3bmL6sp1blqeKf4VSlVIoBLNl5jhMj
	+GGoOVR3sAH4YjLq5XXAYugvqhV82qoHWoOOPb/2KOTSzyumzxHK7PZviUdu2NbPXHMnfjFDot6Ud
	3yMnqh3BPDX7xrbzWlvPTuDNUw0rbi98n9QkBq2qduHXLAQool81gdOEwePXyYHAy+VOKEHya8hBV
	sG7rZTR2fj3pdf+n8sF86Gdb5ymfW0aztf1Prrz4v/4lgKPn0RFz4hPGQzQrlXH6sTDgMtWjoaPgb
	9rE6mhp1uh5Sn3UKXHjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdLa4-0000x3-MF; Tue, 18 Jun 2019 21:23:52 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdLYr-0008Vq-Ln
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 21:22:39 +0000
Received: by mail-io1-f67.google.com with SMTP id e5so33330708iok.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 14:22:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d1BYemcbhqptaa8GTNYdPi1AAHcGUKx5lEAq38HGA5M=;
 b=YiRnTst3tQYOKhaWFiHKK0zOSjETBIJ2RVZbOIZhHJ6sL1Zn4agC17ZZBlB0TVRM6N
 WP55hKQJz/ZhAZXA0s2hd7Y39ZRu5GGjO16/Hbs94d5icsnu0Iro4OcLHZ97JmPyfkL/
 G6u7bWrwiD1RYgFEi5RHG/YaA3NtxTqdQ3wIafOldz8MSwzfXHgEdmcBOrQTPPA6n6iM
 xF8HL9GVjPRdhZj4lFm16MKV6DEMi9BDe1rYX0IatVGtG33dFWxfuxZ/IjSHFwIXRYzq
 FKRdrFrB/yWsuYg0GvuN8t2y8m0nuJMdE3+bi62tFdw3igYf2mpqYdPLN4Q+sk4czlct
 2IXg==
X-Gm-Message-State: APjAAAVYb5Z+RJG6KqJ9uZ7ONAITDdbjsaFG7LBddYBPnWQO4yc08HED
 eD/taroRVnaaN//ESCveXw==
X-Google-Smtp-Source: APXvYqyS01JHUkRJhlDLcqAXjBTNzyTXmCBEPsTpmNR6Gc/YdLP4XfUBlAagv4pYlMsdKYO12PUggw==
X-Received: by 2002:a6b:6b14:: with SMTP id g20mr10087103ioc.28.1560892956980; 
 Tue, 18 Jun 2019 14:22:36 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.192])
 by smtp.googlemail.com with ESMTPSA id p9sm13233480ioj.49.2019.06.18.14.22.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 14:22:36 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: arm: Convert Conexant Digicolor board/soc
 bindings to json-schema
Date: Tue, 18 Jun 2019 15:22:29 -0600
Message-Id: <20190618212229.32302-5-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_142237_723178_1B1E26D9 
X-CRM114-Status: GOOD (  10.17  )
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
Cc: Baruch Siach <baruch@tkos.co.il>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert Conexant Digicolor SoC bindings to DT schema format using json-schema.

Cc: Baruch Siach <baruch@tkos.co.il>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/digicolor.txt        |  6 ------
 .../devicetree/bindings/arm/digicolor.yaml       | 16 ++++++++++++++++
 2 files changed, 16 insertions(+), 6 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/digicolor.txt
 create mode 100644 Documentation/devicetree/bindings/arm/digicolor.yaml

diff --git a/Documentation/devicetree/bindings/arm/digicolor.txt b/Documentation/devicetree/bindings/arm/digicolor.txt
deleted file mode 100644
index 658553f40b23..000000000000
--- a/Documentation/devicetree/bindings/arm/digicolor.txt
+++ /dev/null
@@ -1,6 +0,0 @@
-Conexant Digicolor Platforms Device Tree Bindings
-
-Each device tree must specify which Conexant Digicolor SoC it uses.
-Must be the following compatible string:
-
-  cnxt,cx92755
diff --git a/Documentation/devicetree/bindings/arm/digicolor.yaml b/Documentation/devicetree/bindings/arm/digicolor.yaml
new file mode 100644
index 000000000000..d9c80b827e9b
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/digicolor.yaml
@@ -0,0 +1,16 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/digicolor.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Conexant Digicolor Platforms Device Tree Bindings
+
+maintainers:
+  - Baruch Siach <baruch@tkos.co.il>
+
+properties:
+  compatible:
+    const: cnxt,cx92755
+
+...
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
