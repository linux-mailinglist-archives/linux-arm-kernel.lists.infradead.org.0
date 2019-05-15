Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC001F55E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 15:18:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzCGX2T+RKaBgR9FmeTm+QsR8YaEKM4TQtkA6RGj9OQ=; b=B/aRVd69xa/EiG
	6wb/Xdk+KO9keveCWPbazxNljM/UNzXO4fED2lsvwQY+AJzTS4hfkoqBruu8w2mbCQ6dCDgHwsh3Z
	EP8nsixL7JSv+qrlk9IOC1pw2fyrou0wDKQrkDOnGIDM/cTv7V9VulpcOtM83YBJEAZbUtMVLEr32
	DY5QOjbc+2Ng5I+BKOQ3MjjHpuQUpKsyo81hiLclIPULw4kMGCRqYOt2WgsAFNm7zQNx47lzjorDL
	O1mTC3KilbzgPQxDiHr5qHz3L07t0NICUudQjTo3I9gJvOTMIIbgi+Iq4HB2FIZgJSq8LCM1+3F5J
	L7lfJeTgP7XUhmjFaa+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQto3-0003cE-Td; Wed, 15 May 2019 13:18:51 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQtn5-0002Xo-52
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 13:17:55 +0000
Received: by mail-wm1-x342.google.com with SMTP id n25so2439858wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 06:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3nPwxijYzUSn3tCLVItFDtpETqdKC0544kYngMirnWk=;
 b=QyZ4QdQeRN8UlfPr6E+wgj0jrZ2veOsEoLlNkvD4Ofsv4z7K9tqmCbGXsH2Af6j9gY
 Q4CJK36dKMFXJcCanoleIjcn7agv3DcpjyfVC9iuEDC3thtwZdUITfCqBLcO9uYqoAbU
 4zCp/jgyXfxMHE81pg4DrK+06iqgAi9ByLfvvM+nchyzw2m6zvpRIQ2YOq1L+vWb4yEX
 IknNZ6TnpXCscmPLLIczS2GsTARcvyutLRvHTS0ji6wDuICs0/w6GV5eTjDI/9yyVZRh
 MD/hxwKa1SBs+lC1pGxY4lLPPbqRQ9Zd9b1rRmO78opmI1gxTHRQ+yzyT/KAtImxbs48
 /AcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3nPwxijYzUSn3tCLVItFDtpETqdKC0544kYngMirnWk=;
 b=klMs2X/Z1spSomhM3mGzkcQyvAbxywZc+6MAdPezAN2xaOoMkOGF4J1pzZ8yUhTm8B
 OhmDZh3QZcMsEatz8nx08RYrCunGssEtR10BswLnKHLkaycrXgGs0mCaOErDbapd4AsW
 rKkFStQDqfvSO9hhuT+OIIfI05krABAIsVremMjZVJEK7jYwFEaTUnbtGKGdfluXaWAm
 YlB+i3Nc0iFywWFs+hwDK5R40D57k44vddRJ9Fq2GkFVoI7nUKBdl9e5DJIzNjqJpj6h
 RRU0pORqOalc4oR/uwa7VTBwBwzojcJ8T4y2Lh0pwDH2v2Ftx09aWzQk512Bwx2o3Q4x
 V8zA==
X-Gm-Message-State: APjAAAVlm+U/DaK5yX2tA8RxZLdI9WesMrcSfWo75THbNgdSCHZsHmMm
 4Q4/fAkMVsLcI/5u8PktecwB6Q==
X-Google-Smtp-Source: APXvYqzNuhAI/rjBVnyXEZdScQkgzG6SUeRwgWMdJNrvodeJ+8hjQ5UkYHP1bnVgWXmmvpqJXKW6FA==
X-Received: by 2002:a1c:e3c3:: with SMTP id a186mr318808wmh.5.1557926269684;
 Wed, 15 May 2019 06:17:49 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-11-31.w90-86.abo.wanadoo.fr. [90.86.214.31])
 by smtp.gmail.com with ESMTPSA id f10sm3268583wrg.24.2019.05.15.06.17.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 15 May 2019 06:17:49 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org,
	mark.rutland@arm.com,
	matthias.bgg@gmail.com
