Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC815B72A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 07:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ffbP9Bud3MzbDM+noExBqeFqYrCGre3lLRvFCHrqncs=; b=X4gn67Rx91te06
	/QJkXZ9h+lOdx8tiwARF/K3TWSRA0voEXQoQIRzLcgyYOIPgJaxjaxiyshfIHpvYaNUCYIkhpuFaH
	3Se79O4d1RxblgYT45xmZy4ho2pexYHUsF3FW7Bk5qn7jm3rOdnKIYlVxrgI5csVRYciib011R8El
	UVWlzjHFPbwC3dPnRmyhvz8Ei6iG9QINVKrrObn34Ri9sfsGc4hHI1FtvXANGzs40LaK4+oS3pFR2
	yCR0sSCQuCLNgA4orOk0WQhIexRFti2AxvYGj7xadQDtQ+yCPd+ypFaERvW08UVoQq6w2Gb9FvJOS
	T78jg9ewL3oQkq7IzrfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAp0g-0005c8-1H; Thu, 19 Sep 2019 05:29:42 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAozs-00051u-1b
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 05:28:53 +0000
Received: by mail-pf1-x444.google.com with SMTP id q12so1485663pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 22:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=t5yyFbal/mMfwBIQl8HnI8bUA7OIbk8kyBH5yOZvNcA=;
 b=gQ8TI7kzVBJ6CMikP7NssQGXe7ymOzNnxjoXCSNnmpM0cvHG6iwkAa1DbNwDAnefsg
 rnmb/VSD+5U5GcVCh/IHGtUsO7jgVmBNy8y1uzpSxjjx2x40M4/yYxolN5pBJKCOhWWc
 Vxv8yQ11gU0oO5HNX+5fVzq4yULshPSM0L4nQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t5yyFbal/mMfwBIQl8HnI8bUA7OIbk8kyBH5yOZvNcA=;
 b=b2CnPlNZAberUWRLKDp/MBie3RIG+OdPRB3hrxUUcfHBfx8AOcqeCGKKGAc9/ypM14
 NJR4Yg1B+GyldHghY9tzJPJXpBvrg9TTncldu3bKEYP9fedTOAde6j9q53bUxg77bEdZ
 BIa/2EUy1S/8PnkR8EFD8BNYo7tMGAs52Zkk0cyVugsTyiYenemja1y/kuII8d2Pyoev
 Bw7Lvfy9dh3PbXmoYFbF/IUOa/d9iktgxsUtxWECkbGLq7cVNuwYjeRg26C2xUeHIho+
 KHOIjZI0yZ1b/mSqroLN8ueLlYVRH63iY2gNmcfJQuUnjAcrYrKtD3hOeC3TDj6wrgRW
 Pmyg==
X-Gm-Message-State: APjAAAVnl+BXbok4kT6TnPeZ2KuUMAddQbAKrcWQM16a4FarC4GexcUy
 6ylUJAdDUfI2HDJwZVzOwih1cw==
X-Google-Smtp-Source: APXvYqyT5565J7Rps/98UJ9h+PeACCHxHIAq8wpBqY/DOotDYp8qDwIt2a37ZQOHXM5dF4M6sFxuFw==
X-Received: by 2002:a63:3c08:: with SMTP id j8mr7251129pga.72.1568870931289;
 Wed, 18 Sep 2019 22:28:51 -0700 (PDT)
Received: from localhost.localdomain ([49.206.200.127])
 by smtp.gmail.com with ESMTPSA id z20sm5051930pjn.12.2019.09.18.22.28.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 22:28:50 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
 Akash Gajjar <akash@openedev.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/6] dt-bindings: arm: rockchip: Use libretech for roc-pc
 binding
Date: Thu, 19 Sep 2019 10:58:18 +0530
Message-Id: <20190919052822.10403-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190919052822.10403-1-jagan@amarulasolutions.com>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_222852_224991_8036645F 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Da Xue <da@lessconfused.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Though the ROC-PC is manufactured by firefly, it is co-designed
by libretch like other Libretech computer boards from allwinner,
amlogic does.

So, it is always meaningful to keep maintain those vendors who
are part of design participation so-that the linux mainline
code will expose outside world who are the makers of such
hardware prototypes.

So, update the dt-bindings of ROC-PC with libretch notation
like other libretech computer boards does.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 110fcca1a94e..bb65a10e85ce 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -87,11 +87,6 @@ properties:
           - const: firefly,roc-rk3328-cc
           - const: rockchip,rk3328
 
-      - description: Firefly ROC-RK3399-PC
-        items:
-          - const: firefly,roc-rk3399-pc
-          - const: rockchip,rk3399
-
       - description: FriendlyElec NanoPi4 series boards
         items:
           - enum:
@@ -364,6 +359,12 @@ properties:
           - const: leez,p710
           - const: rockchip,rk3399
 
+      - description: Libre Computer Board ROC-RK3399-PC
+        items:
+          - const: libretech,roc-rk3399-pc
+          - const: firefly,roc-rk3399-pc
+          - const: rockchip,rk3399
+
       - description: Mecer Xtreme Mini S6
         items:
           - const: mecer,xms6
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
