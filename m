Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52840E52BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 19:57:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LyzjCQk5wMCYhsDNbU9KGennr00JfzRtlWON+eNZk44=; b=gT2enOpwQqIRLz
	reqLy11thvchr05QhWEgq3ejWKCk/j43f1wN1sMG5GFs/IVguYi/S1gh9OyEGFrSelsfzcNB9dnDi
	CBL/99eatUzQo6aulCQ29NgnJ2+kxSTZzMr5vhd4ocJY/xtTkZRYVZHFmZOP5ZcVv5rOqpOoGlYzq
	3g+ZPaYngZWj2c72YD3L1ivsAxPbCn4jJwPQ/5zvg21Go1LohyM0SNjMwLtYFdtyQHYYp/6kW+rkM
	ZmRWxaPilC4CgARS4P1vsYvlwiyk4X5Q8qUBy5AI6TqDJkTUpOPC7GrCNvnV0PsRQGMxLayWQKK5R
	qnm1NCut48NRl557dGFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO3qA-0003BA-Sp; Fri, 25 Oct 2019 17:57:34 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO3pY-0002sI-Ob
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 17:56:58 +0000
Received: by mail-pl1-x643.google.com with SMTP id c16so1624357plz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 10:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lLu60EjnRBnW4wz32/fkJTOsgD5cNWvT5qBN+RYNBTg=;
 b=nzR3p0+HUwjXCJKFafzIo/pTdfwQapiV5SDEz31AqhqaOqpWV+6AfLRqzgUNU2dQll
 GQOezQcsxvulPc8HLtausz/BgBiI92Lo/kgjsrUkgENWm4yzLSud7S0aX+UPD7aWADn8
 3z8WU/qkfRHqIk4IhK1d19jwGUosVM0Ma0W8w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lLu60EjnRBnW4wz32/fkJTOsgD5cNWvT5qBN+RYNBTg=;
 b=mIIADMWliUzyxDvrXPmpNUWERsJ6Sogmlw1wHdJ3oLzG+8+StlOjrlVcXziIOpn+q5
 u5pHm8azLZcmOJWDqmAckcoLTAFqUVQY+LVuvxB55X/4ZGkJ7utzq4VkUHR9TWcDp04S
 nH4BKgE94sWrjRdRqHWyZ8CIq82EnV1Le1kOjYTfBhzQLKXMRcd+33W10/gOatceuftM
 NQfjrKUa4TeBN/azPblV40S1zc1jU9UI0XncTXKtPWvn5suQb7NeifKlCLrCN1vC6WDJ
 MCKp1+Bi0NlWPPouZEONJPVjo8rCMP1S70jhUrGcwx3NDSUNKqLAZedD/Gt/jxLfg0CQ
 qFBQ==
X-Gm-Message-State: APjAAAUIlqUfDk4hop6eZV1a4ww9Ble2kJBo9KUWQ0/JgJ9EbYLx6tfS
 jnKiW2jn16EBbU7GXxgP2kjmCQ==
X-Google-Smtp-Source: APXvYqwG2PcwNymr0aLBWSu0Ew+FNG8Zo1et6ICQyCp5D/JHBAhCy2QuD7wY9vd+w8cmoYVE4JztoA==
X-Received: by 2002:a17:902:304:: with SMTP id 4mr5342476pld.106.1572026214910; 
 Fri, 25 Oct 2019 10:56:54 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id n15sm2926580pfq.146.2019.10.25.10.56.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 10:56:54 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v11 2/7] dt-bindings: sun6i-dsi: Add A64 DPHY compatible (w/
 A31 fallback)
Date: Fri, 25 Oct 2019 23:26:20 +0530
Message-Id: <20191025175625.8011-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191025175625.8011-1-jagan@amarulasolutions.com>
References: <20191025175625.8011-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_105656_834567_41BC9C60 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MIPI DSI PHY controller on Allwinner A64 is similar
on the one on A31.

Add A64 compatible and append A31 compatible as fallback.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml         | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
index fa46670de299..8841938050b2 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
@@ -15,7 +15,11 @@ properties:
     const: 0
 
   compatible:
-    const: allwinner,sun6i-a31-mipi-dphy
+    oneOf:
+      - const: allwinner,sun6i-a31-mipi-dphy
+      - items:
+          - const: allwinner,sun50i-a64-mipi-dphy
+          - const: allwinner,sun6i-a31-mipi-dphy
 
   reg:
     maxItems: 1
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
