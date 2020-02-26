Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8361704A4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 17:43:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Rbc3Lbk/5GsJh2sv6Lmid6sDt9of8Suv7TLck0By14=; b=UDiJybNax3Gofd
	0L88ekFH/fzdYuvTWbZAevuWT894r64jTGHXU5gdpB+KItAnqKGYOwpuG3ix7m661I80aJEGez3Cs
	wjM1DpZiLj4UM0ixtyajRbOGmptv8ZNkUeLVUdKD9uO4yyustXc4CcMuzF/2D0htkzWMVPC60wkhe
	GG1899rQ/nVjajWc+sEhV0ku4LE+l1AedL3aO5chYtSeHiRsAyehP44WbJcMhuy4aAz+qjnkUKSpD
	mW/OO63A2PlmE0gS8yTKEPwTEeQ6Wby4n9QMDyt1xspL8aLCL9ti70Ujtuqxw1wyvrcgkBJ3IoOjx
	xq0gYjPy2kqsN+lk9JOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6zlv-0004zM-8K; Wed, 26 Feb 2020 16:42:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6zlT-0004on-Vp
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 16:42:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5332031B;
 Wed, 26 Feb 2020 08:42:27 -0800 (PST)
Received: from e113632-lin.cambridge.arm.com (e113632-lin.cambridge.arm.com
 [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BA2343F819;
 Wed, 26 Feb 2020 08:42:25 -0800 (PST)
From: Valentin Schneider <valentin.schneider@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] sched/topology: Don't enable EAS on SMT systems
Date: Wed, 26 Feb 2020 16:41:17 +0000
Message-Id: <20200226164118.6405-2-valentin.schneider@arm.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200226164118.6405-1-valentin.schneider@arm.com>
References: <20200226164118.6405-1-valentin.schneider@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_084228_063051_A23DB4BC 
X-CRM114-Status: UNSURE (   9.13  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, qperret@google.com,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, morten.rasmussen@arm.com,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

EAS already requires asymmetric CPU capacities to be enabled, and mixing
this with SMT is an aberration, but better be safe than sorry.

Signed-off-by: Valentin Schneider <valentin.schneider@arm.com>
---
 kernel/sched/topology.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/kernel/sched/topology.c b/kernel/sched/topology.c
index 00911884b7e7..76cd0a370b9a 100644
--- a/kernel/sched/topology.c
+++ b/kernel/sched/topology.c
@@ -360,6 +360,10 @@ static bool build_perf_domains(const struct cpumask *cpu_map)
 		goto free;
 	}
 
+	/* EAS definitely does *not* handle SMT */
+	if (sched_smt_active())
+		goto free;
+
 	for_each_cpu(i, cpu_map) {
 		/* Skip already covered CPUs. */
 		if (find_pd(pd, i))
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
