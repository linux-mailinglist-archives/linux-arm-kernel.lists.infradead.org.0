Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A85A1194B7C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 23:26:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fJXeWfUVyEGfLthMXmNNVacx9aaDMxwLcsglLgZSToc=; b=XpVsc09Ssjhfl0
	1yuw3gjgG2mEbDwbV9NpdOocRAuG6fPIbZJBqobhTfMnbUO9WsH0LJi/AjFXsLbCrH7NHOMPREv/3
	DzjqpnZPoBxIiE4vI8c+OVzY//7OTM3FjeeG0kOpGUu6AVq6/CVlDATIOPQZxQgDP11v/rbrPdCLu
	YAcvf+jhKvd30xN20gYC2P0cvGiRTxXLzA46RWbDUsWj7XUXrSEgEr0WuNZil6HUYPl8C2/HYGFsE
	eXSts2dIRUANSA76GTsoCs6bfD12/yABzwBefQnHz37LHXnPba1HzaY4q1WFoBT9HDQ2dYgABqpAa
	hNcbe/KpE9vQLjsEU+2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHawh-0005rc-T1; Thu, 26 Mar 2020 22:25:52 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHawa-0005r7-Bm
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 22:25:45 +0000
Received: by mail-lj1-x244.google.com with SMTP id r7so544619ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 15:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7B7ark5mYWoRnc+mybhIL2VnviTssvwvr8+0bI8//kA=;
 b=fd+13iOJ6OxS4VCEZ3JVPQe7uIhL3DudvFcR7oqLrYm8wMP8zZ3tYu5Insu3BY/5no
 9RcsTJL8LMhilM8Pt4JdbzYYePGX/5gzn1vPoapBEOqCYbYUf+Dt2OGlT2T8Z14kns+G
 qhUZi/raNPkynEH7KBv3GdS9PQLs85NPGf2YyFmQhjfh4ADwhdQcv4bO3bOZDa6OyXPg
 jUBUEwZ5YkYqle6DruOx9AphXXs51kacF0LWGnOUF/XLOIZg5LfPjgR+X79uiWN1uAZ3
 czceXtrt7I31oXRB1v6HlMHV17khI/Ztc3+kuRcNxVe3St94c7u4LHC+/uvuqVByykJW
 cbaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7B7ark5mYWoRnc+mybhIL2VnviTssvwvr8+0bI8//kA=;
 b=A42lYcoAlleL+VjQS0WhJn2MrW2F/N+8JViWaJjhSVgnul3kxhg48hJCI+DtKQn7Mo
 K7T9FOvYT+mRCEfBqmownezTZDOd/+yofb7wvAHds8DXx6qHtbGvhOb1pKoFd1gO4lfe
 aTB+IWgsATkCIa37inRTvhXnUya2GiimbuY6iu2UH3q/JcuoCZ5hwGTwxeL++kdbDx5N
 KnVPa1jRnsQK24zzhy27POB9ZSbNLXwrR/MnzDvYMzA7rZ1LWdGQ4nE+5+Yd9RUSnggd
 IkiwmXQO7euO7L/pCDfYVehYUdsZ2216yxSGN6z9TtP6MhEVaLceLMkqM+O4+EVug1oJ
 YnXQ==
X-Gm-Message-State: ANhLgQ2Eud3q3qB+yAEG7KcdjR4aEO1RDgKK+1eLdlGVzyNAsgqjLJ0y
 iu7U514mwxi1xsXbej4s9NYEiA3t6QPJAg==
X-Google-Smtp-Source: ADFU+vvZ933lL5g7YfCNIGkgm09Mv3kFUjSW8PA8bhA2ng9vGTslKEokoBD7nZ12ZzWgHtAUmxdnXg==
X-Received: by 2002:a2e:811a:: with SMTP id d26mr6501915ljg.128.1585261542680; 
 Thu, 26 Mar 2020 15:25:42 -0700 (PDT)
