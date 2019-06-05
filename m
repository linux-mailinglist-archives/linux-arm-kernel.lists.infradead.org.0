Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C45035A8F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 12:38:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XERccKo5WLpGXF8njNLxl8hQF0PSeLs/djSYR1kyKRw=; b=s7emBBmjN6OVgB8HNPeaQMfZRh
	gDPEi4nbuXFTM6kI12Ru5Fjjb5TT81IGDXpNvWF/nZqyrCwTVVmW9wmaZv7YW3y55CGroZp/wVeP0
	V80+Qu1zoAKKxemv3ejG+7lC3aCcv5Jui9sY8mZzc+dlniigCHYQZO/3ONZaXzjxEgBJKGSODR5yx
	8ZEGgubRUyYALsUyS0wweSxKqOuhIZgevq5lUk3dXO0H8nhqllbwsjX+lQVElt1Y9TOc+sQ7NE97b
	EdcJ3g80s0l8pezEZaTjMbb0b2ZF02aBTpP11LH2gCK05yp5xXHxgUHGH1qwgxuRa1/fpPi/CPKtk
	RcQy1qhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYTJ4-0003Fa-8y; Wed, 05 Jun 2019 10:38:10 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYTID-00029f-2n
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 10:37:18 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D459020077F;
 Wed,  5 Jun 2019 12:37:15 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C84F9200772;
 Wed,  5 Jun 2019 12:37:15 +0200 (CEST)
Received: from jana.ea.freescale.net (gw_auto.ea.freescale.net [10.171.94.100])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 47FA7205FA;
 Wed,  5 Jun 2019 12:37:15 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 5/5] ARM: imx_v6_v7_defconfig: Enable
 CONFIG_ARM_IMX_CPUFREQ_DT
Date: Wed,  5 Jun 2019 13:37:09 +0300
Message-Id: <dac8ee814d4c8713191fcfd27e685411d8435edd.1559730963.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1559730963.git.leonard.crestez@nxp.com>
References: <cover.1559730963.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1559730963.git.leonard.crestez@nxp.com>
References: <cover.1559730963.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_033717_378789_11E21EC0 
X-CRM114-Status: UNSURE (   6.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, linux-pm@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is used for imx7d speed grading.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 arch/arm/configs/imx_v6_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index 4daf807e6970..507c1fcca624 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -52,10 +52,11 @@ CONFIG_CPU_FREQ_DEFAULT_GOV_ONDEMAND=y
 CONFIG_CPU_FREQ_GOV_POWERSAVE=y
 CONFIG_CPU_FREQ_GOV_USERSPACE=y
 CONFIG_CPU_FREQ_GOV_CONSERVATIVE=y
 CONFIG_CPUFREQ_DT=y
 CONFIG_ARM_IMX6Q_CPUFREQ=y
+CONFIG_ARM_IMX_CPUFREQ_DT=y
 CONFIG_CPU_IDLE=y
 CONFIG_ARM_CPUIDLE=y
 CONFIG_VFP=y
 CONFIG_NEON=y
 CONFIG_PM_DEBUG=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
