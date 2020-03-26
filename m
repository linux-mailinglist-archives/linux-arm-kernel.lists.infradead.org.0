Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADB11944ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 18:02:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HkU2NY0xPOXRdXgt9i1GdcZfoHXV5rnwoB3nKTIuPZs=; b=GmxhWngteHdIxc
	mkrSYP2yVaMgZXK/EUhwxeJi64vUoaIFvRQMR8ApSpIN1A9zxryX6JjdHwf94SPhmJqFlQJZzscij
	lXpGcN8oDlmjy7WOKzjN4zaKr3YZsxndUDP0me+MS/yjpLkls0hoXZH5cQRibYqYqkU0Lfepc6uZs
	Ok1AmuB0CgxaO8+ODxCTslr2939Ha7AsoVAH3G4Yu5ByqJ+fC5bFlcW3vCVfQTsMPzehZOHrcw5uw
	Ybhg8CMhcypVEmKOp4StVzEjnySg1Ieb1eP87bGWRQmCh3O+eawi1Sltbz32GfvA+O3mCxvF9CXM/
	ZAmR5sLL91LLipWD+6Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHVti-0006ng-FI; Thu, 26 Mar 2020 17:02:26 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVrU-0004dZ-Jy
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 17:00:18 +0000
Received: by mail-wr1-x442.google.com with SMTP id s1so8725297wrv.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 10:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C9+ngUpmkFwCrrCCNM5K1pYaDR7H/QYUrPj981ohJpA=;
 b=E0Av0gMBUOqV1dPvKF2FITdx8Rf0uAaobKa9Ln4rw+eC7JsGjCT057RazyNLToqdYH
 uDM362SfMEaE7zSr81m7UtJQ2xDDpsqsxmUGaVfeKZBeqvv/vEe2gsnqwKSv4np35TFW
 8EFA1KJB9qJxQUbzq/UzRCCRMY4nBGQUaajRFRG9MMBwrp1LPEaDjWccAoThyaXXPfm+
 ZHpQR74vp4XXkR1gbn4lyQYMaZUHpO68kkbt/0dLeH/z8KMmdSSWBl/m09gMcbefsYKq
 4hjpimLD5O3WfuEsmeJvI1MXq8AvpVQ8HKEBwpsxvofC/mt+BL9LfjlSdxxwVGPvaGpo
 qdVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C9+ngUpmkFwCrrCCNM5K1pYaDR7H/QYUrPj981ohJpA=;
 b=uCSzk+28BAWKQHf5w7Ar4sDZuBhdRjpXP+e62nE6r7GNk3zarCqIRT/p3XnmXEeDSG
 sK//5/dVvhk7pQPXac8aFEyIbczUr50Qs9q68kGNMTTrBg+X1nZ+12u4a8pTpIhxIM8Y
 L8xis2bl7Nl9fRorN3t++39Nf+4ALLULu2/uu0qVNzC/Pn4JdN6TV6ifLYib4VKMRRi0
 mmvcDO9A8IA9IxldfDCy9YPYgH9717xVx1FCpE65zjIQenYg/f7O4zZgUdDeoB4t/zyB
 EimApgv037wo25Vz9Caa/ZkTqgPXm5TsOLpPYRwroz6Drc0KAZ9brHaCtFYnQ1W34onn
 OffQ==
X-Gm-Message-State: ANhLgQ2w+QZkgRKlHR2PDL+Jx8eKNdNudRT+2W6V9wDcnppOkC34LcFN
 dcTtxC4fmSvY9TwOYP1ZmSNk4g==
X-Google-Smtp-Source: ADFU+vseedUJg+qIi0p0xgZxO6cJSY/Je6ly7V3VTm6ALURObymwtKpKsQpPYy2rJDKVcOfhXF3N0A==
X-Received: by 2002:adf:82b0:: with SMTP id 45mr10206215wrc.120.1585242006281; 
 Thu, 26 Mar 2020 10:00:06 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id r15sm4609823wra.19.2020.03.26.10.00.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 10:00:05 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH 2/5] arm64: dts: meson: fixup SCP sram nodes
Date: Thu, 26 Mar 2020 17:59:55 +0100
Message-Id: <20200326165958.19274-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200326165958.19274-1-narmstrong@baylibre.com>
References: <20200326165958.19274-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_100009_147955_BA4C45E8 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GX and AXG SCP sram nodes were using invalid compatible and
node names for the sram entries.

Fixup the sram entries node names, and use proper compatible for them.

It notably fixes:
sram@c8000000: 'scp-shmem@0', 'scp-shmem@200' do not match any of the regexes: '^([a-z]*-)?sram(-section)?@[a-f0-9]+$', 'pinctrl-[0-9]+'

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi |  6 +++---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi  | 10 +++++-----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index aace3d32a3df..8e6281c685fa 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -1735,18 +1735,18 @@
 		};
 
 		sram: sram@fffc0000 {
-			compatible = "amlogic,meson-axg-sram", "mmio-sram";
+			compatible = "mmio-sram";
 			reg = <0x0 0xfffc0000 0x0 0x20000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0 0x0 0xfffc0000 0x20000>;
 
-			cpu_scp_lpri: scp-shmem@13000 {
+			cpu_scp_lpri: scp-sram@13000 {
 				compatible = "amlogic,meson-axg-scp-shmem";
 				reg = <0x13000 0x400>;
 			};
 
-			cpu_scp_hpri: scp-shmem@13400 {
+			cpu_scp_hpri: scp-sram@13400 {
 				compatible = "amlogic,meson-axg-scp-shmem";
 				reg = <0x13400 0x400>;
 			};
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 03f79fe045b7..e2bb68ec8502 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -398,20 +398,20 @@
 		};
 
 		sram: sram@c8000000 {
-			compatible = "amlogic,meson-gx-sram", "amlogic,meson-gxbb-sram", "mmio-sram";
+			compatible = "mmio-sram";
 			reg = <0x0 0xc8000000 0x0 0x14000>;
 
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0 0x0 0xc8000000 0x14000>;
 
-			cpu_scp_lpri: scp-shmem@0 {
-				compatible = "amlogic,meson-gx-scp-shmem", "amlogic,meson-gxbb-scp-shmem";
+			cpu_scp_lpri: scp-sram@0 {
+				compatible = "amlogic,meson-gxbb-scp-shmem";
 				reg = <0x13000 0x400>;
 			};
 
-			cpu_scp_hpri: scp-shmem@200 {
-				compatible = "amlogic,meson-gx-scp-shmem", "amlogic,meson-gxbb-scp-shmem";
+			cpu_scp_hpri: scp-sram@200 {
+				compatible = "amlogic,meson-gxbb-scp-shmem";
 				reg = <0x13400 0x400>;
 			};
 		};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
