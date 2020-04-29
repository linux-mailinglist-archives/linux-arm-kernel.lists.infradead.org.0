Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E22721BE868
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:18:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nSsJhNrdb07ioDV86CLL3lizh0V76H6Z3M4Ywdv4BCQ=; b=iGzs8Mb687cGJf
	rVjp9KEKV7neIOf4MvImNB5UF2Ue1L5X4d9vw75+K8i0aq1IQwHVNcFIFxkmK3s+u95TjhAKgju/O
	UmNR7GYeFS7FKwbVtKB6YxX9nAzOgUASedFgRxWOcXbLaJ9h3dgESzxhUnWq3BcIjC5fdjocy8Kqp
	SqJ2Fwt40dgukTlWvCLm2gKpbLK8k3Won/cFGBPcvinp2Pf0jMvYywSPNzpBATG4pGOzbzr/XHpsJ
	BFT/myaDcO25vFf2gsHwWCfaY8rdrtcqB5RAq2Dj8pPgkWQ3zOICvSo4uIgDYXDf+hV4luFtCqy/x
	xZFedve1TPX3k/LYEa+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTt9y-0007j2-Ou; Wed, 29 Apr 2020 20:18:22 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTt8s-0006ut-Tn; Wed, 29 Apr 2020 20:17:16 +0000
Received: by mail-wr1-x441.google.com with SMTP id j1so4148111wrt.1;
 Wed, 29 Apr 2020 13:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=70PGPQVXxWkWt5bMu/YYfSXZfY8zmYWnV1uR/DOx3oI=;
 b=CHODodNmsuW+chZgMSL/aU4EnarAaDIB7eXBAjMvlsonq+wuNDVGUJCixVrpFPVHv0
 eLe7iQE0b6IVK9woGS4WRHgp1pIDNyiU/pvax4e/hFhd8Tg+XuRQDhxcWP8g+hESasfG
 0PvoOjleMGc/VhEHapA/nrVQIz+u3cU4WKukUCaPObHXRo4oVjyNp/dma6TvvoKJBSv1
 UHFO/dN7/7fOEoicRBiobhcCPrV9VPlDGDJ0bcuHdimr4jBLKUBuXsqV3K6RVjdpryfB
 NHeEkJE9MD54wgSGOsu79UcZVkVL2erbRs5xdDHnHc7otZm23Z9/6PHRNiGJkv0mCM5U
 H4jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=70PGPQVXxWkWt5bMu/YYfSXZfY8zmYWnV1uR/DOx3oI=;
 b=GKQLeznnLngSjiUHXNgnVaTboj8KNiy+YgVOeIgfwY7XVxatdo6lOqdvW3GExuhpRz
 19qOWiQ37EpxE7E3RPImW/OmclGmTI2rcco0koCVqe7mUgtXziamTDusOB8TiZBkeyvp
 SuWPQiIp6OhncSAtXsTjm88CVhpyEvZOXUEGmGLQGvgWD0v4AdS5znTqMydJLsB3yQZM
 q9AkGzemKhfZ7OwdY/BS8a0uIgoSTxotL6jdHRC8npX+T3Ze2+B9m3xs6PoHaIkilPCu
 EBYc//ivmUgRLz6qFg1HfHRCPw9bB3HymcRhElSOwvcsfvOeF6IMEKqGbbyEhJZvF3Vi
 UPFw==
X-Gm-Message-State: AGi0PuaWS5FO0Av0LokgwLyv1Rd+lFtRg+W5ZjesDWWFvWvb9trd9MAd
 AdIx965l8rVBODWjlH42UAM=
X-Google-Smtp-Source: APiQypJtmwbq9B5dWA8SnCuu/BSQvt25+h0Lxx4pGLSnoOKCcBACToJY8vRY4FM4aHun8MA3Wxv0vg==
X-Received: by 2002:adf:f343:: with SMTP id e3mr39846693wrp.51.1588191433642; 
 Wed, 29 Apr 2020 13:17:13 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id q143sm9923623wme.31.2020.04.29.13.17.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:17:13 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH RFC v2 02/11] dt-bindings: net: dwmac-meson: Document the
 "timing-adjustment" clock
Date: Wed, 29 Apr 2020 22:16:35 +0200
Message-Id: <20200429201644.1144546-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
References: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_131714_959797_849B04D8 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
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
Cc: jianxin.pan@amlogic.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PRG_ETHERNET registers can add an RX delay in RGMII mode. This
requires an internal re-timing circuit whose input clock is called
"timing adjustment clock". Document this clock input so the clock can be
enabled as needed.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../devicetree/bindings/net/amlogic,meson-dwmac.yaml   | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
index 8d851f59d9f2..2bc0e8b0d25b 100644
--- a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
@@ -40,18 +40,22 @@ allOf:
     then:
       properties:
         clocks:
+          minItems: 3
+          maxItems: 4
           items:
             - description: GMAC main clock
             - description: First parent clock of the internal mux
             - description: Second parent clock of the internal mux
+            - description: The clock which drives the timing adjustment logic
 
         clock-names:
           minItems: 3
-          maxItems: 3
+          maxItems: 4
           items:
             - const: stmmaceth
             - const: clkin0
             - const: clkin1
+            - const: timing-adjustment
 
         amlogic,tx-delay-ns:
           $ref: /schemas/types.yaml#definitions/uint32
@@ -120,7 +124,7 @@ examples:
          reg = <0xc9410000 0x10000>, <0xc8834540 0x8>;
          interrupts = <8>;
          interrupt-names = "macirq";
-         clocks = <&clk_eth>, <&clkc_fclk_div2>, <&clk_mpll2>;
-         clock-names = "stmmaceth", "clkin0", "clkin1";
+         clocks = <&clk_eth>, <&clk_fclk_div2>, <&clk_mpll2>, <&clk_fclk_div2>;
+         clock-names = "stmmaceth", "clkin0", "clkin1", "timing-adjustment";
          phy-mode = "rgmii";
     };
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
