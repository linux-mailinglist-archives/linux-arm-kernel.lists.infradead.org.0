Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C505C8DDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 18:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qYV2jIByJjfj+/G1m+0ie+jvEKsA6sCF5/7OyP0RpDQ=; b=Erefc+M9VBf5Xf
	TmoxSE6WkcEnyLO5lkLn14Y+6tWouFwQSlJyBx1C0wrNcs0PEfAwX1YqW3bt+48YUzHb4GEoZmlaQ
	s3IkP5tMx2yxp8j7CSWUceqH83uJxmNzybov79//GiPG8+2B/yoIjE3ODPwCV8mjHFz2RRBqlqYRM
	9jhCQHUEYcYLddo9IyAnZk4lBu+ptNkTuUJU3EO+u/2UTV888nmZNdIqkrvvMGdNnSN6X08/Cdk4A
	ylq+YTDpHaY9Wg1PN8jS5dyaqWJJB4Ye5qxuWe2T8ZF6MdnuQOWakuctkRc91+ZudprwIy3AB8H7Q
	/m/9BzyX3Jgl8FywNsZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFhBQ-0002yD-N9; Wed, 02 Oct 2019 16:08:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFhAp-0002Rj-QR
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 16:08:21 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D559222C0;
 Wed,  2 Oct 2019 16:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570032499;
 bh=pcFz/sD7PH4IH6xMAtmOeZNqcSRuozele8JXhvaouMc=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=bYxG6pWcYa6FygTakxRrGwcHOMRAz4V+pzM86VRYTboCOryby7LctXEtGXVNH8jU7
 cY1CrmkZh4hg5nf4/G1eiD5+nn+tVV+lofSgIxeL9ay2sfjobdylGRVSXNpicp6W31
 9ouUToHfKBDb8nYx2fTmkWwqZi9P1+jgLnQcyclc=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Sebastian Reichel <sre@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rtc@vger.kernel.org
Subject: [PATCH 4/4] dt-bindings: iio: adc: exynos: Use defines instead of
 clock numbers
Date: Wed,  2 Oct 2019 18:07:44 +0200
Message-Id: <20191002160744.11307-4-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191002160744.11307-1-krzk@kernel.org>
References: <20191002160744.11307-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_090819_902908_36D78679 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make the examples in Exynos ADC bindings more readable and bring them
closer to real DTS by using defines for clocks.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 .../devicetree/bindings/iio/adc/samsung,exynos-adc.yaml     | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml b/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
index a0a9b909ac40..a3010e7ea051 100644
--- a/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
@@ -135,6 +135,8 @@ examples:
     };
 
   - |
+    #include <dt-bindings/clock/exynos3250.h>
+
     adc@126c0000 {
         compatible = "samsung,exynos3250-adc";
         reg = <0x126C0000 0x100>;
@@ -142,8 +144,8 @@ examples:
         #io-channel-cells = <1>;
         io-channel-ranges;
 
-        clocks = <&cmu 0>, // CLK_TSADC
-                 <&cmu 1>; // CLK_SCLK_TSADC
+        clocks = <&cmu CLK_TSADC>,
+                 <&cmu CLK_SCLK_TSADC>;
         clock-names = "adc", "sclk";
 
         vdd-supply = <&buck5_reg>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
