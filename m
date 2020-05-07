Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC331C8854
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:33:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+uy2kWXLU13JNT/Qsx4GS66QCU3CbodSxloQnr+iVlw=; b=FpV
	tdtIn69nBMzCl/bB0mNLQmXWvEnbTXrV18J+WMfS1XGM0+ERtwCMJb23fZCOawjTAlF2OROaw7L9G
	TxY/G+mRzDiAuFzid7IF2/yPnWSvJKSxzeFCU5QUqGDeg5OUEGmiuEg65Ah2D1AbjuTb2PNVBvql5
	pXWVJPv5vlmivwGbGPzzId8f68V8kk+OHZspeICLz7kDhr92PvJ2KupzLAyju1/6qTv0MB8s52Hit
	BLvYfSTrhwL1Y6NpzDV3eRa3sOcvA+PUBgMuE73urMHMIJoiMS1iKOdx7Fm2J6Q+IfbX00PA5o1qb
	+L+4Ii/3YCZ15bDq1ncYT/FCQ2E7hjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWels-0001aM-9Y; Thu, 07 May 2020 11:32:56 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWelk-0001Zi-5C; Thu, 07 May 2020 11:32:49 +0000
Received: by mail-wr1-x441.google.com with SMTP id e16so5949163wra.7;
 Thu, 07 May 2020 04:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=miVjUF+kU459Gr4P0bFX33XFzImTaFGt5nwVSljspPk=;
 b=ezklgun3NG8L1ZLbd0I/M8AZkRmb1NVMMIzZtOYA91JKlr7sDY4h8dRsT8fHiZr5sc
 2sKrYYkfWy7mm6Dop7KFiE7THZONbRDESBN5SaxRJyxxPlV75OGFN5EwIeHYNMfcUs+7
 WHfoMElCdA+YwRMYWk7eDqMnoBRVoOdWHVwFqlgVvXodrb/6OyPVetautl0IkOlR0lSd
 bhoqGy1Uwk+sx7DQBfov++lxLzCGHj2VbAqkaGnjQyqRWtZU9QeEENpE13pjwZsSlp0c
 prbBP2cwXGsLBVjkN2TnjXD2QppwjO/pDiBiyJtvIxq1e2LCMS0YGWJdTZe2otTlprTs
 k33Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=miVjUF+kU459Gr4P0bFX33XFzImTaFGt5nwVSljspPk=;
 b=Bg8nwjcxxSJeYVoiRmRlPeBtcc+aN2cjhXGTrJnrSX1NHeO00QPHQC+nC3Xd8dH9W1
 CVlmJRLYOmRDgqJ8wrada1n5GmwXtUpJJRCAdpC5RDWrVbznewtVfo4MoCjkcenhIJ1g
 gaUVyGrD5eWlAR0XSoTodmOgFcodOzNn56R2DSU8g32ezYJExqxzFmOfIgN6a+1Lg2Gd
 Mmzxof3jzSOW5WJ65FImhNyUoqMu4AURBy2GvLWFlQQCxzTB0S663zJBw8V1rwX3kq8P
 q8fUgwTCyJRnD8oezngEvq/PjBKgZHWc1MfvJSiS24fbVJ/ENuVn6A5usabH0DG89uVf
 x3zw==
X-Gm-Message-State: AGi0PuYSxMas3C8aB3UrH5aoXB9z5hCOEPw2NlcClO0dv915Uyf9ZTgw
 ekRH9L4urDle9eO4PLAGkaV3lEJbRn4=
X-Google-Smtp-Source: APiQypKZOjvXEiIprA5Ny63FeE9kMmGQs4HOWplnvTx4gD1ekq4zG5NManY4iny4mcyhjAje3EfW1Q==
X-Received: by 2002:a5d:6712:: with SMTP id o18mr16171936wru.115.1588851165984; 
 Thu, 07 May 2020 04:32:45 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id e21sm7745787wrc.1.2020.05.07.04.32.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 04:32:45 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1] ASoC: rockchip-i2s: add description for rk3308
Date: Thu,  7 May 2020 13:32:38 +0200
Message-Id: <20200507113238.7904-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_043248_220738_71DA4B26 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 lgirdwood@gmail.com, robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The description below is already in use for rk3308.dtsi,
but was somehow never added to a document, so add
"rockchip,rk3308-i2s", "rockchip,rk3066-i2s"
for i2s nodes on a rk3308 platform to rockchip-i2s.yaml.
One of the rk3308 i2s nodes also has a different dma layout,
so change that as well.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
The rk3308 i2s nodes also contain the properties
"reset-names" and "resets". Code in the manufacturer tree is
not yet applied in the mainline kernel, so skip them for now.
---
 Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
index a3ba2186d..10f9d3ad0 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
@@ -24,6 +24,7 @@ properties:
             - rockchip,rk3188-i2s
             - rockchip,rk3228-i2s
             - rockchip,rk3288-i2s
+            - rockchip,rk3308-i2s
             - rockchip,rk3328-i2s
             - rockchip,rk3366-i2s
             - rockchip,rk3368-i2s
@@ -47,14 +48,15 @@ properties:
       - const: i2s_hclk
 
   dmas:
-    items:
-      - description: TX DMA Channel
-      - description: RX DMA Channel
+    minItems: 1
+    maxItems: 2
 
   dma-names:
-    items:
-      - const: tx
+    oneOf:
       - const: rx
+      - items:
+        - const: tx
+        - const: rx
 
   power-domains:
     maxItems: 1
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
