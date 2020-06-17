Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E271FCB8D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ST1jDXab0+zHdZu0mch6bCwgySWp2jBEJcwEskHdLDs=; b=jEGRf+XHXw4wzU
	Gi1t1nHYYU+jij2wfTvFgxVjxWLlMToK1lJDN1gJprjXwn62m/QxFTeHmE5mhgAtumBbmNXCRoO1C
	04zqhgCHfpRW0yO31LfStRCHqsAxMQ2M9mIMOStr7MTxoVnZwnrGGvBxv/CQ3oMdKKPfZDPTVid8W
	fbcBe5AAFjrnbx5Mz5XumOzeWiT+V9xVdzlG/9MmAMSJ3f8+LBe97qPz1rJV2jwYuytryUx1cQ/Xe
	V5bU/OLxB/8xGvT2/A45/WQjvDBpCxIAwQlnsLTs4ATojaclNUY+IY0yIM/qFQtBuW857YGZKTJsE
	f0VeaQJBZ9V+NVr7LPqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlVmZ-00015y-5q; Wed, 17 Jun 2020 10:59:03 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlVmO-00014u-Jh
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 10:58:54 +0000
Received: by mail-io1-xd41.google.com with SMTP id i25so2262627iog.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 03:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cxVn3H7ApYz8vWif68BPp34H///ZtB/ukWPL5m2+yH4=;
 b=fP8lJR6BfimMtJ+TIxIyO7j0peG6PnIG1Up4/NdSC55WGXsK+lQkOHobB1WulLYmJ/
 EJIzoxKpozvEwYSXXYp+LmtivDLQKBO+jY+0D70whboDt9CG7TH6RxsQ28uNkwHbwZSO
 SPzkunITyA96XCitL0xEwUVvTZYNOYCMZQfsPViVWCtouMG0NsM7tcqpPyKUdYD1C6kP
 2ezfkC04p/MUfGqTgulR1dX/RItTN+ApL0ZSF5cO4kEhsQ8SKtZv7xA/nUpYDBOAC5hP
 pjD1tsorsfMOEGsnJrb56TWUpbLd6Coc/SihVgnW+Zag60GnJIEYtcFtzQCx4/M/JSSq
 Qh5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cxVn3H7ApYz8vWif68BPp34H///ZtB/ukWPL5m2+yH4=;
 b=pDf2jjEMuWcleUMN2fdqYXMQ4UDrAs2F+leqeHJpjOrVj0eekDvE68t8PEPZezc9Ln
 nZ0WGkpHm7Fw4JDSjmA+KMthezL2W9B9tHdJiiNL+5TRzoZsx+ed57+SbBwk77gNk/lY
 OVtewjWYR6EslrH8TQXvhxRdBjlZ8Q5PTeiUDaVE+OpMb4t0Qk4VSvsAkXC9nOL5BELr
 x/hJHdUmy2UunmZn2ICU8+Qa1G+sl/UaE9xZSR0pdWN+bFpxDF6zn/npp7VCrrGQ21ZA
 QcEDuiu2TblVtfZH6f+u6M4z/7XJR9OUhktMjT4xEmEAK9f7ErTFs2EaUv6cDSb5KlMu
 6gxw==
X-Gm-Message-State: AOAM5321wexIGE+oRDNNGd1sFYDGWdzpwPUSLJCALbL2liUYr2kD8GP8
 Zc4ZyOPkK+kHhN7o4IFxvb0=
X-Google-Smtp-Source: ABdhPJymwEQ9s0x9W06dBJhzO3V7m55SUhpi5g3msQyqJQ/h5l0aiAdHsG8drY69Uf0/zhy1Lf5/Ug==
X-Received: by 2002:a05:6638:5b9:: with SMTP id
 b25mr29016622jar.68.1592391531332; 
 Wed, 17 Jun 2020 03:58:51 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id n17sm11166274ilq.13.2020.06.17.03.58.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 03:58:50 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] ARM: dts: omap3: Migrate AES from hwmods to sysc-omap2
Date: Wed, 17 Jun 2020 05:58:40 -0500
Message-Id: <20200617105840.22138-1-aford173@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_035852_646515_B898CB80 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Paul Walmsley <paul@pwsan.com>,
 Tony Lindgren <tony@atomide.com>, linux-kernel@vger.kernel.org,
 aford@beaconembedded.com, Russell King <linux@armlinux.org.uk>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Various OMAP3 boards have two AES blocks, but only one is currently
available, because the hwmods are only configured for one.

