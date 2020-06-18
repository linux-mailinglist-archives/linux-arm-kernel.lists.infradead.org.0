Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F501FEF5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 12:09:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p6bYidGC4j3bxcEtFEXacuXZdLFfninj5TAc5Rl80Ig=; b=H5Sk/fUaq5jdc/
	p9/zrJ3Zs6DsBcmw3VqdHqoj6yreO6eV6k8k6QjxVT/j9gLIezjruKo8YYdMJl4ds8D2fSAwIzqLj
	ULJQhdpUqjMiY0hj72r2cn6m38MjNt3v3sncKvtNn6qWB6Je+liDUvJDaGXFVaxb8yup/1KYNpF2+
	f5YIbWABMmlTXUyESLKbUIxKQiA8JZHXXKhHfAjFlwq/Cy2mTFpLRk66pFBsog7yPTyxd9WWjDkQ3
	2ZuL+UxAS2plyWudswwtelFIMgcioIBc6jYtzcaOJSKtlPo1omDWYKichM+qhIdqjxstLOGcTz3Dl
	1jpr3YklChJBciWqJO6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlrU7-0008Ot-NG; Thu, 18 Jun 2020 10:09:27 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlrTa-00084I-EG
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 10:08:57 +0000
Received: by mail-pj1-x1043.google.com with SMTP id i4so2456643pjd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 03:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P9ZVEE5llXq13I1PufGR5qegeo37MSzNvw9PjU0Fjk8=;
 b=QbTK/jyeJEquEVJY7l+T6/kG04+mjbA9G/JwcvZDLZ8k+okay/dSxqJ/GZK0me6aPC
 T0/+LOR92quFHAlm1dVV68gOZr+8q/YvKBpK2wvxKO41bhYSGXU+4ZUQCTXjBFjTOyEq
 R3MmYnYx6U71ysADED3OWBNbxPvBQAmA2Zurs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P9ZVEE5llXq13I1PufGR5qegeo37MSzNvw9PjU0Fjk8=;
 b=Nk/jLeDIhclwvb3Fu7uZFAwWZ20+sdzuCcOciUa1rjViVAaU3HC3I7tnqzEohexdtN
 q5QZ0IH9typP/qWUVTlON5u1TwM0VY/TQHfKEhcAKe2May7U74FmD/kagY/jpRv2M27s
 Pzw4YYR3jLBBoPYM1iU4uDd0sboZQf7PHGxG2+pesuzhkoN9PDzQvBWs3k2h4+pqyUAh
 f0A/6pRuM7aBj3A5bFxAazkwIfljYRzenAPMTagmQZFeYUsFdyid0Ko4XwVgL5FUV+sO
 HZmIoQUNuN2ujGbQ/rFIvTUd3Ce7UC1hiidE1abf9LjWGritQZZt3nPRDSem76OU99U2
 +XOQ==
X-Gm-Message-State: AOAM533HZYJv8pvKbDkjXLK7Z694PAvR9EKIscwACuBXuKhisSeYzSed
 3crZRCyeIHPZJEx4TZNjruefjQ==
X-Google-Smtp-Source: ABdhPJwZhtlcgjGat0WBZE26aDW8H3kZ66NuB49AdKJ182thmlVQ7g0Vc4xPRCKoybJ9oMJ6otar7w==
X-Received: by 2002:a17:90a:f694:: with SMTP id
 cl20mr3587632pjb.141.1592474933565; 
 Thu, 18 Jun 2020 03:08:53 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id o16sm2190793pgg.57.2020.06.18.03.08.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 03:08:52 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 1/4] ARM: dts: rockchip: radxa-dalang: Update sdmmc properties
Date: Thu, 18 Jun 2020 15:38:29 +0530
Message-Id: <20200618100832.94202-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618100832.94202-1-jagan@amarulasolutions.com>
References: <20200618100832.94202-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_030854_494014_E50F05CF 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Radxa dalang carrier boards are used to mount vmarc SoM's
of rk3399pro and rk3288 to make complete SBC.

Among these combinations, card detection gpio, max-frequency
properties are used with rk3399pro SoM but not required for
rk3288 SoM based on the hardware schematics.

So, let's move these sdmmc specific properties on associate
vmarc dtsi to make common use of dalang carrier device tree file.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi  | 2 --
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi | 5 +++++
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi b/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
index df3712aedf8a..3e54f38f0ab6 100644
--- a/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
+++ b/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
@@ -52,10 +52,8 @@ &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
-	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	vqmmc-supply = <&vccio_sd>;
-	max-frequency = <150000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index 0a516334f15f..6fd17e8a815f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -317,6 +317,11 @@ &sdhci {
 	status = "okay";
 };
 
+&sdmmc {
+	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
+	max-frequency = <150000000>;
+};
+
 &tsadc {
 	status = "okay";
 	rockchip,hw-tshut-mode = <1>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
