Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3817C1F4180
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 18:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/312HBBD8esLfI0S6yjfLKqo3rFo/mq7MRY4+Q2687o=; b=goZXiwJWDI6McQ
	6z3rg+mlx8jv6+zT2KiLJxgitC9/2APRRkoe9MjYSQy6D0QwsZjYzWnli9GnN78ZBvanjc+JGeuS9
	yviW9lGf/zTekkMVtJCOyBdE3jyRkTfH8Ejh/pxngu0bSMQts8ic8+NvnysH7TUoKth8pgIMYxKjE
	GVcpx0cMmPrVmtdY/+YwfQAqsMCzUfqRCUGwi4qTHPz/0dzejCkcXRfD9ZzxFIaxF0A1H5+fXl7pP
	xN8+BQojqUbjgr9VUWK1YHiHaMHgCqNjHp/CswdS/zRmTl+lfZIFbTpJYylN7JVCeCbi2JvpK65b+
	ibQAXYRIbmjWgXumA/GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jihXk-0005r7-Di; Tue, 09 Jun 2020 16:56:08 +0000
Received: from mout-p-101.mailbox.org ([2001:67c:2050::465:101])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jihXb-0005pq-0R; Tue, 09 Jun 2020 16:56:02 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 49hGTk6GYmzKmhw;
 Tue,  9 Jun 2020 18:55:54 +0200 (CEST)
Authentication-Results: hefe.heinlein-support.de (amavisd-new);
 dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
 header.d=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org;
 s=mail20150812; t=1591721753;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=j7Bl0e/NNgBksh6phq/ZeF/FFbH797+bKn2Kamf4oqw=;
 b=JJDTCht9yz33nts07y6Sn5sCv9jPSgwxEyVW8LooI1WFFxUrSymVvrihW3wPUIpwHFV724
 JpgZPYGrlyzRTjQF6DFwP8TAHu4p3d7fS98hczoEDPQo2ws2psrQSd6ZIZKaWvT1qwixoO
 akOBZtX5yoBIxY/8h/eaINUPJnJJPzynla8XGhS6CFJ31pXShZ+B+fjwKkxUfHYWKQRodQ
 31Kn4BhdqhYXfSOOu6t/elsAbSaeGSGWvwtcZ8SmTRtpqSNcFZz6jFqyk+gh1K1MZiSvWU
 26UfxhLn+ITqOAtcwgwRBFl5KcckmmhRz80TWBw8cG6OMEht4Wlqv6zrp24epQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
 content-transfer-encoding:mime-version:message-id:date:date
 :subject:subject:from:from:received; s=mail20150812; t=
 1591721750; bh=+NSaqjpCbS41rHQqGIN0xjmkj6DIbcJlPX1xQbzYjGc=; b=l
 sYJ0+yH4epSS2hnDVbXx3ZI+wcHgyf24ERXrR2EjgjZfFUQncTj55uvK2rMheySb
 UYS0V/FoHAK4fY31SW4Wl6BPeEKdLXCpzw3AbHBiqE2uY8DCjLtbcVlMPan7qrkN
 zbP0TURvmld/GrerxafQt+BIM9KGM0dIqITAMJMaHgsxgVgrS9u5NaKKdJKgQCuX
 i8bs7cDy5Aiel/6CHq0yststTk16XKlx1JFr5yklIyyN9BiVRf1Oa879Gfo/iBO4
 VsitGoV7Vckg/HPLk2wPfYsqCWkFwYLQ6mrXTGulf0p87KGZcAyqRrOmiVydzJbn
 BZS4X2AQikwSoOLYHOjoA==
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id nGIsqmsi5gm7; Tue,  9 Jun 2020 18:55:50 +0200 (CEST)
From: Alexander Stein <alexander.stein@mailbox.org>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 1/1] spi: dt-bindings: amlogic,
 meson-gx-spicc: Fix schema for meson-g12a
Date: Tue,  9 Jun 2020 18:55:27 +0200
Message-Id: <20200609165527.55183-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: C097A1761
X-Rspamd-Score: 0.89 / 15.00 / 15.00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_095600_899321_049FC521 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexander Stein <alexander.stein@mailbox.org>, devicetree@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following warning during dtbs_check:
---
spi@13000: clock-names: Additional items are not allowed ('pclk' was unexpected)
spi@13000: clock-names: ['core', 'pclk'] is too long
spi@13000: clocks: [[2, 23], [2, 258]] is too long
spi@15000: clock-names: Additional items are not allowed ('pclk' was unexpected)
spi@15000: clock-names: ['core', 'pclk'] is too long
spi@15000: clocks: [[2, 29], [2, 261]] is too long
---
Conditional schema properties don't overwrite others. Instead of
restrictions have to be validated. So general clock amount is 1-2 and
depending on the actual device type limit the mount to 1 or 2.

Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
 .../bindings/spi/amlogic,meson-gx-spicc.yaml  | 26 ++++++++++++-------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/amlogic,meson-gx-spicc.yaml b/Documentation/devicetree/bindings/spi/amlogic,meson-gx-spicc.yaml
index 9147df29022a..38efb50081e3 100644
--- a/Documentation/devicetree/bindings/spi/amlogic,meson-gx-spicc.yaml
+++ b/Documentation/devicetree/bindings/spi/amlogic,meson-gx-spicc.yaml
@@ -34,12 +34,15 @@ properties:
     maxItems: 1
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
+    items:
+      - description: controller register bus clock
+      - description: baud rate generator and delay control clock
 
   clock-names:
-    description: input clock for the baud rate generator
-    items:
-      - const: core
+    minItems: 1
+    maxItems: 2
 
 if:
   properties:
@@ -51,17 +54,22 @@ if:
 then:
   properties:
     clocks:
-      contains:
-        items:
-          - description: controller register bus clock
-          - description: baud rate generator and delay control clock
+      minItems: 2
 
     clock-names:
-      minItems: 2
       items:
         - const: core
         - const: pclk
 
+else:
+  properties:
+    clocks:
+      maxItems: 1
+
+    clock-names:
+      items:
+        - const: core
+
 required:
   - compatible
   - reg
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
