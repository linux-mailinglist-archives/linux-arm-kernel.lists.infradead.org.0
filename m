Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B45CD9F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 02:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TmPu1aUFvCoqmCZm13xkNc3da1IW6zty4mESCjI9H2w=; b=nrMFWxSb0u/RrH
	ZXGLsQ9cmEIA5O6Xa6NJQRmozKSJciItPaBpUYcQOr3zk3yhfOAgPdB/QB+fONgO9RZJoqpCJNkQV
	BMFcPiA6FcwjaPSPp/U57yvDrdJazDmIndtvwLMlbUKU3F3/JekKkTrCCiOwsYCBzmcGaXaT6PiW/
	J8wUhpPgOGyQe6sjrmHodH6Q9nLQzoa7dZ18rc/l2xx6m8HjHrWYhFhSFuyDYIe+vXih3C6QU5d/J
	wfRnxEM2/Cujwulhszr+jYwgKyguZknd18p9cJH5fKNOPrAbOdtwSXPrQlrdcXSnTPZK9EU9qNWGC
	s1AkOoPCnqPS3LeYOvnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHH7w-0001Wy-SX; Mon, 07 Oct 2019 00:43:52 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHH7p-0001Vb-J7
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 00:43:47 +0000
Received: by mail-wm1-x342.google.com with SMTP id y135so13623124wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 17:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=fQOEfRQoy/pcyTLI4fTFGvUUjpgVNx4G+Kw/9xbGrIE=;
 b=StpyWWghbg5+qigi+PXQ79YlBBRdvEcdNHMUOepdgoOrdJLYVmozYC25BcmEW0igXc
 h6zpZcAF3c6+hICYE6URHtb8CRMSE7Wk9EzgU/rm2nXWUMs+97+X5tSulIEshUKxaM6T
 b3o5zhQAVAUTSXS5EjLNggrmtgABxtkrzJHfMK7QXq/+zwv3zfHU6UmZO5eOug00avaW
 Bjx0xrIFYy/B3PM4QfJApeqvy2Hs0VHeRe+nF7+FuJZYec0iSocdwBJ9ztIc/GgUDnR0
 RVY1qWaQsxEgcdcmYm4AAcXJ162bdG3O8iw1CvUOjdbCKfWw4Ti4O1kQpLQZ+iCTsfZ3
 bauw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=fQOEfRQoy/pcyTLI4fTFGvUUjpgVNx4G+Kw/9xbGrIE=;
 b=DR+JM438iAAmm1j2sNS3MGqFl/vYxnzcLHCH4t8EnRpr7Si62zjOgLUkRGCL9dHgWE
 mFqwcDzwXqTxvp22MU1EhiPa4Bfgmn2IgVusNRAlLiCMzdQWXse2utGVpWWmkSiFg9yD
 s/qvIiXIJ2MI7JoqlSCpP+Qa+aufYBkNCtsLRGLkm8UAe3AtExP5lI2dE7mkBqKq7Vj5
 bLhPQg5phH9OJK5TN+Q6jetjlkL7++ysG+BwzOxAflxE2P0x976dadQrmMszz44fU38G
 t/Q6332vfRtyMO7QBr65+NVHJSDHb15AWRXbEhkipS6plPNTlzsx3stnug9/pC2Imaca
 YFaQ==
X-Gm-Message-State: APjAAAXMsSAbzT4AJaTDY215iwprKjuFbCL+dhyofYyAo7kU1HRsmRRq
 fUAQmcXiPLkd7vUBa2d6WxKeLQ==
X-Google-Smtp-Source: APXvYqy1RUExx0LprFcaXh1JMN2lSMQwUqt5qKkBkFusoMa1FCqZI/PiueBG5fDfQiYrIF2OCp7RLg==
X-Received: by 2002:a1c:9c85:: with SMTP id f127mr13526617wme.28.1570409021143; 
 Sun, 06 Oct 2019 17:43:41 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id z9sm14474627wrp.26.2019.10.06.17.43.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 06 Oct 2019 17:43:40 -0700 (PDT)
