Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8A93D53E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 20:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xouho1x+Zd6G2FNha7TlfcPFFNvznzDA+b6b4yW7jZM=; b=NdEalwoGk+DzyBACToz/FvWdNA
	hNoMFlpCLECV690l/eNAzUHGc3g6fSAQEsKLAODXZrMY3nvppVJusZMI7XqhX0BosFu71YHY4j/TZ
	w2Nkq1XLdXVwu+OnefrFpsgI47QcTo79uP8Ek23/nTzahKItJJRG/CzW6IjlDstWDhJAtTcb4lJir
	Afq4hVAUAihYS5qiW9KwtbO3GpdJyaJYjhLeSS4SxqfRsdQzGpmNLNZgFPIeHrHfihJxm6sDoCVK3
	gYh7qlmnKoI3Q1Habfj4kKAFCz35FA7ERrRqUuwUOsSPOk1VIQRPi+V8T1EFQ1/8ow+nGWetvXW2/
	sYXL4rvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1halEz-0007Xd-Go; Tue, 11 Jun 2019 18:11:25 +0000
Received: from emh03.mail.saunalahti.fi ([62.142.5.109])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1halEV-0007HT-PO
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 18:10:58 +0000
Received: from localhost.localdomain (85-76-70-161-nat.elisa-mobile.fi
 [85.76.70.161])
 by emh03.mail.saunalahti.fi (Postfix) with ESMTP id 1A3EA40051;
 Tue, 11 Jun 2019 21:10:50 +0300 (EEST)
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, James Morse <james.morse@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>
Subject: [PATCH 2/2] arm64: Implement panic_smp_self_stop()
Date: Tue, 11 Jun 2019 21:10:50 +0300
Message-Id: <20190611181050.9647-2-aaro.koskinen@iki.fi>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190611181050.9647-1-aaro.koskinen@iki.fi>
References: <20190611181050.9647-1-aaro.koskinen@iki.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_111056_011011_A525626E 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.142.5.109 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: Aaro Koskinen <aaro.koskinen@nokia.com>,
 linux-arm-kernel@lists.infradead.org, Aaro Koskinen <aaro.koskinen@iki.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Aaro Koskinen <aaro.koskinen@nokia.com>

Currently arm64 uses the default implementation of panic_smp_self_stop()
that is simply a cpu_relax() loop. As a result, when two CPUs panic()
simultaneously we get "SMP: failed to stop secondary CPUs" warnings and
extra delays before a reset.

Provide an implementation of panic_smp_self_stop() that offlines the
CPU properly.

Signed-off-by: Aaro Koskinen <aaro.koskinen@nokia.com>
---
 arch/arm64/kernel/smp.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 1a1b96a50245..5e09e5032409 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -857,6 +857,11 @@ static void ipi_cpu_stop(unsigned int cpu)
 	cpu_park_loop();
 }
 
+void panic_smp_self_stop(void)
+{
+	ipi_cpu_stop(smp_processor_id());
+}
+
 #ifdef CONFIG_KEXEC_CORE
 static atomic_t waiting_for_crash_ipi = ATOMIC_INIT(0);
 #endif
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