Subject: [PATCH v3 5/5] arm64: dts: mt6392: Add PMIC mt6392 dtsi
Date: Wed, 15 May 2019 15:17:41 +0200
Message-Id: <20190515131741.17294-6-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190515131741.17294-1-fparent@baylibre.com>
References: <20190515131741.17294-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_061751_570318_BA7CA48C 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Fabien Parent <fparent@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the regulator nodes for the MT6392 PMIC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---

V3:
	* No change

V2:
	* Use 'pmic' as node name for the pmic.
	* Use 'regulators' as node name for the regulators
	* use dash instead of underscore for regulator's node names.

---
 arch/arm64/boot/dts/mediatek/mt6392.dtsi | 208 +++++++++++++++++++++++
 1 file changed, 208 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6392.dtsi

diff --git a/arch/arm64/boot/dts/mediatek/mt6392.dtsi b/arch/arm64/boot/dts/mediatek/mt6392.dtsi
new file mode 100644
index 000000000000..ff2d83026bbb
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt6392.dtsi
@@ -0,0 +1,208 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ */
+
+&pwrap {
+	mt6392_pmic: pmic {
+		compatible = "mediatek,mt6392", "mediatek,mt6323";
+		mediatek,system-power-controller;
+
+		regulators {
+			compatible = "mediatek,mt6392-regulator";
+
+			mt6392_vproc_reg: buck-vproc {
+				regulator-name = "buck-vproc";
+				regulator-min-microvolt = < 700000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vsys_reg: buck-vsys {
+				regulator-name = "buck-vsys";
+				regulator-min-microvolt = <1400000>;
+				regulator-max-microvolt = <2987500>;
+				regulator-ramp-delay = <25000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vcore_reg: buck-vcore {
+				regulator-name = "buck-vcore";
+				regulator-min-microvolt = < 700000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <12500>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vxo22_reg: ldo-vxo22 {
+				regulator-name = "ldo-vxo22";
+				regulator-min-microvolt = <2200000>;
+				regulator-max-microvolt = <2200000>;
+				regulator-enable-ramp-delay = <110>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vaud22_reg: ldo-vaud22 {
+				regulator-name = "ldo-vaud22";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <2200000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vcama_reg: ldo-vcama {
+				regulator-name = "ldo-vcama";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+
+			mt6392_vaud28_reg: ldo-vaud28 {
+				regulator-name = "ldo-vaud28";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vadc18_reg: ldo-vadc18 {
+				regulator-name = "ldo-vadc18";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vcn35_reg: ldo-vcn35 {
+				regulator-name = "ldo-vcn35";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+
+			mt6392_vio28_reg: ldo-vio28 {
+				regulator-name = "ldo-vio28";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vusb_reg: ldo-vusb {
+				regulator-name = "ldo-vusb";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vmc_reg: ldo-vmc {
+				regulator-name = "ldo-vmc";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-boot-on;
+			};
+
+			mt6392_vmch_reg: ldo-vmch {
+				regulator-name = "ldo-vmch";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-boot-on;
+			};
+
+			mt6392_vemc3v3_reg: ldo-vemc3v3 {
+				regulator-name = "ldo-vemc3v3";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-boot-on;
+			};
+
+			mt6392_vgp1_reg: ldo-vgp1 {
+				regulator-name = "ldo-vgp1";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+
+			mt6392_vgp2_reg: ldo-vgp2 {
+				regulator-name = "ldo-vgp2";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+
+			mt6392_vcn18_reg: ldo-vcn18 {
+				regulator-name = "ldo-vcn18";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+
+			mt6392_vcamaf_reg: ldo-vcamaf {
+				regulator-name = "ldo-vcamaf";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+
+			mt6392_vm_reg: ldo-vm {
+				regulator-name = "ldo-vm";
+				regulator-min-microvolt = <1240000>;
+				regulator-max-microvolt = <1390000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vio18_reg: ldo-vio18 {
+				regulator-name = "ldo-vio18";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <264>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
+
+			mt6392_vcamd_reg: ldo-vcamd {
+				regulator-name = "ldo-vcamd";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+
+			mt6392_vcamio_reg: ldo-vcamio {
+				regulator-name = "ldo-vcamio";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+
+			mt6392_vm25_reg: ldo-vm25 {
+				regulator-name = "ldo-vm25";
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <2500000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+
+			mt6392_vefuse_reg: ldo-vefuse {
+				regulator-name = "ldo-vefuse";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <2000000>;
+				regulator-enable-ramp-delay = <264>;
+			};
+		};
+	};
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
