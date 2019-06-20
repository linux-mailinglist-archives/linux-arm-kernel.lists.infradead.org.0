Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A84B4D7A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 20:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xXAL/Intw7Xov5X6h3mKLK+1FzmMuCy7xYFjdIIByXk=; b=NHltXVOLSoaaju
	Em2khSKGlaKSNjjqwiNPVqT05Klpc+ldg46kQPHL0+EFB4mqUuL6Y+ba1gK2bYsKVlWyM/dneSFvR
	SbicsXZfHCMk1Q/PGZeUMMv4L0e1dcRLTQu8Ab6J4RECUhpUMD5+AGm4GO6fjUV/gnSuKSwBbdhjo
	jYCEdSx9BqfTsd+TZdai1GFKdEIahb/z8FR5FE/oxpR7VihwPbi4a0VHq4h8OKph30FBe156KomjN
	juWVJsYl3r9e7ab4NuFN6aPMZCJqTa/wemlWiJtmLYuUSPOByQJwyAhJpoi7kMzvCTfcS01nUZwF8
	+6/Vb36GG3dm8bYzC9Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he1gn-0002So-Ba; Thu, 20 Jun 2019 18:21:37 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he1gU-0002QN-FD
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 18:21:22 +0000
Received: by mail-pl1-x641.google.com with SMTP id g4so1713892plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 11:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JZ2NT1GSY4hpKU63g205EVnDgpZqQ6NY0FJ4sZy9GQw=;
 b=N8+of+nlHpwHnPETt6oXJ7W/ISn1rEby0yhxwKLPl3dnUC8wZeby8eohp1yM1lyhiI
 x1r64JlKADc6skDXTaWeczVmFQOP637oOFQPTxG4i4mTwasaHuHWN3LjIw9Bblp/K7gK
 lx2iUnn6VmSWj/jQNH3bgFhRFTt+Qhzhdh6XQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JZ2NT1GSY4hpKU63g205EVnDgpZqQ6NY0FJ4sZy9GQw=;
 b=sPncOcan1TEtFlwCHqGx3cLjYO5SBCtXWAVsJD5iodkOo6YhUyAchBWvufcoCcZVKm
 yZxqX8s+V9bVMHPTBUJ1Grhx5uhetw4Q9GsXmUI3tvEdrex7x8uH13nB2yoqN0UJVSQB
 nU7ho+ZE9lDa6J7G/nVx3vikbeGuEQlydyyKkoozcKdFkV1fs6sZ5lpXdZzb3Yz73ehV
 PasinVjLItc05xk0gWp/7MrMqLsLmWMQO4eXQ/pPg2LpUU4KiwI8+ltFPwyKSEdo1jkT
 D2x5KCXf/e4LbYVcMCOZjY/4NNMWP1MjZlOqZV0xIak21y/HnO93y4UTJGyU5VSN2rNi
 7Mtw==
X-Gm-Message-State: APjAAAWYAyiVtOhwY4ykGUqh2yFr/F6zQZk0NSXgctQTK0rb8mEeLbkK
 TnVC22Udv1/47vgvUrt0mx3iiQ==
X-Google-Smtp-Source: APXvYqzhWDEoiLHEFAdu8IpSss+cbmdlR5vKAYaFqg89xARSeVwy0J/o2mSyNDJeF6hfVFRzRyob/w==
X-Received: by 2002:a17:902:70cc:: with SMTP id
 l12mr10696711plt.87.1561054877425; 
 Thu, 20 Jun 2019 11:21:17 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id 188sm178081pfe.30.2019.06.20.11.21.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 11:21:17 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: heiko@sntech.de
Subject: [PATCH] Revert "ARM: dts: rockchip: add startup delay to
 rk3288-veyron panel-regulators"
Date: Thu, 20 Jun 2019 11:20:56 -0700
Message-Id: <20190620182056.61552-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_112118_508371_622CA53E 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, enric.balletbo@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit 1f45e8c6d0161f044d679f242fe7514e2625af4a.

This 100 ms mystery delay is not on downstream kernels and no longer
seems needed on upstream kernels either [1].  Presumably something in the
meantime has made things better.  A few possibilities for patches that
have landed in the meantime that could have made this better are
commit 3157694d8c7f ("pwm-backlight: Add support for PWM delays
proprieties."), commit 5fb5caee92ba ("pwm-backlight: Enable/disable
the PWM before/after LCD enable toggle."), and commit 6d5922dd0d60
("ARM: dts: rockchip: set PWM delay backlight settings for Veyron")

Let's revert and get our 100 ms back.

[1] https://lkml.kernel.org/r/2226970.BAPq4liE1j@diego

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 1 -
 arch/arm/boot/dts/rk3288-veyron-jerry.dts  | 1 -
 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 1 -
 arch/arm/boot/dts/rk3288-veyron-speedy.dts | 1 -
 4 files changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
index fcd119168cb6..5411ce148890 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jaq.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
@@ -24,7 +24,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&lcd_enable_h>;
 		regulator-name = "panel_regulator";
-		startup-delay-us = <100000>;
 		vin-supply = <&vcc33_sys>;
 	};
 
diff --git a/arch/arm/boot/dts/rk3288-veyron-jerry.dts b/arch/arm/boot/dts/rk3288-veyron-jerry.dts
index 164561f04c1d..82ac9d23480e 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jerry.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jerry.dts
@@ -26,7 +26,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&lcd_enable_h>;
 		regulator-name = "panel_regulator";
-		startup-delay-us = <100000>;
 		vin-supply = <&vcc33_sys>;
 	};
 
diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index b2cc70a08554..f29501d8ff07 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -33,7 +33,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&lcd_enable_h>;
 		regulator-name = "panel_regulator";
-		startup-delay-us = <100000>;
 		vin-supply = <&vcc33_sys>;
 	};
 
diff --git a/arch/arm/boot/dts/rk3288-veyron-speedy.dts b/arch/arm/boot/dts/rk3288-veyron-speedy.dts
index 9b140db04456..a0f6fefc95f1 100644
--- a/arch/arm/boot/dts/rk3288-veyron-speedy.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-speedy.dts
@@ -24,7 +24,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&lcd_enable_h>;
 		regulator-name = "panel_regulator";
-		startup-delay-us = <100000>;
 		vin-supply = <&vcc33_sys>;
 	};
 
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
