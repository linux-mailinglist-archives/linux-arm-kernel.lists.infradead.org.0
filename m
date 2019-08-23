Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7409A881
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:19:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTU292YL5ALGm3OpApifbJiu4rZe0ihmkN6bCIFp75k=; b=RS4Mr2h7u8nfRW
	u2y32MNHZeS4/Ywy7o1vBTHiENDpYBrsb+eFjaZOA5h6494mLAu9uHJtSSZ4WO+E5sP8BbCf7fe6n
	xUS5CYgdHGvYzYRdLumEOX1Jc9poMxjOWi9i6CHA6ZrDH08UtUBKCklUi/BkyKSYwBTkXCFUiG1Fp
	SbdUoWt96LCq/rFbZ6i+uKzYgZVdSAOp3+o2qDY2vdLtugi2a6/Od6LONcD7khuadAVl/hv3QnhqY
	0rve21CSL6hZ7L/fEDbiXGN+NpjxSiiBzJxp1BMi5XTxV3OWNcLD0rW7EW0sqEmWd2k+wqs4/QHJI
	zIN3yFi2ClChe47+ahrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13r0-0002CQ-Kq; Fri, 23 Aug 2019 07:19:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13bB-00013q-6p
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:03:08 +0000
Received: by mail-wm1-x344.google.com with SMTP id e8so8637230wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 00:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4JpKiIcryaS7qbY7qa/oNrG1CK0cYdfbOwJCPaVett0=;
 b=stVltNRFP7OJXsRRAuGZYrCCdP9n14avsmxT2x+0eHkiweKNph306aaQfr1ozKr0AV
 7232LRCskc0G0qtv1OuJihwcdAChitLEYitRZwRZiXTmXl3NfMv59Q590VLLVLaoRojL
 IdFETBYqwvT7Vgig/DxnSj85AHOcPg5zd8phisXYYO2NLMDh2rAkOULr+40yirrgygww
 U8Z5OsJyrIFVGy60d8KwKqjlDK5m84bpRfoSxzWReGMWWpTdnzHyuPzGjQVROREbNJO4
 PyJcmHbb3ZgPgifuB0SBB4tpFB5AkSsBp2JdWlg9M3tRFGNxjpsL2pLBWVdt78KWnm4S
 4ZNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4JpKiIcryaS7qbY7qa/oNrG1CK0cYdfbOwJCPaVett0=;
 b=kDzg2KsWLK8Ri3H9UdgKr0QsRR4ujQDHpJ42bo1kZv1PQ+PZ2xhszB3iP6Bqb1Fbkt
 SLZvRbNCEPagYHgaHQHjZE6R3+HddBRH/QEvYyx7e4ioxJCbDjaWZcn8EwS9B9d3mNcy
 Fc1ULOFcz6PV2DC9zhxyJC3XGW8T+xDYJ4P4adkaHwNZNzJuC3OnG865c0AdMfrV1z/L
 nmW8+cZ91YH5WbxfqdbmG2sLftWrmqYJJJeiCbSP71BrxZxiJrf9T18+LBafJoGYK/XR
 2fKUmeN9/IH9Uo/4w//AlYKgKAODVDlCZGDzSU5PabzCNXnMrxeNWHAXZvTosg6zY0x4
 MqZw==
X-Gm-Message-State: APjAAAWZJ4/rG9uTakWfCsOlEM8SS4FLR9qcFFEecuwFcjaenlv1pAAH
 bBmp3J3SCjwZ1tOrqYyNol2Qzg==
X-Google-Smtp-Source: APXvYqwplsGZ/7laOgUCpSaS26qUJUrZe68OrbiPfJxjCJGcpUfPnYrackNYh+4NglnMLCOlFNdteA==
X-Received: by 2002:a7b:c758:: with SMTP id w24mr3298462wmk.143.1566543775013; 
 Fri, 23 Aug 2019 00:02:55 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.02.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 00:02:54 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [RESEND PATCH v2 01/14] arm64: dts: meson: fix ethernet mac reg format
Date: Fri, 23 Aug 2019 09:02:35 +0200
Message-Id: <20190823070248.25832-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823070248.25832-1-narmstrong@baylibre.com>
References: <20190823070248.25832-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_000302_233251_4FFC0975 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-axg-s400.dt.yaml: soc: ethernet@ff3f0000:reg:0: [0, 4282318848, 0, 65536, 0, 4284695872, 0, 8] is too long
meson-axg-s400.dt.yaml: ethernet@ff3f0000: reg: [[0, 4282318848, 0, 65536, 0, 4284695872, 0, 8]] is too short
meson-g12a-u200.dt.yaml: soc: ethernet@ff3f0000:reg:0: [0, 4282318848, 0, 65536, 0, 4284695872, 0, 8] is too long
meson-g12a-u200.dt.yaml: ethernet@ff3f0000: reg: [[0, 4282318848, 0, 65536, 0, 4284695872, 0, 8]] is too short
meson-gxbb-nanopi-k2.dt.yaml: soc: ethernet@c9410000:reg:0: [0, 3376480256, 0, 65536, 0, 3364046144, 0, 4] is too long
meson-gxl-s805x-libretech-ac.dt.yaml: soc: ethernet@c9410000:reg:0: [0, 3376480256, 0, 65536, 0, 3364046144, 0, 4] is too lon

while here, also drop the redundant reg property from meson-gxl.dtsi
because it had the same value as meson-gx.dtsi from which it inherits.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi        | 4 ++--
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 4 ++--
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi         | 4 ++--
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi        | 3 ---
 4 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index 12bf959c17a7..acc2feb8fd89 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -174,8 +174,8 @@
 			compatible = "amlogic,meson-axg-dwmac",
 				     "snps,dwmac-3.70a",
 				     "snps,dwmac";
-			reg = <0x0 0xff3f0000 0x0 0x10000
-			       0x0 0xff634540 0x0 0x8>;
+			reg = <0x0 0xff3f0000 0x0 0x10000>,
+			      <0x0 0xff634540 0x0 0x8>;
 			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
 			clocks = <&clkc CLKID_ETH>,
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index c643411aabff..1a5efa2e16c5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -98,8 +98,8 @@
 			compatible = "amlogic,meson-axg-dwmac",
 				     "snps,dwmac-3.70a",
 				     "snps,dwmac";
-			reg = <0x0 0xff3f0000 0x0 0x10000
-			       0x0 0xff634540 0x0 0x8>;
+			reg = <0x0 0xff3f0000 0x0 0x10000>,
+			      <0x0 0xff634540 0x0 0x8>;
 			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
 			clocks = <&clkc CLKID_ETH>,
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index ca4b834c65d8..f3ae5a3685f9 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -503,8 +503,8 @@
 			compatible = "amlogic,meson-gxbb-dwmac",
 				     "snps,dwmac-3.70a",
 				     "snps,dwmac";
-			reg = <0x0 0xc9410000 0x0 0x10000
-			       0x0 0xc8834540 0x0 0x4>;
+			reg = <0x0 0xc9410000 0x0 0x10000>,
+			      <0x0 0xc8834540 0x0 0x4>;
 			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
 			rx-fifo-depth = <4096>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index a09c53aaa0e8..7a3b674db11f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -80,9 +80,6 @@
 };
 
 &ethmac {
-	reg = <0x0 0xc9410000 0x0 0x10000
-	       0x0 0xc8834540 0x0 0x4>;
-
 	clocks = <&clkc CLKID_ETH>,
 		 <&clkc CLKID_FCLK_DIV2>,
 		 <&clkc CLKID_MPLL2>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
