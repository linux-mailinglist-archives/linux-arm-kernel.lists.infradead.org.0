Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B999D97D4C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:39:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdbEBU1mcmjKmx+SYIKgagLS7c52hUkjOqwG5FghDSg=; b=p1pOO95kytfXg7
	Hm5FXH+vchq59SudBVzxJLwvEA1+2UyGUcANQHgh1+pE7tHokmDsCrNn/by588eEFqB+ltw0ifsIC
	OielMXyOSsOc3SDOlJitztdCdJ9QqajOwQWvPdByAQIEEEfCZ6ST9lh5o5twMlq5ZcFTltUUvIc+C
	wj5rIxJaMW33klR5gnM25DRbKqKyZOpvneLcjgyHXdcDngf0fEo923wXTxaoVh2ElDFtzd/x7oRIj
	k7Fg1gxCBwVqOcm5/6UZyfcqgqCFXUFDaqflXJT9HKGGpGE88n6Noub5ufDWJnmIYQSKyga+6OHH/
	0WTwUsMDZLO5sDMGGbPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Rls-0001zc-9D; Wed, 21 Aug 2019 14:39:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Rl8-0001OB-1O
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 14:38:47 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A01F233A0;
 Wed, 21 Aug 2019 14:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566398325;
 bh=kWS1IJNtZwpR6Tu1rPoZ6ol1cRQDzAO9uYXRVmzqlQs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Scm4h2kZA2DV7qqzZeUzEy6U5YK50q64Cs4lszRV8MqbZOL2O/gIDU39DwmzHyCB9
 Ethfk7PgtPyQorD65o+TcL9f2oK47Dv0dg+uDlphMgLSgfST3eRUnRA1IEBsEVAdvg
 wkMg/LJBzPyvNFKZ8qW6udd6Wcxd4TaGg/4eCOHE=
From: Maxime Ripard <mripard@kernel.org>
To: linux@roeck-us.net,
	wim@linux-watchdog.org
Subject: [PATCH RESEND v2 4/6] dt-bindings: watchdog: sun4i: Add the watchdog
 clock
Date: Wed, 21 Aug 2019 16:38:33 +0200
Message-Id: <20190821143835.7294-4-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190821143835.7294-1-mripard@kernel.org>
References: <20190821143835.7294-1-mripard@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_073846_181297_72FD2631 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The Allwinner watchdog has a clock that has been described in some DT, but
not all of them.

The binding is also completely missing that description. Let's add that
property to be consistent.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v1:
  - New patch
---
 .../bindings/watchdog/allwinner,sun4i-a10-wdt.yaml           | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml b/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
index 31c95c404619..3a54f58683a0 100644
--- a/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
@@ -31,12 +31,16 @@ properties:
   reg:
     maxItems: 1
 
+  clocks:
+    maxItems: 1
+
   interrupts:
     maxItems: 1
 
 required:
   - compatible
   - reg
+  - clocks
   - interrupts
 
 unevaluatedProperties: false
@@ -47,6 +51,7 @@ examples:
         compatible = "allwinner,sun4i-a10-wdt";
         reg = <0x01c20c90 0x10>;
         interrupts = <24>;
+        clocks = <&osc24M>;
         timeout-sec = <10>;
     };
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
