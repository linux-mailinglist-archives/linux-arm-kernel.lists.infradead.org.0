Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D636103DCF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 15:55:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IghtuigfNGPs28pPkw+wyjVmsocNHUxnbbqWgT0SmHo=; b=Ac/DDkEPqxphzg
	tnpVeynbP0lox3aW7BAX3rUJiZt93QqzZQx1+OdGCtgSWZX+Gzx9szxDWhdNHXuJ11/EDWWa5GyW4
	eBdvvHy5a75bGqVJ+lrHEctMyJE1LfKLH2FGqSbojiuaH+D28J7cBxWaNpK4yVPNDkANSCAe0oXCA
	G8YMA2vk0uD4EgxVBA6nfeVJ2795ELj5dyvre+l4sRoYB62PXQbbSDk0v0v1rdSL/PFx2YXl0Hrb8
	x5Qt/CA1m6QNLI2+2x3zFaD/WVy8ZRnrujDK+yBxfwQHCvmg5ta/5AucxGleYAiLHL4HGkwM4WpX1
	ie4ZL+K4I8KmGq+dGoHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXROV-0004mY-Ec; Wed, 20 Nov 2019 14:55:47 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXROM-0004ci-WB
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 14:55:40 +0000
Received: by mail-ot1-f66.google.com with SMTP id l14so21398373oti.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 06:55:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A+/KtB0TcGuwm0rqG+XnXBXTw2iYyI4Q2Zl2m9VClEM=;
 b=HPMkY7yJ40/DdCX2wnpW1WT58AAblwtxmTwHQjIPHrR+cwxnedcBV0UkR3m2/+oguV
 KALAhoshyfGoFFMHrYGcCsN6fxPpq4nScCWSxBnWNIfXdBvVy1n39CGM+9Vid7AssjDL
 scAhOGNF2Qso9Py0NxNgyzpI8x4g3lM2AH52kmDNtM81/TRyfXW6Uk3pCZnjJIAyXsHA
 j5snWV3FHpyLP/MXS4DZ428tU1ftSzepKC2tx5hdFA2yL5kuWZ6agAMEOlANE87wQsbe
 h+EFyW3/n5ZhQxv+7cWDqhR6AcWMnFnBKaSVsf854yqveHqzZCqFC8lpobz+D1QyTIDo
 DRnA==
X-Gm-Message-State: APjAAAW9rgHtOI3bwx5DsLj9G1anJ/b0Q8sJbEPZ5ME2knxkqDxSAgpC
 IuCEzdqXhDA/xdflAPXY3A==
X-Google-Smtp-Source: APXvYqyVlY6SP2U7iXaDSt17cqYwi8MUABCu1sAStaRTozWgXOnXDlwANdcPZWTufRNHNK9HyqIxvg==
X-Received: by 2002:a9d:70d0:: with SMTP id w16mr2376180otj.239.1574261737996; 
 Wed, 20 Nov 2019 06:55:37 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id e93sm8544988otb.60.2019.11.20.06.55.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 06:55:37 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] dt-bindings: arm: Remove leftover axentia.txt
Date: Wed, 20 Nov 2019 08:55:36 -0600
Message-Id: <20191120145536.17884-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_065539_036416_63A9D800 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The bindings described in axentia.txt are already covered by
atmel-at91.yaml, so remove the file.

Cc: Peter Rosin <peda@axentia.se>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/axentia.txt       | 28 -------------------
 MAINTAINERS                                   |  1 -
 2 files changed, 29 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/axentia.txt

diff --git a/Documentation/devicetree/bindings/arm/axentia.txt b/Documentation/devicetree/bindings/arm/axentia.txt
deleted file mode 100644
index de58f2463880..000000000000
--- a/Documentation/devicetree/bindings/arm/axentia.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-Device tree bindings for Axentia ARM devices
-============================================
-
-Linea CPU module
-----------------
-
-Required root node properties:
-compatible = "axentia,linea",
-	     "atmel,sama5d31", "atmel,sama5d3", "atmel,sama5";
-and following the rules from atmel-at91.txt for a sama5d31 SoC.
-
-
-Nattis v2 board with Natte v2 power board
------------------------------------------
-
-Required root node properties:
-compatible = "axentia,nattis-2", "axentia,natte-2", "axentia,linea",
-	     "atmel,sama5d31", "atmel,sama5d3", "atmel,sama5";
-and following the rules from above for the axentia,linea CPU module.
-
-
-TSE-850 v3 board
-----------------
-
-Required root node properties:
-compatible = "axentia,tse850v3", "axentia,linea",
-	     "atmel,sama5d31", "atmel,sama5d3", "atmel,sama5";
-and following the rules from above for the axentia,linea CPU module.
diff --git a/MAINTAINERS b/MAINTAINERS
index 97b28c913813..8d711f764dfb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2859,7 +2859,6 @@ AXENTIA ARM DEVICES
 M:	Peter Rosin <peda@axentia.se>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
-F:	Documentation/devicetree/bindings/arm/axentia.txt
 F:	arch/arm/boot/dts/at91-linea.dtsi
 F:	arch/arm/boot/dts/at91-natte.dtsi
 F:	arch/arm/boot/dts/at91-nattis-2-natte-2.dts
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
