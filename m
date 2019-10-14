Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB22D5B50
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 08:20:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bhtzRkMWJbrIOZYPV9qJGJKZPWA1RVX9XB/l9mEuUI4=; b=WMcFxmAFKKaFFf
	mJKWuoEKmPpnENhM4NDoNAz5b0UXBbfSoWffxI75RXjBPH1eOOzSAS+hjzHlmhgwH+9PcUCQMgOID
	JRnhtM8a9hDiyL4CUZ9T4F4GQMrCjEAlAYR/VCY9O+z3ZRLhWA/2fCRWpG3diXov4wBTtaocpFb+x
	VcMfSe5329MZmzvtuI9rpombg5fayHtFPhGA0QeGqrW7A2GK2AVJaa/kWEB1k9w4s4IHm7J9HREtP
	F/eQeea8uuNnyCyYRK+kJ4qelSoJWPpAE93X/2B7pkIJxIas9BDusGkfyw1hmX2zoBElurQCJJSfo
	54QrnpXzom3ruPy+z8Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJtie-0007eE-Ow; Mon, 14 Oct 2019 06:20:36 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJtiR-0007dm-Jo
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 06:20:25 +0000
Received: by mail-pg1-x541.google.com with SMTP id e15so1451312pgu.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 13 Oct 2019 23:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zfkaFfsELHYHWazH2W/EZlylQJT2a0eVw5F7g45yZLc=;
 b=VQifTFmzWfwVhZ1UYF0CKr2jgsmqRpjgrgy+Jbl9toi7OZjq2UAPfh0YDiZ4VNIgwf
 lgPVQy4T1pUx/7ZC3zfsjRfaIcHVlR4mA96RUOZQeNRENiO1u5araIYkX4m8NFtjzD67
 TqYgWMVJlwqshJcX6geQnrRMTWzYXUOzZAA+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zfkaFfsELHYHWazH2W/EZlylQJT2a0eVw5F7g45yZLc=;
 b=A7KasSh1dkGGJ7d+J1ZQ0jmeB8HyECJQ4WwoL7chqtsoF3eID2i+2ZuFi+Ky8PexOk
 w0rAxdo7y/9Y9FnMK/71q1RL3S2XR8/6Alfwv1SwV+Rp5jmXwe6ZnETS2U5FrIEUT/gV
 5il1KdfB5/bSmFmKNb5PoVwpsBRrOmwn9UF1ZGROxlifGZvTuo1wTN1JF6M3fHK/YKe+
 KWcxaFzx2YLLHQD7fdT0Dza6JTRBBBrhxL4vmKIWuVbNPqBlKdvVSIzMUOzFtieC/l7F
 DtPtYvrFBNznaGMHKsBoiAyhZ+iw4zH5oKkwNBRF96G6aG6tc+Bia4tBTBlHSjzZLIHG
 eDIw==
X-Gm-Message-State: APjAAAXPgUIn7ZFnLFJaUCh64hqCk9sgz/g+sHxDLIQzx5WYyT8kEcsm
 6HN5Voex+0tPgHCAD5RCpDEHqw==
X-Google-Smtp-Source: APXvYqxiggqtc902VST7+e+YJRtDh0InN6+UnzEANAMPlTV0kjrs+Dlo8+XH1gzXkPWfV4eAhlYNUQ==
X-Received: by 2002:a62:5305:: with SMTP id h5mr31867612pfb.121.1571034022320; 
 Sun, 13 Oct 2019 23:20:22 -0700 (PDT)
Received: from shiro.work (p1092222-ipngn200709sizuokaden.shizuoka.ocn.ne.jp.
 [220.106.235.222])
 by smtp.googlemail.com with ESMTPSA id g24sm16874074pfi.81.2019.10.13.23.20.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 23:20:21 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: 
Subject: [PATCH 1/4] dt-bindings: arm: Initial MStar vendor prefixes and
 compatible strings
Date: Mon, 14 Oct 2019 15:15:56 +0900
Message-Id: <20191014061617.10296-1-daniel@0x0f.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_232023_764153_2D6C3094 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Linus Walleij <linus.walleij@linaro.org>, Stefan Agner <stefan@agner.ch>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>, daniel@0x0f.com,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Nathan Huckleberry <nhuck15@gmail.com>, Icenowy Zheng <icenowy@aosc.io>,
 devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Sugaya Taichi <sugaya.taichi@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Pitre <nico@fluxnic.net>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Andrew Morton <akpm@linux-foundation.org>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a prefix for MStar and thingy.jp and then defines compatible
strings for the first MStar based board.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 .../devicetree/bindings/arm/mstar.yaml        | 22 +++++++++++++++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |  4 ++++
 MAINTAINERS                                   |  6 +++++
 3 files changed, 32 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/mstar.yaml

diff --git a/Documentation/devicetree/bindings/arm/mstar.yaml b/Documentation/devicetree/bindings/arm/mstar.yaml
new file mode 100644
index 000000000000..0ea5b2b9387f
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
+          - const: mstar,infinity
+          - const: mstar,infinity3
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 967e78c5ec0a..1425468188da 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -617,6 +617,8 @@ patternProperties:
     description: Microsemi Corporation
   "^msi,.*":
     description: Micro-Star International Co. Ltd.
+  "^mstar,.*":
+    description: MStar Semiconductor, Inc.
   "^mti,.*":
     description: Imagination Technologies Ltd. (formerly MIPS Technologies Inc.)
   "^multi-inno,.*":
@@ -943,6 +945,8 @@ patternProperties:
     description: Three Five Corp
   "^thine,.*":
     description: THine Electronics, Inc.
+  "^thingyjp,.*":
+    description: thingy.jp
   "^ti,.*":
     description: Texas Instruments
   "^tianma,.*":
diff --git a/MAINTAINERS b/MAINTAINERS
index a69e6db80c79..8b7913c13f9a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1981,6 +1981,12 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
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
