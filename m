Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E102B1143B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 16:34:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Phk9PftsqK/BJAwwrXl8XEBzu62I8L0SvjQs3if+Eas=; b=uN+nguuz2QpN45
	cbZ8e+VypanP8/L2zVdkSWBK2usSavxJvObf7g+qZy/t5ddlJVBqDsxknMGLU4z9x6WJF4/MZ2ueK
	h4HX19Z1O2/zcFXEQ3ghK5awpRHucqjaHWIoWtT2ssLk9gZVBRyNPUG0qZB8FrVy/DfePyeDlBpGO
	BlyWVCa7MPwPThk53viOcuWCsuEc+vyLA7VCi7E4ibJWLjd6uja7TPdMyBbVbq+fTdn1jlbJOhtWL
	dw4UqKcLKCcwow0qAyi1hmto5syzgqUGuFzqUzGI32sGt9NRvyO7U1dIwkWqwTJwkvfveYe1r+FFq
	mWDx/+vQKaeEzOMj/ZvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ict9U-0003ko-8d; Thu, 05 Dec 2019 15:34:48 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ict8y-0003Te-Gh
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 15:34:18 +0000
Received: by mail-wr1-x42c.google.com with SMTP id c9so4129434wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 07:34:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KzKSFA37zQ+fSsnCSfsJqcJWA1YqoEpujyYe82jiosA=;
 b=1RAkL/YqqEmrVPedzEg2Pc0Ov3GvHhQDDskUsdP88FKftcpyQigTss9I7/RJeNaUWJ
 8SxDYfPOP10oekWk/HW52CxH3vycbaZGijkt/iEktSBaQIOyZ+ZFiih4FwRMEvQrBtKt
 q40mxhTIaXZm6rmsGymyE03yDP1zjMp5GsS4ojcVZP+c8ME5ZADLF9qLjLlhNtZPpVna
 v40EMCUiDKqq0m4nYJfbIXt1EDhDHbUXfxR+luG/18Z936G2of2baLTrugjU1n9HO3i+
 M1BlbA/SLFnu4eSJEi3Ts5ZyZKM7eCVemr2cYZJV0SNcv33nR7gSciCyUWMV6MMUmrRs
 bYDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KzKSFA37zQ+fSsnCSfsJqcJWA1YqoEpujyYe82jiosA=;
 b=NQeNFmfDtKe6ToItiRbCpDS0VLNAkYjEYv/FyTxEaoP5HWrMLGK058jB0o9u7eqFgp
 Hcgmu1rREJt0OgfUQF32Cm4S4VI44+4di7U8dQDZ7wji4ukcRUdziKc3UBtmT8lGBBlc
 H4UN9sKz9EUcebMmInjLQ9Zx+bloGKpkxvQd0Txcbr860lTQ23uSq9i7jkVhlooRFeea
 zDewvZkeqUqPKfF9eYOIRc+ZQA4G5M3/zTfp7k8qCM9p7tDJtPqsEWcwoP4VMMgTKnwx
 mHapm0bFdXy+ubhbk4t9RPgeu/y04qAhWGFF14NGFe50PGeWFHWPfdFWNxjysLxIteRl
 atwQ==
X-Gm-Message-State: APjAAAVDy1gRdx3datZW35a7X8F1qxdnb+qygUV+zEju07U5Nc5V051X
 0nRhZyDMfTn5FUrfHY2PxOnMcA==
X-Google-Smtp-Source: APXvYqzZBXKnAbQRB+UN+TlYuRc21RIUf2MlSS34PJhj5LkssDhww4cmP6eaWU2qSaFmGTFxlmAbFw==
X-Received: by 2002:adf:83c7:: with SMTP id 65mr10264958wre.368.1575560054836; 
 Thu, 05 Dec 2019 07:34:14 -0800 (PST)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id u26sm191894wmj.9.2019.12.05.07.34.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 07:34:13 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mjourdan@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/4] dt-bindings: media: amlogic,
 gx-vdec: add bindings for G12A family
Date: Thu,  5 Dec 2019 16:34:06 +0100
Message-Id: <20191205153408.26500-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191205153408.26500-1-narmstrong@baylibre.com>
References: <20191205153408.26500-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_073416_553145_CE2EF265 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 .../bindings/media/amlogic,gx-vdec.yaml       | 42 ++++++++++++++++---
 1 file changed, 37 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml b/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
index 878944867d6e..cc8dc264fc72 100644
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
@@ -59,13 +62,17 @@ properties:
 
   clocks:
     minItems: 4
+    maxItems: 5
 
   clock-names:
+    minItems: 4
+    maxItems: 5
     items:
       - const: dos_parser
       - const: dos
       - const: vdec_1
       - const: vdec_hevc
+      - const: vdec_hevcf
 
   amlogic,ao-sysctrl:
     description: should point to the AOBUS sysctrl node
@@ -77,6 +84,31 @@ properties:
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
+          maxItems: 4
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
