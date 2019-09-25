Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BD2BE786
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 23:36:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6AAsKkBiunOlTgYUXTlHkRTnsZeF9+haIbrBcgic17o=; b=VKzKshy/innUAT
	Bc6U006xl0efMOwVTP/BogKs0iFu+eTR6Oi0DcO5L7pa1h+/Tw3iLo0wvi94AMWJCAWbd36/6fFVG
	/HAKST+OohAtQzSsrkdoYDl3so+XgvZi/Wu8jgsibXV0Gs1kKacz6BGeAhtgG7GZ/D5WDnJ6mej/K
	SSgLme+AzTp7GUAI6kJiuwC+KpOEr7EMg3Q3UY9u5sJyPRCweBl436qvsqyWa0k9Pw2wu4HVFuTu6
	P7yKoR8d4OMJUmoETp+ETAyXKlRayo7FFvlU+siXQwHkWLNXlBc9/jSKUHAOSOtAG9qVz5cvNAKwb
	wm8RrSBeow/evtR1W97w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDExS-0001L7-60; Wed, 25 Sep 2019 21:36:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDEwb-0000Vr-FR; Wed, 25 Sep 2019 21:35:35 +0000
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net
 [71.197.186.152])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2898F21D81;
 Wed, 25 Sep 2019 21:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569447329;
 bh=0ILfSUBG4uQytNVjbplPPbgoUcFq5ZroUW/hsHpzr7k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=B7uNmOfQJzG9BVj1hi32RQ+3NG5ntnIPjAo0rmjUHFDYHoEg8hFGsz7dvgolaNCyr
 a2ztZZ3SPSih3NHMsKhKzu0YNFp4SO0G6JyGNGMK4kW7MIuhOOin08NShv2Mo5fpgj
 7XizgPcxjox4OMHSOXPIL/uKzBs4ktLSaRv5T2Oo=
From: Kevin Hilman <khilman@kernel.org>
To: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v2 1/2] soc: amlogic: ee-pwrc: rename get_power
Date: Wed, 25 Sep 2019 14:35:27 -0700
Message-Id: <20190925213528.21515-2-khilman@kernel.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190925213528.21515-1-khilman@kernel.org>
References: <20190925213528.21515-1-khilman@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_143532_645951_46D0F47C 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kevin Hilman <khilman@baylibre.com>

The function named _get_power() is misleading since it returns true
if the power is off.  Rename to _is_off() for better readability.

Signed-off-by: Kevin Hilman <khilman@baylibre.com>
---
 drivers/soc/amlogic/meson-ee-pwrc.c | 34 ++++++++++++++---------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/soc/amlogic/meson-ee-pwrc.c b/drivers/soc/amlogic/meson-ee-pwrc.c
