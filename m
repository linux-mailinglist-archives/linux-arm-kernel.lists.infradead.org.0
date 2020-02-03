Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6E51504AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 11:55:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTt4DcIGT4xb1HhTjnuqxy2ru1KVoQQX93mbFdi2kTo=; b=O601kk/OM5Gi00
	KVheTXMmMDs4bO0XCjWmr+G+gZvCdfCsbZU7K4ORBxH9sTjNC63u623kD+8VFYdu1XRoAi8Q1CjO5
	nAjvKhFOjMDYhDdJL6P4nRwLze/JscLSAJ9fZFdN8ALYEIuXDc8IyyQSIgTHwkXLLaKM1T0gLyTqP
	KNE69IJFSU5bX8YDQ4L48MijQz+Uq9lkeSG84x8LDw2OEH58TH84ST0+Zdi5/zCuI3GlVzn1gHcTf
	QQIiKJB3a42bKoDQ2jDHTXIGGlNUXuqr+sINQ9B2N4D/Q7mdGazfLtcqmG475S+N6y2GKqMLSJmg2
	Dr4+/EbhwV8v1TtFK/hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyZNb-0005xb-DC; Mon, 03 Feb 2020 10:54:59 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyZNJ-0005rb-Im
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 10:54:43 +0000
Received: by mail-pl1-x642.google.com with SMTP id a6so5711345plm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 02:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qdcfeO5K2S+Cod2DP3bBm/qVK9+LuyFJKPE+ozmP7N8=;
 b=CJ30/B5L99FeE/8A8MlJ8DKGA/bta/8h/RXH+V8BikycRyW6Yu+QA7vFAQN3U3pLTo
 KWBN8bUINxvs3p44qFmDDTyQuR/eB/f4BDttHZSdz1sjXGOrZGsd92NDm6Dxzk1c/EXZ
 fIY75n5HfljIQ/uFciOU2qzHNptH5QNJR/JNs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qdcfeO5K2S+Cod2DP3bBm/qVK9+LuyFJKPE+ozmP7N8=;
 b=KO9yqDjhASJrU/ctr0PW+cfCHoNEb6w37p11GGBQNgFbOnACwKX3ZF7qwNJVpvvVBA
 g5VRhQMo5SUwyzbfY/CfST71a9wEAYIxsDKITAEUsajQSORk+Mn4ejBHOZKcgcmHmzy8
 p5CHRgPzutL/SsnkX+aFZYVAOkNR2wg6sgE89tBB96vFVeAmsS3dgFkv9GgbFqK+FapG
 gNC53q1ncsNndHSiKUb1FVTPsKdNqDFXfwYVSLP8soMXyySf2pZ5dt7ns3GKlSd5TCHh
 fNY8m6B/tPXP/02SMuVKl9snhn7mG78U4drGbv3VAj8EM7CFov382O4cRU7y+2xgQV88
 hGDg==
X-Gm-Message-State: APjAAAUm+lGfUZkT0kdU2sbyPIKgY0Vpt2lOEzZA81L/D+bR6xHc+1LV
 Z/XHjGBi/rRg82zFq9LBAYag3YZneldOjQ==
X-Google-Smtp-Source: APXvYqwhhb++S662UhMMPJRvXKnxOT2X6ORVM0UluIGDGNCr/JKKEYwit/FK0LXKsLF0cA0obcgWSQ==
X-Received: by 2002:a17:902:8546:: with SMTP id
 d6mr23392335plo.193.1580727280661; 
 Mon, 03 Feb 2020 02:54:40 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id 11sm20923835pfz.25.2020.02.03.02.54.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 02:54:40 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 1/3] dt-bindings: arm64: dts: mediatek: Add mt8173 elm and
 hana
Date: Mon,  3 Feb 2020 18:53:47 +0800
Message-Id: <20200203105345.118294-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
In-Reply-To: <20200203105345.118294-1-hsinyi@chromium.org>
References: <20200203105345.118294-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_025441_653204_F8A6BF10 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
