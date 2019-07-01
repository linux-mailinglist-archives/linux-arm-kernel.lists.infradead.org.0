Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA7F5B7DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:18:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tfFuWobcJKLC7mvQNBxi0UigFhCrKPnaEdnvD3w9llY=; b=TgS88z1fa43+56
	9WkezYTU79qFzqjoy0chgmn3lgGhBL7hL9IuLJLlyv8YNrd1YEQ4iAFKddBKQ81w2R3qL8oj7M+uf
	OmLpW1VdRKGQ9eyhbaaqJEk9HrR2lh4yeXQ3QcbOcPDn7FTsDglgiXG0lU9rG3lpDV9DUX/Oyt5IB
	zsh6gjG3yLu7jQIGKzsFxJxix/Lv5KCaqfhALvgMcHUop7pu3t9lERHfW59HvZdwMVOhbUxLkBzaH
	osP2cqYNIdbdLBwmja7CWE58coUWwbGj2E8kFKPqprCp5dA67mXwvXys62otNBg7ymKJ6grRPYdtX
	K3Mb0ny0M9UEQPxsNqyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhsSV-0008QT-Bx; Mon, 01 Jul 2019 09:18:47 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsNJ-0003Pv-Vh
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 09:13:32 +0000
Received: by mail-wr1-x444.google.com with SMTP id p11so1711347wro.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 02:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DvHtShj7KGwLsgDeVESsbeeuJPQVX1FTxQG4otfV4tc=;
 b=NzFd4yDO4l1vl0XdKs7v6lF+CqKqVcDpmpXK07uA9L2eqCtCNSeW67wkwWZZF3BC3i
 Z0543VnlYfSUwlgcoidkXwW3ka36MPS/qxj9AgOccpCZcJtzaM45qUNpZ+bISGcHzO9P
 8qW3kTvDFfB1vozhMFIepXr+g5NMuqVaVQdXVTlC9esermcZoG6FUtzoM0gMpTPslM2C
 yqWD3PiU+htIceVIiqtWFArZ+blrDkyfPdfbTi8YTPt3vJritJ4Xbj2iCLUFG05cQule
 F3WvMdxaLOR4S0OM5xNBAkZiP8GKHZkq4FAu8/XxBX8bKfk/25zO/q2mCBwlPFVEWs9W
 +3/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DvHtShj7KGwLsgDeVESsbeeuJPQVX1FTxQG4otfV4tc=;
 b=XvmJ6l5ZewkBP9Gaw0L1au0yXCUbPL2HmnXqTvujkqc4IUst/rGem2CdsizB99wfma
 RPQw8gv+0SGumaJbs3hyaF7TrcM+YxPCcxMS4bZN64cj/BU47HpoEuThSWS5AwiUUWEJ
 ub+2oORmO4ScmWORwXjU97CXigIoS2ueAz4xwo9ut7vW1g1Mid1or8xGyq00Dq7gUsdm
 IzBAPnA/5HzWnsqf30XHVTKr2pc81o1zGtbqRwK0Dc/Xk6Nuik7YEURq982LwMSetu5H
 YSX7WcOulEZCyKQHAvbbuvYSpkXxzl86ujnlKVrXn4SFVVJ/8x6nO54ZtI0iXSq5zdA9
 8QjA==
X-Gm-Message-State: APjAAAXHpd5M85jjzirVFyVcbPFk/PxYigNvQtkyFIARDg1B8QSHrKYP
 lSOTTDMd/sxiCdPBof46PS135w==
X-Google-Smtp-Source: APXvYqynuamAaUge5Azq62zvMZ/av2t2RmIBK7BT3c1Xa6vX9mnxHGnONfD2Nl8rU5UF1BJc9LWBRw==
X-Received: by 2002:a5d:540e:: with SMTP id g14mr19552183wrv.346.1561972404503; 
 Mon, 01 Jul 2019 02:13:24 -0700 (PDT)
Received: from localhost.localdomain (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id i16sm6305659wrm.37.2019.07.01.02.13.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 02:13:23 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT v3 13/14] arm64: dts: meson-g12b: add cpus OPP tables
Date: Mon,  1 Jul 2019 11:12:57 +0200
Message-Id: <20190701091258.3870-14-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701091258.3870-1-narmstrong@baylibre.com>
References: <20190701091258.3870-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_021326_067731_41E5344C 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the OPP table taken from the HardKernel Odroid-N2 DTS.

The Amlogic G12B SoC seems to available in 2 types :
- low-speed: Cortex-A73 Cluster up to 1,704GHz
- high-speed: Cortex-A73 Cluster up to 2.208GHz

The Cortex-A73 Cluster can be clocked up to 1,896GHz for both types.

The Vendor Amlogic A311D OPP table are slighly different, with lower
voltages than the HardKernel S922X tables but seems to be high-speed type.

This adds the conservative OPP table with the S922X higher voltages
and the maximum low-speed OPP frequency.

The values were tested to be stable on an HardKernel Odroid-N2 board
running the arm64 cpuburn at [1] and cycling between all the possible
cpufreq translations for both clusters and checking the final frequency
using the clock-measurer, script at [2].

[1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
[2] https://gist.github.com/superna9999/d4de964dbc0f84b7d527e1df2ddea25f

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi | 115 ++++++++++++++++++++
 1 file changed, 115 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
index d5edbc1a1991..98ae8a7c8b41 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
@@ -95,6 +95,121 @@
 			compatible = "cache";
 		};
 	};
+
+	cpu_opp_table_0: opp-table-0 {
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
+		opp-666666666 {
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
+		opp-1896000000 {
+			opp-hz = /bits/ 64 <1896000000>;
+			opp-microvolt = <981000>;
+		};
+	};
+
+	cpub_opp_table_1: opp-table-1 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-100000000 {
+			opp-hz = /bits/ 64 <100000000>;
+			opp-microvolt = <751000>;
+		};
+
+		opp-250000000 {
+			opp-hz = /bits/ 64 <250000000>;
+			opp-microvolt = <751000>;
+		};
+
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <751000>;
+		};
+
+		opp-666666666 {
+			opp-hz = /bits/ 64 <666666666>;
+			opp-microvolt = <751000>;
+		};
+
+		opp-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = <751000>;
+		};
+
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <771000>;
+		};
+
+		opp-1398000000 {
+			opp-hz = /bits/ 64 <1398000000>;
+			opp-microvolt = <791000>;
+		};
+
+		opp-1512000000 {
+			opp-hz = /bits/ 64 <1512000000>;
+			opp-microvolt = <821000>;
+		};
+
+		opp-1608000000 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <861000>;
+		};
+
+		opp-1704000000 {
+			opp-hz = /bits/ 64 <1704000000>;
+			opp-microvolt = <891000>;
+		};
+	};
 };
 
 &clkc {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
