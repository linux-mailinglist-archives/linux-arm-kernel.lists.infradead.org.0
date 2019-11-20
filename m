Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46282104331
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 19:21:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=buQkKQr2kzp1R349gVXmFJWA8lppwdB6aMR8gsUdIUc=; b=D/yMmtC+4A26Qi
	g2siA9+YTVchbhI/4VL67jQEttPV5JllddSndPfK0Y838R8mxTfAtYLzY3xZRhoQ+vdHn6jgUM4ge
	Vk0XjZ+0DEHsfJc3l46IGo1dFsrZgTywzwZS0Kgv4WvKD7dTkuBQiQLxXwGnjVJkbAu3JHD/scDTN
	880F+qJnhzA4tKRRG/17AltadgJiu0rC48vHvlRb33YMW1brm1Qon3ieWCIV9rFHPmLzt8zgyMm2w
	SYlZGDWmhinu6TIc7gae49KavbtgrVKyRU3NXNhxGQn6bNmctQYv6+eqtuPlBqrtaBR0HaP4hJEa8
	3hAzFNBCJxYySqxLIjwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXUb5-0007X2-CT; Wed, 20 Nov 2019 18:20:59 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXUa5-0005dy-PL
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 18:20:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574273991;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=ZFJOLQgrYuXEnDzJokI9lmcvSfRFsuCL6OMci60fMdM=;
 b=tOIxgJa9g+5ZW2zDqL9w1BfP9wEhOafbmfRaN+GlWy5ck2KjtlmYu6Je/TiiOK3C3o
 KshVfVWuw3fQPyAh62bzSFjHA7WW8cxLf9r0Mm1DuxUYGdA10e7rNxRQsZNT9t8NUO+v
 EMvndn75ndw9BfHGZPHsGfO0/Vj0GlXhKFjCTrtLT8WJjG7IElAnnIG0k+veHeMW0Mjq
 auZjyfTNzfyjd9b8+yEXysW9rY2n+RozegREttX162C91SUKPQSJxC27aZIa0kEpXsHG
 qer2xT5aEacA4OEXcemxCtATdholDczPiTE2uyaEmd6gaCeTj0h/s/myWzqqe5YWDdTO
 32Xg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXs8Lvtn4="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 44.29.0 AUTH)
 with ESMTPSA id e07688vAKIJmvAb
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Wed, 20 Nov 2019 19:19:48 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 4/4] dt-bindings: arm: Document compatibles for Ux500 boards
Date: Wed, 20 Nov 2019 19:18:57 +0100
Message-Id: <20191120181857.97174-4-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191120181857.97174-1-stephan@gerhold.net>
References: <20191120181857.97174-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_101957_973120_B756430E 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:6 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The device-specific compatible values used by the Ux500 boards
were not documented so far. Add a new simple schema to document them.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
Changes in v2: none
v1: https://lore.kernel.org/linux-devicetree/20191120121720.72845-3-stephan@gerhold.net/
---
 .../devicetree/bindings/arm/ux500.yaml        | 31 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 32 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/ux500.yaml

diff --git a/Documentation/devicetree/bindings/arm/ux500.yaml b/Documentation/devicetree/bindings/arm/ux500.yaml
new file mode 100644
index 000000000000..006cb4a5f331
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/ux500.yaml
@@ -0,0 +1,31 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/ux500.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Ux500 platforms device tree bindings
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+
+      - description: ST-Ericsson HREF (pre-v60)
+        items:
+          - const: st-ericsson,mop500
+          - const: st-ericsson,u8500
+
+      - description: ST-Ericsson HREF (v60+)
+        items:
+          - const: st-ericsson,hrefv60+
+          - const: st-ericsson,u8500
+
+      - description: Calao Systems Snowball
+        items:
+          - const: calaosystems,snowball-a9500
+          - const: st-ericsson,u9500
diff --git a/MAINTAINERS b/MAINTAINERS
index e4f170d8bc29..a2fcbfca90de 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2020,6 +2020,7 @@ F:	drivers/rtc/rtc-pl031.c
 F:	drivers/watchdog/coh901327_wdt.c
 F:	Documentation/devicetree/bindings/arm/ste-*
 F:	Documentation/devicetree/bindings/arm/ux500/
+F:	Documentation/devicetree/bindings/arm/ux500.yaml
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-nomadik.git
 
 ARM/NUVOTON NPCM ARCHITECTURE
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
