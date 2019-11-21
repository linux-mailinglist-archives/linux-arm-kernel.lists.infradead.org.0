Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA23C105432
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 15:16:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+AOYq2z7quNCmy4ebq5Rb3+CfwkrGkHpu4kIklIhy9U=; b=lLkuOiOut7yUr6
	c8D6KbaPgiR7rfrKcfKNzyzBZ23uo7e2KVtscoxPRUPdi7t4SQ11b1WwS3oS/V+RDl8uSgjc2YDOJ
	zFlIjbGXKrAe1wER3plEc9j2WCTVN3QH70CKj7GnZjdM+uXfjmnm9ZI2G1PA05M74slu5CfwkQeO6
	nMD5pLZ7QXORC/Sk80BTUS5vZt8Xj5iNtM10LT9jSu+61WljP3lt0pLvs+5+zjCR9EnZ80PJddPY8
	FCEbfViETUzg02BTwvOLvz3ANMkzpNf4S/0IpVZ2J7alpvNV/Ros7voROf77wwp4CalWVkHtVNCYI
	Ur+hOUQ+VvOpY7wTw87g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXnFy-0002eS-QY; Thu, 21 Nov 2019 14:16:26 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXnEs-0001qh-EN
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 14:15:20 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ep1so1523199pjb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 06:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=I6yA6TdrKO0G1JGypZEAKYVfmifyHMcNDjr9W3hUK+E=;
 b=OU+GiCP10q9PnP8bkEcFaAdutdza/iERr+D0OoLljK1MmkZMko724GceiauVEvI5Qy
 i+jRkFfhJKSvUbE8cP0wU8IXLB28x6Cy2XOR2ZsqnhydicNZpRBcPrXBRxG9vQS8ZI0F
 kUhIL72l450esX8mcjqodnluupinKQ49p/SiQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I6yA6TdrKO0G1JGypZEAKYVfmifyHMcNDjr9W3hUK+E=;
 b=nMz3OdhEoPEVl1EBKfKNjerxyoonJWxJ505BStEdm7RwvUsRWOIU6CcNXKwrH0jSQl
 jGE8ThbPkgzqiIux6IrHz6IA1CkVojLW+f6Q2toWpLzpG7HzZKv+Zw+HmQdvwp13Tdg4
 w8e7Nnozw/OZHYBEPOJ4uzAzcLl7MzFECFHUhLpQiI1zfDKVCwfDTj48ylU7Ukve7M3+
 emGnnaWHBkpdtFoJJDb2Mx7SGkfDdhJDUrlqPkVvoJI3ZPgCGd7Ca6PA2Rsvwe7pbWKc
 Few4KkI3g/8Oj41BQwb4zJdXvI1ELE8cd5fspH/R/aVdUtP61B/LVlXWEHrmu9e1btKU
 9/vw==
X-Gm-Message-State: APjAAAVz6vX+Xox9dpcH6qIt3Hh2zF9KEutamBNJiJVXi1qngNGLV8s1
 t7CBOXpioPBaz7Aj8RMuWbtYsw==
X-Google-Smtp-Source: APXvYqzs2J4YhqGXlT0xDxYXUbauaCJnilI7GqLrXPtDGy4WsDd4PG5Ypm+uC16rNirt3o8Uj6Hwjg==
X-Received: by 2002:a17:90a:33ce:: with SMTP id
 n72mr11931278pjb.17.1574345716897; 
 Thu, 21 Nov 2019 06:15:16 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id w138sm4072304pfc.68.2019.11.21.06.15.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 06:15:16 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 3/5] dt-bindings: arm: rockchip: Add Rock Pi N10 binding
Date: Thu, 21 Nov 2019 19:44:43 +0530
Message-Id: <20191121141445.28712-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191121141445.28712-1-jagan@amarulasolutions.com>
References: <20191121141445.28712-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_061518_520486_525C842F 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
- VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VMARC RK3399Pro SOM need to mount on top of dalang carrier
board for making Rock PI N10 SBC.

Add dt-bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 51aa458833a9..afa6b2e5aeed 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -423,6 +423,11 @@ properties:
           - const: radxa,rockpi4
           - const: rockchip,rk3399
 
+      - description: Radxa ROCK Pi N10
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
