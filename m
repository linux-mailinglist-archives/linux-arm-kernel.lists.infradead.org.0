Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D885B969
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 12:50:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TdxHx3w2b/cy+vVZ/iz8Ph/h+0wvwmpfdWuOMRzg38Y=; b=nTNk/XVIuVceBI
	NH2J66P1SXKfA+HBZ4VRZGJdPNvYfrSN2dlS952eb1iYJo109gP1ZQES3vGuTg+rxZCK1Ji7B+tJs
	RzV+fbOrdtWLdmBbeI0tWipqM3gJ80WYdT4xJkFWhkk+Zt9ECy6aXaKiN68pnymSO4bGD1cynyJKr
	LL06yzKTY29UmCoLtihHNp+Iq78ORGJGASKadHaJR9BQjptDX6p0YM94pdJ+05gVIysT6sMlmclTO
	FEsQ/S7uoy0eU/u0MM8kAOabHclyVBXV7W5GKlVkYSVra8FfgdpaWuATtbC68wTbLjbjRuDFJVYDC
	f91qDP0RMvlQxEY23J7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhttV-0002EI-O6; Mon, 01 Jul 2019 10:50:45 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhtqR-0006i0-Tm
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 10:47:42 +0000
Received: by mail-wr1-x443.google.com with SMTP id v14so13270455wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 03:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/4UPHUJqymNIvh4OVWT1OKmRPEHJo2Lj3+lnzK2tYUo=;
 b=KxTJ3P6vYWvoeekgNvzAP9lc8MoxyqRuFej615Ayg2uLwsUgnldjA4vcnbkWTh1F8g
 R6PniMERSsAU2jYgMmLr5D1zAjKhcMC2G0N85ek4nuKexzSXjq2BjRk5W4OyfrWNNoOL
 3zM1yMgtPqw5Ws9mnYSgS3d563B7/ZyW61iNEecPKnewn3FDN476UWuVtwZu9Y1xCkkk
 eaKstKovBxwqapM2zW33zcUlP0k1Zx6nqmPTXFv+TwCLKNp8fzzzK8fK3jioJdwH3d7U
 8HnPbkxqIcJOhJynC7D85eWb0UDLSrBPRwmN16+OacU/uXtNoM2z16vG80xknbua7EIr
 4vNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/4UPHUJqymNIvh4OVWT1OKmRPEHJo2Lj3+lnzK2tYUo=;
 b=ibZCeMlDP05iYhHdgO0wVeZTZtcbuLIiNcV9ipFonFKvuWgFxVlfUgjj9P1WzT4ldj
 8i+v3x06yLAvzGd+t8U1ruDeVixG12IkPBq+xikw/2ynkkie3lKwcuKpBs5JzTUA5hOG
 QX0s3q29Hwt2jtkOH2M3kHpvvFe6cAAkfPxSCI6PN4Jt31c87BTe37yICsUMPULkR6jL
 5RYOIVd2rQbyO9TMJU/e8C90JKSh4gVl7JYhHbiScvavhrwHl4tV/91X19McS0EPIoEV
 HcbNBfZg+c1tywAzf9gds3vnbk9xMJ8ILRls2bFwwbwm3EvepNOmMho+P0yQ8y+AKLyy
 bASg==
X-Gm-Message-State: APjAAAWQemF6iKedFQDjmuUq9ZUweLLZXzRcWlvEsrt6QEfogdGLazM7
 4AKwSgmTSHsqwB2tW8wpttPJWw==
X-Google-Smtp-Source: APXvYqzGt+8nbW5RLL8NhHySbKn5TUNmB8G81MM3qlOxbnBA4I6WaZrShqXYcTWSlDjBoDCWjuK2Dg==
X-Received: by 2002:a5d:6b90:: with SMTP id n16mr7830338wrx.206.1561978054117; 
 Mon, 01 Jul 2019 03:47:34 -0700 (PDT)
Received: from localhost.localdomain (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id d24sm11658802wra.43.2019.07.01.03.47.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 03:47:33 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC 09/11] dt-bindings: arm: amlogic: add SM1 bindings
Date: Mon,  1 Jul 2019 12:47:03 +0200
Message-Id: <20190701104705.18271-10-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701104705.18271-1-narmstrong@baylibre.com>
References: <20190701104705.18271-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_034735_977171_EDB9F142 
X-CRM114-Status: GOOD (  11.19  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add bindings for the new Amlogic SM1 SoC Family.

It a derivative of the G12A SoC Family with :
- Cortex-A55 core instead of A53
- more power domains
- a neural network co-processor
- a CSI input and image processor

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 325c6fd3566d..0b419fd0bac2 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -141,4 +141,7 @@ properties:
               - hardkernel,odroid-n2
           - const: amlogic,g12b
 
+      - description: Boards with the Amlogic Meson SM1 S905X3 SoC
+        items:
+          - const: amlogic,sm1
 ...
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
