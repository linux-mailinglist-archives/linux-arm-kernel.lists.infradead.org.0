Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FF913D376
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 06:12:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ABxpi/5X/0zA/5hnVxBr8Anht3PdPQcsAazEjB98uFM=; b=P9/BnQLx+6h4Ej
	qub+f2DQVJ7WgdQubGDZbLLqqEoM1qtTLIRoQ+YbFCjod8Ka8rU2Yi6y2FC5FbCFvff/MsO3XCmlN
	hs0eIZiOpeaoDBj22NC1FrsR9rKheKLt4zj9rg4id35TbJosTCInosZXHIdIUBcuM7ii2EYUdjF9N
	vg4S/1ZN4X88Pp3S0zkguMk88Abgy68cb7QTsygVUYkPJhTvxNG2hwRdqxcj37KXaHGcPcrOdg/ka
	8+YYr0WUofJV5vwJ4hxZ85YqV7xb3mYEd/k9FyIKxU1ndmLT3xw3xp3OlcKV5O0AsYMyI93WmiNnd
	v1cS152LMRHaVrZsSrlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irxSM-0005GM-Cw; Thu, 16 Jan 2020 05:12:34 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irxS9-0005EH-Rq
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 05:12:23 +0000
Received: by mail-pj1-x1043.google.com with SMTP id bg7so986651pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 21:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5t137Hgr25MSwppHZChMACb9jtzyL71KI0BNnXvPh60=;
 b=SlAEl8CCKwgk2pji8uvv1hGfQcI6PJDUxs9aUvQwZ4wbz3FxpnRNbdItJGljwTH9St
 X1vIOo4Je0wi019hxRim/DPOCMhcWop4I+Qd1spj0buvLJuzta/aohHVXvCIPxIwLUT8
 SjL1n9SXeTVfpR0O36cgyvyp1clc5sdcfFDT4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5t137Hgr25MSwppHZChMACb9jtzyL71KI0BNnXvPh60=;
 b=IjgpEqZsdyin3vypDFHostubMIsTUzVzeozvMdc/uGFZnCAcRGzxOPCOjyzqlVVh3W
 4kWPD10uG8br7Nhrcx3ZJKDz/9CfeGAkJuPH0dUVLdmgbVUrRI/xNEK6rnBMVC7U+Cfi
 GhRb0QqNey9KMP4awQJsjFfm5PoKT5HDQyygRBmuMP07CdvdpYbkULO5v+KQHYThr0FN
 gQVKc6UmmaTwtIER5h1V6XwnTDUyNn4rlP8GG4K80LdBpMEfS7xQi2AVEbLkQ2gcnTuE
 k4ElrdFOeiH8yl6rCleeagqs3dwTOee3hbj+AaNb/i4xSwlh+fIUZhI1sJYdRs6O8uzq
 mIQA==
X-Gm-Message-State: APjAAAVWd8Drsf53caVDw6qfzPZGuBon7SqI4gO9C4BObo1jZQ9IJ5Ag
 wcdBTZH6gDozfaUF9X+UrUSfuGKBhdk=
X-Google-Smtp-Source: APXvYqwdOjdtFD1Iu7QVZbgDqB198xvL/e/t6J9kYjvjNo8/BuXY1Mw5Y9I4lFqL129beGOoLQukoQ==
X-Received: by 2002:a17:902:a614:: with SMTP id
 u20mr30227332plq.107.1579151541051; 
 Wed, 15 Jan 2020 21:12:21 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id l9sm21540217pgh.34.2020.01.15.21.12.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 21:12:20 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/3] dt-bindings: arm64: dts: mediatek: Add mt8173 elm and
 hana
Date: Thu, 16 Jan 2020 13:12:07 +0800
Message-Id: <20200116051209.37970-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
In-Reply-To: <20200116051209.37970-1-hsinyi@chromium.org>
References: <20200116051209.37970-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_211221_898294_70B17947 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
