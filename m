Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAED56578
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 11:13:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tfFuWobcJKLC7mvQNBxi0UigFhCrKPnaEdnvD3w9llY=; b=tK2t+Px6AIKHOa
	1jnN8FoVuUX9Ary4xC0MHGguO930HJTT7fhFh6Ut/dmikB9IqQBw6qTAyfaiTyQU9hHpiECUiQC4s
	YfPjZOxIjCFQYELU8yfFCAe5bYl0StOMCAhH9wuKQscVegIYhypYrzinob/KKbzdVyq3BK9Bd15dk
	DbjrYO296cutq77JXEmNUCSLJ7/cC9/GiLO1woJ1Bxz0ZsyzGA/wWa02X53Xdgx2jd2iB7SbflzEo
	noaZwNx8uPoTmn+xd8wIcudsPnbaFTZ3QKR0vkeWFx9F5pctCdz7v8NZ83blfA+UeRJieLiDrWgOK
	7Cubg59r2aIBXZHZ39cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg3zP-0000G0-7g; Wed, 26 Jun 2019 09:13:15 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3tD-0002ic-V5
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 09:06:59 +0000
Received: by mail-wr1-x441.google.com with SMTP id f15so1808366wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 02:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DvHtShj7KGwLsgDeVESsbeeuJPQVX1FTxQG4otfV4tc=;
 b=M/lFKJKIFOjYBhL3rYU/TsABpRZ7hq9jD6Vysyjyaaap5nspSg8gkfGbHcSuT4S5HK
 Nbb6vCgTEudKwBsVyAojojaszB1Is8VcWYseufI/kGsOdQwc5VvEtx/pEBvVkTJZOpBw
 Z7DZqLsdPnTtIbSCgH2VagITejulACR4Hy1DtnZ+M64SZ7ArMvQnHP7jc9s6UOxvDcjM
 oE7MtgwPDODZNB6ZpbdQy/X+lT/QTAOuZNseUrsBg2eW1DpFz1rZ9PFu8Y+2yOUyma6a
 DWLBIBMRCKnO0Rqhix61VqUJRRtulgF8xJOzuE+KXfkDylOi+xPokp63I9c23nLPRTdn
 T+Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DvHtShj7KGwLsgDeVESsbeeuJPQVX1FTxQG4otfV4tc=;
 b=eTmnSHjNAi6Z6Ai77Yofbiqg0A0xugpJV5W8uVbKaL/NL9ucYsHg3xhMvjLYxcD/xk
 5xMZ1WLCKae3V3deTTEeawPFCuU8cnrnj2Fj8htpskz+FcWQg/LYMtDhD9eiF69XN5nQ
 HC6WXvXALMTROTTx7jiZfOQM1ulw68vgQuBDAKreaYuZLoqwjpjqV30e/z0LzZxI45Ns
 6wjZZOaIl7JMg0Eq8IYevcQs/n8hhZM566NFmE/mAbU09kxzm2A2uNZZ0Z8e35mfPBql
 M7bo3zIYJjjmRqXWa6tjkOHi6MhgEz9gax7sspTpwZqUDXgPs6ENzHdEgsA+DYn+fPZK
 sgoA==
X-Gm-Message-State: APjAAAVMRIidqVSr7PckyLX3Fq5dI9se1Dba/IeGKAyxAYghdD8exMYH
 J0zMbYu7RsPNpRSj3fkPAZEwaA==
X-Google-Smtp-Source: APXvYqwoToPQmWF06ZJeI+w7dvs7w3o0usWXH15rDMnDeES8qGP8XEu+6l6N8hhXtg9Kmvd2rweozQ==
X-Received: by 2002:adf:de8b:: with SMTP id w11mr2770396wrl.134.1561540010501; 
 Wed, 26 Jun 2019 02:06:50 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o6sm1925797wmc.46.2019.06.26.02.06.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 26 Jun 2019 02:06:49 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT v2 13/14] arm64: dts: meson-g12b: add cpus OPP tables
Date: Wed, 26 Jun 2019 11:06:31 +0200
Message-Id: <20190626090632.7540-14-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190626090632.7540-1-narmstrong@baylibre.com>
References: <20190626090632.7540-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_020652_261805_D93E4C5F 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
