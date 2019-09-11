Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78754B02F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 19:48:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EBlFcSCiKUja4hhCs+m+2EzPeqljj/UOv9gt0V6/26M=; b=G/mFH1Gr90xpG0
	ywM47YmuAQ8mgdMdKbS0dDSj2QI3+oGSWbqDri0yE7r5KhGUIF8dEvtv6JpGPPt21xr0Zl6eMxKPv
	ZKAip3AEGfPgzdMcg/E41MWNNeN+qbyX83BWaV3rDVjRbOP3yYtKLiv0mqWGr7SKqrn2c6rwmVlhM
	5/mUyukEOEZ2juaVagg1H4n25OSawbZNve2qi9c4MmmSribv6qPeiFb0fNLonAy37vSRWDOPLxHEK
	oJpGsnRwoe52B/V0PPji4ftT6ShUMx081+qQ2D1pNfW4Nqq8ZHpwmRucn2NMq/UvVjBZYNP9HfciM
	PCheEVbOD/fSOSPr1hjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i86jB-0007hB-Co; Wed, 11 Sep 2019 17:48:25 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i86i9-0006wY-K3
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 17:47:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1568224036;
 s=strato-dkim-0002; d=goldelico.com;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=2vCJXBJWGT8dj4zKn7AqyYoFOW3IxPl79st+LGBSId4=;
 b=GuHnN3ll/xqCToEfS8zsh067D21pbcfIWTys0e5VFgy+Yulwc7ld6GW10jHIvjOZ/g
 /s3foxLktPjUvJHoOVin/laILP/eDYhFWQKPrq1Fh3UYXP7Ps/YIN9x0rzNRvxrttn48
 G9y90huA7svU0L0s/1IFCE9Ngwhhzdxp4IsHT5IrP6INjSTLeXxzZwI04gIP5Hb6anSJ
 GFfcNLbtzfoUZC/rl3Mmtm4oLG2MQnH+Txeogt4oBRYpa54Vhz5O0cYGt4+57SqKEtqL
 LO/AwZaCTaru7XlvPPKQWr//G6RlT20TlBJno/Ajjmlj//4Qx8z4mEG59IulIrta/+HK
 c1CQ==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o1OAA2UNf2M7Nk1d2C6Y"
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 44.27.0 DYNA|AUTH)
 with ESMTPSA id u036f9v8BHlG8ns
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Wed, 11 Sep 2019 19:47:16 +0200 (CEST)
From: "H. Nikolaus Schaller" <hns@goldelico.com>
To: =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
 Adam Ford <aford173@gmail.com>,
 =?UTF-8?q?Andr=C3=A9=20Roth?= <neolynx@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Enric Balletbo i Serra <eballetbo@gmail.com>,
 Javier Martinez Canillas <javier@dowhile0.org>,
 Roger Quadros <rogerq@ti.com>, Teresa Remmet <t.remmet@phytec.de>,
 "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: [PATCH v3 2/8] ARM: dts: omap34xx & omap36xx: replace opp-v1 tables
 by opp-v2 for
Date: Wed, 11 Sep 2019 19:47:08 +0200
Message-Id: <5b3cebcc745d20bcbf06e548f8e5665e083b5474.1568224033.git.hns@goldelico.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1568224032.git.hns@goldelico.com>
References: <cover.1568224032.git.hns@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_104722_085856_AED404FF 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:6 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@pyra-handheld.com, letux-kernel@openphoenux.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the driver installed, we can change the opp-v1 table format
to opp-v2.

In addition, move omap3 from whitelist to blacklist in cpufreq-dt-platdev
in the same patch, because doing either first breaks operation and
may make trouble in bisect.

We also can remove opp-v1 table for omap3-n950-n9 since its 1GHz
capability is now automatically detected.

We also fix a wrong OPP4 voltage for omap3430 which must be
0.6V + 54*12.5mV = 1275mV. Otherwise the twl4030 driver will reject
this OPP.

Note: the high speed OPPs that were not available in the opp-v1 tables
are tagged "turbo-mode;" which means they are not automatically
activated by the govenors or cpu-freq.

To enable you have to write

echo 1 >/sys/devices/system/cpu/cpufreq/boost

Note: to hard disable an OPP in a board.dts file use e.g.

&cpu0_opp_table: {
	/delete-node/ opp1g-1000000000;	/* do not use */
};

or alternatively:

&cpu0_opp_table: {
	opp1g-1000000000 {
		status = "disabled";	/* do not use */
	};
};

Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
Acked-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/omap3-n950-n9.dtsi |  7 ---
 arch/arm/boot/dts/omap34xx.dtsi      | 66 ++++++++++++++++++++++++----
 arch/arm/boot/dts/omap36xx.dtsi      | 54 +++++++++++++++++++----
 drivers/cpufreq/cpufreq-dt-platdev.c |  2 +-
 4 files changed, 104 insertions(+), 25 deletions(-)

diff --git a/arch/arm/boot/dts/omap3-n950-n9.dtsi b/arch/arm/boot/dts/omap3-n950-n9.dtsi
index 5441e9ffdbb4..e98b0c615f19 100644
--- a/arch/arm/boot/dts/omap3-n950-n9.dtsi
+++ b/arch/arm/boot/dts/omap3-n950-n9.dtsi
@@ -11,13 +11,6 @@
 	cpus {
 		cpu@0 {
 			cpu0-supply = <&vcc>;
-			operating-points = <
-				/* kHz    uV */
-				300000  1012500
-				600000  1200000
-				800000  1325000
-				1000000	1375000
-			>;
 		};
 	};
 
