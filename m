Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89830BE56F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 21:13:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qs5CiBk2h/EyZ4bfLGAKbWyvoQZjEOU7IQcyeiaJek8=; b=UEYUkjcJH6IQRU
	fs8t/nTPlzJ5sN8XuDx2gDOMmhTjAz0DrKLalUl3OzMbQVXQSSQueRFYneHWoF5EJqhtXpaxx0QZY
	Uq0zRJ/wd1UZBScumLJt+sXXVKjMBtqafwWxZCdFrHXM3emFdVhE4t+8mHI4pGcGbCJ6ZZaHf6b4X
	qNw6znwMxKQnA9PoR+2/MmeIaCrEFLg/QCdVlEtM8Kv2Dd+uzxR90NOWlHf0kXJGoaBlW2kWj4vuC
	za9+/bOvsA1s622h6kqpnXa86R0gWfEya7Vjo9KZRkGT79wFGyNgeGrZy90G0k0yToS4eN2JkK8MZ
	MuV9ts+EN9d/xQ+QE09g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDCj9-0001nR-0S; Wed, 25 Sep 2019 19:13:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDCiI-0001Ck-Sv; Wed, 25 Sep 2019 19:12:37 +0000
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net
 [71.197.186.152])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5496621D7F;
 Wed, 25 Sep 2019 19:12:34 +0000 (UTC)
From: Kevin Hilman <khilman@baylibre.com>
To: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 2/2] soc: amlogic: ee-pwrc: ensure driver state maches HW state
Date: Wed, 25 Sep 2019 12:12:33 -0700
Message-Id: <20190925191233.22253-3-khilman@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190925191233.22253-1-khilman@baylibre.com>
References: <20190925191233.22253-1-khilman@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_121234_948145_3E6F2EB1 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

During init, ensure that the driver on/off state as well as clock
state matches the hardware state by calling drivers on/off functions
based on whether the HW state is on/off.

Signed-off-by: Kevin Hilman <khilman@baylibre.com>
---
 drivers/soc/amlogic/meson-ee-pwrc.c | 30 +++++++++--------------------
 1 file changed, 9 insertions(+), 21 deletions(-)

diff --git a/drivers/soc/amlogic/meson-ee-pwrc.c b/drivers/soc/amlogic/meson-ee-pwrc.c
index dcce8e694a07..2cb5341aedfa 100644
--- a/drivers/soc/amlogic/meson-ee-pwrc.c
+++ b/drivers/soc/amlogic/meson-ee-pwrc.c
@@ -323,6 +323,8 @@ static int meson_ee_pwrc_init_domain(struct platform_device *pdev,
 				     struct meson_ee_pwrc *pwrc,
 				     struct meson_ee_pwrc_domain *dom)
 {
+	bool is_off;
+
 	dom->pwrc = pwrc;
 	dom->num_rstc = dom->desc.reset_names_count;
 	dom->num_clks = dom->desc.clk_names_count;
@@ -356,27 +358,13 @@ static int meson_ee_pwrc_init_domain(struct platform_device *pdev,
 	dom->base.power_on = meson_ee_pwrc_on;
 	dom->base.power_off = meson_ee_pwrc_off;
 
-	/*
-         * TOFIX: This is a special case for the VPU power domain, which can
-	 * be enabled previously by the bootloader. In this case the VPU
-         * pipeline may be functional but no driver maybe never attach
-         * to this power domain, and if the domain is disabled it could
-         * cause system errors. This is why the pm_domain_always_on_gov
-         * is used here.
-         * For the same reason, the clocks should be enabled in case
-         * we need to power the domain off, otherwise the internal clocks
-         * prepare/enable counters won't be in sync.
-         */
-	if (dom->num_clks && dom->desc.is_off && !dom->desc.is_off(dom)) {
-		int ret = clk_bulk_prepare_enable(dom->num_clks, dom->clks);
-		if (ret)
-			return ret;
-
-		pm_genpd_init(&dom->base, &pm_domain_always_on_gov, false);
-	} else
-		pm_genpd_init(&dom->base, NULL,
-			      (dom->desc.is_off ?
-			       dom->desc.is_off(dom) : true));
+	/* Ensure that driver state matches HW state */
+	is_off = dom->desc.is_off ? dom->desc.is_off(dom) : true;
+	if (is_off)
+		meson_ee_pwrc_off(&dom->base);
+	else 
+		meson_ee_pwrc_on(&dom->base);
+	pm_genpd_init(&dom->base, NULL, is_off);
 
 	return 0;
 }
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