Message-ID: <5d9a8a3c.1c69fb81.14b6f.10d1@mx.google.com>
Date: Sun, 06 Oct 2019 17:43:40 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Report-Type: bisect
X-Kernelci-Kernel: v5.4-rc1-48-g0bc9c79979ea
X-Kernelci-Tree: krzysztof
X-Kernelci-Branch: for-next
X-Kernelci-Lab-Name: lab-collabora
Subject: krzysztof/for-next boot bisection: v5.4-rc1-48-g0bc9c79979ea on
 peach-pi
To: Marek Szyprowski <m.szyprowski@samsung.com>, tomeu.vizoso@collabora.com,
 guillaume.tucker@collabora.com, mgalka@collabora.com,
 Chanwoo Choi <cw00.choi@samsung.com>, broonie@kernel.org,
 matthew.hart@linaro.org, khilman@baylibre.com, enric.balletbo@collabora.com,
 Kamil Konieczny <k.konieczny@partner.samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_174345_635068_3EAA1BF9 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* This automated bisection report was sent to you on the basis  *
* that you may be involved with the breaking commit it has      *
* found.  No manual investigation has been done to verify it,   *
* and the root cause of the problem may be somewhere else.      *
*                                                               *
* If you do send a fix, please include this trailer:            *
*   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
*                                                               *
* Hope this helps!                                              *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

krzysztof/for-next boot bisection: v5.4-rc1-48-g0bc9c79979ea on peach-pi

Summary:
  Start:      0bc9c79979ea Merge branch 'for-v5.5/memory-samsung-dmc-dt' into for-next
  Details:    https://kernelci.org/boot/id/5d9a50af59b5141ce5857c07
  Plain log:  https://storage.kernelci.org//krzysztof/for-next/v5.4-rc1-48-g0bc9c79979ea/arm/multi_v7_defconfig/gcc-8/lab-collabora/boot-exynos5800-peach-pi.txt
  HTML log:   https://storage.kernelci.org//krzysztof/for-next/v5.4-rc1-48-g0bc9c79979ea/arm/multi_v7_defconfig/gcc-8/lab-collabora/boot-exynos5800-peach-pi.html
  Result:     0899a480ac65 ARM: dts: exynos: Add initial data for coupled regulators for Exynos5422/5800

Checks:
  revert:     PASS
  verify:     PASS

Parameters:
  Tree:       krzysztof
  URL:        https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git
  Branch:     for-next
  Target:     peach-pi
  CPU arch:   arm
  Lab:        lab-collabora
  Compiler:   gcc-8
  Config:     multi_v7_defconfig
  Test suite: boot

Breaking commit found:

-------------------------------------------------------------------------------
commit 0899a480ac658144b1fa351bb880c2858d43f824
Author: Marek Szyprowski <m.szyprowski@samsung.com>
Date:   Thu Oct 3 12:08:14 2019 +0200

    ARM: dts: exynos: Add initial data for coupled regulators for Exynos5422/5800
    
    Declare Exynos5422/5800 voltage ranges for opp points for big cpu core and
    bus wcore and couple their voltage supllies as vdd_arm and vdd_int should
    be in 300mV range.
    
    Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
    [k.konieczny: add missing patch description]
    Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
    Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>
    Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index 2c131ad78c09..d08101b1018c 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -48,62 +48,62 @@
 
 		opp-1800000000 {
 			opp-hz = /bits/ 64 <1800000000>;
-			opp-microvolt = <1250000>;
+			opp-microvolt = <1250000 1250000 1500000>;
 			clock-latency-ns = <140000>;
 		};
 		opp-1700000000 {
 			opp-hz = /bits/ 64 <1700000000>;
-			opp-microvolt = <1212500>;
+			opp-microvolt = <1212500 1212500 1500000>;
 			clock-latency-ns = <140000>;
 		};
 		opp-1600000000 {
 			opp-hz = /bits/ 64 <1600000000>;
-			opp-microvolt = <1175000>;
+			opp-microvolt = <1175000 1175000 1500000>;
 			clock-latency-ns = <140000>;
 		};
 		opp-1500000000 {
 			opp-hz = /bits/ 64 <1500000000>;
-			opp-microvolt = <1137500>;
+			opp-microvolt = <1137500 1137500 1500000>;
 			clock-latency-ns = <140000>;
 		};
 		opp-1400000000 {
 			opp-hz = /bits/ 64 <1400000000>;
-			opp-microvolt = <1112500>;
+			opp-microvolt = <1112500 1112500 1500000>;
 			clock-latency-ns = <140000>;
 		};
 		opp-1300000000 {
 			opp-hz = /bits/ 64 <1300000000>;
-			opp-microvolt = <1062500>;
+			opp-microvolt = <1062500 1062500 1500000>;
 			clock-latency-ns = <140000>;
 		};
 		opp-1200000000 {
 			opp-hz = /bits/ 64 <1200000000>;
-			opp-microvolt = <1037500>;
+			opp-microvolt = <1037500 1037500 1500000>;
 			clock-latency-ns = <140000>;
 		};
 		opp-1100000000 {
 			opp-hz = /bits/ 64 <1100000000>;
-			opp-microvolt = <1012500>;
+			opp-microvolt = <1012500 1012500 1500000>;
 			clock-latency-ns = <140000>;
 		};
 		opp-1000000000 {
 			opp-hz = /bits/ 64 <1000000000>;
-			opp-microvolt = < 987500>;
+			opp-microvolt = < 987500 987500 1500000>;
 			clock-latency-ns = <140000>;
 		};
 		opp-900000000 {
 			opp-hz = /bits/ 64 <900000000>;
-			opp-microvolt = < 962500>;
+			opp-microvolt = < 962500 962500 1500000>;
 			clock-latency-ns = <140000>;
 		};
 		opp-800000000 {
 			opp-hz = /bits/ 64 <800000000>;
-			opp-microvolt = < 937500>;
+			opp-microvolt = < 937500 937500 1500000>;
 			clock-latency-ns = <140000>;
 		};
 		opp-700000000 {
 			opp-hz = /bits/ 64 <700000000>;
-			opp-microvolt = < 912500>;
+			opp-microvolt = < 912500 912500 1500000>;
 			clock-latency-ns = <140000>;
 		};
 	};
