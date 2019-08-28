Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDB4A057D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 17:01:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4kGSOELVlNM4TpOV1kaFxL2ozeKR3sy8E81Rf9wCxn8=; b=RM2
	iSNO6oYi3XBl1lqrbhkBe7/QR22PBDiUKhCxg5zqNLfsujVswGg4SSEcIliZQRddutrlPDJfPxmhI
	RQl3Gq6T8PbzyvYgOhyBZDUEKTbxg5DAULIKMGEIioVighUloFi6DwjgNaSZrj3X3Og9C/LIqhkYU
	7FIi/OsBfayhl7BP9w2Nuo2HwtMhxulU09d1ov7xzINeD4BIsGKmxD1sIq7RXqlnERVkxq67slZdp
	RGLdln35ysd29SxIOAYmqy/mH9OFF1IwxBeSOqAfFPgqhYhABaMFiG+88Bkox6xDb0tvMgafM816u
	xTB4eyLBQIvJry/LrTA4HsCcEE7rqrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2zS0-0002AC-Ew; Wed, 28 Aug 2019 15:01:32 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2zRq-000294-I0
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 15:01:24 +0000
Received: by mail-io1-xd41.google.com with SMTP id e20so104443iob.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 08:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=I02anmGj4S9YRqFAlcHCi6doUcoEtL7IRdbmX6PMidk=;
 b=W937E6M1/3aGD86pktze21hmWXVXnR5Q1jTQYOIHz1ME1/HCzrY4VoLPr5bXDtptJM
 l0G6n8SS33Mt41/3NqSVimzOzaiY0ANI2qstCIZWvakBAlcoP8hjPT1DDEyGaiA2QagU
 UzzcpZ5i3UKA8PAIn10G2nT0JEhoadrZCz2kGZ+uiAZygn3yuDmE1nOoX6E1VOethwtK
 SmziPGXcE/lAKu8nANcYsI1cezKhsmDfl1nxPTtn0IUOkmZmNBvLj4iSxGmPY1HyDlWN
 MllmQVzai4Fo2qjjLQx8duDt0QjTJ+6tUF8BPjUKEgRq4ypEJd+K+oF5ew4jsCp9kgvK
 Xwiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=I02anmGj4S9YRqFAlcHCi6doUcoEtL7IRdbmX6PMidk=;
 b=S7j9vm7LUWnurie2nKWQx8OVc1Bug3fbbX6SbXPQ1BX2NaOeL28NFL3cyJciWl/FtQ
 //60MBNH2DED+leEU9oYshVTNVOCu/9INrsND1OomqWkPOHcA06/zBj9DL1e7uii61QH
 bZlp2ensWlOs2lkW5hFRWpOW78YSdoLlqiFZ7/nUACbBu4qcUsCSsTgfh+27vU0m4ddw
 4k+47CwkE51v5aeSCulW3L+EI0hZZp1oTHzR1eblUAgAj42DZydn49EYIEsv9CqdyfHr
 NUfp+wrqQOEG0TqNpyZCtznWn/sDfit1PX+Vd48oPiibZQlIEJ431UbAL+eznNoQPg3y
 Wk7g==
X-Gm-Message-State: APjAAAUKxJTLrm9YFj6ajHqax49DZwqDY7y3GYz9A+4bN9V9Z2DHfBOe
 kCWr3+bgi8sjIFTPEgJYdUI=
X-Google-Smtp-Source: APXvYqx5Aj1D6vL8dP3t9chNG93WuIFnEzdvfmVcbvK2YhKl8QfZue87AJSXNER131BK/7+PXrFCFQ==
X-Received: by 2002:a5e:c101:: with SMTP id v1mr4819198iol.231.1567004475549; 
 Wed, 28 Aug 2019 08:01:15 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id i10sm2291519ioq.51.2019.08.28.08.01.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 08:01:14 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-omap@vger.kernel.org
Subject: [RFC] ARM: omap3: Enable HWMODS for HW Random Number Generator
Date: Wed, 28 Aug 2019 10:00:37 -0500
Message-Id: <20190828150037.2640-1-aford173@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_080122_601939_CB559BE9 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Paul Walmsley <paul@pwsan.com>, aaro.koskinen@iki.fi,
 Tony Lindgren <tony@atomide.com>, adam.ford@logicpd.com,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 pali.rohar@gmail.com, Adam Ford <aford173@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The datasheet for the AM3517 shows the RNG is connected to L4.
It shows the module address for the RNG is 0x480A0000, and it
matches the omap2.dtsi description.  Since the driver can support
omap2 and omap4, it seems reasonable to assume the omap3 would
use the same core for the RNG.

This RFC, mimics much of the omap2 hwmods on the OMAP3. It
also adds the necessary clock for driving the RNG.  Unfortunately,
it appears non-functional.  If anyone has any suggestions on how
to finish the hwmod (or port it to the newer l4 device tree
format), feedback is requested.

Currently the hwmods repond as follows:

