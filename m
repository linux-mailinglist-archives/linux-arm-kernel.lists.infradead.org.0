Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDF68D3C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 14:53:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hmzFvSRwsng3nAvmKy9YFgeKJjRVVDCHfziz4aSbNLQ=; b=h8kRlYeKOM/lpm
	ikstbfwHIpfSEK0mUBBWpLxjPUfvKkQR80N3Zwu2/sZwEgbBkCabNBOy2LW35zG7EVWOvLieSdejb
	i1rbUoVUo+RKJpL9GX7o38U0f2GJ/IOdkaF4KDBaGPZWTC2b24khd0g8JqXiqFUHdzS7bzlTbRrGG
	c+gaTH6OmXH0C0f48VVndM9Wp95u51ndcnkI64PorxWmWBrX/UAFhahiBmin0G+9s9YpvFKNiIbFS
	HT25Xfas4vi/5/JAsxFIPanz4WMmr7pE92NrH3RlLNkhidedXS0R7h5bcfnIQ68KLFarHbhahnlWZ
	BxCe0XqTs4aih6DnUSNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxsmI-0006V0-6Q; Wed, 14 Aug 2019 12:53:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxslo-0006Hl-3d
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 12:52:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C67431570;
 Wed, 14 Aug 2019 05:52:51 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 71B673F706;
 Wed, 14 Aug 2019 05:52:50 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: soc@kernel.org
Subject: [PATCH 2/2] ARM: imx_v6_v7_defconfig: Enable the PSCI CPUidle driver
Date: Wed, 14 Aug 2019 13:52:39 +0100
Message-Id: <20190814125239.6270-3-lorenzo.pieralisi@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190814125239.6270-1-lorenzo.pieralisi@arm.com>
References: <20190814125239.6270-1-lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_055252_189435_4C0BB8FF 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable the PSCI CPUidle driver to replace the functionality
previously provided by the generic ARM CPUidle driver.

Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Shawn Guo <shawnguo@kernel.org>
---
 arch/arm/configs/imx_v6_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index a53b29251ed4..4174fd1b79e7 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -60,6 +60,7 @@ CONFIG_ARM_IMX6Q_CPUFREQ=y
 CONFIG_ARM_IMX_CPUFREQ_DT=y
 CONFIG_CPU_IDLE=y
 CONFIG_ARM_CPUIDLE=y
+CONFIG_ARM_PSCI_CPUIDLE=y
 CONFIG_VFP=y
 CONFIG_NEON=y
 CONFIG_PM_DEBUG=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