diff --git a/arch/arm/boot/dts/omap34xx.dtsi b/arch/arm/boot/dts/omap34xx.dtsi
index f572a477f74c..1d2737c0ba27 100644
--- a/arch/arm/boot/dts/omap34xx.dtsi
+++ b/arch/arm/boot/dts/omap34xx.dtsi
@@ -16,19 +16,67 @@
 / {
 	cpus {
 		cpu: cpu@0 {
-			/* OMAP343x/OMAP35xx variants OPP1-5 */
-			operating-points = <
-				/* kHz    uV */
-				125000   975000
-				250000  1075000
-				500000  1200000
-				550000  1270000
-				600000  1350000
-			>;
+			/* OMAP343x/OMAP35xx variants OPP1-6 */
+			operating-points-v2 = <&cpu0_opp_table>;
+
 			clock-latency = <300000>; /* From legacy driver */
 		};
 	};
 
+	/* see Documentation/devicetree/bindings/opp/opp.txt */
+	cpu0_opp_table: opp-table {
+		compatible = "operating-points-v2-ti-cpu";
+		syscon = <&scm_conf>;
+
+		opp1-125000000 {
+			opp-hz = /bits/ 64 <125000000>;
+			/*
+			 * we currently only select the max voltage from table
+			 * Table 3-3 of the omap3530 Data sheet (SPRS507F).
+			 * Format is: <target min max>
+			 */
+			opp-microvolt = <975000 975000 975000>;
+			/*
+			 * first value is silicon revision bit mask
+			 * second one 720MHz Device Identification bit mask
+			 */
+			opp-supported-hw = <0xffffffff 3>;
+		};
+
+		opp2-250000000 {
+			opp-hz = /bits/ 64 <250000000>;
+			opp-microvolt = <1075000 1075000 1075000>;
+			opp-supported-hw = <0xffffffff 3>;
+			opp-suspend;
+		};
+
+		opp3-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <1200000 1200000 1200000>;
+			opp-supported-hw = <0xffffffff 3>;
+		};
+
+		opp4-550000000 {
+			opp-hz = /bits/ 64 <550000000>;
+			opp-microvolt = <1275000 1275000 1275000>;
+			opp-supported-hw = <0xffffffff 3>;
+		};
+
+		opp5-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <1350000 1350000 1350000>;
+			opp-supported-hw = <0xffffffff 3>;
+		};
+
+		opp6-720000000 {
+			opp-hz = /bits/ 64 <720000000>;
+			opp-microvolt = <1350000 1350000 1350000>;
+			/* only high-speed grade omap3530 devices */
+			opp-supported-hw = <0xffffffff 2>;
+			turbo-mode;
+		};
+	};
+
 	ocp@68000000 {
 		omap3_pmx_core2: pinmux@480025d8 {
 			compatible = "ti,omap3-padconf", "pinctrl-single";
diff --git a/arch/arm/boot/dts/omap36xx.dtsi b/arch/arm/boot/dts/omap36xx.dtsi
index 6fb23ada1f64..cb5bd0969124 100644
--- a/arch/arm/boot/dts/omap36xx.dtsi
+++ b/arch/arm/boot/dts/omap36xx.dtsi
@@ -19,15 +19,53 @@
 	};
 
 	cpus {
-		/* OMAP3630/OMAP37xx 'standard device' variants OPP50 to OPP130 */
+		/* OMAP3630/OMAP37xx variants OPP50 to OPP130 and OPP1G */
 		cpu: cpu@0 {
-			operating-points = <
-				/* kHz    uV */
-				300000  1012500
-				600000  1200000
-				800000  1325000
-			>;
-			clock-latency = <300000>; /* From legacy driver */
+			operating-points-v2 = <&cpu0_opp_table>;
+
+			clock-latency = <300000>; /* From omap-cpufreq driver */
+		};
+	};
+
+	/* see Documentation/devicetree/bindings/opp/opp.txt */
+	cpu0_opp_table: opp-table {
+		compatible = "operating-points-v2-ti-cpu";
+		syscon = <&scm_conf>;
+
+		opp50-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			/*
+			 * we currently only select the max voltage from table
+			 * Table 4-19 of the DM3730 Data sheet (SPRS685B)
+			 * Format is: <target min max>
+			 */
+			opp-microvolt = <1012500 1012500 1012500>;
+			/*
+			 * first value is silicon revision bit mask
+			 * second one is "speed binned" bit mask
+			 */
+			opp-supported-hw = <0xffffffff 3>;
+			opp-suspend;
+		};
+
+		opp100-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <1200000 1200000 1200000>;
+			opp-supported-hw = <0xffffffff 3>;
+		};
+
+		opp130-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <1325000 1325000 1325000>;
+			opp-supported-hw = <0xffffffff 3>;
+		};
+
+		opp1g-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = <1375000 1375000 1375000>;
+			/* only on am/dm37x with speed-binned bit set */
+			opp-supported-hw = <0xffffffff 2>;
+			turbo-mode;
 		};
 	};
 
diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
index 03dc4244ab00..68b7fc4225f8 100644
--- a/drivers/cpufreq/cpufreq-dt-platdev.c
+++ b/drivers/cpufreq/cpufreq-dt-platdev.c
@@ -86,7 +86,6 @@ static const struct of_device_id whitelist[] __initconst = {
 	{ .compatible = "st-ericsson,u9540", },
 
 	{ .compatible = "ti,omap2", },
-	{ .compatible = "ti,omap3", },
 	{ .compatible = "ti,omap4", },
 	{ .compatible = "ti,omap5", },
 
@@ -132,6 +131,7 @@ static const struct of_device_id blacklist[] __initconst = {
 	{ .compatible = "ti,am33xx", },
 	{ .compatible = "ti,am43", },
 	{ .compatible = "ti,dra7", },
+	{ .compatible = "ti,omap3", },
 
 	{ }
 };
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
