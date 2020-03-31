Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E41A198EAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 10:37:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tnznou06PydTNHhmKSxAZDL0AT5Wob6Rmu1vgLs/ShY=; b=R4cBaHbak3DjeC
	ZGbQqHHc1zIgwB6DeVeZW6xoA3rxZOVPmtljA1jN15KXlbBuW5E5nw0WUBiqu7pmSu8kykRw/oBTE
	Tl7m51MhWG6rSbp3YvYI2obpfqfQtCJ5zvg5tYBjbYgRCW3ycfydHsr+IwUjk0kJc9LIuTHX2508D
	YksZsnbo48Gue8raxtelMeR1IEsLMXVu5jg4CyFT8VhLiuA8cH0wwzue/HF+5PJGsdePxEP02+5T5
	TYD8RvwelPYpwOw7YLHKxob+iLU2A69OMtGphWAJj/YPQwcEmea82+PsASn0OBC1SiEsOKVObP6Zu
	00Jl8bX409dPIC0g+w/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJCP3-00043g-Ez; Tue, 31 Mar 2020 08:37:45 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJCOs-000434-Rg
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 08:37:36 +0000
Received: by mail-wr1-x443.google.com with SMTP id 65so24822124wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 01:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bw9s/mMNE/c7asckCQOQ8iAFN4jSk9KCdHX9uwgrhEw=;
 b=XTvtKtJFWmp2Zmc3VHP/lvfCJ1inAsyaqylWIh4Ss2EKA+1ovJ1tZmg5c1aXZ3q1zH
 goXa/80FrVAlCdEsamIa0Jor0NdqbZbeODuoBI4nBsVZjN54/VQXvZWNDd3Yt5c8Zzog
 y+6S1xkEXg9k9OHLfXBnbyNzBRQEEvi1RUL7KPol2Ldpc6jaI+0wWqYOUDr5VxOjlLOG
 Thgq/dr9FhALeoYg9RGCzIZhLz0emEdHlnoFSv3kct7Gz3xgQ4um7eDgk/DyxIVFTAyN
 KGD7UbQHUcme5r1KIMbkd1YQI/FYPlMhhp4FeOk12xCgoCxR9ciQpHntE1wf1+flNhUK
 5k/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bw9s/mMNE/c7asckCQOQ8iAFN4jSk9KCdHX9uwgrhEw=;
 b=UelgYULNQWsmGVujBJ8i52/BaPrj5x26xd4FRZ2q4XOEUAmUCRRLp5pIdCCWjaDYRk
 gP5RcmHrZL27VEPhQyp8FL6ATpBx+FSRpcG87XBTxLtgZw7x9sus2wBn+R+RvlkdKdlB
 NT64KCuijLYdfMmLw1YKcHwUSVWg1B/Fcpf18AEs/wx59EeKgDjPyiI0fy+vUgQZaaxi
 ZDIhL4Pj82LdGpIX3jdjvfKYcd3yC4Nc41j7OHVxZW+DRrko+38r9VQgBnUCKYbdoRSY
 msLqWuMEeAaVxbhGbFmxpH4ICH6h42GuNdXTyyDOuV499npHleWRUHmrmIH3bn39io0H
 vMCQ==
X-Gm-Message-State: ANhLgQ2XQE8O42GbOjJVARiIlpQ+fFOsokPpg9TWVNRRSg3EyZnSDpQy
 XyRhvlF+4mj8k1Rx8d3sRbKHYg==
X-Google-Smtp-Source: ADFU+vvfGC1b/+1ygxgUrGk28VZ+Ia8a+bilQBp6RcBH82KuSbgACrUme3dO63WJl/H4m1H7wNagzQ==
X-Received: by 2002:adf:b307:: with SMTP id j7mr20134382wrd.128.1585643852432; 
 Tue, 31 Mar 2020 01:37:32 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id j188sm2955870wmj.36.2020.03.31.01.37.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 01:37:31 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: devicetree@vger.kernel.org
Subject: [PATCH v2] dt-bindings: usb: dwc2: fix bindings for amlogic,
 meson-gxbb-usb
Date: Tue, 31 Mar 2020 10:37:29 +0200
Message-Id: <20200331083729.24906-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_013734_918740_EF3375AB 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: benjamin.gaignard@st.com, Neil Armstrong <narmstrong@baylibre.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The amlogic,meson-gxbb-usb compatible needs snps,dwc2 aswell like other
Amlogic SoC.

Fixes: f3ca745d8a0e ("dt-bindings: usb: Convert DWC2 bindings to json-schema")
Reviewed-by: Benjamin Gaignard <benjamin.gaignard@st.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/usb/dwc2.yaml | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
index 71cf7ba32237..b5303d918e70 100644
--- a/Documentation/devicetree/bindings/usb/dwc2.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
@@ -44,14 +44,11 @@ properties:
       - const: lantiq,arx100-usb
       - const: lantiq,xrx200-usb
       - items:
-          - const: amlogic,meson8-usb
-          - const: snps,dwc2
-      - items:
-          - const: amlogic,meson8b-usb
-          - const: snps,dwc2
-      - const: amlogic,meson-gxbb-usb
-      - items:
-          - const: amlogic,meson-g12a-usb
+          - enum:
+            - amlogic,meson8-usb
+            - amlogic,meson8b-usb
+            - amlogic,meson-gxbb-usb
+            - amlogic,meson-g12a-usb
           - const: snps,dwc2
       - const: amcc,dwc-otg
       - const: snps,dwc2
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
