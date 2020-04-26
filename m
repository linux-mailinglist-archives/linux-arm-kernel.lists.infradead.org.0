Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6F41B8EBC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 12:12:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gq7oExT+4ElCAdIKNIzuLr64MTh6/DhY87HUTTJVQvo=; b=A52eVISM2DUBOz
	FdIW1k2nGxZJlMoSImdYNRo1H/cg4zhoxFolIVeiKWoQpKtsq62fb/1sDauLKlM5jH9hEUK6jWuB7
	2aYR1/D2dEN13c/VgSy59YTdG+NoosbydEPnVGLvsC2j++wFq7Hr2XJRztP4H69GeOztdR17ycz+j
	FmX34A6eJq4zazmBaHRbH7x+EAwB53eKZpopUAZ9bF20r6ZKZgS22+JhrLMxlL1wmI6WBXY75ONUp
	vbxpDTPmBnbMgn9SIY/9PtfieYc3Zi8WROAO9a2+xtunTPt1as21IEEM/Uk0JMmBqDoAKvp9kDgSw
	AkTL+1CsEcj8kE9BNWog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSeGT-0007AY-Ji; Sun, 26 Apr 2020 10:11:57 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSeGL-00079D-Uf
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 10:11:51 +0000
Received: by mail-wm1-x341.google.com with SMTP id 188so16187767wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 03:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=38Zt7pEGuLVXiT/st0D2AyWKW3xWiPY2bYtiMLWQK3Y=;
 b=PVTghr0FgcuBmCZ0PUMXezA+nNTKcI1Fygf3ezJu65NPeZgIBxfCaFa6awH9Zd0ue6
 Xwb3tBMIgTokisslyMLXG/zu4eydefaM4LGTSbM5jOv6AVNtZLxcvrGycj9v3ZFi3uNf
 Of8+v2yEYU1N0ybqdkXEVcMHw7rXJYQpg/3tr7pB6EdLjDaQft4aR79GwBR63MlZ0COW
 Wf3rWAGvJ4afQpjtOfM35KfcgdrdeYS9luG5nN4jNIpW9LankXkbti7qClolWiKZs8Rj
 6YWLNp62hGJ65qpnooLLU8vEe81YIPJJG4xfc/RtyjsCqK79yRyQ8bxI3dnsTzZ7pB3J
 n1GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=38Zt7pEGuLVXiT/st0D2AyWKW3xWiPY2bYtiMLWQK3Y=;
 b=uN7VyV2Lm8joPEuNhk4w2va+msIOoJc0070rp1jaE7PvSc4CG9LVzT3HgSMBUnM5CS
 LAKoVlABbhwUshkIZdmIPOmUERwiEYb3hqClk0FMO65eYGUmdNKlTkOp1gh6MqYBH/4K
 w7ssjzpmF2TL/+B7OABPrMwkpUYq6LnjcNFHnhzA5d5iDU7OcJLbCNBs88mmRsT9rALe
 GXBx3i4ROPhKohgY932SMAS5svJcNO4dyYSZQapr9+QLmwciYWpXNl0PexHaxkYSrZML
 V/qKy90Gmlii8BK/SMKMg4HpYxswSH3zlMsVMRLBg5zTbxVFl/+RJ4gcu/14QdoNQAdP
 dMiw==
X-Gm-Message-State: AGi0PubJsZZrF1V/Hk8jSpG+l0duoIltTkCgLp3LNuHduaRZH95vXqrR
 1raAcRv1nZkONSvD8R0uER8=
X-Google-Smtp-Source: APiQypKXFtdOYFrN+l5LO7+WgBAma4dWRhOE2oE7+TzVEBs1qJ7Dar8zrTy8d1BBmyaXKX6/yknvJg==
X-Received: by 2002:a1c:c2d4:: with SMTP id
 s203mr21788195wmf.128.1587895907126; 
 Sun, 26 Apr 2020 03:11:47 -0700 (PDT)
Received: from localhost (89-104-3-59.customer.bnet.at. [89.104.3.59])
 by smtp.gmail.com with ESMTPSA id 1sm11366982wmi.0.2020.04.26.03.11.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 03:11:46 -0700 (PDT)
From: Peter Vasil <peter.vasil@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org
Subject: [PATCH] pwm: sun4i: direct clock output support for Allwinner A64
Date: Sun, 26 Apr 2020 12:11:22 +0200
Message-Id: <20200426101122.98318-1-peter.vasil@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_031150_011418_81CCA74C 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peter.vasil[at]gmail.com]
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
Cc: Peter Vasil <peter.vasil@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner A64 is capable of a direct clock output on PWM (see A64
User Manual chapter 3.10). Add support for this in the sun4i PWM
driver and adjust compatibility in sun50i-a64 base device tree.

Signed-off-by: Peter Vasil <peter.vasil@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 6 ++----
 drivers/pwm/pwm-sun4i.c                       | 9 +++++++++
 2 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 31143fe64d91..c334fd106854 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -1069,8 +1069,7 @@ gic: interrupt-controller@1c81000 {
 		};
 
 		pwm: pwm@1c21400 {
-			compatible = "allwinner,sun50i-a64-pwm",
-				     "allwinner,sun5i-a13-pwm";
+			compatible = "allwinner,sun50i-a64-pwm";
 			reg = <0x01c21400 0x400>;
 			clocks = <&osc24M>;
 			pinctrl-names = "default";
@@ -1252,8 +1251,7 @@ r_ir: ir@1f02000 {
 		};
 
 		r_pwm: pwm@1f03800 {
-			compatible = "allwinner,sun50i-a64-pwm",
-				     "allwinner,sun5i-a13-pwm";
+			compatible = "allwinner,sun50i-a64-pwm";
 			reg = <0x01f03800 0x400>;
 			clocks = <&osc24M>;
 			pinctrl-names = "default";
diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
index 5c677c563349..18fbbe3277d0 100644
--- a/drivers/pwm/pwm-sun4i.c
+++ b/drivers/pwm/pwm-sun4i.c
@@ -352,6 +352,12 @@ static const struct sun4i_pwm_data sun4i_pwm_single_bypass = {
 	.npwm = 1,
 };
 
+static const struct sun4i_pwm_data sun50i_a64_pwm_data = {
+	.has_prescaler_bypass = true,
+	.has_direct_mod_clk_output = true,
+	.npwm = 1,
+};
+
 static const struct sun4i_pwm_data sun50i_h6_pwm_data = {
 	.has_prescaler_bypass = true,
 	.has_direct_mod_clk_output = true,
@@ -374,6 +380,9 @@ static const struct of_device_id sun4i_pwm_dt_ids[] = {
 	}, {
 		.compatible = "allwinner,sun8i-h3-pwm",
 		.data = &sun4i_pwm_single_bypass,
+	}, {
+		.compatible = "allwinner,sun50i-a64-pwm",
+		.data = &sun50i_a64_pwm_data,
 	}, {
 		.compatible = "allwinner,sun50i-h6-pwm",
 		.data = &sun50i_h6_pwm_data,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
