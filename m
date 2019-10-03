Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 045A6C9F1A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 15:09:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iqHyMZCBBw4EVq9eKZQV6BPLNY333BnDlH3Cz6HOOhg=; b=N556utLUCYWrka
	i+sfItodw8U56NAdc/R05HEhi7MYB3+BA4BTWlhI7HWwkZBngabhZLyOM4ycf7typmhN9N3WyNgoE
	r9TkAs8BdpufYtqKjPq+A3kg/M6s17BSIRNvVYxGp7NwQsVXcYz42p0p3qiyI22C+02OH0MmdU04R
	vr/rSKPOjGkFRVDGwRN/rxN/Msz5St/eagdjt6xmM6/PlDHYC/FfogYi8VGoGRiT9ahcDzZYsTNxq
	vp1vVWz3Xuqlh1GgILITyPyrjALqwuQ7n5JShI341BvA3x1SStOy17TMb11RKwRbTjcMKc4XVde8u
	eN+/A5NnmW888aL4s3zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG0qo-0002F5-GY; Thu, 03 Oct 2019 13:08:58 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG0qb-0002DS-HE
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 13:08:47 +0000
Received: by mail-wr1-x444.google.com with SMTP id v8so2855727wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 06:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Gw44OhLwQH/CUylU7AC4CHwJnvlb/yfwJWpgjG0sVUc=;
 b=X/kzO0Mf8rp6JZbTiG3DaCWVH2uV5D1spjhSzxDM04qlnvV1ZoRN3QOzZ/9nqxa/zp
 tdwHcsd3l+4EYuqpn5cBFbk0o84KyVO9d7lERByJbO2rJAbm0BLvjt1ldyaFFMLdgN1X
 7UZTdiJbnxHzLwGG6IWoqiwEb98+1sTYoA6VT8l08diTELNCv8xpUGcv6hP8ma1dPbp9
 X31T1cBs89lfR86fvQrZRVc6/q6zxcxMFFlhrZ0yjs75d5fPTvbzdsLnNonrvRSICnv0
 nXhT6m+ns+AObjmTCJL6XiI5tCPE6iFFqow3usBNluC+056y/CLuizemf28eEXii3L7R
 QBGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Gw44OhLwQH/CUylU7AC4CHwJnvlb/yfwJWpgjG0sVUc=;
 b=c/yn8WjUoMEmjXvTfPSrglFgXns2hp1hue11Wl3LvNfbSDpK51tbJWsQSmcjnk4Ngd
 A7HBGsLUykts9XGyQPhN2C0vAnSPFMm3/jaO4wfaw7W7Z43JyLMt/ZuoePspbkkt/PbT
 uMbMyHPf4pHpT2bvi0DR1chILOLcudYiBDapBkrxwMCPpKiWqfdaYAgZfQ0Yp6g6vwWH
 l8Sy29h22hsxboqU4bGAPpBjV8r527MFyHcZwAehG+TTEALKyvzlZB242aUVlVceV9Ut
 6Mhu4ZT11yxkxZlMeNKLZ4epDWmWsh1Fj6mRofL9q3UN5CM0nb4BFMn7ma3bBQp8QU4w
 NsIg==
X-Gm-Message-State: APjAAAWvKg5X+9aQ8VwS5c5e0nXzZg9G+WEYs08ygzuLjlUggwCq1Aey
 A3BZZReW95aVJlPHC5Of+Im76A==
X-Google-Smtp-Source: APXvYqyeIE9AetKtVnUHsr637KtU42j4dmzDlDnD4GEC3YwDwFMKDCM+icveVvh1Nm7BM1NCsLRREg==
X-Received: by 2002:a5d:458b:: with SMTP id p11mr7388306wrq.196.1570108123645; 
 Thu, 03 Oct 2019 06:08:43 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 90sm3868870wrr.1.2019.10.03.06.08.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 06:08:43 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH] arm64: dts: meson-g12: add support for simplefb
Date: Thu,  3 Oct 2019 15:08:41 +0200
Message-Id: <20191003130841.8412-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_060845_618908_98AFE2C1 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SimpleFB allows transferring a framebuffer from the firmware/bootloader
to the kernel, while making sure the related clocks and power supplies
stay enabled.

Add nodes for CVBS and HDMI Simple Framebuffers, based on the GXBB/GXL/GXM
support at [1].

[1] 03b370357907 ("arm64: dts: meson-gx: add support for simplef")

Cc: Maxime Jourdan <mjourdan@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
This will be handled in the in-review U-Boot Video support for G12A at [1]
and the simplefb handling code at [2] and simplefb removal in DRM driver at [3].

[1] https://patchwork.ozlabs.org/cover/1155898/
[2] https://gitlab.denx.de/u-boot/u-boot/blob/v2019.07/drivers/video/meson/meson_vpu.c#L145
[3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/meson/meson_drv.c?h=v5.3#n158

 .../boot/dts/amlogic/meson-g12-common.dtsi    | 26 +++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-g12.dtsi    |  8 ++++++
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    |  8 ++++++
 3 files changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index f76773cabdb1..21c155f4508c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -16,6 +16,32 @@
 	#address-cells = <2>;
 	#size-cells = <2>;
 
+	chosen {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		simplefb_cvbs: framebuffer-cvbs {
+			compatible = "amlogic,simple-framebuffer",
+				     "simple-framebuffer";
+			amlogic,pipeline = "vpu-cvbs";
+			clocks = <&clkc CLKID_HDMI>,
+				 <&clkc CLKID_HTX_PCLK>,
+				 <&clkc CLKID_VPU_INTR>;
+			status = "disabled";
+		};
+
+		simplefb_hdmi: framebuffer-hdmi {
+			compatible = "amlogic,simple-framebuffer",
+				    "simple-framebuffer";
+			amlogic,pipeline = "vpu-hdmi";
+			clocks = <&clkc CLKID_HDMI>,
+				 <&clkc CLKID_HTX_PCLK>,
+				 <&clkc CLKID_VPU_INTR>;
+			status = "disabled";
+		};
+	};
+
 	efuse: efuse {
 		compatible = "amlogic,meson-gxbb-efuse";
 		clocks = <&clkc CLKID_EFUSE>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
index 0d9df29994f3..d80d8a982917 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
@@ -342,3 +342,11 @@
 &sd_emmc_a {
 	amlogic,dram-access-quirk;
 };
+
+&simplefb_cvbs {
+	power-domains = <&pwrc PWRC_G12A_VPU_ID>;
+};
+
+&simplefb_hdmi {
+	power-domains = <&pwrc PWRC_G12A_VPU_ID>;
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
index 1fdc5af5ae23..f89d744c9648 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
@@ -147,6 +147,14 @@
 	compatible = "amlogic,meson-sm1-pwrc";
 };
 
+&simplefb_cvbs {
+	power-domains = <&pwrc PWRC_SM1_VPU_ID>;
+};
+
+&simplefb_hdmi {
+	power-domains = <&pwrc PWRC_SM1_VPU_ID>;
+};
+
 &vpu {
 	power-domains = <&pwrc PWRC_SM1_VPU_ID>;
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
