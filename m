Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4343215543A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 10:03:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbN6ZxiPgpc3xwAhdEg3lrQWmpRwYQfIfgkZk5PUlDI=; b=idZ1RI3coTZ5vd
	yCy0teD3XD73jd5qhb3TytQcAjE4hzIq4V7f3uo6HCYgtrqpY4i+Jr3WkNdHg/T9IZBubte4qL5Ai
	AlPmeIUHje/RKuUSHpbCvny9lBjmvBrx5UNJQjOz3ySwk6vf3XKQ1GoCUaFB1SjxwA3Vmc27VFO/B
	gLVFd2n6X/kx4R5nfjpjtCflMVj6Vv+fvj3PGKVV7o58GsxqNSn6QW0zgZZJ7G4OUhgFBaL+d62lF
	rL38aLR36cbHpPzfT895kQCDV0N3BLMljXs8NgrApXxpeziv9aDrRseEvKBODc71f3JMorvt8AllB
	kazhMjXQ9j8Dss9EzD5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izzXh-0005x0-Rb; Fri, 07 Feb 2020 09:03:17 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izzXF-0005eA-6I
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 09:02:50 +0000
Received: by mail-pj1-x1036.google.com with SMTP id e9so644899pjr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 01:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2vermDwahlH6+AsMPUBbXBF+09yfDI0r2EqJfGMtZpw=;
 b=XMGKpbpt8Bga3bXIsAgR/J6qNAhyzGKLYICevuRaHrFAn8FnoM+QoxHFCtcrjsLjto
 uAkKCLY6HDC6TvKD/K6q7ac+jwfW6wXGLx8FE4XVzJ1hDGFQLPn0U+xps/jB3fHIscbY
 HKogRhnt09yHqNanDzet6hHcNVm895hVdCjEU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2vermDwahlH6+AsMPUBbXBF+09yfDI0r2EqJfGMtZpw=;
 b=TIQqTqrGKJQuUMR0+5HfN6tqGz5LnNkquQ85URCld8K/SM20F60/eyNUsSJzH0h6d3
 FqM0HgTdc/HWqv0L5O5SnbTr46q5C8wFQgnvSMpq44k5vF7y3QquONrtYXS7f9vmfrxh
 bwz3mY8yIyHlVY62sipnJkAd5f5T0SFDnTW1xew60FK6sGaML1ZKiiwzkh9eyvnQWXvh
 girCBFwH8RPV77Ci+8glJeFKE9bX9diTI+OJg+ZoT8pSfKH2kW+ANr6LIHLBChcllBPj
 A7EZMB+OpWP/06DqkhRSp4f1qE2j5whGfurhPUsUNgXXkQqmNjKiWYYBs2wvR0wnk1CE
 6IpQ==
X-Gm-Message-State: APjAAAXJcoVLAKpbKh/HQAjJ8kpvYYe2663oPDfjEPe1lUdoynlyfbyo
 VRcDblXdDLIqem5g8H3c1zSgmxxgC1XR4w==
X-Google-Smtp-Source: APXvYqzD6oLxnMRfl4Imna/ocsllrU1pcz/lXtHdflVIf4FHnBWbXczUh92y4s+QcrGUVusDk5DcPw==
X-Received: by 2002:a17:90a:8a12:: with SMTP id
 w18mr2621068pjn.68.1581066168018; 
 Fri, 07 Feb 2020 01:02:48 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id w6sm2309463pfq.99.2020.02.07.01.02.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 01:02:47 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 1/5] dt-bindings: arm64: dts: mediatek: Add mt8173 elm and
 hana
Date: Fri,  7 Feb 2020 17:02:24 +0800
Message-Id: <20200207090227.250720-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
In-Reply-To: <20200207090227.250720-1-hsinyi@chromium.org>
References: <20200207090227.250720-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_010249_249267_99530839 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Elm is Acer Chromebook R13. Hana is Lenovo Chromebook. Both uses mt8173
SoC.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/mediatek.yaml     | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 4043c5046441..abc544dde692 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -84,6 +84,28 @@ properties:
           - enum:
               - mediatek,mt8135-evbp1
           - const: mediatek,mt8135
+      - description: Google Elm (Acer Chromebook R13)
+        items:
+          - const: google,elm-rev8
+          - const: google,elm-rev7
+          - const: google,elm-rev6
+          - const: google,elm-rev5
+          - const: google,elm-rev4
+          - const: google,elm-rev3
+          - const: google,elm
+          - const: mediatek,mt8173
+      - description: Google Hana (Lenovo Chromebook N23 Yoga, C330, 300e,...)
+        items:
+          - const: google,hana-rev6
+          - const: google,hana-rev5
+          - const: google,hana-rev4
+          - const: google,hana-rev3
+          - const: google,hana
+          - const: mediatek,mt8173
+      - description: Google Hana rev7 (Poin2 Chromebook 11C)
+        items:
+          - const: google,hana-rev7
+          - const: mediatek,mt8173
       - items:
           - enum:
               - mediatek,mt8173-evb
-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
