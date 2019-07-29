Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C649B78CD3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 15:27:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvxOUzvTN+zjLgcv+4ovfGcJd/leK8uwu1nAvaN1hOk=; b=WXaPhzUFxQG1GX
	gehWbrwuKH+2TqLuYQTz8k6m8aTShO68Iofl7PoeXVIjCpHrfo4XblE28AQ478/fxEQAzrXtsSfuC
	BBwUslb6njNz64qC/YLdZM3V+x1zb6CKXeR3y27plIivArorJQ9cynND+oJ8LfJwiigioN4UubOif
	/q5gWBUC8rVVPMiH5W/WrCY2oCl7r5lmVmG0a9Tef+L/wVEDVZLwdztAEQrhH675cVjtc2Es/ZZWu
	lWOpAZpwjulQ7iufCZ7eTQtnp12POaZqkmyz95f4N2+UGKC1Wke+MBAt3Y9GaZByQW/t4+ICnoTOn
	6I0K8ha/O/5vNsVP7nqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs5gU-00042M-T8; Mon, 29 Jul 2019 13:27:26 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs5fa-0002yH-G1
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 13:26:33 +0000
Received: by mail-wr1-x444.google.com with SMTP id y4so61864922wrm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 06:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ab59+H2WDkGLtDUjRYAahowCKGHxyYpXq1ICYjuPet8=;
 b=uPs/pRohH0UeODJ9yLiONupgiLKx4dCDAdsWMAkAaq4uA7Vv/QhqtOWP7dR5YbaJt8
 nfBgkHTE/0rMOY7+i3FtxwB+kTZC0Yp6wG8D4dxud6FtNiqbjzfV0C4qMLupC8qt1mIr
 k+mddbAR+PwmmPTLkgvCiu9TgtCIK1SzB7I391NtUgweWzgHiH1y0DwFioP0yJ5CojC7
 8CRE6pw9l3+MLp+e2+v10V7nj2QSvsSFLTioVwsYxh7CxoJtWBLdmVdG7xdo3bj7ywsv
 9/P/bszvgTTfX9qtnyL4myncdPaAPaJfFGe2PeIuWKaHSHSWwgMOmylKuJYYOiu7lzvB
 b74A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ab59+H2WDkGLtDUjRYAahowCKGHxyYpXq1ICYjuPet8=;
 b=kNAQTuyqfqrTXdEZf1ksV6j47EkRqfvx9xAaQI1DoCv98tV3zSiNpHFMFI8WM+BUWi
 hE1as6jh9bJOMRLd4HPzlW+tu7X7tjyWehP+cZ8KlB2FCm6UP1P+lCW3r3WTr51xcBZ9
 Hom7WCW8yUlZ3U0lylGmya8UhWGH8eUJyQSE1fFxkOxzV7dYe2tho4WFhO5AtVZGexYo
 2FN+u2CQpWNxpynx+nTquo46ZYCQJEzZjfpz96+tfNdkZz9lXzHG5BAN/m4AZe5LVFfi
 gkit12Rsz/rHlzkYnfDuZnh5n3AHQWMdEmFeY5qNYuf2t47wn5EZi/s97sdD4unR5uLr
 gOcA==
X-Gm-Message-State: APjAAAVGML6l5/YR9yi11/YOxaH90WwgnUdTaUXUe/yyl+EdipZ6wqIV
 vAlGMj4whNsHzQ0lwRrAHQFNccl7uzI=
X-Google-Smtp-Source: APXvYqx/8UWwARY5Rf8tcUBojz8hWYrqoqS7KmIDwvZBcySrJLGzZOiU0nnhjRfgKm8ZtlficUnPSw==
X-Received: by 2002:adf:b60c:: with SMTP id f12mr86087098wre.231.1564406788898; 
 Mon, 29 Jul 2019 06:26:28 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y2sm50270053wrl.4.2019.07.29.06.26.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 06:26:28 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 5/6] arm64: dts: meson-g12b: add cpus OPP tables
Date: Mon, 29 Jul 2019 15:26:21 +0200
Message-Id: <20190729132622.7566-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190729132622.7566-1-narmstrong@baylibre.com>
References: <20190729132622.7566-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_062630_668942_EAB80ECE 
X-CRM114-Status: GOOD (  11.07  )
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
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
