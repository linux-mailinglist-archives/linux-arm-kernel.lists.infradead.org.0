Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B193200970
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 15:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mFgezHbwwvMseHcM4qulyyxDTWKXESOUk7fB+AzUG18=; b=A+vWePL8XVXu3R7No48GJAbrbO
	86GMzbjac4DVZQ4uxov/wj5/F0sxx791lNvG/t9zuZGj0vD5lKO9XRGWjfgkkhSmOAKfQ2bTrzNCs
	xF+4GziLTBhyJj8s4nqDkQBloXBi3Br2I3H6Cu3We1PvvXhsV0Iw2/ne6aWevwzqAalAYBY6v0B/C
	gaILotPfkx5i87QDea+hwxibaNM3tEvtMONLwi1jwlBgkX6ImxyCfcppl3j9IeKABN8tadr4LUwmY
	2YMBDtz1UbZi8tHlVwOTlhMmOdbGKDUkvjyuxhoyLDNFK041YO22W+zah65lbCGwrrFvQNXobE7/P
	mASC5HDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmGga-00065G-7I; Fri, 19 Jun 2020 13:04:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmGey-0004mJ-AV
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 13:02:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA63D101E;
 Fri, 19 Jun 2020 06:02:19 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BCD523F6CF;
 Fri, 19 Jun 2020 06:02:13 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 maz@kernel.org, richardcochran@gmail.com, Mark.Rutland@arm.com,
 will@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com
Subject: [PATCH v13 6/9] clocksource: Add clocksource id for arm arch counter
Date: Fri, 19 Jun 2020 21:01:17 +0800
Message-Id: <20200619130120.40556-7-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619130120.40556-1-jianyong.wu@arm.com>
References: <20200619130120.40556-1-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_060220_926482_C3704C5F 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: justin.he@arm.com, Wei.Chen@arm.com, kvm@vger.kernel.org,
 Steve.Capper@arm.com, jianyong.wu@arm.com, linux-kernel@vger.kernel.org,
 Kaly.Xin@arm.com, nd@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add clocksource id for arm arch counter to let it be identified easily and
elegantly in ptp_kvm implementation for arm.

Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
---
 drivers/clocksource/arm_arch_timer.c | 2 ++
 include/linux/clocksource_ids.h      | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/clocksource/arm_arch_timer.c b/drivers/clocksource/arm_arch_timer.c
index ecf7b7db2d05..edc5be0ae324 100644
--- a/drivers/clocksource/arm_arch_timer.c
+++ b/drivers/clocksource/arm_arch_timer.c
@@ -16,6 +16,7 @@
 #include <linux/cpu_pm.h>
 #include <linux/clockchips.h>
 #include <linux/clocksource.h>
+#include <linux/clocksource_ids.h>
 #include <linux/interrupt.h>
 #include <linux/of_irq.h>
 #include <linux/of_address.h>
@@ -191,6 +192,7 @@ static u64 arch_counter_read_cc(const struct cyclecounter *cc)
 
 static struct clocksource clocksource_counter = {
 	.name	= "arch_sys_counter",
+	.id	= CSID_ARM_ARCH_COUNTER,
 	.rating	= 400,
 	.read	= arch_counter_read,
 	.mask	= CLOCKSOURCE_MASK(56),
diff --git a/include/linux/clocksource_ids.h b/include/linux/clocksource_ids.h
index 4d8e19e05328..16775d7d8f8d 100644
--- a/include/linux/clocksource_ids.h
+++ b/include/linux/clocksource_ids.h
@@ -5,6 +5,7 @@
 /* Enum to give clocksources a unique identifier */
 enum clocksource_ids {
 	CSID_GENERIC		= 0,
+	CSID_ARM_ARCH_COUNTER,
 	CSID_MAX,
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
