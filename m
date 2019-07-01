Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E835B954
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 12:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5V5F+NY6Jicum6yYacEYXCTs+AbMSZ95rt0fHRLmys=; b=XxfAXI4Wd2rWFG
	sjbXvfKu3TCkwTsrwNY1QsqL0p6xeUrNCy5+hDq+IOHPG77lbmgHnQdzVg9SNFQjgIpu1YB1cH7FU
	AmLFOzVx1t4Xqd+jlbbyEt9XYHm28zYDCb6xtYXDBifxEzFuD4+e4QNOlzqqN3sYNLq/zzvdLmDT/
	6ZMnDPdLz9lGnYAh9Z7uvMCdas8rc0Mcdg2/itROo932SRUhmQqKlEQ6CLOrJHuvGeVsIa4+aoxhU
	4N4JnJXKlDx+pwKaTAhYA0Mg6r8A+S/rtN9XhfYuBNf5GhcOt/QBiE2vYBVRp/dUo8C+dara+9GVO
	ppMpagyMfBCSoQHRKq2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhtrc-0007cJ-0e; Mon, 01 Jul 2019 10:48:48 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhtqK-0006aQ-Ma
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 10:47:30 +0000
Received: by mail-wm1-x343.google.com with SMTP id x15so15335485wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 03:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Owl4nTSq6DhZ2V584A99yDsOKLIIIUktJdAv0EVjP8I=;
 b=b6jgKvugCOJlbzkKecpVeAxHM4R651JUN9SFcYJFMhU8flW2qe2hf+uEDz0sQuelzM
 zr0DOGrSMO7P+19xgHrSExXjxPZwZ+Wi1YYtFE8PbzZRSEremFLug0RCjsJqVQmK6Z6r
 K4MhBJJvU8Jkvy//BNrFXv22CP8+cudLChxCn96ErMScTL4PjSpkxHrD/k0QiZBr6kGK
 lMYuga93UPYgZ8KdQJRveA6UOVUQC8PrGPAHH0AuopkolxDns4Ir+EKc2r0nLNgrnUot
 wcA5tVFj3Yofr6BmODaMLCnJrPEE4uqf39cT8cqDAbAmmrxFN5ImAvELoDbBxjXG80NI
 geNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Owl4nTSq6DhZ2V584A99yDsOKLIIIUktJdAv0EVjP8I=;
 b=t0aRWbEhkPRg9rEsFrEWKJuyaZVMR566/TiCK1seGIOwi2pJs4HB07FGLyKSAi1A5o
 lVcAbagm6JVz6ELirwVP99ouHlCxn+ZsG0kcEwBwUnAoPQJu1msBRlrdl/W0/Uqm9RhG
 isdxbpJlmKwmoDgFGImdtM8hxWQcM+iwBjh397J5oUBQB8bMVaR44minBz4RkoSZHEhy
 ovOdpr1HiaIe5/vKsvHXi2S6SI47KqMMqKt1mWuHUJMjGqcuVHMEIOE2BNOxWDXjDAuh
 lwx5DuCagSh0VzZsIV0DpTMb1keEZlIDsv6WsillH+C7msJvISFP+Zpe+oOGhF4crqPN
 jPrg==
X-Gm-Message-State: APjAAAVsPr8FBto/5oYCrHlQKe5HcIfZLFZIcO9Wt3vtc/oiPHTSpzlb
 czERDoumGA1tHkMHjXmUNQZxpg==
X-Google-Smtp-Source: APXvYqynQItuO15gLgigmTYWG4A+wwtTg+waNY6jf9w784dk5DTX+gMvdFcmQJmdNPcH2LhS730ptA==
X-Received: by 2002:a05:600c:2c7:: with SMTP id
 7mr16475575wmn.45.1561978047295; 
 Mon, 01 Jul 2019 03:47:27 -0700 (PDT)
