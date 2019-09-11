Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C284AF513
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 06:32:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FJ46npykmpgE24DRoag+xBxSm1SCtQUA5yXlCtikqR4=; b=QnJQC/ocATtJdg
	Wab5uY4ghLRR7K2J8esAQxKR96FdK/aqhk1AB5c23vnOUgBGrXbURptHjjgjxDZoGzB2qDDycLmAi
	tRYM5jBme50xuw4acpYuNy5GSqpoGFkHrprK4IFRf7bwAutS1NOS+MS4uqRFTkkTuzvrEXakDNF3D
	4r7VkkMyoXloNlf1lG4hvIjHoBdbVzhhln+hnAlfZC2XdNgVynJkqvaRek4UKgZv6Kz30Vw7WSRPH
	hCiFiygTp3K2meci95Nv65ldHDXJ40glbdlGI1V3N2kJGM9ATE68ACCUKsLiu+mPqWM6J5zCZw2Sc
	Mb7ZYYYG5OhgTpdVwaAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7uId-0003nH-K7; Wed, 11 Sep 2019 04:32:11 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7uIP-0003mU-9V
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 04:31:59 +0000
Received: by mail-pl1-x630.google.com with SMTP id 4so9581313pld.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 21:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fRwLisrL7tdw8jeFnNMz/YckPohXjdLILsNLz7Q7Smw=;
 b=f5mOxDM56oEBpeg3XwTmFP2ZD1ho8KgvXPE9wAczcztK9j151UsLqTlRiDdPv2DUj6
 HucaqzeHaMpS+emnBl5cPuloaWC1HCIYIvJclfjt1ykFsJWP9LOiGvHISOTTwtDRy6fQ
 z07qcfV92EZV1jE+mMDjeW2i6kE+dUGE6+nnc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fRwLisrL7tdw8jeFnNMz/YckPohXjdLILsNLz7Q7Smw=;
 b=GDk97Z0Z5JqWDCAqwxnS4uJdDwO5tHMmYEZiuLhAGNsDspTuvt51L7NIL9+1ZpOYPH
 nqrbwk/Mj9aKUzXxkBshulKlTyyTjQSMTYFRQJ0oNF5kkbCADO8SK+HjNdd9pDpJZ4Aw
 j25zLQtK7KwiHK8ctiCDe+8/5asu2M21In+jwS7eFAV14dxtCg26aJLxZ31FE3TKtCkp
 CQGCWEBUXIY6CN0pi5AjuzBvdbTESbzCQOd6dU4y4VThtZjdqueD/1RVVcP9CfQ0cWcl
 0ALnNBAQGDll/aDbRq4xYMZ/CZnl85ZrYG68IfwBB1J9aorbagB/6YukAeGKicbpZmAS
 8nYg==
X-Gm-Message-State: APjAAAV/VsKxeWNuc2aoddT4YtAykxvHSqOmI7Sib4l9MlCnEJk1yfXD
 4h90+R2hrRGBgFngSLzAaMbZS+GzKZRFDA==
X-Google-Smtp-Source: APXvYqxNIz55s+s7CpzdUQY1GObvTqYC64s53Ixi6y3JAqtYGeCr8oR2wo/Zk0+46ND7WHfMf4JQFA==
X-Received: by 2002:a17:902:758a:: with SMTP id
 j10mr35488782pll.233.1568176315884; 
 Tue, 10 Sep 2019 21:31:55 -0700 (PDT)
Received: from shiro.work (p1092222-ipngn200709sizuokaden.shizuoka.ocn.ne.jp.
 [220.106.235.222])
 by smtp.googlemail.com with ESMTPSA id u17sm264700pjn.7.2019.09.10.21.31.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 21:31:55 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC 1/4] dt-bindings: arm: Initial MStar vendor prefixes and
 compatible strings
Date: Wed, 11 Sep 2019 13:31:39 +0900
Message-Id: <20190911043142.3734-1-daniel@0x0f.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_213157_437338_CEC79F30 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:630 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Daniel Palmer <daniel@0x0f.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a prefix for MStar and thingy.jp and then defines compatible
strings for the first MStar based board.
---
 .../devicetree/bindings/arm/mstar.yaml        | 22 +++++++++++++++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |  6 +++--
 MAINTAINERS                                   |  6 +++++
 3 files changed, 32 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/mstar.yaml

diff --git a/Documentation/devicetree/bindings/arm/mstar.yaml b/Documentation/devicetree/bindings/arm/mstar.yaml
new file mode 100644
index 000000000000..fbb9f8d1c06c
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/mstar.yaml
@@ -0,0 +1,22 @@
+# SPDX-License-Identifier: (GPL-2.0+ OR X11)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/mstar.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MStar platforms device tree bindings
+
+maintainers:
+  - Daniel Palmer <daniel@thingy.jp>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+
+      - description: thingy.jp BreadBee
+        items:
+          - const: thingyjp,breadbee
+          - const: mstar,msc313e
+          - const: mstar,msc313
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 6992bbbbffab..74b8f6566dec 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -599,6 +599,8 @@ patternProperties:
     description: Microsemi Corporation
   "^msi,.*":
     description: Micro-Star International Co. Ltd.
+  "^mstar,.*":
+    description: MStar Semiconductor, Inc.
   "^mti,.*":
     description: Imagination Technologies Ltd. (formerly MIPS Technologies Inc.)
   "^multi-inno,.*":
@@ -921,8 +923,8 @@ patternProperties:
     description: Terasic Inc.
   "^tfc,.*":
     description: Three Five Corp
-  "^thine,.*":
-    description: THine Electronics, Inc.
+  "^thingyjp,.*":
+    description: thingy.jp
   "^ti,.*":
     description: Texas Instruments
   "^tianma,.*":
diff --git a/MAINTAINERS b/MAINTAINERS
index e7a47b5210fd..252fa7171aea 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1955,6 +1955,12 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 F:	arch/arm/mach-pxa/mioa701.c
 S:	Maintained
 
+ARM/MStar SoC support
+M:	Daniel Palmer <daniel@thingy.jp>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+F:	Documentation/devicetree/bindings/arm/mstar.yaml
+S:	Maintained
+
 ARM/NEC MOBILEPRO 900/c MACHINE SUPPORT
 M:	Michael Petchkovsky <mkpetch@internode.on.net>
 S:	Maintained
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
