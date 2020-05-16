Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 549321D6442
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 23:30:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CVv4V41U3ye/R67YkltT5QfrGPZcmbTAc/SLNaK/zkE=; b=sKDTl+4OPHDFbA
	CzmbLuY3xoHgiUBZJ9X6gAZSDMrUX0Sd743gXcu1xAgGYQWGpWB86Zb8axOlPE85QD/aMGG3/BR3c
	NIjSrHpzzuU2eGe6Et7GFWxY7/APbnSit5iyJXsX0Gk6QxfQO//pyKp1UYRpXHDXCSnRGXCDfjrGE
	Zn8C6lF9oJc50nS3Rh4Zs4e5U8RSYeIAoVWn4rr8TA6gcjXp6igcym0bObRrUAQ+tS3oCq6ZXTBvW
	RxitUw54nzb1NM54L2gBUSMdAf5XUe73PDeQznw6Tp3c1tbbIMtfu8MFzOJRKPALwAEZl5Stx8SNK
	SauQWKntpTjDQAjnijag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja4NY-0003Wi-Qa; Sat, 16 May 2020 21:29:56 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja4NQ-0003VK-H5
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 21:29:50 +0000
Received: by mail-lj1-x244.google.com with SMTP id u15so5896722ljd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 16 May 2020 14:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bTsr/ThG8aiFqwTJPUPRjFtKboc/riflkUsdhTYBgmE=;
 b=kCKf8UrYMZgjnO20e2YZXJGyafswhCMeQ2DAkZlyp3hl9oSmu9tc2xp0Y2ghOjuzXM
 3A9yx0APwmI069l1EP5RaYh00tInppkPsmCdkH+OEiyM/UFdjVSac5XmQj8Nup86+dhZ
 /rtw37Abmj2TpKi7NG1ddHiA0Hq8nO8722KlN0vb4x0XL0mKYUCfPnrqVaEqE+uiCE6+
 Q93ERrocq48+ALcUvzJ85RrLs+go3DN5AZcF3lB6eoqJfV/QGe7j2gPcLkG9m7D33Dkn
 eW0fRwmDTQ1hoxVh9eB299Tfd7tCzy0cknnoU/Wcvsy0JZ58d4ogiIM1x/8MtY+Rdifr
 9/6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bTsr/ThG8aiFqwTJPUPRjFtKboc/riflkUsdhTYBgmE=;
 b=aTqkt1Yg/xsP8ibO54nUPrTXAf/aZaLIjVY8ASMV2hsYMKHHFbueX7e6MIFN5qoyU+
 65Ilnuvll1AuATKm5QZPCaGhXaNu2yy2CApKYX1i4tQvSZ4Udcrq5xm2rFn8bSm0tf81
 00W6UGgCorpffewAXmfHRAHq4CyC6qcw4rgh5Wo/vrcrJA/3q1L4EwLrz9kQnLzwFrVU
 +D9Ce8SzbTBItZpuwUbwdgz+HsNPft2gFnZjI8ubLH68QKygXRASwY0a3J3dHUW3HSSW
 SdVhHd8TzzIN8O3eI1WWod/bIYJ/vFKbUIDzHtbkC5VPjblIe9yFXZ5qDBlltxtBxNhd
 aahA==
X-Gm-Message-State: AOAM532eY8bFFnLfZ+8XIR87VNNhJRfQVIeSm5lUMZ9rPWxu/8tVEtot
 QfEpOFIuVTQ5r3hdaEcoXn+pBLTbe7Y=
X-Google-Smtp-Source: ABdhPJwZVkOJaeE2h6heYbxsHHQHNNUN32OH0kwtshk9YuDn/jpv0nZX1nxnJfK8UwV5GSZMU/4MCg==
X-Received: by 2002:a2e:99cc:: with SMTP id l12mr6147080ljj.290.1589664580200; 
 Sat, 16 May 2020 14:29:40 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-f3d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.243])
 by smtp.gmail.com with ESMTPSA id w10sm1823693ljm.26.2020.05.16.14.29.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 May 2020 14:29:39 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: ux500: Add touchscreen to the Skomer
Date: Sat, 16 May 2020 23:29:13 +0200
Message-Id: <20200516212913.485365-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_142948_604209_C0CC0ADF 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds touchscreen support to the Ux500 Samsung
GT-S7710 "Skomer" mobile phone.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../arm/boot/dts/ste-ux500-samsung-skomer.dts | 32 ++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts b/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts
index 921540d5686f..5da3e21e5388 100644
--- a/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts
+++ b/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts
@@ -369,7 +369,28 @@ i2c@80110000 {
 			pinctrl-0 = <&i2c3_c_2_default>;
 			pinctrl-1 = <&i2c3_c_2_sleep>;
 
-			/* TODO: this should be used by the Cypress TMA140 touchscreen */
+			/* Cypress CY8CTMA140 touchscreen */
+			touchscreen@20 {
+				compatible = "cypress,cy8ctma140";
+				clock-frequency = <400000>;
+				reg = <0x20>;
+
+				touchscreen-size-x = <480>;
+				touchscreen-size-y = <800>;
+				touchscreen-max-pressure = <255>;
+
+				/* GPIO218 for IRQ */
+				interrupt-parent = <&gpio6>;
+				interrupts = <26 IRQ_TYPE_EDGE_FALLING>;
+
+				/* VDD is "digital supply" nominally 1.71-3.6V */
+				vdd-supply = <&ab8500_ldo_aux2_reg>;
+				/* VCPIN is "analog supply", 2.7-3.6 V */
+				vcpin-supply = <&ab8500_ldo_aux2_reg>;
+
+				pinctrl-names = "default";
+				pinctrl-0 = <&tma140_skomer_default>;
+			};
 		};
 
 		mcde@a0350000 {
@@ -564,6 +585,15 @@ skomer_cfg1 {
 			};
 		};
 	};
+	/* Interrupt line for the Cypress TMA140 touchscreen */
+	touchscreen {
+		tma140_skomer_default: tma140_skomer {
+			skomer_cfg1 {
+				pins = "GPIO218_AH11";
+				ste,config = <&gpio_in_nopull>;
+			};
+		};
+	};
 };
 
 &ab8505_gpio {
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
