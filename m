Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C90C19D732
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 15:06:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QEL9rpBvCPmo5a9B+ExVrudMBg+V9tyYVgXJDZzYAlc=; b=j5YtawJdLNW8Ly21YoFhwoiE26
	5/Z8RpY9k4GZk5l9aiEfiImXwTB2OU9mXL5UpqqeSMw7XD3RAf5Pc4dHDpPVvBSPwJ31JGm5plhOC
	aV25nIFRGSK4iBozgPOBXvEUOB0m+azI7TVuuItxztaZhXTr1hf+EPNeVWT92iP3ASn0cx73wHOMr
	tbHbAnp9502J9YR7WKNNK6EM2PYgW5aEjjsGlfUHX92Bre/CTseS1lhFUDaFWl6xOiS0aSh2APHLZ
	fvWmNRkGwZsfoNjPwSWJO7AmcUkCjsMcqHy8BX5m6oAkt2zLGDgf7x/QmzQjVoicu7GIU1kSP97ca
	hjnqmfkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKM1v-0001HB-QJ; Fri, 03 Apr 2020 13:06:39 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKM1Z-00017G-Te; Fri, 03 Apr 2020 13:06:19 +0000
Received: by mail-wr1-x442.google.com with SMTP id h15so8425410wrx.9;
 Fri, 03 Apr 2020 06:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4SOzz1DmBA7mljFUWMggCDnfrvoqqdJY//N8mPAQhYE=;
 b=n4oq1vKlwlBna9oy0F1xJ+XJqlPWCBvFuIV8OwA5dMCdovlp8WWH0qxUaXFHiG3Ba7
 EgbdcftsRMgnpFruqG84PWe1JpwfrIIvSLVW4UNQ8eeBGKW5gqoKKqGZYQBgtLiSr9aq
 foQFVK4H7/mFGwRnMANlYBdNaEIFemBMpybVAi5Ab4Kz3d5caXNgwI9nnMkK/iZz9s+q
 7TNJAa+qMqptwzD+DGoeI7lTSPGT0m1aXgomOFlMgYBBs7oEeH4E3fN+xUOt6DolnTUk
 eV9IxiJe917H3X51DhnnlvpcUhIx7Pi0tsntSf3mGfdj8gTlMPgMoccczujiLOcfREtD
 7hUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4SOzz1DmBA7mljFUWMggCDnfrvoqqdJY//N8mPAQhYE=;
 b=V0wqKPFSuO7Af6gLxqM5JHZG/0xHIHoKFexy1WJCvOTjlwJddQU0J+VzT6YulnKTql
 fIqKdE1WMFANdmoEeYuqpvEuhhDsQ1+BHPcZjCT556YeIqb0l6ZMFjkmz6+kGbL8KXfF
 KUwJnGjMks9yHZIea9kkge5lGPzUBgJkVSUcQCStbSBxfhntHkl46f9bdey/wUMOyqQS
 4U9X+FLB+Jf94EzuujsVVJsPYQFmdFUTA/7ThGo9KsYT6KXmQzWmw0hcyXtIe7yWZ2h4
 DGfdcX0Kau++MZ2Ldfz2tghr58Wz0wqU1cLiU2giLkqC4u6BuI9bnqTlJT5JvrpAUIYv
 ZOXg==
X-Gm-Message-State: AGi0PuZOl0v8wLIsJkSSTHNIllkRVvNz0xsAa6LM93qgUD57CWFxxihL
 ktHJc/BByqRoI04CGzmYLUpkqJDv
X-Google-Smtp-Source: APiQypJxcRsi2W0wZr2Apx763AJcizS2Tq6i4fWAc5H1frqyVroHXfPYrCZUbCFO4LE17/gl19G4Tg==
X-Received: by 2002:a5d:470b:: with SMTP id y11mr8767392wrq.282.1585919176335; 
 Fri, 03 Apr 2020 06:06:16 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o9sm7036093wru.29.2020.04.03.06.06.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Apr 2020 06:06:15 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: jacob-chen@iotwrt.com
Subject: [PATCH v2 2/2] dt-bindings: media: rockchip-rga: add power-domains
 property
Date: Fri,  3 Apr 2020 15:06:07 +0200
Message-Id: <20200403130607.6138-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200403130607.6138-1-jbx6244@gmail.com>
References: <20200403130607.6138-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_060617_953046_2AB17D9F 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the old txt situation we add/describe only properties that are used
by the driver/hardware itself. With yaml it also filters things in a
node that are used by other drivers like 'power-domains' for rk3399,
so add it to 'rockchip-rga.yaml'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/media/rockchip-rga.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
index 3b110b574..dd645ddcc 100644
--- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
@@ -39,6 +39,9 @@ properties:
       - const: hclk
       - const: sclk
 
+  power-domains:
+    maxItems: 1
+
   resets:
     maxItems: 3
 
@@ -63,6 +66,7 @@ examples:
   - |
     #include <dt-bindings/clock/rk3399-cru.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/rk3399-power.h>
     rga: rga@ff680000 {
       compatible = "rockchip,rk3399-rga";
       reg = <0xff680000 0x10000>;
@@ -71,6 +75,7 @@ examples:
                <&cru HCLK_RGA>,
                <&cru SCLK_RGA_CORE>;
       clock-names = "aclk", "hclk", "sclk";
+      power-domains = <&power RK3399_PD_RGA>;
       resets = <&cru SRST_RGA_CORE>,
                <&cru SRST_A_RGA>,
                <&cru SRST_H_RGA>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
