Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0951AC5DC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 11:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z9+cmWGeGTIqeRbGTX/1vpGrfDlwHS+2oaicLy45Vow=; b=qT7zAoLQVm50H0
	AVWIGu0OfymNDNtAUX5gwF2/RR/C1aG+QfbS7fBemBRucGNq5tO49qKeIbC5Z3m2ekzGRx+WHG5Zl
	jBsbPn/lcT+lGQMru8nuO7yIpeZT1bFsy5Lz9qxfv/HRq1G72jINXNYBiKdCSlZozD1vLYkeE2vpx
	OnFUbXLuFDquYZ9oF6Iitnh/NJ4SBWebMtJcnHomgFe4PelNCsxGGnBUlIGMn2FfD6jmPxB/K7u7f
	qXfygahAuKBcQxbX6yY2rG3BqKKGitmsyZ0HAFiUrfYMqBEPhSQcZG67LXzmew2LfSEdGdv3NrIAS
	WPU5WCEp/QMCrNZwxKWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Wxl-0005SB-5B; Sat, 07 Sep 2019 09:24:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Wu9-00031s-Iq
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 09:21:14 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF7AC21907;
 Sat,  7 Sep 2019 09:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567848073;
 bh=szqE7WiJE89jv3JbD2laqpsXkx3HLaIdOm2W3JGMdpE=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=zd0Y7YJtoxY5qK8DvNeob75REKPQ9QeNh0+sDDr8qLaL/9R74fyOJNRmufmuz7tff
 MlS5uhzeyIOeLBd+LfG7MUJpPI2fmPlH4KI0It9IEYADDHpW6/5K/Xdk2kiFxSCc/s
 Nht6nLxiSI40MyvaLcODhJKtyyhTWxY0Hed9MYzE=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Sebastian Reichel <sre@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 =?UTF-8?q?Pawe=C5=82=20Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rtc@vger.kernel.org
Subject: [PATCH v2 11/11] dt-bindings: iio: adc: exynos: Remove old
 requirement of two register address ranges
Date: Sat,  7 Sep 2019 11:20:07 +0200
Message-Id: <20190907092007.9946-11-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190907092007.9946-1-krzk@kernel.org>
References: <20190907092007.9946-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_022113_828932_5F0A7F9A 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Commit fafb37cfae6d ("iio: exyno-adc: use syscon for PMU
register access") changed the Exynos ADC driver so the PMU syscon
phandle is required instead of second register address space.  The
bindings were not updated so fix them now.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. New patch.
---
 .../bindings/iio/adc/samsung,exynos-adc.yaml     | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml b/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
index dd58121f25b1..b4c6c26681d9 100644
--- a/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
@@ -25,8 +25,7 @@ properties:
       - samsung,s5pv210-adc
 
   reg:
-    minItems: 1
-    maxItems: 2
+    maxItems: 1
 
   clocks:
     description:
@@ -55,7 +54,7 @@ properties:
     $ref: '/schemas/types.yaml#/definitions/phandle'
     description:
       Phandle to the PMU system controller node (to access the ADC_PHY
-      register on Exynos5250/5420/5800/3250).
+      register on Exynos3250/4x12/5250/5420/5800).
 
   has-touchscreen:
     description:
@@ -83,19 +82,8 @@ allOf:
               - samsung,exynos4212-adc
               - samsung,s5pv210-adc
     then:
-      properties:
-        reg:
-          items:
-            # For S5P and Exynos
-            - description: base registers
-            - description: phy registers
       required:
         - samsung,syscon-phandle
-    else:
-      properties:
-        reg:
-          items:
-            - description: base registers
 
   - if:
       properties:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
