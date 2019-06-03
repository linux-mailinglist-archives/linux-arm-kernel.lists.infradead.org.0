Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8497B32B92
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 11:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pz5j5H5NRXhHislxDVo5IHKSXxFg4KyTbMGtMz3wZkk=; b=nfoZAl8//4GH6G
	7UIAVQ+kLP5gxXoOlPhtVWaZfLmfMx91EJL8x2CMcCcnwPBY+SZnzdLehd5XTGELMscUiLevMH8ty
	OUmXSU5hV1S80KfmjQ1qn5gaWgvb54fnFi93yAypnB8K2Z297RKNWS0oTePU3hAFZ37cOi8omU5ll
	kmKomqdfJu+tQL2BVGtEuR7pwsQF+0syz3l+1UM2QTo0nzcgRV/thtUefyq/jPNijNjodQgqZW8Ba
	cD+j6dWMkq4PSIzlMq8CZRgRAD5C51AVUTjH+uev3Q8Aod9hkAL2j/nhp803353CmktRDFsrHRs7o
	+zSsFdMOsdF5by/+dhAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXiza-0000SU-D5; Mon, 03 Jun 2019 09:10:58 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXiz2-0008Lk-Rq
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 09:10:26 +0000
Received: by mail-wr1-x442.google.com with SMTP id h1so11177402wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 02:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rO31uLodqtR0UANwODTPyvdISTtsAPEuGeRxrgglRH8=;
 b=GILKK69Hx1iSG+k6AOOciar2bFvlGC4clbjFLxgycYVPNVnByNoxP7iQg5nnUo9iNK
 i5PSLwV21N3ARniNEUGDelbQuQ0rXfnOybCAlVoHoseCacMLlfjkpuHgwZh0H+u4eSe/
 bMlAsl4e/Vp/dfi99qhztHoisCxUc+MZ/X4YXyVnxwe5UAHJvyTL3a1GqA1Yd0gcDi4u
 K3NM7R3zW2yYy0JPzRojnM4v7bQypNi//BxdJxmkP1uxomNSlYMJ+iEr0eSWrebcGfnl
 q7bYXdyMQTubSWxC5vorXDPyny39PFpkwnOvyPEcELiey/SVGe3+RHdHXwSQ29IXJxyL
 bHAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rO31uLodqtR0UANwODTPyvdISTtsAPEuGeRxrgglRH8=;
 b=AjFgQ/xp4Y/lUni4bDtdbTW6XELvQRXBQTYyF6RxoYKyzwiblDTJkB8h4/hAZxRq4o
 et4ZwP/8CyFqLCZ5O3Cp6HOvoV1Sv0qSVt01Je802otrnZlwIwi0u/auT6JkwRavRB7X
 cJJ6+5GZMQI+6JDp0HfPuni3F69UcNX3X00NGTVO7Zgf+dNEYpUSjsWmDfQmA2vTuVIv
 eTDCEQc4IoQJA8lphWHFWuPe71VXxRTsIc7rQEGt12MDmGSnKpmUZw9KTwhfYOaplLqz
 29Z3blyfZFTHa0nS7mFIvMOpvQqIxgDHwvsZX8iQH+ao+iCUD4tg0swCWcmyp4jVVC73
 w+Nw==
X-Gm-Message-State: APjAAAXDBDxg+7fz8/P574M/4ud2UquwYAet+38vUQablK/jLhXIcOm3
 o1PS3lu9jc4vy+eOm7NJOpeElL9HamSuQQ==
X-Google-Smtp-Source: APXvYqwhB6ROy4l/G46P5gRSukzDQ2ZzoCJP9NJ28xzRpXQf2J19TKDaESEKU+F168cmCcEvpb3UWQ==
X-Received: by 2002:adf:a509:: with SMTP id i9mr1868475wrb.269.1559553022900; 
 Mon, 03 Jun 2019 02:10:22 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id e15sm10676809wme.0.2019.06.03.02.10.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 03 Jun 2019 02:10:22 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH v5 2/3] dt-bindings: arm: amlogic: add Odroid-N2 binding
Date: Mon,  3 Jun 2019 11:10:07 +0200
Message-Id: <20190603091008.2382-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190603091008.2382-1-narmstrong@baylibre.com>
References: <20190603091008.2382-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_021024_895257_3530C881 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Rob Herring <robh@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible for the Amlogic G12B (S922X) SoC based Odroid-N2 SBC
from HardKernel.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 28115dd49f96..f75df4471c0a 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -139,6 +139,8 @@ properties:
 
       - description: Boards with the Amlogic Meson G12B S922X SoC
         items:
+          - enum:
+              - hardkernel,odroid-n2
           - const: amlogic,g12b
 
 ...
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
