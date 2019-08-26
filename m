Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5A99D79D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 22:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ivAbtqjF0YF0hCT7vKXRRYeR3ZINl3y52c44a/rFkv4=; b=WAuDkIu1s/RIF6R6aYiCn0kiMR
	26q95k7IaQxQOU5eNfWmCMy9ddJOTthlWGhirxDd0FP4PklW6oH+f+97mH1vKzBhtnGLbm70pm4B+
	1VwarRMePm9pQP6+a4vW5Dr5T20E+tKhjW+nwqi7oBNBm7mEwRLQpc5OERBouy40CnipstyCGPpi0
	HDv5+oA7rX/jg8BEzBiqCojbmg4L/XD82fXoDgyPEYZOz281Rmyj7OiTh0KebxwdUqyOCEm6gdDMm
	A8m46sWkpWGKcfPIMa3kK6oIqQKXqDcGSUh8pBEmpsX/1mXLQpAZKsXWzuxOhLWFT2eC9X386P37o
	vbVqCHkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Lrr-00047W-Gp; Mon, 26 Aug 2019 20:45:35 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Lr3-0002hy-JA
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 20:44:46 +0000
Received: by mail-wr1-x442.google.com with SMTP id r3so16599801wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 13:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=E/rktgRZOj4ajpikVv+crFkgra/A+VXyEZXp2OkGiIA=;
 b=vFprOVQgqZZeaPGJRKWqtJlyJWWYc41QHKy3hDxXhTuDk2oleQKX7dQolHl7/Oxuru
 5hkxV/8bVU6PBNELYJclSf2uFdJbSDT3kbZdZZFx7oCl8Y2hQ5eX6vS4a0MJkOxOrdj0
 6WIsVdZZx+C1dr5WnFF16NeyqAi2Oclo02KxSKJ3ShiuCOXP02Y5Vwo91UuO0voT8DZ0
 rGsFr9zu2P4Qt+H+BlZUhItrQu+SEO/H2H7t0hOKKwc7zY+uxXrBeG/+KopHS5j63Tbf
 zc6OmQktG7Q6E5Oj5EnTVV3DUm51dcEipqvTf9NuLebRYDVlOwVFKrvblaQz/WTIo58a
 /36g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=E/rktgRZOj4ajpikVv+crFkgra/A+VXyEZXp2OkGiIA=;
 b=DIfm41hTDHafpMY3OAWOO5pXorwHMto2M461eDU1Ibb+MWId+0urf+Zgnx+HQ1OtGq
 fvGjHAIro0EierJzgFjVg+9625KL/Wro8rCOiWKtbmkN4Wx0tcSrIeFomc5cifImicQa
 pv+hBBtGQVQG6dfDsgHL39t7XP4MI5DmlZv02EU+DSR9r2rBXv7IufCeUCFgo09ogqAd
 yjAi9u3JG5HRWqLG/6IPThnLDOb6ZBoTPvzGA2/63Eap2pwBly/DIbcJBIePgTIno5HM
 yUoL20y04iRGutD/1G71xiEfPFjYbsOdCY/gS2RK7g5RBp6zWCxt+W7afnVpALf2+kJQ
 SWlA==
X-Gm-Message-State: APjAAAXZP5pFcZtvzOXn2f8wCmGx970tgs0jnvAnQus02ysgh4rALIoF
 nhXIa9/cNOJyLljj9dzXCXkmNg==
X-Google-Smtp-Source: APXvYqwrPcj7Q2zz31NQ98L1E4NhW094ay+Ifj4n9fBNDxdH95mhUc+hr94YfFHJaxmEzKz5xIgF/w==
X-Received: by 2002:adf:9e09:: with SMTP id u9mr24766472wre.169.1566852283910; 
 Mon, 26 Aug 2019 13:44:43 -0700 (PDT)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:f881:f5ed:b15d:96ab])
 by smtp.gmail.com with ESMTPSA id 20sm549557wmk.34.2019.08.26.13.44.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 13:44:42 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 03/20] dt-bindings: timer: Add missing compatibles
Date: Mon, 26 Aug 2019 22:43:50 +0200
Message-Id: <20190826204407.17759-3-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826204407.17759-1-daniel.lezcano@linaro.org>
References: <df27caba-d9f8-e64d-0563-609f8785ecb3@linaro.org>
 <20190826204407.17759-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_134445_629879_D1DCE338 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

Newer Allwinner SoCs have different number of interrupts, let's add
different compatibles for all of them to deal with this properly.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 .../timer/allwinner,sun4i-a10-timer.yaml      | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml b/Documentation/devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml
index 7292a424092c..20adc1c8e9cc 100644
--- a/Documentation/devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml
@@ -14,6 +14,8 @@ properties:
   compatible:
     enum:
       - allwinner,sun4i-a10-timer
+      - allwinner,sun8i-a23-timer
+      - allwinner,sun8i-v3s-timer
       - allwinner,suniv-f1c100s-timer
 
   reg:
@@ -39,6 +41,30 @@ allOf:
           minItems: 6
           maxItems: 6
 
+  - if:
+      properties:
+        compatible:
+          items:
+            const: allwinner,sun8i-a23-timer
+
+    then:
+      properties:
+        interrupts:
+          minItems: 2
+          maxItems: 2
+
+  - if:
+      properties:
+        compatible:
+          items:
+            const: allwinner,sun8i-v3s-timer
+
+    then:
+      properties:
+        interrupts:
+          minItems: 3
+          maxItems: 3
+
   - if:
       properties:
         compatible:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
