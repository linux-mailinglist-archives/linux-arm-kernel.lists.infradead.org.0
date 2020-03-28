Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F074D196970
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 22:23:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K+n16i2q8dDjHwB3VeaxpgeFSrRCZyBf+g8Go6/gOq0=; b=XcmB/zAFHMdFVb
	RnMNFj77C1LzFb8yqjdean0F8e+eUuDUWzeh7Vx7I+b4INQSthZfS5ZXzR50d802kH6FP3gSOJfZC
	sIyG8JGlW5m4EetbAY+0vjELJrrMRZ5kM2fyVKEPOMcl2R8Ntp15qLJunb8fgRRhyePQMuayoVMyZ
	BwfRlgOPVfZqs8YJFYylrXzboFTKaz8kjiItn893EOMmoyeM8kNMcJz9NTdy7VIjiDiNfQpSfbeMu
	hn7spuRiU8yWW73lIWHUAr70IQi1CNRIJD0RVbjZNdPMV85AS2cH4K2yKK4S99SmB7Zb1gMadED5E
	PN8HcM5E/UxL/BQXrUYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIIvV-00024j-AG; Sat, 28 Mar 2020 21:23:33 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIIvG-00024G-Sk
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 21:23:20 +0000
Received: by mail-wm1-x343.google.com with SMTP id d1so16774097wmb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Mar 2020 14:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XfZCAw3mx1VH8Q89oa0rqaHcmTmN+wwlGYRiFHc66EM=;
 b=EsqyKWY+b1ErnScvE50klIUNK5IQjko+hO6dMBi20fAqFZg+kY8VQZTPqYkfSFNjCD
 Hc4L2D63KLrGVyKhn26mMgwknO523QFvLRS6mhFKkHIZsuQ7gyiNlz02vtTsaFrrRGK1
 hPyFMmVypyBxL/hc/b1mNl/xXcCispKsFjX2bLWZmkprhc4URV/u7SYibEojoaOtWFfT
 Hot3xCxFShK8Klhoc7jPuoaPteXKy2QTAHqLhcaJWFO+ISvK7fFwop0h/Tl3IlshLIhs
 eFYsAC733J/+P94YeTUgDg/8O+8KOIxGfhOqrEf2rcMzUJawpyJ+D2AcSJXgPmFsmX9b
 /JKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XfZCAw3mx1VH8Q89oa0rqaHcmTmN+wwlGYRiFHc66EM=;
 b=VwTwmnaDOtaDUlqGin7ooowOElqBwiDnrc3GOk5cfhQHE8IHVzzZo71Qn0LfEB9Xyu
 i8HLvCx1bQ4DbogMUwOdeEQr0sOZDM5ScYFdsiSiuCrNNCSRirg0DTRABNZhrBM1xy1Z
 coIbyA++19293+Du6URcq34gZhx+bUiinn5TlTkq2f9DEd/KHj4qNCcoS/cEpqqBexbI
 YlheeQufaHbpzO+Ix0/kdj7CHO2pAZyLdrU+PJm+V/CrZU+iVgbBoAs5TOFr7rqxuslM
 uFcnm5kSrLVNHlUXA56hwvUv0EzLdcN7p+b6/quPKqun+WZdVT+Ru6G+dQbmvrx1P7NQ
 Gv5w==
X-Gm-Message-State: ANhLgQ2bOSosw7NYa2oLjjGxYo0x0fDJttKW1TSBMIBZunRzbFJ4qxxY
 cmAJlmmeHO1ow0PVTsyS5Q4=
X-Google-Smtp-Source: ADFU+vvAiYZf/IYzA5fxaGnYNv0X86Z6T7fDkR1sS4MKCo6tPVfB1D/leyGrwYl0zLlD2RY7i0pYYQ==
X-Received: by 2002:a1c:4987:: with SMTP id w129mr5640004wma.168.1585430596134; 
 Sat, 28 Mar 2020 14:23:16 -0700 (PDT)
Received: from eichest-laptop.local (77-57-203-148.dclient.hispeed.ch.
 [77.57.203.148])
 by smtp.gmail.com with ESMTPSA id a10sm6227436wrm.87.2020.03.28.14.23.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Mar 2020 14:23:15 -0700 (PDT)
From: eichest@gmail.com
To: Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] arm64: dts: clearfog-gt-8k: fix ge phy reset pin
Date: Sat, 28 Mar 2020 22:21:16 +0100
Message-Id: <20200328212115.12477-1-eichest@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_142318_954777_25E00895 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eichest[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Stefan Eichenberger <eichest@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stefan Eichenberger <eichest@gmail.com>

According to the ClearFog-GT-8K-rev-1_1-Simplified-Schematic the reset
pin for the gigabit phy is MPP62 and not MPP43.

Signed-off-by: Stefan Eichenberger <eichest@gmail.com>
---
 .../dts/marvell/armada-8040-clearfog-gt-8k.dts     | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
index b90d78a5724b..d371d938b41e 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -144,7 +144,6 @@
 	 * [35-38] CP0 I2C1 and I2C0
 	 * [39] GPIO reset button
 	 * [40,41] LED0 and LED1
-	 * [43] 1512 phy reset
 	 * [47] USB VBUS EN (active low)
 	 * [48] FAN PWM
 	 * [49] SFP+ present signal
@@ -155,6 +154,7 @@
 	 * [54] NFC reset
 	 * [55] Micro SD card detect
 	 * [56-61] Micro SD
+	 * [62] 1512 phy reset
 	 */
 
 	cp0_pci0_reset_pins: pci0-reset-pins {
@@ -197,11 +197,6 @@
 		marvell,function = "gpio";
 	};
 
-	cp0_copper_eth_phy_reset: copper-eth-phy-reset {
-		marvell,pins = "mpp43";
-		marvell,function = "gpio";
-	};
-
 	cp0_xhci_vbus_pins: xhci0-vbus-pins {
 		marvell,pins = "mpp47";
 		marvell,function = "gpio";
@@ -232,6 +227,11 @@
 			       "mpp60", "mpp61";
 		marvell,function = "sdio";
 	};
+
+	cp0_copper_eth_phy_reset: copper-eth-phy-reset {
+		marvell,pins = "mpp62";
+		marvell,function = "gpio";
+	};
 };
 
 &cp0_pcie0 {
@@ -365,7 +365,7 @@
 		reg = <0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&cp0_copper_eth_phy_reset>;
-		reset-gpios = <&cp0_gpio2 11 GPIO_ACTIVE_LOW>;
+		reset-gpios = <&cp0_gpio2 30 GPIO_ACTIVE_LOW>;
 		reset-assert-us = <10000>;
 		reset-deassert-us = <10000>;
 	};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
