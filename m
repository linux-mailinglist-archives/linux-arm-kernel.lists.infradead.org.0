Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB111FB330
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:00:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dsP57XqPem0kqTnGim38pRszKD0e6XEE4XLDnpF3/zo=; b=cxaVDjbUFPb1K8
	a8i+PC+3RyHqh6Q2/WT7pRfueqV58iy9j6L43O+5AxeItbhpJXfvq79pxOdVAIAcrkpoLicda2oAg
	kY1dhNt7mZj0nO+0tHMhKXFFIwMuSlEy0Q/CJGUxjOhom4A9GWe0+yAJUU/PGlCCETsvVcrhhFatA
	9ypr9yKBTrpSZkxjJ1RSVO6FupkvpH2NMqj6i2tkvc4jZzLRBxprw8LnPKT0UyvhFFcmBBpgO0ltd
	ybQSXBF6ftyiQfi4/h1Qi78c3bSk+bP9UqYL9HTImeo5Q2Nalo9phMoU/I+rbap1rcAYJImReOhL7
	Ws7elmchPxlLDKOnSAcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlC8y-0008DM-3T; Tue, 16 Jun 2020 14:00:52 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1i-0001T3-5M
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:26 +0000
Received: by mail-wm1-x341.google.com with SMTP id d128so3175360wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sltisSwSDb4vZTWSDf6iNnpKJG7q/Z1Zz8yhqClsgiw=;
 b=IQm8uHieQl4l0fZ9aX4OOFW9UhUTrAwDF4VPzVjuKMFTv9fFwcz5xTe/Qxk6Fm93GF
 4yDxWXtSBwlZ5Ur5n1VtHLy+xL3ibbPYg/Cnd4VyuqEc8F96SAs7pVlzkidvQI/XBpD6
 +QYpYOayvhJKvdAd54lD/+l36kyv21cdUe7TB8DEZvuqfAsYWPBJ5tLVJhYjjreFLRq6
 vWAm8mJDVtsEeQMywhuiBSBBbpJB2kBHmPlOhO8/QY8rETGlIQeXdt38/KA6czg5lwUW
 3TFqRGkDcGTs2EeQB4LP4usH2tcXIP8sXV6otU/2DpkB5b6bkw/Mve/7fNYfzLxPHnr6
 vh1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sltisSwSDb4vZTWSDf6iNnpKJG7q/Z1Zz8yhqClsgiw=;
 b=AHVO2GVMEU2hQygg24ZMTvfQJkUEZnDpVWyylsXClTRHDxuY7NgmGNTbNkQI7LxUqt
 Kd3OZmc6T6I0QfBFsLCbQSn67ICppAIepdb/ANbayrbTpPFdHSHKz4/WdAK2MBmWiZA+
 /Z8JnvPnhs4rKVapd5nmPQB+zaYZssAXLEXiHBY14g0s3KxM6rPPh2JvxKorvUT1WnIM
 afnhWn+0aYTaxVhpeKs8xA/07v/yk2zE6xi+Wu6c9TpOmTd1TDUA27mi6CUGHz8uWaKT
 Ob4bQ6IWSjmwv4GPue7LetHDWtwMV/Jg5xYqGp1AnsBbGSG4L1B7lzhIDg3wWE7nhYlM
 j7Ag==
X-Gm-Message-State: AOAM531pDWlD70zjJgIMqCi5QmykT8a/M+yOXnKa+IdYyTqmKbTPvcVt
 Cy221ePauaM6anFwwsHtP88=
X-Google-Smtp-Source: ABdhPJxz+/WkHdLvzaQjBQXQEbkXuzkgfpaKe6bCAJRcfdcCysuzOrn7cZPPl0/Qr9+nrLVEgsFt6w==
X-Received: by 2002:a1c:7505:: with SMTP id o5mr3277219wmc.164.1592315600776; 
 Tue, 16 Jun 2020 06:53:20 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id d5sm31603455wrb.14.2020.06.16.06.53.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:19 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 15/73] ARM: tegra: Add missing #phy-cells property to USB PHYs
Date: Tue, 16 Jun 2020 15:51:40 +0200
Message-Id: <20200616135238.3001888-16-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065322_375524_45565CBA 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

USB PHYs must have a #phy-cells property, so add one to the Tegra USB
PHYs which don't have one.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra114.dtsi | 2 ++
 arch/arm/boot/dts/tegra124.dtsi | 3 +++
 arch/arm/boot/dts/tegra20.dtsi  | 3 +++
 arch/arm/boot/dts/tegra30.dtsi  | 3 +++
 4 files changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/tegra114.dtsi b/arch/arm/boot/dts/tegra114.dtsi