Received: from localhost.localdomain (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id d24sm11658802wra.43.2019.07.01.03.47.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 03:47:26 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC 03/11] soc: amlogic: gx-pwrc-vpu: add SM1 support
Date: Mon,  1 Jul 2019 12:46:57 +0200
Message-Id: <20190701104705.18271-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701104705.18271-1-narmstrong@baylibre.com>
References: <20190701104705.18271-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_034728_784936_8C09635A 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

Add support for the Amlogic SM1 SoCs VPU Power Domain control,
it uses a different register for Isolation and a supplementaty
register for the domain memories power control.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/soc/amlogic/meson-gx-pwrc-vpu.c | 120 ++++++++++++++++++++++++
 1 file changed, 120 insertions(+)

diff --git a/drivers/soc/amlogic/meson-gx-pwrc-vpu.c b/drivers/soc/amlogic/meson-gx-pwrc-vpu.c
index 511b6856225d..fabb2868d09b 100644
--- a/drivers/soc/amlogic/meson-gx-pwrc-vpu.c
+++ b/drivers/soc/amlogic/meson-gx-pwrc-vpu.c
@@ -18,6 +18,7 @@
 /* AO Offsets */
 
 #define AO_RTI_GEN_PWR_SLEEP0		(0x3a << 2)
+#define AO_RTI_GEN_PWR_ISO0		(0x3b << 2)
 
 #define GEN_PWR_VPU_HDMI		BIT(8)
 #define GEN_PWR_VPU_HDMI_ISO		BIT(9)
@@ -28,6 +29,8 @@
 #define HHI_VPU_MEM_PD_REG0		(0x41 << 2)
 #define HHI_VPU_MEM_PD_REG1		(0x42 << 2)
 #define HHI_VPU_MEM_PD_REG2		(0x4d << 2)
+#define HHI_VPU_MEM_PD_REG3		(0x43 << 2)
+#define HHI_VPU_MEM_PD_REG4		(0x44 << 2)
 
 struct meson_gx_pwrc_vpu {
 	struct generic_pm_domain genpd;
@@ -125,6 +128,53 @@ static int meson_g12a_pwrc_vpu_power_off(struct generic_pm_domain *genpd)
 	return 0;
 }
 
+static int meson_sm1_pwrc_vpu_power_off(struct generic_pm_domain *genpd)
+{
+	struct meson_gx_pwrc_vpu *pd = genpd_to_pd(genpd);
+	int i;
+
+	regmap_update_bits(pd->regmap_ao, AO_RTI_GEN_PWR_ISO0,
+			   GEN_PWR_VPU_HDMI, GEN_PWR_VPU_HDMI);
+	udelay(20);
+
+	/* Power Down Memories */
+	for (i = 0; i < 32; i += 2) {
+		regmap_update_bits(pd->regmap_hhi, HHI_VPU_MEM_PD_REG0,
+				   0x3 << i, 0x3 << i);
+		udelay(5);
+	}
+	for (i = 0; i < 32; i += 2) {
+		regmap_update_bits(pd->regmap_hhi, HHI_VPU_MEM_PD_REG1,
+				   0x3 << i, 0x3 << i);
+		udelay(5);
+	}
+	for (i = 0; i < 32; i += 2) {
+		regmap_update_bits(pd->regmap_hhi, HHI_VPU_MEM_PD_REG2,
+				   0x3 << i, 0x3 << i);
+		udelay(5);
+	}
+	regmap_update_bits(pd->regmap_hhi, HHI_VPU_MEM_PD_REG4,
+				   0x3 << 4, 0x3 << 4);
+	regmap_update_bits(pd->regmap_hhi, HHI_VPU_MEM_PD_REG4,
+				   0x7, 0x7);
+	for (i = 8; i < 16; i++) {
+		regmap_update_bits(pd->regmap_hhi, HHI_MEM_PD_REG0,
+				   BIT(i), BIT(i));
+		udelay(5);
+	}
+	udelay(20);
+
+	regmap_update_bits(pd->regmap_ao, AO_RTI_GEN_PWR_SLEEP0,
+			   GEN_PWR_VPU_HDMI, GEN_PWR_VPU_HDMI);
+
+	msleep(20);
+
+	clk_disable_unprepare(pd->vpu_clk);
+	clk_disable_unprepare(pd->vapb_clk);
+
+	return 0;
+}
+
 static int meson_gx_pwrc_vpu_setup_clk(struct meson_gx_pwrc_vpu *pd)
 {
 	int ret;
@@ -242,6 +292,64 @@ static int meson_g12a_pwrc_vpu_power_on(struct generic_pm_domain *genpd)
 	return 0;
 }
 
