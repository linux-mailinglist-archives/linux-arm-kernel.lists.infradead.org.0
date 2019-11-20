Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D252103863
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 12:15:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2OY/kY5BLwQOXTnRkt2xsfmtvEFOLer0Pq932YJPn4I=; b=XXWokCQ3ftNXR2
	SujyAN1lvkz4CcgYy712p1Rx/DqzwfM9sc40a2MdkvSuZiG+kjhZLHsRmlWtofAz8FijHaHNTZ5Pq
	zBgntptWfvMGfXO9BWohV3kv9/+LYrK38pEfwS5dss3ovsiWAmqZHbDdZHwojUx6Bo/54oNrOGmOR
	bhJfcWOn6+fIbSGB+pJD1+zDY3LS9ijwJDQ5iSs04KrgTQknZt1PPRYZ7mybB4np24b9wE9lRqh0j
	Dj5nvK6Kq0Ma8nbbo8g+eE11OXtt4edWLvcXQCAr2glPwqSMfybc5aBOtPqhNeX4tE8+2HBUONQ0S
	KWSU+7NaOe5raA+7E3gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXNx5-000772-1L; Wed, 20 Nov 2019 11:15:15 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXNwU-0006p3-Ul
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 11:14:41 +0000
Received: by mail-wr1-x429.google.com with SMTP id l7so27647853wrp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 03:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ja7kn8nM5rQg+IdSoiS0Hj6iA3DSp06ChG/PAIh+vCY=;
 b=yDKsahxL4XEoVTSy9nI9vw6XP4e0ElslXK2PKtL1dSHo0DKVnDOCN7B+ptZDtjfvN/
 RZdtvW9hYYy2wtEZmwnr0dqku1ywWgdHJTjgcmAOwuWWo1QQK98mEEYLDSb9dv5sWv+K
 z9mDI9XIj1D5chjio5BHM3FirH67Ih7oucgqayFM4uxsHOqDoeurQWgaqMLeE3WUtvnl
 9wEVug9zAW7upPRi5AiKDJ/NtLpr33gPro8NWKIJ03yQv8QNO05EuF+v3tKQKjTzRQbg
 hYUiIdB2P/YSQZfEwIOqAhsXSLOP3Cy+tluNXV69i28MsNFb/HuHAtVNF4PKJptluxJV
 t9jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ja7kn8nM5rQg+IdSoiS0Hj6iA3DSp06ChG/PAIh+vCY=;
 b=Uh5szD3mJBfBbPyWJPuJpOPKmmV29yCcvPFapa4oJFYJ7mkI9FeUlsUBGgy7NYhuwk
 x10/jXCjPw7V+eEP/vnbkrxnFJj9+MLdK+0cFBJNNyhUiRCLdfLkUFCAG/dDGSepIXPg
 kzWaYZgMewDbNcjx035J6eUmZOeMkzW+SmrgIQmMFRahH9AK25pFH/5inQ4WuQyxP3oQ
 6yKoyoOlXCkjH9+/tk1TQQUz71hcFdlWGGfxWcSCFi62CiYyO/I4EigQlGUJRObvq2v5
 D5ixVXVDCQEa07VpCiZUwSt0S07WjAbHPYLzUatwgeumiXDcZUmDYmxZb2qzxHGGS5Rn
 UKNg==
X-Gm-Message-State: APjAAAVLU4FmjCDzbGQ2X4pHOfAoYi8fTyTYNzg/J3h8jH7Q0QnIxRyc
 3gIgUThWgBCWCLeaOkjjtjJynA==
X-Google-Smtp-Source: APXvYqwH4aS6TrfN/psjDpRkojuL6BjXTzCTMYaIzigeYCPayBYWGt9XP2jw+vQf19vd5P/yzoZvcg==
X-Received: by 2002:adf:ef8a:: with SMTP id d10mr2647778wro.314.1574248475978; 
 Wed, 20 Nov 2019 03:14:35 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id u1sm6061748wmc.3.2019.11.20.03.14.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 03:14:35 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mjourdan@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH 2/4] dt-bindings: media: amlogic,
 gx-vdec: add bindings for G12A family
Date: Wed, 20 Nov 2019 12:14:28 +0100
Message-Id: <20191120111430.29552-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191120111430.29552-1-narmstrong@baylibre.com>
References: <20191120111430.29552-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_031439_014857_38F706A9 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add bindings to support the Amlogic Video Decoder on the Amlogic G12A
family.

For the G12A family, a supplementary clock is needed to operate the
HEVC/VP9 decoder.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/media/amlogic,gx-vdec.yaml       | 57 +++++++++++++++----
 1 file changed, 46 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml b/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
index 878944867d6e..8ea979bb97e6 100644
--- a/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
+++ b/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
@@ -27,12 +27,15 @@ description: |
 
 properties:
   compatible:
-    items:
+    oneOf:
+      - items:
+        - enum:
+          - amlogic,gxbb-vdec # GXBB (S905)
+          - amlogic,gxl-vdec # GXL (S905X, S905D)
+          - amlogic,gxm-vdec # GXM (S912)
+        - const: amlogic,gx-vdec
       - enum:
-        - amlogic,gxbb-vdec # GXBB (S905)
-        - amlogic,gxl-vdec # GXL (S905X, S905D)
-        - amlogic,gxm-vdec # GXM (S912)
-      - const: amlogic,gx-vdec
+        - amlogic,g12a-vdec # G12A (S905X2, S905D2)
 
   interrupts:
     minItems: 2
@@ -59,13 +62,9 @@ properties:
 
   clocks:
     minItems: 4
+    maxItems: 5
 
-  clock-names:
-    items:
-      - const: dos_parser
-      - const: dos
-      - const: vdec_1
-      - const: vdec_hevc
+  clock-names: true
 
   amlogic,ao-sysctrl:
     description: should point to the AOBUS sysctrl node
@@ -77,6 +76,42 @@ properties:
     allOf:
       - $ref: /schemas/types.yaml#/definitions/phandle
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - amlogic,gx-vdec
+
+    then:
+      properties:
+        clock-names:
+          minItems: 4
+          items:
+            - const: dos_parser
+            - const: dos
+            - const: vdec_1
+            - const: vdec_hevc
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - amlogic,g12a-vdec
+
+    then:
+      properties:
+        clock-names:
+          minItems: 5
+          items:
+            - const: dos_parser
+            - const: dos
+            - const: vdec_1
+            - const: vdec_hevc
+            - const: vdec_hevcf
+
 required:
   - compatible
   - reg
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