[    0.245697] omap_hwmod: rng: _wait_target_ready failed: -22
[    0.245727] omap_hwmod: rng: cannot be enabled for reset (3)
[    6.780792] omap_hwmod: rng: _wait_target_ready failed: -22

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm/boot/dts/omap36xx-omap3430es2plus-clocks.dtsi b/arch/arm/boot/dts/omap36xx-omap3430es2plus-clocks.dtsi
index 945537aee3ca..05891dff7fa1 100644
--- a/arch/arm/boot/dts/omap36xx-omap3430es2plus-clocks.dtsi
+++ b/arch/arm/boot/dts/omap36xx-omap3430es2plus-clocks.dtsi
@@ -189,7 +189,7 @@
 			 <&mcspi2_ick>, <&mcspi1_ick>, <&i2c3_ick>, <&i2c2_ick>,
 			 <&i2c1_ick>, <&uart2_ick>, <&uart1_ick>, <&gpt11_ick>,
 			 <&gpt10_ick>, <&mcbsp5_ick>, <&mcbsp1_ick>,
-			 <&omapctrl_ick>, <&aes2_ick>, <&sha12_ick>,
+			 <&omapctrl_ick>, <&aes2_ick>, <&sha12_ick>, <&rng_ick>,
 			 <&ssi_ick>;
 	};
 };
diff --git a/arch/arm/mach-omap2/cm-regbits-34xx.h b/arch/arm/mach-omap2/cm-regbits-34xx.h
index 037529a9e969..82330a66e35c 100644
--- a/arch/arm/mach-omap2/cm-regbits-34xx.h
+++ b/arch/arm/mach-omap2/cm-regbits-34xx.h
@@ -17,6 +17,7 @@
 #define OMAP3430_CLKACTIVITY_IVA2_MASK			(1 << 0)
 #define OMAP3430_CLKTRCTRL_MPU_MASK			(0x3 << 0)
 #define OMAP3430_ST_AES2_SHIFT				28
+#define OMAP34XX_ST_RNG_SHIFT                           2
 #define OMAP3430_ST_SHA12_SHIFT				27
 #define AM35XX_ST_UART4_SHIFT				23
 #define OMAP3430_ST_HDQ_SHIFT				22
diff --git a/arch/arm/mach-omap2/omap_hwmod_3xxx_data.c b/arch/arm/mach-omap2/omap_hwmod_3xxx_data.c
index f52438bdfc14..bae4487383b6 100644
--- a/arch/arm/mach-omap2/omap_hwmod_3xxx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_3xxx_data.c
@@ -1627,6 +1627,42 @@ static struct omap_hwmod omap3xxx_gpmc_hwmod = {
 	.flags		= HWMOD_NO_IDLEST | DEBUG_OMAP_GPMC_HWMOD_FLAGS,
 };
 
+/* RNG */
+
+static struct omap_hwmod_class_sysconfig omap3_rng_sysc = {
+	.rev_offs	= 0x3c,
+	.sysc_offs	= 0x40,
+	.syss_offs	= 0x44,
+	.sysc_flags	= (SYSC_HAS_SOFTRESET | SYSC_HAS_AUTOIDLE |
+			   SYSS_HAS_RESET_STATUS),
+	.sysc_fields	= &omap_hwmod_sysc_type1,
+};
+
+static struct omap_hwmod_class omap3_rng_hwmod_class = {
+	.name		= "rng",
+	.sysc		= &omap3_rng_sysc,
+};
+
+struct omap_hwmod omap3xxx_rng_hwmod = {
+	.name		= "rng",
+	.main_clk	= "rng_ick",
+	.prcm		= {
+		.omap2 = {
+			.module_offs = CORE_MOD,
+			.idlest_reg_id = 4,
+			.idlest_idle_bit = OMAP34XX_ST_RNG_SHIFT,
+		},
+	},
+	/*
+	 * XXX The first read from the SYSSTATUS register of the RNG
+	 * after the SYSCONFIG SOFTRESET bit is set triggers an
+	 * imprecise external abort.  It's unclear why this happens.
+	 * Until this is analyzed, skip the IP block reset.
+	 */
+	.flags		= HWMOD_INIT_NO_RESET,
+	.class		= &omap3_rng_hwmod_class,
+};
+
 /*
  * interfaces
  */
@@ -2508,6 +2544,13 @@ static struct omap_hwmod omap3xxx_sham_hwmod = {
 	.class		= &omap3xxx_sham_class,
 };
 
+/* l4_core -> rng */
+struct omap_hwmod_ocp_if omap3xxx_l4_core__rng = {
+	.master		= &omap3xxx_l4_core_hwmod,
+	.slave		= &omap3xxx_rng_hwmod,
+	.clk		= "rng_ick",
+	.user		= OCP_USER_MPU | OCP_USER_SDMA,
+};
 
 static struct omap_hwmod_ocp_if omap3xxx_l4_core__sham = {
 	.master		= &omap3xxx_l4_core_hwmod,
@@ -2769,6 +2812,7 @@ static struct omap_hwmod_ocp_if *omap36xx_hwmod_ocp_ifs[] __initdata = {
 	&omap3xxx_l4_core__mmu_isp,
 	&omap3xxx_l3_main__mmu_iva,
 	&omap3xxx_l4_core__ssi,
+	&omap3xxx_l4_core__rng,
 	NULL,
 };
 
@@ -2788,6 +2832,7 @@ static struct omap_hwmod_ocp_if *am35xx_hwmod_ocp_ifs[] __initdata = {
 	&am35xx_l4_core__mdio,
 	&am35xx_emac__l3,
 	&am35xx_l4_core__emac,
+	&omap3xxx_l4_core__rng,
 	NULL,
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
