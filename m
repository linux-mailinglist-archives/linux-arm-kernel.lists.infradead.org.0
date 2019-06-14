Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1875D46C5F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 00:32:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wGG6ett6IyDQUAky9i8A1a/WtkQj9s3+lpajyRS7JXY=; b=FoYm6mBrqJngtA
	jIbnZ9JEh98nccPsT1U7GlaL8Gbm7Mu7fh05huomB/rSJg6TwMoF8koTgRlXnZWWZMYX0W9bjPfoZ
	bgZ8+rdCZHdMP3KCNOfQVon/CUadS6gVaNIVA5s1SeqNJQYdtDeW9wRVAWrFs14GFQxtYnMRFpKfG
	abC1Wr0RTzdT+hg2hi1a4p+KEzkunB1K54uucX/Mu2ej5vOsy8xmeOJOGww4CWFs/xaDB6/nJmlSa
	77yYILATzJ0HHYLcUZDm/2Pq0zIsOZFtNL8T/C9XavDxruGus8EbiJXXTJO4pkYRc2FsTKyC6SQa3
	lcVL73QD79cerRmVpN3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbukh-0005Lr-Bh; Fri, 14 Jun 2019 22:32:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbuk3-0004uN-2r
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 22:32:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B845346;
 Fri, 14 Jun 2019 15:32:12 -0700 (PDT)
Received: from mammon-tx2.austin.arm.com (mammon-tx2.austin.arm.com
 [10.118.30.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2BA2C3F694;
 Fri, 14 Jun 2019 15:32:12 -0700 (PDT)
From: Jeremy Linton <jeremy.linton@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] arm64: topology: Use PPTT to determine if PE is a
 thread
Date: Fri, 14 Jun 2019 17:31:58 -0500
Message-Id: <20190614223158.49575-3-jeremy.linton@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190614223158.49575-1-jeremy.linton@arm.com>
References: <20190614223158.49575-1-jeremy.linton@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_153215_166846_A08BCCCD 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, Jeremy Linton <jeremy.linton@arm.com>,
 linux-acpi@vger.kernel.org, sudeep.holla@arm.com, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ACPI 6.3 adds a thread flag to represent if a CPU/PE is
actually a thread. Given that the MPIDR_MT bit may not
represent this information consistently on homogeneous machines
we should prefer the PPTT flag if its available.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
---
 arch/arm64/kernel/topology.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/topology.c b/arch/arm64/kernel/topology.c
index 0825c4a856e3..cbbedb53cf06 100644
--- a/arch/arm64/kernel/topology.c
+++ b/arch/arm64/kernel/topology.c
@@ -346,11 +346,9 @@ void remove_cpu_topology(unsigned int cpu)
  */
 static int __init parse_acpi_topology(void)
 {
-	bool is_threaded;
+	int is_threaded;
 	int cpu, topology_id;
 
-	is_threaded = read_cpuid_mpidr() & MPIDR_MT_BITMASK;
-
 	for_each_possible_cpu(cpu) {
 		int i, cache_id;
 
@@ -358,6 +356,10 @@ static int __init parse_acpi_topology(void)
 		if (topology_id < 0)
 			return topology_id;
 
+		is_threaded = acpi_pptt_cpu_is_thread(cpu);
+		if (is_threaded < 0)
+			is_threaded = read_cpuid_mpidr() & MPIDR_MT_BITMASK;
+
 		if (is_threaded) {
 			cpu_topology[cpu].thread_id = topology_id;
 			topology_id = find_acpi_cpu_topology(cpu, 1);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
