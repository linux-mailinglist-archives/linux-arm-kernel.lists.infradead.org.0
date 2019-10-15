Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68311D7809
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 16:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NIeOtyEuWsu+zDktTrV+/wLtzJj+fsApZ65LgiWDKhE=; b=DJIVhLkMjuttiJ
	bYDvWL36NIj/LywaPwkiAES5lwpzv3SqpwiemlFu2392P3sJVyPrP0i8JtGj2/Fz2/EDPM8pMuDPG
	+FnfCQlHXq7hnzekGOn0UBrhEqV5a3FvhDCHUQdKPe+a2bkohutMtiS2O/I6xPieyQ8mQ+UMyakWN
	18RNk9AZNIWQAPCOrnkKyRIw5t7slgQU5TKBI5ii5w22NWpan+ZuQSLXq3ERpjlfQa0Y5QK2YiKp3
	fqx6fF2Koiv1g/Z45bUkNlfDAv80w09s4wX+yIJwBfhg1o5VYt+NLSvVX5ZB0sLliqMLLbQ3yJ4jG
	pZcYe2eHomRX5sPq6euA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKNVr-0007pO-UE; Tue, 15 Oct 2019 14:09:23 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKNVk-0007ov-BW
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 14:09:17 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iKNVe-0004HK-Un; Tue, 15 Oct 2019 15:09:11 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iKNVe-0000DJ-8u; Tue, 15 Oct 2019 15:09:10 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] soc: imx: gpc: fix initialiser format
Date: Tue, 15 Oct 2019 15:09:09 +0100
Message-Id: <20191015140909.778-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_070916_544124_0D89A016 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Ben Dooks <ben.dooks@codethink.co.uk>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make the initialiers in imx_gpc_domains C99 format to fix the
following sparse warnings:

drivers/soc/imx/gpc.c:252:30: warning: obsolete array initializer, use C99 syntax
drivers/soc/imx/gpc.c:258:29: warning: obsolete array initializer, use C99 syntax
drivers/soc/imx/gpc.c:269:34: warning: obsolete array initializer, use C99 syntax
drivers/soc/imx/gpc.c:278:30: warning: obsolete array initializer, use C99 syntax

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/soc/imx/gpc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/imx/gpc.c b/drivers/soc/imx/gpc.c
index d9231bd3c691..98b9d9a902ae 100644
--- a/drivers/soc/imx/gpc.c
+++ b/drivers/soc/imx/gpc.c
@@ -249,13 +249,13 @@ static struct genpd_power_state imx6_pm_domain_pu_state = {
 };
 
 static struct imx_pm_domain imx_gpc_domains[] = {
-	[GPC_PGC_DOMAIN_ARM] {
+	[GPC_PGC_DOMAIN_ARM] = {
 		.base = {
 			.name = "ARM",
 			.flags = GENPD_FLAG_ALWAYS_ON,
 		},
 	},
-	[GPC_PGC_DOMAIN_PU] {
+	[GPC_PGC_DOMAIN_PU] = {
 		.base = {
 			.name = "PU",
 			.power_off = imx6_pm_domain_power_off,
@@ -266,7 +266,7 @@ static struct imx_pm_domain imx_gpc_domains[] = {
 		.reg_offs = 0x260,
 		.cntr_pdn_bit = 0,
 	},
-	[GPC_PGC_DOMAIN_DISPLAY] {
+	[GPC_PGC_DOMAIN_DISPLAY] = {
 		.base = {
 			.name = "DISPLAY",
 			.power_off = imx6_pm_domain_power_off,
@@ -275,7 +275,7 @@ static struct imx_pm_domain imx_gpc_domains[] = {
 		.reg_offs = 0x240,
 		.cntr_pdn_bit = 4,
 	},
-	[GPC_PGC_DOMAIN_PCI] {
+	[GPC_PGC_DOMAIN_PCI] = {
 		.base = {
 			.name = "PCI",
 			.power_off = imx6_pm_domain_power_off,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
