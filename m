Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E99CE2B5C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:51:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FMGUIY43xvXNU0vswq3tNJv4Phh643p1m4fp7lz37vM=; b=RrNbAFwKvgELVC
	8Y/XWDJAp5ivyisbLKXpvjJ0NCYqNJ5MENgc/W7ifZJPfOK30nz0xLTSmAOVbGUYGi15bQxRpTyuA
	pUoHS5r08jtNnGyUm36T+Au8EE2mHJnQtnuRUCA/OVyovquX8KQhwHKdwF6FkljEEn3iK7af3N98k
	AbMWYz0pIFgJlcZonTDUIcSff4FrXAyzvzJoowiGNm38ILfhDEF/4u4mh1293NQmwpJ4SVO3UoJpF
	MxVDjBqQgAIm+hIJJ/e0W58qBPp5tx9oloH3xDEIF1RMbCmgwZAMzHu0M8zVe3R6h7SGE59/cwdx6
	iEWIMp/rLJ1dXHfQa9bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVF5u-0006DM-20; Mon, 27 May 2019 12:51:14 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVF5j-0006C3-7p
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:51:05 +0000
Received: by mail-wm1-x344.google.com with SMTP id u78so3206326wmu.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 05:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sTM6dI5akQRWyNgshoI8vJ70uGaHk1NWByvSbK/496E=;
 b=HQy04UfWNW9dML5RFNiHSPiHWbiHch9VJA0/kr8ZsG5AJy4HW3qHLodnmxMOIWWWAM
 vkrZYEN/RVRTBumIpSbSXbRVMsqD0j0nzWNVa5JPu4cZbCECd2D5ZQ17PvS+f3+V6v/K
 0UwVysKMNwcaD+/4Q1OIOuElhaKFklzIIY9+29kp9HwvV8EI1FOQKSbdcfRpslJCW/+R
 1K5ihrCWppU6/L829dra29fnIKGhI+eXSBtLJsZYwtkLvonbTSjNLWLzuCLh4ncKIndh
 QDwmp3e4LykgL5uBnpaQ9xuDvQVqBQKrXsSYGNBNbxRe3omLNMKeGnmRsmVEiLJYquyR
 lhhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sTM6dI5akQRWyNgshoI8vJ70uGaHk1NWByvSbK/496E=;
 b=m5XowyQHY5jBNoOPPSpm7ZGO/+30TN7gdanISzx7MzLcO7X7Z3zGC0BSDfEJtUOyNf
 goXQso/CkTtxyMjkPqNMEQ2LItk890LCOfuW/sQnSoiaSyVhQpaKCq7VeoN8RYzwOVi4
 fo9hQNtT3qMOpB6u8S5x3CmfUO56+5fX45h9ummq+Wfd3YoWOu8sWCHy2OmClgqH0rOj
 vUYYukjCZNMnTsZMHgr2Z+QahWMg3qjG+0Ysv4ykKmp21Z9OzJRFn8f4/rFvShm/ruUB
 Hll1mnrgDQet9tz9gDYy8oGU+jc4kdFl7AhaviBDUDVsAqkxKAi7gZ0bv5xmuWbrkKvN
 Fs7w==
X-Gm-Message-State: APjAAAVIHmYamhMOMqscrWUO97ZjYbCM7WcvPRDaXSTgLjd6a374fESC
 5vszaoyyTnu+tEoEo3BrMuMcdw==
X-Google-Smtp-Source: APXvYqxiQ+nNr1phuOgLrd40qhnD2k4Qu4xZOHnd9BuI8akHep+S8GBmuTUWpWihkDwWS3NEQtK/2w==
X-Received: by 2002:a1c:1bc5:: with SMTP id b188mr9381743wmb.174.1558961461729; 
 Mon, 27 May 2019 05:51:01 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id g127sm8911462wme.21.2019.05.27.05.51.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 05:51:01 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2] arm64: dts: meson: g12a: Add hwrng node
Date: Mon, 27 May 2019 14:50:59 +0200
Message-Id: <20190527125059.32010-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_055103_278905_ED05421C 
X-CRM114-Status: GOOD (  10.89  )
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
X-Mailman-Version: 2.1.21
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

The Amlogic G12A has the hwrng module at the end of an unknown
"EFUSE" bus.

The hwrng is not enabled on the vendor G12A DTs, but is enabled on
next generation SM1 SoC family sharing the exact same memory mapping.

Let's add the "EFUSE" bus and the hwrng node.

This hwrng has been checked with the rng-tools rngtest FIPS tool :
rngtest: starting FIPS tests...
rngtest: bits received from input: 1630240032
rngtest: FIPS 140-2 successes: 81436
rngtest: FIPS 140-2 failures: 76
rngtest: FIPS 140-2(2001-10-10) Monobit: 10
rngtest: FIPS 140-2(2001-10-10) Poker: 6
rngtest: FIPS 140-2(2001-10-10) Runs: 26
rngtest: FIPS 140-2(2001-10-10) Long run: 34
rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
rngtest: input channel speed: (min=3.784; avg=5687.521; max=19073.486)Mibits/s
rngtest: FIPS tests speed: (min=47.684; avg=52.348; max=52.835)Mibits/s
rngtest: Program run time: 30000987 microseconds

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
Changes since v1:
- fixes efuse bus size to 2000
- add @218 suffix to rng node name

 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index cbd05e537cd2..881d0f9a2112 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -197,6 +197,19 @@
 				};
 			};
 
+			apb_efuse: bus@30000 {
+				compatible = "simple-bus";
+				reg = <0x0 0x30000 0x0 0x2000>;
+				#address-cells = <2>;
+				#size-cells = <2>;
+				ranges = <0x0 0x0 0x0 0x30000 0x0 0x2000>;
+
+				hwrng: rng@218 {
+					compatible = "amlogic,meson-rng";
+					reg = <0x0 0x218 0x0 0x4>;
+				};
+			};
+
 			periphs: bus@34400 {
 				compatible = "simple-bus";
 				reg = <0x0 0x34400 0x0 0x400>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
