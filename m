Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5966155723
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 12:49:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NXel4vbKPNDbzZX7baV6QbzwrcNYthYD+lhE8jzlskw=; b=cO+
	rnaEUlrBEdCvCbaRPzmMH7IaxSa4+SBqfrzqCSHcTlYPAFiz7ezWnGvPePZxY52KCmSJ7lSNSIdnj
	7zI3g8lISa2EKLhD685tszPRTl35DMul2aBh3AXv2BOdS1SyY0Jed7K61iF1JhXMbH5zlVQEhHMsu
	icH7H976q5UW3RlioGiI85Sy4aChplvsR0ocMvJLucgZorSla+Vo9HjA1YWhs0J5Ilh2s6YwsUP/U
	8sRtI3U9lPu6P55q0iX9KLoruuhAWRo/TPdRCJDLoqr9qfgmqesLBEN6KIQgcKitS5HTz9jTTx5Nj
	e1f6C5u3xen6fVY3K/Qo6BppOkK9Qvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j028e-00051g-RI; Fri, 07 Feb 2020 11:49:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j028V-00050v-Md
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 11:49:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E22D3328;
 Fri,  7 Feb 2020 03:49:23 -0800 (PST)
Received: from dell3630.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D052C3F68E;
 Fri,  7 Feb 2020 03:49:22 -0800 (PST)
From: Dietmar Eggemann <dietmar.eggemann@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH] drivers base/arch_topology: Remove 'struct sched_domain'
 forward declaration
Date: Fri,  7 Feb 2020 12:49:13 +0100
Message-Id: <20200207114913.3052-1-dietmar.eggemann@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_034927_783885_919F8254 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Juri Lelli <juri.lelli@redhat.com>, linux-arm-kernel@lists.infradead.org
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
