Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD26103C17
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 14:40:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Xlg++aZWd+ehg+wRwBNSI77dTzMecZMiVOcxldLm1mc=; b=jPV
	YQU4iykgth4EBzO4L5xScLR4r41w21BhzlcwdDjZbPcXv+RdL27lpEVjX85PTYWUXSOdviRJAj5ay
	WrseRvDldG74jaYp4tHG5O3Mq7y370ohRIDjylPQWR1u97GjF0nxZG0KPPx2xCMyLBpKeuIEHJLwM
	d2hwB3DIzWR3B44bdiZO/rwu0OuXXC1GlDrt94NQTPiOC2BmzMlO+N+9tmuBHhpwMv5LvC78Qktxi
	1pF6hfNI0BNnYdSVNChjP8gjfGldl180hg0X3b9As901YXSo5yHhDuPzdm0Smt3NJ2BmZsLbGvpfX
	n3it6IJfrFXICTjBH6pMUuBEJE/bLIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQDs-0005f7-Bv; Wed, 20 Nov 2019 13:40:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQDk-0005eR-1g
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 13:40:37 +0000
Received: from localhost.localdomain (unknown [118.189.143.39])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 01E452252C;
 Wed, 20 Nov 2019 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574257235;
 bh=ifOgNdh00ND7dXzC5K+1c6kBHslLHjw9L3ly0yLdQmg=;
 h=From:To:Cc:Subject:Date:From;
 b=TcGMUrX086pvI471jULBm4JS4y2Lhy3ULi/tFNxSQY0G0X3ASsS2Gqr/Yqhfnuwvz
 xNW1kn1yHA3Q71uBgVgGxRfcaT2tFgt9IM7HbI39z/HUC4SpxPsoHGca/4H7wEhM2Q
 K9Hd9h0uq6Pd2OR3glycTpOxwABDxJgPfccjgk9Y=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] perf: Fix Kconfig indentation
Date: Wed, 20 Nov 2019 21:40:30 +0800
Message-Id: <20191120134031.14447-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_054036_111160_9EBEC5BD 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [118.189.143.39 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
	$ sed -e 's/^        /\t/' -i */Kconfig

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/perf/Kconfig | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
index 09ae8a970880..288c1b3589e7 100644
--- a/drivers/perf/Kconfig
+++ b/drivers/perf/Kconfig
@@ -83,8 +83,8 @@ config HISI_PMU
        bool "HiSilicon SoC PMU"
        depends on ARM64 && ACPI
        help
-         Support for HiSilicon SoC uncore performance monitoring
-         unit (PMU), such as: L3C, HHA and DDRC.
+	 Support for HiSilicon SoC uncore performance monitoring
+	 unit (PMU), such as: L3C, HHA and DDRC.
 
 config QCOM_L2_PMU
 	bool "Qualcomm Technologies L2-cache PMU"
@@ -115,11 +115,11 @@ config THUNDERX2_PMU
 	   in the DDR4 Memory Controller (DMC).
 
 config XGENE_PMU
-        depends on ARCH_XGENE
-        bool "APM X-Gene SoC PMU"
-        default n
-        help
-          Say y if you want to use APM X-Gene SoC performance monitors.
+	depends on ARCH_XGENE
+	bool "APM X-Gene SoC PMU"
+	default n
+	help
+	  Say y if you want to use APM X-Gene SoC performance monitors.
 
 config ARM_SPE_PMU
 	tristate "Enable support for the ARMv8.2 Statistical Profiling Extension"
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
