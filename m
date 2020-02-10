Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CA1157EB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 16:24:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yVoVs/15t7ow9pZcufmiHOlGvKGF7yruVjkivVO/p2Y=; b=bbX
	rveTkZLxil16nBCVHMhYZfK1GU1HlGWKjk1Yw1kqlnYq7sjxD/OEmOdrtvtqfqZgb6TTbhjhHd+V3
	JAH9qgKrttu3c2zm8UjArSqssGqdK3Ha80xcRyzKcxEekAHFrhdl7s6emKUQ3/FMWl898VRnOZttD
	WSMuRVTJASROUljGsTR6iVSweiUT+Jd8o1FiaSkNOz7Sld8ae9my4jNYqSKWOMTNRU0WCkvkKbAn9
	cF+z4/0RCBqbABc817aVSpuxPxy1QPOH8ZmD9q+9Evt9LiHz5Rv0Sov4jei7I+UUB8wltMSGAijzg
	zEK6eKWjpflS/hIEJ/fHJmRvm2vvIHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1AvY-0005YF-II; Mon, 10 Feb 2020 15:24:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1AvR-0005Xw-Bl
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 15:24:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 782AD1FB;
 Mon, 10 Feb 2020 07:24:40 -0800 (PST)
Received: from dell3630.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5E7983F68E;
 Mon, 10 Feb 2020 07:24:39 -0800 (PST)
From: Dietmar Eggemann <dietmar.eggemann@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] drivers base/arch_topology: Remove 'struct sched_domain'
 forward declaration
Date: Mon, 10 Feb 2020 16:24:20 +0100
Message-Id: <20200210152420.10608-1-dietmar.eggemann@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_072441_441941_66A37BC1 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Juri Lelli <juri.lelli@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The sched domain pointer argument from topology_get_freq_scale() and
topology_get_cpu_scale() got removed by commit 7673c8a4c75d
("sched/cpufreq: Remove arch_scale_freq_capacity()'s 'sd' parameter")
and commit 8ec59c0f5f49 ("sched/topology: Remove unused 'sd' parameter
from arch_scale_cpu_capacity()").

So the 'struct sched_domain' forward declaration is no longer needed.
Remove it.

W/o the sched domain pointer argument the storage class and inline
definition as well as the return type, function name and parameter list
fit all into one line.

Signed-off-by: Dietmar Eggemann <dietmar.eggemann@arm.com>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
---
 include/linux/arch_topology.h | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/include/linux/arch_topology.h b/include/linux/arch_topology.h
index 3015ecbb90b1..c507e9ddd909 100644
--- a/include/linux/arch_topology.h
+++ b/include/linux/arch_topology.h
@@ -16,9 +16,7 @@ bool topology_parse_cpu_capacity(struct device_node *cpu_node, int cpu);
 
 DECLARE_PER_CPU(unsigned long, cpu_scale);
 
-struct sched_domain;
-static inline
-unsigned long topology_get_cpu_scale(int cpu)
+static inline unsigned long topology_get_cpu_scale(int cpu)
 {
 	return per_cpu(cpu_scale, cpu);
 }
@@ -27,8 +25,7 @@ void topology_set_cpu_scale(unsigned int cpu, unsigned long capacity);
 
 DECLARE_PER_CPU(unsigned long, freq_scale);
 
-static inline
-unsigned long topology_get_freq_scale(int cpu)
+static inline unsigned long topology_get_freq_scale(int cpu)
 {
 	return per_cpu(freq_scale, cpu);
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
