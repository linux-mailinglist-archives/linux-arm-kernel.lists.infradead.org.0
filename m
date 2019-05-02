Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0ED311825
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 13:30:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=85HmpQaUEZ9MsigVnL0E0Ca2Ej+dR8a9eBdB7xZXbwc=; b=Z5y
	wg/zw0eL9Z+XIieWGAcwvxl2+sHy7jyiF8sL1H0gXHO63tWwjIZNSwdADeOXTu5DARrYedOVYccWT
	Y33atmR718oXS6n30tB/7gxHLuD5knzRcNGAO9obPbHZxv7D78nemu7LI/BK9gs8WvcGj+Sp//bpt
	ftLCWF+q+LC9ti43CrZT/3cxcI6DIeNK9s7O29hir96NjffJCmO6m6Muy6QHOIjrWb8QDMfdEnkNR
	yCi8X5CATo2OWqoX+nsmrCxRAXQ+B84puwKhGvm4DpicEZAvTsERGD1hH+Xcvw6cHGfEN4RY7QY2N
	uIAZgpR5JmYD2tDuviRncIzcFvX4ktA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM9v9-0002Oo-Df; Thu, 02 May 2019 11:30:35 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM9v2-0002OS-SG
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 11:30:30 +0000
Received: by mail-qt1-x841.google.com with SMTP id e2so333473qtb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 04:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Hg7TtsEFadnOjSgx3jp2tA+2HgpI1482WNMkndbFrzE=;
 b=acmlV9Nz3/KjYXscXwD/N8XxRhL7nlxpeSY1f8A3VPR3pvYN5HXkdNdXqSPupEUCM1
 wCwe9fzF87JG5D//SAGHAH2Dv7OfkhEzTWdi5hRp5r5lm+6203/YbFaFrtB6p9ZPnZcA
 crkPkD7fdZwRk7tTylCAncrS8awPHwTKwwRHI1PLHbFTUy1nInOt8vVWCO/+fzqpn+/X
 q4qV1KyqHio/5uVh01FiHlSv+BLITWUJYmdu4jKBnEYmhKbk/IGESNPGmEN04Zc4tKPu
 gf4DPaItIe1JP8c6kdOes0vpk5wOO66C4aKqonmjddfB4597wOuCKCHnIWavQO0igRE+
 EGgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Hg7TtsEFadnOjSgx3jp2tA+2HgpI1482WNMkndbFrzE=;
 b=Uu7kCih40Gl1GCo+QEr2xkT+jHLApBsrrQ1sOhmMxfiQOU1ic++/SAERmswNKgq5NE
 3B6yH3hwpK/+bYLlPqjnwsNpmYFIOceLzIC8L1NhG4OVs017lSVcQGEZRVlpBTAa4CkY
 Xd0uNSN0nP0+gQD+xS8/0jzpRL93ebrAnfv5i2obr5E2an+O7q5V2ZQaRDp0IZxaylyk
 diCGjofJxPUfmqSWRvdDkSs9apVSBhOo3SUB9NfQMxHGHauDPk0m1FeguoE/n20X94MJ
 5tKbJm65+lqHMQvW5MCXFsuAIWHiPbn1p8tcODEzlq0FeIMkX7t7zllwt14Rd72ZtAGb
 ZrCA==
X-Gm-Message-State: APjAAAVUJRVpheN3PCb7rJG5OFRVhN8yUYhlJViUHjMQXakbbRNGkGax
 gXDYB4ZS6/h3MMgZ1TfJe/w=
X-Google-Smtp-Source: APXvYqzAQr8cdbmARVLcsts793hCcZltNZV1HAC1L8AIp97l0A362BaRRxyz3ih407vfAWx6P+HL6w==
X-Received: by 2002:a0c:9ac1:: with SMTP id k1mr2553094qvf.36.1556796627624;
 Thu, 02 May 2019 04:30:27 -0700 (PDT)
Received: from fabio-Latitude-E5450.am.freescale.net
 ([2804:14c:482:3c8:56cb:1049:60d2:137b])
 by smtp.gmail.com with ESMTPSA id a15sm6787239qkk.87.2019.05.02.04.30.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 04:30:26 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM: imx: cpuidle-imx6sx: Restrict the SW2ISO increase to
 i.MX6SX
Date: Thu,  2 May 2019 08:30:20 -0300
Message-Id: <20190502113020.8642-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_043028_939512_25BA0B3C 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: cniedermaier@dh-electronics.com, anson.huang@nxp.com,
 stable@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit 1e434b703248 ("ARM: imx: update the cpu power up timing
setting on i.mx6sx") some characters loss is noticed on i.MX6ULL UART
as reported by Christoph Niedermaier.

The intention of such commit was to increase the SW2ISO field for i.MX6SX
only, but since cpuidle-imx6sx is also used on i.MX6UL/i.MX6ULL this caused
unintended side effects on other SoCs.

Fix this problem by keeping the original SW2ISO value for i.MX6UL/i.MX6ULL
and only increase SW2ISO in the i.MX6SX case.

Cc: stable@vger.kernel.org
Fixes: 1e434b703248 ("ARM: imx: update the cpu power up timing setting on i.mx6sx")
Reported-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/mach-imx/cpuidle-imx6sx.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/cpuidle-imx6sx.c b/arch/arm/mach-imx/cpuidle-imx6sx.c
index fd0053e47a15..57cb9c763222 100644
--- a/arch/arm/mach-imx/cpuidle-imx6sx.c
+++ b/arch/arm/mach-imx/cpuidle-imx6sx.c
@@ -15,6 +15,7 @@
 
 #include "common.h"
 #include "cpuidle.h"
+#include "hardware.h"
 
 static int imx6sx_idle_finish(unsigned long val)
 {
@@ -99,8 +100,12 @@ static struct cpuidle_driver imx6sx_cpuidle_driver = {
 	.safe_state_index = 0,
 };
 
+#define SW2ISO_ORIGINAL		0x2
+#define SW2ISO_IMX6SX		0xf
 int __init imx6sx_cpuidle_init(void)
 {
+	u32 sw2iso = SW2ISO_ORIGINAL;
+
 	imx6_set_int_mem_clk_lpm(true);
 	imx6_enable_rbc(false);
 	imx_gpc_set_l2_mem_power_in_lpm(false);
@@ -110,7 +115,9 @@ int __init imx6sx_cpuidle_init(void)
 	 * except for power up sw2iso which need to be
 	 * larger than LDO ramp up time.
 	 */
-	imx_gpc_set_arm_power_up_timing(0xf, 1);
+	if (cpu_is_imx6sx())
+		sw2iso = SW2ISO_IMX6SX;
+	imx_gpc_set_arm_power_up_timing(sw2iso, 1);
 	imx_gpc_set_arm_power_down_timing(1, 1);
 
 	return cpuidle_register(&imx6sx_cpuidle_driver, NULL);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
