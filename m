Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 051B612FAD7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 17:52:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pmk8q6tnet1Oe/SXJvr067LvpZIiXL1rcr1zzT5v3z4=; b=ESmX86DEZtpmoa
	TSyPKpSIB/vLVEgShzlYdh0Q74ZTrinq54jHe5HWhIcS6aVLe1/o/ufSGdNk+LKTx5O/5vxelfD9C
	2+mFtfDfyWswGng6I6gDUOerYk0ZEOp2LYqOK5OiAEoTkkTj57LFfgKabUxrP2Ark2r+hhz1J8dhW
	F8L7BRNd72nnYImHNhLh2Z7cqiThWEaXkEkM02Zd+pSEk/cmZKg6HGBvTL2GzVd9npMki22ovfpJ5
	6UvzbXmxqlOkiGC4ga+TfeJzlSDSDZtiSEaJ++KRrCLrJhFIyOVVPIWjdJrybSNVmqFqzKiuSZ1pR
	SDPM/9BBvuqro+rc30PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inQBT-0008Vb-Kz; Fri, 03 Jan 2020 16:52:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inQBM-0008Uw-1I
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 16:52:17 +0000
Received: from localhost.localdomain (unknown [194.230.155.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2449921734;
 Fri,  3 Jan 2020 16:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578070335;
 bh=GNr6Irv4ZHYaD0lADq4BHgVbO6AWrFxItDdiA1EIOyQ=;
 h=From:To:Subject:Date:From;
 b=hIYXmzwQSe0GJcYL5eJfh7B+W5SoNxd3n78lFtGRppNmkQbh4juqaawFJCNwACN31
 cqU8MaAIJvTtaEzbAvzIQ6RU+/dc0Z2tid7Fy0xzv5CsXtW5tU8uCD5Q9inVGV2MFc
 5B5nFs7Ges1vAFv5GQmDBQp8OMxXy2Ohp8MHRZic=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: exynos: Correct the help text for platform Kconfig option
Date: Fri,  3 Jan 2020 17:52:08 +0100
Message-Id: <20200103165208.8287-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_085216_105911_F0A0FCC6 
X-CRM114-Status: GOOD (  10.80  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARCH_EXYNOS option is used for entire ARMv7 Exynos family, including
also Exynos3 SoCs.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/mach-exynos/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-exynos/Kconfig b/arch/arm/mach-exynos/Kconfig
index 4ef56571145b..9fb045ab80e4 100644
--- a/arch/arm/mach-exynos/Kconfig
+++ b/arch/arm/mach-exynos/Kconfig
@@ -41,7 +41,7 @@ menuconfig ARCH_EXYNOS
 	select POWER_RESET_SYSCON
 	select POWER_RESET_SYSCON_POWEROFF
 	help
-	  Support for SAMSUNG EXYNOS SoCs (EXYNOS4/5)
+	  Support for SAMSUNG EXYNOS SoCs
 
 if ARCH_EXYNOS
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
