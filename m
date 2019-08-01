Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F64A7DBC5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:47:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Zol+NlXRdvww/Ef097D8j4I9s6CMM+nHvbMh4hozUI=; b=ADoWvdnDpRsZNR
	GkuAfJ6Rju9F+0D3Ssa0fZAFZQXUCNKnMcFhrHgyfu+MViNJ/3CInXfgG8/Cft1f4vW+bk1tC2BwE
	OF3fV+HlAEGIykhmzKg/mhevKyci0C3xXrfXtDhnAL9ypDRLx7+vpH+J8im6roRQWrh0kUkVPBap/
	bpi1J80AfTQ8vjPbet8Xt39xgJmGANGQJQbLv02wlf5h3iHJxHcCMsYjD48+KorRMQ3FfK03qMg/y
	NIvdGiuk4Ss1ux+cT+8iOf4NM7I/HU9s/hE1tIwryZAG0etkOUz0lQuBKLHl6CNcY646cWOfsfgbF
	bJUIB/myn68vLF1L0BaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htAUN-0004JI-37; Thu, 01 Aug 2019 12:47:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htATw-00046D-FA
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:46:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F2651597;
 Thu,  1 Aug 2019 05:46:55 -0700 (PDT)
Received: from queper01-lin.cambridge.arm.com (queper01-lin.cambridge.arm.com
 [10.1.195.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 78F4C3F575;
 Thu,  1 Aug 2019 05:46:53 -0700 (PDT)
From: Quentin Perret <quentin.perret@arm.com>
To: edubezval@gmail.com, rui.zhang@intel.com, javi.merino@kernel.org,
 viresh.kumar@linaro.org, amit.kachhap@gmail.com, rjw@rjwysocki.net,
 catalin.marinas@arm.com, will@kernel.org, daniel.lezcano@linaro.org
Subject: [PATCH v6 1/3] arm64: defconfig: Enable CONFIG_ENERGY_MODEL
Date: Thu,  1 Aug 2019 13:46:41 +0100
Message-Id: <20190801124643.17112-2-quentin.perret@arm.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190801124643.17112-1-quentin.perret@arm.com>
References: <20190801124643.17112-1-quentin.perret@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_054656_547063_8825F10B 
X-CRM114-Status: UNSURE (   9.41  )
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
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 quentin.perret@arm.com, mka@chromium.org, ionela.voinescu@arm.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The recently introduced Energy Model (EM) framework manages power cost
tables for the CPUs of the system. Its only user right now is the
scheduler, in the context of Energy Aware Scheduling (EAS).

However, the EM framework also offers a generic infrastructure that
could replace subsystem-specific implementations of the same concepts,
as this is the case in the thermal framework.

So, in order to prepare the migration of the thermal subsystem to use
the EM framework, enable it in the default arm64 defconfig, which is the
most commonly used architecture for IPA. This will also compile-in all
of the EAS code, although it won't be enabled by default -- EAS requires
to use the 'schedutil' CPUFreq governor while arm64 defaults to
'performance'.

Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
Signed-off-by: Quentin Perret <quentin.perret@arm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0e58ef02880c..ad0e4944a71f 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -71,6 +71,7 @@ CONFIG_COMPAT=y
 CONFIG_RANDOMIZE_BASE=y
 CONFIG_HIBERNATION=y
 CONFIG_WQ_POWER_EFFICIENT_DEFAULT=y
+CONFIG_ENERGY_MODEL=y
 CONFIG_ARM_CPUIDLE=y
 CONFIG_CPU_FREQ=y
 CONFIG_CPU_FREQ_STAT=y
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
