Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FCB15E3C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:32:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2VksAuP866Wh6lbRMk5J3GGepJB3cEmPp+768NXoR5o=; b=ZDOFZr4v5yahhz
	/m0s5siPWda3N4E/5Rl5exw/f5k2rJotT5F2sfLKE++XETqIuLcS/DE9haabk+8G40ikTGNzo7ysR
	Akz1UCX147J8zH2L9fCmlOjraXF7QTTajSV0GAKy6g3sVTdv+ZmU5SB0/j0KSj0BKhSGTmr+0nqfg
	ZqsCAnfBjwNVvwp2Ltcs5Ro5UEECt1uw+KVDCt/TdQgbV4/IuOucag/l3nsQyv0kmu2sE41NjMeVE
	/tNXrE8iyxdT5Fdx6AZBnuJ4KdMCl/gV4YOKPCeGCnqj6KIW6EGBK8k3eFCeIdfZq1ljBX1WdoAXg
	b8+K6QTqtld6lxgBp/hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dtO-00015P-GJ; Fri, 14 Feb 2020 16:32:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dVS-0007bY-UU
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:07:56 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 49842206D7;
 Fri, 14 Feb 2020 16:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696474;
 bh=8gg111GgiL284py8cdb/2hkDji1GxlitkItG9drCMpE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hlXwh3rPYScqJ/IZd/FUjq7FyDCaRmMQEiuwmbSNf0BQ5L6Dc1n1YhUqXfiT3ougz
 paoAGT3TCJUmKlyAR4WzhywWUgf1JKVxm0oW9deBHbyhBBhXoZ3+tqccvMZFMxsCSJ
 9fByJZ0eTSqV2Qz3ntsF/U3FkJcTQoIblC29z0eU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 282/459] ARM: at91: pm: use of_device_id array to
 find the proper shdwc node
Date: Fri, 14 Feb 2020 10:58:52 -0500
Message-Id: <20200214160149.11681-282-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_080755_030766_787FAE95 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Claudiu Beznea <claudiu.beznea@microchip.com>

[ Upstream commit ec6e618c8c018c1361d77789a100a5f6f6317178 ]

Use of_device_id array to find the proper shdwc compatibile node.
SAM9X60's shdwc changes were not integrated when
commit eaedc0d379da ("ARM: at91: pm: add ULP1 support for SAM9X60")
was integrated.

Fixes: eaedc0d379da ("ARM: at91: pm: add ULP1 support for SAM9X60")
Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Link: https://lore.kernel.org/r/1576062248-18514-3-git-send-email-claudiu.beznea@microchip.com
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/mach-at91/pm.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/pm.c b/arch/arm/mach-at91/pm.c
index 03250768340e4..52665f30d236d 100644
--- a/arch/arm/mach-at91/pm.c
+++ b/arch/arm/mach-at91/pm.c
@@ -691,6 +691,12 @@ static void __init at91_pm_use_default_mode(int pm_mode)
 		soc_pm.data.suspend_mode = AT91_PM_ULP0;
 }
 
+static const struct of_device_id atmel_shdwc_ids[] = {
+	{ .compatible = "atmel,sama5d2-shdwc" },
+	{ .compatible = "microchip,sam9x60-shdwc" },
+	{ /* sentinel. */ }
+};
+
 static void __init at91_pm_modes_init(void)
 {
 	struct device_node *np;
@@ -700,7 +706,7 @@ static void __init at91_pm_modes_init(void)
 	    !at91_is_pm_mode_active(AT91_PM_ULP1))
 		return;
 
-	np = of_find_compatible_node(NULL, NULL, "atmel,sama5d2-shdwc");
+	np = of_find_matching_node(NULL, atmel_shdwc_ids);
 	if (!np) {
 		pr_warn("%s: failed to find shdwc!\n", __func__);
 		goto ulp1_default;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
