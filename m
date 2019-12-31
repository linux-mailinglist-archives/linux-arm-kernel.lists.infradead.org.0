Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A00712D8D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 14:08:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yPwieJYmnJAUrql6mZ/3rqQP7nbffmSgysjSpQb0TFk=; b=N5iAJvxJvZn1ri
	kD2gl71ezefL3e2dTEVgHNr1cCEg1L/iQ1iD+bD1xt5P8KBd/JJ//51zBowiXj04GTXd/K9tvsUYz
	tZ3bJrnmwzOO6xdcUqKm6IH7Eof8KBf5PAyjZwk/5C0fFJQ+ikrjuvTw6O7tPGqxIkDNCxHZZZUrk
	02PthxN4Pbv5voIykt0h6baBWv+lCEBpn542JzRhZi4glccSZvTqUiP0PFPexZxsE7BsQTrgFMoCE
	pMV4VxQ7dMTc1xUQdLZqq0yTVJ3+5ZYqdNFws+LqgH4XfAI4p87/yoEHW+uULqQv3VpKLD6c6uFv6
	k1aAu54bhhZSByHUMo5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imHFp-0007F7-9L; Tue, 31 Dec 2019 13:08:09 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imHE2-0005uc-RD
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 13:06:20 +0000
Received: by mail-pf1-x443.google.com with SMTP id x6so18639936pfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 05:06:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=httxNtiAtTuNvzz6MxoyCtXDBVFL0u6yHkvzNjKde9c=;
 b=MdCq41ofpEY8c34RFkP1S5dM234FR2fXVDzxinANFdkXgf0FmIvFirPZtrEymmP3rZ
 LRs/Acpaff/uiK9bcF0jbGBfc4NqQsBHRXTV5RGNJtDUQMjnEHt3B4Fek+onqtGLlGXR
 6h2gMOSkO3d5uyOGF/tLmDijKezdJdS0sH1+4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=httxNtiAtTuNvzz6MxoyCtXDBVFL0u6yHkvzNjKde9c=;
 b=NSkdMk76zJjaEtCBfr2XtlgqZXGMR36gDVlHu+7GmnaHNJ/K2vYNci7tmP5zowRCC1
 ZhNswMfmG7/UjSNdLkoNRWzH9awraugxA92NeqVsQm6g8wlUlj65c+aCqlxrczXYy1h/
 Y0FxUxOgVMAK8rHit2orW4XVFitRmyJmY4fyJlzYBROwv5h4e9GCKKCUbdTYNVR6PxpJ
 Si60lFdtbSEGuZKmUw2FPSaXarwAoTHMTGSckmicPy9P3GLDI76IiZ9s4+gMuQIx9GNU
 T8AIvt1JF0YiVLARfdqmMncHj/ioZl7UdY2NSuczxoAZGdeWq5VA8lHv4a11cfm4f1Jp
 WPUA==
X-Gm-Message-State: APjAAAVDvq4OAq86nJAsm3NLSkVOJpqOmjCNMfqNSqBA/cTkeBIpZCk6
 +fElTyNbxWHy+5u2WCLVao1IwQ==
X-Google-Smtp-Source: APXvYqzP7Mrk8jxC0HNGSJpd7IzJbAguLU0Np2bAgt6OGvXHASkOvcgw72p733pq9UW4WQ3i9a9jJg==
X-Received: by 2002:a65:4501:: with SMTP id n1mr76072356pgq.336.1577797577740; 
 Tue, 31 Dec 2019 05:06:17 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.115])
 by smtp.gmail.com with ESMTPSA id i3sm55204089pfg.94.2019.12.31.05.06.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 05:06:17 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 7/9] dt-bindings: sun6i-dsi: Document R40 MIPI-DSI
 controller (w/ A64 fallback)
Date: Tue, 31 Dec 2019 18:35:26 +0530
Message-Id: <20191231130528.20669-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191231130528.20669-1-jagan@amarulasolutions.com>
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_050618_925245_8749AD5C 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MIPI DSI controller on Allwinner R40 is similar on
the one on A64 like doesn't associate any DSI_SCLK gating.

So, add R40 compatible and append A64 compatible as fallback.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- update the binding in new yaml format

 .../bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml    | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
index d41ecb5e7f7c..138ffb6ae403 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
@@ -15,9 +15,11 @@ properties:
   "#size-cells": true
 
   compatible:
-    enum:
-      - allwinner,sun6i-a31-mipi-dsi
-      - allwinner,sun50i-a64-mipi-dsi
+    oneOf:
+      - const: allwinner,sun6i-a31-mipi-dsi
+      - const: allwinner,sun50i-a64-mipi-dsi
+      - items:
+          - const: allwinner,sun8i-r40-mipi-dsi
 
   reg:
     maxItems: 1
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