This patch migrates the hwmods for the AES engine to sysc-omap2
which allows the second AES crypto engine to become available.

  omap-aes 480a6000.aes1: OMAP AES hw accel rev: 2.6
  omap-aes 480a6000.aes1: will run requests pump with realtime priority
  omap-aes 480c5000.aes2: OMAP AES hw accel rev: 2.6
  omap-aes 480c5000.aes2: will run requests pump with realtime priority

Signed-off-by: Adam Ford <aford173@gmail.com>
---
V2:  Fix DMA for AES1, and remove from AM3517.

diff --git a/arch/arm/boot/dts/am3517.dtsi b/arch/arm/boot/dts/am3517.dtsi
index dc8927f14b6c..6be310968c3a 100644
--- a/arch/arm/boot/dts/am3517.dtsi
+++ b/arch/arm/boot/dts/am3517.dtsi
@@ -10,6 +10,9 @@
 
 #include "omap3.dtsi"
 
+/* AM3517 doesn't appear to have the crypto engines defined in omap3.dtsi */
+/delete-node/ &aes1_target;
+
 / {
 	aliases {
 		serial3 = &uart4;
diff --git a/arch/arm/boot/dts/omap3.dtsi b/arch/arm/boot/dts/omap3.dtsi
index 1296d0643943..6e874ed64009 100644
--- a/arch/arm/boot/dts/omap3.dtsi
+++ b/arch/arm/boot/dts/omap3.dtsi
@@ -157,13 +157,56 @@ omap3_pmx_wkup: pinmux@a00 {
 			};
 		};
 
-		aes: aes@480c5000 {
-			compatible = "ti,omap3-aes";
-			ti,hwmods = "aes";
-			reg = <0x480c5000 0x50>;
-			interrupts = <0>;
-			dmas = <&sdma 65 &sdma 66>;
-			dma-names = "tx", "rx";
+		aes1_target: target-module@480a6000 {
+			compatible = "ti,sysc-omap2", "ti,sysc";
+			reg = <0x480a6044 0x4>,
+			      <0x480a6048 0x4>,
+			      <0x480a604c 0x4>;
+			reg-names = "rev", "sysc", "syss";
+			ti,sysc-mask = <(SYSC_OMAP2_AUTOIDLE)>;
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>;
+			ti,syss-mask = <1>;
+			clocks = <&aes1_ick>;
+			clock-names = "ick";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0x480a6000 0x2000>;
+
+			aes1: aes1@0 {
+				compatible = "ti,omap3-aes";
+				reg = <0 0x50>;
+				interrupts = <0>;
+				dmas = <&sdma 9 &sdma 10>;
+				dma-names = "tx", "rx";
+			};
+		};
+
+		aes2_target: target-module@480c5000 {
+			compatible = "ti,sysc-omap2", "ti,sysc";
+			reg = <0x480c5044 0x4>,
+			      <0x480c5048 0x4>,
+			      <0x480c504c 0x4>;
+			reg-names = "rev", "sysc", "syss";
+			ti,sysc-mask = <(SYSC_OMAP2_AUTOIDLE)>;
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>;
+			ti,syss-mask = <1>;
+			clocks = <&aes2_ick>;
+			clock-names = "ick";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0x480c5000 0x2000>;
+
+			aes2: aes2@0 {
+				compatible = "ti,omap3-aes";
+				reg = <0 0x50>;
+				interrupts = <0>;
+				dmas = <&sdma 65 &sdma 66>;
+				dma-names = "tx", "rx";
+			};
 		};
 
 		prm: prm@48306000 {
diff --git a/arch/arm/mach-omap2/omap_hwmod_3xxx_data.c b/arch/arm/mach-omap2/omap_hwmod_3xxx_data.c
index ca02f91237e3..b6c7d98a9eff 100644
--- a/arch/arm/mach-omap2/omap_hwmod_3xxx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_3xxx_data.c
@@ -2342,44 +2342,6 @@ static struct omap_hwmod_ocp_if omap3xxx_l4_core__sham = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l4_core -> AES */
-static struct omap_hwmod_class_sysconfig omap3_aes_sysc = {
-	.rev_offs	= 0x44,
-	.sysc_offs	= 0x48,
-	.syss_offs	= 0x4c,
-	.sysc_flags	= (SYSC_HAS_SIDLEMODE | SYSC_HAS_SOFTRESET |
-			   SYSC_HAS_AUTOIDLE | SYSS_HAS_RESET_STATUS),
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART),
-	.sysc_fields	= &omap3xxx_aes_sysc_fields,
-};
-
-static struct omap_hwmod_class omap3xxx_aes_class = {
-	.name	= "aes",
-	.sysc	= &omap3_aes_sysc,
-};
-
-
-static struct omap_hwmod omap3xxx_aes_hwmod = {
-	.name		= "aes",
-	.main_clk	= "aes2_ick",
-	.prcm		= {
-		.omap2 = {
-			.module_offs = CORE_MOD,
-			.idlest_reg_id = 1,
-			.idlest_idle_bit = OMAP3430_ST_AES2_SHIFT,
-		},
-	},
-	.class		= &omap3xxx_aes_class,
-};
-
-
-static struct omap_hwmod_ocp_if omap3xxx_l4_core__aes = {
-	.master		= &omap3xxx_l4_core_hwmod,
-	.slave		= &omap3xxx_aes_hwmod,
-	.clk		= "aes2_ick",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /*
  * 'ssi' class
  * synchronous serial interface (multichannel and full-duplex serial if)
@@ -2473,20 +2435,11 @@ static struct omap_hwmod_ocp_if *omap34xx_sham_hwmod_ocp_ifs[] __initdata = {
 	NULL,
 };
 
-static struct omap_hwmod_ocp_if *omap34xx_aes_hwmod_ocp_ifs[] __initdata = {
-	&omap3xxx_l4_core__aes,
-	NULL,
-};
-
 static struct omap_hwmod_ocp_if *omap36xx_sham_hwmod_ocp_ifs[] __initdata = {
 	&omap3xxx_l4_core__sham,
 	NULL
 };
 
-static struct omap_hwmod_ocp_if *omap36xx_aes_hwmod_ocp_ifs[] __initdata = {
-	&omap3xxx_l4_core__aes,
-	NULL
-};
 
 /*
  * Apparently the SHA/MD5 and AES accelerator IP blocks are
@@ -2501,11 +2454,6 @@ static struct omap_hwmod_ocp_if *am35xx_sham_hwmod_ocp_ifs[] __initdata = {
 	NULL
 };
 
-static struct omap_hwmod_ocp_if *am35xx_aes_hwmod_ocp_ifs[] __initdata = {
-	/* &omap3xxx_l4_core__aes, */
-	NULL,
-};
-
 /* 3430ES1-only hwmod links */
 static struct omap_hwmod_ocp_if *omap3430es1_hwmod_ocp_ifs[] __initdata = {
 	&omap3430es1_dss__l3,
@@ -2641,7 +2589,6 @@ int __init omap3xxx_hwmod_init(void)
 {
 	int r;
 	struct omap_hwmod_ocp_if **h = NULL, **h_sham = NULL;
-	struct omap_hwmod_ocp_if **h_aes = NULL;
 	struct device_node *bus;
 	unsigned int rev;
 
@@ -2664,16 +2611,13 @@ int __init omap3xxx_hwmod_init(void)
 	    rev == OMAP3430_REV_ES3_1 || rev == OMAP3430_REV_ES3_1_2) {
 		h = omap34xx_hwmod_ocp_ifs;
 		h_sham = omap34xx_sham_hwmod_ocp_ifs;
-		h_aes = omap34xx_aes_hwmod_ocp_ifs;
 	} else if (rev == AM35XX_REV_ES1_0 || rev == AM35XX_REV_ES1_1) {
 		h = am35xx_hwmod_ocp_ifs;
 		h_sham = am35xx_sham_hwmod_ocp_ifs;
-		h_aes = am35xx_aes_hwmod_ocp_ifs;
 	} else if (rev == OMAP3630_REV_ES1_0 || rev == OMAP3630_REV_ES1_1 ||
 		   rev == OMAP3630_REV_ES1_2) {
 		h = omap36xx_hwmod_ocp_ifs;
 		h_sham = omap36xx_sham_hwmod_ocp_ifs;
-		h_aes = omap36xx_aes_hwmod_ocp_ifs;
 	} else {
 		WARN(1, "OMAP3 hwmod family init: unknown chip type\n");
 		return -EINVAL;
@@ -2696,11 +2640,6 @@ int __init omap3xxx_hwmod_init(void)
 			goto put_node;
 	}
 
-	if (h_aes && omap3xxx_hwmod_is_hs_ip_block_usable(bus, "aes")) {
-		r = omap_hwmod_register_links(h_aes);
-		if (r < 0)
-			goto put_node;
-	}
 	of_node_put(bus);
 
 	/*
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
