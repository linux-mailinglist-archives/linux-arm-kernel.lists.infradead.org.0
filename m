Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEB315986F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:22:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G5MOnYx+Q8KT5Sh6pcCimNZmsCEN8OQFvfuAqS6mExM=; b=rycZFp668NR58nxSO2H8ZdtBa8
	tRDB3eCGDBVszfDUL7kM3ETZe+2aXDC5WDMOukExlUUbFzKYzBi5yQqBqDUtucZN/Mj0JmO65DfvG
	t9E0g9oouAl0w/eSsFzNSdGOhZoXAtW5JPWXzlHYxZZ/CgJ60qJsrOgG/5eE7fB686cOOkXIfALa3
	bGOwTS9PEbdOhZ98rKDNMIRJGmKFMDSDa6Xlt8oC49/NXqf3v4Dvhe4ArCHFri1Dda7JHqe6Byn8B
	RaNRHiLXmtNzyksJEOWfxGyOGp6DJWXOFUFuTromBgXTr3rl4LnfDaJR4kHW7Pqm4ipQVvRRSt+uB
	I3WtarOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1aAg-0000X3-Su; Tue, 11 Feb 2020 18:22:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1a4F-0001tS-Bx
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 18:15:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C153CFEC;
 Tue, 11 Feb 2020 10:15:26 -0800 (PST)
Received: from dell3630.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 85D723F68E;
 Tue, 11 Feb 2020 10:15:25 -0800 (PST)
From: Dietmar Eggemann <dietmar.eggemann@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] drivers base/arch_topology: Reformat
 topology_get_[cpu/freq]_scale() function name
Date: Tue, 11 Feb 2020 19:15:15 +0100
Message-Id: <20200211181515.32570-3-dietmar.eggemann@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200211181515.32570-1-dietmar.eggemann@arm.com>
References: <20200211181515.32570-1-dietmar.eggemann@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_101527_526284_8A021439 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
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
Cc: Juri Lelli <juri.lelli@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The storage class and inline definition as well as the return type,
function name and parameter list fit all into one line.

Signed-off-by: Dietmar Eggemann <dietmar.eggemann@arm.com>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
---
 include/linux/arch_topology.h | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/include/linux/arch_topology.h b/include/linux/arch_topology.h
index f4b1d4fd7efb..c507e9ddd909 100644
--- a/include/linux/arch_topology.h
+++ b/include/linux/arch_topology.h
@@ -16,8 +16,7 @@ bool topology_parse_cpu_capacity(struct device_node *cpu_node, int cpu);
 
 DECLARE_PER_CPU(unsigned long, cpu_scale);
 
-static inline
-unsigned long topology_get_cpu_scale(int cpu)
+static inline unsigned long topology_get_cpu_scale(int cpu)
 {
 	return per_cpu(cpu_scale, cpu);
 }
@@ -26,8 +25,7 @@ void topology_set_cpu_scale(unsigned int cpu, unsigned long capacity);
 
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
