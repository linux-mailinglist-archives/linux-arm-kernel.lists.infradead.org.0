Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F6A1F861A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 03:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rxiQjoWzc79u/1ehyJ6piIPYCAK2o+RU1fMhknugbtw=; b=pqwOivwq9Uo/fh
	M6Mfo95iSqzB824x7F4tWwU07pl/KnIEP4lqGxdj1CvzWqH3U6fGO+StoHvDucatWjTIAdL0TWY9e
	H5fQeXWAax/5aiPoj5AafEf4FGOa20YO2vVg0kkI6H4qckwNok4Pl4lFoQWe5kQnYrep7yLdKcTqu
	orMkHTQAZjhTPa1qw1K9MGqq0vUDX6ZK36CNGMaqxdKGKkpuNTI9srXEF5Iygq6OW6741FQrm+amE
	Vj20y6LTQko9YipdESNzABBUHygwIDsEEV5axBrgSjfdMnL0a12qJoaEhA0JVev7DMB70wt9htfc4
	gU1jUzdt4rXHy+w63cyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkHAx-0000yK-UE; Sun, 14 Jun 2020 01:11:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkHAJ-0000ZE-DM
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 01:10:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8958AD6E;
 Sat, 13 Jun 2020 18:10:25 -0700 (PDT)
Received: from e113632-lin.cambridge.arm.com (e113632-lin.cambridge.arm.com
 [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A62A73F73C;
 Sat, 13 Jun 2020 18:10:23 -0700 (PDT)
From: Valentin Schneider <valentin.schneider@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Subject: [PATCH 2/3] sched: Cleanup SCHED_THERMAL_PRESSURE setup
Date: Sun, 14 Jun 2020 02:07:54 +0100
Message-Id: <20200614010755.9129-3-valentin.schneider@arm.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200614010755.9129-1-valentin.schneider@arm.com>
References: <20200614010755.9129-1-valentin.schneider@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_181027_498458_F4E6C785 
X-CRM114-Status: GOOD (  11.02  )
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
Cc: Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>,
 Thara Gopinath <thara.gopinath@linaro.org>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As Russell pointed out [1], this option is severely lacking in the
documentation department, and figuring out if one has the required
dependencies to benefit from turning it on is not straightforward.

Make it non user-visible, and add a bit of help to it. While at it, make it
depend on CPU_FREQ_THERMAL.

[1]: https://lkml.kernel.org/r/20200603173150.GB1551@shell.armlinux.org.uk

Signed-off-by: Valentin Schneider <valentin.schneider@arm.com>
---
 init/Kconfig | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/init/Kconfig b/init/Kconfig
index 74a5ac65644f..052c9f4531c2 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -439,8 +439,21 @@ config HAVE_SCHED_AVG_IRQ
 	depends on SMP
 
 config SCHED_THERMAL_PRESSURE
-	bool "Enable periodic averaging of thermal pressure"
+	bool
 	depends on SMP
+	depends on CPU_FREQ_THERMAL
+	help
+	  Select this option to enable thermal pressure accounting in the
+	  scheduler. Thermal pressure is the value conveyed to the scheduler
+	  that reflects the reduction in CPU compute capacity resulted from
+	  thermal throttling. Thermal throttling occurs when the performance of
+	  a CPU is capped due to high operating temperatures.
+
+	  If selected, the scheduler will be able to balance tasks accordingly,
+	  i.e. put less load on throttled CPUs than on non/less throttled ones.
+
+	  This requires the architecture to implement
+	  arch_set_thermal_pressure() and arch_get_thermal_pressure().
 
 config BSD_PROCESS_ACCT
 	bool "BSD Process Accounting"
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
