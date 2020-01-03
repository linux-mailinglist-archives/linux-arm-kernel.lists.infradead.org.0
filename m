Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D100812FE91
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 23:06:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MoH4tbnz8zcbA8xPfnDlenvHbmEBsamGFlB9kCOzH0w=; b=TjI
	CiFyu6lGdPTipAqFvMj530Oim4vQyKA76UrmcTR/toOozeF19oxIfuZ32F/9T1zNv/7JfEUvFgg6h
	8lcdQKfmGeA6a9kYzYKJ+GsHOsGS7CLXesaHObRcXuUlRJt4VxQaecw21zZ7ttb++tu5Cyhqiw8F3
	JbTHgOi6kMatCD6xqsFErliJIlYMVUdmnFNa6XlOLQKgAH5Xp2OUeOkZ3iFchIagtvnuWqElpprXn
	KyNnDFWcgO306jgFwGRlOdQst66B53JyukWFLwWUBbf3XlGUdAMuMsti+eNaqvFQs1meYyRDZZvlA
	0Jq57Ee/o9/1fjZ2hpDGnh0RdmkHNHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inV5B-0007uC-FW; Fri, 03 Jan 2020 22:06:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inV53-0007tf-Gs
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 22:06:06 +0000
Received: from localhost.localdomain (unknown [194.230.155.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A425206F0;
 Fri,  3 Jan 2020 22:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578089165;
 bh=33FSSyCClAVDwBoEMgqsTHAhDrtOV5N4bwQ2g+qNkCY=;
 h=From:To:Cc:Subject:Date:From;
 b=eyKl5vuccAYZFPs5lsytKY4Fz8jvmou/O2NWHMz4KnXzIL+7ze2SNuEnwkg7s7baf
 xNmr8BHD9fjB6L6aoAiU24hdLDs4UygriDvLAx/+0/MtyQzpOV1fJBTsK4tgYbyWwQ
 h5QaoTFqgjJmVYFzSrby6DxFhC/QaEDIlCbSuA0I=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] soc: imx: Enable compile testing of IMX_SCU_SOC
Date: Fri,  3 Jan 2020 23:05:57 +0100
Message-Id: <20200103220557.24812-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_140605_581515_19C1B860 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IMX_SCU_SOC can be compile tested to increase build coverage.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/soc/imx/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index 8aaebf13e2e6..0281ef9a1800 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -10,7 +10,7 @@ config IMX_GPCV2_PM_DOMAINS
 
 config IMX_SCU_SOC
 	bool "i.MX System Controller Unit SoC info support"
-	depends on IMX_SCU
+	depends on IMX_SCU || COMPILE_TEST
 	select SOC_BUS
 	help
 	  If you say yes here you get support for the NXP i.MX System
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
