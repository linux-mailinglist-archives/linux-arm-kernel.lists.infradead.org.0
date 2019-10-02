Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 672F8C8DCB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 18:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mbDM2zyEBs3shlLfsanZhCeIhwzJuhnVrtw1oVTK5Io=; b=gBl+ahExOCa+Cj
	BtDy6IQ/DFVbYfdHsSfaKAjpAjA//kGeCgT4dxEAjl7RSl/9ful1ecWiRnqnd/Axgv0CcMdlqkQrL
	lCRVxKlAk/k2N24M/jpP5jgrl2PQdhe/OhTjaCLGsFzqA5Vls75feEH5zKNHYqy9EPPLkTdWcWLJv
	mNTHYM4NjMT1A5O+QrM2uUFYSxlemULhdbB5DrY6CQXyRdxj/lUclD9DOXws95UF4nIiCUV2uzxLc
	ASLgyqu3cgRhdTa12ZRxWvJZv9ya7bO7t6qRlNwbOe8Uaw6q+ThUDZCk32yO4ebCAGIgmml+60wPg
	VOrpaZvlXRiCZyTXLRFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFhAz-0002Pk-MT; Wed, 02 Oct 2019 16:08:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFhAe-0002ER-6D
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 16:08:09 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A88A021D82;
 Wed,  2 Oct 2019 16:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570032487;
 bh=aTT+KOPtG7lEZoKFjOcg12k7mYDVzqbZ+kRKqJj+Q/Y=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=yEmU39OEZPdIZkciVrsHxumq0dwlb6xYD984LvdxOpFBegUQbYQWY/kqPJNkQB/S/
 klHIFe9iE5JLM4gPOXgmmzDpt+3ictm+NdolqN8XcQ+4TvJlyCpK97vjB/H7i3U59c
 6CWPL8cy4Ul0kVyv78QOfgaINaaEebGmpqnpqAvk=
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
Subject: [PATCH 2/4] dt-bindings: rtc: s3c: Use defines instead of clock
 numbers
Date: Wed,  2 Oct 2019 18:07:42 +0200
Message-Id: <20191002160744.11307-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191002160744.11307-1-krzk@kernel.org>
References: <20191002160744.11307-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_090808_274064_D2B78707 
X-CRM114-Status: GOOD (  12.17  )
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

Make the examples in S3C RTC bindings more readable and bring them
closer to real DTS by using defines for clocks.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 Documentation/devicetree/bindings/rtc/s3c-rtc.yaml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml b/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
index 95570d7e19eb..4d91cdc9b998 100644
--- a/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
+++ b/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
@@ -75,11 +75,14 @@ allOf:
 
 examples:
   - |
+    #include <dt-bindings/clock/exynos5420.h>
+    #include <dt-bindings/clock/samsung,s2mps11.h>
+
     rtc@10070000 {
         compatible = "samsung,s3c6410-rtc";
         reg = <0x10070000 0x100>;
         interrupts = <0 44 4>, <0 45 4>;
-        clocks = <&clock 0>, // CLK_RTC
-                 <&s2mps11_osc 0>; // S2MPS11_CLK_AP
+        clocks = <&clock CLK_RTC>,
+                 <&s2mps11_osc S2MPS11_CLK_AP>;
         clock-names = "rtc", "rtc_src";
     };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