@@ -1097,23 +1097,23 @@
 
 			opp00 {
 				opp-hz = /bits/ 64 <84000000>;
-				opp-microvolt = <925000>;
+				opp-microvolt = <925000 925000 1400000>;
 			};
 			opp01 {
 				opp-hz = /bits/ 64 <111000000>;
-				opp-microvolt = <950000>;
+				opp-microvolt = <950000 950000 1400000>;
 			};
 			opp02 {
 				opp-hz = /bits/ 64 <222000000>;
-				opp-microvolt = <950000>;
+				opp-microvolt = <950000 950000 1400000>;
 			};
 			opp03 {
 				opp-hz = /bits/ 64 <333000000>;
-				opp-microvolt = <950000>;
+				opp-microvolt = <950000 950000 1400000>;
 			};
 			opp04 {
 				opp-hz = /bits/ 64 <400000000>;
-				opp-microvolt = <987500>;
+				opp-microvolt = <987500 987500 1400000>;
 			};
 		};
 
diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
index 829147e320e0..9b8de61b0385 100644
--- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
@@ -524,6 +524,8 @@
 				regulator-max-microvolt = <1400000>;
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&buck2_reg>;
+				regulator-coupled-max-spread = <300000>;
 
 				regulator-state-mem {
 					regulator-off-in-suspend;
@@ -544,6 +546,8 @@
 				regulator-max-microvolt = <1500000>;
 				regulator-always-on;
 				regulator-boot-on;
+				regulator-coupled-with = <&buck3_reg>;
+				regulator-coupled-max-spread = <300000>;
 
 				regulator-state-mem {
 					regulator-off-in-suspend;
diff --git a/arch/arm/boot/dts/exynos5800-peach-pi.dts b/arch/arm/boot/dts/exynos5800-peach-pi.dts
index 60ca3d685247..c1e38139ce4f 100644
--- a/arch/arm/boot/dts/exynos5800-peach-pi.dts
+++ b/arch/arm/boot/dts/exynos5800-peach-pi.dts
@@ -257,6 +257,8 @@
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-ramp-delay = <12500>;
+				regulator-coupled-with = <&buck3_reg>;
+				regulator-coupled-max-spread = <300000>;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
@@ -269,6 +271,8 @@
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-ramp-delay = <12500>;
+				regulator-coupled-with = <&buck2_reg>;
+				regulator-coupled-max-spread = <300000>;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
diff --git a/arch/arm/boot/dts/exynos5800.dtsi b/arch/arm/boot/dts/exynos5800.dtsi
index de639eecc5c9..27789f5f9798 100644
--- a/arch/arm/boot/dts/exynos5800.dtsi
+++ b/arch/arm/boot/dts/exynos5800.dtsi
@@ -22,61 +22,61 @@
 
 &cluster_a15_opp_table {
 	opp-1700000000 {
-		opp-microvolt = <1250000>;
+		opp-microvolt = <1250000 1250000 1500000>;
 	};
 	opp-1600000000 {
-		opp-microvolt = <1250000>;
+		opp-microvolt = <1250000 1250000 1500000>;
 	};
 	opp-1500000000 {
-		opp-microvolt = <1100000>;
+		opp-microvolt = <1100000 1100000 1500000>;
 	};
 	opp-1400000000 {
-		opp-microvolt = <1100000>;
+		opp-microvolt = <1100000 1100000 1500000>;
 	};
 	opp-1300000000 {
-		opp-microvolt = <1100000>;
+		opp-microvolt = <1100000 1100000 1500000>;
 	};
 	opp-1200000000 {
-		opp-microvolt = <1000000>;
+		opp-microvolt = <1000000 1000000 1500000>;
 	};
 	opp-1100000000 {
-		opp-microvolt = <1000000>;
+		opp-microvolt = <1000000 1000000 1500000>;
 	};
 	opp-1000000000 {
-		opp-microvolt = <1000000>;
+		opp-microvolt = <1000000 1000000 1500000>;
 	};
 	opp-900000000 {
-		opp-microvolt = <1000000>;
+		opp-microvolt = <1000000 1000000 1500000>;
 	};
 	opp-800000000 {
-		opp-microvolt = <900000>;
+		opp-microvolt = <900000 900000 1500000>;
 	};
 	opp-700000000 {
-		opp-microvolt = <900000>;
+		opp-microvolt = <900000 900000 1500000>;
 	};
 	opp-600000000 {
 		opp-hz = /bits/ 64 <600000000>;
-		opp-microvolt = <900000>;
+		opp-microvolt = <900000 900000 1500000>;
 		clock-latency-ns = <140000>;
 	};
 	opp-500000000 {
 		opp-hz = /bits/ 64 <500000000>;
-		opp-microvolt = <900000>;
+		opp-microvolt = <900000 900000 1500000>;
 		clock-latency-ns = <140000>;
 	};
 	opp-400000000 {
 		opp-hz = /bits/ 64 <400000000>;
-		opp-microvolt = <900000>;
+		opp-microvolt = <900000 900000 1500000>;
 		clock-latency-ns = <140000>;
 	};
 	opp-300000000 {
 		opp-hz = /bits/ 64 <300000000>;
-		opp-microvolt = <900000>;
+		opp-microvolt = <900000 900000 1500000>;
 		clock-latency-ns = <140000>;
 	};
 	opp-200000000 {
 		opp-hz = /bits/ 64 <200000000>;
-		opp-microvolt = <900000>;
+		opp-microvolt = <900000 900000 1500000>;
 		clock-latency-ns = <140000>;
 	};
 };
-------------------------------------------------------------------------------


Git bisection log:

-------------------------------------------------------------------------------
git bisect start
# good: [2924a93b4c2b1934c0ec59d28f46814a83259f11] Merge branch 'for-v5.5/memory-samsung-dmc-dt' into for-next
git bisect good 2924a93b4c2b1934c0ec59d28f46814a83259f11
# bad: [0bc9c79979ea0b607a0751968840483fd296f6ef] Merge branch 'for-v5.5/memory-samsung-dmc-dt' into for-next
git bisect bad 0bc9c79979ea0b607a0751968840483fd296f6ef
# bad: [0899a480ac658144b1fa351bb880c2858d43f824] ARM: dts: exynos: Add initial data for coupled regulators for Exynos5422/5800
git bisect bad 0899a480ac658144b1fa351bb880c2858d43f824
# good: [56c126e87e2980d5e2ca5d77b28899f8521af9d7] ARM: dts: exynos: Rename SysRAM node to "sram"
git bisect good 56c126e87e2980d5e2ca5d77b28899f8521af9d7
# first bad commit: [0899a480ac658144b1fa351bb880c2858d43f824] ARM: dts: exynos: Add initial data for coupled regulators for Exynos5422/5800
-------------------------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
