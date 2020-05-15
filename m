Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B29741D5AF6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 22:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/7m25tzZ1euTfkO3nl9Udgr0CU2ePP8nyrr2/dfEE8=; b=rJTpFcF91KCRsK
	/aX2uEn1nrh40jazWlGcaylTxVGto2FQoeZi+QTDhQjmNr++gwTtnoxHwxjwq3fxewWgqU65mM4oM
	znT2x7d/IrYDU4w8yMf+o6xXJgXRiwCVGAyRWNGj2bvawnNMipc+Frfg89ksm04prEAtqfTKpgWxl
	mycgsZP59ThCE8Ra8GNCeLumYGfcUad8iWisBSxkn+s44e1uh91BnBX1kmZbotnkDs8kKDhhlVGca
	pcLB7uZlGlWSvXROtpA4AsCpbGJE0wBkqo0CcOCak20Eoxos3DHOnqQugHEXDa/KNVfpDqHc3CRNI
	FSdoFGB2NUsRK3kgMS5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZhGY-0007ys-QW; Fri, 15 May 2020 20:49:10 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZhFE-0006qW-5U; Fri, 15 May 2020 20:47:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id e16so4983864wra.7;
 Fri, 15 May 2020 13:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JkzlwGDcewdfreahPLwFbR/d60ApGzGnMJchWdLp2eo=;
 b=CRC/P4eT7ByBXhJaUn9O2LkUDmBU96Ojnzy5UFm1QjDzVKbhNvUy4KWCd2ard9gNia
 nSzU2EYLwfRjUMx94tc7UkXUSv91SP3wKmHBTZhs+6FZGxmNPZAd9KIRqOatvbN/NhPL
 O72jEJTUrNH1PSIDBiu27IJZn430N1E9l0kDg0fNtZBTtwiZGqfbyGZ2j/wHDfD/il3Q
 wW1qL5PsjQBPTP77tMDhJb8GCArdZFkOhuTDpXmTJMFhpnhTk0soFvS1b783IkWaOJWK
 UZplC2vkEBQsWXdL/RkWDA/UVR+5OVa9ODTmje8B6MX6OYdoH+b6RNdfobqqe/sh8+ji
 IQxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JkzlwGDcewdfreahPLwFbR/d60ApGzGnMJchWdLp2eo=;
 b=A0RyARhYjjzOxuKCjrw5giMWJSF7eoVUFtagu/zurp+yYqIS6SIMU56xtO8BAc0PJL
 6U95geWsjGPE04AhUuVriKjY09DXTl/JylUs/p2F/bi5fXXNtWUByZoENT/QZZdHmd3N
 3+0LGze5KHYch6ZcwocqPKEwR8Q9QOs72PBjVHh2VpchnTmEL6nypbjJqWEhLKqRgKoG
 yDCHSWGoAgcRCi8DPcYAEFC0t/4eKSQ+8If1jJGGendUv0XRwssIXuR+zDAcktZONGCq
 apIZV1CJ8u8TXBzAMGOwb51tUqqw6bp+6MVjUFb0bsyGGHoQB5l95nEz1DVcCJmG92Rj
 CBQQ==
X-Gm-Message-State: AOAM530w0hoTG+3XAi0tpf3SuBQWpMAyI48N3StMkkhOP8uH+pkalZOe
 TKnElTUk0SOf6pkBngRTAp8=
X-Google-Smtp-Source: ABdhPJwFq0+9sF2WNuYs25uj0O006ePbMMW6xV8V8awuMB2aw+rYEOc7/8XkLexD7zGDkPC5NNu29A==
X-Received: by 2002:a5d:4e81:: with SMTP id e1mr6202680wru.83.1589575666809;
 Fri, 15 May 2020 13:47:46 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id r11sm5296211wma.35.2020.05.15.13.47.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 13:47:45 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: khilman@baylibre.com,
	linux-amlogic@lists.infradead.org
Subject: [PATCH v4 3/4] soc: amlogic: meson-ee-pwrc: add support for
 Meson8/Meson8b/Meson8m2
Date: Fri, 15 May 2020 22:47:08 +0200
Message-Id: <20200515204709.1505498-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515204709.1505498-1-martin.blumenstingl@googlemail.com>
References: <20200515204709.1505498-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_134748_203057_E56D638B 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds support for the power domains on Meson8/Meson8b/Meson8m2.
Meson8 doesn't use any reset lines while Meson8b and Meson8m2 use the
same set of reset lines (which is different from the newer SoCs).
Add dedicated compatible strings for Meson8, Meson8b and Meson8m2 to
support these differences.

Notable differences between Meson8 and G12A are:
- there is no HHI_VPU_MEM_PD_REG2 on the 32-bit SoCs
- the Meson8b datasheet describes an "audio DSP memory" power domain
  which is used for the hardware audio decoder
