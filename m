Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1811A2E6D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 06:39:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0eb4ZhIooEc/35WusctGl0BYk4Zg45nnFZYPHXr5LTA=; b=b4XoRTw/vyDRCe
	Uj5CjKEAxJLg+GNOsIMriT622jJ6n5isRx8KWMzXZGhy0fpDnxFxSaDdq7KeUFaICEAaavFDut4mZ
	e+ikJrpH2oAJoA1JXzUgRD0OR9IqCfcdotQ8JaNGkfyu3g6c3Zqa30CkrcbDA9mM5acOw45WiWVZk
	+FakPStnknbpCKrNc2JtBA5GUgzpb+K9xFbw2BlEtPVU0IArlgMFo4OZN3W5mgXPW7uwio8TXc10c
	czlH8GKjzmyNGtAh6XO3d4+8mzslmGQy8bEiDCpVGgbMQzKWTyPtIv20bL+en/nFnw93jxENnbIqO
	LgA3VmpDmggNaIcyT1qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMOyO-00069X-DZ; Thu, 09 Apr 2020 04:39:28 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMOyH-00068M-Tn
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 04:39:23 +0000
Received: by mail-lj1-x241.google.com with SMTP id q22so6290959ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 21:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9Q73xNdv2R+z9gFjCSnBmt7b8MZjalwO0UY5qHs4gQ0=;
 b=j+E/pO5oeUTKpHisnXPL4xKYx8rtZwHYf7uJLrXXx/7aWsdlHbu25EFqAjxUeHu4oW
 hMw0Ttm1oy1A3zdktYXHVVUbUMZ+UGfJEvorAWvu6qeexfAdegXTTqL09ClMcXD/MGuD
 wKtgRJHSdp5S9TqxtM6F0YQCPJ7VbNxkhu8t3S8/cGkctWfp77zZErzXhPPOlzkWtMpb
 CNWQ1yJQw90RGX+Q+JLkJHe4CbaW71XwlAMk1991LPlF2WlDwiHbiH6edVPU1/03JLK0
 t36nOoCoYMdmG7iiu+l6Mf0xHcVi8GbJCd0lhfTH3o02AZLMgnVNhSIm50xvMwh7x/4n
 F9kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9Q73xNdv2R+z9gFjCSnBmt7b8MZjalwO0UY5qHs4gQ0=;
 b=MBFG88bLxFCIa5sKcjtUOyY2ODT7sWioSS2SpP5gAvX2tKBSYtLKsElDEh4HIP/Ihx
 8pLuk1O/UfpOtFP8VRr7LcUCm00z615a1kJLXqulSY5XK52jy/OTE4mgzxQPYACTIz9g
 x94xMoG462CQqi8xUI0wt/kkycCgfjShlMG/r3IsnqjFoQYh95lFn7j9QLn45Ug4nfcu
 p9ebsIxBDIuZRickM4MOPjE1q7WVkl3SK7pgbRr9Eu1dY/ZMmwWKUpgC4Jgph/hB4QPB
 68oZp7mtXH+kcnpxFdZfC+/oNestcHF+ulI/r5RfkywfDnJnuXVjId7q7dzYdu40QPod
 fgWA==
X-Gm-Message-State: AGi0PuYTO1PCJ5i8tREzBxmpyxV26Vc4ShkYdRaVoswJOv+5SadGAmpM
 8Xv9AaI6pTaHLJKCgodopmY=
X-Google-Smtp-Source: APiQypLlJZGt/DrfTYvSSeDNeGl8eyvktPcVRIowcz7uFVSwS+hyBJYC/iExJ2JUGA5nxWvIjJPJJA==
X-Received: by 2002:a2e:868b:: with SMTP id l11mr1872978lji.247.1586407156616; 
 Wed, 08 Apr 2020 21:39:16 -0700 (PDT)
Received: from localhost.localdomain ([185.188.71.122])
 by smtp.gmail.com with ESMTPSA id h23sm12887893ljg.13.2020.04.08.21.39.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 21:39:16 -0700 (PDT)
From: Pawel Dembicki <paweldembicki@gmail.com>
To: 
Subject: [PATCH 1/2] dt-bindings: vendor-prefixes: Add Check Point
Date: Thu,  9 Apr 2020 06:38:46 +0200
Message-Id: <20200409043851.31217-1-paweldembicki@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_213921_964275_7C5CAE8A 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paweldembicki[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Stephan Gerhold <stephan@gerhold.net>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Gregory Clement <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Pawel Dembicki <paweldembicki@gmail.com>,
 Mark Brown <broonie@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Check Point Software Technologies Ltd. is a company based in Israel and
USA. They manufacture network devices and provide software
products for IT security.

Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index d3891386d671..4033d8b38170 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -182,6 +182,8 @@ patternProperties:
   "^ceva,.*":
     description: Ceva, Inc.
   "^chipidea,.*":
+    description: Check Point Software Technologies Ltd.
+  "^checkpoint,.*":
     description: Chipidea, Inc
   "^chipone,.*":
     description: ChipOne
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
