Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEE135A8B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 12:37:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DJNp/mWLOMZFvcywiJntcWVaCw3ncWXLKObNVBlSlNo=; b=RVG
	DO6VkVb6tz0aNSDu95HPTJ34dArL10GZfb2oGpXBCdPryBTwz8Yy0xAfirBEhBLjzOuVIMtTBP55y
	MYoOJiCG81jnGFVSHP7GaPEUiA8432sE8uW5GZSis4trMIquMgRR5VHn+KLSwXLWND/+mo+JZ7Isf
	mbe6VAD1YvvND0UJ1u5OvVs0y7tzXvqI5L9SoLSQvja0PHaRVVOJaLYxB8U64ezezHqqH58Vv1bXF
	fui6fC/b/OmjPS8/F1Tcilh9EB+/LUjKUjIcRtVENgti0fBQ8/wOpEM3EKnURG37Gy0hXEZYIWu3b
	+thVl3olj7aLe5qBCxl/06Rhcz7tF/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYTIR-0002I5-N4; Wed, 05 Jun 2019 10:37:31 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYTIA-00028t-KG
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 10:37:16 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F19A3200782;
 Wed,  5 Jun 2019 12:37:12 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E4AF320077F;
 Wed,  5 Jun 2019 12:37:12 +0200 (CEST)
Received: from jana.ea.freescale.net (gw_auto.ea.freescale.net [10.171.94.100])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 642AD205FA;
 Wed,  5 Jun 2019 12:37:12 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 0/5] Add imx7d speed grading and higher OPPs
Date: Wed,  5 Jun 2019 13:37:04 +0300
Message-Id: <cover.1559730963.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_033714_804515_9254C477 
X-CRM114-Status: UNSURE (   5.17  )
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

Changes since v1:
 * Remove the match list from imx-cpufreq-dt
 * Split arch and cpufreq changes
Link to v1: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=124427

Leonard Crestez (5):
  cpufreq: imx-cpufreq-dt: Remove global platform match list
  cpufreq: Switch imx7d to imx-cpufreq-dt for speed grading
  ARM: imx: Switch imx7d to imx-cpufreq-dt for speed-grading
  ARM: dts: imx7d: Update cpufreq OPP table
  ARM: imx_v6_v7_defconfig: Enable CONFIG_ARM_IMX_CPUFREQ_DT

 arch/arm/boot/dts/imx7d.dtsi         | 16 +++++++++++++---
 arch/arm/boot/dts/imx7s.dtsi         |  4 ++++
 arch/arm/configs/imx_v6_v7_defconfig |  1 +
 arch/arm/mach-imx/mach-imx7d.c       |  7 +++++++
 drivers/cpufreq/cpufreq-dt-platdev.c |  2 +-
 drivers/cpufreq/imx-cpufreq-dt.c     | 18 ++----------------
 6 files changed, 28 insertions(+), 20 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