- the "amlogic,ao-sysctrl" only includes the power management related
  registers on the 32-bit SoCs, meaning the for example the
  AO_RTI_GEN_PWR_SLEEP0 register is at offset (0x2 << 2) rather than
  (0x3a << 2). As result of this (0x38 << 2) is subtracted from the
  register offsets, which is the start of the power management related
  registers.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/soc/amlogic/meson-ee-pwrc.c | 86 ++++++++++++++++++++++++++---
 1 file changed, 77 insertions(+), 9 deletions(-)

diff --git a/drivers/soc/amlogic/meson-ee-pwrc.c b/drivers/soc/amlogic/meson-ee-pwrc.c
index 3f0261d53ad9..390eb0dd0a79 100644
--- a/drivers/soc/amlogic/meson-ee-pwrc.c
+++ b/drivers/soc/amlogic/meson-ee-pwrc.c
@@ -14,13 +14,22 @@
 #include <linux/reset-controller.h>
 #include <linux/reset.h>
 #include <linux/clk.h>
+#include <dt-bindings/power/meson8-power.h>
 #include <dt-bindings/power/meson-g12a-power.h>
 #include <dt-bindings/power/meson-sm1-power.h>
 
 /* AO Offsets */
 
-#define AO_RTI_GEN_PWR_SLEEP0		(0x3a << 2)
-#define AO_RTI_GEN_PWR_ISO0		(0x3b << 2)
+#define GX_AO_RTI_GEN_PWR_SLEEP0	(0x3a << 2)
+#define GX_AO_RTI_GEN_PWR_ISO0		(0x3b << 2)
+
+/*
+ * Meson8/Meson8b/Meson8m2 only expose the power management registers of the
+ * AO-bus as syscon. 0x3a from GX translates to 0x02, 0x3b translates to 0x03
+ * and so on.
+ */
+#define MESON8_AO_RTI_GEN_PWR_SLEEP0	(0x02 << 2)
+#define MESON8_AO_RTI_GEN_PWR_ISO0	(0x03 << 2)
 
 /* HHI Offsets */
 
