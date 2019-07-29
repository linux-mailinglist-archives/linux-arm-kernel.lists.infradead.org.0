Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4B278CD0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 15:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=niSgAaBPdxfrSiGJchhmDgL4pRtLkvF9rFEo1YjTR8U=; b=uxoAhlxxmMdIgT
	zctroCuF8KLb0VgWlw1hIgshyIGFoX8fYm2h8HyapHszdirkgC5wueDDyzMV5BsBdGHPYgE4LVQEg
	Zwm8LpGeUMpE7zemrqiuMMdBtOIZZA9apDtgFc+c8w5/LgI7cYdxtzO07DbMpDskuvWY+g5icjB4h
	oqj20o6JIiUKXiQ6UP7jilspTKbf5KZ2LAIfMbevqiermKfvHTNfMdRGE3cUlIRtyB3Uu9qXQF75W
	Bjv0Tqct9glGKL1/07Rk2meUwSOc8/+T3x5Tpsk3Hlbyy5LYvbtcz6KFXG9lxNLlhjzLbbs0C0nsf
	8iKfAQQo8VYbkrDPBnQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs5gA-0003Xc-G7; Mon, 29 Jul 2019 13:27:06 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs5fY-0002vw-Dh
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 13:26:31 +0000
Received: by mail-wr1-x444.google.com with SMTP id 31so61896877wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 06:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YbnyzPyXWl1eZNV2k+kZ6P9lVCAjQouqQ6UbFSEsR+E=;
 b=McTn4QAK5Y8+kC+tAswOQHte57UIRh64u69oCDKhluhwLj6i5hW56hYzvWMzktfas7
 uTrppQZmd8F8Ji2C4wMh1ssx3iILN/pYHALYQthpxmKdLqkGkwgET4Z8D/FE9Dnb9+1z
 vz4UsOaCGgTd8Ox9E82TCHjY251sq03lFaT/n50WVnqXacp3H6fse4AhjVCN1KeOvc3a
 6ebEkGPX+2nb+NVQ5ELVmkURXVBLm1Qc66gN9hdHGzbUtAq9kXErEP2wXTnS2qld5zCQ
 CbHEqUL4avvLeHC2UtswTPYy1/NTxbJHlForQvccXGj9+JmPfYRsUfadEP9BFvPEEm8A
 IXAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YbnyzPyXWl1eZNV2k+kZ6P9lVCAjQouqQ6UbFSEsR+E=;
 b=D5YmniSqQhYGr5LjUXcqzyXRafHa4yRsO7v/T4qUypM1xwgKpiXm8t8KiRFLZ6bqib
 n2Ro7nHUOujoy7j07MHtX7pjJmEr4OhZOxAUzsrpS53/h6YxirzxqdHONiofdbWIoJmN
 fYMHNEfC3lC7NG6lZ+1L8sNiPDjOtksxyJwRda/IlTd/BFBtayQpdXT3HcSmHy7fzK8K
 /q7YQN/Ln7lSOgUpQRAqqFPEYwFb1pviUOOuDRLZ2EzZmRsPIlLDatGWcMcoUSu9dXSw
 dOxind1rFDyXUeCmfFc3z8u2FNdS/iLHwNmsA/exyp3OfZU3AF/fmoGoH50Wa/jCKBit
 HLyQ==
X-Gm-Message-State: APjAAAVj4SYvB+fra3wS6oXx/YsTzTYePI7O+Vn/05Mc96UHLSjbK6Ze
 pyXPRxmfU+oMPLBhwpm5MNhkPQ==
X-Google-Smtp-Source: APXvYqxOVxv7hzBEczo6QBsd6n+qCueWZLH0Qtizk4W35djZW+vaI1LxwLE6MUGBvZYloUY1Z5c/dA==
X-Received: by 2002:adf:ea45:: with SMTP id j5mr45573344wrn.11.1564406786840; 
 Mon, 29 Jul 2019 06:26:26 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y2sm50270053wrl.4.2019.07.29.06.26.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 06:26:26 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 3/6] arm64: dts: meson-g12a: add cpus OPP table
Date: Mon, 29 Jul 2019 15:26:19 +0200
Message-Id: <20190729132622.7566-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190729132622.7566-1-narmstrong@baylibre.com>
References: <20190729132622.7566-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_062628_461045_727CFC7E 
X-CRM114-Status: GOOD (  11.45  )
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
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
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
