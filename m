Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABED4D190
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:06:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ldaeSHpRW0dNPBDNEyOYoiOgmoEXWRiTOtX4vK9ok4=; b=r/AJebM1YG1fSN
	xFjsLQR+C41MfnrEJe1dPyNELKO/B3CWRB5acCqGLYf5FaJo9zhDvruGTjumgONIyU3VAgS0wqAHP
	WILk9QypoyYDv8NSh7aYBio6rdRaLSY4hY6qzpERojLQMHXaw+tGJhnxtjnMV46m9QnYMe1rKl8fi
	EQuFtNDW8D+UhixliV5VCu+GgmSEcXB+SFsu8gN2wI93B1DEJYyw/ixSU1xWdy0yEulb0lTRik2i5
	T8Gs+A3pzUQ07yZRcD78oyw/t2bmTxgiDdDq1m0zxKWPLGnp7EOWVeO+fOjiSBzKZeXRR2BYiTGjS
	T6CLyNOV3YoY6biR7QZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdydc-0000Az-D3; Thu, 20 Jun 2019 15:06:08 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyYG-0003Js-OK
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:00:41 +0000
Received: by mail-wm1-x341.google.com with SMTP id a15so3389352wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 08:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qes8sASy5sBJ+5Ve+lLAIoBLeN8x3Knt4kb//nQEub0=;
 b=bLp5L5v3QS5wFKBUizSp2SVDeh+p42Tp3wW6h23FY+eZOvz+3rFse3fX8nrHfAF0N0
 3hXWdF6RHyDvszXQOhz1PMo4c402hmKDlOSgweCFFtwOfj8Rw8B6/5HwQSPcwg0+lqFq
 rsQdTMgAumuGjnkfbaxvq4jhiTZsoMAou1x9jQjN5jz73KLW48hwY3WfUh5Jjr/EsOeX
 qnrUxITzWZ6NTFXaPmOuxxWMd1Wun+GtMgtItKLdcITqUVGCH72DheIEtWzVQrsg2bQZ
 WJhPJdmCpOitD5eXOFNStzJ/GJzw4aVzHFbkYX1NYwVbV/jUYx0NvDC8NFdwzW2xMD85
 g+dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qes8sASy5sBJ+5Ve+lLAIoBLeN8x3Knt4kb//nQEub0=;
 b=VEjTBvWvFI0W7YZqOUSL6fa/1vJInhVRNUtndiYbkPmOAvBPxhuViwUwwl4PWYdtW0
 WVR6MDhqtZD93X4yxBcR3KAL/MNnVbQzZTWv5IH9Qa7WLIXVnzxyX9DHH8bM9raN2A4h
 vj4vmtJgyY4bEISPmF5C0aWHTbW0wdxCcNL+EhJpVmH/FnwDDzFMIFcdVU9sOnDeWqk9
 MdyVsrqDuwQl+vsfRxwwAyK4NsXfRl4NuZq/z1CdXdbd1lGeTEb4fQJYm50qczVH2WiH
 ctPj+FIhjn7VQlOrtNxKAK4L535MDAnnW8HsUOSf5TS0cSEv0hNUGwvpGbUaNHmCg1Qh
 cC9Q==
X-Gm-Message-State: APjAAAWsx7rQ8SIdiEDesF+kE/HeOIgn5mobEs5snY9sMmsZ5oWyz/t1
 ja/9co8Q1gpYt4zBLAg90QAGLQ==
X-Google-Smtp-Source: APXvYqxYtPp/wFEGNPPmoWaruFCEPgqbTgh4Hr4WX99UR9HAxN54KL5cPBZrIVaCKfUePTpJArYSAQ==
X-Received: by 2002:a1c:6c14:: with SMTP id h20mr58185wmc.168.1561042835265;
 Thu, 20 Jun 2019 08:00:35 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o126sm6802520wmo.1.2019.06.20.08.00.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 08:00:34 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT 13/14] arm64: dts: meson-g12b: add cpus OPP tables
Date: Thu, 20 Jun 2019 17:00:12 +0200
Message-Id: <20190620150013.13462-14-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190620150013.13462-1-narmstrong@baylibre.com>
References: <20190620150013.13462-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_080036_801065_670B2041 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
index ae63cd610892..334742de11a7 100644
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
