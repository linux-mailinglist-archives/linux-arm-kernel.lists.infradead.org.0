Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CFC18F656
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 14:53:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y1K/vI2QdYkcBlYHlw76kn3m/pKcBoRtYxYESWCsuWQ=; b=YE1HYWp7dfSxlbXmb5JvowpMC4
	Uoi15j8VKsar+EWF23pACpd4NZ38YV57GtKuFQRn6KZoD4ckNRbC5tAIoK8IvhthCxcbQzStwIPMX
	4cvRnr8y60iPBDOyBHKcVfn+Pub36afH2EsdzvQZ3ACAErKqRia2Ky5fsbT6p6+fDwgPl7SbyPG5d
	DaSMAXEXIzFHeQAx5cvt/YtwyodB3FqL8D/V/Qj9tFv6H5EC2jG3TB5tG0PByAN+RnZmv2yjssAnI
	pYS76JVDcT1AOSqefO3VB/e7qrxSE0CVVzyrwqnWt6IZuVXgxzoEyDlbDrzGAEjW27MWcHx4x4uWK
	VlXInD+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGNVd-0003K6-P2; Mon, 23 Mar 2020 13:52:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGNUL-0002EL-Et
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 13:51:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 22BBC11FB;
 Mon, 23 Mar 2020 06:51:33 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3ECF73F52E;
 Mon, 23 Mar 2020 06:51:32 -0700 (PDT)
From: Qais Yousef <qais.yousef@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH v4 06/17] arm64: Don't use disable_nonboot_cpus()
Date: Mon, 23 Mar 2020 13:50:59 +0000
Message-Id: <20200323135110.30522-7-qais.yousef@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323135110.30522-1-qais.yousef@arm.com>
References: <20200323135110.30522-1-qais.yousef@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_065133_560995_7906C374 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Qais Yousef <qais.yousef@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

disable_nonboot_cpus() is not safe to use when doing machine_down(),
because it relies on freeze_secondary_cpus() which in turn is
a suspend/resume related freeze and could abort if the logic detects any
pending activities that can prevent finishing the offlining process.

Beside disable_nonboot_cpus() is dependent on CONFIG_PM_SLEEP_SMP which
is an othogonal config to rely on to ensure this function works
correctly.

Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Qais Yousef <qais.yousef@arm.com>
CC: Catalin Marinas <catalin.marinas@arm.com>
CC: Will Deacon <will@kernel.org>
CC: linux-arm-kernel@lists.infradead.org
CC: linux-kernel@vger.kernel.org
---
 arch/arm64/kernel/process.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 00626057a384..1b9f7b749d75 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -141,11 +141,11 @@ void arch_cpu_idle_dead(void)
  * to execute e.g. a RAM-based pin loop is not sufficient. This allows the
  * kexec'd kernel to use any and all RAM as it sees fit, without having to
  * avoid any code or data used by any SW CPU pin loop. The CPU hotplug
- * functionality embodied in disable_nonboot_cpus() to achieve this.
+ * functionality embodied in smpt_shutdown_nonboot_cpus() to achieve this.
  */
 void machine_shutdown(void)
 {
-	disable_nonboot_cpus();
+	smp_shutdown_nonboot_cpus(0);
 }
 
 /*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
