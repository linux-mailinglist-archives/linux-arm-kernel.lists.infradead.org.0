Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C4D17B54C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 05:14:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDXoSagj+GiY60ihkokei8Ep9ovse3uyAXRPeb9atJk=; b=lqK9SqSGC4UeM5
	LupdYcV1/0CvsPXS+KHvcaWNU1UHNxIZdoM75qOKAKhQDm60lBqXuhzffsp/r2Kup9Z2J+Jnp3a32
	yCZTWcIQc4adbdzI8A0QfSGJEob+DZPWg1zcf4iU9PG9jNnefuXlGjHaosQ3AwZd9O/f8J95R5RYN
	334DeYhR9Ated5g9b8Xfu7w7/4dcAXp4YdApfNOWjPtBcylKIeKKRkpGdoW6eAkKy6qVXn7/2kAo3
	AUbiuwjPuepL+/bORrz44/e9v2g7i/Q6kwFnlFZUscoTBXJRjMUE4Xd3PiROay6b99idCufAb7TbL
	kXslNMIUn76K3A6s4V+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA4NZ-0005Cf-2Y; Fri, 06 Mar 2020 04:14:29 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA4N5-0004wb-7G
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 04:14:01 +0000
Received: by mail-pj1-x1042.google.com with SMTP id l41so518568pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 20:13:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FYo0wCuLZS6Af0DjoF3Xj17jVoInSu2OB15HTnyAsCo=;
 b=YCCN2t1CB2P2CfMaPm6rIKOPVG8t/6V3YQ2aCXAgjwQ/oXYOdBygxVA5DtyYataKSO
 8jXTgzI9ZnMO/rKDqORjVs1ktjYBpeo3sqPj4vQGQJb5Dyg3EMeOJSo5Rar1l1W4uIHX
 DB1YWKd8PndfLlPLZiNSXoYYlp+cRIkYlwyFE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FYo0wCuLZS6Af0DjoF3Xj17jVoInSu2OB15HTnyAsCo=;
 b=YxEwHzj34iI6HbjPck2XZYSOnmqWVIck/6vmCK76InU+VPDwMYTCVNLF66t6+yrfE0
 EK0cJr7bYczsgcn6Ia61XXjXAwi3Ji9xx2fbPPGfZqmnL58qDokhL300rctTt9qbelDi
 8yo+zxJNEINoV0nTO/uO32b2ENLywk8Y5CzsVHPZr4+Jx2YbVzGT/AuU0F8FXwTBJ52T
 jcYPFhWC1/MHonNQMUEy7ue0oEGzQPbm8mrCKQ/4QmxLquQlOITICI7dsGLFkYmNjYzL
 gkaEUCtsrN4S8Wlnn3gKcu+VNbvln8m8ldQF2NJjucXMS3ddF5BbQf1fPkLuUzFMeIkO
 5TWQ==
X-Gm-Message-State: ANhLgQ3cCqunDdWhsS3D+q1K9YTLYZifUp77Q9fUbO0zhZ038zJgtxd4
 +RrfAd4Zedd33P3oOblyoaxy+w==
X-Google-Smtp-Source: ADFU+vsapmfZZvpytvq8zfJi0p1aO+2auKRfer0iGIeUM9zhX2RKOVB+rq7eHpBtbvY0Yo4mFBVKTg==
X-Received: by 2002:a17:90a:b94a:: with SMTP id
 f10mr1564406pjw.1.1583468038770; 
 Thu, 05 Mar 2020 20:13:58 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id q97sm6295025pja.9.2020.03.05.20.13.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 20:13:58 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 1/4] dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
Date: Fri,  6 Mar 2020 12:13:42 +0800
Message-Id: <20200306041345.259332-2-drinkcat@chromium.org>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
In-Reply-To: <20200306041345.259332-1-drinkcat@chromium.org>
References: <20200306041345.259332-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_201359_259762_186E188D 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel@lists.freedesktop.org, Steven Price <steven.price@arm.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Nick Fan <nick.fan@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Define a compatible string for the Mali Bifrost GPU found in
Mediatek's MT8183 SoCs.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
Reviewed-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
---

v5:
 - Rename "2d" power domain to "core2"
v4:
 - Add power-domain-names description
   (kept Alyssa's reviewed-by as the change is minor)
v3:
 - No change

 .../bindings/gpu/arm,mali-bifrost.yaml        | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index e8b99adcb1bd292..c5ceca513192f99 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -17,6 +17,7 @@ properties:
     items:
       - enum:
           - amlogic,meson-g12a-mali
+          - mediatek,mt8183-mali
           - realtek,rtd1619-mali
           - rockchip,px30-mali
       - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
@@ -62,6 +63,30 @@ allOf:
           minItems: 2
       required:
         - resets
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: mediatek,mt8183-mali
+    then:
+      properties:
+        sram-supply: true
+        power-domains:
+          description:
+            List of phandle and PM domain specifier as documented in
+            Documentation/devicetree/bindings/power/power_domain.txt
+          minItems: 3
+          maxItems: 3
+        power-domain-names:
+          items:
+            - const: core0
+            - const: core1
+            - const: core2
+
+      required:
+        - sram-supply
+        - power-domains
+        - power-domains-names
 
 examples:
   - |
-- 
2.25.1.481.gfbce0eb801-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
