Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C321C49FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 01:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sgsHIeylPAyivGlxy3hI1I0M49KrE3DTNGaCjmFz0z8=; b=VIvS1Xr8Ylj1w7
	RH1AupaUv8ZOSTu9d7oMy1+wuCeWV95oJygiUShePLdoCMlPOmFdJk0fxKR+xMs8mrVQVZzh+rbnW
	8y+sh2TVpoqkGm3t8V1gNDpyn/Yj9s0PP5UJd9STRjJJxOHjTSXXsUP8RMucfa5MwPnuySgnaHkqR
	8VIkAgDl//KWXYum3w2I0dfPYSO0g0olkUpNlmetxwb2EpX3Ss8SlQ+sLdFtKfbuoa0uz7vd2irOY
	vD+zQyCOyk6ROKilv3OLbdwRAwmYHZHA8NhOvhlUpt/03TuSJpFF5t9Ch4Au0EnNime8tFTKy1uAe
	NVUyJeSd/RmccrUREevA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVk5M-0001kI-JQ; Mon, 04 May 2020 23:01:16 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVk5F-0001jp-T2
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 23:01:11 +0000
Received: by mail-qv1-xf41.google.com with SMTP id ep1so134596qvb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 16:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Sr2MDEt6KTuLtYqratJ8mWzr8mlifnfhPq/CL0zWop0=;
 b=FlwWcvg9JATvZF1AiaebjBtK/ym7D4Bog8N4mqTbq6ShO/0lbBn9K8SPEP1uiYhlId
 k2XGfSPfPLsj+L/YUoI10NK+dgGXf/dSgsG39BgaGr3wNgMW75olQbUG2PTI+S3FIDxt
 yfU277GFGAMw0aMOlSwIqjnql1nEohR/wHT+JZrSHx/HhqiSsRCWGNKLtRyelECFqR+Q
 t9Kkd1AEjzHUan37m6F9A7H44bVkXil37Y/C7BswLzbJ7ea18mP+yc1l1TnrEIgiGW5P
 0OKmfjcU62lPY4FRqfb/jOHGOjjcs/BG3nremQITg/ggc2wgRJIydWpZHwY55wbpVn2f
 oFeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Sr2MDEt6KTuLtYqratJ8mWzr8mlifnfhPq/CL0zWop0=;
 b=ZsIWXxMxqZwcqfNNYCMYWpQqXxDzSP1pQCWA0qi5Z85lp0NXw4s3n0bxzBQTJJ26L2
 JxRqwchRjq9zVvaLjPKcHSB/qpejU6rrj1tjS12bwDdKWYiYqqboszS73fRC5hqAsY4H
 nOvKyhls/gOjBasrKLT6RBrBc9VO+3Vh6uKS8K0WcQ0C7x4BjeWD/NaBFq15pPYiGTz0
 1JW6Dhvl+g4d8XSmtaL+fGkj1lZeRAmOnIAg8Z/8inQs8F/k0WFPqApFw9U3DBH0sBl0
 NjhLBQxAWRiu+1IiPwaTC1nvp8EcpWkmZAX82s66vNAzq+Oz0yLF3CwAlYWCRykc6wXQ
 iB6A==
X-Gm-Message-State: AGi0PuYkhutXvjzriMZAfLXA4dgWwNYTDF/G82QwR4nRLOiTROn/F/Bd
 uBfFjzT2795DEalIPNYvkgE=
X-Google-Smtp-Source: APiQypIVxS1ZIQaiYcUAl5sFUkEiZNgxETDeUp0tZtSJbCo+IbcMpby88HQvA+T3XfJ/ITLv9gzlmQ==
X-Received: by 2002:a0c:e6c2:: with SMTP id l2mr363898qvn.91.1588633268281;
 Mon, 04 May 2020 16:01:08 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id f68sm441126qke.74.2020.05.04.16.01.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 16:01:07 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] ARM: dts: omap3: Migrate AES from hwmods to sysc-omap2
Date: Mon,  4 May 2020 18:01:00 -0500
Message-Id: <20200504230100.181926-1-aford173@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_160109_938805_5B0147B6 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

diff --git a/arch/arm/boot/dts/omap3.dtsi b/arch/arm/boot/dts/omap3.dtsi
index adcdf88717a3..376628b32f77 100644
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
+				dmas = <&sdma 65 &sdma 66>;
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
