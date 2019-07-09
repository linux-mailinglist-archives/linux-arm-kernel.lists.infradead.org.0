Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16AE8631C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HwefnExSXfprTjW5cp3DkKk1k7f7herxMVv8uifSebk=; b=b95GR5eeRC64fvP+p0t4lPzPDr
	qKHPcpy+kD68pDqXLUh6z63omwZAVfR8HOA1BEHPD+ID625XgU/AUA12DEbQG1SiCFy5pT4iwBtvu
	ZPZP/M7jI5eGjzDrA32ENzT40fCIaVbQdRKmHr8bSnEOL0xk1O/oSy/tdzrlVTfmcLPtqasR+8nyg
	Iz9Sif/qGjrsid78Fl2xdE1uPvDGfuUBcgq25kdHsUrnRtQ3sCWaKw6t4EhNu0AtZ2dgX6WswNxNj
	EquDABCzKILE6Ub9D4FD5K5n6WNXBgPaLThqN5f+XVenkt1rWqTn07TOoMuVuypoV9lxup24M84yw
	r4gXSLcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkQm-000151-OP; Tue, 09 Jul 2019 07:20:52 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkPV-0007T1-1H
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:19:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1562656768; x=1565248768;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NQp0WuZNIK00kO3yS17/LbuLzrs05MUOLARt1ohweH4=;
 b=D4hJBmDJn4jYKLM4Hb9bnTPl4SRsZKS+H5LSeID29SqPmqNENG0+pbKWpBmJ+zg5
 7o8c0T+FF7Mg/Yb/Z5d6OTIWs99MsNF+CztCok1gaa/tBWVyN8rv1siApVL5l4HJ
 0Tzn5HPXL1S5ySXzdVlPMKQeK7Km6nWeVfjpEyQa808=;
X-AuditID: c39127d2-17dff70000001aee-03-5d2440009ef3
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 1A.B0.06894.000442D5;
 Tue,  9 Jul 2019 09:19:28 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019070909192826-309707 ;
 Tue, 9 Jul 2019 09:19:28 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH 04/10] ARM: dts: imx6ul: segin: Fix LED naming for phyCORE and
 PEB-EVAL-01
Date: Tue, 9 Jul 2019 09:19:21 +0200
Message-Id: <1562656767-273566-5-git-send-email-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
References: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 09.07.2019 09:19:28,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 09.07.2019 09:19:28, Serialize complete at 09.07.2019 09:19:28
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrALMWRmVeSWpSXmKPExsWyRoCBS5fBQSXW4PJXbYv5R86xWjy86m+x
 aupOFotNj6+xWnT9WslscXnXHDaLpdcvMlk8uNjFYtG69wi7xd/tm1gsXmwRd+D2WDNvDaPH
 jrtLGD12zrrL7rFpVSebx+Yl9R4b3+1g8uj/a+DxeZNcAEcUl01Kak5mWWqRvl0CV0bD7ztM
 Be38Fd07b7M0MK7n6WLk5JAQMJHoWf+UrYuRi0NIYAejxN03h5ggnAuMEq83fmQFqWITMJJY
 MK2RCcQWEYiUeLf9NztIEbPAHkaJadevM4IkhAWiJG69ecUCYrMIqEjcnPoALM4r4CFxetsD
 Joh1chI3z3Uyg9icAp4SRy/+ArOFgGouL5jGAjJUQqCRSWLxo9OMEA1CEqcXn2WewMi3gJFh
 FaNQbmZydmpRZrZeQUZlSWqyXkrqJkZgqB6eqH5pB2PfHI9DjEwcjIcYJTiYlUR497krxwrx
 piRWVqUW5ccXleakFh9ilOZgURLn3cBbEiYkkJ5YkpqdmlqQWgSTZeLglGpgjBa13zj1xP31
 rRImAneesj77d/3qzHUqUqudF1y+brRqbtnxWeESclPzbrmytC5T49MvbrbW2WbhMU3BoYP7
 kOp1h5gSLwFV7p+24tFTp7Fm+/jsObNhgci9k49rbWovc//79+lZalpo8Bnhl8yzYyq1mA27
 UkTlVyv842f/yXOPwXWfUmWQEktxRqKhFnNRcSIAFmvFoEMCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_001933_224669_B0445F02 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: devicetree@vger.kernel.org, martyn.welch@collabora.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix node name for the user LEDs to prevent the pinctrl of the phyCORE's
leds node from being overwritten. Also use more generic names for user
LEDs.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi       |  3 +--
 arch/arm/boot/dts/imx6ul-phytec-segin-peb-eval-01.dtsi | 16 +++++++++-------
 2 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
index 1b745582911c..73266b4a889b 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
@@ -31,8 +31,7 @@
 		pinctrl-0 = <&pinctrl_gpioleds_som>;
 		compatible = "gpio-leds";
 
-		led_green {
-			label = "phycore:green";
+		phycore-green {
 			gpios = <&gpio5 4 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin-peb-eval-01.dtsi b/arch/arm/boot/dts/imx6ul-phytec-segin-peb-eval-01.dtsi
index e2f38f39a6ad..2f3fd32a1167 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-segin-peb-eval-01.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin-peb-eval-01.dtsi
@@ -21,20 +21,22 @@
 		};
 	};
 
-	user_leds: leds {
+	user_leds: user-leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_user_leds>;
 		status = "disabled";
 
-		led_yellow {
-			gpios = <&gpio1 1 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "default-on";
+		user-led1 {
+			gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "gpio";
+			default-state = "on";
 		};
 
-		led_red {
-			gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "default-on";
+		user-led2 {
+			gpios = <&gpio1 1 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "gpio";
+			default-state = "on";
 		};
 	};
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
