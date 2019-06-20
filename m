Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 992394D189
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:05:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3iuiDS6TGyNRhCPcuNgRmSUWaaIx+8e1AEjywgpNbNo=; b=cSmoMCKgxO8VHZ
	v9PoR8wKBhhLKn4adSB9jFMUo8V9T1BcI7B3ty5pDpaFucqsVGbbQ6mzcXP2FuszDNZR9mWjLb2px
	H51CuCWkCBKSK5iw9yBRZd9BoDd7VHU/1Ot0oXZvmvF7642Zx2bwrMk/m4pwT+cThhYlZFJwc9zb0
	iHBOR8NYz/gaFoI9Be65SzgosB7XiFp4nO2bTNOZMpBDATNuhh8Y/OcnsAJqyh53ydSKsqe3BboiN
	65e5V6yxZkAfODGjgF6J+bk47IXme3LsSY9dm/8haRDaWAJPbQp0YkId9UufTYrB6cRH7AoFI2slU
	/hkyQnCaxr1ksg9PkJ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdycx-0007mD-RP; Thu, 20 Jun 2019 15:05:28 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyYE-0003IQ-Q2
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:00:38 +0000
Received: by mail-wr1-x42f.google.com with SMTP id x17so3357608wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 08:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C68d+qcYguHz3zXhv5eHfQ0ZAq7PycGdrc5Cah7BDk8=;
 b=q7N99tjjzhN3+LiLDy4XSG+Gx7+YBnKRo480RP/3ZjsunVDNZDHveRkH/fnqlxH7gD
 /1G4pCqT4MeJ18eq9ir+0HgAJR6JKyYdRD/DbF7xBlUXfI3t/UajywczG0oY1fICNK2H
 MrCPZmxutbZ6yCXVV7t3gsjA8tRtZzj4Y0ONAzVb4wRs4BMP/bReGXley9Sqo/XsjzoP
 4wTPRi8VIIjf7kiySou96AwTW4CNtm3OWC3TSQj37L/SSNqyG/wYegbtv47GTVgBvlFT
 azXZdbCCDMP6bb1j/ehf5HawzD+uHHfihTOUcox/C/pq/+k783QM/nhqc9ytGfdacg8O
 MzVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C68d+qcYguHz3zXhv5eHfQ0ZAq7PycGdrc5Cah7BDk8=;
 b=qr4EPtHyD3stFkktx/8gd4W8144JfyY86eyMm+pYDoZFd9wj6JoyeiXpLlYMjniDwi
 8vYRwCttGU7Y3E26VSQhcdKydWDhCngZyZIUOaqDa5mfSIA9H64jcrQCmTKz5DpzMARG
 C22gsUgbiDuiO4KhQZ26a20lfL23uaI5lDw7uHTMO3XnOEuwTdXEhayrY88mnj2Ob+e3
 zXAyqXfi1GCGqh4epNTXuh0xggNjFWyL4IPLUThn9PK/8VvH9OKjUw7zRCzL+3jrbQNl
 pPjAu8DE4HbAXBPcTTajQCBUXcVvecEcFQZjKje1s5wpg1O6+zNUbnWWYzHImNdYVjtQ
 pr/w==
X-Gm-Message-State: APjAAAU/SkuRALyvsrQBWWMT7qO7TNUYnWBtNXp9SG39g9jhGnba1wXm
 7zZXP86GgkcsEsf9IBv1/R1bCw==
X-Google-Smtp-Source: APXvYqzErbqy4BohHinkppm/dPifMbl7dbPGdWxW8WZ7N66gJ3ZM2HTJNXQ2nC2N7QCBPq1HW1MRaA==
X-Received: by 2002:adf:f6cb:: with SMTP id y11mr4725863wrp.245.1561042832953; 
 Thu, 20 Jun 2019 08:00:32 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o126sm6802520wmo.1.2019.06.20.08.00.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 08:00:32 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT 11/14] arm64: dts: meson-g12a: add cpus OPP table
Date: Thu, 20 Jun 2019 17:00:10 +0200
Message-Id: <20190620150013.13462-12-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190620150013.13462-1-narmstrong@baylibre.com>
References: <20190620150013.13462-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_080034_845471_E044E0A4 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the OPP table taken from the vendor u200 and u211 DTS.

The Amlogic G12A SoC seems to available in 3 types :
- low-speed: up to 1,8GHz
- mid-speed: up to 1,908GHz
- high-speed: up to 2.1GHz

And the S905X2 opp voltages are slightly higher than the S905D2
OPP voltages for the low-speed table.

This adds the conservative OPP table with the S905X2 higher voltages
and the maximum low-speed OPP frequency.

The values were tested to be stable on an Amlogic U200 Reference Board,
SeiRobotics SEI510 and X96 Max Set-Top-Boxes running the arm64 cpuburn
at [1] and cycling between all the possible cpufreq translations and
checking the final frequency using the clock-measurer, script at [2].

[1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
[2] https://gist.github.com/superna9999/d4de964dbc0f84b7d527e1df2ddea25f

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 62 ++++++++++++++++++++-
 1 file changed, 59 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index ac15967bb7fa..ba9aab39fd95 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -48,8 +48,64 @@
 			compatible = "cache";
 		};
 	};
-};
 
-&sd_emmc_a {
-	amlogic,dram-access-quirk;
+	cpu_opp_table: opp-table {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-100000000 {
+			opp-hz = /bits/ 64 <100000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-250000000 {
+			opp-hz = /bits/ 64 <250000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-667000000 {
+			opp-hz = /bits/ 64 <666666666>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-1398000000 {
+			opp-hz = /bits/ 64 <1398000000>;
+			opp-microvolt = <761000>;
+		};
+
+		opp-1512000000 {
+			opp-hz = /bits/ 64 <1512000000>;
+			opp-microvolt = <791000>;
+		};
+
+		opp-1608000000 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <831000>;
+		};
+
+		opp-1704000000 {
+			opp-hz = /bits/ 64 <1704000000>;
+			opp-microvolt = <861000>;
+		};
+
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <981000>;
+		};
+	};
 };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
