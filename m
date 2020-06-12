Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3A31F786C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:06:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UvC38iwWjhxLxtK/ISkU/tfGoLvSZNaceStiYGdPl/M=; b=pTEEVy9YRf8YhL
	zsoCi69fISnUwTdvfr3fHO5Lz20UVKU4lvJuoJL6AAdlzrZYkqA5zLawZDGNy2DJitx9QK5dchSZx
	AURWYc86PjGAByT4sTPVW5a1/7/ogxq3YvIMszCNlyvlNgC9ZmN8RGpEMa/CKtTbBNDakx79W82y8
	RZ48aOHTfSTvVPa3h9zt6PXtKy2vMYLjKDpdUUKtVp4xcPZ6pyVDcbizrOtCxXMhVGsjCp0t6ik/V
	qp8qTus31hwXh+A1QhU0jQ7ohUv1yUVU9W8ZsXmoswI/+IsDsIWUmRxMP8filzjWECsd/205GwTKP
	C45tlQvyIwRYNV0niFog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjjNn-0008Tp-HF; Fri, 12 Jun 2020 13:06:07 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjjMl-0005h5-HV
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:05:05 +0000
Received: by mail-pj1-x1029.google.com with SMTP id i12so3623164pju.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 06:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4vHmV15pvTuxcnNHNJqFUF5syqcXyyEAOXSJ5/cf22M=;
 b=A3WWYsImEEOqMez/ZJ06SYg+jhnolFaaDZqe7H+eYUw0R75IoOwbW2fIBQJSXMVGFs
 4uVMyzTwq6676zRYmMsAYtRvgYtI67TvzvRRlpozn+hQxow1jei1Z8N28yVpXH4ETxVR
 qnWiAA6O5D6SWdZkpZgstkYmP8B8eL6Equ/Mo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4vHmV15pvTuxcnNHNJqFUF5syqcXyyEAOXSJ5/cf22M=;
 b=LEK+jRWD1wSHykmG8OuNMkaCV0HGKXvMEv7npUmwDyP6xgTth9/pgtfEzj4dU5Fkr9
 cZTi7a5qb4skpulBB7J+jM+jIanLTLCuteJYHvmoJYUMzvlXrCRA/5xf5EJJnHdSo0ZO
 GhHtYj8eZ14c7PeOQlruyFRKWLjywPQdZ6x2ts+dx4C3Fz/GbB3Iy48kC58bzKlHU1nq
 7067MVe8ZIA08BnwifQjntBfTbYR1Nvski+d6g44o8hDdf0Y1CHRyBuo+imuAjwE9zVN
 CUVHmvfbr42l3Ix8URwY7+e0EElBn6jA5g2CPgqJexoGN1jXQs7J5HWTUafmUEq/loZU
 UfYQ==
X-Gm-Message-State: AOAM5327hEO9c/I7XDhRDVg1cPWJ217vEL6t1+td/Ch2hrxD7g96cXmI
 vX5MEnFLuOLZtHI8T0J8DYRKBg==
X-Google-Smtp-Source: ABdhPJxqETrV/iuA8Ip8gK6XEQz+Oa4LZk63JEndPG/JrYOaZDGEFgqbuBRuBHxe/r4eEHuEHgprwg==
X-Received: by 2002:a17:90b:3d7:: with SMTP id
 go23mr12862528pjb.157.1591967101454; 
 Fri, 12 Jun 2020 06:05:01 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id k12sm5481939pgm.11.2020.06.12.06.04.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 06:05:00 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 05/12] dt-bindings: dt-bindings: arm: Add mstar YAML schema
Date: Fri, 12 Jun 2020 22:00:05 +0900
Message-Id: <20200612130032.3905240-6-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200612130032.3905240-1-daniel@0x0f.com>
References: <20200610090421.3428945-1-daniel@0x0f.com>
 <20200612130032.3905240-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_060503_596624_DB80AB9F 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: linux-chenxing.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1029 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Nathan Huckleberry <nhuck15@gmail.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, allen <allen.chen@ite.com.tw>,
 Will Deacon <will@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, Gregory Fong <gregory.0xf0@gmail.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Christian Lamparter <chunkeey@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, afaerber@suse.de,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds some intial boards for Armv7 based mstar platforms.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 .../devicetree/bindings/arm/mstar.yaml        | 33 +++++++++++++++++++
 MAINTAINERS                                   |  7 ++++
 2 files changed, 40 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/mstar.yaml

diff --git a/Documentation/devicetree/bindings/arm/mstar.yaml b/Documentation/devicetree/bindings/arm/mstar.yaml
new file mode 100644
index 000000000000..633e89f415cb
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/mstar.yaml
@@ -0,0 +1,33 @@
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
+        # infinity boards
+        items:
+          - enum:
+              - thingyjp,breadbee-crust # thingy.jp BreadBee Crust
+          - const: mstar,infinity
+
+        # infinity3 boards
+        items:
+          - enum:
+              - thingyjp,breadbee # thingy.jp BreadBee
+          - const: mstar,infinity3
+
+        # mercury5 boards
+        items:
+          - enum:
+              - 70mai,midrived08 # 70mai midrive d08
+          - const: mstar,mercury5
diff --git a/MAINTAINERS b/MAINTAINERS
index 77a3fa5e3edd..c44070f76a1b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2110,6 +2110,13 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm/mach-pxa/mioa701.c
 
+ARM/MStar/Sigmastar Armv7 SoC support
+M:	Daniel Palmer <daniel@thingy.jp>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+W:	http://linux-chenxing.org/
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
