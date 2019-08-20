Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 226DC9641A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:19:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ieyKjl1DTbe/EKaKJ9mOe+FbVeDvxK6tETqEDvfqHDA=; b=fBAAYJKWVueORX
	Xnr66HglNXdjFhh/1AgL9Z6zjE7UgQlWKvDE2xkHWUaoEZNobTXId8qUd6f/EQAH+Gjf96FIGJkv1
	KOZYXJxnBTynrcISvDn8a/MSBvv6bDbFGx2Ed/VtvVL0ubm8fdC0YIpIZxtxTQS3wRPeIs3tXu/hI
	ViHZAJYy44wvIGC3iD36WA/i2sQ4dEDwUsgpwXQ08v2aE4lUGNo2X3K7O6FJqk3/fkHOKV2Bycxzo
	dRYEERAe/uASrVyuThOvut1CelTlV0bzhdau0AClI5YF1zIRaqfFhLN8wpjZXzEb1ze0P89AaBQ+L
	PMOKfF4Omk4425/yttcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05vJ-0007uT-Se; Tue, 20 Aug 2019 15:19:49 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05v7-0007so-Cg
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 15:19:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566314375; bh=ceJ7uYMyGuXnT+8w0JVBGUx4Cp8f10wjRMxOExNSRQo=;
 h=From:To:Cc:Subject:Date:References:From;
 b=BF2RGwVaIWjpS8lPMXdkn8hgNaIQ+mrzt5UHgcpqPhS+djX9Bx/ysx64+K0Ob3/vI
 xYCMBm6u47YOW9gP05BTXewRC6oYEGY23xF0r9+uNmlX9O5SyMIo7l7LTPrvkUeQKd
 sAsJBmMPvjAc8BkNp1fvwLL+6zW7c1Iy4j4cAyyA=
From: megous@megous.com
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 1/3] dt-bindings: Add compatible for H6 RTC
Date: Tue, 20 Aug 2019 17:19:32 +0200
Message-Id: <20190820151934.3860-2-megous@megous.com>
In-Reply-To: <20190820151934.3860-1-megous@megous.com>
References: <20190820151934.3860-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_081937_594887_57F01A00 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ondrej Jirman <megous@megous.com>, linux-rtc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

RTC on H6 is similar to the one on H5 SoC, but incompatible in small
details. See the driver for description of differences. For example
H6 RTC needs to enable the external low speed oscillator. Add new
compatible for this RTC.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 .../bindings/rtc/allwinner,sun6i-a31-rtc.yaml       | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml b/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
index 924622f39c44..d7a57ec4a640 100644
--- a/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
+++ b/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
@@ -25,6 +25,7 @@ properties:
       - items:
           - const: allwinner,sun50i-a64-rtc
           - const: allwinner,sun8i-h3-rtc
+      - const: allwinner,sun50i-h6-rtc
 
   reg:
     maxItems: 1
@@ -92,6 +93,18 @@ allOf:
           minItems: 3
           maxItems: 3
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun50i-h6-rtc
+
+    then:
+      properties:
+        clock-output-names:
+          minItems: 3
+          maxItems: 3
+
   - if:
       properties:
         compatible:
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
