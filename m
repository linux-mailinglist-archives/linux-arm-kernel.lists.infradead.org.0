Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 055C110FF33
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 14:49:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZIE3G9pDMBjaUh2fs9tiVvhA9H35SJFXTuTCRKtZFKs=; b=FROIv15jWj/UMV
	dPTAeteyRgjGwxkAJFm4Ma6dQJ8UH5YaQQZAtVjkDTuRH7+rRIYdU10fKt+g4Pl3X32oNGJ2VGPbg
	yrqzvzOgKsjhRbiRbA5g0NAwmgdMlB4+CG5m+TcpDCBJ+prt8lckx6vUyosEgwuKOfM9TqVGFd5GI
	ztcXoZfz/cynpINfUFBHptXxM+TdCge7O1nbQaBOOEHRAKF18pL/+41ChbSPjbB63vgTzMb9UJ1DJ
	iIjHRypxN/I+dbC4hH0yuP21cNXrlR5pKdpSNLtsBp/PNKrSML1pzotUsv9UCEhg6g3wZHVd3z1hg
	t54+qhIVNtBK4YC0qTcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8YK-0000Ac-3O; Tue, 03 Dec 2019 13:49:20 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8Xg-0008KA-Qc
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 13:48:42 +0000
Received: by mail-pf1-x443.google.com with SMTP id l22so1882929pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 05:48:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EGC/dOGDlJSYQ3xkj7DfBdq9vhE8rvcGutHHf40Jkqk=;
 b=gO/BVoVsJL4xEzBmaVscN3RJXJZgCV8rufB0cy0WTl2Mw3tqf841WEU8F8OfPl6iXJ
 tcmndNcqLNDxqpIXIWRVf1l9idid8xPBdg1kMTEoPwT2OKa1USdddMWtKRZ/S50TZmvm
 H75IKVE9Ypt9ZeR5PsTS55IlswuTM04Io4fBQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EGC/dOGDlJSYQ3xkj7DfBdq9vhE8rvcGutHHf40Jkqk=;
 b=pU3NrD6hIc2g5m/Awfu3ZiMuXVWmnO21ZJe58q6ganChhbmcfO6rKM/4gm83o3nmgi
 7IC+ctkuACkJsVjsfxfQmFn1NPN1oeGunYC+L0REpJ7b3+PRcftLpKkLkm/aCa/oVoKF
 q8X/0i87oH1DOlHuPDd2lBX1IZ3hPLmtbO0CKdsAIz4W9kuv0QEQTCC+D0p7WNp6VtDx
 dEYyKkuS+owNSe1DfKPBoVAxVjXjvVQZ3rDo17fZACs5YBsSUUUeK5hcbxtlvR+Ofg6L
 jbfEC+OppVEWfvPm7INXV2sQ/H2Dn/hnAoz3WF3W4T44ETuHe3hTFVXyWjjR0BziJ3bt
 sCUg==
X-Gm-Message-State: APjAAAUafneynM/ziJq/bvduoClI/BJBie3QaLcLETbtEwjdM3ZnSANt
 sDzmemwarrJg4xV2u5JqifWLZg==
X-Google-Smtp-Source: APXvYqwR2WHs/BvcSDVgvw8QRHGGBx7PujazP2vgdr3BhHFqIFkSC6fyLCUzShQFbKUEz7BbybKzqw==
X-Received: by 2002:a62:2686:: with SMTP id m128mr4905220pfm.143.1575380919848; 
 Tue, 03 Dec 2019 05:48:39 -0800 (PST)
Received: from localhost.localdomain ([115.97.190.29])
 by smtp.gmail.com with ESMTPSA id y144sm4397892pfb.188.2019.12.03.05.48.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 05:48:39 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v12 2/7] dt-bindings: sun6i-dsi: Add A64 DPHY compatible (w/
 A31 fallback)
Date: Tue,  3 Dec 2019 19:18:11 +0530
Message-Id: <20191203134816.5319-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191203134816.5319-1-jagan@amarulasolutions.com>
References: <20191203134816.5319-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_054840_878802_9A587721 
X-CRM114-Status: GOOD (  11.85  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Changes for v12:
- none

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