index 5823f5b67d16..dcce8e694a07 100644
--- a/drivers/soc/amlogic/meson-ee-pwrc.c
+++ b/drivers/soc/amlogic/meson-ee-pwrc.c
@@ -56,7 +56,7 @@ struct meson_ee_pwrc_domain_desc {
 	struct meson_ee_pwrc_top_domain *top_pd;
 	unsigned int mem_pd_count;
 	struct meson_ee_pwrc_mem_domain *mem_pd;
-	bool (*get_power)(struct meson_ee_pwrc_domain *pwrc_domain);
+	bool (*is_off)(struct meson_ee_pwrc_domain *pwrc_domain);
 };
 
 struct meson_ee_pwrc_domain_data {
@@ -173,7 +173,7 @@ static struct meson_ee_pwrc_mem_domain sm1_pwrc_mem_audio[] = {
 	{ HHI_AUDIO_MEM_PD_REG0, GENMASK(27, 26) },
 };
 
-#define VPU_PD(__name, __top_pd, __mem, __get_power, __resets, __clks)	\
+#define VPU_PD(__name, __top_pd, __mem, __is_off, __resets, __clks)	\
 	{								\
 		.name = __name,						\
 		.reset_names_count = __resets,				\
@@ -181,40 +181,40 @@ static struct meson_ee_pwrc_mem_domain sm1_pwrc_mem_audio[] = {
 		.top_pd = __top_pd,					\
 		.mem_pd_count = ARRAY_SIZE(__mem),			\
 		.mem_pd = __mem,					\
-		.get_power = __get_power,				\
+		.is_off = __is_off,				\
 	}
 
-#define TOP_PD(__name, __top_pd, __mem, __get_power)			\
+#define TOP_PD(__name, __top_pd, __mem, __is_off)			\
 	{								\
 		.name = __name,						\
 		.top_pd = __top_pd,					\
 		.mem_pd_count = ARRAY_SIZE(__mem),			\
 		.mem_pd = __mem,					\
-		.get_power = __get_power,				\
+		.is_off = __is_off,				\
 	}
 
 #define MEM_PD(__name, __mem)						\
 	TOP_PD(__name, NULL, __mem, NULL)
 
-static bool pwrc_ee_get_power(struct meson_ee_pwrc_domain *pwrc_domain);
+static bool pwrc_ee_is_off(struct meson_ee_pwrc_domain *pwrc_domain);
 
 static struct meson_ee_pwrc_domain_desc g12a_pwrc_domains[] = {
 	[PWRC_G12A_VPU_ID]  = VPU_PD("VPU", &g12a_pwrc_vpu, g12a_pwrc_mem_vpu,
-				     pwrc_ee_get_power, 11, 2),
+				     pwrc_ee_is_off, 11, 2),
 	[PWRC_G12A_ETH_ID] = MEM_PD("ETH", g12a_pwrc_mem_eth),
 };
 
 static struct meson_ee_pwrc_domain_desc sm1_pwrc_domains[] = {
 	[PWRC_SM1_VPU_ID]  = VPU_PD("VPU", &sm1_pwrc_vpu, sm1_pwrc_mem_vpu,
-				    pwrc_ee_get_power, 11, 2),
+				    pwrc_ee_is_off, 11, 2),
 	[PWRC_SM1_NNA_ID]  = TOP_PD("NNA", &sm1_pwrc_nna, sm1_pwrc_mem_nna,
-				    pwrc_ee_get_power),
+				    pwrc_ee_is_off),
 	[PWRC_SM1_USB_ID]  = TOP_PD("USB", &sm1_pwrc_usb, sm1_pwrc_mem_usb,
-				    pwrc_ee_get_power),
+				    pwrc_ee_is_off),
 	[PWRC_SM1_PCIE_ID] = TOP_PD("PCI", &sm1_pwrc_pci, sm1_pwrc_mem_pcie,
-				    pwrc_ee_get_power),
+				    pwrc_ee_is_off),
 	[PWRC_SM1_GE2D_ID] = TOP_PD("GE2D", &sm1_pwrc_ge2d, sm1_pwrc_mem_ge2d,
-				    pwrc_ee_get_power),
+				    pwrc_ee_is_off),
 	[PWRC_SM1_AUDIO_ID] = MEM_PD("AUDIO", sm1_pwrc_mem_audio),
 	[PWRC_SM1_ETH_ID] = MEM_PD("ETH", g12a_pwrc_mem_eth),
 };
@@ -237,7 +237,7 @@ struct meson_ee_pwrc {
 	struct genpd_onecell_data xlate;
 };
 
-static bool pwrc_ee_get_power(struct meson_ee_pwrc_domain *pwrc_domain)
+static bool pwrc_ee_is_off(struct meson_ee_pwrc_domain *pwrc_domain)
 {
 	u32 reg;
 
@@ -367,7 +367,7 @@ static int meson_ee_pwrc_init_domain(struct platform_device *pdev,
          * we need to power the domain off, otherwise the internal clocks
          * prepare/enable counters won't be in sync.
          */
-	if (dom->num_clks && dom->desc.get_power && !dom->desc.get_power(dom)) {
+	if (dom->num_clks && dom->desc.is_off && !dom->desc.is_off(dom)) {
 		int ret = clk_bulk_prepare_enable(dom->num_clks, dom->clks);
 		if (ret)
 			return ret;
@@ -375,8 +375,8 @@ static int meson_ee_pwrc_init_domain(struct platform_device *pdev,
 		pm_genpd_init(&dom->base, &pm_domain_always_on_gov, false);
 	} else
 		pm_genpd_init(&dom->base, NULL,
-			      (dom->desc.get_power ?
-			       dom->desc.get_power(dom) : true));
+			      (dom->desc.is_off ?
+			       dom->desc.is_off(dom) : true));
 
 	return 0;
 }
@@ -454,7 +454,7 @@ static void meson_ee_pwrc_shutdown(struct platform_device *pdev)
 	for (i = 0 ; i < pwrc->xlate.num_domains ; ++i) {
 		struct meson_ee_pwrc_domain *dom = &pwrc->domains[i];
 
-		if (dom->desc.get_power && !dom->desc.get_power(dom))
+		if (dom->desc.is_off && !dom->desc.is_off(dom))
 			meson_ee_pwrc_off(&dom->base);
 	}
 }
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