@@ -67,17 +76,24 @@ struct meson_ee_pwrc_domain_data {
 /* TOP Power Domains */
 
 static struct meson_ee_pwrc_top_domain g12a_pwrc_vpu = {
-	.sleep_reg = AO_RTI_GEN_PWR_SLEEP0,
+	.sleep_reg = GX_AO_RTI_GEN_PWR_SLEEP0,
+	.sleep_mask = BIT(8),
+	.iso_reg = GX_AO_RTI_GEN_PWR_SLEEP0,
+	.iso_mask = BIT(9),
+};
+
+static struct meson_ee_pwrc_top_domain meson8_pwrc_vpu = {
+	.sleep_reg = MESON8_AO_RTI_GEN_PWR_SLEEP0,
 	.sleep_mask = BIT(8),
-	.iso_reg = AO_RTI_GEN_PWR_SLEEP0,
+	.iso_reg = MESON8_AO_RTI_GEN_PWR_SLEEP0,
 	.iso_mask = BIT(9),
 };
 
 #define SM1_EE_PD(__bit)					\
 	{							\
-		.sleep_reg = AO_RTI_GEN_PWR_SLEEP0, 		\
+		.sleep_reg = GX_AO_RTI_GEN_PWR_SLEEP0, 		\
 		.sleep_mask = BIT(__bit), 			\
-		.iso_reg = AO_RTI_GEN_PWR_ISO0, 		\
+		.iso_reg = GX_AO_RTI_GEN_PWR_ISO0, 		\
 		.iso_mask = BIT(__bit), 			\
 	}
 
@@ -124,10 +140,20 @@ static struct meson_ee_pwrc_mem_domain g12a_pwrc_mem_vpu[] = {
 	VPU_HHI_MEMPD(HHI_MEM_PD_REG0),
 };
 
-static struct meson_ee_pwrc_mem_domain g12a_pwrc_mem_eth[] = {
+static struct meson_ee_pwrc_mem_domain meson_pwrc_mem_eth[] = {
 	{ HHI_MEM_PD_REG0, GENMASK(3, 2) },
 };
 
+static struct meson_ee_pwrc_mem_domain meson8_pwrc_audio_dsp_mem[] = {
+	{ HHI_MEM_PD_REG0, GENMASK(1, 0) },
+};
+
+static struct meson_ee_pwrc_mem_domain meson8_pwrc_mem_vpu[] = {
+	VPU_MEMPD(HHI_VPU_MEM_PD_REG0),
+	VPU_MEMPD(HHI_VPU_MEM_PD_REG1),
+	VPU_HHI_MEMPD(HHI_MEM_PD_REG0),
+};
+
 static struct meson_ee_pwrc_mem_domain sm1_pwrc_mem_vpu[] = {
 	VPU_MEMPD(HHI_VPU_MEM_PD_REG0),
 	VPU_MEMPD(HHI_VPU_MEM_PD_REG1),
@@ -201,7 +227,27 @@ static bool pwrc_ee_get_power(struct meson_ee_pwrc_domain *pwrc_domain);
 static struct meson_ee_pwrc_domain_desc g12a_pwrc_domains[] = {
 	[PWRC_G12A_VPU_ID]  = VPU_PD("VPU", &g12a_pwrc_vpu, g12a_pwrc_mem_vpu,
 				     pwrc_ee_get_power, 11, 2),
-	[PWRC_G12A_ETH_ID] = MEM_PD("ETH", g12a_pwrc_mem_eth),
+	[PWRC_G12A_ETH_ID] = MEM_PD("ETH", meson_pwrc_mem_eth),
+};
+
+static struct meson_ee_pwrc_domain_desc meson8_pwrc_domains[] = {
+	[PWRC_MESON8_VPU_ID]  = VPU_PD("VPU", &meson8_pwrc_vpu,
+				       meson8_pwrc_mem_vpu, pwrc_ee_get_power,
+				       0, 1),
+	[PWRC_MESON8_ETHERNET_MEM_ID] = MEM_PD("ETHERNET_MEM",
+					       meson_pwrc_mem_eth),
+	[PWRC_MESON8_AUDIO_DSP_MEM_ID] = MEM_PD("AUDIO_DSP_MEM",
+						meson8_pwrc_audio_dsp_mem),
+};
+
+static struct meson_ee_pwrc_domain_desc meson8b_pwrc_domains[] = {
+	[PWRC_MESON8_VPU_ID]  = VPU_PD("VPU", &meson8_pwrc_vpu,
+				       meson8_pwrc_mem_vpu, pwrc_ee_get_power,
+				       11, 1),
+	[PWRC_MESON8_ETHERNET_MEM_ID] = MEM_PD("ETHERNET_MEM",
+					       meson_pwrc_mem_eth),
+	[PWRC_MESON8_AUDIO_DSP_MEM_ID] = MEM_PD("AUDIO_DSP_MEM",
+						meson8_pwrc_audio_dsp_mem),
 };
 
 static struct meson_ee_pwrc_domain_desc sm1_pwrc_domains[] = {
@@ -216,7 +262,7 @@ static struct meson_ee_pwrc_domain_desc sm1_pwrc_domains[] = {
 	[PWRC_SM1_GE2D_ID] = TOP_PD("GE2D", &sm1_pwrc_ge2d, sm1_pwrc_mem_ge2d,
 				    pwrc_ee_get_power),
 	[PWRC_SM1_AUDIO_ID] = MEM_PD("AUDIO", sm1_pwrc_mem_audio),
-	[PWRC_SM1_ETH_ID] = MEM_PD("ETH", g12a_pwrc_mem_eth),
+	[PWRC_SM1_ETH_ID] = MEM_PD("ETH", meson_pwrc_mem_eth),
 };
 
 struct meson_ee_pwrc_domain {
@@ -470,12 +516,34 @@ static struct meson_ee_pwrc_domain_data meson_ee_g12a_pwrc_data = {
 	.domains = g12a_pwrc_domains,
 };
 
+static struct meson_ee_pwrc_domain_data meson_ee_m8_pwrc_data = {
+	.count = ARRAY_SIZE(meson8_pwrc_domains),
+	.domains = meson8_pwrc_domains,
+};
+
+static struct meson_ee_pwrc_domain_data meson_ee_m8b_pwrc_data = {
+	.count = ARRAY_SIZE(meson8b_pwrc_domains),
+	.domains = meson8b_pwrc_domains,
+};
+
 static struct meson_ee_pwrc_domain_data meson_ee_sm1_pwrc_data = {
 	.count = ARRAY_SIZE(sm1_pwrc_domains),
 	.domains = sm1_pwrc_domains,
 };
 
 static const struct of_device_id meson_ee_pwrc_match_table[] = {
+	{
+		.compatible = "amlogic,meson8-pwrc",
+		.data = &meson_ee_m8_pwrc_data,
+	},
+	{
+		.compatible = "amlogic,meson8b-pwrc",
+		.data = &meson_ee_m8b_pwrc_data,
+	},
+	{
+		.compatible = "amlogic,meson8m2-pwrc",
+		.data = &meson_ee_m8b_pwrc_data,
+	},
 	{
 		.compatible = "amlogic,meson-g12a-pwrc",
 		.data = &meson_ee_g12a_pwrc_data,
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
