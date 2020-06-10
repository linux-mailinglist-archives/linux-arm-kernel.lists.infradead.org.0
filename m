Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 657421F50DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y7aCgXly5pF/IcSwYwNtdwS6d6gEAQ0bZ8Li16vkbac=; b=Kvb3o3z8TVVTPE
	DKCEqUztKjo5svjqdvDlT/b8aXaQiA6koaUPPQ+gQHo/FHBmzbA7V4Lnma6O6ySuUYdhDILkOvHn9
	BTYecd2PYYn2Fiic0rjzT/pFVH6LZQFz1ytm89UToHIJYoPSLdMD/llC1+3Ns+eJWZseOw1UkcyY6
	beNob4RrjEhPXsqiW1LjJ6Ju/QJ9HjMpVPQJQ9L8LL0sCEUmwNiAZKtQMbbl6aop47F0xkzfg55k7
	2k24Sidu4HMspzJPC8ZFWlAwTKMOAHymQ/iqlUPdwR6egZ9YDVkcqnD5PyHjEyXkFUOBCDtM00Zqh
	/hwmkVM4D219yD4kNIxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiwiQ-00025E-Fa; Wed, 10 Jun 2020 09:08:10 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiwiI-00024e-Fs
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:08:03 +0000
Received: by mail-pl1-x641.google.com with SMTP id g12so719131pll.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 02:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lFLYpxHbY4xQl+GX5z/HGphuWdf5yeGEl+2VZh0NoD0=;
 b=phvykWEp5kakVa4//JISZ4izHq/iHRYHSRPk4+n5UPIHrxNLr5OvKN/4QA47cijVAz
 tJWbON0Khde6Uz/0hMlJhV9ChQM1A57r33xhvfeGRFdktL8NBLwzv0iglcWi7KeBHKjM
 fqoeWg2+cCArcb2TjMNqeoopb7lrmU3QNsxaM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lFLYpxHbY4xQl+GX5z/HGphuWdf5yeGEl+2VZh0NoD0=;
 b=dIrdFXV9OSMr0oe40V2gUWiBw8j/0ugHW/1vvII79/F3ptvwOIjvWqQVLvVZzIfJmE
 gLPN6boOb5rz68TBTSvGS5lM3Koz38EcDkp+f1w+Ok+w5IJRe0VTdyNSmzasOgsYPOU5
 6UyuuRTGGx7ku6CoCVvRXtdAyG5MUKqrnJu2FDZnVLY6LxU62YjKxN0Ql6CvKLKv6dB6
 n6XLwzEXsrQnxWdt5V70wfwU7ay2ftKLGzZz/+Y0LDGbjQyaVP7ZOQg9JKGNbm/oPNfB
 SWZdJk78EcupogKc7cOI3j2wNaWmp+DVoI1zGzx8aC5dV5Q5pNvvz/5SdWJqQGRMUxbn
 lbKg==
X-Gm-Message-State: AOAM53314pNHSjLhBPErs1OxJtHcFrmJ9bEHcyxznbhINM6K3qaG3PeI
 oPupKMI3IixFRZgOubwIW/WblQ==
X-Google-Smtp-Source: ABdhPJxVIc9uWyfdkUztrhVfVKHB1eV24/nijGoSa+KNsS2RjJ/nDtaKeu9V8C50Nvhf0lUkkgU7ug==
X-Received: by 2002:a17:90a:1544:: with SMTP id
 y4mr2072248pja.130.1591780081993; 
 Wed, 10 Jun 2020 02:08:01 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id nl8sm5191620pjb.13.2020.06.10.02.07.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 02:08:01 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: 
Subject: [PATCH v2 1/5] dt-bindings: arm: Initial MStar vendor prefixes and
 compatible strings
Date: Wed, 10 Jun 2020 18:03:59 +0900
Message-Id: <20200610090421.3428945-2-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20191014061617.10296-2-daniel@0x0f.com>
References: <20191014061617.10296-2-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_020802_526074_0FBA14D8 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, daniel@0x0f.com,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Nathan Huckleberry <nhuck15@gmail.com>,
 devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 allen <allen.chen@ite.com.tw>, tim.bird@sony.com,
 Maxime Ripard <mripard@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, Gregory Fong <gregory.0xf0@gmail.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, k@japko.eu,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds a prefixes for MStar, thingy.jp, 70mai and then defines compatible
strings for the first MStar based boards.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 .../devicetree/bindings/arm/mstar.yaml        | 30 +++++++++++++++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |  6 ++++
 MAINTAINERS                                   |  6 ++++
 3 files changed, 42 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/mstar.yaml

diff --git a/Documentation/devicetree/bindings/arm/mstar.yaml b/Documentation/devicetree/bindings/arm/mstar.yaml
new file mode 100644
index 000000000000..09e87cf6d6f0
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/mstar.yaml
@@ -0,0 +1,30 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
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
+      - description: thingy.jp BreadBee
+        items:
+          - const: thingyjp,breadbee
+          - const: mstar,infinity3
+
+      - description: thingy.jp BreadBee Crust
+        items:
+          - const: thingyjp,breadbee-crust
+          - const: mstar,infinity
+
+      - description: 70mai midrive d08
+        items:
+          - const: 70mai,midrived08
+          - const: mstar,mercury5
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ef6d75b9113a..1770fc794027 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -23,6 +23,8 @@ patternProperties:
   "^(simple-audio-card|simple-graph-card|st-plgpio|st-spics|ts),.*": true
 
   # Keep list in alphabetical order.
+  "^70mai,.*":
+    description: 70mai
   "^abilis,.*":
     description: Abilis Systems
   "^abracon,.*":
@@ -678,6 +680,8 @@ patternProperties:
     description: Microsemi Corporation
   "^msi,.*":
     description: Micro-Star International Co. Ltd.
+  "^mstar,.*":
+    description: MStar Semiconductor, Inc.
   "^mti,.*":
     description: Imagination Technologies Ltd. (formerly MIPS Technologies Inc.)
   "^multi-inno,.*":
@@ -1030,6 +1034,8 @@ patternProperties:
     description: Three Five Corp
   "^thine,.*":
     description: THine Electronics, Inc.
+  "^thingyjp,.*":
+    description: thingy.jp
   "^ti,.*":
     description: Texas Instruments
   "^tianma,.*":
diff --git a/MAINTAINERS b/MAINTAINERS
index 77a3fa5e3edd..1ca77f97b8ee 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2110,6 +2110,12 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm/mach-pxa/mioa701.c
 
+ARM/MStar/Sigmastar ARMv7 SoC support
+M:	Daniel Palmer <daniel@thingy.jp>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+F:	Documentation/devicetree/bindings/arm/mstar.yaml
+
 ARM/NEC MOBILEPRO 900/c MACHINE SUPPORT
 M:	Michael Petchkovsky <mkpetch@internode.on.net>
 S:	Maintained
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