index 88632d8d0bde..d28d35dc3f5c 100644
--- a/arch/arm/boot/dts/tegra114.dtsi
+++ b/arch/arm/boot/dts/tegra114.dtsi
@@ -710,6 +710,7 @@ phy1: usb-phy@7d000000 {
 		clock-names = "reg", "pll_u", "utmi-pads";
 		resets = <&tegra_car 22>, <&tegra_car 22>;
 		reset-names = "usb", "utmi-pads";
+		#phy-cells = <0>;
 		nvidia,hssync-start-delay = <0>;
 		nvidia,idle-wait-delay = <17>;
 		nvidia,elastic-limit = <16>;
@@ -746,6 +747,7 @@ phy3: usb-phy@7d008000 {
 		clock-names = "reg", "pll_u", "utmi-pads";
 		resets = <&tegra_car 59>, <&tegra_car 22>;
 		reset-names = "usb", "utmi-pads";
+		#phy-cells = <0>;
 		nvidia,hssync-start-delay = <0>;
 		nvidia,idle-wait-delay = <17>;
 		nvidia,elastic-limit = <16>;
diff --git a/arch/arm/boot/dts/tegra124.dtsi b/arch/arm/boot/dts/tegra124.dtsi
index 76c1ef923213..f00e962c8f55 100644
--- a/arch/arm/boot/dts/tegra124.dtsi
+++ b/arch/arm/boot/dts/tegra124.dtsi
@@ -1056,6 +1056,7 @@ phy1: usb-phy@7d000000 {
 		clock-names = "reg", "pll_u", "utmi-pads";
 		resets = <&tegra_car 22>, <&tegra_car 22>;
 		reset-names = "usb", "utmi-pads";
+		#phy-cells = <0>;
 		nvidia,hssync-start-delay = <0>;
 		nvidia,idle-wait-delay = <17>;
 		nvidia,elastic-limit = <16>;
@@ -1093,6 +1094,7 @@ phy2: usb-phy@7d004000 {
 		clock-names = "reg", "pll_u", "utmi-pads";
 		resets = <&tegra_car 58>, <&tegra_car 22>;
 		reset-names = "usb", "utmi-pads";
+		#phy-cells = <0>;
 		nvidia,hssync-start-delay = <0>;
 		nvidia,idle-wait-delay = <17>;
 		nvidia,elastic-limit = <16>;
@@ -1129,6 +1131,7 @@ phy3: usb-phy@7d008000 {
 		clock-names = "reg", "pll_u", "utmi-pads";
 		resets = <&tegra_car 59>, <&tegra_car 22>;
 		reset-names = "usb", "utmi-pads";
+		#phy-cells = <0>;
 		nvidia,hssync-start-delay = <0>;
 		nvidia,idle-wait-delay = <17>;
 		nvidia,elastic-limit = <16>;
diff --git a/arch/arm/boot/dts/tegra20.dtsi b/arch/arm/boot/dts/tegra20.dtsi
index 9e71ed84bf28..77f6b3ee8418 100644
--- a/arch/arm/boot/dts/tegra20.dtsi
+++ b/arch/arm/boot/dts/tegra20.dtsi
@@ -735,6 +735,7 @@ phy1: usb-phy@c5000000 {
 		clock-names = "reg", "pll_u", "timer", "utmi-pads";
 		resets = <&tegra_car 22>, <&tegra_car 22>;
 		reset-names = "usb", "utmi-pads";
+		#phy-cells = <0>;
 		nvidia,has-legacy-mode;
 		nvidia,hssync-start-delay = <9>;
 		nvidia,idle-wait-delay = <17>;
@@ -769,6 +770,7 @@ phy2: usb-phy@c5004000 {
 		clock-names = "reg", "pll_u", "ulpi-link";
 		resets = <&tegra_car 58>, <&tegra_car 22>;
 		reset-names = "usb", "utmi-pads";
+		#phy-cells = <0>;
 		status = "disabled";
 	};
 
@@ -795,6 +797,7 @@ phy3: usb-phy@c5008000 {
 		clock-names = "reg", "pll_u", "timer", "utmi-pads";
 		resets = <&tegra_car 59>, <&tegra_car 22>;
 		reset-names = "usb", "utmi-pads";
+		#phy-cells = <0>;
 		nvidia,hssync-start-delay = <9>;
 		nvidia,idle-wait-delay = <17>;
 		nvidia,elastic-limit = <16>;
diff --git a/arch/arm/boot/dts/tegra30.dtsi b/arch/arm/boot/dts/tegra30.dtsi
index 536cc5629440..3d0515f6db51 100644
--- a/arch/arm/boot/dts/tegra30.dtsi
+++ b/arch/arm/boot/dts/tegra30.dtsi
@@ -914,6 +914,7 @@ phy1: usb-phy@7d000000 {
 		clock-names = "reg", "pll_u", "utmi-pads";
 		resets = <&tegra_car 22>, <&tegra_car 22>;
 		reset-names = "usb", "utmi-pads";
+		#phy-cells = <0>;
 		nvidia,hssync-start-delay = <9>;
 		nvidia,idle-wait-delay = <17>;
 		nvidia,elastic-limit = <16>;
@@ -951,6 +952,7 @@ phy2: usb-phy@7d004000 {
 		clock-names = "reg", "pll_u", "utmi-pads";
 		resets = <&tegra_car 58>, <&tegra_car 22>;
 		reset-names = "usb", "utmi-pads";
+		#phy-cells = <0>;
 		nvidia,hssync-start-delay = <9>;
 		nvidia,idle-wait-delay = <17>;
 		nvidia,elastic-limit = <16>;
@@ -987,6 +989,7 @@ phy3: usb-phy@7d008000 {
 		clock-names = "reg", "pll_u", "utmi-pads";
 		resets = <&tegra_car 59>, <&tegra_car 22>;
 		reset-names = "usb", "utmi-pads";
+		#phy-cells = <0>;
 		nvidia,hssync-start-delay = <0>;
 		nvidia,idle-wait-delay = <17>;
 		nvidia,elastic-limit = <16>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
