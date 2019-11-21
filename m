Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE03810542E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 15:15:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tyVzJOMGAF3AF9dvY2bnyqtmFqI7FiVYgJ0XmulIGo8=; b=XtbpzF2AxlOsCw
	5FYHlTMan/l3yalJFz4TpUERo/LrVqOE+fXYGE7o4rp6j8SCBOw626Sj1TEw/Au4qDRCwxQCvgO+D
	EXmAFq/yx/ArqyAiO4YMtYbpH3VQgNnYXecsMASZJqslzdXhm56u54iDzqku8HIVag7Ryb7e+BtNd
	1mK/xLiypFKmIP6eu/K+T3jEnWJMYcPgwBgkcY52rRTG5N5F7Iw4qG6T1K4UN+UCPbJ9o7oSRaxIn
	qBq33Czo1iBJf9iKVCGzdLPn5dfT3djMObk5Y33YcZiPjaOj1dDWLpR+WEDoPEaae3woBFRSsAf9/
	41qO8fHMZKL7YmoC0oiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXnFK-0001vk-6Y; Thu, 21 Nov 2019 14:15:46 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXnEi-0001M1-2N
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 14:15:09 +0000
Received: by mail-pl1-x643.google.com with SMTP id f9so1625121plr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 06:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KGzksxC3NHCBGYXLvWDH+iGdDwwXfnJhqh1w+RnVanc=;
 b=XaZsFsA+H3APrLs4/4C1VvAbNkguZdBO0cdjt38HSm0TtTBuvIEVqdYMSLRc7qsUZ0
 TTkFJQsWWY0rJ9XwAhp65jWXiwEwp4JbDv3fWTOMD8bZoVuccJJ4kwlPMQxKbMT63fq/
 CDDC5M2TKZq2/h0rxvIiF2SM/UsQWvLHAUBN0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KGzksxC3NHCBGYXLvWDH+iGdDwwXfnJhqh1w+RnVanc=;
 b=l+/bIz0IDnbSA01GU6Uhc1rLtkEsSm8OagLMuosUskoczTMC/1IKhIlG3L7axD8VIw
 RjHzAh819HlVrhmoFu1fR2Fh+SXnBp24/GWXaLfdgEOz00lvd8667RA4i7aRw3WahFgr
 IuF4ARaaH4Q7fmuNHSzcWHg5m45XmnRqPFwujdGKTNRayGRQQwTaHDb1qBq08hKGFLeN
 DLSYsj9LC2wedaGK9fv6KCX9Mv3yjOza/CmpeYAC6JeWF6lBOmQrvPI3nqVBmCURycIj
 q507nNZ4brFIP84T2Em+XLXHJmIPBfq3M1A6ZRdB0HwfF+dxGo3+nLPq2AdipNZEJV0S
 fmmg==
X-Gm-Message-State: APjAAAW9IjRMxO4rS+OqCj3q3NHuQP1eire/d69zlYqpNZLV5htUoywx
 z+Bnz/9yyqqKEYJFXZ/rdB8zJw==
X-Google-Smtp-Source: APXvYqxpFu0QFdEqmYmMyXZkzw3516FXyoTT5uH4u8N5dkaFnOuJ8uIoxJBB06PvcglL3PV2cQ7eIQ==
X-Received: by 2002:a17:90a:380d:: with SMTP id
 w13mr11702168pjb.133.1574345707390; 
 Thu, 21 Nov 2019 06:15:07 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id w138sm4072304pfc.68.2019.11.21.06.15.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 06:15:06 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 1/5] dt-bindings: arm: rockchip: Add VMARC RK3399Pro SOM
 binding
Date: Thu, 21 Nov 2019 19:44:41 +0530
Message-Id: <20191121141445.28712-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191121141445.28712-1-jagan@amarulasolutions.com>
References: <20191121141445.28712-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_061508_149909_03A29AC8 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VMARC RK3399Pro SOM is a standard SMARC SOM design with
Rockchip RK3399Pro SoC, which is designed by Vamrs.

Since it is a standard SMARC design, it can be easily
mounted on the supporting Carrier board. Radxa has
suitable carrier board to mount and use it as a final
version board.

Add dt-bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 45728fd22af8..51aa458833a9 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -526,4 +526,9 @@ properties:
         items:
           - const: tronsmart,orion-r68-meta
           - const: rockchip,rk3368
+
+      - description: Vamrs VMARC RK3399Pro SOM
+        items:
+          - const: vamrs,rk3399pro-vmarc-som
+          - const: rockchip,rk3399pro
 ...
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