Received: from localhost.localdomain (h-81-170-219-154.NA.cust.bahnhof.se.
 [81.170.219.154])
 by smtp.gmail.com with ESMTPSA id x128sm2174358lff.67.2020.03.26.15.25.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 15:25:41 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH] ARM: dts: ux500: Fix missing node renames
Date: Thu, 26 Mar 2020 23:25:36 +0100
Message-Id: <20200326222536.86441-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_152544_419688_2A6D3C70 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I renamed the dsi-nodes from dsi@ to dsi-controller@
so that the schema check would kick in, but missed to
rename it in a few places.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM SoC folks: this fixes the previous patch, feel free
to apply or fold in to the offending commit.
---
 arch/arm/boot/dts/ste-ab8500.dtsi              | 6 +++---
 arch/arm/boot/dts/ste-ab8505.dtsi              | 6 +++---
 arch/arm/boot/dts/ste-href-stuib.dtsi          | 2 +-
 arch/arm/boot/dts/ste-ux500-samsung-skomer.dts | 2 +-
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/ste-ab8500.dtsi b/arch/arm/boot/dts/ste-ab8500.dtsi
index 14d4d8617d75..3cd6ee6d50e0 100644
--- a/arch/arm/boot/dts/ste-ab8500.dtsi
+++ b/arch/arm/boot/dts/ste-ab8500.dtsi
@@ -314,13 +314,13 @@ sound {
 		mcde@a0350000 {
 			vana-supply = <&ab8500_ldo_ana_reg>;
 
-			dsi@a0351000 {
+			dsi-controller@a0351000 {
 				vana-supply = <&ab8500_ldo_ana_reg>;
 			};
-			dsi@a0352000 {
+			dsi-controller@a0352000 {
 				vana-supply = <&ab8500_ldo_ana_reg>;
 			};
-			dsi@a0353000 {
+			dsi-controller@a0353000 {
 				vana-supply = <&ab8500_ldo_ana_reg>;
 			};
 		};
diff --git a/arch/arm/boot/dts/ste-ab8505.dtsi b/arch/arm/boot/dts/ste-ab8505.dtsi
index c72aa250bf6f..67bc69e67b33 100644
--- a/arch/arm/boot/dts/ste-ab8505.dtsi
+++ b/arch/arm/boot/dts/ste-ab8505.dtsi
@@ -261,13 +261,13 @@ sound {
 		mcde@a0350000 {
 			vana-supply = <&ab8500_ldo_ana_reg>;
 
-			dsi@a0351000 {
+			dsi-controller@a0351000 {
 				vana-supply = <&ab8500_ldo_ana_reg>;
 			};
-			dsi@a0352000 {
+			dsi-controller@a0352000 {
 				vana-supply = <&ab8500_ldo_ana_reg>;
 			};
-			dsi@a0353000 {
+			dsi-controller@a0353000 {
 				vana-supply = <&ab8500_ldo_ana_reg>;
 			};
 		};
diff --git a/arch/arm/boot/dts/ste-href-stuib.dtsi b/arch/arm/boot/dts/ste-href-stuib.dtsi
index e32d0c36feb8..b8fd8f18ba16 100644
--- a/arch/arm/boot/dts/ste-href-stuib.dtsi
+++ b/arch/arm/boot/dts/ste-href-stuib.dtsi
@@ -199,7 +199,7 @@ stuib_cfg2 {
 		mcde@a0350000 {
 			status = "okay";
 
-			dsi@a0351000 {
+			dsi-controller@a0351000 {
 				panel {
 					compatible = "samsung,s6d16d0";
 					reg = <0>;
diff --git a/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts b/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts
index 45a81cec0c6e..292ed5286652 100644
--- a/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts
+++ b/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts
@@ -370,7 +370,7 @@ mcde@a0350000 {
 			pinctrl-names = "default";
 			pinctrl-0 = <&dsi_default_mode>;
 
-			dsi@a0351000 {
+			dsi-controller@a0351000 {
 				panel {
 					/* NT35510-based Hydis HVA40WV1 */
 					compatible = "hydis,hva40wv1", "novatek,nt35510";
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
