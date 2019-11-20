Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E761038F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 12:42:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JcZuNInkp5LNFDvuo4l8CMQ4lEn1hWE5HjHk6VIHhDA=; b=aI1H7PZmLHi5J1
	C3HAMp5l3YUEw6lXZXxDV6ElHtV3Htj2dv7URNxZ9AbIqGcYRjHicyTBXsm0Rd17pzu9ikUiGn8E4
	oY2vdDywBz7UgTEQA0HZo2QkJV+Z71HsfAJkcSp4DBsKzVpu2QQ2QODa91PFCYaBdr2UpRluu5Txg
	eDMgZ++ufrYe997+k8anYhl42uVk1ockW2j6dxxDX89bNazDS2StRFUoqGpsGNTno5NreDfKpYOUv
	dU++exte/y/hjnQMvPaWlR1Z/2AGwTrr0HBu8aKS2Js8vq7YEe4RJJe2EbpjqFCg1XeJNyp7Oa+Yw
	spMBfi9JsJXWWykKDv8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXON2-0003YO-6g; Wed, 20 Nov 2019 11:42:04 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOM9-0002ta-A4
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 11:41:11 +0000
Received: by mail-pj1-x1041.google.com with SMTP id cq11so4000844pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 03:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xa375NGyNLSVnAvUIhiexdZMHOh3jJr15Iilt7lsROI=;
 b=br9zeWUDYiYk6Bp4Q3ti8c8xmEnL2VphTTq3kUzwTmCugAMDslZGGCegVcP/lF5cS4
 Mj3jiArvXS0+ppM7ifUaogwgsY2W1Y2/AHlZaZGkr32mY1I6foTkauKWjQGT1F+Bu53t
 5Vh3BZgvvrWEkI4HzzZdpZ5AIVvx73SIUXMVk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xa375NGyNLSVnAvUIhiexdZMHOh3jJr15Iilt7lsROI=;
 b=jHB4HPQRpy05wAPjuHpjouxULetxLabB4jEwjiIuyYb8diB1ghU54RVV0IZB7uog6a
 IcTkHbu3p1DDnFp+jfovOLg1/eltr/7B5dQXDhDaEGfBOFBHtoZFKP6MtYxgopbRgSFH
 9zk6W83cgfBACNNQA7TUxdlAkSyjpfHDrgE9Q/iXKIW2sshU9P2z0VhYTIoKAy1TV5sf
 l80aiwRRrzR1HN9wT6re+Tpg8fg6WysmhsEo66bkmNaCpOuMVrFY7qqKn4JJSXue+XAk
 blwuBxZiGUp06D2sW3JDb3M9NGHb84fpXz7eKkrFw6WD5oB+29tgr3nnWlXiru0SSucW
 daGQ==
X-Gm-Message-State: APjAAAUCVG0nKTcutVrWoAu/n34bzlUhRrIlUNMtwDukVXp9owB5Z4Iv
 bS0DTW4Cb/UTjNjCFPnX3SSv6Q==
X-Google-Smtp-Source: APXvYqx7Lv1/ePIi9JWMgF5xDVKBWDF1PPS99Tf2BlcWR98xDepPj+Num/8WUU4ze3qL6xGCcEZiSw==
X-Received: by 2002:a17:902:6807:: with SMTP id
 h7mr2384938plk.230.1574250068020; 
 Wed, 20 Nov 2019 03:41:08 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id h185sm13492850pgc.87.2019.11.20.03.41.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 03:41:07 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 3/5] dt-bindings: arm: rockchip: Add Rock Pi N10 binding
Date: Wed, 20 Nov 2019 17:09:21 +0530
Message-Id: <20191120113923.11685-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191120113923.11685-1-jagan@amarulasolutions.com>
References: <20191120113923.11685-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_034109_368790_F33CDB41 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
- VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VMARC RK3399Pro SOM need to mount on top of carrier board
for making Rock PI N10 SBC.

Add dt-bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 51aa458833a9..63d34520c72f 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -423,6 +423,11 @@ properties:
           - const: radxa,rockpi4
           - const: rockchip,rk3399
 
+      - description: Radxa Rock Pi N10
+        items:
+          - const: radxa,rockpi-n10
+          - const: rockchip,rk3399pro
+
       - description: Radxa Rock2 Square
         items:
           - const: radxa,rock2-square
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
