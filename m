Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD71C14026A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 04:38:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ABxpi/5X/0zA/5hnVxBr8Anht3PdPQcsAazEjB98uFM=; b=acklsDRpSrC8wy
	ZzArDAk66GfCqjt/f0ZydJjvKcTBa+yrvxVgWHJUMincuYs5Arvrc8Q6IHYQg8gRD3XOAhYh5CTu5
	XCAPDRj6xy1x6ZPOp/o9QLW2sYKFKzY3QCG+twTt7Cimn1ZAVR/eMBP6NxHX/kRcJXakTkRHHhofh
	fcRl7FbsQQaC3D/30unTk2hOzDIIv41+eaAC/MXnWYA9tScxFn5472wopTenJcTjkxrrEYG+ELijy
	Lw+jFf6L12apPnYuxLkrosltYm/fljLAyn6Zq8WUcSmtcNhD9NQXxcTG3i39r4u6A3mIsj/dN05bJ
	0MTA2JD6R9oI+mAGg5nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isISv-0002zc-SW; Fri, 17 Jan 2020 03:38:33 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isISR-0002kt-2A
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 03:38:04 +0000
Received: by mail-pf1-x429.google.com with SMTP id w62so11268995pfw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 19:38:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5t137Hgr25MSwppHZChMACb9jtzyL71KI0BNnXvPh60=;
 b=mQcwVJDGKnK0SDcsFxBlyFqk09ppdxI6h15y14y03P7PF6+y+/nFuzCxPPv2xamAmg
 9f1SnyEVfzmq+WI0syd1uuGa2xLJMeO6oxwvTiT4p1daaPWbfSkxNT8xQhoedU2BQ1IW
 aD+OCRq5eDLs7bjHcyv/zf+xeYagRhcADZW/M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5t137Hgr25MSwppHZChMACb9jtzyL71KI0BNnXvPh60=;
 b=lJlgcSxY7QYommOrfLMiveSBhpI3HmSvXAwIhV4IT+SuwfOQ5SBChGDrOJq07csrtt
 YcYPb1nMLNjXPMjQA6gxqJqBltYdVur3d88VSNh//2TReItP+Q9loYbX4F79dsKbd/k6
 LlC5wOyBQ0gYxR/G/F0ZXFCODvP3jwk2BIvEBpT3v25yVQ8my2ZPlSgluvZ0zxhT3lsa
 pgwRpHp+znmrET1QdsV4oYlbG/BrOTluOgVEyEG8V9J9r++2mhlL9h4hRsljGF1njmlA
 ukl1aJnZnnTbHhFRNLf6Lc7Z/ykJNN8XAb67qoma8WyzP160HZVvCOtylH9OrETlORVa
 5thA==
X-Gm-Message-State: APjAAAVe2sDyhHRo5BrDBkbX+FaQisug92Q6sk6104DtWAlPEGKCGBJj
 50JiWrlBRaEIGwCmBx9LNan7QYwlsM8=
X-Google-Smtp-Source: APXvYqzy6hYrjE6QOAX5NisMiTl8d4lSUiT1Kk+Lfm0HFpcrBOX/uFVsjFLKOkfbYFQtI0ZIUMMm+Q==
X-Received: by 2002:a62:2cc1:: with SMTP id s184mr911908pfs.111.1579232281428; 
 Thu, 16 Jan 2020 19:38:01 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id j38sm25940259pgj.27.2020.01.16.19.37.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 19:38:01 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/3] dt-bindings: arm64: dts: mediatek: Add mt8173 elm and
 hana
Date: Fri, 17 Jan 2020 11:37:47 +0800
Message-Id: <20200117033749.137420-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
In-Reply-To: <20200117033749.137420-1-hsinyi@chromium.org>
References: <20200117033749.137420-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_193803_128344_25544B41 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