+static int meson_sm1_pwrc_vpu_power_on(struct generic_pm_domain *genpd)
+{
+	struct meson_gx_pwrc_vpu *pd = genpd_to_pd(genpd);
+	int ret;
+	int i;
+
+	regmap_update_bits(pd->regmap_ao, AO_RTI_GEN_PWR_SLEEP0,
+			   GEN_PWR_VPU_HDMI, 0);
+	udelay(20);
+
+	/* Power Up Memories */
+	for (i = 0; i < 32; i += 2) {
+		regmap_update_bits(pd->regmap_hhi, HHI_VPU_MEM_PD_REG0,
+				   0x3 << i, 0);
+		udelay(5);
+	}
+
+	for (i = 0; i < 32; i += 2) {
+		regmap_update_bits(pd->regmap_hhi, HHI_VPU_MEM_PD_REG1,
+				   0x3 << i, 0);
+		udelay(5);
+	}
+
+	for (i = 0; i < 32; i += 2) {
+		regmap_update_bits(pd->regmap_hhi, HHI_VPU_MEM_PD_REG2,
+				   0x3 << i, 0);
+		udelay(5);
+	}
+
+	regmap_update_bits(pd->regmap_hhi, HHI_VPU_MEM_PD_REG4, 0x3 << 4, 0);
+
+	regmap_update_bits(pd->regmap_hhi, HHI_VPU_MEM_PD_REG4, 0x7, 0);
+
+	for (i = 8; i < 16; i++) {
+		regmap_update_bits(pd->regmap_hhi, HHI_MEM_PD_REG0,
+				   BIT(i), 0);
+		udelay(5);
+	}
+	udelay(20);
+
+	ret = reset_control_assert(pd->rstc);
+	if (ret)
+		return ret;
+
+	regmap_update_bits(pd->regmap_ao, AO_RTI_GEN_PWR_ISO0,
+			   GEN_PWR_VPU_HDMI, 0);
+
+	ret = reset_control_deassert(pd->rstc);
+	if (ret)
+		return ret;
+
+	ret = meson_gx_pwrc_vpu_setup_clk(pd);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 static bool meson_gx_pwrc_vpu_get_power(struct meson_gx_pwrc_vpu *pd)
 {
 	u32 reg;
@@ -267,6 +375,14 @@ static struct meson_gx_pwrc_vpu vpu_hdmi_pd_g12a = {
 	},
 };
 
+static struct meson_gx_pwrc_vpu vpu_hdmi_pd_sm1 = {
+	.genpd = {
+		.name = "vpu_hdmi",
+		.power_off = meson_sm1_pwrc_vpu_power_off,
+		.power_on = meson_sm1_pwrc_vpu_power_on,
+	},
+};
+
 static int meson_gx_pwrc_vpu_probe(struct platform_device *pdev)
 {
 	const struct meson_gx_pwrc_vpu *vpu_pd_match;
@@ -362,6 +478,10 @@ static const struct of_device_id meson_gx_pwrc_vpu_match_table[] = {
 	  .compatible = "amlogic,meson-g12a-pwrc-vpu",
 	  .data = &vpu_hdmi_pd_g12a
 	},
+	{
+	  .compatible = "amlogic,meson-sm1-pwrc-vpu",
+	  .data = &vpu_hdmi_pd_sm1
+	},
 	{ /* sentinel */ }
 };
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
