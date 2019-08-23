Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B22C19A9EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 10:15:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E102y/GkIyWfOVpY1upCgPuUjBYJHXHi9H16dCsqbIs=; b=D/fQsRMVeV8wML
	fgTzNf8u9q0WzvzGLvKLLnnLEPxgIojEn6IO/IjDynrnQnlBjD0087scPYGWId/M7k9LGL3pJq3Y9
	BMQ9XdA4oZuoF8lwQqftcMP9FE5+CuglQaxJUCSze2mLBL6J+3eUfu0vDV5O/F09YXqPR/D3lmCGf
	DRV6qNBJrdH43IBw6drCEfQyYqnmKt6gw1696geJ/tjU8ymbKc0G2QpLULry9nU6ImoQ0m0pJJ5XI
	sHxKplZMUIbMKHliYYOYUFAjwoUFcLHmh99WYgAUC7F0vMY8a7HGhthunGUIwnNiVg2bwSUOJwEG9
	RsnKNKNkzuESauFs7y5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14j1-0000Fy-E7; Fri, 23 Aug 2019 08:15:11 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14iO-0008Ps-TW
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 08:14:35 +0000
Received: by mail-wr1-x443.google.com with SMTP id z11so7799572wrt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 01:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=an7EFK4JvkBoKoM3Yeo8YPBrJ2AtkRzJC4yL9T9DOFQ=;
 b=C2llLjqzUduLdL9VZmxRQLNAh79gNPvOHxRc6lEKIqSOnsdMwk9J/IuO0IKipl51LV
 ExpFAffmyTqbQbSu6k2d5JgfNOs9nStxyJMcW1WfPkYvMA+8RDoMaoi/ygi6ySq3m/Pj
 pONoERsHmpyXMtpyhd807rWxNI6OdtVU3OlM5PR7rpnA7WDQJYeyt8nOBjKcPFg3NIWQ
 uUv+L6aN9WgbbiDmYKLqveuXxDxnoaqph79iwXrxx4lzgTLCwxaLDTPOkuwHUYWz1+3Q
 6ZfZOtzqwDnQcbXFt/ajvuL/K59ukUFusOgXWhri4IH9mlgFQNUEGqBxcG0hVgpgXkCF
 4WKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=an7EFK4JvkBoKoM3Yeo8YPBrJ2AtkRzJC4yL9T9DOFQ=;
 b=U8O0iVKG+iRCGCarR/MwQJ5aLSQNJhu24FcVAuwn+XKVG9iOUzuweOXcb6mQJUYcUO
 VANM9EAxhaNIutpICfUgt2Q9vKyZf2MYyaxN6wJaXL8L5wqb4NZwehcwMDvCWc2McvFm
 QpgRrAnTGdKoLoMQHEiqOEA7xJhkyE9o4J0Qgvnlm1tdxyXGz31a6HUakW1SNdjNbwm6
 38d2cXG0ouKRvSUfM0Vm2IU1BjHJ735Fw4EnwpdE+1OAVAvN2caTtq2sCw9zphk2cydX
 S0ZCCDkMEh/e0ruvUHXGYJf5a3cmVEE3xe5bM3p3CWFwf3TZVW0YPmDaf68s8CcsTESp
 W1xQ==
X-Gm-Message-State: APjAAAXAx6vt6whkuVtuuXCnrfgnE0lxV5z5/m4jEHIhwbMNiBJzHEWF
 813nk+7Q4OKN2f1B5ttHsO+QjA==
X-Google-Smtp-Source: APXvYqzGW6+sUuZMXFxTaQiVCRz6B52nyNUkpqM6pyYGjlS9BL/UG5O9FVm9nklwKZfHr9awWgIN/g==
X-Received: by 2002:a5d:5343:: with SMTP id t3mr3487147wrv.156.1566548071564; 
 Fri, 23 Aug 2019 01:14:31 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 74sm3632535wma.15.2019.08.23.01.14.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 01:14:31 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH 2/3] amlogic: arm: add Amlogic SM1 based Khadas VIM3 variant
 bindings
Date: Fri, 23 Aug 2019 10:14:26 +0200
Message-Id: <20190823081427.17228-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823081427.17228-1-narmstrong@baylibre.com>
References: <20190823081427.17228-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_011432_946867_6D8C463D 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Khadas VIM3 is also available with the Pin-to-pin compatible
Amlogic SM1 SoC in the S905D3 variant package.

Change the description to match the S905X3/D3/Y3 variants like the G12A
description, and add the vim3 compatible.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index b48ea1e4913a..2751dd778ce0 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -150,9 +150,10 @@ properties:
           - const: amlogic,s922x
           - const: amlogic,g12b
 
-      - description: Boards with the Amlogic Meson SM1 S905X3 SoC
+      - description: Boards with the Amlogic Meson SM1 S905X3/D3/Y3 SoC
         items:
           - enum:
               - seirobotics,sei610
+              - khadas,vim3
           - const: amlogic,sm1
 ...
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
