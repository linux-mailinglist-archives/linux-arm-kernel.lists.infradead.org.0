Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A795B7CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJ0m24vkUR4mRR7tukJD93eNnAMJQ5xeXDxbAtdpvCY=; b=s6qXMEiusooiAH
	tADGo48aQp47Jl0q9JsFxb+Bs9INk+P/pPgQdYBZo8fmCuwSORiU2s9TjfmZOIs68zxjkiA1JRL6C
	UJ7rjKOY6v1fg/c1zPJzQdG4fZ8MWbfaPlNcdK3zq11Ql7QJBdWUxgldGFc3QhKLgnItIqXbG/mz8
	cWM9DpT2Jjif7YjtGOB+ZC/IG14bEKeydnURFKOX3MVEzZyu02JXiXivVF5p2xojXTACKesOnXdqQ
	u03efTyyiIlK+hOKuF0wiCNAXpke3T42syu8RvCOWNnxz0brkQsRPwZ0EmkV9thyL/d0kyUVoNRPj
	+9MQ5CWNzxaDwxIpL6TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhsRs-0007uP-V4; Mon, 01 Jul 2019 09:18:09 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsNI-0003O6-9l
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 09:13:28 +0000
Received: by mail-wr1-x430.google.com with SMTP id x17so12888467wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 02:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ilVEeuyiLJqEM//7LRcyaeEvGW66sRMbkqNNEOmiSkI=;
 b=o4L9YZI4tirHAWoEPlRw2Wu8JfyvxaIcAG41fQgsQnQuu/MRiDTmbBRd2WwQI0lTMO
 2EbfBJktCWM1c8YziYL//jsayWaNiqNfnlsEQBWs+ar1gmJ3faCTTRQER4NoHKZ0VAYG
 iDBXVeUUbTFdI+sM1nU9ywFdWBk81nG3uqMfGy/QfLa10tET1aPMcNGB106uZkIYcAHz
 bTYrgbgF08lACA/XI4EFiEhkuDWTFg8SI1cgoqnc3N2fJJqSdz1qgwVAtB63IwjYy5p9
 7kjToRe9mLpK+7ezTc5njCXjRZfmV/oh+bVCUGdGaoyU7A/lE+dDQyxDTEd59Y5TMnW4
 g4ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ilVEeuyiLJqEM//7LRcyaeEvGW66sRMbkqNNEOmiSkI=;
 b=eT5weKWgjvtSyWvhOrAHNkleLAtZhpCXbapsJR2I9apn06ZLmbQ7RKhcpAdbBLs/UE
 dfCGkmJr//VhUjyZlP+v4uc4iO2QGo2qlCs1urMKERZJxr9Xio1+bq5X00KNbmeN2Vq6
 xkLH1qH2R6LnO1dvwgQQ6VZJ8ljkKqXMyljNl21Ht7Q52HuwAmDlBQowYA2zgyAJeqq8
 a43s9sZzXJrursCEFwMBhFxHYosTTIqsf3Kn42RBj8bp5CBkyqVugwtL1C36l/GiRVJT
 PqpAu1IIoYLSHOcqkmjHkd9kVZOSt2OL1jyNIGYEXdsNr6S9sSFBvk8MS9G829UUajo6
 9Rxw==
X-Gm-Message-State: APjAAAVRnJSUdot1YJ3ThjgyNdW9Xyqrbn7mxI56gbdfUOWjPFgmCEMU
 3aDQ2b6Z05VfW0xrFY4R1DRA8Q==
X-Google-Smtp-Source: APXvYqxpEi241eMf9Uet7rcLU8HyQtNZPpgJjWPMlLqvr3ED55RqUQtQ1LLomYcRVppfIgf4uAhC3Q==
X-Received: by 2002:a5d:4acf:: with SMTP id y15mr12097174wrs.208.1561972402370; 
 Mon, 01 Jul 2019 02:13:22 -0700 (PDT)
Received: from localhost.localdomain (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id i16sm6305659wrm.37.2019.07.01.02.13.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 02:13:21 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT v3 11/14] arm64: dts: meson-g12a: add cpus OPP table
Date: Mon,  1 Jul 2019 11:12:55 +0200
Message-Id: <20190701091258.3870-12-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701091258.3870-1-narmstrong@baylibre.com>
References: <20190701091258.3870-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_021324_383271_02D240E4 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
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
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 60 +++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index ac15967bb7fa..733a9d46fc4b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -48,6 +48,66 @@
 			compatible = "cache";
 		};
 	};
+
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
 
 &sd_emmc_a {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
