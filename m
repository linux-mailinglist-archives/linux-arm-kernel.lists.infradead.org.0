Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1431FB3F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BNIKh++OiaEyA2vM6HjXNbo+nKaa1PAOZ9LKijq6B6I=; b=OB6uqXqesTRKMx
	EPu9Y4UyBTWPm2iBcDUn6ZI1bUmpiPWQ6FfTmUuuVSe9exF8VFfRGablbCc99YLoo1RIHNnkUOyZ4
	4CS16SxPXIk0vW2rZvKr1Kwtefogg9WdWacOjdSDFrQWun3Gy5zkq6jK2yAenbfry7mWVlNAFHvU9
	Brs0nEZtZSg2vNeL8DQ+4zD4JuBYjuFuJST5E54+FrxQfnZJs9qQCc44irUSwM3GM3pcIt4gVkhhd
	AKIP06IdIHs5F/MrDX2nvOvPni98q8R56LOaBYJ8Xbu7bhl2Cp2UK4pfrCfsd5byjxYOyt/mEG24I
	hte6N6Ii6PaizTMhNHQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCN7-0003jh-JL; Tue, 16 Jun 2020 14:15:29 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3X-0003zl-HB
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:55:35 +0000
Received: by mail-wm1-x344.google.com with SMTP id q25so3194348wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5UaeiYULrewUtGThWV95Xt3+CgB3hdR6MxdVeCxs+eU=;
 b=BbG8JMK4tEiZ0a2HH5vQb9gMCG84W2N5EGnIixOTYaqZ/4yn/FDrGR5qKk7J+fJN2j
 l5MiPzMoKpgbxClG4i2DXZWTfkO6oSxKjfFGyC2yeVjzmwKJg+snkWRNDI9qn/LLNSEP
 q2yE1ZZNykudgaJinVIB2JrpMbOriHb/gES1qM2JTtzzbCLuBeDLmB6UZQXujYUJHXyS
 R+aNafBH9Y2iS0gQXNdwdUDW51MOQ0h8ylCQfAKECO4WVW2617VQQvrTbFOf5EaQ3AUy
 7bbld7Bwq/A+SbnVkvlhFLXXXBaYgRU08A7h0GOPUuDBv+KZz0P44WTjk3Y4pQPL5KUc
 DJxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5UaeiYULrewUtGThWV95Xt3+CgB3hdR6MxdVeCxs+eU=;
 b=hLkF5C3DuDhuFiAk5CTc2m94Ci3UfRmYiDcfMSbt0KFk3XwyLO5ecVVhRDnhMCxFe2
 Q0GYiCN85zaGQGMNOyTBwEh8ZTDPzHzmBS2zQ4gA7kcqRSc1ln4MsIWJxZaTyIrpYuoH
 S6x9SOtooGn5N6hEs3kN7OoNMUp8IqJvyZK1z0QjivSxAEhb4Ju2lp+/fliYN+gTmjlV
 iPgxxaay+iLNXS1z2nBgCabcKZxBapGdjLLVUHhvnUGOZdKysNpR+S25ZrF36rO15RTw
 Z4X+VQDXpzVsKm5hn/Oi6fjpWQwOsk+NZsmzyvWU6YXGIInIcGOJcwijx76a9/a47m5E
 u5Xg==
X-Gm-Message-State: AOAM531KyTEt75sm+SksGsxSEbg75hzp4vneWQmJoly0XLumNBqolZUX
 jiqLckFiJ7t0QfdAPKE+wwtT+VwS
X-Google-Smtp-Source: ABdhPJx0YWWE5EwMSLqluEDsr0Na6X/CXb8aWgF9NZ01YYq2d32S8wQk3UtDXGfxw0Z+zyfFUmAI8w==
X-Received: by 2002:a7b:c1c5:: with SMTP id a5mr3293085wmj.35.1592315712791;
 Tue, 16 Jun 2020 06:55:12 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id u130sm4293586wmg.32.2020.06.16.06.55.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:55:12 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 61/73] arm64: tegra: Update USB connector nodes
Date: Tue, 16 Jun 2020 15:52:26 +0200
Message-Id: <20200616135238.3001888-62-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065515_980952_29D7CD75 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Use the preferred {id,vbus}-gpios over the {id,vbus}-gpio properties and
fix the ordering of compatible strings (most-specific ones should come
first).

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 .../arm64/boot/dts/nvidia/tegra186-p2771-0000.dts | 15 +++++++--------
 arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi    | 12 ++++++------
 .../arm64/boot/dts/nvidia/tegra210-p3450-0000.dts | 10 +++++-----
 3 files changed, 18 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
index 482ed7b0fcff..4a7a022acabb 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
@@ -171,19 +171,18 @@ usb2-0 {
 				status = "okay";
 				mode = "otg";
 				vbus-supply = <&vdd_usb0>;
-
 				usb-role-switch;
+
 				connector {
-					compatible = "usb-b-connector",
-						     "gpio-usb-b-connector";
+					compatible = "gpio-usb-b-connector",
+						     "usb-b-connector";
 					label = "micro-USB";
 					type = "micro";
-					vbus-gpio = <&gpio
-						     TEGRA186_MAIN_GPIO(X, 7)
-						     GPIO_ACTIVE_LOW>;
-					id-gpio = <&pmic 0 GPIO_ACTIVE_HIGH>;
+					vbus-gpios = <&gpio
+						      TEGRA186_MAIN_GPIO(X, 7)
+						      GPIO_ACTIVE_LOW>;
+					id-gpios = <&pmic 0 GPIO_ACTIVE_HIGH>;
 				};
-
 			};
 
 			usb2-1 {
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi b/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi
index 4771c1668825..3ba36a52dc89 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi
@@ -1456,17 +1456,17 @@ ports {
 			usb2-0 {
 				status = "okay";
 				vbus-supply = <&vdd_usb_vbus_otg>;
+				usb-role-switch;
 				mode = "otg";
 
-				usb-role-switch;
 				connector {
-					compatible = "usb-b-connector",
-						     "gpio-usb-b-connector";
+					compatible = "gpio-usb-b-connector",
+						     "usb-b-connector";
 					label = "micro-USB";
 					type = "micro";
-					vbus-gpio = <&gpio TEGRA_GPIO(Z, 0)
-						     GPIO_ACTIVE_LOW>;
-					id-gpio = <&pmic 0 0>;
+					vbus-gpios = <&gpio TEGRA_GPIO(Z, 0)
+						      GPIO_ACTIVE_LOW>;
+					id-gpios = <&pmic 0 GPIO_ACTIVE_HIGH>;
 				};
 			};
 
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts b/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
index d7a4eced0149..ac17f5485bf8 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
@@ -505,15 +505,15 @@ ports {
 			usb2-0 {
 				status = "okay";
 				mode = "peripheral";
-
 				usb-role-switch;
+
 				connector {
-					compatible = "usb-b-connector",
-						     "gpio-usb-b-connector";
+					compatible = "gpio-usb-b-connector",
+						     "usb-b-connector";
 					label = "micro-USB";
 					type = "micro";
-					vbus-gpio = <&gpio TEGRA_GPIO(CC, 4)
-						     GPIO_ACTIVE_LOW>;
+					vbus-gpios = <&gpio TEGRA_GPIO(CC, 4)
+						      GPIO_ACTIVE_LOW>;
 				};
 			};
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
